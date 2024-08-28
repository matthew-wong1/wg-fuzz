struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 11284u;

var<private> global1: Struct_2 = Struct_2(1317f, Struct_1(62713u, 0u, vec3<i32>(-48945i, 2147483647i, 1i), 13349u, vec3<u32>(1u, 1u, 61945u)), vec3<bool>(false, false, false), false);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    let var_0 = 1395f;
    global0 = firstTrailingBit(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(8825u, arg_1.e.x), vec2<u32>(0u, 38528u)), vec2<u32>(40273u, u_input.a)), countOneBits(u_input.a >> (88634u % 32u)), 0u));
    let var_1 = global1.b;
    var var_2 = ~var_1.a | var_1.b;
    let var_3 = arg_1.c.xy;
    return global1.c.x;
}

fn func_2() -> u32 {
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-762f - global1.a), _wgslsmith_f_op_f32(global1.a + -1538f))) - _wgslsmith_f_op_f32(1808f * global1.a))), global1.b, select(global1.c, select(select(vec3<bool>(global1.d, global1.d, global1.c.x), vec3<bool>(global1.d, true, global1.d), !global1.c), vec3<bool>(select(global1.c.x, global1.d, false), !global1.d, global1.d & global1.d), !global1.c.x), false), any(global1.c.xz));
    global0 = ~3840u << (_wgslsmith_mult_u32(~abs(~u_input.a), global1.b.e.x) % 32u);
    let var_0 = Struct_2(global1.a, global1.b, select(!vec3<bool>(all(vec3<bool>(true, global1.d, global1.d)), func_3(vec4<i32>(global1.b.c.x, global1.b.c.x, global1.b.c.x, global1.b.c.x), global1.b), global1.c.x & false), vec3<bool>(false, (global1.b.b <= u_input.a) != false, all(global1.c.xx) | global1.c.x), ~(global1.b.c.x | 0i) <= -18494i), true);
    var var_1 = Struct_4(any(select(vec2<bool>(46601i > var_0.b.c.x, var_0.d == var_0.c.x), select(select(vec2<bool>(false, true), vec2<bool>(true, global1.d), true), global1.c.yz, var_0.c.zy), func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.c.x, global1.b.c.x, var_0.b.c.x, var_0.b.c.x), vec4<i32>(-726i, var_0.b.c.x, global1.b.c.x, global1.b.c.x)), var_0.b))), true);
    global0 = ~21808u;
    return ~global1.b.a;
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = Struct_1(14814u, ~(~abs(func_2())), vec3<i32>(global1.b.c.x, 2147483647i, -11431i), ~(~min(33772u, u_input.a)) | ((~11104u ^ ~global1.b.d) << (15231u % 32u)), global1.b.e);
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + -116f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3)) * -1199f)))), Struct_1(~global1.b.d, 0u, firstLeadingBit(var_0.c), 27869u, global1.b.e), select(select(vec3<bool>(arg_0.a & global1.c.x, true, true), vec3<bool>(global1.c.x || true, arg_0.a && global1.c.x, var_0.c.x >= -2147483647i), false), select(select(select(vec3<bool>(global1.c.x, arg_0.a, arg_0.a), global1.c, vec3<bool>(true, global1.c.x, false)), !vec3<bool>(global1.d, arg_0.a, true), vec3<bool>(global1.d, arg_0.a, true)), global1.c, select(vec3<bool>(true, true, true), select(global1.c, global1.c, global1.c), !vec3<bool>(arg_0.b, false, global1.c.x))), any(vec2<bool>(true, global1.d | true))), false);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, -1000f)) * _wgslsmith_div_f32(498f, _wgslsmith_f_op_f32(-global1.a)));
    var var_2 = -select(-(i32(-1i) * -2147483647i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.c.x, -8482i, global1.b.c.x), var_0.c)) | abs(~var_0.c.x), true);
    let var_3 = any(!select(vec2<bool>(true, all(vec3<bool>(false, false, false))), vec2<bool>(true, true), global1.c.zx));
    return 26725u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.a, 26604u) | func_1(Struct_4(true, true), _wgslsmith_f_op_f32(abs(global1.a)), u_input.a, _wgslsmith_f_op_f32(global1.a + global1.a)), _wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(global1.b.d, global1.b.d), firstTrailingBit(global1.b.a))), _wgslsmith_add_u32(1u, func_1(Struct_4(global1.c.x, true), -1173f, 1u, 116f)) | u_input.a), (firstLeadingBit(~vec3<u32>(u_input.a, 1u, 4294967295u)) | global1.b.e) >> ((~abs(global1.b.e) | ~countOneBits(global1.b.e)) % vec3<u32>(32u)));
    let var_1 = global1.b;
    var_0 = _wgslsmith_clamp_vec3_u32(~global1.b.e, vec3<u32>(2480u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 4294967295u, var_1.e.x, u_input.a), vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a), false), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.a, u_input.a, 35576u, global1.b.a), vec4<u32>(var_0.x, var_1.a, 54881u, 12545u))) | min(func_2(), 15553u << (0u % 32u)), ~_wgslsmith_sub_u32(var_0.x, ~global1.b.a)), _wgslsmith_sub_vec3_u32(global1.b.e, firstTrailingBit(vec3<u32>(0u, global1.b.e.x, max(var_1.b, 61514u)))));
    var var_2 = Struct_4(true, any(vec2<bool>(all(global1.c.zx), global1.d)));
    let var_3 = ~firstLeadingBit(_wgslsmith_dot_vec2_u32(var_1.e.xz, select(vec2<u32>(var_0.x, 0u), vec2<u32>(28185u, 1u), vec2<bool>(false, global1.d)))) ^ (~(~func_2()) >> (global1.b.d % 32u));
    var var_4 = Struct_3(~(~_wgslsmith_sub_vec2_u32(var_1.e.zy, var_1.e.xx) >> (reverseBits(vec2<u32>(var_1.b, 69023u)) % vec2<u32>(32u))), ~(~1u), 4294967295u, global1.b, firstTrailingBit(select(~vec4<i32>(1i, global1.b.c.x, -32194i, 0i), abs(-vec4<i32>(73252i, global1.b.c.x, 0i, var_1.c.x)), true)));
    var var_5 = Struct_1(~(~(~_wgslsmith_dot_vec3_u32(var_4.d.e, vec3<u32>(43973u, global1.b.b, var_1.e.x)))), _wgslsmith_div_u32(countOneBits(4294967295u), global1.b.e.x), ~firstLeadingBit(~vec3<i32>(-2147483647i, 2147483647i, -2147483647i)), min(abs(_wgslsmith_add_u32(var_3, 53642u)), var_4.c), _wgslsmith_mod_vec3_u32(reverseBits(var_1.e & global1.b.e) & _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 46441u, u_input.a), firstTrailingBit(vec3<u32>(4294967295u, 28144u, var_3))), global1.b.e));
    let var_6 = global1.c.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, 510f, global1.a), vec3<f32>(-618f, 395f, global1.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1413f, -403f, global1.a), vec3<f32>(1389f, global1.a, global1.a), global1.c.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-962f, 362f, global1.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1681f, -147f, global1.a) + vec3<f32>(global1.a, -696f, 1220f))) - vec3<f32>(565f, _wgslsmith_div_f32(global1.a, -507f), 832f))), max(var_5.e, vec3<u32>(54983u >> (var_5.a % 32u), 22029u, 66240u) << ((~vec3<u32>(var_3, 41830u, 42802u) >> (firstTrailingBit(vec3<u32>(81419u, 0u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u))), 61429u);
}

