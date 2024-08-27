struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(483f, -544f, 1689f, -1000f, -314f, 363f, 456f, -697f, -1286f, 1000f, -1000f, 973f, -707f, -390f, 199f, -1194f, 1338f, 1467f, -495f, 779f, -217f, 1325f, -172f, -1032f);

var<private> global1: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> u32 {
    global1 = Struct_3(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 35038u, u_input.d.x), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(47437u, 58070u, 37559u), u_input.d.zzx), ~u_input.d.xxw)), u_input.d.xyz), _wgslsmith_mod_i32(-(~_wgslsmith_clamp_i32(global1.b, global1.b, global1.b)), reverseBits(global1.b << (select(34129u, 49479u, true) % 32u))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.a, 24u)] * _wgslsmith_div_f32(913f, global1.c.x)), global1.c.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.c.x, 168f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(global1.a, 24u)], global1.c.x), _wgslsmith_f_op_vec2_f32(global1.c + global1.c))))), any(vec3<bool>(true, true, global1.b > -1i)))));
    return 4294967295u;
}

fn func_3() -> i32 {
    global0 = array<f32, 24>();
    global1 = Struct_3(83615u, min(firstTrailingBit(34437i), -2147483647i), global1.c);
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(min(59812u, global1.a), 24u)]))), -1055f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global1.c)))));
    let var_1 = Struct_1((-vec3<i32>(-1i, -2147483647i, global1.b) & (vec3<i32>(global1.b, global1.b, global1.b) & _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -43685i, 0i), vec3<i32>(0i, -66551i, global1.b)))) ^ vec3<i32>(max(1i, ~global1.b), firstTrailingBit(global1.b) & _wgslsmith_add_i32(2147483647i, global1.b), max(1i, -11459i >> (1u % 32u))), vec4<i32>(select(firstTrailingBit(54726i), -global1.b | _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b, 1i, global1.b), vec3<i32>(global1.b, 15599i, global1.b)), select(true, false, false)), global1.b, 35969i, _wgslsmith_clamp_i32(global1.b, global1.b, _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, global1.b), ~vec2<i32>(2147483647i, global1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 24u)])) + -252f))) + _wgslsmith_f_op_f32(f32(-1f) * -862f)), u_input.d.wzx, vec2<i32>(-1i >> (global1.a % 32u), 0i));
    global1 = Struct_3(reverseBits(var_1.d.x), _wgslsmith_dot_vec2_i32(-var_1.e, abs(-(vec2<i32>(global1.b, -49929i) << (vec2<u32>(u_input.d.x, var_1.d.x) % vec2<u32>(32u))))), global1.c);
    return _wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-38979i, -1i), countOneBits(var_1.a.zy), -vec2<i32>(1i, global1.b)), -(var_1.a.zz >> (var_1.d.yx % vec2<u32>(32u))), vec2<i32>(-1i, -var_1.e.x)), vec2<i32>(-43186i, -var_1.a.x));
}

fn func_2() -> vec2<f32> {
    global0 = array<f32, 24>();
    let var_0 = Struct_2(global1.b, Struct_1(vec3<i32>(-34680i, global1.b, abs(2147483647i) | _wgslsmith_div_i32(global1.b, 0i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(global1.b, global1.b, 7918i, 10363i), vec4<i32>(global1.b, global1.b, 1i, -1i)), _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(23414u, 24u)])))), vec3<u32>(global1.a | ~76219u, ~4294967295u, min(firstLeadingBit(34359u), ~1u)), vec2<i32>(firstLeadingBit(0i), func_3()) << (firstTrailingBit(vec2<u32>(13675u, 1u)) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global1.c.x));
    let var_2 = !(!vec3<bool>(true, global1.b >= var_0.b.b.x, true));
    return vec2<f32>(585f, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1204f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(_wgslsmith_sub_u32(u_input.d.x, func_1()), -_wgslsmith_mult_i32(~(-2147483647i), min(global1.b & global1.b, -18794i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())));
    let var_0 = Struct_3(_wgslsmith_mod_u32(~(~u_input.b), global1.a & _wgslsmith_mult_u32(40306u, global1.a & u_input.c)), global1.b, global1.c);
    let var_1 = vec2<bool>(!all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2483f + 1627f)), -1971f, true)) < _wgslsmith_f_op_f32(-var_0.c.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c));
    var_2 = var_0.c;
    let var_3 = u_input.a.x;
    global1 = Struct_3(var_3, select(global1.b, 12099i, false && (var_1.x & true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-777f, _wgslsmith_f_op_vec2_f32(func_2()).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))));
    var var_4 = any(vec4<bool>(!(!var_1.x), true, (global0[_wgslsmith_index_u32(21408u, 24u)] == global0[_wgslsmith_index_u32(u_input.b, 24u)]) & !var_1.x, var_1.x)) & !any(vec4<bool>(any(vec3<bool>(var_1.x, var_1.x, false)), any(vec2<bool>(var_1.x, var_1.x)), false, any(var_1)));
    var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -617f), -1202f), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, 1u), vec3<u32>(_wgslsmith_div_u32(18504u, u_input.d.x), u_input.b, global1.a >> (var_3 % 32u))) << ((var_3 << (~_wgslsmith_mult_u32(u_input.c, 9706u) % 32u)) % 32u), 9566i, global1.c, ~(~(u_input.a.yz >> (vec2<u32>(u_input.c, var_0.a) % vec2<u32>(32u)))) ^ _wgslsmith_mult_vec2_u32(max(vec2<u32>(global1.a, var_3) & vec2<u32>(var_0.a, 4294967295u), _wgslsmith_add_vec2_u32(u_input.d.zz, u_input.a.zy)), ~(vec2<u32>(var_3, 4294967295u) ^ vec2<u32>(var_0.a, 1u))));
}

