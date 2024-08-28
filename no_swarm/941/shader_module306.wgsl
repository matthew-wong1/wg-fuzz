struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(880f, 868f, vec4<f32>(1000f, -838f, 2571f, -754f), Struct_1(0u, -423f, vec2<u32>(4294967295u, 1u), vec3<u32>(7249u, 56858u, 4294967295u)));

var<private> global2: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(4294967295u, 36536u, 49016u, 0u), vec4<u32>(39688u, 4294967295u, 4921u, 1u), vec4<u32>(26657u, 4294967295u, 4294967295u, 15266u), vec4<u32>(567u, 1u, 1u, 1450u), vec4<u32>(0u, 6295u, 4294967295u, 17702u), vec4<u32>(4294967295u, 7846u, 49309u, 1u));

var<private> global3: array<Struct_5, 12> = array<Struct_5, 12>(Struct_5(vec4<i32>(27323i, i32(-2147483648), 0i, 43385i), vec2<i32>(1i, i32(-2147483648)), Struct_2(2327f, 536f, vec4<f32>(-1000f, 1150f, -242f, 640f), Struct_1(0u, -1000f, vec2<u32>(12648u, 11539u), vec3<u32>(68373u, 88392u, 9492u)))), Struct_5(vec4<i32>(i32(-2147483648), -51006i, 45067i, 18648i), vec2<i32>(-1i, 18527i), Struct_2(467f, -543f, vec4<f32>(-746f, -1302f, -512f, -1361f), Struct_1(4294967295u, -173f, vec2<u32>(38814u, 0u), vec3<u32>(1u, 0u, 0u)))), Struct_5(vec4<i32>(1i, 0i, 0i, -1i), vec2<i32>(-33270i, 2147483647i), Struct_2(2233f, -1439f, vec4<f32>(454f, -340f, 115f, 563f), Struct_1(32198u, 1116f, vec2<u32>(24389u, 26334u), vec3<u32>(0u, 0u, 0u)))), Struct_5(vec4<i32>(1i, 1i, 1i, 2147483647i), vec2<i32>(2147483647i, -55485i), Struct_2(-117f, -555f, vec4<f32>(-488f, 976f, -137f, -524f), Struct_1(0u, 3241f, vec2<u32>(1u, 8342u), vec3<u32>(78041u, 0u, 1u)))), Struct_5(vec4<i32>(12782i, 0i, 0i, 1i), vec2<i32>(-1i, 38246i), Struct_2(-704f, -1398f, vec4<f32>(-188f, -1348f, -674f, 1030f), Struct_1(33723u, -1262f, vec2<u32>(4294967295u, 1u), vec3<u32>(1u, 4294967295u, 86133u)))), Struct_5(vec4<i32>(14405i, i32(-2147483648), -62730i, 23400i), vec2<i32>(26960i, 1i), Struct_2(-715f, -298f, vec4<f32>(-259f, 249f, 1004f, 1352f), Struct_1(79263u, 1296f, vec2<u32>(0u, 1u), vec3<u32>(30502u, 1u, 1u)))), Struct_5(vec4<i32>(1i, 2147483647i, -1i, -84615i), vec2<i32>(1i, -1i), Struct_2(563f, 913f, vec4<f32>(-1355f, -421f, 161f, 684f), Struct_1(57095u, 554f, vec2<u32>(68820u, 1u), vec3<u32>(4294967295u, 69148u, 33882u)))), Struct_5(vec4<i32>(-4520i, 5393i, 1i, i32(-2147483648)), vec2<i32>(3162i, 8273i), Struct_2(153f, 2002f, vec4<f32>(825f, -318f, 1212f, 139f), Struct_1(29145u, 328f, vec2<u32>(104328u, 0u), vec3<u32>(1u, 43734u, 13729u)))), Struct_5(vec4<i32>(-1i, -11485i, -26543i, 1i), vec2<i32>(-73247i, 0i), Struct_2(-2251f, -1188f, vec4<f32>(-1558f, 1084f, 1096f, -267f), Struct_1(51585u, -240f, vec2<u32>(1u, 0u), vec3<u32>(34544u, 4294967295u, 65936u)))), Struct_5(vec4<i32>(9453i, 0i, i32(-2147483648), i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_2(1000f, 1427f, vec4<f32>(2455f, 479f, 1205f, 1000f), Struct_1(4294967295u, 214f, vec2<u32>(1u, 64754u), vec3<u32>(82516u, 28829u, 1u)))), Struct_5(vec4<i32>(2147483647i, 1i, i32(-2147483648), 1i), vec2<i32>(35256i, i32(-2147483648)), Struct_2(-181f, -1166f, vec4<f32>(-468f, -1731f, 1025f, -449f), Struct_1(1u, -349f, vec2<u32>(0u, 0u), vec3<u32>(0u, 1u, 1u)))), Struct_5(vec4<i32>(0i, -37759i, -12900i, -18809i), vec2<i32>(27731i, -28259i), Struct_2(-976f, 112f, vec4<f32>(-350f, 940f, -2118f, 1000f), Struct_1(0u, 320f, vec2<u32>(0u, 1u), vec3<u32>(12928u, 1u, 49819u)))));

var<private> global4: array<i32, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_5, arg_1: vec4<bool>) -> vec4<i32> {
    var var_0 = 1u;
    var var_1 = global2[_wgslsmith_index_u32(abs(arg_0.c.d.c.x), 6u)];
    let var_2 = arg_0.c.d.d;
    let var_3 = arg_0.c;
    global1 = var_3;
    return arg_0.a;
}

fn func_3() -> f32 {
    var var_0 = vec2<bool>(true, any(vec2<bool>(true, true)));
    var var_1 = global4[_wgslsmith_index_u32(~27899u, 16u)];
    var_1 = -1i;
    var var_2 = var_0.x;
    var var_3 = vec3<bool>(true, !var_0.x, true);
    return 1000f;
}

fn func_1() -> Struct_4 {
    var var_0 = -_wgslsmith_add_vec4_i32(~abs(func_2(global3[_wgslsmith_index_u32(global1.d.a, 12u)], vec4<bool>(true, false, true, true))), _wgslsmith_add_vec4_i32(~(~vec4<i32>(12573i, global4[_wgslsmith_index_u32(4294967295u, 16u)], -4622i, global4[_wgslsmith_index_u32(4294967295u, 16u)])), ~vec4<i32>(global4[_wgslsmith_index_u32(u_input.a, 16u)], global4[_wgslsmith_index_u32(35247u, 16u)], -4616i, global4[_wgslsmith_index_u32(4294967295u, 16u)]) ^ ~vec4<i32>(-25299i, 15427i, 2147483647i, global4[_wgslsmith_index_u32(31509u, 16u)])));
    let var_1 = ~u_input.b;
    global0 = var_0.x;
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(func_3()), global1.d.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, -466f, global1.a, -1000f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.c + global1.c), vec4<f32>(global1.b, 219f, 327f, global1.d.b), select(false, true, true))), true)), Struct_1(4294967295u, global1.a, vec2<u32>(var_1 | global1.d.a, abs(global1.d.d.x)), min(vec3<u32>(u_input.a, 1u, 45306u), vec3<u32>(var_1, 4294967295u, 4294967295u) ^ vec3<u32>(var_1, 57871u, u_input.b)))));
    var var_3 = ((~(global1.d.d & global1.d.d) & _wgslsmith_clamp_vec3_u32(~var_2.a.d.d, _wgslsmith_clamp_vec3_u32(var_2.a.d.d, vec3<u32>(var_1, var_2.a.d.d.x, 50248u), vec3<u32>(global1.d.d.x, global1.d.d.x, 0u)), firstLeadingBit(vec3<u32>(79739u, var_1, u_input.b)))) ^ vec3<u32>(1u, 1u, 1u)) ^ global1.d.d;
    return Struct_4(Struct_2(447f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) * global1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-751f, _wgslsmith_f_op_f32(max(-1269f, -1419f)), global1.d.b, _wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-824f, global1.a, global1.c.x, var_2.a.d.b))), global1.d));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_div_u32(u_input.b, 0u), arg_1.a.a, ~(~global1.d.c), ~vec3<u32>(arg_0, arg_1.a.d.a, ~abs(1u)));
    var var_1 = _wgslsmith_dot_vec3_i32(max(-_wgslsmith_add_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(1u, 16u)], global4[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)]), vec3<i32>(global4[_wgslsmith_index_u32(1u, 16u)], global4[_wgslsmith_index_u32(u_input.b, 16u)], global4[_wgslsmith_index_u32(var_0.c.x, 16u)])), firstLeadingBit(max(vec3<i32>(global4[_wgslsmith_index_u32(global1.d.c.x, 16u)], 0i, -1i), vec3<i32>(-49091i, 2147483647i, 32530i)))), vec3<i32>(select(global4[_wgslsmith_index_u32(var_0.c.x, 16u)], -54161i, true), 1i, global4[_wgslsmith_index_u32(1u, 16u)])) >= abs(_wgslsmith_mod_i32(-global4[_wgslsmith_index_u32(43961u, 16u)] & global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.a, 83302u), var_0.c), 16u)], firstLeadingBit(2147483647i)));
    var_1 = true;
    let var_2 = arg_1;
    var var_3 = Struct_2(516f, var_0.b, var_2.a.c, var_2.a.d);
    return global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.a.d.a, ~(~var_2.a.d.a)), 16u)];
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> Struct_3 {
    global2 = array<vec4<u32>, 6>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-221f, arg_2, 606f) * _wgslsmith_f_op_vec3_f32(-global1.c.zxy))) + global1.c.yzw));
    var var_1 = func_1();
    var var_2 = func_1();
    let var_3 = true;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 16>();
    var var_0 = global1.d.c.x;
    let var_1 = -2298f;
    let var_2 = func_5(min(0u, ~81962u), Struct_3(func_4(4294967295u, func_1(), firstLeadingBit(107879u)), ~(-26207i), 331f, 256f), _wgslsmith_f_op_f32(f32(-1f) * -2202f));
    var var_3 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(~func_1().a.d.c.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c * vec4<f32>(var_2.d, var_1, -793f, -404f)) + _wgslsmith_f_op_vec4_f32(-global1.c)))), vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(130f, -882f)), global1.a, _wgslsmith_f_op_f32(trunc(-532f))))), global4[_wgslsmith_index_u32(u_input.b, 16u)], _wgslsmith_f_op_vec4_f32(-global1.c), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.d.c.x, 25107u), max(vec3<u32>(u_input.b, global1.d.c.x, global1.d.d.x), vec3<u32>(global1.d.c.x, global1.d.d.x, u_input.a)))));
}

