struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(45034u, 38620u, 4294967295u, 1u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 46384u, 79406u));

var<private> global1: array<Struct_3, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<bool>) -> i32 {
    global1 = array<Struct_3, 16>();
    return min(14764i, -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.c.x, u_input.d.x, u_input.c.x, u_input.d.x), vec4<i32>(u_input.d.x, 33623i, u_input.c.x, u_input.d.x), false), vec4<i32>(-14858i, u_input.d.x, u_input.d.x, u_input.c.x)), vec4<i32>(-26117i, u_input.c.x, 31043i, -22472i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    global1 = array<Struct_3, 16>();
    let var_0 = _wgslsmith_sub_vec4_u32(~(select(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(u_input.b.x, 3u)] | vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), all(vec2<bool>(false, false))) | vec4<u32>(select(4294967295u, u_input.a, false), 1u, u_input.b.x & u_input.a, _wgslsmith_div_u32(u_input.b.x, 0u))), global0[_wgslsmith_index_u32(~(~(~2083u) | min(39309u | u_input.a, u_input.b.x)), 3u)]);
    let var_1 = Struct_2(vec4<bool>(any(vec3<bool>(false, true, true)) != all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), (any(vec2<bool>(true, true)) | true) & !any(vec4<bool>(false, true, true, true)), true, !all(vec2<bool>(true, true))), ~(~vec4<u32>(u_input.b.x, u_input.a ^ var_0.x, ~var_0.x, _wgslsmith_mod_u32(89035u, u_input.b.x))), -519f, u_input.b);
    return true;
}

fn func_4(arg_0: vec2<bool>) -> vec2<i32> {
    var var_0 = ~((_wgslsmith_div_u32(u_input.a, _wgslsmith_sub_u32(u_input.b.x, 0u)) | _wgslsmith_sub_u32(~u_input.a, 43908u)) << (abs(49555u) % 32u));
    var var_1 = -_wgslsmith_mod_i32(-10566i, 875i);
    let var_2 = Struct_3(u_input.a, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(495f + 443f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(701f, -686f)) * _wgslsmith_f_op_f32(step(-750f, 342f))), -266f, -1188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1569f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-578f, 316f, -408f)))), Struct_1(1f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(193f)), _wgslsmith_f_op_f32(-2470f * -495f), _wgslsmith_f_op_f32(-623f * -113f), 244f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(580f, -1000f, -165f, -1495f)), !select(vec4<bool>(true, true, true, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, true), true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(156f, 1150f, -2347f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-426f, 2499f, 261f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1133f, 444f, -939f), vec3<f32>(727f, -837f, -1062f)))))), Struct_1(_wgslsmith_f_op_f32(344f * -182f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(295f, -803f, 288f, -147f) * vec4<f32>(-858f, 956f, -2090f, 144f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 356f, -1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-874f, 1128f, 1324f) - vec3<f32>(-1744f, -894f, -1053f))))));
    global0 = array<vec4<u32>, 3>();
    let var_3 = -(~vec2<i32>(-2147483647i, _wgslsmith_div_i32(-u_input.c.x, 3312i)));
    return vec2<i32>(var_3.x, ~((i32(-1i) * -u_input.d.x) & var_3.x));
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(vec2<bool>(false, func_3(vec4<i32>(79269i ^ u_input.c.x, u_input.d.x, u_input.c.x ^ 0i, _wgslsmith_sub_i32(u_input.d.x, 0i)), Struct_1(_wgslsmith_f_op_f32(abs(-1000f)), vec4<f32>(1538f, 1104f, 641f, -1160f), vec3<f32>(1200f, -1000f, -1712f)))));
    var var_1 = 0u;
    var_1 = u_input.a;
    var_0 = max(vec2<i32>(-1i, u_input.d.x), vec2<i32>(~0i, _wgslsmith_dot_vec3_i32(u_input.d, u_input.d)) & _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_0.x, var_0.x), -var_0.x), vec2<i32>(_wgslsmith_add_i32(var_0.x, -2147483647i), _wgslsmith_add_i32(-1i, 2147483647i))));
    global1 = array<Struct_3, 16>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1127f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1001f), _wgslsmith_f_op_f32(round(-817f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-662f * -865f))))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(898f, _wgslsmith_f_op_f32(floor(-987f)), true))), 251f, -748f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-270f, 771f, 1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-459f, 915f), -605f, -171f)), vec3<bool>(all(vec2<bool>(true, true)), _wgslsmith_clamp_u32(1u, 1u, 21445u) > 79495u, all(vec3<bool>(true, true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-11993i, ~_wgslsmith_sub_i32(select(9006i, func_1(vec4<u32>(51212u, 1u, 0u, 4294967295u), Struct_2(vec4<bool>(true, false, false, false), vec4<u32>(1u, u_input.b.x, 1u, u_input.b.x), -1064f, u_input.b), vec4<bool>(true, false, false, false)), true), min(-1i, u_input.d.x)));
    let var_1 = u_input.b.x;
    var_0 = u_input.d.zy;
    let var_2 = 2147483647i;
    let var_3 = ~u_input.c.x;
    let var_4 = true;
    let var_5 = abs(abs(firstLeadingBit(u_input.c.x & u_input.d.x) << (_wgslsmith_div_u32(_wgslsmith_div_u32(var_1, var_1), var_1) % 32u)));
    var var_6 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_6.b.x, 279f)))), vec4<u32>(u_input.a, ~(~var_1), u_input.a, u_input.b.x), _wgslsmith_dot_vec2_u32(firstTrailingBit(select(_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(4294967295u, 70798u)), ~u_input.b, !var_4)), u_input.b), vec2<u32>(1u, 1u), u_input.c);
}

