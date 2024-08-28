struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, false, true, false, false, true, false, true, false, false, true, false, true, true, false, true, true, true, true, false, false, true, true, true, false, true);

var<private> global1: array<Struct_1, 18>;

var<private> global2: f32 = 1520f;

var<private> global3: array<f32, 21> = array<f32, 21>(-719f, 232f, 596f, -446f, -955f, 1000f, -901f, 1666f, 275f, 803f, 798f, -110f, 225f, 208f, 547f, -1787f, 838f, 287f, 160f, 1000f, 416f);

var<private> global4: array<bool, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = 0u ^ (_wgslsmith_dot_vec4_u32(select(~vec4<u32>(43507u, 4294967295u, 1u, 7819u), ~vec4<u32>(4294967295u, 0u, 28240u, 0u), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 26u)], true)), ~(~vec4<u32>(29931u, 3419u, 30962u, 1u))) << (1u % 32u));
    return all(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(51182u, 26u)], !global4[_wgslsmith_index_u32(var_0, 18u)], false), !(!vec4<bool>(global4[_wgslsmith_index_u32(var_0, 18u)], global4[_wgslsmith_index_u32(var_0, 18u)], global0[_wgslsmith_index_u32(var_0, 26u)], global4[_wgslsmith_index_u32(var_0, 18u)])), false), vec4<bool>(!(!global0[_wgslsmith_index_u32(var_0, 26u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 33375u), vec3<u32>(var_0, 32030u, var_0))), 26u)], false, true), vec4<bool>(!any(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 26u)], global4[_wgslsmith_index_u32(0u, 18u)], false)), any(vec4<bool>(false, global4[_wgslsmith_index_u32(var_0, 18u)], false, global0[_wgslsmith_index_u32(4294967295u, 26u)])), global0[_wgslsmith_index_u32(var_0, 26u)], global4[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0, _wgslsmith_mod_u32(var_0, 61970u)), 18u)])));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(vec3<bool>((u_input.b.x != firstTrailingBit(u_input.b.x)) & select(true, global0[_wgslsmith_index_u32(1u, 26u)], true), func_3(), true), Struct_2(global1[_wgslsmith_index_u32(~(~countOneBits(22539u)), 18u)], -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-3229f * global3[_wgslsmith_index_u32(97503u, 21u)]), -613f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(330f)), _wgslsmith_f_op_f32(ceil(481f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(307f + global3[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(41477u, 21u)])) - global3[_wgslsmith_index_u32(4294967295u, 21u)])))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-829f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-683f - global3[_wgslsmith_index_u32(var_0.b.a.b.x, 21u)])))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(104f - _wgslsmith_f_op_f32(-var_0.b.a.a.x)))))));
    var var_1 = ~_wgslsmith_div_vec2_u32(var_0.b.a.b.yy, _wgslsmith_sub_vec2_u32(~var_0.b.a.b.xy >> (vec2<u32>(var_0.b.a.b.x, var_0.b.a.b.x) % vec2<u32>(32u)), vec2<u32>(var_0.b.a.b.x, select(23228u, var_0.b.a.b.x, true))));
    let var_2 = -1i;
    let var_3 = abs(~firstTrailingBit(~(~vec4<u32>(0u, var_1.x, var_0.b.a.b.x, var_0.b.a.b.x))));
    return var_0.b;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = !(!arg_1.a.x);
    let var_1 = 4294967295u;
    var var_2 = 1u;
    let var_3 = vec2<f32>(839f, 1770f);
    global4 = array<bool, 18>();
    return arg_1.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = arg_0.a.a.x;
    var_0 = 918f;
    global3 = array<f32, 21>();
    global3 = array<f32, 21>();
    var var_1 = arg_0.a.a.wwz;
    return Struct_1(func_4(-1419f, Struct_3(!arg_0.a.c, func_4(_wgslsmith_f_op_f32(var_1.x * global3[_wgslsmith_index_u32(arg_2.x, 21u)]), Struct_3(arg_0.a.c, Struct_2(global1[_wgslsmith_index_u32(arg_0.a.b.x, 18u)], var_1.x), arg_0.b), arg_1.x, Struct_3(vec3<bool>(false, true, false), Struct_2(Struct_1(arg_0.a.a, arg_2, arg_0.a.c, false), global3[_wgslsmith_index_u32(arg_0.a.b.x, 21u)]), 620f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(950f)))), 1u, Struct_3(vec3<bool>(arg_0.a.d, true, true), func_2(), arg_0.a.a.x)).a.a, vec3<u32>(~(~_wgslsmith_sub_u32(arg_2.x, 28005u)), ~arg_2.x, arg_2.x), arg_0.a.c, all(vec4<bool>(!(arg_0.a.d && global0[_wgslsmith_index_u32(arg_1.x, 26u)]), true, true, !(!global0[_wgslsmith_index_u32(arg_3, 26u)]))));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-141f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 21u)] + global3[_wgslsmith_index_u32(4294967295u, 21u)]))))))));
    var var_1 = func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-591f * -488f))), Struct_3(!vec3<bool>(global0[_wgslsmith_index_u32(38194u, 26u)], global4[_wgslsmith_index_u32(4294967295u, 18u)], global4[_wgslsmith_index_u32(4294967295u, 18u)]), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(30437u, 21u)])))), _wgslsmith_add_u32(~51143u, firstTrailingBit(32854u)) >> (~_wgslsmith_div_u32(4294967295u, 14457u) % 32u), Struct_3(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(6109u, 26u)], false), vec3<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 18u)], true), vec3<bool>(true, global4[_wgslsmith_index_u32(1u, 18u)], true)), vec3<bool>(true, true, true), !global4[_wgslsmith_index_u32(67946u, 18u)]), func_2(), _wgslsmith_f_op_f32(-1219f - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 21u)])))), vec3<u32>(_wgslsmith_div_u32(~19146u << (0u % 32u), ~1u), ~(~(~4294967295u)), _wgslsmith_mod_u32(~countOneBits(51153u), 51024u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, ~0u, min(1u, 0u)), func_4(-688f, Struct_3(vec3<bool>(false, global4[_wgslsmith_index_u32(55316u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]), Struct_2(Struct_1(vec4<f32>(1000f, 542f, 1582f, global3[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<u32>(43245u, 20729u, 4294967295u), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 18u)], false, true), global4[_wgslsmith_index_u32(0u, 18u)]), global3[_wgslsmith_index_u32(10079u, 21u)]), 1181f), 0u, Struct_3(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 26u)], true), Struct_2(Struct_1(vec4<f32>(-804f, global3[_wgslsmith_index_u32(4137u, 21u)], global3[_wgslsmith_index_u32(58852u, 21u)], -726f), vec3<u32>(0u, 26778u, 29532u), vec3<bool>(false, true, global4[_wgslsmith_index_u32(31168u, 18u)]), false), global3[_wgslsmith_index_u32(4294967295u, 21u)]), 432f)).a.b | vec3<u32>(1u, 18518u, 6300u)), min(4294967295u, ~4294967295u));
    let var_2 = 8848u;
    var var_3 = Struct_4(u_input.b.wyw, ~(~vec3<u32>(_wgslsmith_div_u32(var_1.b.x, 61993u), 13313u << (var_1.b.x % 32u), var_2)), func_3());
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(var_1.a.zwx));
    return StorageBuffer(var_3.b.yy, var_3.a.x, _wgslsmith_div_i32(abs(-1i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(min(var_3.a, u_input.b.yyz), abs(vec3<i32>(-1i, 22872i, var_3.a.x))), ~reverseBits(vec3<i32>(-1i, 24889i, u_input.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2875f, 2368f, var_1.a.x, _wgslsmith_f_op_f32(1000f - 191f)) - var_1.a)), _wgslsmith_f_op_vec4_f32(floor(var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

