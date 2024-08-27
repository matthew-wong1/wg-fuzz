struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<f32> = vec3<f32>(505f, -244f, -288f);

var<private> global2: i32 = -1i;

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    let var_0 = -(vec3<i32>(firstTrailingBit(22600i) ^ _wgslsmith_dot_vec3_i32(u_input.a.xwz, u_input.a.wwy), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(31414i, 2147483647i), u_input.a.yz << (vec2<u32>(39974u, 54246u) % vec2<u32>(32u)))) & countOneBits(-u_input.a.xzw));
    let var_1 = global3.x;
    let var_2 = !global3.x;
    var var_3 = Struct_2(true, Struct_1(vec4<bool>(select(true, true, var_2), false, select(52646u, 48625u, false) > ~9880u, all(select(global3.yx, vec2<bool>(var_2, var_2), vec2<bool>(var_2, false)))), var_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, -1922f)))))));
    let var_4 = Struct_4(Struct_3(var_3.b.a, Struct_2(global3.x, Struct_1(select(var_3.b.a, var_3.b.a, var_3.b.a), true, var_3.b.c)), Struct_2(true, var_3.b), max(select(vec2<u32>(0u, 27187u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(30048u, 70316u), vec2<u32>(1u, 0u)), select(var_3.b.a.wx, var_3.b.a.zy, global3.x)), vec2<u32>(1u, 1u))), vec3<bool>(false, !(true && all(global3.zy)), any(vec4<bool>(true, all(var_3.b.a), all(var_3.b.a.xx), false))), global3.yx, ~reverseBits(~abs(vec3<u32>(19718u, 1u, 38922u))));
    return any(select(vec3<bool>(var_4.b.x, select(var_2, var_2, var_2) | false, select(true, true, global3.x)), !select(!vec3<bool>(var_3.a, true, global3.x), select(var_3.b.a.wwz, vec3<bool>(true, true, var_2), var_2), !vec3<bool>(true, global3.x, global3.x)), !any(select(var_4.a.a.xx, global3.xz, vec2<bool>(var_4.a.a.x, true)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> Struct_2 {
    return Struct_2(func_3(), Struct_1(!(!(!vec4<bool>(global3.x, false, global3.x, global3.x))), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(884f, _wgslsmith_f_op_f32(sign(657f))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = func_2(countOneBits(firstTrailingBit(~(~arg_0))), abs(~(-2147483647i) ^ reverseBits(arg_0.x)));
    global3 = select(var_0.b.a.wyy, var_0.b.a.yxw, var_0.b.a.yxw);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-536f, arg_1.x, 472f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(712f, arg_1.x, global1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c, arg_1.x, 115f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, global1.x, -524f)))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(1000f + arg_1.x), 633f, _wgslsmith_f_op_f32(f32(-1f) * -537f)))))));
    let var_1 = -31038i;
    var var_2 = true;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(_wgslsmith_sub_vec4_i32(countOneBits(u_input.a), max(vec4<i32>(-3182i, u_input.a.x, u_input.b, -2147483647i), u_input.a)) | vec4<i32>(~1i, _wgslsmith_div_i32(u_input.a.x, 0i), _wgslsmith_sub_i32(-56081i, 12279i), u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(exp2(global1.x))), global1.zz)));
    global0 = _wgslsmith_f_op_f32(func_2(-(~max(vec4<i32>(u_input.a.x, -35165i, -30697i, -10089i), u_input.a)), -max(36997i, _wgslsmith_clamp_i32(-27262i, u_input.b, -14288i))).b.c - _wgslsmith_f_op_f32(exp2(global1.x)));
    var var_1 = max(min(~(~vec4<u32>(28023u, 56779u, 11872u, 49871u)), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 13704u), vec2<u32>(81158u, 4294967295u)), 4917u, 1u, 1u)), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(abs(4394u), ~1u, max(1u, 1u), ~70546u), vec4<u32>(1u, 1u, 1u, 1u))));
    global2 = -u_input.b;
    var_1 = reverseBits(min(~(~vec4<u32>(var_1.x, var_1.x, 1u, var_1.x) ^ ~vec4<u32>(14725u, 1u, var_1.x, 14386u)), ~(~vec4<u32>(var_1.x, 51141u, 51149u, var_1.x) & ~vec4<u32>(21344u, 1u, 0u, var_1.x))));
    var_1 = vec4<u32>(~4294967295u, 1491u << (firstLeadingBit(~125331u) % 32u), _wgslsmith_clamp_u32(countOneBits(~1u), abs(_wgslsmith_clamp_u32(var_1.x, 0u, 46090u)), 1u), var_1.x) & vec4<u32>(1u ^ var_1.x, ~reverseBits(var_1.x), _wgslsmith_dot_vec3_u32(min(vec3<u32>(var_1.x, 1973u, var_1.x), reverseBits(var_1.xyw)), ~select(vec3<u32>(var_1.x, 0u, var_1.x), var_1.yzz, var_0.b.a.zyx)), ~4294967295u);
    var_1 = min(vec4<u32>(24852u, var_1.x, 32537u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(44097u, var_1.x), select(var_1.yw, vec2<u32>(var_1.x, 0u), var_0.b.a.wy)))), select(vec4<u32>(_wgslsmith_sub_u32(~var_1.x, var_1.x), min(114113u, var_1.x), ~52439u, ~0u), vec4<u32>(firstLeadingBit(var_1.x) | ~4294967295u, _wgslsmith_mod_u32(1u, ~var_1.x), var_1.x, firstLeadingBit(4576u)), !(!var_0.b.a)));
    let var_2 = _wgslsmith_div_i32(u_input.b, 1i);
    var var_3 = func_2(select(~(-(vec4<i32>(var_2, 80479i, u_input.a.x, u_input.a.x) >> (vec4<u32>(0u, var_1.x, 1u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_i32((vec4<i32>(u_input.a.x, u_input.b, 0i, var_2) << (vec4<u32>(60995u, 26996u, 1u, 1u) % vec4<u32>(32u))) ^ -u_input.a, firstLeadingBit(u_input.a | u_input.a)), false), countOneBits(~(~(-u_input.a.x)))).b;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.yxw, _wgslsmith_add_vec4_i32(select(vec4<i32>(~var_2, i32(-1i) * -37067i, u_input.b ^ var_2, 1i), u_input.a, var_3.a), u_input.a), abs(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_1.x, var_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 14998u), var_1.xw))), ~abs(firstTrailingBit(countOneBits(u_input.a.wy))));
}

