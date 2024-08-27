struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(false, 4294967295u, vec4<i32>(-19302i, 0i, 12161i, -888i), vec4<bool>(true, false, false, false)));

var<private> global1: array<Struct_5, 18>;

var<private> global2: array<i32, 21> = array<i32, 21>(-1i, -63337i, -51940i, 2147483647i, 2147483647i, 1i, 24711i, 7372i, -28359i, 2147483647i, 2147483647i, -7468i, 1i, 1i, 9412i, -8875i, 0i, i32(-2147483648), i32(-2147483648), 79055i, 36895i);

var<private> global3: u32;

var<private> global4: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(2276f, 149f, -651f, -333f), vec4<f32>(-164f, -778f, 1311f, 1000f), vec4<f32>(494f, 1866f, 727f, 428f), vec4<f32>(1108f, -603f, 1207f, 429f), vec4<f32>(148f, -1231f, -1169f, -1016f), vec4<f32>(825f, 388f, 1140f, 726f), vec4<f32>(-366f, 1130f, 1000f, -245f), vec4<f32>(1576f, -1539f, 241f, 244f), vec4<f32>(181f, -1112f, 1625f, -267f), vec4<f32>(-1000f, 1045f, -1302f, 2544f), vec4<f32>(485f, 625f, -673f, -1422f), vec4<f32>(1036f, 1144f, -749f, -1179f), vec4<f32>(135f, 471f, -518f, -234f), vec4<f32>(790f, 1044f, 1315f, 548f), vec4<f32>(764f, -1262f, 1909f, -1345f), vec4<f32>(791f, 705f, 223f, -1989f), vec4<f32>(1771f, -1459f, -1568f, -857f), vec4<f32>(368f, 696f, 134f, 349f), vec4<f32>(1372f, -2347f, -1000f, -1126f), vec4<f32>(845f, 1638f, -1163f, -255f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_4(-vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 7312i, -76186i), vec3<i32>(84556i, -26735i, 15588i)), vec3<i32>(u_input.b, 5253i, u_input.b) << (vec3<u32>(1u, u_input.c, 71838u) % vec3<u32>(32u))), -_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(17833u, 21u)], -46065i), 1i, u_input.b), ~(~(~vec3<i32>(u_input.b, u_input.b, 0i)) >> (~(~vec3<u32>(u_input.c, u_input.a.x, 1u)) % vec3<u32>(32u))), 18680u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2111f + -643f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(380f + 468f), 378f))) * _wgslsmith_f_op_f32(max(-1576f, _wgslsmith_f_op_f32(-900f * _wgslsmith_f_op_f32(1545f - -266f))))), true);
    global3 = var_0.c;
    global4 = array<vec4<f32>, 20>();
    let var_1 = ~u_input.a;
    let var_2 = Struct_5(select(select(vec2<bool>(any(vec3<bool>(false, var_0.e, var_0.e)), false), !vec2<bool>(var_0.e, var_0.e), select(!vec2<bool>(var_0.e, var_0.e), vec2<bool>(true, true), !vec2<bool>(var_0.e, var_0.e))), vec2<bool>(false, all(vec4<bool>(true, var_0.e, false, false))), vec2<bool>(true, true)));
    return !vec2<bool>(any(vec3<bool>(var_0.e, var_0.e, any(vec3<bool>(var_2.a.x, false, true)))), all(vec2<bool>(true, var_2.a.x)) & var_0.e);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: f32) -> bool {
    var var_0 = arg_2;
    global0 = array<Struct_3, 1>();
    var var_1 = Struct_5(func_3());
    var var_2 = func_3();
    let var_3 = 0u;
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>) -> StorageBuffer {
    var var_0 = arg_1.x;
    let var_1 = select(_wgslsmith_add_i32(-25070i, global2[_wgslsmith_index_u32(select(44671u & u_input.a.x, ~u_input.a.x, any(arg_1.xww)), 21u)] >> (1u % 32u)), -16244i, !arg_0.x & (abs(abs(u_input.a.x)) > (~u_input.c & u_input.c)));
    let var_2 = func_3().x;
    let var_3 = select(vec4<i32>(~global2[_wgslsmith_index_u32(u_input.c, 21u)], _wgslsmith_div_i32(0i, countOneBits(global2[_wgslsmith_index_u32(u_input.a.x, 21u)])), -2147483647i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(25573u, 21u)], var_1), -global2[_wgslsmith_index_u32(u_input.c, 21u)], ~var_1), _wgslsmith_add_i32(-1i, ~global2[_wgslsmith_index_u32(u_input.c, 21u)]))), _wgslsmith_sub_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, u_input.b, -3338i, var_1), abs(vec4<i32>(2147483647i, var_1, u_input.b, global2[_wgslsmith_index_u32(u_input.c, 21u)])), vec4<i32>(global2[_wgslsmith_index_u32(3979u, 21u)], var_1, var_1, global2[_wgslsmith_index_u32(50117u, 21u)]))), vec4<i32>(-1i, abs(-2147483647i), 1i, -var_1)), true != any(!arg_1.ww));
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f + -167f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-881f, -705f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(732f)))), -1243f)));
    return StorageBuffer(_wgslsmith_clamp_i32(~(-2147483647i), -(i32(-1i) * -4080i), -1i), -(vec3<i32>(abs(2147483647i), ~60886i, var_3.x) << (_wgslsmith_clamp_vec3_u32(~u_input.a.zxz, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 31254u, 1u), u_input.a.zzy), u_input.a.zyw) % vec3<u32>(32u))));
}

fn func_1() -> StorageBuffer {
    let var_0 = max(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 8915u, u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(71851u, u_input.c, 43040u, u_input.c), u_input.a)), _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_mod_u32(u_input.a.x, 84074u), ~0u), u_input.a.x), 0u);
    global0 = array<Struct_3, 1>();
    var var_1 = true;
    var var_2 = (_wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.b, global2[_wgslsmith_index_u32(0u, 21u)])), max(vec2<i32>(4769i, -34437i), vec2<i32>(u_input.b, global2[_wgslsmith_index_u32(u_input.c, 21u)])) ^ abs(vec2<i32>(u_input.b, global2[_wgslsmith_index_u32(u_input.c, 21u)]))) & select(55642i, 8046i, true)) == ~(~global2[_wgslsmith_index_u32(1u, 21u)]);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global4[_wgslsmith_index_u32(var_0, 20u)])) - global4[_wgslsmith_index_u32(u_input.c, 20u)]);
    return func_4(select(select(vec2<bool>(true, select(true, true, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), false)), vec2<bool>(all(vec2<bool>(true, true)), true), false), !(!vec4<bool>(false, true, func_2(true, u_input.a.wyz, Struct_4(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], global2[_wgslsmith_index_u32(var_0, 21u)], -53923i, u_input.b), vec3<i32>(u_input.b, u_input.b, 26478i), var_0, var_3.x, false), -431f), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = vec3<i32>(~(~(~1i)) << (~_wgslsmith_mult_u32(var_0, u_input.a.x) % 32u), -_wgslsmith_mod_i32(reverseBits(-1i), global2[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_mod_i32(_wgslsmith_div_i32(49326i, select(i32(-1i) * -1i, u_input.b, false)), u_input.b));
    global0 = array<Struct_3, 1>();
    var var_2 = -u_input.b > -1i;
    var var_3 = _wgslsmith_mod_i32(i32(-1i) * -1i, ~(21572i ^ global2[_wgslsmith_index_u32(4294967295u, 21u)]));
    global4 = array<vec4<f32>, 20>();
    let x = u_input.a;
    s_output = func_1();
}

