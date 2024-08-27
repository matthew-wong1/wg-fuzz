struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(-1i, vec3<u32>(14065u, 2972u, 1u), true, vec2<f32>(-1337f, 163f)), Struct_2(1i, vec3<u32>(0u, 12921u, 53497u), true, vec2<f32>(1085f, -395f)), Struct_2(-1i, vec3<u32>(1u, 18327u, 42189u), false, vec2<f32>(-496f, 1000f)), Struct_2(-11635i, vec3<u32>(4294967295u, 32959u, 4294967295u), false, vec2<f32>(944f, -739f)), Struct_2(1i, vec3<u32>(43811u, 4294967295u, 6339u), false, vec2<f32>(864f, 502f)), Struct_2(2595i, vec3<u32>(1u, 7518u, 4294967295u), true, vec2<f32>(-117f, -181f)), Struct_2(-38060i, vec3<u32>(4294967295u, 4294967295u, 88405u), true, vec2<f32>(-241f, 739f)), Struct_2(1i, vec3<u32>(26898u, 3358u, 1u), true, vec2<f32>(1451f, 2089f)), Struct_2(53110i, vec3<u32>(1u, 10667u, 51936u), true, vec2<f32>(1691f, 765f)), Struct_2(35360i, vec3<u32>(4294967295u, 1u, 35124u), false, vec2<f32>(-1567f, -1000f)), Struct_2(0i, vec3<u32>(29937u, 73067u, 0u), true, vec2<f32>(1000f, 1000f)), Struct_2(2147483647i, vec3<u32>(1u, 60640u, 14281u), false, vec2<f32>(648f, -1370f)), Struct_2(-26885i, vec3<u32>(28490u, 529u, 1u), false, vec2<f32>(275f, 896f)), Struct_2(53111i, vec3<u32>(97165u, 118333u, 1u), false, vec2<f32>(793f, -1362f)), Struct_2(48477i, vec3<u32>(1u, 1u, 4671u), true, vec2<f32>(166f, 1170f)));

var<private> global1: Struct_2;

var<private> global2: vec4<i32> = vec4<i32>(25657i, 1i, 1i, -3726i);

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(19107i, vec3<u32>(83165u, 0u, 0u), false, vec2<f32>(2534f, -874f)), Struct_2(-18362i, vec3<u32>(50352u, 51191u, 46423u), true, vec2<f32>(549f, -683f)), Struct_2(i32(-2147483648), vec3<u32>(8526u, 4683u, 91772u), false, vec2<f32>(-1002f, 499f)), Struct_2(-6253i, vec3<u32>(0u, 1u, 4294967295u), true, vec2<f32>(1059f, 344f)), Struct_2(-1i, vec3<u32>(976u, 0u, 4294967295u), true, vec2<f32>(-1052f, -550f)), Struct_2(-1i, vec3<u32>(63758u, 4294967295u, 4294967295u), true, vec2<f32>(-488f, -676f)), Struct_2(1i, vec3<u32>(4294967295u, 1u, 3950u), false, vec2<f32>(1930f, -1717f)), Struct_2(-3730i, vec3<u32>(1u, 71603u, 4294967295u), false, vec2<f32>(-1000f, 469f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = (abs(3335i) & countOneBits(-reverseBits(global1.a))) << (u_input.e % 32u);
    global3 = array<Struct_2, 8>();
    var var_1 = select(true || global1.c, any(vec2<bool>(true, false)), ~(~global1.b.x | firstTrailingBit(global1.b.x)) > abs(countOneBits(1u)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.d.x, global1.d.x, arg_0), vec3<f32>(global1.d.x, 108f, arg_0))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-254f, 1000f, 366f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.d.x, arg_0, global1.d.x), vec3<f32>(657f, arg_0, arg_0))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.d.x, 2691f, 1631f), vec3<f32>(global1.d.x, 1383f, arg_0), global1.c))))), ~(~(global2.x | -7782i)));
    global0 = array<Struct_2, 15>();
    return 1u;
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    var var_0 = vec4<u32>(global1.b.x, select(112828u, 4294967295u, true), 4294967295u, func_3(arg_0.a.x));
    var var_1 = Struct_2(select(-abs(_wgslsmith_mod_i32(-29556i, u_input.d.x)), ~(i32(-1i) * -u_input.d.x), global1.c), u_input.c.yyz, (_wgslsmith_f_op_f32(step(276f, 106f)) == arg_0.c.a.x) || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.d.x, global1.d.x, global1.c)) + -981f) < global1.d.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b.a.x - 1673f), _wgslsmith_f_op_f32(-arg_0.b.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(global1.d.x * -650f))))));
    global1 = global3[_wgslsmith_index_u32(select(96369u, _wgslsmith_dot_vec2_u32(vec2<u32>(~26960u, _wgslsmith_div_u32(global1.b.x, u_input.e)), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.b.x, var_1.b.x), global1.b.xz))) & ((42144u << (global1.b.x % 32u)) & select(var_1.b.x << (var_1.b.x % 32u), firstLeadingBit(1u), true)), !global1.c), 8u)];
    var var_2 = Struct_1(arg_0.b.a);
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, var_1.d.x, global1.d.x, arg_0.a.x) * vec4<f32>(arg_0.a.x, arg_0.b.a.x, var_2.a.x, var_2.a.x)) * vec4<f32>(-1519f, -234f, global1.d.x, -346f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(arg_0.a.zz)), var_2.a.xx)));
    return Struct_1(vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * var_1.d.x)))), 170f));
}

fn func_1() -> vec2<bool> {
    global3 = array<Struct_2, 8>();
    var var_0 = func_2(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, -1017f, 1462f) - vec3<f32>(-738f, global1.d.x, -1432f)))), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-710f, 122f, -2115f))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(828f, -482f, global1.d.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(global1.d.x, global1.d.x, global1.d.x), vec3<f32>(global1.d.x, global1.d.x, 421f)))), ~_wgslsmith_mod_i32(-u_input.d.x, _wgslsmith_dot_vec3_i32(u_input.d.xzx, global2.zxx))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(1u, global1.b.x, 1u, 4294967295u), u_input.c), u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(18714u, u_input.a, 0u), ~vec3<u32>(u_input.b, global1.b.x, u_input.b))));
    var var_1 = max(vec2<u32>(min(_wgslsmith_div_u32(_wgslsmith_add_u32(2876u, u_input.e), _wgslsmith_mult_u32(u_input.a, 4294967295u)), max(1u, u_input.e)), u_input.c.x), global1.b.yz);
    var var_2 = abs(~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 38538u, var_1.x, var_1.x), vec4<u32>(u_input.c.x, 33489u, global1.b.x, global1.b.x)))));
    var var_3 = global0[_wgslsmith_index_u32(~(~global1.b.x), 15u)];
    return !select(vec2<bool>(var_3.c, false), vec2<bool>(global1.c, true), false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<i32>(-_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-3697i, -34798i) ^ global2.x, 0i, _wgslsmith_sub_i32(50990i, -1i)), -26408i, ~(-global1.a), u_input.d.x);
    global2 = vec4<i32>(i32(-1i) * -1i, global1.a ^ ~(i32(-1i) * -1290i), global2.x, reverseBits(1i)) & u_input.d;
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    var var_0 = select(!vec2<bool>(global1.c, all(!vec2<bool>(global1.c, true))), func_1(), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.d.x)), global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-221f + -600f), 529f)) + global1.d.x)), -5062i, global2.yy & -vec2<i32>(_wgslsmith_add_i32(0i, global1.a), global2.x & -30561i), 3259u);
}

