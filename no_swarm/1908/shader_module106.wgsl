struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(-1000f, 908f, -653f, 1123f), vec4<f32>(812f, 2185f, 647f, -1278f), vec4<f32>(243f, -1944f, 1682f, -641f), vec4<f32>(404f, 362f, -760f, -731f), vec4<f32>(-677f, 210f, 2022f, 809f), vec4<f32>(-841f, -817f, 1000f, -724f), vec4<f32>(199f, 2235f, -370f, -1000f), vec4<f32>(533f, -1000f, -2728f, -416f), vec4<f32>(-758f, -756f, 1311f, -1942f), vec4<f32>(-384f, -175f, 2291f, -892f), vec4<f32>(721f, 279f, -628f, -242f), vec4<f32>(-1591f, 1962f, -753f, 401f), vec4<f32>(-1435f, -1746f, 2078f, 908f), vec4<f32>(-1943f, 827f, -988f, -325f), vec4<f32>(-723f, -223f, 995f, 323f), vec4<f32>(-468f, -457f, -123f, 2727f), vec4<f32>(-819f, 1000f, -1243f, 1228f), vec4<f32>(619f, 476f, 713f, 2670f), vec4<f32>(1009f, -893f, 162f, 1497f), vec4<f32>(-430f, 1314f, -386f, -1097f), vec4<f32>(-1238f, 455f, 471f, 1401f));

var<private> global1: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(1u, 84778u), vec2<u32>(15285u, 31194u), vec2<u32>(0u, 12296u), vec2<u32>(42680u, 1562u), vec2<u32>(1u, 43130u), vec2<u32>(0u, 0u), vec2<u32>(63086u, 10783u), vec2<u32>(30451u, 77314u), vec2<u32>(4294967295u, 11372u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(78045u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(0u, 10922u), vec2<u32>(0u, 4294967295u), vec2<u32>(60864u, 4294967295u));

var<private> global2: array<vec3<u32>, 18>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    let var_0 = u_input.a.x;
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1913f, -289f))))))), _wgslsmith_clamp_i32(abs(firstLeadingBit(u_input.b.x)), var_0, -u_input.a.x)), Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-982f, -843f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1001f, 1157f) * vec2<f32>(-117f, 1728f))), vec2<f32>(_wgslsmith_div_f32(-1314f, 334f), 1139f))), ~firstLeadingBit(-1i)));
    var var_2 = countOneBits(u_input.b.yzw);
    global1 = array<vec2<u32>, 15>();
    let var_3 = vec2<bool>(any(vec4<bool>((15744i & var_2.x) <= -22745i, !(u_input.c != u_input.c), true, !select(false, false, false))), false);
    return var_1.a.a;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(func_3()), (_wgslsmith_clamp_i32(11075i, -2147483647i, 1i) >> (75234u % 32u)) >> (abs(4294967295u) % 32u)), Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1172f, -1000f))) * vec2<f32>(-1763f, arg_3.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.e, arg_3.a)))), u_input.b.x));
    let var_1 = _wgslsmith_div_f32(arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.x * arg_3.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1623f + -1579f))))));
    let var_2 = ~(~u_input.c);
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(var_0.a.a * var_0.a.a), -20446i), var_0.a);
    global0 = array<vec4<f32>, 21>();
    return false;
}

fn func_1() -> u32 {
    let var_0 = vec2<u32>(27860u >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 18769u, 1u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 17924u, 45704u, u_input.c), vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u))) % 32u), u_input.c);
    var var_1 = vec4<bool>(all(vec2<bool>(func_2(true, reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, -15697i)), var_0, Struct_1(1661f, 0i, true, global1[_wgslsmith_index_u32(var_0.x, 15u)], 529f)), true)), countOneBits(_wgslsmith_clamp_i32(-u_input.b.x, u_input.b.x, ~(-1i))) <= -select(2147483647i, ~7181i, true), false, !((u_input.b.x & ~0i) <= ~_wgslsmith_mult_i32(u_input.b.x, -19420i)));
    var var_2 = vec4<bool>(true, true, all(vec3<bool>(all(!vec2<bool>(var_1.x, false)), true, var_1.x)), 1i == _wgslsmith_add_i32(max(u_input.a.x, -1i), 1i));
    var var_3 = 935f;
    global0 = array<vec4<f32>, 21>();
    return 64155u;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    var var_0 = arg_2.d.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 21u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-250f, arg_3, -162f, -999f)))) + _wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(1u, 6308u)), 21u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(151401u, 21u)])))));
    global2 = array<vec3<u32>, 18>();
    var var_2 = ~_wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(max(arg_2.d.x, arg_0), 18u)], ~global2[_wgslsmith_index_u32(arg_2.d.x, 18u)]);
    var var_3 = false;
    return Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.e, -395f), var_1.xy)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.wy)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-405f, -443f))))), u_input.a.x), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-145f, arg_2.a) + vec2<f32>(178f, -1000f)) * var_1.yy), ~arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(round(358f)), -1292f))), u_input.a.x), Struct_2(vec2<f32>(422f, -181f), i32(-1i) * -min(u_input.a.x, -68569i)));
    var_0 = func_4(max(reverseBits(4294967295u) & min(func_1(), _wgslsmith_mod_u32(u_input.c, 52876u)), ~(~(~17004u))), all(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.a.a.x, -413f)))), u_input.a.x, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), all(vec4<bool>(false, true, true, true)))), countOneBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, u_input.c), ~vec2<u32>(0u, 31935u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x * var_0.b.a.x)))), var_0.b.a.x);
    var var_1 = func_4(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, 0u, u_input.c), min(vec3<u32>(u_input.c, 4294967295u, u_input.c), global2[_wgslsmith_index_u32(u_input.c, 18u)]) | vec3<u32>(26222u, u_input.c, 4294967295u)), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 4294967295u, 0u, u_input.c), min(vec4<u32>(0u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 0u, 1u, 9499u))), 4294967295u)), true, Struct_1(131f, var_0.b.b, select(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), true, any(vec4<bool>(true, true, true, true))), ~vec2<u32>(firstLeadingBit(1u), 1u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-610f + var_0.a.a.x), _wgslsmith_f_op_f32(floor(2298f))) - var_0.b.a.x)), _wgslsmith_f_op_f32(-var_0.b.a.x));
    var_0 = Struct_3(Struct_2(var_1.a.a, ~11420i), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.a.x))), -1629f), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-var_1.a.b, _wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.b.yw)), var_1.b.b >> (~0u % 32u))));
    var_1 = Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(max(-172f, var_1.b.a.x)), _wgslsmith_f_op_f32(var_0.b.a.x * _wgslsmith_f_op_f32(var_0.a.a.x * 282f))), func_4(_wgslsmith_add_u32(u_input.c, ~4294967295u), true, Struct_1(_wgslsmith_f_op_f32(trunc(var_1.a.a.x)), var_0.b.b, any(vec3<bool>(false, true, false)), vec2<u32>(2598u, 4294967295u), _wgslsmith_div_f32(var_0.b.a.x, 1456f)), var_0.a.a.x).a.b), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(u_input.c, 18u)], vec3<u32>(u_input.c, u_input.c, 58409u)), 4294967295u), ~18870u, 1u, ~(4294967295u >> (u_input.c % 32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(u_input.c, 18u)], ~vec3<u32>(u_input.c, u_input.c, 1u)), ~_wgslsmith_mult_u32(u_input.c, 23186u), _wgslsmith_sub_u32(4294967295u, 65560u)), _wgslsmith_div_vec3_u32(~global2[_wgslsmith_index_u32(0u, 18u)] << (abs(vec3<u32>(22327u, u_input.c, u_input.c)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(min(vec3<u32>(u_input.c, u_input.c, u_input.c), global2[_wgslsmith_index_u32(28455u, 18u)]), ~vec3<u32>(1u, u_input.c, u_input.c)))), -65836i);
}

