struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<u32> = vec2<u32>(40809u, 0u);

var<private> global2: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(Struct_2(-1i, Struct_1(-1i, 83019u), Struct_1(4762i, 92600u)), Struct_2(2147483647i, Struct_1(0i, 4009u), Struct_1(-5972i, 1786u)), 10355u), Struct_4(Struct_2(i32(-2147483648), Struct_1(9967i, 4114u), Struct_1(1i, 0u)), Struct_2(2147483647i, Struct_1(0i, 55772u), Struct_1(0i, 4294967295u)), 12134u), Struct_4(Struct_2(-35271i, Struct_1(1i, 4674u), Struct_1(-15005i, 0u)), Struct_2(i32(-2147483648), Struct_1(2132i, 4294967295u), Struct_1(-65993i, 59676u)), 20029u), Struct_4(Struct_2(-14411i, Struct_1(10776i, 1u), Struct_1(1i, 31652u)), Struct_2(-1i, Struct_1(2147483647i, 102023u), Struct_1(5160i, 0u)), 0u), Struct_4(Struct_2(12584i, Struct_1(18094i, 55626u), Struct_1(-1i, 1u)), Struct_2(-79883i, Struct_1(10021i, 29094u), Struct_1(-17037i, 0u)), 0u), Struct_4(Struct_2(i32(-2147483648), Struct_1(-29876i, 13453u), Struct_1(22384i, 43877u)), Struct_2(2147483647i, Struct_1(-49910i, 58431u), Struct_1(1i, 1u)), 6494u), Struct_4(Struct_2(1i, Struct_1(-15391i, 1u), Struct_1(-25542i, 26607u)), Struct_2(i32(-2147483648), Struct_1(i32(-2147483648), 65687u), Struct_1(-4487i, 47826u)), 113790u), Struct_4(Struct_2(89493i, Struct_1(2147483647i, 4294967295u), Struct_1(-19515i, 73227u)), Struct_2(-31153i, Struct_1(1i, 1u), Struct_1(49770i, 13667u)), 0u), Struct_4(Struct_2(0i, Struct_1(-5770i, 1u), Struct_1(i32(-2147483648), 16741u)), Struct_2(-1i, Struct_1(-1i, 4294967295u), Struct_1(1i, 0u)), 0u), Struct_4(Struct_2(-1i, Struct_1(78106i, 0u), Struct_1(i32(-2147483648), 0u)), Struct_2(i32(-2147483648), Struct_1(2147483647i, 1u), Struct_1(34796i, 5525u)), 1u), Struct_4(Struct_2(7647i, Struct_1(-1i, 76496u), Struct_1(44226i, 19512u)), Struct_2(35414i, Struct_1(-6604i, 4294967295u), Struct_1(9336i, 1u)), 79199u), Struct_4(Struct_2(-7466i, Struct_1(0i, 8136u), Struct_1(9072i, 53265u)), Struct_2(-1i, Struct_1(-1i, 27054u), Struct_1(0i, 0u)), 4294967295u), Struct_4(Struct_2(-15595i, Struct_1(0i, 0u), Struct_1(-1i, 0u)), Struct_2(-1i, Struct_1(i32(-2147483648), 1u), Struct_1(1i, 5801u)), 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<bool>) -> f32 {
    return -1459f;
}

fn func_2() -> Struct_4 {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1395f - -1000f))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1525f, -694f, -2314f, -294f)) + vec4<f32>(1868f, -434f, 1206f, 226f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(239f))), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-878f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1553f))));
    global2 = array<Struct_4, 13>();
    global0 = any(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, false))));
    global2 = array<Struct_4, 13>();
    let var_1 = 2147483647i;
    return global2[_wgslsmith_index_u32(abs(global1.x >> (firstTrailingBit(global1.x) % 32u)), 13u)];
}

fn func_1() -> Struct_4 {
    global1 = vec2<u32>(global1.x, global1.x);
    global2 = array<Struct_4, 13>();
    var var_0 = global2[_wgslsmith_index_u32(global1.x, 13u)];
    global2 = array<Struct_4, 13>();
    let var_1 = _wgslsmith_f_op_f32(969f + 622f);
    return func_2();
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_4) -> Struct_3 {
    global0 = !any(vec3<bool>(!any(vec4<bool>(false, false, false, true)), true, any(vec3<bool>(true, true, true))));
    global0 = (true || !(_wgslsmith_f_op_f32(max(arg_0.x, -848f)) < _wgslsmith_f_op_f32(-arg_0.x))) || (-1i > arg_2.a.c.a);
    global1 = vec2<u32>(abs(min(abs(u_input.b.x), 51803u)) << (~u_input.b.x % 32u), global1.x);
    let var_0 = Struct_3(func_2().a, func_1().b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1280f, -730f), _wgslsmith_f_op_f32(sign(1000f)))), -1160f, -770f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-2847f - -999f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) + vec4<f32>(-1449f, 1296f, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1335f))))));
    global0 = any(vec2<bool>(!(func_2().b.c.b == ~u_input.b.x), any(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))));
    return Struct_3(func_1().a, func_1().b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 387f, -1663f, arg_0.x), _wgslsmith_f_op_vec4_f32(step(var_0.c, vec4<f32>(-730f, -277f, var_0.c.x, var_0.c.x)))) * var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1019f, 1148f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(359f, -1386f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1714f, -1157f), vec2<f32>(-762f, 296f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1210f, -317f))))), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(82049u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x))), vec2<u32>(global1.x, 1u)), func_1());
    var var_1 = ~(~32836u);
    global2 = array<Struct_4, 13>();
    let var_2 = u_input.c;
    let var_3 = var_0.a.b;
    var var_4 = func_1().b.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, var_3.a);
}

