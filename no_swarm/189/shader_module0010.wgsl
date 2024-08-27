struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-103f, -1678f, 542f, -369f), vec4<f32>(-1168f, -248f, -1034f, -1000f), vec4<f32>(1068f, 915f, 113f, -1387f), vec4<f32>(642f, 302f, 1682f, -721f), vec4<f32>(-1353f, 2010f, 566f, -127f), vec4<f32>(-1659f, 950f, -702f, 1000f), vec4<f32>(473f, -996f, -1558f, 454f), vec4<f32>(108f, -1172f, 691f, 829f));

var<private> global1: array<vec2<f32>, 27>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(0u, 0u, 59348u, 76995u), 105198u, vec2<bool>(true, false), vec4<bool>(true, true, true, true), vec4<f32>(-841f, -339f, -887f, 960f));

var<private> global3: Struct_2;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> bool {
    return true;
}

fn func_3() -> vec2<u32> {
    var var_0 = global3.a;
    global0 = array<vec4<f32>, 8>();
    global1 = array<vec2<f32>, 27>();
    global2 = global3.a;
    let var_1 = firstTrailingBit(-_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b.x ^ u_input.b.x, -global3.c.x), -u_input.c.x | _wgslsmith_dot_vec2_i32(u_input.c, u_input.c)));
    return ~(~var_0.a.yy | ~vec2<u32>(~1u, var_0.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> f32 {
    global2 = arg_0;
    let var_0 = true;
    let var_1 = -u_input.c.x;
    let var_2 = Struct_1(abs(arg_0.a), _wgslsmith_mod_u32(firstTrailingBit(firstLeadingBit(~1u)), _wgslsmith_mod_u32(arg_0.b, _wgslsmith_mult_u32(~23206u, 1u))), vec2<bool>(all(!global3.a.d.yyx), true), !global2.d, arg_0.e);
    global0 = array<vec4<f32>, 8>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.x + _wgslsmith_f_op_f32(-var_2.e.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.e.x - global2.e.x) + _wgslsmith_f_op_f32(select(1177f, 445f, true))), _wgslsmith_f_op_f32(global2.e.x - _wgslsmith_f_op_f32(sign(global3.b))), true))));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.e.x * _wgslsmith_f_op_f32(global2.e.x + global2.e.x))), _wgslsmith_f_op_f32(func_4(Struct_1(select(max(vec4<u32>(51121u, 13366u, 105189u, 0u), global2.a), min(u_input.d, u_input.d), global3.b == -1112f), 9541u, !select(global3.a.d.wy, vec2<bool>(global2.c.x, false), true), vec4<bool>(!global2.d.x, global3.a.d.x, true, true), global3.a.e), func_3(), firstLeadingBit(global3.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1209f - 1659f) * -492f), _wgslsmith_f_op_f32(318f - 575f), all(select(global2.c, vec2<bool>(global2.d.x, false), vec2<bool>(global2.c.x, true))))))), -464f);
    var var_1 = select(global3.a.d, select(global3.a.d, vec4<bool>(false, _wgslsmith_f_op_f32(sign(global3.e)) > _wgslsmith_f_op_f32(global2.e.x * global3.b), any(vec3<bool>(arg_0, false, true)), any(select(vec4<bool>(arg_0, arg_0, global3.a.d.x, true), global2.d, arg_0))), select(!select(global2.d, global2.d, global2.d), !global2.d, true)), arg_0);
    global3 = Struct_2(global3.a, -158f, min(vec3<i32>(global3.c.x, u_input.c.x, u_input.c.x), vec3<i32>(-global3.c.x, -(~(-29081i)), countOneBits(-45113i))), u_input.a.xy, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(22893u, 8u)]))))))), vec4<f32>(_wgslsmith_f_op_f32(abs(-1595f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - global2.e.x))), 328f, 120f)));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(914f)) - -708f), -654f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1017f * _wgslsmith_f_op_f32(f32(-1f) * -393f))), 1718f);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(u_input.d, ~countOneBits(vec4<u32>(global2.b, global3.a.b, 20280u, 119666u)), vec4<bool>(true, false, func_1(global3.a.e.x, Struct_1(vec4<u32>(52988u, 9786u, 0u, 59089u), 93519u, vec2<bool>(true, false), vec4<bool>(false, false, global3.a.d.x, global3.a.c.x), vec4<f32>(716f, -2904f, global2.e.x, global2.e.x))), true)), u_input.a.x | ~_wgslsmith_mult_u32(global2.b ^ global2.b, ~22368u), !vec2<bool>(func_2(select(false, global2.c.x, false)), false), !global2.d, global0[_wgslsmith_index_u32(~(reverseBits(33595u) ^ _wgslsmith_dot_vec2_u32(~global2.a.zx, ~vec2<u32>(83040u, global2.b))), 8u)]);
    var var_1 = !(!select(vec4<bool>(false, true, true, global3.a.c.x), select(vec4<bool>(global2.c.x, true, true, true), vec4<bool>(var_0.c.x, var_0.d.x, var_0.d.x, global3.a.c.x), select(var_0.d, vec4<bool>(false, global2.d.x, var_0.d.x, true), global3.a.c.x)), select(select(vec4<bool>(true, true, global2.c.x, global3.a.c.x), global3.a.d, var_0.c.x), global2.d, vec4<bool>(true, false, global2.c.x, false))));
    global0 = array<vec4<f32>, 8>();
    let var_2 = Struct_2(Struct_1(countOneBits(_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(var_0.b, global3.a.a.x, 49652u, global3.d.x), vec4<u32>(global3.d.x, global3.d.x, 57570u, u_input.a.x) ^ var_0.a)), 65809u, global2.c, vec4<bool>(!all(vec3<bool>(true, global3.a.c.x, var_0.d.x)), var_0.a.x >= 21767u, false, false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.e, global3.a.e.x, global3.e, global3.e), vec4<f32>(global3.a.e.x, 1013f, global3.a.e.x, var_0.e.x), var_0.d)))) - vec4<f32>(_wgslsmith_f_op_f32(-global3.b), global2.e.x, _wgslsmith_div_f32(global3.b, var_0.e.x), 1266f))), global2.e.x, vec3<i32>(-(-u_input.b.x | global3.c.x), -1i, _wgslsmith_add_i32(0i, -1i | u_input.c.x)), _wgslsmith_add_vec2_u32(~global2.a.zw, ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global3.d.x, u_input.a.x), vec2<u32>(65627u, global3.d.x), global3.a.a.xx))), -1161f);
    let var_3 = any(select(global3.a.d, select(vec4<bool>(1697u > var_0.b, true, !var_0.d.x, true), !vec4<bool>(true, true, false, var_2.a.c.x), !(!var_2.a.c.x)), !var_2.a.d.x));
    var var_4 = false;
    let var_5 = global3.c.x;
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-488f, _wgslsmith_mod_i32(~1i, _wgslsmith_mult_i32(-var_2.c.x, _wgslsmith_div_i32(_wgslsmith_add_i32(1i, -30749i), firstTrailingBit(global3.c.x)))), var_2.a.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.x)), var_2.a.e.x)));
}

