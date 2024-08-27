struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(72339u, 25146u), vec2<u32>(4350u, 0u), vec2<u32>(4294967295u, 17598u), vec2<u32>(40337u, 19616u), vec2<u32>(46198u, 17380u), vec2<u32>(13441u, 11038u), vec2<u32>(4294967295u, 14966u), vec2<u32>(4294967295u, 40701u), vec2<u32>(31633u, 0u), vec2<u32>(75660u, 0u), vec2<u32>(4294967295u, 25688u), vec2<u32>(61784u, 16975u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u), vec2<u32>(43767u, 30094u), vec2<u32>(1u, 9525u), vec2<u32>(1u, 0u));

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global3: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, 38116i, 1733i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) - arg_0.yy), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, 1400f), vec2<f32>(arg_0.x, 1992f), global2[_wgslsmith_index_u32(0u, 15u)])))), vec2<f32>(arg_0.x, arg_0.x)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x)));
    let var_1 = -8922i;
    var var_2 = Struct_2(select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), global2[_wgslsmith_index_u32(1u, 15u)], true), !all(vec3<bool>(true, false, false))), vec2<bool>(true, any(vec3<bool>(false, false, true))), !select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 0u, u_input.a.x), vec3<u32>(global1.x, 80443u, 0u)), 15u)], vec2<bool>(false, true), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.x, global1.x), vec3<u32>(0u, global1.x, 25143u)), 15u)])), Struct_1(min(firstLeadingBit(~global3.xy), abs(-global3.xx))), Struct_1(_wgslsmith_div_vec2_i32(abs(vec2<i32>(-2147483647i, var_1)), _wgslsmith_mult_vec2_i32(-vec2<i32>(var_1, arg_1), vec2<i32>(var_1, var_1)))), ~(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, 18357i, arg_1, -2506i) >> (vec4<u32>(22392u, 70843u, 32410u, 42815u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(global3.x, 2147483647i, var_1, arg_1), vec4<i32>(-1i, arg_1, arg_1, arg_1)))));
    let var_3 = Struct_2(!global2[_wgslsmith_index_u32(5067u, 15u)], var_2.b, var_2.b, -var_2.d);
    var var_4 = var_2.d;
    return vec2<u32>(60837u, firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u) | u_input.d.yy, ~u_input.a), 49891u)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = func_2(vec4<f32>(281f, 534f, _wgslsmith_f_op_f32(trunc(204f)), _wgslsmith_f_op_f32(-1000f * -1000f)), -_wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, 2147483647i), vec2<i32>(-10121i, global3.x) << (global0[_wgslsmith_index_u32(37990u, 17u)] % vec2<u32>(32u)), select(global2[_wgslsmith_index_u32(arg_1.x, 15u)], vec2<bool>(false, true), false)), vec2<i32>(global3.x, 1i))).x;
    let var_1 = Struct_3(Struct_2(select(select(global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 15u)], select(global2[_wgslsmith_index_u32(u_input.d.x, 15u)], global2[_wgslsmith_index_u32(1u, 15u)], true), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), vec2<bool>(true, any(vec2<bool>(true, true))), select(vec2<bool>(true, true), select(global2[_wgslsmith_index_u32(global1.x, 15u)], vec2<bool>(true, true), true), true)), Struct_1(vec2<i32>(0i ^ global3.x, _wgslsmith_mod_i32(35596i, 1i))), Struct_1(~global3.yx), vec4<i32>(-58230i, ~global3.x, 1i, abs(_wgslsmith_mult_i32(-44207i, global3.x)))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(52325u, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, -542f, 178f), vec4<f32>(arg_0, arg_0, arg_0, -697f), true)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(-290f, 1413f, arg_0, -603f)))), i32(-1i) * -global3.x).x), 17u)], Struct_2(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, false), any(vec3<bool>(false, false, false))), vec2<bool>(true, all(vec3<bool>(false, false, true))), global2[_wgslsmith_index_u32(~1u, 15u)]), Struct_1(reverseBits(~global3.wx)), Struct_1(~(~global3.zw)), -(~vec4<i32>(0i, global3.x, -1i, global3.x))), any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), all(vec3<bool>(true, false, true)))));
    let var_2 = var_1.a.c;
    global2 = array<vec2<bool>, 15>();
    var var_3 = var_1;
    return Struct_2(select(var_1.a.a, select(vec2<bool>(false, var_3.c.a.x & false), global2[_wgslsmith_index_u32(54380u, 15u)], !(var_1.d | false)), var_1.a.a), var_3.c.b, var_1.c.c, ~vec4<i32>(~17587i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(var_3.a.d, vec4<i32>(-470i, 3687i, var_2.a.x, var_1.c.b.a.x)), 1i), var_1.c.b.a.x, -45633i));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) * 1f), _wgslsmith_div_vec2_u32(select(global0[_wgslsmith_index_u32(10141u, 17u)], vec2<u32>(36336u ^ arg_1.b.x, _wgslsmith_mult_u32(global1.x, 14528u)), false), _wgslsmith_mod_vec2_u32(~vec2<u32>(0u, global1.x), func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, arg_0, -2167f, 322f))), 2147483647i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(arg_0, -224f)), _wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_f_op_f32(arg_0 + arg_0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -483f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 2026f) - vec3<f32>(1441f, 997f, arg_0))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, -1376f, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(1656f, arg_0, 867f) - vec3<f32>(arg_0, arg_0, arg_0)))))));
    var var_2 = any(select(vec4<bool>(!(arg_0 == var_1.x), !(!arg_1.c.a.x), arg_2.x, var_0.a.x), select(select(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), !vec4<bool>(arg_1.a.a.x, false, true, arg_2.x), vec4<bool>(false, arg_2.x, false, true)), !(!vec4<bool>(false, var_0.a.x, arg_2.x, true)), !(global3.x > global3.x)), any(select(vec3<bool>(arg_1.d, arg_2.x, false), vec3<bool>(true, arg_2.x, true), false)) & arg_1.a.a.x));
    return func_3(_wgslsmith_f_op_f32(round(1222f)), min(abs(u_input.a), ~(~(~vec2<u32>(44753u, 0u))))).b;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> f32 {
    global0 = array<vec2<u32>, 17>();
    global2 = array<vec2<bool>, 15>();
    global3 = firstTrailingBit(vec4<i32>(-1i) * -min(-arg_1.d, _wgslsmith_mult_vec4_i32(arg_2.a.d, arg_2.c.d)));
    global1 = ~(~select(~_wgslsmith_mod_vec2_u32(u_input.a, global0[_wgslsmith_index_u32(0u, 17u)]), abs(_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, 4294967295u), arg_2.b)), !(!vec2<bool>(false, arg_2.a.a.x))));
    global0 = array<vec2<u32>, 17>();
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-113f, -564f), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(192f))), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-910f, 749f))), false)), Struct_2(vec2<bool>(true, true), Struct_1(global3.yz), func_1(var_0.x, Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(global3.yy), Struct_1(vec2<i32>(global3.x, global3.x)), vec4<i32>(global3.x, global3.x, 2147483647i, global3.x)), u_input.a, Struct_2(global2[_wgslsmith_index_u32(global1.x, 15u)], Struct_1(vec2<i32>(13928i, global3.x)), Struct_1(global3.yx), vec4<i32>(-1i, -2147483647i, global3.x, 9963i)), true), global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<i32>(global3.x, global3.x, global3.x, global3.x)), Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.d.x, 15u)], Struct_1(global3.xx), Struct_1(global3.yw), vec4<i32>(global3.x, global3.x, global3.x, 28783i)), vec2<u32>(u_input.a.x, 8199u), func_3(1606f, vec2<u32>(global1.x, global1.x)), true), select(global3.x, 2147483647i, false) ^ global3.x)) - var_0.x));
    var var_2 = !all(vec3<bool>(true, true, true));
    var_2 = select(func_3(_wgslsmith_f_op_f32(-753f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -234f) * _wgslsmith_f_op_f32(var_1 - var_1))), ~(~vec2<u32>(global1.x, u_input.d.x) | ~vec2<u32>(4294967295u, 0u))).a.x, !any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false)) && (true & all(vec4<bool>(true, true, true, true))), true);
    let var_3 = !(!global2[_wgslsmith_index_u32(0u, 15u)]);
    var var_4 = vec4<bool>(any(vec4<bool>(all(vec3<bool>(var_3.x, false, false)) | any(vec2<bool>(var_3.x, var_3.x)), false, var_3.x, true)), !((var_3.x || all(vec4<bool>(false, var_3.x, var_3.x, false))) | true), !(!(-121f == _wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), var_3.x);
    let var_5 = -global3.x;
    var var_6 = reverseBits(vec4<u32>(~87184u, _wgslsmith_sub_u32(u_input.c.x, 4294967295u), max(~(u_input.a.x << (u_input.b % 32u)), ~(~u_input.a.x)), _wgslsmith_mod_u32(73493u, abs(1u))));
    let x = u_input.a;
    s_output = StorageBuffer(6871u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1342f, 276f, -387f, var_0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-879f, 2251f, var_0.x, 1485f) * vec4<f32>(var_0.x, var_0.x, -1251f, -1000f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, var_1, 357f) - vec4<f32>(var_1, var_0.x, -1760f, -1565f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -441f, -918f, -1419f) + vec4<f32>(625f, var_1, var_1, -967f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(593f, var_1, var_1, var_1))))));
}

