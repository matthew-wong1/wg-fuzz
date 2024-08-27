struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: vec3<f32>,
    e: bool,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-672f, -347f, -169f);

var<private> global1: array<vec4<i32>, 32>;

var<private> global2: u32 = 54032u;

var<private> global3: f32;

var<private> global4: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: i32) -> i32 {
    let var_0 = Struct_3(~1u, -2322f, Struct_2(Struct_1(~arg_1 | firstLeadingBit(arg_1), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 1651f) + vec3<f32>(global0.x, global0.x, -188f)))), arg_2, vec4<u32>(_wgslsmith_add_u32(32406u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 52414u, 4294967295u, 1u), vec4<u32>(arg_1.x, arg_0, arg_1.x, 4294967295u)), ~4294967295u, ~1u)), -18982i, ~(arg_1.x | arg_1.x) != _wgslsmith_sub_u32(arg_0, 1u), Struct_1(vec2<u32>(1u, _wgslsmith_div_u32(arg_1.x, u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), !(arg_3 > -2147483647i), ~firstLeadingBit(vec4<u32>(arg_0, 0u, 0u, arg_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1000f, global0.x), _wgslsmith_f_op_f32(trunc(-371f)), _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 791f, global0.x) + vec3<f32>(global0.x, global0.x, -1774f)))))), ~1u >= u_input.a);
    let var_1 = Struct_4(vec3<u32>(arg_0, arg_1.x, ~1u));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1320f - global0.x) + 1519f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global0.x, 1164f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.d.b + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.d.x, global0.x)))), select(select(vec3<bool>(false, var_0.e, var_0.e), vec3<bool>(true, true, true), !vec3<bool>(true, var_0.c.d.c, arg_2)), vec3<bool>(true, true, all(vec2<bool>(true, true))), !select(vec3<bool>(true, false, var_0.e), vec3<bool>(true, false, arg_2), false)))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.d, var_0.c.d.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(round(var_0.d))) * vec3<f32>(global0.x, _wgslsmith_f_op_f32(903f * -133f), -785f))));
    let var_2 = -_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.b, -12843i, arg_3, -2147483647i), countOneBits(~(-global1[_wgslsmith_index_u32(var_0.c.a.d.x, 32u)])));
    global1 = array<vec4<i32>, 32>();
    return _wgslsmith_mult_i32(-1i, arg_3);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_4) -> Struct_1 {
    global4 = min(-(~_wgslsmith_mod_i32(func_3(arg_2.a.x, arg_2.a.xz, false, 0i), reverseBits(-2147483647i))), -2147483647i);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(350f))))), _wgslsmith_f_op_f32(607f + 328f), all(vec4<bool>(any(vec4<bool>(false, arg_0, true, arg_0)), false, arg_0, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))))), -1064f);
    let var_0 = vec2<bool>(arg_0, arg_0);
    let var_1 = _wgslsmith_clamp_u32(arg_1.x, 1u, ~1u) | u_input.a;
    return Struct_1(~(~arg_2.a.xx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1000f, global0.x)))))), true, arg_1);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) * vec3<f32>(global0.x, global0.x, 1276f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-977f, 948f, global0.x))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -598f, 295f, global0.x));
    let var_3 = reverseBits(countOneBits(~(~(~vec4<u32>(u_input.a, 51765u, 127508u, u_input.a)))));
    global4 = ~8428i;
    return func_2(true, var_3, Struct_4(select(vec3<u32>(4661u, 27033u, 44289u), ~var_3.yyw, vec3<bool>(arg_0.x, arg_0.x, arg_0.x)) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(19930u, 0u, 52664u), var_3.zwz, _wgslsmith_mult_vec3_u32(var_3.xzz, vec3<u32>(var_3.x, 1u, 14804u)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-436f, func_2(arg_1.c, vec4<u32>(~arg_1.d.x, 0u, ~1u, 4294967295u & arg_1.a.x), Struct_4(~vec3<u32>(u_input.a, 113341u, arg_1.a.x))).b.x));
    var var_1 = max(vec4<i32>(reverseBits(27596i << (_wgslsmith_div_u32(arg_1.d.x, 21487u) % 32u)), func_3(firstLeadingBit(0u ^ arg_1.a.x), vec2<u32>(0u, ~55493u), _wgslsmith_f_op_f32(abs(-963f)) != _wgslsmith_f_op_f32(ceil(global0.x)), 0i), 1i, -2147483647i), _wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(-global1[_wgslsmith_index_u32(1u, 32u)], countOneBits(global1[_wgslsmith_index_u32(33690u, 32u)])), vec4<i32>(-(~2147483647i), func_3(countOneBits(arg_0.x), _wgslsmith_mult_vec2_u32(arg_1.d.zw, vec2<u32>(47729u, 4294967295u)), !arg_1.c, -2147483647i), max(_wgslsmith_mult_i32(-19695i, -1i), -1805i), max(1i, 0i >> (u_input.a % 32u)))));
    let var_2 = !vec2<bool>(arg_1.c, func_1(!vec2<bool>(arg_1.c, arg_1.c)).c || arg_1.c);
    var_1 = firstLeadingBit(global1[_wgslsmith_index_u32(~arg_0.x, 32u)]);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -195f))));
    return vec3<bool>(true, any(vec3<bool>(any(vec3<bool>(arg_1.c, false, false)), true, arg_1.c)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.a, u_input.a, u_input.a);
    global0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(round(global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1244f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 586f, global0.x))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-572f, global0.x, global0.x))))), vec3<f32>(global0.x, global0.x, global0.x))));
    var var_1 = !select(vec3<bool>(false, _wgslsmith_f_op_f32(floor(global0.x)) >= _wgslsmith_f_op_f32(global0.x * -483f), all(vec4<bool>(true, false, false, true))), select(vec3<bool>(true, true, true), func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, var_0.x, var_0.x, 73902u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(var_0.x, var_0.x, var_0.x, 32838u)), func_1(vec2<bool>(true, true)), global0.x), vec3<bool>(true, true, true)), vec3<bool>(true, true, true));
    var_0 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(~25164u, select(86181u, u_input.a, true), ~u_input.a) | countOneBits(vec3<u32>(u_input.a, u_input.a, 29627u)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_0.x, 4294967295u, u_input.a)), vec3<u32>(1u, ~var_0.x, firstLeadingBit(var_0.x)))), ~(~func_1(!var_1.zy).d.zxw), !func_4(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 1u, 4294967295u), vec4<u32>(22681u, 1u, 0u, var_0.x)), Struct_1(vec2<u32>(65722u, u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -884f, global0.x) - vec3<f32>(-1088f, 354f, global0.x)), false, vec4<u32>(37473u, 17464u, 0u, u_input.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-221f))))));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))))) + -455f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -304f))));
    global2 = 34326u;
    let x = u_input.a;
    s_output = StorageBuffer(global0.zz, countOneBits(~_wgslsmith_dot_vec3_i32(select(vec3<i32>(15137i, 2147483647i, 2147483647i), vec3<i32>(1i, 2147483647i, 4808i), vec3<bool>(false, var_1.x, false)), vec3<i32>(2147483647i, -10634i, 2147483647i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1481f * -1467f), _wgslsmith_div_f32(global0.x, func_2(var_1.x, vec4<u32>(u_input.a, var_0.x, var_0.x, 13186u), Struct_4(vec3<u32>(0u, 1u, var_0.x))).b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1486f) * _wgslsmith_f_op_f32(-global0.x)), -206f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, -447f, 1000f, global0.x), vec4<f32>(-668f, global0.x, global0.x, -1057f))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(387f, -865f, 220f, -1741f) - vec4<f32>(157f, global0.x, global0.x, global0.x)))))), vec3<i32>(1i, _wgslsmith_mod_i32(max(49102i, -18925i), max(1i, -21620i)), ~2147483647i));
}

