struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(true, Struct_2(vec4<f32>(519f, 776f, -361f, 840f), vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec2<bool>(true, false), 41989u, vec2<bool>(false, true)))), Struct_4(true, Struct_2(vec4<f32>(535f, -819f, -643f, -1602f), vec4<bool>(false, false, false, true)), Struct_3(Struct_1(vec2<bool>(true, true), 22332u, vec2<bool>(false, false)))), Struct_4(false, Struct_2(vec4<f32>(-229f, -1000f, -1002f, -282f), vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec2<bool>(false, true), 3677u, vec2<bool>(true, true)))), Struct_4(true, Struct_2(vec4<f32>(552f, -354f, -860f, 970f), vec4<bool>(false, true, true, true)), Struct_3(Struct_1(vec2<bool>(false, true), 13110u, vec2<bool>(true, false)))), Struct_4(false, Struct_2(vec4<f32>(272f, -922f, -521f, 1528f), vec4<bool>(false, false, true, true)), Struct_3(Struct_1(vec2<bool>(false, true), 1u, vec2<bool>(false, false)))), Struct_4(true, Struct_2(vec4<f32>(-1526f, -690f, 1623f, -894f), vec4<bool>(false, false, false, true)), Struct_3(Struct_1(vec2<bool>(true, false), 4294967295u, vec2<bool>(false, false)))), Struct_4(false, Struct_2(vec4<f32>(1573f, -888f, 132f, 1176f), vec4<bool>(true, false, true, false)), Struct_3(Struct_1(vec2<bool>(true, false), 0u, vec2<bool>(false, true)))), Struct_4(false, Struct_2(vec4<f32>(-432f, -1074f, 861f, 673f), vec4<bool>(true, false, true, true)), Struct_3(Struct_1(vec2<bool>(true, true), 0u, vec2<bool>(true, true)))), Struct_4(false, Struct_2(vec4<f32>(-1000f, -582f, -1482f, -718f), vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec2<bool>(false, true), 1u, vec2<bool>(false, false)))), Struct_4(true, Struct_2(vec4<f32>(-824f, -112f, 695f, 1738f), vec4<bool>(false, true, true, false)), Struct_3(Struct_1(vec2<bool>(true, true), 69096u, vec2<bool>(true, true)))), Struct_4(true, Struct_2(vec4<f32>(-522f, 619f, 884f, 670f), vec4<bool>(false, true, true, true)), Struct_3(Struct_1(vec2<bool>(true, true), 69269u, vec2<bool>(false, false)))), Struct_4(true, Struct_2(vec4<f32>(-748f, 1610f, -300f, 857f), vec4<bool>(true, true, false, true)), Struct_3(Struct_1(vec2<bool>(false, false), 1u, vec2<bool>(false, true)))), Struct_4(false, Struct_2(vec4<f32>(447f, 130f, -808f, -604f), vec4<bool>(true, false, false, false)), Struct_3(Struct_1(vec2<bool>(true, false), 1629u, vec2<bool>(false, true)))), Struct_4(true, Struct_2(vec4<f32>(-1685f, 1665f, -117f, -654f), vec4<bool>(true, true, false, true)), Struct_3(Struct_1(vec2<bool>(true, true), 0u, vec2<bool>(false, false)))), Struct_4(true, Struct_2(vec4<f32>(1314f, -312f, 1583f, -591f), vec4<bool>(true, true, true, false)), Struct_3(Struct_1(vec2<bool>(false, true), 21467u, vec2<bool>(false, true)))), Struct_4(true, Struct_2(vec4<f32>(-1111f, 1992f, -491f, 926f), vec4<bool>(false, true, true, false)), Struct_3(Struct_1(vec2<bool>(false, true), 38908u, vec2<bool>(true, true)))), Struct_4(false, Struct_2(vec4<f32>(560f, 1328f, -1124f, 104f), vec4<bool>(false, true, false, true)), Struct_3(Struct_1(vec2<bool>(true, false), 0u, vec2<bool>(false, false)))), Struct_4(false, Struct_2(vec4<f32>(-501f, -1312f, 652f, 878f), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec2<bool>(false, true), 23129u, vec2<bool>(true, false)))), Struct_4(false, Struct_2(vec4<f32>(-759f, 1026f, -862f, -326f), vec4<bool>(true, true, false, true)), Struct_3(Struct_1(vec2<bool>(true, true), 10665u, vec2<bool>(false, false)))), Struct_4(true, Struct_2(vec4<f32>(1108f, 224f, -551f, -253f), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec2<bool>(false, true), 4294967295u, vec2<bool>(true, true)))), Struct_4(false, Struct_2(vec4<f32>(-856f, -619f, 289f, 1195f), vec4<bool>(false, true, false, true)), Struct_3(Struct_1(vec2<bool>(true, false), 4294967295u, vec2<bool>(true, true)))), Struct_4(true, Struct_2(vec4<f32>(293f, 1265f, 113f, 1004f), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec2<bool>(false, false), 4294967295u, vec2<bool>(true, true)))), Struct_4(false, Struct_2(vec4<f32>(-281f, 1931f, -588f, -1103f), vec4<bool>(true, true, false, true)), Struct_3(Struct_1(vec2<bool>(false, false), 29531u, vec2<bool>(true, false)))), Struct_4(false, Struct_2(vec4<f32>(874f, 839f, 103f, 496f), vec4<bool>(true, false, false, false)), Struct_3(Struct_1(vec2<bool>(false, false), 1u, vec2<bool>(true, true)))), Struct_4(true, Struct_2(vec4<f32>(1238f, 1193f, 696f, -347f), vec4<bool>(false, true, true, true)), Struct_3(Struct_1(vec2<bool>(true, false), 4294967295u, vec2<bool>(true, false)))), Struct_4(false, Struct_2(vec4<f32>(1283f, -371f, 207f, -1785f), vec4<bool>(false, false, true, false)), Struct_3(Struct_1(vec2<bool>(false, false), 4294967295u, vec2<bool>(true, true)))), Struct_4(true, Struct_2(vec4<f32>(483f, -473f, 296f, 1000f), vec4<bool>(true, true, false, false)), Struct_3(Struct_1(vec2<bool>(false, true), 1u, vec2<bool>(true, false)))), Struct_4(true, Struct_2(vec4<f32>(-341f, 672f, -606f, 1181f), vec4<bool>(false, true, true, true)), Struct_3(Struct_1(vec2<bool>(true, true), 1u, vec2<bool>(true, true)))));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(~1u, 28u)];
    var var_1 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(~(~(~125731u)), 20811u, ~select(~72718u, _wgslsmith_mod_u32(var_0.c.a.b, var_0.c.a.b), arg_0.x)), var_0.c.a.b);
    global0 = array<Struct_4, 28>();
    let var_2 = abs(vec2<u32>(reverseBits(39170u << (var_0.c.a.b % 32u)) | var_0.c.a.b, _wgslsmith_add_u32(var_0.c.a.b, ~(~48638u))));
    var var_3 = var_0.b;
    return true;
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_4 {
    let var_0 = Struct_4(any(!(!(!vec3<bool>(true, false, arg_1)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(982f, -1202f, 653f, 338f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(736f, 186f, -1385f, 914f)))), !(!(!vec4<bool>(false, arg_1, arg_1, arg_1)))), Struct_3(Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(arg_1, arg_1), !arg_1), firstLeadingBit(~1u), !(!vec2<bool>(false, arg_1)))));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -613f)))), _wgslsmith_div_f32(var_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-861f, var_0.b.a.x))))));
    var var_3 = var_0.b.a.x;
    var_2 = -1000f;
    return Struct_4(func_3(!var_0.b.b.yxy), Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.b.a), var_0.b.b), var_0.c);
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: Struct_2) -> bool {
    let var_0 = max(vec4<i32>(-u_input.b.x, reverseBits(~firstLeadingBit(arg_1.x)), countOneBits(~reverseBits(u_input.b.x)), 0i >> (arg_2.c.a.b % 32u)), arg_1);
    var var_1 = 0u;
    var_1 = 4294967295u;
    global0 = array<Struct_4, 28>();
    global0 = array<Struct_4, 28>();
    return arg_3.b.x;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.x + 487f), _wgslsmith_f_op_f32(min(-1528f, -595f))))), _wgslsmith_f_op_f32(2917f - -1000f)) + arg_2.yx);
    global0 = array<Struct_4, 28>();
    global0 = array<Struct_4, 28>();
    global0 = array<Struct_4, 28>();
    global0 = array<Struct_4, 28>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 501f, _wgslsmith_div_f32(-558f, -341f), 613f))), arg_0.b);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec2<f32>) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-429f + arg_2.x), _wgslsmith_f_op_f32(floor(arg_2.x)), 252f);
    global0 = array<Struct_4, 28>();
    var var_1 = func_5(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1165f)), 1090f, _wgslsmith_f_op_f32(1000f * -1212f), arg_2.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(true, false)), arg_2.x < arg_2.x, true), func_4(_wgslsmith_f_op_f32(var_0.x * 897f), vec4<i32>(0i, 66142i, arg_0, -1i) ^ u_input.b, func_2(arg_1, true), func_2(arg_1, true).b))), Struct_5(func_2(arg_1 << ((arg_1 >> (37975u % 32u)) % 32u), func_2(1u, true).c.a.a.x || true).c.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, arg_2.x, -2323f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1181f, var_0.x, var_0.x)))))), false);
    var var_2 = !func_5(Struct_2(_wgslsmith_f_op_vec4_f32(-var_1.a), !var_1.b), Struct_5(func_2(1u, true).c.a), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) + _wgslsmith_f_op_f32(ceil(574f))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(step(var_1.a.x, 952f)))), var_1.b.x).b;
    var var_3 = func_2(~_wgslsmith_sub_u32(arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1, 75050u, arg_1) | vec4<u32>(54019u, 27630u, arg_1, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, 0u), vec4<u32>(arg_1, 1u, arg_1, arg_1)))), true || (~countOneBits(u_input.b.x) <= arg_0)).b.b;
    return ~(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(41183u, 28u)];
    var var_1 = global0[_wgslsmith_index_u32(~0u & var_0.c.a.b, 28u)];
    global0 = array<Struct_4, 28>();
    var_1 = global0[_wgslsmith_index_u32(func_1(25933i, _wgslsmith_mod_u32(~44492u, countOneBits(var_0.c.a.b)) ^ _wgslsmith_mod_u32(1u, var_1.c.a.b), _wgslsmith_f_op_vec2_f32(-var_1.b.a.wx)), 28u)];
    let var_2 = Struct_3(var_0.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(vec2<u32>(0u, 4294967295u))), _wgslsmith_f_op_f32(-var_1.b.a.x));
}

