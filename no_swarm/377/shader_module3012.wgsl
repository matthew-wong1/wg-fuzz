struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<i32>, 23>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<i32>, arg_3: i32) -> bool {
    let var_0 = vec4<f32>(arg_0.x, arg_1, -1114f, arg_1);
    var var_1 = vec3<i32>(arg_3, 2147483647i, -_wgslsmith_mod_i32(select(-2147483647i, ~arg_3, true), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, 35370i, arg_2.x), vec4<i32>(13936i, 8072i, arg_3, -41071i)) ^ 2147483647i));
    let var_2 = Struct_2(~(~countOneBits(vec2<u32>(u_input.b, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(687f)), _wgslsmith_f_op_f32(floor(arg_0.x))) - -1505f)), Struct_1(var_0.x, select(1224f >= _wgslsmith_f_op_f32(min(arg_1, arg_1)), true, all(vec3<bool>(true, true, false)) & true), arg_2, vec3<u32>(u_input.a ^ 35962u, ~32844u ^ select(u_input.a, u_input.b, true), 115463u)), u_input.a);
    var var_3 = Struct_3(44458u, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1516f - _wgslsmith_f_op_f32(ceil(242f))))), _wgslsmith_f_op_f32(f32(-1f) * -681f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -308f), max(vec2<i32>(u_input.c, -var_1.x), vec2<i32>(25414i, var_1.x)), var_2.c.d | ~(~var_2.c.d)), vec3<bool>(var_2.c.b != (-245f <= _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))), var_2.c.b, !(!(var_2.c.c.x >= -1i))));
    global1 = array<vec2<i32>, 23>();
    return var_2.c.b != (~var_3.b.d.x <= 1u);
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> vec2<u32> {
    var var_0 = Struct_3(u_input.b, Struct_1(-818f, func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1067f, 248f, -201f, 981f) * vec4<f32>(721f, -482f, 296f, 1000f)), vec4<f32>(702f, 994f, 130f, -480f)), _wgslsmith_f_op_f32(min(-737f, _wgslsmith_f_op_f32(1000f + -929f))), global1[_wgslsmith_index_u32(4294967295u, 23u)], -u_input.c), -(~global1[_wgslsmith_index_u32(0u, 23u)]) << (_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(1u, u_input.b)) % vec2<u32>(32u)), ~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.b, u_input.a), ~vec3<u32>(4294967295u, u_input.b, 0u))), !vec3<bool>(false, !any(vec4<bool>(true, true, true, false)), arg_0.x));
    global1 = array<vec2<i32>, 23>();
    var var_1 = var_0.b;
    global1 = array<vec2<i32>, 23>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(sign(1106f)))), var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -737f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1914f, var_1.a) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_1.a);
    return select(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32((vec2<u32>(var_0.b.d.x, var_0.a) & var_1.d.zx) >> (abs(var_0.b.d.xy) % vec2<u32>(32u)), ~abs(vec2<u32>(4294967295u, 1u))), firstTrailingBit(select(~var_0.b.d.xz, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 14597u), var_0.b.d.xx, var_1.d.xz), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), var_0.c.x))), ~reverseBits(~var_0.b.d.zy)), vec2<u32>(_wgslsmith_clamp_u32(max(54588u >> (u_input.a % 32u), u_input.b >> (1u % 32u)), ~firstLeadingBit(0u), var_0.a), ~1u), arg_0.x);
}

fn func_1() -> Struct_4 {
    global1 = array<vec2<i32>, 23>();
    let var_0 = Struct_2(select(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, u_input.a), ~vec2<u32>(60119u, u_input.b)), ~(~func_2(vec2<bool>(true, false), false)), vec2<bool>(false, ~u_input.b < u_input.b)), _wgslsmith_f_op_f32(round(1250f)), Struct_1(-891f, true, abs(global1[_wgslsmith_index_u32(0u, 23u)] >> (vec2<u32>(9177u, u_input.b) % vec2<u32>(32u))) | vec2<i32>(2147483647i, _wgslsmith_mult_i32(-2147483647i, u_input.c)), (~vec3<u32>(u_input.a, u_input.a, u_input.b) | vec3<u32>(4294967295u, u_input.b, u_input.a)) << (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 31194u, 4294967295u), vec3<u32>(4294967295u, u_input.b, 1u)), u_input.b, u_input.b) % vec3<u32>(32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 94735u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a ^ u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.b, u_input.b)), 70258u), vec3<u32>(_wgslsmith_mult_u32(95070u, 0u), ~u_input.a, ~u_input.a))));
    let var_1 = var_0.a.x;
    let var_2 = Struct_4(false);
    let var_3 = var_2;
    return Struct_4(false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-692f, -347f, -974f) + vec3<f32>(-867f, -1000f, 652f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(2086f, 1294f)), _wgslsmith_f_op_f32(max(877f, -632f)), 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-407f, 1107f, 734f)))))))));
    var var_2 = u_input.c;
    var var_3 = u_input.c;
    var var_4 = !vec2<bool>(any(vec3<bool>(var_0.a, !var_0.a, all(vec2<bool>(var_0.a, false)))), true);
    let var_5 = Struct_1(_wgslsmith_f_op_f32(1000f + -1671f), !any(vec2<bool>(true, true)), ~global1[_wgslsmith_index_u32(~23632u, 23u)] | abs(vec2<i32>(_wgslsmith_add_i32(u_input.c, u_input.c), u_input.c << (0u % 32u))), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, -63864i, vec2<u32>(var_5.d.x, _wgslsmith_div_u32(~(~var_5.d.x), min(var_5.d.x, 0u))), ~_wgslsmith_div_u32(firstTrailingBit(var_5.d.x) >> (~u_input.a % 32u), _wgslsmith_add_u32(21490u, u_input.a)));
}

