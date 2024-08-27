struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(1048f, -450f, -890f, 148f, -1121f, -876f, -1295f, -1000f, -1074f, 294f, -1900f, -327f, 1903f, 2226f, -753f, 415f, -713f, -670f, 1086f, 319f, 1790f, 1036f, -1670f, -124f, -256f, -912f, 217f);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: Struct_2) -> bool {
    let var_0 = !select(vec3<bool>(true, true, true), arg_2.b, !select(arg_2.b, vec3<bool>(true, arg_0.b.b, arg_0.b.b), !vec3<bool>(arg_0.b.b, false, arg_2.a.b)));
    global0 = array<f32, 27>();
    let var_1 = arg_0.b;
    let var_2 = _wgslsmith_dot_vec2_i32(select(arg_2.a.a.wz, countOneBits(-vec2<i32>(var_1.a.x, arg_2.a.a.x)), arg_1), ~var_1.a.zw);
    let var_3 = var_1;
    return all(select(select(select(select(vec4<bool>(false, var_1.b, false, arg_1), vec4<bool>(false, true, true, arg_0.b.b), vec4<bool>(arg_1, arg_0.a.c, var_1.b, var_0.x)), !vec4<bool>(arg_2.a.b, false, var_0.x, true), true), select(vec4<bool>(true, false, arg_2.b.x, false), vec4<bool>(arg_1, false, false, arg_1), !var_3.b), true), !select(!vec4<bool>(arg_0.b.b, var_1.b, arg_1, true), select(vec4<bool>(true, false, arg_0.b.b, var_3.b), vec4<bool>(false, true, var_0.x, true), arg_1), all(vec4<bool>(true, var_3.b, var_3.b, false))), select(vec4<bool>(arg_2.a.b, 1i > arg_2.a.a.x, var_0.x || var_3.b, any(vec3<bool>(false, false, false))), !(!vec4<bool>(var_1.b, true, false, var_3.b)), !var_1.b)));
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(u_input.d, u_input.d), !(_wgslsmith_dot_vec4_u32(vec4<u32>(15697u, u_input.a, u_input.a, u_input.a), vec4<u32>(7232u, u_input.a, u_input.a, u_input.a)) >= _wgslsmith_add_u32(u_input.a, u_input.a)), vec4<u32>(countOneBits(~33050u), 0u, _wgslsmith_div_u32(u_input.a, _wgslsmith_mod_u32(52963u, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(46010u, u_input.a, 13422u, u_input.a) ^ vec4<u32>(0u, 52029u, u_input.a, 0u), vec4<u32>(u_input.a, 4294967295u, 21567u, 69272u)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec4<bool>(true, true, true, false)) && true), !all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false))), u_input.a >> (_wgslsmith_add_u32(0u, ~(u_input.a & 5139u)) % 32u));
    var var_1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~7731u, 27u)]);
    var_1 = 1401f;
    let var_2 = Struct_3(Struct_1(u_input.d, var_0.b.x, vec4<u32>(~4294967295u, ~var_0.c, _wgslsmith_clamp_u32(0u, u_input.a, 1u), ~1u) | var_0.a.c), _wgslsmith_add_vec3_i32(select(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.d.xy, var_0.a.a.wz), -40941i, i32(-1i) * -2147483647i), _wgslsmith_div_vec3_i32(u_input.d.xxx, u_input.d.yyx), vec3<bool>(all(vec4<bool>(var_0.b.x, var_0.a.b, var_0.b.x, var_0.b.x)), func_3(Struct_5(Struct_3(var_0.a, u_input.d.yyx, var_0.b.x, vec4<u32>(30121u, u_input.a, 34211u, 39377u)), var_0.a, var_0.a.a), false, Struct_2(Struct_1(vec4<i32>(u_input.b, var_0.a.a.x, u_input.b, 54067i), var_0.a.b, var_0.a.c), var_0.b, var_0.a.c.x)), var_0.b.x)), vec3<i32>(max(11313i, -1i), u_input.d.x, -41025i) << (vec3<u32>(u_input.a, 0u, abs(1u)) % vec3<u32>(32u))), true, var_0.a.c);
    return vec4<u32>(var_2.d.x, ~(~var_2.d.x), 4294967295u, abs(_wgslsmith_div_u32(select(var_0.c, ~0u, !var_2.a.b), u_input.a | 33090u)));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    let var_0 = reverseBits(vec3<i32>(-23471i << (_wgslsmith_sub_u32(reverseBits(u_input.a), u_input.a) % 32u), -(~(-arg_0.x)), 1i));
    let var_1 = Struct_5(Struct_3(Struct_1(_wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(1i, u_input.b, arg_0.x, var_0.x) & vec4<i32>(-2147483647i, arg_0.x, -2147483647i, u_input.c)), true && select(true, true, true), select(~vec4<u32>(1u, u_input.a, u_input.a, u_input.a), func_2(), true)), u_input.d.xxz, abs(u_input.a) <= u_input.a, ~(~vec4<u32>(64407u, 67512u, u_input.a, u_input.a)) ^ _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, u_input.a, 4294967295u, 0u)), vec4<u32>(49104u, 42390u, u_input.a, u_input.a))), Struct_1(u_input.d, all(vec2<bool>(all(vec2<bool>(true, false)), true)), firstTrailingBit(vec4<u32>(~u_input.a, 4294967295u, u_input.a, 1u | u_input.a))), -(~u_input.d));
    let var_2 = _wgslsmith_mod_vec3_u32(min(vec3<u32>(1u, abs(var_1.a.d.x), 40200u), vec3<u32>(20573u, countOneBits(var_1.a.d.x), 4294967295u)), ~var_1.a.d.yyz) >> (var_1.a.a.c.xzz % vec3<u32>(32u));
    let var_3 = u_input.a;
    let var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -215f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1417f) * 861f), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, var_2.x), 27u)]), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(253f, global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)]), vec3<f32>(global0[_wgslsmith_index_u32(var_1.a.a.c.x, 27u)], 1000f, global0[_wgslsmith_index_u32(1u, 27u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(331f, global0[_wgslsmith_index_u32(0u, 27u)], -1794f) - vec3<f32>(697f, global0[_wgslsmith_index_u32(var_3, 27u)], 1545f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(~(~var_1.b.c.x)), 27u)] * _wgslsmith_f_op_f32(-var_4.x)) * 261f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(vec3<i32>(2147483647i, 24976i, select(u_input.d.x, 1i, true))));
    global0 = array<f32, 27>();
    let var_1 = Struct_1(-firstTrailingBit(~vec4<i32>(u_input.c, u_input.d.x, u_input.d.x, u_input.c)), true, vec4<u32>(~15595u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 59020u) << (vec2<u32>(u_input.a, 53705u) % vec2<u32>(32u)), max(vec2<u32>(u_input.a, 25297u), vec2<u32>(u_input.a, 21627u))) | u_input.a, 6657u << ((1u ^ u_input.a) % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, u_input.a)), 1u) | u_input.a));
    global0 = array<f32, 27>();
    var var_2 = var_1;
    var var_3 = true;
    var var_4 = Struct_1(vec4<i32>(-firstTrailingBit(var_1.a.x), u_input.b >> (u_input.a % 32u), i32(-1i) * -46065i, var_2.a.x) | vec4<i32>(14044i, 2147483647i, 0i, abs(19558i)), var_2.b, ~func_2());
    let x = u_input.a;
    s_output = StorageBuffer(min(~var_4.c.yxw, ~_wgslsmith_mod_vec3_u32(~vec3<u32>(26612u, var_2.c.x, 0u), abs(vec3<u32>(1u, 1u, var_4.c.x)))), var_2.a.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1878f, global0[_wgslsmith_index_u32(30855u, 27u)]) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, global0[_wgslsmith_index_u32(u_input.a, 27u)]) + vec2<f32>(1799f, -1000f))))), ~(~vec2<u32>(1u, var_1.c.x << (var_4.c.x % 32u))), var_1.a);
}

