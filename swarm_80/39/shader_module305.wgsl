struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: u32) -> f32 {
    global0 = _wgslsmith_clamp_u32(arg_2.b, 12646u, ~_wgslsmith_mod_u32(arg_1.a.b, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b.x, 38920u, 4294967295u)), vec3<u32>(49271u, 14176u, u_input.c.x))));
    return -847f;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1, Struct_4(Struct_1(arg_0, u_input.b.x, vec3<i32>(1i, u_input.d, 0i)), false, arg_1.zz), Struct_1(vec4<i32>(2147483647i, arg_0.x, 2147483647i, u_input.d), u_input.e, arg_0.zyx), 1u)) * arg_1.x))))) * _wgslsmith_f_op_f32(-arg_1.x));
    var var_1 = arg_1.x;
    var var_2 = ~arg_0.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(567f, arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1312f)), 1816f))));
    var var_4 = Struct_2(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.d, 17987i), vec3<i32>(2147483647i, arg_0.x, arg_0.x)) << (u_input.b.x % 32u));
    return Struct_2(-1i);
}

fn func_1() -> vec4<u32> {
    var var_0 = -2190f;
    let var_1 = func_2(firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(30015i, u_input.d, u_input.a.x, -1i), u_input.a), ~u_input.a), u_input.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(669f, 1385f, -787f, -678f), vec4<f32>(385f, 1123f, -413f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(575f, -1000f, 1004f, -1375f)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-2105f, -250f, 508f, 1905f), vec4<f32>(-174f, 1080f, 1384f, 1445f))))), !(u_input.d > abs(-1i)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(386f)), _wgslsmith_f_op_f32(f32(-1f) * -592f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1347f)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1294f, _wgslsmith_f_op_f32(round(618f))))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-423f - _wgslsmith_f_op_f32(-993f * 219f)))));
    let var_3 = u_input.c.xx;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-354f)));
    return ~(~(~((vec4<u32>(69622u, 91612u, var_3.x, var_3.x) & vec4<u32>(u_input.e, 0u, u_input.e, var_3.x)) & vec4<u32>(0u, 4294967295u, 39568u, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = -28796i;
    var var_2 = ~func_1();
    let var_3 = var_1;
    var var_4 = Struct_4(Struct_1(~u_input.a, ~(~_wgslsmith_sub_u32(var_2.x, var_2.x)), vec3<i32>(_wgslsmith_add_i32(var_3, 60216i), 2147483647i, max(1i, -18816i)) ^ vec3<i32>(_wgslsmith_mult_i32(-12787i, var_3), firstTrailingBit(var_1), ~u_input.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(164f, -279f)))), _wgslsmith_f_op_f32(f32(-1f) * -707f))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-296f * _wgslsmith_f_op_f32(1135f - -1096f)), _wgslsmith_f_op_f32(f32(-1f) * -217f))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(340f, -1381f), vec2<f32>(-1215f, -1000f), vec2<bool>(true, true)))), vec2<f32>(_wgslsmith_f_op_f32(727f * 563f), _wgslsmith_f_op_f32(sign(-1184f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-963f, -240f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-509f, -427f))))));
    var_0 = 3722i;
    var_0 = _wgslsmith_dot_vec4_i32(-u_input.a << (reverseBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_4.a.b, var_2.x, 4294967295u, 1u), vec4<u32>(var_2.x, var_2.x, u_input.e, var_2.x))) % vec4<u32>(32u)), ~var_4.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_4.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1430f - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(574f, var_4.c.x, var_4.c.x, var_4.c.x))), Struct_4(var_4.a, var_4.b, vec2<f32>(-363f, -947f)), Struct_1(vec4<i32>(var_1, u_input.a.x, -26437i, var_3), 4294967295u, var_4.a.c), min(var_4.a.b, var_4.a.b))))), vec4<u32>(_wgslsmith_div_u32(16680u, abs(56033u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 29031u, 1u, 4294967295u), vec4<u32>(u_input.c.x, var_2.x, 0u, var_2.x)) % 32u)), abs(814u), max((4294967295u >> (var_2.x % 32u)) >> (_wgslsmith_mod_u32(12410u, 79943u) % 32u), _wgslsmith_mod_u32(_wgslsmith_add_u32(4024u, 66856u), firstLeadingBit(13854u))), 51947u));
}

