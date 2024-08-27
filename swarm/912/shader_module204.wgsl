struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>) -> bool {
    var var_0 = vec3<u32>(u_input.b.x, ~6241u, arg_0.c.c.x);
    let var_1 = Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, 2147483647i & arg_0.c.a.a, 4372i), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(arg_0.b.a, 60864i, 20831i)), vec3<i32>(arg_0.b.a, -1i, arg_0.c.d.a) << (arg_1.yyx % vec3<u32>(32u))))), arg_1.xzx, vec2<u32>(~firstTrailingBit(max(arg_1.x, var_0.x)), ~_wgslsmith_dot_vec3_u32(arg_1.xww, ~vec3<u32>(4294967295u, 46865u, arg_1.x))), Struct_2(-arg_0.c.a.a));
    var_0 = ~(~abs(~arg_0.c.b | var_1.b));
    var_0 = min(vec3<u32>(~(~1u), ~var_1.c.x, u_input.b.x & 1u), arg_0.c.b >> (vec3<u32>(reverseBits(_wgslsmith_sub_u32(arg_1.x, u_input.a)), ~var_1.c.x, min(_wgslsmith_sub_u32(arg_0.c.b.x, 35713u), arg_0.c.c.x)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1166f, 489f, arg_0.d)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d, arg_0.d, 1086f), vec3<f32>(arg_0.d, 1696f, -615f))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d), -1177f, 143f)) + vec3<f32>(arg_0.d, arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.d)) * _wgslsmith_f_op_f32(min(arg_0.d, 128f)))))));
    return false;
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1394f)) - 904f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(903f, -1108f) - _wgslsmith_f_op_f32(911f + 439f))))));
    let var_1 = Struct_1(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(!func_3(Struct_4(vec4<bool>(false, false, false, true), Struct_2(62769i), Struct_3(Struct_2(-2147483647i), vec3<u32>(u_input.a, 24231u, u_input.a), vec2<u32>(4294967295u, 1u), Struct_2(-1i)), -1560f), vec4<u32>(u_input.a, 55697u, u_input.a, u_input.a)), false, all(select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(4294967295u, 5u)], false))), vec3<bool>(true, false, !func_3(Struct_4(vec4<bool>(true, true, false, false), Struct_2(2147483647i), Struct_3(Struct_2(-27663i), vec3<u32>(u_input.a, u_input.b.x, 6663u), u_input.b, Struct_2(16343i)), -664f), vec4<u32>(17887u, u_input.a, 1u, u_input.a)))), 181f, false, _wgslsmith_f_op_f32(f32(-1f) * -1146f));
    var var_2 = Struct_3(Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-43845i, 0i, 1i, reverseBits(-8991i)), ~vec4<i32>(48991i, -46281i, -6866i, 3150i))), vec3<u32>(max(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.b.x, u_input.a), ~vec3<u32>(36061u, 63272u, u_input.b.x))), 20837u, u_input.b.x | ~firstTrailingBit(4294967295u)), ~abs(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.a))) ^ u_input.b, Struct_2(-854i));
    let var_3 = var_1.a.x;
    global0 = array<vec2<bool>, 5>();
    return Struct_3(Struct_2(-2147483647i), ~firstLeadingBit(vec3<u32>(~52752u, _wgslsmith_add_u32(u_input.a, 0u), _wgslsmith_div_u32(0u, 4294967295u))), ~_wgslsmith_mod_vec2_u32(firstTrailingBit(~var_2.c), vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, 0u), 17881u)), Struct_2(-var_2.d.a));
}

fn func_1() -> bool {
    var var_0 = Struct_4(!vec4<bool>(all(!global0[_wgslsmith_index_u32(u_input.a, 5u)]), true, select(true, true, false), true), Struct_2(-10221i), func_2(), -179f);
    let var_1 = true;
    let var_2 = var_0.c.d.a;
    var var_3 = var_0.c.a;
    let var_4 = 2724u;
    return var_0.a.x & true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1497f)) + _wgslsmith_f_op_f32(trunc(-1268f))) + -778f) + 1281f), -1059f);
    var var_1 = Struct_4(vec4<bool>(var_0.x <= var_0.x, func_1(), (_wgslsmith_f_op_f32(-var_0.x) != var_0.x) || true, false), func_2().d, func_2(), _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = Struct_4(var_1.a, Struct_2(-42729i), func_2(), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.d))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, var_1.d), var_0.x))), false)));
    var_1 = Struct_4(vec4<bool>(false, !var_1.a.x, var_2.a.x | all(select(vec2<bool>(var_2.a.x, var_1.a.x), vec2<bool>(var_1.a.x, true), vec2<bool>(false, false))), false), var_1.c.a, Struct_3(var_1.b, var_1.c.b, vec2<u32>(~abs(var_2.c.c.x), 22912u), var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.d + 734f))) + _wgslsmith_f_op_f32(abs(var_2.d))));
    var_1 = var_2;
    let var_3 = Struct_2(_wgslsmith_dot_vec2_i32(select(-_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.c.a.a, var_1.c.d.a), vec2<i32>(var_2.b.a, var_2.b.a)), -(~vec2<i32>(var_2.b.a, var_2.b.a)), var_1.a.xz), _wgslsmith_div_vec2_i32(-(vec2<i32>(21297i, var_2.b.a) >> (var_2.c.c % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.b.a, var_2.b.a), vec2<i32>(1i, var_1.c.a.a)))));
    global0 = array<vec2<bool>, 5>();
    let var_4 = var_2.c.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_4, var_2.c.c.x), vec4<u32>(52237u, var_4, var_1.c.c.x, 0u)), ~var_2.c.c.x, ~var_2.c.c.x), 6416u), -vec3<i32>(abs(_wgslsmith_sub_i32(var_3.a, var_3.a)), _wgslsmith_clamp_i32(var_1.c.d.a, var_2.b.a, ~1i), ~(~(-23108i))), max(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.a, var_3.a, var_3.a, var_2.c.d.a), vec4<i32>(0i, var_3.a, -1i, -2147483647i), vec4<i32>(10107i, 17697i, -60196i, 46813i)) << (max(vec4<u32>(u_input.a, u_input.a, 51873u, var_1.c.c.x), vec4<u32>(var_1.c.b.x, 21703u, 2387u, u_input.a)) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(-firstTrailingBit(vec4<i32>(-3345i, var_3.a, -1i, 2147483647i)), reverseBits(~vec4<i32>(-2147483647i, var_1.b.a, var_3.a, var_3.a)))), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 15708i, var_1.c.a.a, -2147483647i), vec4<i32>(-48894i, var_2.b.a, 2147483647i, 1269i))), ~firstTrailingBit(var_1.c.b));
}

