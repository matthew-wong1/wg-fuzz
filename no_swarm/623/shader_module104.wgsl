struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(-2128f, -783f)), _wgslsmith_div_f32(557f, -1543f), 1000f)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_2(arg_0);
    var var_1 = Struct_1(vec2<i32>(-(~(-24183i)), -var_0.a.a.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * vec3<f32>(-782f, -336f, 633f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2427f, -1050f, -2718f))), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(458f, 113f, -742f)))))));
    var_1 = arg_0;
    var_1 = Struct_1(-select(countOneBits(var_1.a), arg_0.a, vec2<bool>(true, true)) >> (vec2<u32>(0u, _wgslsmith_sub_u32(u_input.b.x, ~u_input.d)) % vec2<u32>(32u)));
    return Struct_2(arg_0);
}

fn func_4(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_2(arg_0.a);
    var var_1 = func_2(func_2(Struct_1(var_0.a.a), u_input.b).a, ~vec3<u32>(u_input.d, u_input.d, u_input.b.x) ^ u_input.b).a.a.x;
    var_1 = 2147483647i;
    var_1 = u_input.e.x;
    var var_2 = true;
    return ~(~0u << (~abs(~u_input.b.x) % 32u));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<u32>(4294967295u, _wgslsmith_add_u32(u_input.d & ~u_input.b.x, u_input.a.x), u_input.d, ~_wgslsmith_div_u32(u_input.d, ~4294967295u)) >> (vec4<u32>(_wgslsmith_div_u32(func_4(func_2(Struct_1(u_input.c.xz), vec3<u32>(0u, 3406u, 4294967295u))), ~_wgslsmith_clamp_u32(30066u, 1u, 4294967295u)), 1u, ~func_4(func_2(Struct_1(vec2<i32>(0i, u_input.c.x)), u_input.b)), 1u) % vec4<u32>(32u));
    var_0 = select(_wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(70526u, u_input.a.x, 0u, var_0.x)), max(vec4<u32>(46698u, u_input.a.x, 0u, var_0.x) | ~vec4<u32>(var_0.x, var_0.x, var_0.x, 24949u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.x, u_input.b.x, var_0.x), vec4<u32>(u_input.b.x, 53193u, u_input.a.x, 0u)))), _wgslsmith_clamp_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.a.x, 65015u, u_input.b.x, var_0.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(40634u, 2054u, 4294967295u, 21194u), ~vec4<u32>(4294967295u, 2018u, var_0.x, var_0.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 20628u, var_0.x, u_input.b.x), vec4<u32>(34433u, 12326u, 28545u, var_0.x)) | vec4<u32>(1u, ~13517u, max(var_0.x, u_input.b.x), abs(71806u))), false);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_2 = !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false)), vec4<bool>(true, true, true, true), true));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -220f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(471f - -2153f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -617f) * _wgslsmith_f_op_f32(f32(-1f) * -2487f))))));
    return func_2(Struct_1(_wgslsmith_add_vec2_i32(reverseBits(u_input.c.xx >> (u_input.a % vec2<u32>(32u))), abs(firstLeadingBit(vec2<i32>(-2147483647i, 0i))))), var_0.wwx).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.d, ~u_input.a.x, u_input.d, ~_wgslsmith_mult_u32(~u_input.a.x, 0u));
    var_0 = vec4<u32>(~(~_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(var_0.x, var_0.x))), ~(~(~var_0.x)), abs(~_wgslsmith_sub_u32(u_input.d, ~8516u)), var_0.x ^ ~var_0.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1465f, 575f, -465f) - vec3<f32>(-891f, 363f, 876f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(809f, 873f, -842f)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1013f, -1000f, 540f) - vec3<f32>(-1185f, 636f, 465f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1921f, -650f, -929f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-494f, -1182f, 1209f))))));
    let var_2 = func_1();
    var var_3 = !(~1u != _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_0.x, 0u, 24360u), select(vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 5217u), vec4<u32>(u_input.a.x, 36471u, u_input.b.x, var_0.x), vec4<bool>(false, true, true, false)))) & all(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), -439f));
    var var_4 = vec2<u32>(_wgslsmith_div_u32(1u, 1u), var_0.x);
    var var_5 = Struct_2(Struct_1(vec2<i32>(-2147483647i ^ var_2.a.x, 1i) & abs(vec2<i32>(var_2.a.x, 2147483647i) ^ u_input.c.yw)));
    var_5 = func_2(Struct_1(vec2<i32>(i32(-1i) * -var_2.a.x, 1i)), vec3<u32>(_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(~var_4.x, 0u)), 38924u, var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1().a, -1i & _wgslsmith_mult_i32(var_5.a.a.x, u_input.e.x), _wgslsmith_div_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, 22741i, -2147483647i), max(vec4<i32>(u_input.c.x, 33017i, u_input.e.x, u_input.e.x), u_input.c)), _wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, vec4<i32>(var_5.a.a.x, var_2.a.x, 5722i, -41903i)) & u_input.c, vec4<bool>(true, false, any(vec2<bool>(false, true)), false)), -reverseBits(select(u_input.c, u_input.c, false))), vec2<i32>(_wgslsmith_sub_i32(u_input.e.x, 1i), _wgslsmith_clamp_i32(-1i, u_input.c.x, 2147483647i) | _wgslsmith_sub_i32(u_input.c.x & 62749i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(1i, -5107i, -2147483647i, u_input.e.x)))), _wgslsmith_div_vec2_u32(var_0.xx, select(~firstLeadingBit(var_0.xz), max(u_input.b.xy, vec2<u32>(17728u, 4294967295u)), (16021i <= var_5.a.a.x) == false)));
}

