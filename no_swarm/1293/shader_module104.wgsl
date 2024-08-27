struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_sub_vec2_u32(firstTrailingBit(~select(u_input.c.xw, max(vec2<u32>(arg_1.e, arg_1.c), vec2<u32>(25171u, u_input.c.x)), !arg_1.a.x)), firstLeadingBit(~(~vec2<u32>(1u, 7439u))));
    var var_1 = Struct_2(arg_1, 1u, -_wgslsmith_mult_i32(-28289i, -1i), arg_2, max(vec2<i32>(arg_1.b.x, _wgslsmith_mult_i32(arg_1.b.x >> (arg_1.c % 32u), 2147483647i)), arg_1.b.yw << (var_0 % vec2<u32>(32u))));
    var_1 = Struct_2(arg_1, 4294967295u, -28629i, arg_2, -arg_1.b.wz);
    let var_2 = Struct_1(vec4<bool>(any(vec3<bool>(true, !var_1.a.a.x, 0u != u_input.a)), arg_1.a.x, true, all(arg_1.a)), ~arg_1.b, ~var_1.a.e, ~(~arg_1.d), var_0.x);
    var var_3 = 0u >> (_wgslsmith_dot_vec4_u32(~u_input.c | _wgslsmith_sub_vec4_u32(abs(u_input.c), abs(u_input.c)), abs(~u_input.c >> (u_input.c % vec4<u32>(32u)))) % 32u);
    return ~var_2.c < _wgslsmith_div_u32(_wgslsmith_mult_u32(60298u, _wgslsmith_add_u32(1u ^ u_input.c.x, 30482u)), ~countOneBits(_wgslsmith_mod_u32(var_1.a.c, arg_1.d)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-713f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 314f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(255f, 518f, -1377f, 1259f) + vec4<f32>(-587f, 1485f, 1000f, -786f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1466f, 636f, -1540f, 2162f))) + vec4<f32>(-650f, 566f, 220f, 768f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(152f, 825f, 566f, 1482f))))))));
    var var_2 = countOneBits(16530u) == u_input.c.x;
    let var_3 = u_input.a;
    var var_4 = u_input.c.x;
    return Struct_1(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), true), func_3(u_input.b, Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(u_input.b.x, 2030i, 24779i, u_input.b.x), 1u, var_3, 48046u), -176f)), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), var_3 > var_3), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(any(vec4<bool>(false, false, false, true)), 4294967295u < u_input.a, true, all(vec4<bool>(true, false, true, true))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false))), any(vec3<bool>(true, true, true)))), vec4<i32>(1i, ~(~6471i) ^ _wgslsmith_mod_i32(~u_input.b.x, u_input.b.x), u_input.b.x, _wgslsmith_mod_i32(abs(~u_input.b.x), -(u_input.b.x ^ u_input.b.x))), ~18796u, 1u, var_3);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = true && all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true));
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-702f + arg_0));
    var var_3 = Struct_1(func_2().a, reverseBits(vec4<i32>((arg_1.x | 550i) & (-2147483647i & arg_1.x), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, 50058i, -24470i), var_1.b)), 3371i, var_1.b.x)), 33079u & func_2().c, _wgslsmith_mod_u32(firstTrailingBit(~1u), firstLeadingBit(abs(11329u))), ~_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(var_1.d, var_1.e, u_input.c.x, var_1.c)), vec4<u32>(~u_input.a, _wgslsmith_add_u32(var_1.e, 37833u), 1u, u_input.a & var_1.d)));
    var_3 = func_2();
    return Struct_2(var_1, ~30228u, abs(reverseBits(~arg_1.x)) << (var_3.c % 32u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), abs(vec2<i32>(_wgslsmith_sub_i32(arg_1.x, 87433i), var_1.b.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_1(vec4<bool>(arg_0.a.a.x, _wgslsmith_f_op_f32(arg_0.d + 647f) != arg_1.d, true, true), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, i32(-1i) * -2147483647i, _wgslsmith_mult_i32(func_2().b.x, -arg_0.a.b.x), -_wgslsmith_mod_i32(24349i, arg_0.c)), arg_0.a.b), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(select(u_input.c, reverseBits(u_input.c), arg_0.a.a.x), u_input.c), ~(~vec4<u32>(u_input.c.x, 0u, 4294967295u, 76721u) & ~vec4<u32>(20762u, 1u, 4294967295u, arg_0.a.e))), max(4294967295u, ~(~u_input.c.x)) & arg_1.a.d, max(~_wgslsmith_mod_u32(~arg_1.b, firstLeadingBit(u_input.a)), ~func_1(arg_0.d, arg_0.a.b.yzx).a.c));
    var var_1 = ~(~_wgslsmith_dot_vec2_i32(~arg_1.a.b.yy, arg_1.e) | 12254i);
    return ~81919u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(229f, 373f), vec2<f32>(1111f, -362f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(645f, 111f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1426f, -156f))))))));
    var var_1 = Struct_2(Struct_1(vec4<bool>(true, true, true, true), -countOneBits(abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), 1u, max(~(~u_input.c.x), u_input.a), u_input.a), min(u_input.c.x, ~56121u), -((_wgslsmith_sub_i32(-1i, u_input.b.x) & u_input.b.x) ^ (max(u_input.b.x, -53504i) << (74426u % 32u))), var_0.x, u_input.b);
    var var_2 = var_1.a;
    var var_3 = _wgslsmith_div_u32(~func_4(func_1(var_1.d, -vec3<i32>(0i, u_input.b.x, 20718i)), Struct_2(Struct_1(var_1.a.a, vec4<i32>(u_input.b.x, var_1.e.x, 2147483647i, -2147483647i), 2594u, 116090u, 1u), _wgslsmith_clamp_u32(var_1.a.c, u_input.c.x, var_2.e), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_2.b.x, -2147483647i, -1i), vec4<i32>(2147483647i, 16204i, var_1.a.b.x, 0i)), 1f, ~var_1.e)), ~((4294967295u << (firstTrailingBit(0u) % 32u)) | 15396u));
    var var_4 = _wgslsmith_f_op_f32(-var_0.x);
    let var_5 = func_1(_wgslsmith_f_op_f32(1000f - var_1.d), -vec3<i32>(min(~37816i, _wgslsmith_div_i32(1i, var_2.b.x)), -27454i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e.x, u_input.b.x), u_input.b), firstLeadingBit(-19445i))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.d, var_0.x));
    let var_6 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_2().d, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_5.d)))), _wgslsmith_f_op_f32(trunc(264f)), _wgslsmith_f_op_f32(var_5.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_5.d))))), u_input.b);
}

