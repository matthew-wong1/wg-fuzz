struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: u32) -> Struct_1 {
    global0 = array<vec3<u32>, 32>();
    global0 = array<vec3<u32>, 32>();
    global0 = array<vec3<u32>, 32>();
    return Struct_1(vec2<bool>(true, true), 4294967295u, vec2<bool>(true, all(vec3<bool>(true, true, true))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-717f, -1023f) + vec2<f32>(-617f, -1000f)))))))));
    global0 = array<vec3<u32>, 32>();
    global0 = array<vec3<u32>, 32>();
    global0 = array<vec3<u32>, 32>();
    let var_1 = 548f;
    return -2147483647i;
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<i32>) -> i32 {
    global0 = array<vec3<u32>, 32>();
    global0 = array<vec3<u32>, 32>();
    let var_0 = 1u;
    global0 = array<vec3<u32>, 32>();
    let var_1 = func_1(0u, _wgslsmith_div_i32(_wgslsmith_add_i32(firstTrailingBit(-1i), ~(i32(-1i) * -1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-17677i, countOneBits(-1i)), -(~vec2<i32>(arg_2.x, u_input.b.x)))), 1u);
    return max(firstTrailingBit(u_input.c), arg_2.x << (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0, u_input.a.x), u_input.a.xz) % 32u));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = -func_4(u_input.b.yyx, !all(vec2<bool>(true, true)), vec4<i32>(~reverseBits(arg_0), 1i, _wgslsmith_add_i32(arg_0 >> (u_input.a.x % 32u), ~(-36327i)), -func_3(Struct_1(vec2<bool>(true, true), u_input.a.x, vec2<bool>(false, true)), vec3<bool>(true, false, false), 35817i, Struct_1(vec2<bool>(true, true), u_input.a.x, vec2<bool>(false, true)))));
    var var_1 = Struct_1(vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)) | true, (arg_0 | _wgslsmith_sub_i32(var_0, arg_0)) != _wgslsmith_sub_i32(arg_0, u_input.c)), abs(u_input.a.x) << (select(_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, u_input.a.x)) >> (~12803u % 32u), ~12264u, true) % 32u), vec2<bool>(true, true));
    let var_2 = _wgslsmith_clamp_vec2_u32(countOneBits(abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(4294967295u, 0u)))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(var_1.b, var_1.b), firstLeadingBit(0u)) & abs(u_input.a.zz), u_input.a.xx), u_input.a.zx);
    global0 = array<vec3<u32>, 32>();
    var var_3 = var_1.c.x;
    return Struct_1(var_1.a, 83417u << (1u % 32u), vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 32>();
    var var_0 = func_1(~(~(~(~u_input.a.x))), ~_wgslsmith_mult_i32(_wgslsmith_div_i32(-u_input.b.x, _wgslsmith_div_i32(u_input.d, u_input.c)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1862i, 1i, 2147483647i), u_input.b.wwy), u_input.e)), abs(min(firstLeadingBit(u_input.a.x), select(u_input.a.x, 4294967295u, true)) << (_wgslsmith_dot_vec3_u32(u_input.a << (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 71585u)) % 32u)));
    var var_1 = func_2(u_input.e);
    var_1 = func_1(4294967295u, u_input.c, abs(abs(var_0.b & 0u) | 4294967295u));
    var_0 = func_2(firstTrailingBit(u_input.b.x));
    var_1 = func_1(~(~select(8816u, 7686u, func_2(u_input.c).a.x)), u_input.c, _wgslsmith_dot_vec4_u32(abs(~(vec4<u32>(var_1.b, 0u, 27801u, u_input.a.x) | vec4<u32>(18721u, var_1.b, u_input.a.x, var_0.b))), _wgslsmith_div_vec4_u32(firstTrailingBit(countOneBits(vec4<u32>(36348u, var_0.b, 0u, 1u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, var_1.b, var_0.b, var_1.b) ^ vec4<u32>(0u, 3087u, var_1.b, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b, var_1.b, u_input.a.x, 1u), vec4<u32>(var_0.b, 1u, var_1.b, 0u)), ~vec4<u32>(u_input.a.x, var_1.b, var_0.b, var_0.b)))));
    var var_2 = u_input.e;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f) - _wgslsmith_f_op_f32(-266f * -147f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -497f), -2331f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3, -1656f, var_3, -464f), vec4<f32>(var_3, 1190f, 383f, 2184f))))), -vec2<i32>(u_input.b.x, i32(-1i) * -u_input.e), _wgslsmith_f_op_f32(234f * var_3));
}

