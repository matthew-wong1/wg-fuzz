struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = vec4<bool>(true, all(select(vec2<bool>(all(vec3<bool>(false, false, true)), true), vec2<bool>(true, false), vec2<bool>(true, true))), true, _wgslsmith_div_u32(u_input.b.x, u_input.c) < _wgslsmith_clamp_u32(u_input.c, u_input.c, ~max(4294967295u, 3601u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(sign(arg_0)), -1064f, arg_0) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, 1000f, arg_0), vec4<f32>(-345f, arg_0, 633f, arg_0), var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1052f, -556f, -626f, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -512f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 1476f, arg_0))))) * vec4<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), 279f), _wgslsmith_f_op_f32(floor(-403f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))));
    global0 = array<Struct_2, 27>();
    let var_2 = vec4<u32>(18006u, ~countOneBits(_wgslsmith_mod_u32(firstLeadingBit(32741u), 61130u)), select(_wgslsmith_div_u32(u_input.d.x, 82538u), u_input.a >> (firstTrailingBit(u_input.e.x | u_input.d.x) % 32u), true), ~u_input.c);
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - -392f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), 1075f) + _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1046f, -673f) + _wgslsmith_div_f32(1431f, 270f)) * _wgslsmith_f_op_f32(478f + _wgslsmith_f_op_f32(ceil(-293f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -631f)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_3(-171f));
    global0 = array<Struct_2, 27>();
    var var_1 = Struct_1(arg_0.a, _wgslsmith_sub_u32(arg_0.b, u_input.a), arg_0.c, arg_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1026f + arg_0.e.x) - arg_0.e.x), _wgslsmith_f_op_f32(arg_0.e.x * _wgslsmith_f_op_f32(func_3(245f))))));
    let var_2 = ~70729u;
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, var_1.d) >> (select(countOneBits(min(countOneBits(4294967295u), ~1u)), _wgslsmith_mod_u32(~var_1.b, arg_0.b) | 16367u, var_1.a) % 32u), 27u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec3<bool>) -> f32 {
    var var_0 = -1000f;
    global0 = array<Struct_2, 27>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1411f - -365f))), _wgslsmith_f_op_f32(func_2(Struct_1(false, 1702u, ~(-2147483647i), firstLeadingBit(4294967295u), _wgslsmith_f_op_vec2_f32(vec2<f32>(204f, 2037f) * vec2<f32>(703f, 1017f))))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.d.xyz;
    var var_1 = Struct_1(!(!all(vec2<bool>(true, true))), 30318u, _wgslsmith_add_i32(~_wgslsmith_mult_i32(8382i, 8910i), 2147483647i) << (var_0.x % 32u), firstLeadingBit(max(_wgslsmith_clamp_u32(1u, 0u, var_0.x), ~4294967295u)) >> (~(~u_input.e.x) % 32u), vec2<f32>(_wgslsmith_f_op_f32(565f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-698f)) + _wgslsmith_f_op_f32(trunc(-430f)))), _wgslsmith_f_op_f32(-915f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))) - 1166f))));
    var var_2 = Struct_1((_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-149f)), _wgslsmith_f_op_f32(f32(-1f) * -493f))) < var_1.e.x) || !(~25779u == u_input.b.x), var_0.x, _wgslsmith_div_i32(12573i, 2147483647i), _wgslsmith_dot_vec2_u32(min(u_input.b.yz, var_0.xy), _wgslsmith_add_vec2_u32(var_0.xz, ~vec2<u32>(0u, u_input.c))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-3055f, var_1.e.x))), _wgslsmith_f_op_vec2_f32(-var_1.e))))));
    var var_3 = Struct_1(true, var_0.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_2.c, -1i), var_2.c, 17534i), firstLeadingBit(-abs(2147483647i)), var_2.c), min(firstLeadingBit(32394u), ~(~(~5828u))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-512f, 2304f, false)), var_2.e.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(472f, 1191f)), -1332f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.e)))));
    let var_4 = Struct_1(select(~firstTrailingBit(0u), _wgslsmith_mult_u32(var_3.d, _wgslsmith_dot_vec3_u32(u_input.e.yxx, u_input.b.ywz)), 1u > _wgslsmith_add_u32(4294967295u, var_1.b)) == abs(firstTrailingBit(reverseBits(1u))), 1u, var_3.c, _wgslsmith_mod_u32(abs(4294967295u), ~min(~var_1.b, 4294967295u)), var_3.e);
    let var_5 = -_wgslsmith_clamp_vec2_i32(-_wgslsmith_mult_vec2_i32(-vec2<i32>(var_3.c, -11000i), vec2<i32>(var_3.c, var_2.c) >> (u_input.d.wy % vec2<u32>(32u))), vec2<i32>(var_4.c, -_wgslsmith_sub_i32(-2147483647i, -2147483647i)), -(~(vec2<i32>(var_1.c, -20170i) | vec2<i32>(var_4.c, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_dot_vec3_u32(u_input.e.yyx, select(vec3<u32>(34083u, var_2.b, 74298u), vec3<u32>(var_1.b, var_4.b, var_1.d), true)) << (~(~11224u) % 32u)), vec2<i32>(abs(min(var_3.c, _wgslsmith_mod_i32(var_5.x, var_5.x))), _wgslsmith_sub_i32(var_2.c, ~(-1i))), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.c, 45768i, 19566i), vec3<i32>(var_5.x, -48903i, -1i))), u_input.e.yx, ~_wgslsmith_mod_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.c, 23149i, 1i), vec3<i32>(var_3.c, 2147483647i, var_3.c), vec3<i32>(var_2.c, -33027i, -28314i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_4.c, 0i), vec3<i32>(-29176i, -1i, -1i))));
}

