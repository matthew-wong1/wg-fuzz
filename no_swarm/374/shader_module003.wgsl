struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-1465f, -1321f, 788f, 1441f), vec4<f32>(1042f, 1820f, -1491f, -687f), vec4<f32>(387f, 1795f, 1363f, 1526f), vec4<f32>(481f, 586f, 1532f, 481f), vec4<f32>(-1059f, -480f, -257f, -1736f), vec4<f32>(826f, 516f, 992f, -1156f), vec4<f32>(-1795f, 1004f, -484f, 1957f), vec4<f32>(-534f, 1527f, -197f, 1039f), vec4<f32>(-825f, 1541f, 1245f, 750f), vec4<f32>(693f, -179f, -1339f, -602f), vec4<f32>(1307f, -704f, -622f, -959f), vec4<f32>(1000f, -328f, 231f, 2016f), vec4<f32>(-951f, -308f, 442f, 1208f), vec4<f32>(1000f, 617f, 800f, 398f), vec4<f32>(1000f, -1000f, 473f, -721f), vec4<f32>(-159f, 758f, 366f, 354f), vec4<f32>(119f, -1153f, 234f, -1000f));

var<private> global1: Struct_1 = Struct_1(vec4<i32>(0i, -33099i, 2147483647i, 18821i));

var<private> global2: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = Struct_1(select(-vec4<i32>(i32(-1i) * -1i, 2147483647i, max(u_input.b.x, global1.a.x), global1.a.x), ~max(vec4<i32>(-859i, 1i, global1.a.x, u_input.b.x), vec4<i32>(-2793i, -1i, global1.a.x, -78178i)), select(global2[_wgslsmith_index_u32(1u, 30u)], vec4<bool>(true, arg_0 == arg_0, true, true), global2[_wgslsmith_index_u32(~(u_input.a >> (0u % 32u)), 30u)])));
    var var_1 = min(vec2<u32>(u_input.a ^ u_input.a, countOneBits(firstTrailingBit(u_input.a))), ~firstTrailingBit(~vec2<u32>(u_input.a, u_input.a) << (~vec2<u32>(4823u, 73053u) % vec2<u32>(32u))));
    var var_2 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(-var_0.a.x), -(~(-2147483647i)), _wgslsmith_div_i32(var_0.a.x & -2147483647i, _wgslsmith_dot_vec3_i32(global1.a.zwy, u_input.b)), var_0.a.x), var_0.a));
    var var_3 = _wgslsmith_f_op_f32(arg_0 + -771f);
    var var_4 = var_0;
    return 1i;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-429f, 1000f)) - vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1718f, -371f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(401f, -1000f) + vec2<f32>(-943f, -444f)), arg_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-1139f, -413f)), _wgslsmith_f_op_f32(ceil(-165f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2272f, -1132f))), select(vec2<bool>(true, true), vec2<bool>(arg_0, false), !all(global2[_wgslsmith_index_u32(u_input.a, 30u)])))), vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1133f - -687f) + -353f)))));
    global1 = Struct_1(global1.a & (global1.a & vec4<i32>(func_3(var_0.x), global1.a.x, -u_input.b.x, select(-2617i, global1.a.x, false))));
    let var_1 = vec2<i32>(-global1.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.a.x, -36430i, -2147483647i, global1.a.x), global1.a << (vec4<u32>(~u_input.a, 22781u & arg_1.x, ~arg_1.x, ~u_input.a) % vec4<u32>(32u))));
    global2 = array<vec4<bool>, 30>();
    global0 = array<vec4<f32>, 17>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 866f)))))) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - var_0.x), var_0.x), var_0.x, !(!arg_0))));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = !(!global2[_wgslsmith_index_u32(1u, 30u)]);
    let var_1 = Struct_1(global1.a);
    var var_2 = var_1;
    let var_3 = true;
    var var_4 = Struct_1(global1.a);
    return Struct_1(vec4<i32>(select((var_1.a.x ^ 0i) ^ 1i, -2147483647i, var_3), i32(-1i) * -34924i, -1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(0i, 17810i)), 18103i)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = ~(_wgslsmith_mod_i32(global1.a.x, ~max(global1.a.x, 22658i)) << (1u % 32u));
    global0 = array<vec4<f32>, 17>();
    let var_1 = Struct_1(vec4<i32>(global1.a.x, u_input.b.x, _wgslsmith_clamp_i32(arg_1.x, -2147483647i, select(~0i, 0i, true)), _wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(-1i, global1.a.x, u_input.b.x) & _wgslsmith_div_i32(global1.a.x, arg_1.x))));
    var var_2 = Struct_1(vec4<i32>(var_1.a.x, -46716i, ~40798i << (~u_input.a % 32u), -_wgslsmith_mult_i32(1i, -1i)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.a, 0u), 4294967295u, ~1u, max(0u, u_input.a)), vec4<u32>(select(u_input.a, 15433u, arg_0), u_input.a, 1u, 1u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(8203u, 4294967295u, 1u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))) % vec4<u32>(32u)));
    var_2 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, vec4<u32>(u_input.a, 43273u, 1u, 4294967295u) >> (vec4<u32>(6538u, 0u, u_input.a, 0u) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-669f, 609f)))), 600f), ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 94725u, 13482u)))), u_input.a);
    return func_4(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-156f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(872f)) * _wgslsmith_f_op_f32(-332f - -148f)), _wgslsmith_f_op_f32(f32(-1f) * -716f)))), u_input.a, ~(~(_wgslsmith_mod_u32(u_input.a, u_input.a) ^ ~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(true, false)), true, true), select(global2[_wgslsmith_index_u32(~u_input.a, 30u)], !global2[_wgslsmith_index_u32(10263u, 30u)], true))), global1.a.yx);
    let var_1 = !select(vec3<bool>(false, !all(vec2<bool>(false, false)), true), vec3<bool>(-508f > _wgslsmith_f_op_f32(func_2(false, vec4<u32>(u_input.a, 49876u, u_input.a, 1u))), any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true & (u_input.a > u_input.a)), !vec3<bool>(true, true, any(vec2<bool>(false, true))));
    var var_2 = reverseBits(var_0.a);
    var_2 = abs(abs(var_0.a));
    var var_3 = var_1;
    var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(0u, u_input.a, 29974u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a | u_input.a, 0u) | ~reverseBits(vec2<u32>(1u, u_input.a)), ~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(30145u, 0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 40849u), vec2<u32>(u_input.a, 94043u), vec2<u32>(11356u, 1u)))));
}

