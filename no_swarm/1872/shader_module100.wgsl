struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>) -> u32 {
    var var_0 = 1261f;
    var var_1 = arg_1.x;
    var var_2 = global0[_wgslsmith_index_u32(arg_2.x, 16u)];
    return arg_2.x;
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_4(u_input.e.x, _wgslsmith_add_i32(~u_input.d.x, _wgslsmith_clamp_i32(u_input.c, select(-u_input.d.x, 32946i >> (1u % 32u), false), u_input.d.x)), _wgslsmith_div_vec2_f32(vec2<f32>(350f, _wgslsmith_f_op_f32(ceil(-882f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-525f, _wgslsmith_f_op_f32(670f * 407f)))), (u_input.c << (_wgslsmith_mod_u32(~0u, u_input.a.x) % 32u)) ^ 11238i, vec2<bool>(true, all(vec3<bool>(true, true, true)) || (any(vec4<bool>(true, false, true, false)) | any(vec4<bool>(false, true, true, true)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x), var_0.c.x)), var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x) + _wgslsmith_f_op_f32(1669f + var_0.c.x))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, 491f), vec3<f32>(192f, -379f, -440f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), 123f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, -837f))), false));
    var var_2 = select(abs(vec2<i32>(u_input.b, u_input.d.x & u_input.d.x)), vec2<i32>(~(-u_input.d.x), -8304i), !var_0.e) << (_wgslsmith_div_vec2_u32(firstLeadingBit(min(u_input.a << (vec2<u32>(1u, 9010u) % vec2<u32>(32u)), ~u_input.e)), countOneBits(~vec2<u32>(1u, var_0.a)) >> (u_input.e % vec2<u32>(32u))) % vec2<u32>(32u));
    var_2 = u_input.d.yz;
    var var_3 = Struct_4(var_0.a, var_0.b, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d.xz >> (u_input.a % vec2<u32>(32u)), vec2<i32>(u_input.b, -52609i)), ~vec2<i32>(19431i, var_0.b))), !select(select(!vec2<bool>(false, var_0.e.x), !var_0.e, any(vec4<bool>(true, false, var_0.e.x, var_0.e.x))), !(!var_0.e), var_0.e.x));
    return ~(firstTrailingBit(~vec3<u32>(var_0.a, 61937u, var_3.a)) ^ ~vec3<u32>(~1u, select(var_3.a, u_input.e.x, true), _wgslsmith_mod_u32(var_0.a, 7821u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2) -> Struct_4 {
    global0 = array<Struct_2, 16>();
    let var_0 = u_input.b;
    let var_1 = global0[_wgslsmith_index_u32(~(~(~func_2(arg_2.a, vec4<f32>(592f, 316f, -581f, 1128f), arg_2.b.a) | ~u_input.a.x)), 16u)];
    let var_2 = -(~vec4<i32>(-1i, _wgslsmith_mult_i32(var_1.a.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.c, var_1.b.c, arg_2.b.c), vec4<i32>(var_0, 2147483647i, 0i, var_0))), firstLeadingBit(var_0), 20110i));
    var var_3 = Struct_4(~1u, u_input.d.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1369f + -2170f), _wgslsmith_f_op_f32(f32(-1f) * -762f)))), 773f), arg_2.a.c, select(arg_0.yx, arg_0.xx, arg_0.xx));
    return Struct_4(var_1.b.a.x, _wgslsmith_dot_vec4_i32(~(~var_2), vec4<i32>(abs(arg_2.b.c), ~(~(-12747i)), 65590i, 6537i)), var_3.c, _wgslsmith_mod_i32(_wgslsmith_mod_i32(firstLeadingBit(var_0), 1i), _wgslsmith_clamp_i32(~25909i, ~1i, _wgslsmith_mod_i32(var_3.d, var_3.b))), select(!(!(!arg_0.yx)), select(!select(vec2<bool>(true, arg_0.x), var_3.e, vec2<bool>(false, arg_0.x)), vec2<bool>(arg_0.x, arg_0.x), var_3.e), vec2<bool>(arg_1, any(select(var_3.e, vec2<bool>(false, false), arg_0.yy)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> vec4<u32> {
    let var_0 = select(u_input.e.x | arg_1.a.x, u_input.e.x, true);
    global0 = array<Struct_2, 16>();
    var var_1 = arg_0.x;
    var var_2 = func_4(vec3<bool>(!arg_1.d, true, true), arg_1.d, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.a.zyz, max(vec3<u32>(func_2(arg_1, vec4<f32>(arg_2, arg_2, arg_2, arg_0.x), vec4<u32>(arg_1.a.x, 4294967295u, u_input.a.x, 1923u)), ~1u, arg_1.a.x), func_3() & arg_1.a.xyz)), 16u)]);
    var var_3 = _wgslsmith_f_op_f32(trunc(-140f));
    return ~abs(vec4<u32>(var_2.a, 0u, u_input.e.x, arg_1.a.x & 4294967295u)) ^ (~_wgslsmith_mod_vec4_u32(vec4<u32>(23756u, var_0, 0u, var_2.a) << (arg_1.a % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(17858u, var_2.a, u_input.a.x, 37530u), arg_1.a)) << (arg_1.a % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(reverseBits(u_input.a.x) | _wgslsmith_sub_u32(u_input.e.x, _wgslsmith_dot_vec4_u32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-406f, 513f)), Struct_1(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 58267u), true, -35774i, true), 1f), max(firstTrailingBit(vec4<u32>(0u, u_input.e.x, 4294967295u, u_input.e.x)), firstLeadingBit(vec4<u32>(u_input.e.x, u_input.a.x, 56502u, u_input.e.x))))), 16u)];
    global0 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(vec3<u32>(4133u, 40021u, var_0.c.a.x) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 25650u, var_0.a.a.x), vec3<u32>(var_0.a.a.x, 60944u, var_0.c.a.x)) % vec3<u32>(32u)))));
}

