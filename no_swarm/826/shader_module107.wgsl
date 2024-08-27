struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1698f;

var<private> global1: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = u_input.c;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(895f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(-1000f, -314f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1195f) - _wgslsmith_f_op_f32(sign(1428f)))))));
    var var_1 = !(!(!(!vec4<bool>(true, arg_0, false, arg_0))));
    var_1 = !vec4<bool>(arg_0, !(!(1096u >= u_input.a)), true, any(vec2<bool>(false, true)));
    var var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, (1i >> (u_input.a % 32u)) | ~10947i, 8013i), var_0.xwx), -var_0.x);
    return !any(var_1.zwy);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec2<f32> {
    global0 = 1000f;
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1356f))) - 1124f), Struct_1(select(~1i, u_input.c.x, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1022f, 1188f, _wgslsmith_f_op_f32(sign(-177f)), _wgslsmith_f_op_f32(min(-1531f, -1754f))) + vec4<f32>(_wgslsmith_f_op_f32(select(468f, -263f, false)), _wgslsmith_div_f32(849f, -1000f), _wgslsmith_f_op_f32(select(-208f, 119f, false)), _wgslsmith_f_op_f32(-2180f * 1396f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-786f, -294f, -1644f)), 1f, arg_1.x), 1115f, Struct_1(_wgslsmith_mult_i32(-arg_0.x | arg_0.x, u_input.b.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 374f, 707f, 943f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(335f, -348f, -806f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-481f, 933f, -178f))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))))), 198f, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.x, 1u, 10415u), vec4<u32>(1u, 4294967295u, u_input.a, 32215u)) | _wgslsmith_mod_u32(46921u, u_input.a)));
    global1 = ~_wgslsmith_div_u32(53905u, 10984u);
    let var_1 = Struct_5(var_0, firstTrailingBit(_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a, 22950u, 1u, u_input.a)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d.e, 0u, arg_1.x, 78829u), vec4<u32>(u_input.a, 48333u, var_0.b.e, 8486u), vec4<u32>(u_input.a, u_input.a, u_input.a, var_0.b.e)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 91u, u_input.a, arg_1.x), vec4<u32>(4294967295u, var_0.b.e, u_input.a, 4294967295u))))), var_0);
    var var_2 = Struct_3(~var_0.b.e, u_input.c.zxy, select(-select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_1.c.d.a, arg_0.x), u_input.c), abs(u_input.c), vec4<bool>(true, true, true, true)), vec4<i32>(-var_1.c.d.a, -2147483647i, -1i, abs(-4453i)), ((var_1.a.b.a >> (71751u % 32u)) < _wgslsmith_sub_i32(u_input.b.x, -2147483647i)) || true));
    return vec2<f32>(609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1283f + -572f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: f32, arg_3: vec3<u32>) -> StorageBuffer {
    global1 = 1u;
    global0 = 132f;
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3((vec2<i32>(u_input.c.x, 9731i) ^ u_input.c.ww) | vec2<i32>(51381i, 29671i), vec3<u32>(max(60541u, 1u), arg_3.x, abs(4294967295u))))), Struct_2(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_2, arg_2))))), Struct_1(_wgslsmith_add_i32(u_input.b.x, u_input.b.x) >> (4294967295u % 32u), vec4<f32>(_wgslsmith_f_op_f32(floor(-379f)), 216f, _wgslsmith_f_op_f32(-1400f - 228f), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -197f, 1571f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1410f, arg_2, -891f) + vec3<f32>(arg_2, arg_2, -2270f))), arg_2, 1u), arg_2, Struct_1(u_input.b.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -464f, arg_2, arg_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -143f, arg_2, -345f) + vec4<f32>(535f, arg_2, -372f, -599f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, 149f, 1729f), vec3<f32>(arg_2, 1856f, 804f)))), arg_2, _wgslsmith_mult_u32(45578u, 3116u))), max(~countOneBits(vec4<u32>(4294967295u, 17661u, arg_0.x, u_input.a)), vec4<u32>(20973u, 4294967295u, ~arg_3.x, max(1u, 52998u))) | (firstTrailingBit(~vec4<u32>(arg_3.x, arg_3.x, 4294967295u, arg_0.x)) >> (countOneBits(~vec4<u32>(arg_0.x, 37843u, 4294967295u, 16717u)) % vec4<u32>(32u))));
    global1 = ~1u;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(819f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -732f)))), Struct_1(countOneBits(_wgslsmith_add_i32(-var_0.b.d.a, -26944i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.b.d.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, arg_2, -891f, -2521f), var_0.b.b.b))))), vec3<f32>(var_0.b.c, arg_2, _wgslsmith_div_f32(arg_2, 716f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-358f)))) + -1191f), _wgslsmith_dot_vec2_u32(vec2<u32>(49452u, var_0.c.x), ~(~arg_3.xy))), -577f, var_0.b.b);
    return StorageBuffer(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(_wgslsmith_mult_u32(7287u, var_0.c.x), ~var_0.b.d.e, 1u, _wgslsmith_clamp_u32(0u, 4294967295u, var_1.d.e))), vec4<u32>(arg_3.x, abs(~4294967295u), var_1.d.e | ~var_1.d.e, ~abs(1u))), _wgslsmith_f_op_f32(f32(-1f) * -1065f), vec4<i32>(0i, _wgslsmith_dot_vec3_i32(u_input.c.xzx, ~_wgslsmith_sub_vec3_i32(u_input.c.wwy, u_input.c.xzy)), -27418i, var_1.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(vec3<u32>(14987u, ~firstLeadingBit(~4294967295u), u_input.a), func_1(u_input.d <= _wgslsmith_div_i32(u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, 0i))), -932f, vec3<u32>(u_input.a, u_input.a, u_input.a));
}

