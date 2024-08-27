struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: i32 = 0i;

var<private> global2: f32;

var<private> global3: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_2(35162i, 19344i, vec2<i32>(-15602i, 21340i))), Struct_3(Struct_2(51323i, -1i, vec2<i32>(0i, -2779i))), Struct_3(Struct_2(20548i, 0i, vec2<i32>(-34544i, 0i))), Struct_3(Struct_2(-18592i, 1i, vec2<i32>(2147483647i, 10408i))), Struct_3(Struct_2(2147483647i, -14082i, vec2<i32>(0i, -21187i))), Struct_3(Struct_2(-11214i, 18639i, vec2<i32>(0i, 3030i))), Struct_3(Struct_2(1i, i32(-2147483648), vec2<i32>(1i, 2147483647i))), Struct_3(Struct_2(31049i, -43989i, vec2<i32>(17929i, 32122i))), Struct_3(Struct_2(1i, 78598i, vec2<i32>(i32(-2147483648), -8924i))), Struct_3(Struct_2(-6865i, 0i, vec2<i32>(-7448i, i32(-2147483648)))), Struct_3(Struct_2(1502i, -1i, vec2<i32>(36386i, -10995i))), Struct_3(Struct_2(-674i, i32(-2147483648), vec2<i32>(-6380i, -1i))), Struct_3(Struct_2(-15378i, 46139i, vec2<i32>(6026i, -39701i))), Struct_3(Struct_2(26383i, 3675i, vec2<i32>(-19613i, -30520i))));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> i32 {
    global0 = vec2<f32>(306f, _wgslsmith_f_op_f32(-global0.x));
    let var_0 = 796f;
    global1 = -4582i;
    global3 = array<Struct_3, 14>();
    var var_1 = firstTrailingBit(~abs(u_input.c.xyw));
    return 89580i;
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_2(u_input.b.x, _wgslsmith_dot_vec3_i32(~select(_wgslsmith_sub_vec3_i32(vec3<i32>(-29505i, u_input.b.x, u_input.b.x), vec3<i32>(1i, u_input.b.x, u_input.b.x)), vec3<i32>(u_input.b.x, u_input.b.x, 24520i), all(vec4<bool>(true, true, false, true))), vec3<i32>(8046i, ~firstLeadingBit(51543i), 11099i)), -(~u_input.b));
    var_0 = Struct_2(~u_input.b.x ^ var_0.c.x, u_input.b.x, _wgslsmith_sub_vec2_i32(-u_input.b, u_input.b));
    let var_1 = select(vec2<bool>(all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), false)), false), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), false);
    var var_2 = Struct_2(-1i, _wgslsmith_add_i32(2147483647i, u_input.b.x) >> (~1427u % 32u), var_0.c);
    var var_3 = false;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-373f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global0.x))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1858f, global0.x) * vec2<f32>(global0.x, -554f))))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<bool>) -> i32 {
    let var_0 = u_input.d.yxw;
    var var_1 = global0.x;
    global2 = 215f;
    var var_2 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, countOneBits(u_input.b.x)), _wgslsmith_mult_i32(firstLeadingBit(~(-1i)), -21518i)), select(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b.x, arg_1.c.x, -1i, u_input.b.x), vec4<i32>(arg_1.c.x, arg_1.b, -49428i, u_input.b.x)), vec4<i32>(-1i) * -vec4<i32>(arg_1.a, u_input.b.x, arg_1.b, u_input.b.x)), arg_1.c.x, arg_0.x), ~_wgslsmith_add_vec2_i32(~(~vec2<i32>(0i, u_input.b.x)), vec2<i32>(func_2(), 1i)));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 964f) + 733f), global0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 119f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(-1048f, global0.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1023f) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x)))))));
    return _wgslsmith_clamp_i32(arg_1.c.x, ~(-(~(-16464i))), arg_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_clamp_i32(36951i, 37808i, ~reverseBits(_wgslsmith_sub_i32(func_1(vec3<bool>(true, false, true), Struct_2(u_input.b.x, u_input.b.x, vec2<i32>(u_input.b.x, u_input.b.x)), vec4<bool>(true, true, true, false)), u_input.b.x >> (u_input.c.x % 32u))));
    var var_0 = _wgslsmith_add_i32(-1i, abs(-u_input.b.x) >> (abs(u_input.d.x) % 32u));
    let var_1 = Struct_1(111f, _wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.b.x, countOneBits(u_input.b.x), ~u_input.b.x), select(~vec3<i32>(-56591i, -12352i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 0i) << (vec3<u32>(16431u, 74027u, u_input.d.x) % vec3<u32>(32u)), vec3<bool>(true, true, true))) >> (vec3<u32>(u_input.a.x, (0u << (u_input.a.x % 32u)) << (95145u % 32u), 11151u) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), _wgslsmith_sub_i32(u_input.b.x ^ ~abs(1i), 1i), vec2<i32>(~firstTrailingBit(firstTrailingBit(34363i)), u_input.b.x), 1i, vec2<f32>(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -147f)));
}

