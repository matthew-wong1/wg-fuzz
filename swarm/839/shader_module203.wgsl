struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(0u, 0u, 50877u), vec3<u32>(4294967295u, 3039u, 32709u), vec3<u32>(49058u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 49889u), vec3<u32>(12876u, 28782u, 1u), vec3<u32>(53511u, 64455u, 46904u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(23060u, 49139u, 3049u), vec3<u32>(4294967295u, 43150u, 1u), vec3<u32>(8802u, 0u, 93583u), vec3<u32>(61158u, 54474u, 1u), vec3<u32>(4294967295u, 41232u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 21721u, 0u), vec3<u32>(64190u, 20774u, 0u), vec3<u32>(1u, 4294967295u, 41982u), vec3<u32>(0u, 33409u, 0u), vec3<u32>(25844u, 4294967295u, 30520u), vec3<u32>(11119u, 0u, 25363u), vec3<u32>(7461u, 1u, 1u), vec3<u32>(39220u, 49318u, 4294967295u), vec3<u32>(59843u, 105516u, 4294967295u), vec3<u32>(24709u, 103113u, 20885u), vec3<u32>(57573u, 1u, 1u), vec3<u32>(1474u, 1913u, 36272u));

var<private> global2: vec3<u32>;

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 71850u, 31719u);

var<private> global4: f32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    return select(select(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(27312i == u_input.d, true, false, any(vec4<bool>(true, true, true, true)))), vec4<bool>((4294967295u <= global2.x) & true, false, !all(vec3<bool>(false, true, true)), false)), !select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), _wgslsmith_f_op_f32(floor(1294f)) == 481f), select(select(vec4<bool>(true, u_input.a.x < 1u, true, all(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(false, false, any(vec3<bool>(true, false, true)), true), false), true));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = global3.yz;
    global2 = reverseBits(countOneBits(abs(reverseBits(_wgslsmith_mult_vec3_u32(global1[_wgslsmith_index_u32(arg_1, 25u)], global1[_wgslsmith_index_u32(1u, 25u)])))));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(545f * -750f), _wgslsmith_f_op_f32(f32(-1f) * -865f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1980f - _wgslsmith_f_op_f32(1629f + 506f)) * -338f)));
    global2 = vec3<u32>(6320u, 4294967295u, 1u);
    let var_1 = vec4<bool>(any(select(vec4<bool>(false, all(vec3<bool>(arg_0, arg_0, arg_0)), true, u_input.d == -22908i), !vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(!arg_0, true, true, true))), arg_0, !(!all(func_3())), arg_0);
    return Struct_1(1u, ~(~(abs(vec2<u32>(0u, 4294967295u)) >> (global2.xx % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(-305f)), _wgslsmith_f_op_f32(f32(-1f) * -1713f), _wgslsmith_f_op_f32(abs(-1386f)), -1121f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1645f, 539f, -1350f, -570f)))), countOneBits(~vec3<u32>(~0u, arg_1, ~14790u)), global1[_wgslsmith_index_u32(~(~abs(1u << (var_0.x % 32u))), 25u)]);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3.c - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_3.c, vec4<f32>(-1500f, 727f, arg_3.c.x, -1337f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.c.x * arg_3.c.x))), _wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(arg_3.c.x + arg_3.c.x), true)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-2060f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), 1096f) + arg_3.c.xyw);
    var var_2 = func_2(true, firstTrailingBit(~(~(~arg_1.x))), _wgslsmith_add_u32(abs(1u), arg_3.d.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1410f, _wgslsmith_f_op_f32(abs(-464f)))));
    global3 = arg_3.d;
    return arg_1.x;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    global2 = vec3<u32>(~(_wgslsmith_mod_u32(abs(1u), arg_2.a.x) ^ _wgslsmith_sub_u32(firstTrailingBit(6918u), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 24036u, arg_2.a.x, global2.x), vec4<u32>(1u, arg_2.a.x, u_input.a.x, 1u)))), arg_1, _wgslsmith_sub_u32(1u, u_input.a.x));
    global1 = array<vec3<u32>, 25>();
    let var_0 = ~184i;
    global2 = vec3<u32>(34154u, 4294967295u, ~1u);
    var var_1 = arg_2.b.a.zxy;
    return Struct_3(vec3<u32>(~_wgslsmith_dot_vec2_u32(global3.zx, vec2<u32>(global3.x, 60714u)), ~(~arg_2.a.x) | ~0u, ~func_4(countOneBits(u_input.b.wx), vec2<u32>(global3.x, arg_1), arg_0, func_2(false, global3.x, arg_0))), global0[_wgslsmith_index_u32(0u, 1u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.c.x - arg_2.c.x), _wgslsmith_f_op_f32(arg_2.c.x + -894f), arg_2.c.x, -681f))));
}

fn func_5(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = Struct_4(func_1(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c.x, global2.x), global2.x), arg_0.x, arg_2), u_input.d);
    let var_1 = var_0.a.c.x;
    global0 = array<Struct_2, 1>();
    var var_2 = Struct_1(1u, max(abs(vec2<u32>(abs(4294967295u), _wgslsmith_div_u32(11629u, arg_2.a.x))), ~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, 39019u), global2.xx))), _wgslsmith_f_op_vec4_f32(-var_0.a.c), firstLeadingBit(~_wgslsmith_mult_vec3_u32(var_0.a.a, var_0.a.a) >> ((_wgslsmith_div_vec3_u32(vec3<u32>(86776u, arg_0.x, 34028u), vec3<u32>(17572u, global2.x, arg_0.x)) | vec3<u32>(64089u, arg_0.x, global3.x)) % vec3<u32>(32u))), abs(arg_2.a));
    let var_3 = Struct_1(~(~0u), _wgslsmith_add_vec2_u32(reverseBits(func_1(1u, u_input.c.x, arg_2).a.yz ^ (vec2<u32>(arg_2.a.x, arg_1) << (vec2<u32>(var_2.e.x, 0u) % vec2<u32>(32u)))), ~(global3.yy & vec2<u32>(4294967295u, global3.x)) & vec2<u32>(reverseBits(global3.x), 4294967295u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, var_0.a.c.x, 1009f, arg_2.c.x))), func_2(arg_2.b.a.x | arg_2.b.a.x, 1u, max(global2.x, 0u)).c))), ~arg_2.a, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.a.x, _wgslsmith_add_u32(var_0.a.a.x, _wgslsmith_sub_u32(arg_0.x, global3.x)), ~(~4294967295u)), _wgslsmith_mult_vec3_u32(var_0.a.a, var_0.a.a)));
    return arg_2.b.a.zyx;
}

fn func_6(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: bool) -> u32 {
    let var_0 = !(any(func_3().xw) && false);
    var var_1 = func_4(~u_input.b.xz, arg_0.a.zy, _wgslsmith_mult_u32(4675u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(global3.x, global2.x, 4294967295u), global3.x), ~(vec2<u32>(4294967295u, 41562u) ^ vec2<u32>(0u, arg_0.a.x)))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(20277u, u_input.c.x), global2.x, ~1u), ~firstTrailingBit(vec3<u32>(48878u, 1u, global2.x))), ~func_2(!arg_0.b.a.x, reverseBits(global3.x), ~29816u).d.xx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c)), vec3<u32>(13369u, _wgslsmith_sub_u32(global2.x, global3.x), ~global3.x) ^ vec3<u32>(arg_0.a.x, 4294967295u, arg_0.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(arg_0.a.x, arg_0.a.x, 0u), global2.x | global3.x, 4294967295u ^ arg_0.a.x), _wgslsmith_add_vec3_u32(~arg_0.a, reverseBits(vec3<u32>(global3.x, 22049u, 19290u))))));
    global3 = _wgslsmith_sub_vec3_u32(~arg_0.a, _wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 25u)], ~vec3<u32>(arg_0.a.x, 31383u, 4294967295u) << (global1[_wgslsmith_index_u32(countOneBits(firstLeadingBit(60842u)), 25u)] % vec3<u32>(32u))));
    global3 = vec3<u32>(global3.x, ~abs(0u), 5996u) ^ global1[_wgslsmith_index_u32(4294967295u, 25u)];
    var_1 = firstTrailingBit(u_input.a.x);
    return abs(40966u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec3<u32>(max(global3.x, ~_wgslsmith_add_u32(43523u, 63058u)), 1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.x, global3.x, global3.x) ^ vec4<u32>(global3.x, u_input.c.x, global2.x, global2.x), vec4<u32>(7714u, 703u, u_input.a.x, u_input.c.x)), 62313u)), global0[_wgslsmith_index_u32(func_6(Struct_3(vec3<u32>(~34992u, 0u, 57325u), Struct_2(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1856f, -2104f, 517f, 167f), vec4<f32>(1082f, -603f, 224f, -496f)))), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), func_5(vec4<u32>(1u, global2.x, u_input.a.x, global2.x) | vec4<u32>(1u, 20328u, 10350u, 0u), 4294967295u, func_1(4294967295u, 85435u, Struct_3(global1[_wgslsmith_index_u32(1u, 25u)], Struct_2(vec4<bool>(false, false, false, false)), vec4<f32>(-1633f, 475f, 1665f, -600f)))), vec3<bool>(true, true, false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(447f, 884f, -1065f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1317f, 1756f, 1123f) + vec3<f32>(-340f, -213f, -248f)))), true), 1u)], vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1698f))) + _wgslsmith_f_op_f32(-1000f * -485f)), 581f, _wgslsmith_f_op_f32(106f + _wgslsmith_f_op_f32(1584f * _wgslsmith_f_op_f32(f32(-1f) * -901f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(153f)) + _wgslsmith_f_op_f32(857f * _wgslsmith_f_op_f32(sign(-394f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, 671f))));
    var var_2 = _wgslsmith_f_op_f32(-var_0.c.x);
    var_0 = func_1(min(_wgslsmith_clamp_u32(_wgslsmith_add_u32(select(1u, 11166u, false), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, 16284u), var_0.a)), _wgslsmith_sub_u32(var_0.a.x, global2.x) ^ ~1u, 4294967295u), ~1u), (~50150u >> (_wgslsmith_dot_vec3_u32(func_1(global3.x, global3.x, Struct_3(vec3<u32>(global3.x, 10769u, var_0.a.x), global0[_wgslsmith_index_u32(0u, 1u)], var_0.c)).a, select(vec3<u32>(global3.x, global2.x, global3.x), vec3<u32>(global2.x, u_input.c.x, u_input.a.x), var_0.b.a.x)) % 32u)) ^ _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(43119u, 59000u, 0u, 4294967295u), vec4<u32>(global2.x, 1u, global3.x, global3.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 17857u, 0u) >> (var_0.a % vec3<u32>(32u)), vec3<u32>(4294967295u, global3.x, global3.x) & var_0.a)), func_1(1u, countOneBits(var_0.a.x), Struct_3(vec3<u32>(~59698u, 1u, abs(global3.x)), Struct_2(!var_0.b.a), var_0.c)));
    global4 = _wgslsmith_f_op_f32(-var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(global2.x);
}

