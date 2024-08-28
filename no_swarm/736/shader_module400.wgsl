struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<bool, 24>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    global1 = array<bool, 24>();
    var var_0 = Struct_1(u_input.a.zwx, _wgslsmith_sub_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.d.x, 5317u), u_input.c.ywz)), 22280u) >> (_wgslsmith_clamp_u32(~u_input.d.x, 20989u, _wgslsmith_div_u32(~0u, arg_1.x)) % 32u));
    global1 = array<bool, 24>();
    global1 = array<bool, 24>();
    global1 = array<bool, 24>();
    return Struct_1(var_0.a, 1u);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(245f, -1525f), vec2<f32>(850f, 1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(339f, -1282f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1165f), vec2<f32>(2044f, 638f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(503f, 1366f) - vec2<f32>(-2173f, -224f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(948f, 1000f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2026f, -607f), vec2<f32>(174f, -677f)) * vec2<f32>(467f, 668f))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(352f, 212f), vec2<f32>(668f, 817f)))))), vec2<bool>(!global1[_wgslsmith_index_u32(~48557u, 24u)], !all(!vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(12315u, 24u)], false)))));
    let var_1 = select(u_input.a, u_input.a, !vec4<bool>(true, global1[_wgslsmith_index_u32(min(u_input.b, _wgslsmith_dot_vec3_u32(u_input.c.zwx, vec3<u32>(0u, arg_0.b, 40901u))), 24u)], global1[_wgslsmith_index_u32(16677u << (~arg_0.b % 32u), 24u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, 1u, u_input.c.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), u_input.c), 24u)]));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-799f * var_0.x) * _wgslsmith_f_op_f32(139f + var_0.x));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(104f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(133f, var_0.x)), var_0.x)), 611f)));
    return ~countOneBits(reverseBits(vec3<i32>(firstTrailingBit(-1i), global0.x, _wgslsmith_add_i32(var_1.x, -9260i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    global0 = arg_3.a.xx;
    global1 = array<bool, 24>();
    var var_0 = arg_3;
    let var_1 = ~_wgslsmith_mod_u32(arg_3.b, 25495u);
    return vec3<i32>(2147483647i, ~(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -38881i, 29799i), vec3<i32>(704i, 26477i, var_0.a.x)) >> (arg_2.b % 32u)), 2147483647i);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: i32, arg_3: vec2<u32>) -> Struct_1 {
    global0 = vec2<i32>(u_input.a.x, arg_2);
    var var_0 = func_2(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_2, abs(1i)), u_input.a.x ^ _wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_add_i32(arg_2, -2147483647i))), ~(_wgslsmith_sub_vec2_u32(u_input.c.yx, select(arg_3, u_input.c.yx, vec2<bool>(true, arg_0.x))) << (vec2<u32>(0u, ~arg_3.x) % vec2<u32>(32u))));
    global1 = array<bool, 24>();
    global1 = array<bool, 24>();
    var_0 = Struct_1(func_4(func_2(_wgslsmith_dot_vec3_i32(func_3(Struct_1(u_input.a.xwx, 0u), var_0.a.x), func_3(Struct_1(var_0.a, 51717u), -2147483647i)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.zz, vec2<u32>(u_input.d.x, arg_1)), select(arg_3, u_input.c.yz, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-827f, -1209f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-582f)) + 1f)), Struct_1(vec3<i32>(arg_2 >> (1u % 32u), i32(-1i) * -1i, arg_2 >> (arg_1 % 32u)), 1u << (~u_input.b % 32u)), func_2(-16962i, ~u_input.c.xx ^ u_input.d)), arg_1);
    return Struct_1(vec3<i32>(var_0.a.x | var_0.a.x, _wgslsmith_mod_i32(arg_2, global0.x >> ((u_input.c.x | arg_3.x) % 32u)), -2147483647i), u_input.d.x);
}

fn func_5(arg_0: Struct_1) -> i32 {
    global0 = arg_0.a.xy;
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(336f)), -621f, -1000f, _wgslsmith_f_op_f32(-1054f - 193f))))));
    global1 = array<bool, 24>();
    var var_1 = func_1(!vec2<bool>(!all(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.b, 24u)], global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(0u, 24u)])), global1[_wgslsmith_index_u32(firstLeadingBit(1u), 24u)]), u_input.b, -(~(-25522i)), select(min(select(u_input.d, ~vec2<u32>(arg_0.b, arg_0.b), global1[_wgslsmith_index_u32(~37055u, 24u)]), (vec2<u32>(arg_0.b, 0u) ^ u_input.d) | ~u_input.c.yz), u_input.d, true & global1[_wgslsmith_index_u32(~(~12121u), 24u)]));
    var var_2 = -(i32(-1i) * -2147483647i);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(select(abs(func_5(func_1(vec2<bool>(global1[_wgslsmith_index_u32(5610u, 24u)], true), 55318u, global0.x, vec2<u32>(u_input.c.x, u_input.c.x)))), -2147483647i, global1[_wgslsmith_index_u32(select(_wgslsmith_div_u32(u_input.d.x, _wgslsmith_div_u32(u_input.c.x, 40200u)), 1u, (global1[_wgslsmith_index_u32(u_input.c.x, 24u)] != global1[_wgslsmith_index_u32(u_input.c.x, 24u)]) || true), 24u)]), u_input.a.x, u_input.a.x, func_3(Struct_1(vec3<i32>(u_input.a.x, 1i, 24886i) << (u_input.c.zzx % vec3<u32>(32u)), ~(u_input.b ^ u_input.d.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) & vec2<i32>(-2147483647i, 1i), -u_input.a.xy), global0.x)).x);
    var var_1 = u_input.a;
    let var_2 = func_2(1i, ~(~u_input.d) | _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.d.x, ~u_input.b), firstTrailingBit(vec2<u32>(u_input.c.x, 1u))));
    global1 = array<bool, 24>();
    global1 = array<bool, 24>();
    let var_3 = var_2;
    var var_4 = Struct_1(vec3<i32>(36265i, firstLeadingBit(~24262i), 2147483647i) << (u_input.c.yyx % vec3<u32>(32u)), max(firstLeadingBit(4294967295u), ~u_input.b));
    var var_5 = !vec2<bool>(true, !(!all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 24u)], true, true, false))));
    var var_6 = func_1(!select(select(vec2<bool>(false, var_5.x), !vec2<bool>(true, var_5.x), vec2<bool>(true, true)), vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3.b, 1u), 24u)], !global1[_wgslsmith_index_u32(var_4.b, 24u)]), (13888u << (var_3.b % 32u)) > 32909u), abs(1u), func_5(func_2(countOneBits(func_3(var_3, var_4.a.x).x), ~reverseBits(u_input.d))), _wgslsmith_div_vec2_u32(u_input.d, _wgslsmith_mult_vec2_u32(u_input.d, u_input.c.xw) >> ((vec2<u32>(0u, 0u) << (vec2<u32>(21161u, var_3.b) % vec2<u32>(32u))) % vec2<u32>(32u))) | u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(220f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(790f, 496f), vec2<f32>(322f, -1352f))))), u_input.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1395f, -1240f)), vec2<f32>(1f, 1f), !vec2<bool>(false, global1[_wgslsmith_index_u32(var_6.b, 24u)])))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 275f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(657f, 1349f), vec2<f32>(843f, -248f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-910f, -141f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1082f, 1564f))))));
}

