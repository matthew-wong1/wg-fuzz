struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_4(_wgslsmith_mult_i32(u_input.b.x, min(arg_0 ^ (arg_0 ^ arg_0), firstLeadingBit(~(-1i)))), Struct_1(~(~_wgslsmith_div_vec3_u32(vec3<u32>(35251u, u_input.c, 4294967295u), vec3<u32>(0u, u_input.d, 14620u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-766f, -151f)) * _wgslsmith_f_op_f32(f32(-1f) * -796f)), _wgslsmith_f_op_f32(-410f - 663f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f + 1382f)), 901f), u_input.d, all(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 10u)], global0[_wgslsmith_index_u32(78211u, 10u)]), vec2<bool>(true, true), false))));
    var_0 = Struct_4(var_0.a, var_0.b);
    let var_1 = Struct_2(reverseBits(firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1905i, -2147483647i, u_input.b.x, 2147483647i), vec4<i32>(-11876i, u_input.a, u_input.b.x, u_input.b.x)), 9736i))), u_input.a, 1302f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.b.b.wwz), vec3<f32>(350f, -1000f, 1573f), all(vec2<bool>(var_0.b.d, true))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.b.yxy + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.x, 500f, -599f) + vec3<f32>(var_0.b.b.x, var_0.b.b.x, var_0.b.b.x))) * var_0.b.b.wxy)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.b.x, var_0.b.b.x) - _wgslsmith_f_op_f32(-var_0.b.b.x)), 1075f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -1000f)));
    let var_2 = Struct_3(9317u, max(var_0.b.a.x, ~(~4294967295u)));
    global0 = array<bool, 10>();
    return var_0.b.c;
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -779f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1275f - 179f) - 293f)) + -1857f)));
    let var_1 = vec3<bool>(false, true, true);
    let var_2 = (((i32(-1i) * -arg_0.x) & u_input.a) >= _wgslsmith_div_i32(2627i, -11471i)) & false;
    var var_3 = Struct_2(select(firstTrailingBit(_wgslsmith_clamp_vec2_i32(u_input.b, _wgslsmith_clamp_vec2_i32(arg_0.zz, vec2<i32>(arg_0.x, u_input.a), u_input.b), u_input.b ^ u_input.b)), vec2<i32>(2147483647i, -1i), var_1.yy), firstTrailingBit((540i | u_input.b.x) ^ max(-18095i, 1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-251f))) - -432f), 1f), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-954f - 787f) * _wgslsmith_f_op_f32(591f - -1583f)))), 712f, 503f), 1096f);
    var var_4 = select(!(false | var_1.x), true, all(vec3<bool>(true & (var_3.b >= -2147483647i), var_2, var_1.x)));
    return var_3.b;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: u32, arg_3: vec4<f32>) -> i32 {
    global0 = array<bool, 10>();
    let var_0 = _wgslsmith_sub_vec4_i32(~(~firstTrailingBit(-vec4<i32>(u_input.a, u_input.b.x, -59360i, u_input.a))), vec4<i32>(~_wgslsmith_mod_i32(-1i, u_input.b.x), abs(~_wgslsmith_div_i32(u_input.a, u_input.a)), firstLeadingBit(0i), u_input.b.x));
    var var_1 = 4294967295u;
    var_1 = _wgslsmith_clamp_u32(0u, ((select(u_input.d, u_input.c, true) >> (func_2(var_0.x) % 32u)) & 0u) >> (arg_0 % 32u), arg_2);
    return func_3(var_0.yzz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<i32>(2147483647i, max(u_input.b.x & 11624i, -func_1(u_input.c, vec4<f32>(1000f, 1302f, 312f, -175f), u_input.c, vec4<f32>(297f, 333f, -1126f, -1524f)))), u_input.b.x, 1f, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1715f))), 142f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(287f)), -1359f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2114f), -382f, 940f) * vec3<f32>(-318f, -939f, -112f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-151f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -479f))))));
    global0 = array<bool, 10>();
    let var_1 = vec2<u32>(~u_input.c, ~u_input.d);
    var var_2 = !(true && any(vec2<bool>(true, true)));
    var var_3 = firstLeadingBit(vec4<u32>(~countOneBits(var_1.x >> (u_input.d % 32u)), max(45802u, ~var_1.x), 1u, u_input.d));
    var_2 = var_0.a.x >= -18431i;
    var_2 = true;
    let var_4 = Struct_4(_wgslsmith_add_i32(~u_input.a, ~2221i), Struct_1(var_3.yzx, vec4<f32>(1382f, 496f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c)) * -348f), var_0.d.x), var_3.x ^ 0u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(firstTrailingBit(vec4<u32>(57121u, u_input.c, var_1.x, u_input.d))), abs(vec4<u32>(var_3.x, 1u, u_input.c, 6635u) << (vec4<u32>(var_3.x, 0u, 1u, 4294967295u) % vec4<u32>(32u)))), 10u)]));
    var_3 = ~firstLeadingBit(~vec4<u32>(select(0u, var_3.x, var_4.b.d), 4294967295u, _wgslsmith_mod_u32(var_3.x, 4294967295u), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(1u, 8142u, 4294967295u, var_1.x) ^ (vec4<u32>(24053u, u_input.d, u_input.d, 0u) >> (vec4<u32>(var_3.x, 12797u, u_input.d, 4294967295u) % vec4<u32>(32u))))), select(countOneBits(vec2<u32>(u_input.d, var_4.b.c)) << (var_1 % vec2<u32>(32u)), ~vec2<u32>(0u, 0u) << (~var_3.xz % vec2<u32>(32u)), vec2<bool>(true, true)), var_4.b.c);
}

