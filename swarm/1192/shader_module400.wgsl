struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-591f, -510f, -1000f, 619f), vec4<f32>(-481f, -516f, -659f, -881f), vec4<f32>(-726f, 1196f, 1000f, 717f), vec4<f32>(2090f, -189f, 536f, 240f), vec4<f32>(-147f, 1000f, -1000f, -1034f), vec4<f32>(-1250f, -1000f, 704f, 1237f), vec4<f32>(489f, 2256f, 375f, -2003f), vec4<f32>(-618f, -905f, -391f, 559f), vec4<f32>(-178f, 792f, 1546f, 270f), vec4<f32>(1393f, -575f, -296f, 696f), vec4<f32>(411f, 1628f, -933f, 1119f), vec4<f32>(526f, 1068f, -1330f, 288f), vec4<f32>(695f, 1000f, 1000f, 586f), vec4<f32>(-1345f, -881f, -739f, -177f), vec4<f32>(1000f, 1082f, -711f, 323f), vec4<f32>(233f, -166f, 1442f, 227f), vec4<f32>(449f, -305f, 712f, -1910f), vec4<f32>(172f, 2013f, 671f, 771f), vec4<f32>(788f, 241f, -1034f, -857f), vec4<f32>(-904f, 257f, -1115f, -820f), vec4<f32>(1690f, -431f, 1139f, 1291f), vec4<f32>(692f, 1281f, 2404f, 645f), vec4<f32>(-313f, 250f, -1054f, -1133f), vec4<f32>(957f, 183f, -1804f, -1540f), vec4<f32>(543f, -558f, 879f, 951f), vec4<f32>(701f, -1250f, 412f, -1687f), vec4<f32>(-140f, -366f, -1763f, -564f), vec4<f32>(193f, 911f, -1104f, 853f));

var<private> global1: array<Struct_1, 1>;

var<private> global2: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_2(vec4<bool>(false, true, false, true), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec4<i32>(18167i, 0i, 0i, 20427i)), vec3<f32>(-920f, 456f, 290f)), Struct_3(Struct_2(vec4<bool>(false, true, false, true), vec3<i32>(1i, -10120i, 63924i), vec4<i32>(43235i, 1i, 0i, 2147483647i)), vec3<f32>(-1412f, 548f, -2578f)), Struct_3(Struct_2(vec4<bool>(true, false, false, true), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(1i, 1i, -9057i, -23264i)), vec3<f32>(200f, -113f, 169f)), Struct_3(Struct_2(vec4<bool>(false, false, true, true), vec3<i32>(-13434i, 12830i, -9895i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 7081i)), vec3<f32>(-778f, -783f, -1768f)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), vec3<i32>(-49218i, 60295i, -7413i), vec4<i32>(19332i, i32(-2147483648), 1i, -1i)), vec3<f32>(1474f, 670f, 501f)), Struct_3(Struct_2(vec4<bool>(true, true, true, true), vec3<i32>(-49150i, -24189i, -2585i), vec4<i32>(2147483647i, -19473i, -23945i, 2147483647i)), vec3<f32>(2375f, -407f, 158f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<vec4<f32>, 28>();
    global0 = array<vec4<f32>, 28>();
    let var_0 = u_input.a.x;
    global2 = array<Struct_3, 6>();
    let var_1 = !(621f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1024f)))) + -261f));
    return max(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(5847u, 0u, var_0, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0, 24067u, u_input.a.x) << (vec4<u32>(var_0, 83527u, 0u, var_0) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0, u_input.a.x, var_0, 40080u), vec4<u32>(4294967295u, var_0, u_input.a.x, 71582u)))), u_input.a.x), 12969u);
}

fn func_2() -> Struct_3 {
    var var_0 = func_3(global1[_wgslsmith_index_u32(u_input.a.x, 1u)]);
    global0 = array<vec4<f32>, 28>();
    var var_1 = Struct_3(Struct_2(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false)), u_input.c, min(abs(vec4<i32>(u_input.d.x, -49647i, 55791i, u_input.d.x)), -vec4<i32>(u_input.d.x, 28875i, u_input.b, u_input.c.x)) & (_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -5416i, 25054i, 0i), vec4<i32>(u_input.b, u_input.c.x, u_input.b, 1i)) << (abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(661f - -650f) * _wgslsmith_f_op_f32(ceil(951f)))), 320f, 764f));
    let var_2 = Struct_3(Struct_2(select(vec4<bool>(true, true, var_1.a.a.x, true), vec4<bool>(var_1.a.a.x, var_1.a.a.x, any(vec4<bool>(false, var_1.a.a.x, false, true)), var_1.a.a.x), !(true | var_1.a.a.x)), vec3<i32>(-1i, u_input.b, var_1.a.b.x), -vec4<i32>(-1i, -1i, 16106i, u_input.d.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(var_1.b)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1.b))))))));
    var var_3 = global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 7621u), u_input.a), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xy, u_input.a.yx), vec2<u32>(u_input.a.x, 13899u)))), 1u)];
    return Struct_3(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, -865f, var_2.b.x)) - _wgslsmith_f_op_vec3_f32(-var_1.b))));
}

fn func_1() -> u32 {
    let var_0 = func_2();
    global2 = array<Struct_3, 6>();
    let var_1 = Struct_3(Struct_2(var_0.a.a, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(22877i, var_0.a.c.x, -9101i), vec3<i32>(u_input.c.x, 0i, var_0.a.c.x)) >> (~16548u % 32u), -3691i, (var_0.a.c.x | 7719i) & u_input.b), var_0.a.c), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.b.x, 587f, true)), 1015f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1527f, 153f)))))));
    let var_2 = var_1.a;
    let var_3 = func_2().a;
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_1, 1>();
    let var_1 = u_input.c.x;
    global0 = array<vec4<f32>, 28>();
    var var_2 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(-1527f, ~vec3<u32>(reverseBits(firstLeadingBit(var_0)), 37899u, 0u), 2089f, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-639f, -534f, -1829f, 791f))) + global0[_wgslsmith_index_u32(countOneBits(7828u), 28u)]), global0[_wgslsmith_index_u32(abs(1u), 28u)]))), 51445i);
}

