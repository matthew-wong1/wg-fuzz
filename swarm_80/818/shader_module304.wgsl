struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec2<bool>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global2: vec2<i32> = vec2<i32>(41714i, 2147483647i);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2008f, _wgslsmith_div_f32(109f, -833f), -1127f), vec3<f32>(-582f, _wgslsmith_f_op_f32(round(-989f)), _wgslsmith_f_op_f32(f32(-1f) * -1025f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(701f, 1031f, 548f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-466f, 332f, -1002f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1260f, -721f, 2305f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(531f, -1607f, 1000f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1186f, 619f, 1342f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1181f + -1000f), -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1386f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -981f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), -1023f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))));
    global2 = vec2<i32>(-(~(~(~(-2147483647i)))), _wgslsmith_sub_i32(reverseBits(-2147483647i) & global2.x, ~(~(global2.x & global2.x))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var var_1 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -1493f));
    return _wgslsmith_add_i32(-4769i, 12025i);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: f32) -> i32 {
    return ~_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, -_wgslsmith_add_i32(global2.x, global2.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(global2.x, 2147483647i, -1i, arg_0.c.a), -vec4<i32>(global2.x, global2.x, arg_0.c.a, -1i))), reverseBits(-vec3<i32>(arg_0.c.a, 20774i, -39248i)));
}

fn func_1(arg_0: u32, arg_1: bool) -> i32 {
    global2 = -_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, global2.x), vec2<i32>(_wgslsmith_mod_i32(1i, global2.x), func_2())), vec2<i32>(func_3(Struct_2(-1311f, false, Struct_1(44675i)), u_input.a, firstLeadingBit(u_input.a), -908f), ~global2.x));
    var var_0 = min(_wgslsmith_mod_vec4_i32(vec4<i32>(-(~global2.x), -1i, _wgslsmith_mod_i32(global2.x, max(global2.x, global2.x)), global2.x), vec4<i32>(_wgslsmith_sub_i32(global2.x, global2.x), firstTrailingBit(global2.x), global2.x, 12870i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1i, -39289i, -31075i), -vec4<i32>(global2.x, -14470i, global2.x, global2.x))), reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global2.x, 2147483647i, global2.x) ^ vec4<i32>(2147483647i, global2.x, global2.x, global2.x), select(vec4<i32>(36031i, -2147483647i, 8148i, global2.x), vec4<i32>(global2.x, -2147483647i, global2.x, 33765i), vec4<bool>(false, arg_1, true, arg_1))), -vec4<i32>(global2.x, global2.x, 1i, global2.x))));
    var_0 = vec4<i32>(-(~var_0.x), var_0.x, -var_0.x, global2.x) ^ _wgslsmith_sub_vec4_i32(~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -2147483647i, -1i, var_0.x), vec4<i32>(global2.x, 0i, -26467i, var_0.x))), max(~vec4<i32>(17588i, -1i, 18232i, var_0.x), ~vec4<i32>(-5155i, -2147483647i, global2.x, -1i)) >> (~vec4<u32>(4294967295u, arg_0, arg_0, arg_0) % vec4<u32>(32u)));
    global2 = vec2<i32>(2147483647i, global2.x);
    let var_1 = Struct_1(50908i);
    return 90395i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 12>();
    let var_0 = ~(~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), ~u_input.a)) | (_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_add_vec2_u32(u_input.a, u_input.a))) >> (vec2<u32>(firstTrailingBit(~u_input.a.x), u_input.a.x) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_mod_i32(func_1(~var_0.x, true) | (_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 23870i, global2.x, -46168i), vec4<i32>(global2.x, -1i, -17537i, global2.x)) | countOneBits(global2.x)), global2.x) | 0i;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(609f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(876f + 908f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(460f)) - _wgslsmith_f_op_f32(-745f - 609f))))) < 860f;
    let var_3 = var_0.x << (~(abs(_wgslsmith_dot_vec2_u32(var_0, u_input.a)) | ~u_input.a.x) % 32u);
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1385f)), -844f)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2222f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, ~var_3 | 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3, var_0.x), vec2<u32>(var_0.x, 4294967295u))), vec3<u32>(4294967295u, ~(~var_3), u_input.a.x << (~var_3 % 32u))));
}

