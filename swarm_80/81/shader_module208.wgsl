struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 5> = array<u32, 5>(0u, 77801u, 39823u, 4294967295u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec2<i32> {
    global1 = array<u32, 5>();
    let var_0 = ~firstTrailingBit(countOneBits(24088u));
    let var_1 = Struct_5(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0, 16441u), ~countOneBits(vec2<u32>(var_0, 14508u))) >= (u_input.d >> ((_wgslsmith_div_u32(10606u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)]) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(64129u, 5u)], 4294967295u), vec2<u32>(var_0, var_0))) % 32u)), Struct_1(vec2<i32>(-30367i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1007f * -1000f), -304f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1609f) * 770f)), ~20786u), -1087f, Struct_1(vec2<i32>(1i, _wgslsmith_clamp_i32(2147483647i, ~(-2147483647i), ~u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(-269f, 468f), _wgslsmith_f_op_f32(-1f)), var_0));
    let var_2 = min(select(~(~(~vec2<u32>(var_0, u_input.c))), ~(~(~vec2<u32>(1u, 4294967295u))), select(vec2<bool>(var_1.a && false, false), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), !vec2<bool>(var_1.a, false), all(vec2<bool>(true, true))), true)), vec2<u32>(22821u, select(31206u, var_1.b.c, false)));
    var var_3 = _wgslsmith_mult_u32(min(~(~(~var_0)), 69882u), abs(1u));
    return vec2<i32>(abs(u_input.a), u_input.b.x) & u_input.b.xz;
}

fn func_2() -> Struct_4 {
    return Struct_4(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(23085u, 4294967295u) | vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6658u, 5u)], 5u)], 5u)], 5u)], 5u)], u_input.d)), ~vec2<u32>(14104u, 87296u)) & vec2<u32>(28651u, u_input.c), vec3<i32>(u_input.b.x, 19160i, u_input.a >> (firstTrailingBit(1u) % 32u)), Struct_1(-vec2<i32>(16999i, -2190i) | func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(307f + 489f) * _wgslsmith_div_f32(-1183f, 1301f))), u_input.c));
}

fn func_1(arg_0: vec4<f32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x));
    let var_1 = u_input.b;
    let var_2 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-48882i, var_1.x), vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(u_input.b.x), -u_input.a), _wgslsmith_add_i32(_wgslsmith_mult_i32(var_1.x, u_input.a), -13680i))), _wgslsmith_f_op_f32(-138f * arg_0.x), 34071u);
    var var_3 = func_2();
    global0 = func_3().x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1805i;
    global0 = 1i;
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(467f - -656f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1309f)), -537f)), _wgslsmith_f_op_f32(-1195f * _wgslsmith_f_op_f32(1652f - 1570f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -591f))))));
    let var_2 = all(vec2<bool>(true, true));
    let var_3 = func_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -516f), _wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.c.b))))), 755f));
    let var_4 = _wgslsmith_mult_i32(select(var_3.b.x, -func_2().b.x ^ 11780i, all(!select(vec4<bool>(var_2, var_2, var_2, false), vec4<bool>(var_2, false, var_2, var_2), vec4<bool>(var_2, false, true, false)))), -(~12402i));
    global0 = ~countOneBits(var_4);
    let x = u_input.a;
    s_output = StorageBuffer(~(4294967295u & max(4294967295u, var_1.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.b) * _wgslsmith_f_op_f32(var_1.c.b - -525f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.c.b, 1261f)), _wgslsmith_f_op_f32(floor(var_1.c.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, var_1.c.b, 719f))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_3.c.b, var_3.c.b, var_1.c.b), vec3<f32>(var_1.c.b, 725f, -636f))))));
}

