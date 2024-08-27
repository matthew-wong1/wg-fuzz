struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2147483647i);

var<private> global1: array<f32, 19> = array<f32, 19>(-784f, -1104f, 399f, 136f, -1215f, 1762f, 1034f, 1820f, -650f, 255f, 1643f, 1000f, -170f, 235f, -1000f, 1632f, 946f, -353f, -322f);

var<private> global2: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(1430u, 54707u), vec2<u32>(11338u, 76987u), vec2<u32>(14506u, 52293u), vec2<u32>(76793u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(37966u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(93780u, 67013u), vec2<u32>(1u, 7993u), vec2<u32>(0u, 63517u), vec2<u32>(1u, 1u), vec2<u32>(10306u, 4294967295u), vec2<u32>(54096u, 86374u), vec2<u32>(12927u, 4294967295u), vec2<u32>(90710u, 98848u), vec2<u32>(22775u, 24809u), vec2<u32>(8705u, 49683u), vec2<u32>(1u, 57757u));

var<private> global3: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global4: i32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = Struct_2(arg_0.a);
    let var_0 = Struct_1(true, global0.a);
    let var_1 = 0u;
    let var_2 = Struct_1(var_0.a, select(global0.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(-954i, arg_0.a, 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a, 2147483647i, global0.a), vec3<i32>(global0.a, var_0.b, -11646i))), !any(vec4<bool>(false, var_0.a, var_0.a, var_0.a))) & 0i);
    global2 = array<vec2<u32>, 18>();
    return var_1;
}

fn func_2() -> StorageBuffer {
    global1 = array<f32, 19>();
    global1 = array<f32, 19>();
    global1 = array<f32, 19>();
    global0 = Struct_2(reverseBits(global0.a));
    let var_0 = Struct_1(select(any(!select(global3[_wgslsmith_index_u32(4294967295u, 20u)], vec2<bool>(true, true), true)), !(-global0.a <= -global0.a), global1[_wgslsmith_index_u32(u_input.a.x, 19u)] < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-750f)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 304f)))), ~(~20407i));
    return StorageBuffer(vec3<f32>(global1[_wgslsmith_index_u32(abs(func_3(Struct_2(var_0.b))) ^ _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, 1u), 11146u), 19u)], -1000f, 2078f), ~abs(1106u));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> StorageBuffer {
    let var_0 = Struct_2(-arg_1.b);
    global4 = -1i;
    global2 = array<vec2<u32>, 18>();
    global0 = var_0;
    var var_1 = arg_1;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 20>();
    var var_0 = abs(vec2<i32>(-global0.a, global0.a) & vec2<i32>(_wgslsmith_add_i32(global0.a, ~19004i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(global0.a, global0.a, -5311i), 1i)));
    let x = u_input.a;
    s_output = func_1(true, Struct_1(true, -1i), select(vec3<bool>(false, true, false), select(vec3<bool>(true, select(true, true, false), true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), true), !(var_0.x != 52292i)), true != (global1[_wgslsmith_index_u32(0u, 19u)] >= _wgslsmith_div_f32(-931f, global1[_wgslsmith_index_u32(u_input.a.x, 19u)]))), true);
}

