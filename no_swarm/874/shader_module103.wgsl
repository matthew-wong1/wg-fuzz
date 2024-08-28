struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-1i, -20523i, 1i), i32(-2147483648), vec2<f32>(582f, 2063f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_i32(-countOneBits(firstLeadingBit(global1.a)), vec3<i32>(3717i | ~global1.b, 0i, select(u_input.c, u_input.b, global0.x) ^ global1.a.x)), u_input.e, _wgslsmith_div_vec2_f32(global1.c, arg_0.zw));
    var_0 = Struct_1(~vec3<i32>(~global1.b, var_0.a.x >> (1u % 32u), -1270i) | vec3<i32>(2147483647i, _wgslsmith_clamp_i32(i32(-1i) * -1i, var_0.b, ~global1.a.x), u_input.b), 2147483647i, global1.c);
    var var_1 = global1.b;
    var var_2 = Struct_1(vec3<i32>(var_0.a.x, global1.a.x, global1.a.x), _wgslsmith_dot_vec2_i32(~u_input.d, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(7063i, var_0.b), var_0.a.zy), firstTrailingBit(1i)) & var_0.a.yx), var_0.c);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.c.x, var_0.c.x, true)) - global1.c.x);
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(10439u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 19707u, 29918u), vec4<u32>(45883u, 27067u, 35325u, 0u)) ^ 1u, _wgslsmith_add_u32(1u, reverseBits(37367u)), 0u), select(firstTrailingBit(vec4<u32>(1u, 4294967295u, 40384u, 63261u)), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 3026u, 68788u), vec4<u32>(1u, 1u, 1u, 1u)), true));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_i32(global1.a ^ arg_1.a, global1.a), -44934i >> (func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, -3020f, arg_1.c.x, -1000f)))) % 32u), vec2<f32>(_wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(-global1.c.x)), -252f));
    let var_1 = global1.a;
    let var_2 = arg_0;
    let var_3 = ~(vec4<u32>(~100108u, 1u >> (arg_0 % 32u), 50350u, var_2) << (firstTrailingBit(~(~vec4<u32>(arg_0, arg_0, var_2, var_2))) % vec4<u32>(32u)));
    var var_4 = Struct_1(select(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(-31243i, 0i, 2147483647i), vec3<i32>(arg_1.a.x, global1.a.x, 0i), var_0.a), vec3<i32>(var_0.b, firstTrailingBit(u_input.d.x), firstTrailingBit(0i)), all(global0.yw)), _wgslsmith_mult_i32(-(23011i << (var_2 % 32u)), var_1.x ^ _wgslsmith_div_i32(u_input.a, -2147483647i)) & -firstLeadingBit(0i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(arg_1.c)))));
    return vec4<bool>(all(select(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(false, global0.x, global0.x, false), global0.x != global0.x), vec4<bool>(global0.x, !global0.x, true, all(vec4<bool>(true, global0.x, false, global0.x))), vec4<bool>(true, all(global0.zw), var_3.x < arg_0, -2444f == var_4.c.x))), reverseBits(~(var_1.x | 55037i)) > var_1.x, false, !global0.x | true);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    global0 = select(func_4(_wgslsmith_div_u32(4294967295u, func_3(vec4<f32>(-471f, -1565f, -441f, -2655f))) << (~31211u % 32u), Struct_1(global1.a, arg_0.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, arg_0.c.x) + vec2<f32>(319f, 335f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -888f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, false)), -1474f)) - _wgslsmith_f_op_f32(select(-424f, global1.c.x, global0.x)))), select(select(!vec4<bool>(true, true, arg_1.x, global0.x), select(vec4<bool>(false, true, global0.x, false), vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(global0.x, false, global0.x, false)), select(!vec4<bool>(true, false, global0.x, global0.x), !vec4<bool>(true, global0.x, false, global0.x), select(vec4<bool>(arg_1.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), false))), vec4<bool>(true, any(vec2<bool>(global0.x, global0.x)), global0.x, !func_4(65855u, arg_0, 1000f, global1.c.x).x), select(vec4<bool>(arg_1.x, false, false, true), !func_4(1u, Struct_1(vec3<i32>(30658i, -33392i, 1i), -47648i, vec2<f32>(289f, arg_0.c.x)), global1.c.x, 750f), func_4(select(0u, 1u, global0.x), arg_0, -128f, _wgslsmith_f_op_f32(f32(-1f) * -1239f)))), false);
    let var_0 = 1u;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global1.c.x)), _wgslsmith_f_op_f32(475f - global1.c.x))), -275f) * -1000f), -1514f);
    let var_2 = Struct_1(global1.a, 17531i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1191f, -1000f), arg_0.c, true)), _wgslsmith_div_vec2_f32(global1.c, global1.c), true)), vec2<f32>(_wgslsmith_f_op_f32(sign(global1.c.x)), 1000f))))));
    let var_3 = vec3<u32>(~(~17189u), ~1u, _wgslsmith_sub_u32(var_0, var_0));
    return true;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    global0 = vec4<bool>(arg_0.x, all(!select(!global0.xz, vec2<bool>(true, global0.x), true)), !all(vec4<bool>(true, true, true, true)), !func_2(arg_2, select(arg_0, !vec3<bool>(false, false, global0.x), true)));
    var var_0 = vec4<bool>(all(select(select(vec3<bool>(arg_0.x, true, true), arg_0, vec3<bool>(false, global0.x, true)), vec3<bool>(global0.x, false, arg_0.x), !global0.yzx)) || true, arg_0.x, !global0.x, true | (true && any(func_4(1u, arg_2, 1893f, arg_1.c.x).wx)));
    let var_1 = arg_3;
    var_0 = vec4<bool>(!select(any(vec4<bool>(var_0.x, false, true, true)), true, arg_0.x) || true, !(-2147483647i != abs(arg_3)) | true, any(!(!(!vec4<bool>(arg_0.x, arg_0.x, var_0.x, arg_0.x)))), false);
    let var_2 = Struct_1(vec3<i32>(var_1, 2147483647i, abs(-1i)), 20665i, vec2<f32>(_wgslsmith_f_op_f32(arg_1.c.x + global1.c.x), 1f));
    return 1907f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!vec4<bool>(global0.x, true, !global0.x && global0.x, global0.x), !select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, global0.x, true, global0.x), select(global0.x, true, global0.x)), !vec4<bool>(true, global0.x, true, false), false), vec4<bool>(false, true, 1i < global1.b, true));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-555f, _wgslsmith_f_op_f32(func_1(global0.yxy, Struct_1(vec3<i32>(u_input.e, -19567i, -20887i), 13684i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-249f, global1.c.x))), Struct_1(global1.a, u_input.d.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, global1.c.x))), 0i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1151f), _wgslsmith_f_op_f32(round(global1.c.x)), global0.x)))));
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(u_input.d.x), 56082i, firstTrailingBit(-17905i)), (vec3<i32>(-3338i, u_input.d.x, global1.b) & global1.a) << (firstLeadingBit(vec3<u32>(13394u, 4294967295u, 96705u)) % vec3<u32>(32u))), ((63398i ^ u_input.a) >> (~4294967295u % 32u)) | _wgslsmith_clamp_i32(u_input.b << (1u % 32u), select(29533i, u_input.d.x, true), u_input.a), global1.b), abs(_wgslsmith_add_i32(_wgslsmith_div_i32(11682i, u_input.c), 0i)) | _wgslsmith_dot_vec4_i32(~vec4<i32>(global1.a.x, 2147483647i, u_input.d.x, -21671i), countOneBits(vec4<i32>(26112i, 1i, u_input.a, u_input.b))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(var_0.yw)), var_0.wy, true)));
    var_1 = Struct_1(-vec3<i32>(-1i, 1i, -2147483647i), abs(global1.a.x >> (~1u % 32u)), var_0.zz);
    global1 = Struct_1(global1.a, _wgslsmith_div_i32(u_input.b, ~(~_wgslsmith_mod_i32(var_1.a.x, u_input.d.x))), global1.c);
    var_1 = Struct_1(var_1.a, -21637i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(var_1.c)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.wx))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_0 - vec4<f32>(var_1.c.x, var_2.x, 1180f, 611f)));
}

