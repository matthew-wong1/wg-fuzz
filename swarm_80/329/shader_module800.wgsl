struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(-1120f), Struct_2(-1320f), Struct_2(-991f), Struct_2(-520f), Struct_2(-1534f), Struct_2(338f), Struct_2(-896f), Struct_2(762f), Struct_2(2281f), Struct_2(520f), Struct_2(1000f), Struct_2(886f), Struct_2(468f), Struct_2(-1844f), Struct_2(-1708f), Struct_2(-752f), Struct_2(1769f), Struct_2(-1000f));

var<private> global1: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    return _wgslsmith_f_op_f32(floor(-1943f));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    global0 = array<Struct_2, 18>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(909f, 1353f, false)))) - _wgslsmith_f_op_f32(max(244f, -1000f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec4<u32>(8397u, 13361u, u_input.c.x, 5969u)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(588f * -677f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-899f)) * _wgslsmith_f_op_f32(sign(-2494f)))));
    var var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(max(~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(1i, 29350i)), vec2<i32>(u_input.d, -16253i) >> (_wgslsmith_add_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, 30962u)) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, firstTrailingBit(u_input.d)), select(~vec2<i32>(u_input.d, -8356i), vec2<i32>(26242i, 0i), u_input.a.x > u_input.a.x))), select(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.d, -2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(u_input.d, 3991i), vec2<i32>(u_input.d, -2147483647i))), vec2<i32>(u_input.d, 20151i)), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-6304i, u_input.d, -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(56685i, 36029i, u_input.d), vec3<i32>(7515i, u_input.d, -2147483647i))), u_input.d), arg_0.zy));
    var var_2 = Struct_2(1000f);
    var_1 = vec2<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i ^ var_1.x, -36007i), vec3<i32>(countOneBits(var_1.x), -34486i, -u_input.d)), -56164i), i32(-1i) * -firstLeadingBit(u_input.d));
    return global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(u_input.a.x, ~(~1u))), 18u)];
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(global1[_wgslsmith_index_u32(u_input.a.x, 15u)]);
    global1 = array<vec3<bool>, 15>();
    global0 = array<Struct_2, 18>();
    var var_1 = vec4<bool>(all(vec3<bool>(false, !(var_0.a == var_0.a), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(u_input.c.x, 15u)])))), all(vec2<bool>(true, true)), !(!any(vec4<bool>(false, false, true, false))), true);
    var_1 = vec4<bool>(true, !var_1.x, var_1.x, any(!(!select(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], vec3<bool>(true, true, var_1.x), true))));
    return Struct_2(var_0.a);
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-arg_0.a));
    var var_1 = abs(countOneBits(0u));
    let var_2 = Struct_1(true, -(~(-vec4<i32>(-12443i, u_input.d, -3868i, -1i))), _wgslsmith_dot_vec2_i32(-select(vec2<i32>(-1i, -44045i), countOneBits(vec2<i32>(u_input.d, 13109i)), false), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(18190i, u_input.d) ^ vec2<i32>(-28749i, 34723i)))));
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, abs(u_input.a.x)), 18u)];
    global1 = array<vec3<bool>, 15>();
    return ~min(vec4<u32>(~11423u, u_input.a.x, _wgslsmith_mult_u32(1u, firstLeadingBit(u_input.c.x)), 17373u), ~(~abs(vec4<u32>(33243u, u_input.a.x, u_input.c.x, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, min(vec4<i32>(u_input.d, -3305i, firstTrailingBit(i32(-1i) * -59276i), min(u_input.d, 0i)), (-vec4<i32>(-38407i, u_input.d, u_input.d, 0i) ^ vec4<i32>(u_input.d, 20067i, u_input.d, -2147483647i)) << (func_4(func_1()) % vec4<u32>(32u))), (0i ^ (_wgslsmith_mod_i32(u_input.d, u_input.d) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(7114u, 51745u, u_input.b, u_input.c.x), vec4<u32>(11991u, u_input.b, u_input.a.x, 51254u)) % 32u))) << (~19451u % 32u));
    var var_1 = global1[_wgslsmith_index_u32((_wgslsmith_add_u32(u_input.a.x, u_input.a.x) & ~u_input.a.x) & u_input.a.x, 15u)];
    global0 = array<Struct_2, 18>();
    var var_2 = !var_1.zx;
    let var_3 = func_1();
    global1 = array<vec3<bool>, 15>();
    var var_4 = Struct_1(all(vec2<bool>(true, true & var_0.a)), reverseBits((vec4<i32>(var_0.c, -15623i, 11672i, 14334i) >> (~vec4<u32>(u_input.c.x, 103196u, 4968u, u_input.a.x) % vec4<u32>(32u))) << (func_4(func_2(global1[_wgslsmith_index_u32(1u, 15u)])) % vec4<u32>(32u))), reverseBits(1i | u_input.d));
    var var_5 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(var_3.a - var_3.a), var_3.a, var_3.a) + vec4<f32>(var_3.a, _wgslsmith_f_op_f32(min(1330f, -1000f)), -850f, _wgslsmith_f_op_f32(f32(-1f) * -1060f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, var_3.a, var_3.a, var_3.a) * vec4<f32>(1021f, var_3.a, var_3.a, 1413f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, 837f, -942f, -2177f) * vec4<f32>(var_3.a, var_3.a, var_3.a, 1000f)) + vec4<f32>(-805f, 945f, var_3.a, var_3.a))), vec4<bool>(any(vec3<bool>(var_2.x, var_0.a, var_2.x)), any(global1[_wgslsmith_index_u32(u_input.b, 15u)]) == true, true, var_2.x))), countOneBits(var_0.b.x));
}

