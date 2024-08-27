struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
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

var<private> global0: array<vec2<u32>, 30>;

var<private> global1: array<f32, 32>;

var<private> global2: f32 = 426f;

var<private> global3: array<vec2<u32>, 9>;

var<private> global4: vec2<f32> = vec2<f32>(-1857f, -913f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    global1 = array<f32, 32>();
    let var_0 = ~vec2<i32>(reverseBits(select(u_input.e, u_input.e, arg_0.b.x)) ^ 22885i, ~0i);
    let var_1 = true;
    global2 = _wgslsmith_f_op_f32(646f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.a.x, 32u)] + 509f));
    global4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1082f, _wgslsmith_f_op_f32(626f - -848f)));
    return _wgslsmith_mult_u32(abs(arg_0.a.x) >> ((4294967295u << (0u % 32u)) % 32u), 4294967295u);
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(661f - _wgslsmith_f_op_f32(f32(-1f) * -1725f));
    let var_1 = Struct_1(u_input.c.yww, vec3<bool>(true, false, !(!select(false, false, true))));
    var var_2 = vec4<bool>(var_1.b.x, true, true, false);
    var var_3 = var_1.b;
    var var_4 = select(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, func_3(var_1, var_0)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(global3[_wgslsmith_index_u32(u_input.c.x, 9u)], vec2<u32>(u_input.a, 1u)), _wgslsmith_div_vec2_u32(u_input.c.ww, vec2<u32>(var_1.a.x, 42011u)))), ~var_1.a.x, !(var_1.a.x > var_1.a.x)) | 0u;
    return Struct_2(Struct_1(~abs(u_input.c.xxw >> (u_input.c.www % vec3<u32>(32u))), var_2.xzy), 26203u, _wgslsmith_sub_vec2_u32(~min(var_1.a.yy, max(global3[_wgslsmith_index_u32(var_1.a.x, 9u)], var_1.a.xy)), var_1.a.zz), all(var_3.yx), vec4<bool>(var_3.x, !all(var_2.xxz), false, var_2.x));
}

fn func_1() -> f32 {
    let var_0 = func_2(_wgslsmith_mod_u32(u_input.c.x, ~u_input.a));
    let var_1 = firstTrailingBit(2147483647i);
    let var_2 = var_0.e.x;
    global1 = array<f32, 32>();
    global3 = array<vec2<u32>, 9>();
    return 391f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 32>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.x)) - -1000f), -515f, global4.x, global4.x))) + vec4<f32>(global1[_wgslsmith_index_u32(4895u, 32u)], _wgslsmith_f_op_f32(func_1()), 1448f, 649f));
    let var_1 = Struct_3(~vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-16629i, 1i, 25250i, u_input.b), vec4<i32>(-9902i, u_input.e, -43366i, u_input.e), vec4<i32>(0i, u_input.e, u_input.b, u_input.e)), -vec4<i32>(29204i, u_input.b, 1860i, 1i)), abs(firstTrailingBit(-12293i)), -abs(1i)), -((i32(-1i) * -14376i) >> (~u_input.a % 32u)) & u_input.b, Struct_2(func_2(_wgslsmith_add_u32(u_input.c.x, 1u)).a, _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, _wgslsmith_div_u32(u_input.c.x, 0u)), ~(u_input.a << (u_input.d % 32u))), vec2<u32>(func_2(u_input.d).b, _wgslsmith_mult_u32(u_input.c.x, ~39850u)), select(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false)), false), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, false, false))), ~u_input.b);
    var var_2 = ~vec3<u32>(1u, ~u_input.c.x, _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(u_input.d, 9u)], vec2<u32>(0u, 42349u)), ~(~var_1.c.c.x)));
    let var_3 = func_2(~(~1u)).a;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + _wgslsmith_f_op_f32(ceil(-699f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2007f)) - var_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - global1[_wgslsmith_index_u32(u_input.a, 32u)]), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.c.x, 32u)])), -240f), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(36412u, 32u)]))), var_0.wyz), _wgslsmith_sub_u32(var_1.c.a.a.x, var_3.a.x));
}

