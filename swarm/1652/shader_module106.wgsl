struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: u32,
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

var<private> global0: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(-1i, -14637i, Struct_3(-1000f, -226f), false), Struct_4(i32(-2147483648), -28429i, Struct_3(-1158f, -457f), true), Struct_4(12857i, 4902i, Struct_3(779f, -148f), false), Struct_4(i32(-2147483648), 0i, Struct_3(-765f, 864f), false), Struct_4(81047i, -13597i, Struct_3(1686f, 540f), false), Struct_4(i32(-2147483648), 9708i, Struct_3(380f, 1057f), true), Struct_4(-1i, i32(-2147483648), Struct_3(-1000f, 873f), true), Struct_4(-1i, -1i, Struct_3(1000f, 1000f), true), Struct_4(2147483647i, -1i, Struct_3(1000f, 447f), false), Struct_4(-25244i, 2147483647i, Struct_3(258f, -499f), true), Struct_4(1i, 6843i, Struct_3(1579f, 1043f), false), Struct_4(78220i, i32(-2147483648), Struct_3(1403f, -2519f), false), Struct_4(1i, -7282i, Struct_3(608f, 422f), true), Struct_4(-1i, -31096i, Struct_3(206f, -2592f), true), Struct_4(2147483647i, 0i, Struct_3(411f, 1893f), true), Struct_4(2147483647i, 33168i, Struct_3(1389f, -1050f), false), Struct_4(1i, 37184i, Struct_3(321f, -1445f), true), Struct_4(0i, -32353i, Struct_3(918f, 457f), true), Struct_4(10285i, -26657i, Struct_3(-1000f, -706f), true), Struct_4(2147483647i, -36312i, Struct_3(-1484f, -360f), false), Struct_4(-5802i, 1i, Struct_3(-895f, 1506f), true), Struct_4(-24585i, -27941i, Struct_3(-621f, 1977f), true), Struct_4(1i, -14260i, Struct_3(-1000f, -955f), true), Struct_4(-14214i, -33747i, Struct_3(-1033f, -596f), true), Struct_4(-32965i, 38354i, Struct_3(843f, -120f), false), Struct_4(2147483647i, 0i, Struct_3(-2057f, -109f), true));

var<private> global1: u32;

var<private> global2: array<Struct_2, 18>;

var<private> global3: vec3<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<i32>) -> f32 {
    var var_0 = u_input.a;
    let var_1 = false;
    global2 = array<Struct_2, 18>();
    let var_2 = Struct_3(307f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(305f, _wgslsmith_f_op_f32(f32(-1f) * -1115f), _wgslsmith_f_op_f32(select(430f, -502f, var_1)) <= -350f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-322f, 246f)), _wgslsmith_div_f32(1366f, 2701f)))));
    var var_3 = Struct_3(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1078f, -1175f, false)))), var_2.b)));
    return -1000f;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    let var_0 = u_input.e;
    global2 = array<Struct_2, 18>();
    return arg_1.c;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_4) -> vec3<i32> {
    var var_0 = func_3(Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c.b), _wgslsmith_div_f32(516f, arg_3.c.b)), _wgslsmith_f_op_f32(max(-1000f, arg_3.c.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_3.c.a, -1194f), _wgslsmith_f_op_f32(func_2(7974u, vec2<u32>(4294967295u, 12688u), ~arg_1)), arg_2.x <= arg_2.x))), Struct_2(i32(-1i) * -2147483647i, -829f, Struct_1(-2147483647i, -(arg_1 >> (vec3<u32>(u_input.e, u_input.e, u_input.e) % vec3<u32>(32u))))));
    global1 = 12183u;
    global2 = array<Struct_2, 18>();
    global2 = array<Struct_2, 18>();
    let var_1 = func_3(Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.c.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.c.b, 1254f))))), global2[_wgslsmith_index_u32(~u_input.e, 18u)]);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    var_0 = 0u | (0u | u_input.e);
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.a.www, -firstLeadingBit(abs(vec3<i32>(u_input.b, -12094i, u_input.c)))), _wgslsmith_sub_vec3_i32(select(_wgslsmith_mult_vec3_i32(func_1(vec4<bool>(true, true, false, true), u_input.d, vec2<u32>(29716u, u_input.e), global0[_wgslsmith_index_u32(u_input.e, 26u)]), ~u_input.a.zxy), ~(-u_input.d), any(vec4<bool>(true, false, false, true))), max(u_input.d, u_input.a.ywx)));
    global0 = array<Struct_4, 26>();
    var var_2 = ~firstLeadingBit(4294967295u ^ _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, u_input.e)), ~vec2<u32>(1u, 4294967295u)));
    let var_3 = true;
    let var_4 = Struct_5(any(vec2<bool>(var_3, any(vec3<bool>(false, true, var_3)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, ~1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(648f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(811f - -754f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2352f)) - _wgslsmith_f_op_f32(min(1083f, 799f))), -2350f)));
}

