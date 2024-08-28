struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

var<private> global1: array<u32, 9>;

var<private> global2: array<Struct_2, 15>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x >> ((u_input.a.x << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17873u, 9u)], 9u)], 9u)] % 32u)) % 32u), ~4294967295u & u_input.a.x) & (1u >> (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(104480u, u_input.a.x, global1[_wgslsmith_index_u32(3652u, 9u)], u_input.a.x)), vec4<u32>(65530u, u_input.a.x, 1u, global1[_wgslsmith_index_u32(67777u, 9u)]) >> (vec4<u32>(u_input.a.x, 1u, 64565u, global1[_wgslsmith_index_u32(21335u, 9u)]) % vec4<u32>(32u))), 9u)] % 32u)), min(abs(~abs(u_input.a.x)), ~43902u)), 15u)];
    return var_1.b;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_2 {
    global1 = array<u32, 9>();
    var var_0 = vec3<u32>(0u, min(global1[_wgslsmith_index_u32(firstTrailingBit(0u), 9u)], 26086u) | ~1u, min(~u_input.a.x, reverseBits(reverseBits(reverseBits(arg_0.x)))));
    var var_1 = arg_2;
    global0 = array<vec3<f32>, 20>();
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-65191i, -30299i | (-1i ^ u_input.b.x), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-6131i, -7766i), u_input.b), u_input.b.x)), 2147483647i, _wgslsmith_mult_i32(-u_input.c, 42526i) | 52272i, ~u_input.b.x), countOneBits(vec4<i32>(_wgslsmith_div_i32(abs(u_input.b.x), 0i), 0i, _wgslsmith_mod_i32(~u_input.c, ~(-2147483647i)), -u_input.b.x)));
    return arg_1;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = max(vec2<u32>(arg_0.x >> ((~19609u >> (1u % 32u)) % 32u), arg_0.x), ~(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(arg_0.x, 9u)]), u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], 0u, 1u, 0u), vec4<u32>(arg_0.x, 4294967295u, 0u, 1u)))));
    let var_1 = _wgslsmith_add_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.c, u_input.b.x), ~(~vec4<i32>(9023i, u_input.c, -12167i, -79143i)))), vec4<i32>(max(-15826i, -(0i << (u_input.a.x % 32u))), firstLeadingBit(reverseBits(u_input.b.x)) & firstTrailingBit(-23753i), u_input.b.x, reverseBits(u_input.c)));
    global1 = array<u32, 9>();
    global0 = array<vec3<f32>, 20>();
    let var_2 = func_3(u_input.a, func_3(u_input.a, func_3(reverseBits(u_input.a), global2[_wgslsmith_index_u32(abs(var_0.x | 4294967295u), 15u)], func_3(vec3<u32>(arg_0.x, arg_0.x, 0u), global2[_wgslsmith_index_u32(arg_0.x, 15u)], func_2(Struct_2(true, Struct_1(arg_3.x), arg_1.c, false, arg_1.e), arg_1.b, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1017f, arg_2.x, arg_2.x, arg_2.x) - vec4<f32>(-224f, 1000f, 1645f, arg_2.x))).c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.x, arg_2.x, -661f, 154f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(586f, arg_2.x, arg_2.x, arg_2.x)))), Struct_1(abs(global1[_wgslsmith_index_u32(53871u, 9u)]) < 0u), vec4<f32>(arg_2.x, -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(189f)), _wgslsmith_div_f32(arg_2.x, arg_2.x))), arg_2.x)), Struct_1(!arg_1.c.a), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(3151f * 246f))), _wgslsmith_div_f32(-1245f, arg_2.x), -685f)).c;
    return func_3(~u_input.a | _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(68384u, 1u, 3386u), select(u_input.a, u_input.a, vec3<bool>(arg_1.c.a, false, true))), vec3<u32>(~1u, arg_0.x, _wgslsmith_div_u32(arg_0.x, 1u))), func_3(u_input.a, func_3(~max(vec3<u32>(34331u, var_0.x, u_input.a.x), vec3<u32>(arg_0.x, var_0.x, 4294967295u)), global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(var_0.x, 26969u)), 15u)], var_2, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-396f, -484f, 1075f, 536f), vec4<f32>(arg_2.x, -960f, -425f, arg_2.x), arg_3.x)), vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 1677f), vec4<bool>(false, arg_3.x, arg_3.x, var_2.a)))), var_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -645f, 1609f, arg_2.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(352f, -1312f, -242f, 1387f))))), arg_1.c, vec4<f32>(arg_2.x, 614f, -2077f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.c;
    global1 = array<u32, 9>();
    var var_1 = arg_0.c;
    global0 = array<vec3<f32>, 20>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, 1f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-768f, -146f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1245f * -517f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-185f - 1314f))))));
    return Struct_1(any(arg_0.e.zxz));
}

fn func_1() -> bool {
    global2 = array<Struct_2, 15>();
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 15u)];
    global2 = array<Struct_2, 15>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-161f, -1841f) * vec2<f32>(1700f, 1067f)), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-202f, -1000f))), var_0.e.wy))));
    let var_2 = func_5(func_4(firstLeadingBit(u_input.a.yz), func_3(~u_input.a, global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 9u)], 15u)], func_2(global2[_wgslsmith_index_u32(u_input.a.x & global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 15u)], Struct_1(var_0.a), any(vec3<bool>(true, var_0.a, false))), vec4<f32>(var_1.x, -1378f, var_1.x, var_1.x)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-654f, var_1.x)), vec2<f32>(var_1.x, 824f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(468f, -1000f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.x, -1513f))))), !select(var_0.e.wz, !var_0.e.wy, vec2<bool>(true, true))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<bool>(true, true), select(true, false, true)), vec2<bool>(any(vec2<bool>(false, false)) && true, true), func_1());
    let var_1 = func_3(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(8012u, global1[_wgslsmith_index_u32(11282u, 9u)], 48780u, 12528u), vec4<u32>(4294967295u, 84664u, 40108u, 0u)), global1[_wgslsmith_index_u32(5544u, 9u)] & 14762u, ~1u)), vec3<u32>(~u_input.a.x & firstTrailingBit(4294967295u), global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 9u)], ~u_input.a.x << (u_input.a.x % 32u))), global2[_wgslsmith_index_u32(83510u, 15u)], Struct_1(func_1()), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-141f - -1107f)))), -409f, -1905f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-648f)))))).b;
    var var_2 = abs(vec4<i32>(79795i, abs(u_input.c), -u_input.c, 25565i << (firstTrailingBit(abs(4294967295u)) % 32u)));
    var var_3 = ~u_input.a;
    var var_4 = true;
    let var_5 = Struct_1(!(any(!vec3<bool>(var_1.a, var_0.x, var_0.x)) == var_1.a));
    global1 = array<u32, 9>();
    var var_6 = all(!func_3(vec3<u32>(var_3.x, 62400u, 8496u), func_3(vec3<u32>(23833u, 26118u, global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), Struct_2(false, var_1, var_5, false, vec4<bool>(false, var_5.a, var_0.x, var_1.a)), Struct_1(var_0.x), vec4<f32>(-1105f, 882f, 1670f, 808f)), Struct_1(false), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-161f, 533f, 399f, 196f)))).e.yzz) & !any(!func_3(vec3<u32>(var_3.x, 4294967295u, 0u), global2[_wgslsmith_index_u32(var_3.x, 15u)], var_1, vec4<f32>(1381f, 1591f, 272f, 772f)).e.yy);
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a.x, u_input.a.x), select(~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 33223i), u_input.b) << (13308u % 32u)), 2147483647i, true));
}

