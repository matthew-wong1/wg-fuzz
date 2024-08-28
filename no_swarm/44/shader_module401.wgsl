struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: u32 = 18557u;

var<private> global2: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 25398i), vec2<i32>(-1i, 5293i), vec2<i32>(0i, -8716i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, -86889i), vec2<i32>(-18652i, 2147483647i), vec2<i32>(0i, -23367i), vec2<i32>(72946i, 2147483647i), vec2<i32>(80191i, 0i), vec2<i32>(14730i, -6813i), vec2<i32>(28758i, -5123i), vec2<i32>(-3358i, 0i), vec2<i32>(2147483647i, 20029i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-60142i, 31641i), vec2<i32>(-18645i, 34432i), vec2<i32>(1i, 1i), vec2<i32>(34352i, -1i), vec2<i32>(i32(-2147483648), 24415i), vec2<i32>(i32(-2147483648), 21964i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, -7790i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, -72503i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec2<u32> {
    global2 = array<vec2<i32>, 27>();
    global2 = array<vec2<i32>, 27>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1269f)), arg_1.x, u_input.a, ~((arg_1 << ((vec3<u32>(32113u, 1u, arg_1.x) >> (arg_1 % vec3<u32>(32u))) % vec3<u32>(32u))) & ~vec3<u32>(4294967295u, 1u, arg_1.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1765f * 683f))) * _wgslsmith_f_op_f32(max(-1385f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global2 = array<vec2<i32>, 27>();
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1840f, -844f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.a, 336f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.a) - _wgslsmith_f_op_f32(-var_0.a.a)), var_0.e.a)));
    return vec2<u32>(_wgslsmith_div_u32(abs((var_0.c >> (4294967295u % 32u)) | firstTrailingBit(var_0.b)), ~countOneBits(_wgslsmith_mult_u32(arg_1.x, 0u))), var_0.d.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: f32) -> i32 {
    global1 = _wgslsmith_div_u32(~u_input.a, _wgslsmith_dot_vec2_u32(~func_3(vec4<i32>(1i, -45402i, -55712i, 2147483647i), vec3<u32>(u_input.a, 0u, u_input.a)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), reverseBits(~(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))))));
    global0 = firstTrailingBit(u_input.a);
    var var_0 = -668f;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -577f)), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(~26819u, u_input.a)) ^ ~(~1u & firstLeadingBit(u_input.a)), u_input.a & u_input.a, ~(min(~vec3<u32>(54647u, u_input.a, u_input.a), abs(vec3<u32>(u_input.a, u_input.a, u_input.a))) ^ abs(~vec3<u32>(15468u, u_input.a, 0u))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1062f * 364f), -487f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(788f)))))));
    var_0 = var_1.a.a;
    return ~abs(9772i);
}

fn func_1() -> StorageBuffer {
    global0 = u_input.a ^ 7350u;
    var var_0 = vec3<i32>(1i, -48246i, func_2(vec4<bool>(true, false, any(vec3<bool>(false, true, false)), any(vec3<bool>(true, true, true))), !any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), _wgslsmith_f_op_f32(-1359f + 1f)));
    global1 = func_3(~vec4<i32>(abs(var_0.x), firstTrailingBit(-var_0.x), _wgslsmith_dot_vec2_i32(~var_0.zy, _wgslsmith_mult_vec2_i32(var_0.zx, vec2<i32>(var_0.x, var_0.x))), ~_wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x)), _wgslsmith_clamp_vec3_u32(reverseBits(select(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 57735u, u_input.a), false) ^ ~vec3<u32>(u_input.a, u_input.a, 1u)), firstTrailingBit(max(~vec3<u32>(4294967295u, 0u, 2585u), vec3<u32>(u_input.a, u_input.a, u_input.a))), ~abs(vec3<u32>(14725u, 44312u, 4294967295u) & vec3<u32>(u_input.a, 16045u, u_input.a)))).x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -232f))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(678f)), _wgslsmith_f_op_f32(floor(1701f)), true))));
    return StorageBuffer(var_2.a, vec2<f32>(_wgslsmith_f_op_f32(1000f + 1729f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a * -3065f), _wgslsmith_f_op_f32(exp2(var_2.a)))))), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(min(2147483647i, 1i), -18968i, var_0.x, var_0.x)), vec4<i32>(_wgslsmith_div_i32(abs(-37346i), var_0.x), 25250i, var_0.x | (var_0.x << (u_input.a % 32u)), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

