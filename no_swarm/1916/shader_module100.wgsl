struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: Struct_3,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(4343u, 49522u, 1u), vec3<u32>(36268u, 4294967295u, 1554u), vec3<u32>(0u, 38665u, 27731u), vec3<u32>(60005u, 96444u, 1u), vec3<u32>(3990u, 98955u, 0u), vec3<u32>(1u, 1u, 77964u), vec3<u32>(34256u, 13073u, 1u), vec3<u32>(20515u, 1u, 132744u), vec3<u32>(14166u, 31903u, 10410u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 76976u, 5978u), vec3<u32>(0u, 0u, 5811u), vec3<u32>(8609u, 45416u, 4294967295u), vec3<u32>(102359u, 1u, 1u), vec3<u32>(6640u, 0u, 32834u), vec3<u32>(49505u, 1u, 48591u), vec3<u32>(4294967295u, 0u, 19963u), vec3<u32>(8610u, 54992u, 33335u));

var<private> global1: array<f32, 21> = array<f32, 21>(1000f, 1475f, 1259f, -672f, -338f, 1000f, 1302f, -773f, -349f, 377f, -788f, 1272f, 535f, 1576f, -1269f, 1014f, 155f, -311f, 592f, 213f, 1200f);

var<private> global2: array<Struct_2, 30>;

var<private> global3: Struct_4 = Struct_4(2147483647i, vec4<i32>(2147483647i, 0i, 20222i, 23341i), Struct_3(Struct_1(vec3<f32>(563f, 280f, 1103f), -461f, vec3<u32>(4294967295u, 1u, 1u), 1u), 59260i, vec4<f32>(339f, 897f, -1170f, 882f), vec3<u32>(40204u, 80331u, 4294967295u), vec2<bool>(false, false)), Struct_2(vec2<bool>(true, true), Struct_1(vec3<f32>(293f, 1000f, 218f), 132f, vec3<u32>(24855u, 4294967295u, 1u), 0u), vec4<f32>(573f, -570f, -1077f, -2426f), 69275i, vec3<u32>(62379u, 29394u, 0u)), 47115i);

var<private> global4: array<f32, 3>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> vec2<bool> {
    let var_0 = i32(-1i) * -arg_0.b;
    var var_1 = vec4<u32>(92220u, 77120u, 16434u, global3.d.e.x);
    global0 = array<vec3<u32>, 18>();
    let var_2 = _wgslsmith_f_op_f32(-arg_1);
    global0 = array<vec3<u32>, 18>();
    return global3.c.e;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: i32) -> vec3<u32> {
    let var_0 = global3.d;
    global4 = array<f32, 3>();
    var var_1 = ~0u;
    let var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(-var_0.d, _wgslsmith_sub_i32(_wgslsmith_sub_i32(global3.e ^ 63951i, -41702i), -21421i), 24873i), vec3<i32>(select(u_input.e.x, -2147483647i, _wgslsmith_mod_u32(global3.c.d.x, 17793u) <= global3.c.a.c.x), -1i, var_0.d));
    var var_3 = true;
    return select(vec3<u32>(arg_0.x, _wgslsmith_mod_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1287u), vec2<u32>(1153u, arg_0.x))), var_0.b.c.x ^ global3.c.a.d), reverseBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, 1u), 4294967295u ^ var_0.b.d))), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~(~arg_0.yxw), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, var_0.b.d) & vec3<u32>(u_input.b, arg_0.x, 47338u), var_0.b.c, vec3<u32>(arg_0.x, u_input.b, var_0.e.x))), vec3<u32>(select(4294967295u, _wgslsmith_mod_u32(40009u, global3.d.b.c.x), !global3.c.e.x), ~0u ^ ~global3.c.a.d, ~(~arg_0.x))), global3.d.a.x);
}

fn func_3(arg_0: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_mult_u32(53137u >> (u_input.b % 32u), global3.d.e.x) | func_2(vec4<u32>(countOneBits(_wgslsmith_div_u32(0u, global3.d.b.d)), _wgslsmith_dot_vec4_u32(~vec4<u32>(86553u, arg_0.c.a.c.x, 4294967295u, 0u), firstTrailingBit(vec4<u32>(24798u, arg_0.c.a.c.x, u_input.c, 0u))), u_input.a, _wgslsmith_mod_u32(u_input.b, _wgslsmith_sub_u32(42920u, global3.c.a.d))), !vec2<bool>(!global3.d.a.x, false), -(~u_input.e.x)).x;
    var var_1 = any(vec3<bool>(true, true, true));
    global1 = array<f32, 21>();
    global3 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(global3.d.c.x + 1213f);
    return Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_2), arg_0.d.b.b, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(24034u, 21u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c.a.a.x, global4[_wgslsmith_index_u32(global3.c.a.d, 3u)])) + 950f)), global3.c.a.c, ~u_input.c), abs(global3.a ^ ~u_input.e.x) >> (1u % 32u), _wgslsmith_f_op_vec4_f32(ceil(global3.c.c)), vec3<u32>(_wgslsmith_add_u32(0u, ~global3.c.a.c.x), 4294967295u, arg_0.d.e.x), vec2<bool>(all(!(!vec4<bool>(global3.c.e.x, false, false, arg_0.d.a.x))), !all(select(vec4<bool>(true, true, true, global3.d.a.x), vec4<bool>(false, arg_0.d.a.x, global3.d.a.x, false), vec4<bool>(arg_0.d.a.x, true, global3.c.e.x, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(Struct_4(_wgslsmith_dot_vec3_i32(global3.b.yww, -global3.b.yxx), global3.b, global3.c, Struct_2(select(select(global3.d.a, vec2<bool>(true, false), global3.d.a.x), func_1(global3.c, -1000f), u_input.c == u_input.c), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(132f, 936f, global3.d.b.b), global3.d.b.a)), global3.c.a.b, func_2(vec4<u32>(u_input.a, u_input.a, u_input.b, 8867u), global3.c.e, 2147483647i), ~45756u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(10302u, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)], -1851f, -392f))), -2147483647i, global3.d.b.c), ~(-(i32(-1i) * -2147483647i))));
    var var_1 = _wgslsmith_mod_u32(49407u, var_0.d.x);
    var var_2 = vec4<i32>(-(~u_input.e.x), var_0.b, -(~var_0.b), reverseBits(_wgslsmith_div_i32(1i, global3.b.x >> (global3.d.b.d % 32u)) >> (1u % 32u)));
    var var_3 = true;
    var_1 = 33330u;
    global2 = array<Struct_2, 30>();
    var var_4 = global3.b.yyz;
    var var_5 = var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(Struct_4(1i, _wgslsmith_add_vec4_i32(global3.b, ~vec4<i32>(-1i, var_0.b, -30855i, var_4.x)), global3.c, global3.d, -31951i)).a.c.zx, _wgslsmith_f_op_vec3_f32(var_0.c.yzx * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global3.c.d.x), 21u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global3.d.b.c.x, 3u)] + -1552f), -723f) + _wgslsmith_f_op_vec3_f32(-global3.d.c.yxz))), global3.d.c.wx, var_0.d.zz, global3.b ^ vec4<i32>(var_2.x, u_input.e.x, _wgslsmith_dot_vec3_i32(var_2.www, global3.b.ywy) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, -1i), global3.b.zx), -(u_input.e.x >> (var_0.a.c.x % 32u))));
}

