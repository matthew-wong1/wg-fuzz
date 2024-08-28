struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true));

var<private> global1: Struct_4 = Struct_4(Struct_3(true, vec3<bool>(true, true, false)), i32(-2147483648), vec2<i32>(-7138i, -9062i), vec4<bool>(false, true, false, true), vec4<f32>(392f, -1482f, -1000f, 1388f));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: Struct_3 = Struct_3(true, vec3<bool>(true, true, false));

var<private> global4: array<Struct_2, 9>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<i32> {
    global3 = global1.a;
    var var_0 = 789f;
    global3 = global1.a;
    let var_1 = u_input.a;
    var var_2 = global1.a;
    return ~global1.c;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> vec3<bool> {
    global1 = Struct_4(global1.a, global1.c.x, func_3(), global1.d, global1.e);
    let var_0 = arg_0;
    let var_1 = Struct_3(true, vec3<bool>(0u > (countOneBits(4294967295u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1048u, 1u, u_input.a), vec3<u32>(15337u, u_input.a, 22458u)) % 32u)), true, global1.d.x));
    global0 = array<vec4<bool>, 16>();
    var var_2 = 0i;
    return global1.a.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: u32) -> Struct_2 {
    global0 = array<vec4<bool>, 16>();
    global1 = Struct_4(global1.a, _wgslsmith_mult_i32(global1.b, -(global1.b & _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b, 1i, 27128i), vec3<i32>(2574i, 70713i, 1i)))), min(-(-vec2<i32>(1758i, global1.c.x) & vec2<i32>(-2147483647i, -2147483647i)), abs(firstTrailingBit(vec2<i32>(global1.b, 3136i))) ^ ~vec2<i32>(global1.b, global1.b)), vec4<bool>(true, any(global1.a.b), true, func_2(select(vec4<i32>(-2735i, -31168i, global1.b, global1.b), countOneBits(vec4<i32>(global1.c.x, global1.b, -10181i, -2147483647i)), vec4<bool>(false, global2.x, global3.b.x, global3.a)), global1.b).x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.e)))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.e.x, 560f, _wgslsmith_div_f32(global1.e.x, 498f), _wgslsmith_f_op_f32(475f + global1.e.x))))));
    let var_0 = select(firstLeadingBit(vec4<i32>(-5246i, abs(-1i), ~firstLeadingBit(52673i), min(66150i, -2041i))), _wgslsmith_sub_vec4_i32(firstLeadingBit(abs(vec4<i32>(global1.b, 2147483647i, -1i, global1.c.x))) >> (vec4<u32>(1u, arg_1.x, arg_2, arg_2) % vec4<u32>(32u)), countOneBits(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.c.x, -40782i, global1.c.x, 18536i), vec4<i32>(global1.b, 8705i, global1.c.x, 39963i))))), vec4<bool>(any(select(arg_0, select(global1.d.xxy, global3.b, global3.b), select(arg_0, vec3<bool>(false, arg_0.x, false), global1.a.b))), false, !func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global1.b, -1i, global1.b), vec4<i32>(global1.c.x, global1.c.x, global1.b, 59781i), vec4<i32>(-2147483647i, global1.c.x, -6747i, -1i)), _wgslsmith_div_i32(1647i, global1.c.x)).x, true));
    global4 = array<Struct_2, 9>();
    let var_1 = Struct_1(global1.e.x);
    return Struct_2(var_0.zw);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = global4[_wgslsmith_index_u32(firstTrailingBit(max(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 81233u, 1u, u_input.a), vec4<u32>(0u, 81353u, 4294967295u, 53118u)), 1u)), 9u)];
    global2 = !vec2<bool>(true, ((global1.e.x > 1035f) && (u_input.a <= u_input.a)) & true);
    let var_1 = func_4(!func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, -22098i, global1.b, 2147483647i) | vec4<i32>(var_0.a.x, -2147483647i, 5571i, 0i), vec4<i32>(24400i, -2147483647i, global1.c.x, global1.c.x)), var_0.a.x), abs(vec3<u32>(25543u, 0u, ~4294967295u) ^ firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(4294967295u, u_input.a, u_input.a))), _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(u_input.a, 0u, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(69964u, u_input.a)), _wgslsmith_sub_u32(u_input.a, 49588u), reverseBits(36500u)), vec4<u32>(1u, max(u_input.a, ~u_input.a), ~(~4334u), ~0u & _wgslsmith_add_u32(u_input.a, u_input.a))));
    var var_2 = min(var_1.a.x, global1.c.x) << (u_input.a % 32u);
    let var_3 = Struct_2(arg_0.a);
    return Struct_3(global3.a, global1.d.xxw);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 16>();
    var var_0 = func_1(Struct_2(global1.c), vec4<f32>(global1.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.e.x, global1.e.x) + _wgslsmith_f_op_f32(-global1.e.x)), global1.e.x), _wgslsmith_f_op_f32(1338f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.e.x)))), 530f));
    var var_1 = Struct_1(629f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.a, ~(~4294967295u) >> (u_input.a % 32u)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1.e.xx))) - vec2<f32>(_wgslsmith_f_op_f32(var_1.a + var_1.a), 861f)))));
}

