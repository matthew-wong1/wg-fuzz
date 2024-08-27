struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25>;

var<private> global1: array<bool, 12> = array<bool, 12>(true, true, true, false, true, true, false, true, true, false, true, false);

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(778f, false, Struct_1(true), 1u), Struct_2(347f, true, Struct_1(true), 63347u), Struct_2(-227f, true, Struct_1(true), 89669u), Struct_2(359f, false, Struct_1(false), 4294967295u), Struct_2(-1722f, true, Struct_1(true), 6381u), Struct_2(-679f, false, Struct_1(true), 22244u), Struct_2(-2179f, false, Struct_1(true), 15805u), Struct_2(-249f, true, Struct_1(false), 0u), Struct_2(-383f, true, Struct_1(true), 0u), Struct_2(228f, true, Struct_1(false), 1u), Struct_2(-709f, true, Struct_1(true), 19720u), Struct_2(-633f, true, Struct_1(true), 0u), Struct_2(1000f, false, Struct_1(true), 0u), Struct_2(1000f, true, Struct_1(true), 4294967295u), Struct_2(-931f, false, Struct_1(true), 0u), Struct_2(-625f, false, Struct_1(false), 12732u), Struct_2(-1000f, true, Struct_1(false), 22824u), Struct_2(-1000f, true, Struct_1(true), 28007u), Struct_2(829f, true, Struct_1(true), 1u), Struct_2(-218f, true, Struct_1(true), 1u), Struct_2(-2804f, false, Struct_1(true), 0u), Struct_2(1000f, false, Struct_1(false), 26048u), Struct_2(1879f, false, Struct_1(true), 44722u), Struct_2(-1610f, false, Struct_1(false), 4294967295u), Struct_2(-953f, true, Struct_1(true), 65316u), Struct_2(997f, false, Struct_1(false), 59047u), Struct_2(479f, true, Struct_1(false), 35223u), Struct_2(-159f, false, Struct_1(true), 1u), Struct_2(-726f, false, Struct_1(true), 4294967295u), Struct_2(-820f, true, Struct_1(false), 87692u), Struct_2(-993f, true, Struct_1(false), 0u));

var<private> global3: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    var var_0 = ~(-476i);
    let var_1 = Struct_1(select(false, -u_input.d >= (_wgslsmith_mult_i32(-7426i, 0i) << (~u_input.e.x % 32u)), true));
    let var_2 = global2[_wgslsmith_index_u32(0u, 31u)];
    var_0 = u_input.d;
    var var_3 = var_2.d < ~(u_input.c >> (u_input.c % 32u));
    return var_2.c;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(firstTrailingBit(~5756i), u_input.d), _wgslsmith_add_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, u_input.d))), vec2<i32>(_wgslsmith_clamp_i32(u_input.d, 41296i, u_input.d), -5284i))) & _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-1i, 1i)), vec2<i32>(u_input.d, -30165i)), ~vec2<i32>(~u_input.d, u_input.d ^ -1i), vec2<i32>(u_input.d, i32(-1i) * -u_input.d));
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-392f, 519f)))))) * _wgslsmith_f_op_f32(-1f));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), -2043f, _wgslsmith_f_op_f32(f32(-1f) * -780f))));
    let var_4 = var_1;
    return 189f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 31>();
    global1 = array<bool, 12>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-541f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-456f, _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-460f - -110f) + _wgslsmith_f_op_f32(340f - -393f)))), 430f) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-805f + -514f), _wgslsmith_f_op_f32(f32(-1f) * -913f), 413f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1087f, -133f, 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-476f, 231f, 1293f) * vec3<f32>(-1344f, -2200f, -732f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(179f, 340f, 808f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-486f, 419f, -168f), vec3<f32>(770f, -1000f, -398f))), 111465u != u_input.c))))));
    var var_1 = func_2();
    global3 = 231f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(firstTrailingBit(-1i), 1i));
}

