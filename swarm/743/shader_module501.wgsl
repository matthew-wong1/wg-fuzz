struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-1580f, -586f), vec2<f32>(1026f, -1492f), vec2<f32>(-726f, 1800f), vec2<f32>(-939f, 238f), vec2<f32>(-739f, 1167f), vec2<f32>(-1000f, 211f), vec2<f32>(1441f, -256f), vec2<f32>(-284f, 2334f), vec2<f32>(1213f, 1000f), vec2<f32>(386f, 1044f), vec2<f32>(1474f, 291f), vec2<f32>(688f, 708f), vec2<f32>(-1000f, -2069f), vec2<f32>(-1548f, -922f), vec2<f32>(1603f, -318f), vec2<f32>(1170f, 939f), vec2<f32>(3254f, -344f), vec2<f32>(-541f, 951f), vec2<f32>(1513f, -236f), vec2<f32>(-910f, 1385f), vec2<f32>(-425f, -949f), vec2<f32>(392f, 1925f), vec2<f32>(2545f, 250f), vec2<f32>(136f, 400f), vec2<f32>(-574f, -316f), vec2<f32>(-320f, -1669f), vec2<f32>(-331f, 1000f), vec2<f32>(562f, -577f), vec2<f32>(-420f, 1000f), vec2<f32>(343f, 994f), vec2<f32>(554f, 509f), vec2<f32>(-812f, -128f));

var<private> global1: array<vec3<f32>, 12>;

var<private> global2: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(39260i, -6930i, 20185i, 72788i), vec4<i32>(-835i, -36850i, -314i, 57178i), vec4<i32>(-5418i, 18955i, -32839i, -15061i), vec4<i32>(0i, i32(-2147483648), 27531i, 2147483647i), vec4<i32>(2147483647i, 14082i, -3719i, 3432i), vec4<i32>(i32(-2147483648), -7174i, -28362i, 12781i), vec4<i32>(0i, 71124i, 42860i, 0i), vec4<i32>(-3299i, -18840i, -17515i, 2147483647i), vec4<i32>(-7348i, 0i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, 8800i, 0i, 57754i), vec4<i32>(49433i, 90825i, 45647i, -742i), vec4<i32>(-20463i, i32(-2147483648), 47355i, 1i), vec4<i32>(33273i, 1393i, -108922i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(30096i, i32(-2147483648), i32(-2147483648), 23701i), vec4<i32>(-1i, 1i, 1i, -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec4<bool>) -> u32 {
    global2 = array<vec4<i32>, 16>();
    var var_0 = all(!(!(!(!arg_3))));
    var var_1 = countOneBits(arg_1.d.a.xyy);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-740f - _wgslsmith_f_op_f32(arg_2.x - 1254f))))));
    var_0 = false;
    return countOneBits(~var_1.x);
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    global2 = array<vec4<i32>, 16>();
    var var_0 = Struct_3(~arg_0, 1u, -7024i, Struct_1(select(vec4<u32>(u_input.a.x, 78423u, 0u, 25126u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 32750u, u_input.a.x, arg_0.x), vec4<u32>(42110u, arg_0.x, u_input.a.x, 11746u)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true)) ^ vec4<u32>(~0u, func_3(vec3<bool>(true, false, true), Struct_3(arg_0, 22576u, 2147483647i, Struct_1(vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u), true, 2147483647i, -1i, false)), vec2<f32>(-504f, 1575f), vec4<bool>(true, false, false, true)), ~arg_0.x, _wgslsmith_add_u32(u_input.a.x, 34376u)), false, ~(-_wgslsmith_div_i32(1i, -34278i)), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, -2147483647i), 1i), false));
    var_0 = Struct_3(max(vec2<u32>(var_0.b, ~(u_input.a.x >> (var_0.a.x % 32u))), ~firstTrailingBit(vec2<u32>(u_input.a.x, 4294967295u))), arg_0.x >> (min(_wgslsmith_dot_vec3_u32(var_0.d.a.ywx, ~var_0.d.a.zzz), 33400u) % 32u), -1i, var_0.d);
    var var_1 = var_0.d;
    global2 = array<vec4<i32>, 16>();
    return ~(_wgslsmith_div_u32(var_0.a.x, var_1.a.x) & 0u);
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    return select(~abs(~(~0u)), func_2(countOneBits(u_input.a) << (vec2<u32>(u_input.a.x, firstTrailingBit(0u)) % vec2<u32>(32u))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 16>();
    global2 = array<vec4<i32>, 16>();
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    var var_0 = 1275f;
    var var_1 = select(~_wgslsmith_add_vec3_u32(countOneBits(~vec3<u32>(0u, u_input.a.x, 4294967295u)), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) & abs(vec3<u32>(u_input.a.x, u_input.a.x, 66665u))), _wgslsmith_sub_vec3_u32(select(abs(vec3<u32>(4708u, 1u, u_input.a.x)), vec3<u32>(26656u & u_input.a.x, ~u_input.a.x, func_1(global1[_wgslsmith_index_u32(22100u, 12u)])), !any(vec4<bool>(false, true, true, true))), countOneBits(vec3<u32>(_wgslsmith_div_u32(0u, u_input.a.x), abs(u_input.a.x), _wgslsmith_mod_u32(774u, 1u)))), any(select(vec4<bool>(all(vec3<bool>(true, true, false)), true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), true), all(vec4<bool>(true, true, false, false)))));
    let var_2 = abs(~global2[_wgslsmith_index_u32(var_1.x, 16u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(240f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-962f - 712f), 474f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-140f, 530f))))), 1f);
}

