struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, false, true, false, false, false, true, false, true);

var<private> global1: array<f32, 19> = array<f32, 19>(910f, 267f, 877f, 618f, -487f, 804f, 1120f, 856f, -280f, -566f, -1662f, -1000f, 2166f, 1000f, -318f, -894f, 695f, 353f, 1200f);

var<private> global2: f32 = 106f;

var<private> global3: array<f32, 15> = array<f32, 15>(230f, -1024f, -1000f, 1022f, 371f, -869f, -818f, -1194f, -726f, 228f, 1329f, -2116f, -111f, -1000f, 970f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> vec2<bool> {
    let var_0 = Struct_4(select(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, global0[_wgslsmith_index_u32(103162u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)]), global0[_wgslsmith_index_u32(arg_0.a, 9u)]), select(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(49446u, 9u)], global0[_wgslsmith_index_u32(arg_0.a, 9u)]), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(8304u, 9u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(arg_1.d.a, 9u)], global0[_wgslsmith_index_u32(arg_0.a, 9u)], global0[_wgslsmith_index_u32(arg_0.a, 9u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1.a, 9u)], true, true), global0[_wgslsmith_index_u32(arg_1.c.a, 9u)])), _wgslsmith_sub_u32(31166u, u_input.b) >= _wgslsmith_add_u32(4294967295u, u_input.b)), select(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 9u)], true, global0[_wgslsmith_index_u32(arg_2.a.c.a, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(43933u, 9u)], false, global0[_wgslsmith_index_u32(arg_1.a, 9u)], false), true), !vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(arg_1.a, 9u)]), arg_2.a.a <= 7579u), !(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1.c.a, 9u)], true, true, global0[_wgslsmith_index_u32(arg_1.a, 9u)])), select(!vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(arg_0.a, 9u)]), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], false), global0[_wgslsmith_index_u32(55361u, 9u)])), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.c.x, 9u)], global0[_wgslsmith_index_u32(arg_2.a.a, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(arg_1.c.a, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], true, true, global0[_wgslsmith_index_u32(u_input.b, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], false, false)), select(!vec4<bool>(global0[_wgslsmith_index_u32(19513u, 9u)], global0[_wgslsmith_index_u32(58201u, 9u)], true, false), !vec4<bool>(global0[_wgslsmith_index_u32(17938u, 9u)], true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], true, true, false)), arg_2.a.a > 1u)));
    var var_1 = _wgslsmith_f_op_f32(1575f * -167f);
    return var_0.a.wx;
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 9>();
    global3 = array<f32, 15>();
    let var_0 = !select(func_3(Struct_1(u_input.a.x, -346f), Struct_2(_wgslsmith_div_u32(u_input.a.x, u_input.b), 2147483647i, Struct_1(u_input.b, global3[_wgslsmith_index_u32(30544u, 15u)]), Struct_1(u_input.b, global3[_wgslsmith_index_u32(48190u, 15u)]), u_input.c), Struct_3(Struct_2(74975u, u_input.c, Struct_1(1u, global3[_wgslsmith_index_u32(u_input.b, 15u)]), Struct_1(u_input.a.x, 1004f), -14797i), vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], global3[_wgslsmith_index_u32(0u, 15u)], -1041f, -985f), ~u_input.a.xx, -27632i, select(u_input.b, 15351u, global0[_wgslsmith_index_u32(u_input.a.x, 9u)])), global1[_wgslsmith_index_u32(select(u_input.a.x, 0u, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]) & (u_input.a.x << (0u % 32u)), 19u)]), vec2<bool>(select(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)]) && all(vec2<bool>(true, true)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 1570f) > 603f), false);
    global1 = array<f32, 19>();
    var var_1 = vec3<u32>(~(43579u >> (select(_wgslsmith_add_u32(u_input.b, u_input.b), 47969u << (u_input.b % 32u), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], var_0.x))) % 32u)), u_input.b, ~u_input.b);
    return Struct_1(u_input.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(608f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(92359u & u_input.a.x, 19u)] * -1798f))))));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_5(~_wgslsmith_mod_vec4_u32(select(_wgslsmith_div_vec4_u32(u_input.a, u_input.a), select(u_input.a, vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.b), global0[_wgslsmith_index_u32(0u, 9u)]), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(4448u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(4294967295u, 9u)]), true)), u_input.a), _wgslsmith_div_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(u_input.c, -13748i, -25925i, u_input.c))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-65241i, u_input.c, 14027i, 0i), vec4<i32>(17221i, u_input.c, u_input.c, -1i)), -vec4<i32>(-70987i, -21325i, u_input.c, 2147483647i)) >> (((vec4<u32>(u_input.a.x, u_input.a.x, 50081u, 77196u) << (u_input.a % vec4<u32>(32u))) & vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x)) % vec4<u32>(32u))));
    var var_1 = Struct_2(reverseBits(~0u), u_input.c, Struct_1(u_input.a.x, -1042f), func_2(), max(max(_wgslsmith_div_i32(abs(-9275i), var_0.b.x << (u_input.a.x % 32u)), ~(-4030i)), ~_wgslsmith_add_i32(21907i, reverseBits(-28480i))));
    let var_2 = Struct_5((var_0.a & ~abs(vec4<u32>(var_1.d.a, 0u, u_input.a.x, var_1.c.a))) ^ var_0.a, vec4<i32>(-48072i, min(u_input.c, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.e, var_0.b.x, var_0.b.x), select(vec3<i32>(0i, var_0.b.x, 2147483647i), var_0.b.wzz, true))), 1i | (firstTrailingBit(var_1.e) | var_0.b.x), reverseBits(1i)));
    global3 = array<f32, 15>();
    global0 = array<bool, 9>();
    return Struct_4(vec4<bool>(true, true, ~(~var_0.b.x) < var_0.b.x, _wgslsmith_f_op_f32(sign(var_1.d.b)) < global1[_wgslsmith_index_u32(var_0.a.x, 19u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 0u), ~(~u_input.a.wx));
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    var var_1 = func_1();
    var_1 = Struct_4(var_1.a);
    let var_2 = func_2();
    let var_3 = 4294967295u;
    let var_4 = ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, ~(-2147483647i)) ^ vec2<i32>(23980i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, 0i, -1i), vec4<i32>(u_input.c, u_input.c, -47287i, u_input.c))), reverseBits(vec2<i32>(~u_input.c, -50612i)));
    let x = u_input.a;
    s_output = StorageBuffer(~17543u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-354f, global3[_wgslsmith_index_u32(49775u, 15u)], -323f))) - vec3<f32>(var_2.b, 309f, global3[_wgslsmith_index_u32(3269u, 15u)]))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1148f, 1454f, var_2.b) + vec3<f32>(439f, 183f, -331f)), vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(772u, 19u)]), !vec3<bool>(true, var_1.a.x, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1491f, 1109f, var_2.b) - vec3<f32>(1562f, -1186f, -908f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(710f, -817f, -238f))), global0[_wgslsmith_index_u32(4294967295u, 9u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1020f, var_2.b)), vec3<f32>(var_2.b, global1[_wgslsmith_index_u32(61775u, 19u)], -960f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(763f, -365f, global1[_wgslsmith_index_u32(var_2.a, 19u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 19u)], -1000f, global3[_wgslsmith_index_u32(4294967295u, 15u)])))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(204f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 19u)] + -1231f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(65280u, 19u)])) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, -1000f, -461f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.b, var_2.b, -204f), vec3<f32>(1000f, global1[_wgslsmith_index_u32(1u, 19u)], 1361f))))))), reverseBits(max(u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], var_2.b)), global3[_wgslsmith_index_u32(13325u << (var_3 % 32u), 15u)], _wgslsmith_f_op_f32(trunc(var_2.b)), var_2.b)) * vec4<f32>(-556f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b | var_3, 19u)] - -133f), global1[_wgslsmith_index_u32(8073u, 19u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(620f)))))));
}

