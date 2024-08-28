struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1657f);

var<private> global1: array<u32, 32> = array<u32, 32>(4294967295u, 92616u, 4294967295u, 2737u, 4294967295u, 46206u, 0u, 4294967295u, 44587u, 6908u, 19769u, 11756u, 72139u, 4294967295u, 14927u, 50127u, 11818u, 4294967295u, 27173u, 69436u, 4294967295u, 93991u, 5595u, 27234u, 35094u, 4294967295u, 21494u, 61840u, 0u, 1u, 4294967295u, 4294967295u);

var<private> global2: Struct_4 = Struct_4(-1626f);

var<private> global3: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(-174f), Struct_4(797f), Struct_4(880f), Struct_4(983f), Struct_4(1168f), Struct_4(-1000f), Struct_4(-1022f), Struct_4(-1451f), Struct_4(-1959f), Struct_4(-388f), Struct_4(1056f), Struct_4(569f), Struct_4(-1000f), Struct_4(-217f), Struct_4(986f), Struct_4(-1000f), Struct_4(1326f), Struct_4(1704f), Struct_4(-436f), Struct_4(-480f), Struct_4(977f), Struct_4(-1473f), Struct_4(-167f), Struct_4(756f), Struct_4(-256f), Struct_4(-237f), Struct_4(122f), Struct_4(-1098f), Struct_4(1844f), Struct_4(355f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec3<i32> {
    let var_0 = true;
    var var_1 = vec4<bool>(var_0, all(vec4<bool>(true, _wgslsmith_sub_u32(31787u, u_input.b.x) >= arg_0, select(u_input.a.x <= u_input.a.x, true, global2.a == 231f), true)), all(select(select(vec3<bool>(true, false, false), vec3<bool>(var_0, var_0, true), false), !vec3<bool>(var_0, false, var_0), vec3<bool>(false, var_0, var_0))) || !(!select(true, var_0, var_0)), ~countOneBits(arg_0) >= _wgslsmith_sub_u32(arg_0, global1[_wgslsmith_index_u32(reverseBits(26937u), 32u)]));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(min(1014f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -402f) * _wgslsmith_f_op_f32(f32(-1f) * -282f))))));
    global3 = array<Struct_4, 30>();
    let var_3 = !(!(!vec4<bool>(false, var_1.x, var_1.x, true)));
    return -vec3<i32>(1i, _wgslsmith_add_i32(-(u_input.a.x >> (arg_0 % 32u)), abs(reverseBits(2147483647i))), countOneBits(u_input.a.x));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = ~7498u;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~arg_3.a, vec3<u32>(44504u, var_0, _wgslsmith_add_u32(arg_3.a.x, var_0))), ~arg_3.a);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>) -> vec4<i32> {
    let var_0 = vec4<u32>(max(firstLeadingBit(min(global1[_wgslsmith_index_u32(~4294967295u, 32u)], u_input.b.x)), global1[_wgslsmith_index_u32(42874u, 32u)]), 1u, func_4(arg_0.x, -vec3<i32>(arg_0.x, u_input.a.x, -9238i) | select(abs(vec3<i32>(72610i, -31643i, -25483i)), vec3<i32>(-32804i, -2147483647i, -2147483647i), vec3<bool>(true, true, true)), vec2<bool>(_wgslsmith_f_op_f32(1827f - -368f) > _wgslsmith_f_op_f32(-global2.a), false), Struct_1(vec3<u32>(~85820u, abs(37861u), 31310u), func_3(global1[_wgslsmith_index_u32(countOneBits(7144u), 32u)]), ~(-1i))), ~23536u);
    let var_1 = Struct_2(Struct_1(~var_0.zyx, firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, u_input.a.x, 1i), vec3<i32>(u_input.a.x, 1i, 0i)), vec3<i32>(arg_0.x, 2147483647i, -29159i))), arg_0.x), ~(~var_0.x));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(global2.a, 310f)), -410f);
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global2.a))));
    let var_4 = _wgslsmith_f_op_vec2_f32(exp2(var_2));
    return vec4<i32>(-6155i, ~var_1.a.b.x, var_1.a.c ^ (func_3(abs(var_1.a.a.x)).x | _wgslsmith_dot_vec2_i32(-var_1.a.b.xx, _wgslsmith_clamp_vec2_i32(var_1.a.b.zz, vec2<i32>(arg_0.x, -16007i), vec2<i32>(var_1.a.b.x, 34337i)))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, ~arg_0.x, ~var_1.a.c), var_1.a.b.x) << (func_4(_wgslsmith_mod_i32(abs(arg_0.x), arg_0.x), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a.c, var_1.a.c, 2147483647i), vec3<i32>(1i, var_1.a.b.x, var_1.a.b.x)), var_1.a.b), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false)), var_1.a) % 32u));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>) -> bool {
    var var_0 = arg_0;
    var var_1 = Struct_3(1296f);
    var var_2 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(27240i, _wgslsmith_clamp_i32(arg_1.x, -2147483647i, 1i), i32(-1i) * -41788i, firstTrailingBit(u_input.a.x)) << (((vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 51164u, u_input.b.x, 4294967295u) | vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], 1u, u_input.b.x)) & ~vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], 1u, 4294967295u, 61649u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(2147483647i, u_input.a.x, arg_1.x, u_input.a.x) | vec4<i32>(arg_1.x, u_input.a.x, u_input.a.x, arg_1.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a.x, arg_1.x, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, u_input.a.x, 2147483647i, 0i), vec4<i32>(arg_1.x, 45254i, -18465i, -1i)))), -func_2(firstLeadingBit(vec2<i32>(30783i, -2147483647i)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.a, global2.a, 221f)))));
    var var_3 = arg_0.yxx;
    var var_4 = Struct_1(~min(~min(u_input.b, vec3<u32>(29083u, 2489u, 30254u)), _wgslsmith_add_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], u_input.b.x), _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(4294967295u, 0u, 0u)))), vec3<i32>(-26681i, func_3(~_wgslsmith_div_u32(4294967295u, 25047u)).x, var_2.x), ~2147483647i);
    return true || (_wgslsmith_sub_i32(_wgslsmith_sub_i32(~2372i, var_2.x), ~_wgslsmith_div_i32(-66406i, var_2.x)) == _wgslsmith_add_i32(9208i, ~(-9321i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(all(vec4<bool>(true, true, false, true)), true || func_1(vec4<bool>(true, false, false, false), vec3<i32>(u_input.a.x, u_input.a.x, -1i)), false, _wgslsmith_f_op_f32(-global2.a) < _wgslsmith_div_f32(616f, -405f)), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, func_1(vec4<bool>(false, false, false, true), ~vec3<i32>(-10441i, -2147483647i, 9161i))), vec4<bool>(true, true, u_input.a.x < u_input.a.x, any(vec4<bool>(true, true, true, true))));
    global2 = Struct_4(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1125f))) - _wgslsmith_div_f32(-867f, _wgslsmith_div_f32(500f, global0.a))))));
    global0 = Struct_3(-371f);
    var_0 = !select(select(!(!vec4<bool>(false, var_0.x, var_0.x, false)), vec4<bool>(u_input.a.x != u_input.a.x, all(var_0.ww), false, var_0.x), vec4<bool>(true, true, false, !var_0.x)), vec4<bool>(true, true, true || any(vec2<bool>(false, var_0.x)), u_input.a.x <= -2147483647i), !vec4<bool>(true, true, var_0.x || var_0.x, true));
    let var_1 = select(vec3<bool>(~(global1[_wgslsmith_index_u32(54758u, 32u)] & global1[_wgslsmith_index_u32(13903u, 32u)]) <= u_input.b.x, select(all(!vec2<bool>(var_0.x, true)), false, -450f != _wgslsmith_div_f32(global2.a, global2.a)), select(true, all(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), all(var_0.wyw))), vec3<bool>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(38489i, u_input.a.x, -21227i)) == 13430i, true || all(!var_0.yzz), var_0.x), var_0.yxw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global2.a, 1096f)), global2.a))), _wgslsmith_f_op_f32(f32(-1f) * -217f));
}

