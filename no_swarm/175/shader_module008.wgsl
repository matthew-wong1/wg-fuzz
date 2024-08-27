struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12>;

var<private> global1: array<vec4<f32>, 6>;

var<private> global2: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, true, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = vec2<bool>(arg_0.a.x & false, all(!arg_0.a.xz));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0.d), vec2<f32>(455f, arg_0.c.x)))));
    let var_2 = !vec2<bool>(!(!arg_0.a.x), all(!select(global2[_wgslsmith_index_u32(u_input.d, 1u)], vec3<bool>(var_0.x, true, var_0.x), false)));
    let var_3 = _wgslsmith_f_op_f32(-var_1.x);
    global1 = array<vec4<f32>, 6>();
    return var_3;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<u32>) -> Struct_3 {
    global0 = array<vec2<u32>, 12>();
    let var_0 = vec4<bool>(false, select(true, all(vec4<bool>(true, false, false, true)), true) & true, !all(vec3<bool>(true, true, true)), true);
    var var_1 = Struct_2(_wgslsmith_div_i32(_wgslsmith_sub_i32(0i, u_input.c), u_input.e.x));
    global2 = array<vec3<bool>, 1>();
    let var_2 = _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-522f, _wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_f_op_f32(floor(arg_1))))));
    return Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_2.x, 4294967295u, 4294967295u)), select(vec3<u32>(arg_0, arg_2.x, 56692u), arg_2, true)), (u_input.d | arg_2.x) ^ 0u), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(63077u, 116248u, arg_2.x), vec3<u32>(arg_2.x, 18565u, u_input.d)), _wgslsmith_dot_vec4_u32(vec4<u32>(55531u, arg_2.x, 6698u, u_input.d), vec4<u32>(arg_0, 4294967295u, u_input.d, 4294967295u))) | vec2<u32>(46205u, 9549u >> (u_input.d % 32u))), -1405f, Struct_2(36090i));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec4<f32> {
    var var_0 = -612f;
    var var_1 = func_2(~arg_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2536f)))) - _wgslsmith_f_op_f32(select(arg_0.d.x, 1443f, arg_0.a.x & true))), ~(~select(vec3<u32>(31506u, 8138u, arg_0.e.x), vec3<u32>(arg_0.e.x, 1u, 4294967295u), arg_0.a) << ((vec3<u32>(4294967295u, u_input.d, arg_0.e.x) & (vec3<u32>(arg_0.e.x, 1u, 1u) << (vec3<u32>(59523u, arg_0.e.x, arg_0.e.x) % vec3<u32>(32u)))) % vec3<u32>(32u))));
    global0 = array<vec2<u32>, 12>();
    var_0 = _wgslsmith_f_op_f32(-var_1.b);
    var var_2 = !arg_2;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(max(func_2(8901u, arg_0.c.x, vec3<u32>(u_input.d, 1994u, arg_0.e.x)).a, 22471u), 6u)] - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, var_1.b, var_1.b, 444f)) * global1[_wgslsmith_index_u32(~57478u ^ ~arg_0.e.x, 6u)])), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-342f, -1704f, var_1.b, arg_0.c.x))) - vec4<f32>(arg_0.b.x, arg_0.d.x, -666f, var_1.b))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_0.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(arg_1.b.xzw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b.zxz) + _wgslsmith_f_op_vec3_f32(trunc(arg_1.b.yxw))))))));
    var var_2 = var_0;
    global0 = array<vec2<u32>, 12>();
    let var_3 = Struct_2(var_2.a);
    return Struct_2(max(_wgslsmith_add_i32(26073i, firstLeadingBit(min(var_0.a, arg_0.c.a))), ~(-u_input.a)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    global2 = array<vec3<bool>, 1>();
    var var_0 = u_input.c;
    global2 = array<vec3<bool>, 1>();
    var var_1 = Struct_3(u_input.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1248f, 125f, true)))), -913f, true)), func_2(countOneBits(_wgslsmith_div_u32(62697u & u_input.d, _wgslsmith_mod_u32(u_input.d, 1u))), 2280f, ~select(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(u_input.d, 4294967295u, 0u), false) | select(select(vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(4294967295u, u_input.d, u_input.d), vec3<bool>(true, false, false)), vec3<u32>(14317u, u_input.d, 0u) ^ vec3<u32>(1u, u_input.d, u_input.d), true)).c);
    var var_2 = vec3<u32>(var_1.a, _wgslsmith_sub_u32((_wgslsmith_add_u32(u_input.d, 0u) | (4294967295u << (var_1.a % 32u))) | 86711u, firstTrailingBit(1u)), _wgslsmith_mod_u32(~select(_wgslsmith_sub_u32(0u, 0u), u_input.d, false), func_2(11536u, 274f, vec3<u32>(4294967295u, 1u, 28835u)).a));
    return func_2(17120u >> (1u % 32u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f + -225f))))), reverseBits(vec3<u32>(_wgslsmith_div_u32(66486u, 1u), ~80032u, ~4294967295u) | firstTrailingBit(~vec3<u32>(51525u, 4294967295u, 50626u))));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_i32(u_input.e, u_input.b);
    global2 = array<vec3<bool>, 1>();
    return Struct_1(select(!vec3<bool>(arg_3.x, true, arg_3.x), select(select(global2[_wgslsmith_index_u32(63578u, 1u)], select(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(78510u, 1u)], vec3<bool>(false, arg_3.x, true)), global2[_wgslsmith_index_u32(22557u, 1u)]), !global2[_wgslsmith_index_u32(~11853u, 1u)], select(vec3<bool>(arg_3.x, arg_3.x, false), vec3<bool>(true, true, arg_3.x), select(vec3<bool>(arg_3.x, arg_3.x, true), vec3<bool>(true, true, true), arg_3.x))), !vec3<bool>(21962i >= arg_2.x, false, arg_0.b <= 424f)), global1[_wgslsmith_index_u32(~(~arg_0.a), 6u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-452f, 440f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1435f, -841f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, arg_0.b))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.b)) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, 836f), vec2<f32>(-249f, -591f))))), global0[_wgslsmith_index_u32(88678u, 12u)] >> (global0[_wgslsmith_index_u32(~(select(u_input.d, arg_0.a, arg_3.x) | ~u_input.d), 12u)] % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(select(vec4<bool>(true, u_input.d < 0u, any(vec2<bool>(false, false)), select(true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, select(false, true, true))), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false)), true));
    var var_1 = Struct_1(vec3<bool>(!var_0, select(all(vec2<bool>(true, true)), select(var_0, all(vec2<bool>(true, var_0)), var_0), true || !var_0), false), global1[_wgslsmith_index_u32(~(u_input.d << (4294967295u % 32u)), 6u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-974f, 1516f) - vec2<f32>(519f, -542f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-396f, -574f) - vec2<f32>(706f, -1116f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-373f - 988f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -442f))))), vec2<u32>(u_input.d, u_input.d));
    let var_2 = Struct_2(-firstLeadingBit(max(u_input.b.x & u_input.b.x, u_input.c >> (4294967295u % 32u))));
    var_1 = func_6(func_5(Struct_2(_wgslsmith_mult_i32(u_input.c, -32482i)), func_4(func_2(_wgslsmith_clamp_u32(u_input.d, u_input.d, u_input.d), _wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(true, false, var_0), var_1.b, vec2<f32>(-934f, -440f), var_1.d, var_1.e))), vec3<u32>(var_1.e.x, 44200u, u_input.d)), Struct_1(vec3<bool>(var_0, var_0, var_1.a.x), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<bool>(true, var_1.a.x, true), global1[_wgslsmith_index_u32(33892u, 6u)], var_1.d, var_1.c, global0[_wgslsmith_index_u32(4294967295u, 12u)]), 1i, true)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<bool>(false, var_1.a.x, true), vec4<f32>(var_1.d.x, var_1.c.x, var_1.b.x, -377f), var_1.d, var_1.c, global0[_wgslsmith_index_u32(53980u, 12u)]), -1i, false)).yy, var_1.b.xz, var_1.e))), firstTrailingBit(u_input.e), -vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(0i, -24338i, var_2.a)), var_2.a), vec2<bool>(true, true));
    var var_3 = Struct_3(~17793u, _wgslsmith_f_op_f32(-1751f + _wgslsmith_f_op_f32(round(442f))), Struct_2(~(func_4(Struct_3(42518u, var_1.d.x, var_2), Struct_1(vec3<bool>(false, true, var_0), global1[_wgslsmith_index_u32(4294967295u, 6u)], vec2<f32>(var_1.c.x, var_1.b.x), var_1.d, vec2<u32>(1u, 35145u))).a ^ 51994i)));
    let var_4 = select(!select(vec4<bool>(!var_0, false, -19905i < var_3.c.a, var_1.a.x), select(vec4<bool>(var_0, var_1.a.x, var_0, false), vec4<bool>(var_1.a.x, false, false, true), !vec4<bool>(false, true, var_1.a.x, var_0)), select(select(vec4<bool>(true, var_1.a.x, var_1.a.x, var_0), vec4<bool>(false, false, var_1.a.x, var_0), true), !vec4<bool>(var_1.a.x, false, var_0, true), -849f != var_3.b)), !vec4<bool>(firstTrailingBit(var_3.c.a) == (var_2.a | 20108i), var_1.a.x, true, var_0), all(!select(vec4<bool>(var_0, var_1.a.x, true, var_0), vec4<bool>(var_1.a.x, false, false, var_1.a.x), var_1.a.x)) | var_0);
    global2 = array<vec3<bool>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(reverseBits(func_4(func_2(2615u, var_1.b.x, vec3<u32>(48468u, 4294967295u, var_1.e.x)), func_6(Struct_3(0u, -1000f, var_2), vec3<i32>(2147483647i, -37938i, 0i), u_input.b.zx, var_4.xx)).a), -2147483647i, -43827i, var_2.a), 46715i);
}

