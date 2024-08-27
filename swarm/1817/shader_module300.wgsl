struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false));

var<private> global2: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    global1 = array<vec4<bool>, 32>();
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -369f) + _wgslsmith_f_op_f32(abs(-357f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(930f))) - -1078f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1094f, 1000f, true)))) - _wgslsmith_f_op_f32(f32(-1f) * -882f)))));
    let var_1 = -123f;
    global2 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(134819u, 15297u, 0u) >> (1u % 32u), global2.x) >> (~(~vec2<u32>(27317u, global2.x) ^ abs(vec2<u32>(global2.x, 15653u))) % vec2<u32>(32u)), min(vec2<u32>(1u, abs(global2.x)), reverseBits(_wgslsmith_clamp_vec2_u32(~vec2<u32>(100526u, global2.x), select(vec2<u32>(13663u, global2.x), vec2<u32>(47074u, global2.x), vec2<bool>(true, false)), ~vec2<u32>(1u, global2.x)))));
    global1 = array<vec4<bool>, 32>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -655f, 1447f, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-202f * -236f), -1133f, _wgslsmith_f_op_f32(ceil(-835f))), true)))));
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = vec3<bool>(true, true, !(_wgslsmith_f_op_f32(f32(-1f) * -197f) > arg_0.x));
    global2 = ~max(vec2<u32>(global2.x ^ ~global2.x, 6443u), countOneBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 69730u), vec2<u32>(global2.x, global2.x))));
    var var_1 = false;
    global0 = 1583i <= u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1124f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-arg_0.x)))), -571f) + _wgslsmith_f_op_vec4_f32(func_3()));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(-var_2.x)))));
}

fn func_1() -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-495f + 293f) + _wgslsmith_f_op_f32(max(1226f, -931f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_f_op_f32(floor(383f)))), _wgslsmith_f_op_f32(sign(-559f)))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(121f - 673f), _wgslsmith_div_f32(346f, -1000f), _wgslsmith_f_op_f32(trunc(-517f)), _wgslsmith_f_op_f32(f32(-1f) * -285f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f + -550f)))));
    let var_1 = vec3<u32>(global2.x | ~global2.x, 20439u, _wgslsmith_clamp_u32(4294967295u, global2.x, ~_wgslsmith_mod_u32(0u, _wgslsmith_div_u32(global2.x, global2.x))));
    global0 = _wgslsmith_dot_vec2_i32(-vec2<i32>(firstTrailingBit(u_input.b), countOneBits(u_input.a)), countOneBits(-countOneBits(vec2<i32>(u_input.a, u_input.a)))) <= -u_input.a;
    var var_2 = Struct_3(Struct_2(var_1.x, ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(-508i, u_input.a), -vec2<i32>(u_input.a, 1i)), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zx + vec2<f32>(1331f, 671f)), _wgslsmith_f_op_vec2_f32(floor(var_0.yy))), true)), vec4<bool>(!(all(vec2<bool>(true, true)) && any(vec2<bool>(false, true))), ~(u_input.a << (49329u % 32u)) <= u_input.b, true, any(vec3<bool>(-63828i > u_input.a, true, true))));
    var var_3 = vec4<bool>(false, true, !(!var_2.b.x), var_2.a.c.b);
    return !((_wgslsmith_mod_i32(~var_2.a.b.x, -2147483647i) != -(i32(-1i) * -2147483647i)) | select(var_2.a.c.a.x == var_2.a.c.a.x, var_2.a.c.b, _wgslsmith_sub_i32(var_2.a.b.x, var_2.a.b.x) == _wgslsmith_sub_i32(var_2.a.b.x, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 9897u, 1u), vec3<u32>(4294967295u, 1u, global2.x)), 1u), select(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(1u, 4294967295u, 4294967295u)), reverseBits(vec3<u32>(4294967295u, global2.x, 9371u)), vec3<u32>(1u, global2.x, 42932u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(29970u, global2.x, 0u)) << (firstTrailingBit(vec3<u32>(4452u, global2.x, global2.x)) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), select(~select(~vec3<u32>(global2.x, global2.x, global2.x), select(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(11345u, global2.x, global2.x), vec3<bool>(false, true, true)), true), ~vec3<u32>(abs(global2.x), global2.x >> (112633u % 32u), _wgslsmith_div_u32(22587u, global2.x)), func_1()));
    global1 = array<vec4<bool>, 32>();
    let var_1 = abs(vec2<i32>(3776i, -46286i));
    var var_2 = 1i;
    var var_3 = ~vec4<u32>(_wgslsmith_sub_u32(min(~4294967295u, _wgslsmith_clamp_u32(var_0.x, var_0.x, global2.x)), ~global2.x), ~(50674u | var_0.x), 4294967295u, 63464u);
    let var_4 = Struct_4(Struct_3(Struct_2(~global2.x, select(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.a, 0i), vec2<bool>(true, true)) & vec2<i32>(u_input.b, -10276i), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(200f, -235f) * vec2<f32>(-559f, 386f)), true)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_3.x, 1u, var_0.x, 0u), vec4<u32>(var_0.x, var_0.x, var_3.x, var_3.x), false) << (abs(vec4<u32>(0u, 1u, 66896u, 17341u)) % vec4<u32>(32u)), vec4<u32>(global2.x, 0u, var_0.x, 1u) & ~vec4<u32>(var_0.x, 0u, 1486u, 59137u)), 32u)]), Struct_2(_wgslsmith_mod_u32(~var_3.x, _wgslsmith_div_u32(min(var_0.x, 18744u), 50568u >> (0u % 32u))), var_1 << (~var_0.xy % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec4_f32(func_3()).ww, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2124f, -2911f), vec2<f32>(-279f, -1400f))), u_input.b <= 3923i)), any(vec3<bool>(false, false, true)) | true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1126f))) >= -1160f);
    global0 = all(select(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, reverseBits(18429u) & select(72569u, global2.x, false), max(~1u, _wgslsmith_mod_u32(var_3.x, 0u))), 32u)], vec4<bool>(!var_4.c, any(!var_4.a.b), !var_4.b.c.b, true), !var_4.b.c.b));
    let var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-538f, -616f, -1138f));
    var_3 = ~(~vec4<u32>(select(4655u, var_0.x, false) >> (4294967295u % 32u), _wgslsmith_clamp_u32(global2.x << (1u % 32u), ~42219u, _wgslsmith_mod_u32(var_0.x, global2.x)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_3.x, var_3.x, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(38109u, var_3.x, var_3.x), vec3<u32>(34883u, 12856u, var_4.a.a.a))), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_4.b.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.c.a.x - var_4.a.a.c.a.x))), _wgslsmith_f_op_f32(max(var_5.x, 677f))));
}

