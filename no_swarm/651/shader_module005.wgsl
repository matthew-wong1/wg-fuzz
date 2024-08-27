struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = !vec2<bool>(any(select(select(vec2<bool>(false, arg_1.c), vec2<bool>(false, arg_1.c), arg_1.c), select(vec2<bool>(false, arg_1.c), vec2<bool>(true, arg_1.c), true), arg_1.c)), false);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2783f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.x, arg_3.b.x), arg_1.a))))), arg_2.zw)), arg_1.a, ~reverseBits(0i) > firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.a.yxw, -vec3<i32>(u_input.a.x, 14459i, 56267i))));
    let var_3 = u_input.a.xyw;
    var var_4 = firstTrailingBit(~(~(~(vec4<u32>(32434u, 58503u, 1u, u_input.c) << (vec4<u32>(u_input.c, u_input.c, 1u, 38444u) % vec4<u32>(32u))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.x, 1844f)));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(774f, 217f) * _wgslsmith_f_op_f32(-895f * 1028f)), -1340f), _wgslsmith_f_op_f32(func_3(vec2<i32>(~u_input.b, u_input.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-337f, 551f), vec2<f32>(616f, -295f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(176f, -1334f) + vec2<f32>(-164f, -1532f)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-420f, 205f, -563f, 122f))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -791f) * vec2<f32>(511f, -321f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(910f, -153f) + vec2<f32>(-257f, -369f)), false)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(659f, -639f), vec2<f32>(-731f, -1601f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1015f, 1204f)))))), !all(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1516f, -1497f, -906f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-607f, 194f, var_0.a.x)))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(func_3(u_input.a.zy, Struct_1(var_0.a, var_0.a, true), vec4<f32>(112f, -595f, -1322f, -1000f), Struct_1(var_0.b, vec2<f32>(var_0.b.x, 1000f), var_0.c))), -1558f)))));
    let var_2 = u_input.c;
    var var_3 = Struct_1(var_1.yx, vec2<f32>(_wgslsmith_f_op_f32(812f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x)))), 1000f), false);
    var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1420f, 1f)), vec2<f32>(441f, var_3.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1078f)), -520f) - var_0.b) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_1.zy, vec2<f32>(462f, var_3.b.x))))), select(!var_0.c, _wgslsmith_f_op_f32(var_1.x * 428f) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.b.x))), true & var_0.c));
    return ~firstTrailingBit(u_input.b);
}

fn func_1() -> vec4<u32> {
    var var_0 = max(abs(_wgslsmith_sub_i32(func_2(), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.a.x), u_input.a.zxz ^ vec3<i32>(13363i, u_input.b, u_input.b)))), u_input.b);
    var var_1 = Struct_1(vec2<f32>(350f, -486f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1292f, -452f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-349f, 319f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(138f, -166f), vec2<f32>(-1000f, 110f)), vec2<f32>(164f, 649f))))), true);
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_1.b.x)), vec2<f32>(-1253f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_1.a.x))))), !all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)));
    var var_2 = -1i << (1u % 32u);
    let var_3 = 452f;
    return vec4<u32>(firstLeadingBit(33921u), _wgslsmith_sub_u32(u_input.c, u_input.c), ~u_input.c, 32361u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 11>();
    let var_0 = firstLeadingBit(-u_input.a.xx);
    let var_1 = reverseBits(~_wgslsmith_sub_vec4_u32(min(func_1(), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 35459u, 9023u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, u_input.c))), vec4<u32>(44685u, 42849u, ~0u, _wgslsmith_add_u32(u_input.c, u_input.c))));
    global0 = array<vec2<u32>, 11>();
    var var_2 = vec4<i32>(select(u_input.a.x, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(var_0.x, 1i, var_0.x)), max(vec3<i32>(u_input.b, u_input.a.x, 1i) >> (vec3<u32>(u_input.c, 12690u, u_input.c) % vec3<u32>(32u)), ~u_input.a.wyy)), any(vec3<bool>(true, false, all(vec3<bool>(true, true, false))))), ~_wgslsmith_clamp_i32(-1i, u_input.b, var_0.x), -1i, abs(-1i));
    var var_3 = true;
    var var_4 = _wgslsmith_mod_vec4_u32(~firstTrailingBit(_wgslsmith_div_vec4_u32(var_1, countOneBits(vec4<u32>(u_input.c, 1u, u_input.c, 11639u)))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), var_1.x ^ 3542u, var_1.x, ~1u), select(countOneBits(vec4<u32>(var_1.x, u_input.c, u_input.c, 49103u)), ~var_1, true)) | vec4<u32>(~25280u, _wgslsmith_clamp_u32(var_1.x, var_1.x, countOneBits(0u)), _wgslsmith_add_u32(countOneBits(var_1.x), 59672u), _wgslsmith_sub_u32(abs(1u), ~u_input.c)));
    global0 = array<vec2<u32>, 11>();
    var var_5 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-(~var_0) & (vec2<i32>(u_input.b, _wgslsmith_add_i32(var_2.x, var_0.x)) >> (~reverseBits(vec2<u32>(u_input.c, var_1.x)) % vec2<u32>(32u))), max(-1i, ~u_input.a.x));
}

