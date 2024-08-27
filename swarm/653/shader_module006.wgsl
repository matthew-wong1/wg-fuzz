struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: f32, arg_3: i32) -> vec4<i32> {
    let var_0 = Struct_1(1u);
    let var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32((u_input.d.x >> (var_0.a % 32u)) & (9934u >> (u_input.a.x % 32u)), var_0.a), _wgslsmith_dot_vec2_u32(vec2<u32>(15783u, 9616u) >> (u_input.a % vec2<u32>(32u)), ~u_input.a) ^ 48422u));
    var var_2 = vec4<i32>(u_input.e, firstLeadingBit(arg_1), arg_1, -u_input.b.x) & -select(~vec4<i32>(arg_0.x, arg_0.x, 11306i, -31329i), (vec4<i32>(arg_3, arg_1, -6820i, u_input.c) & vec4<i32>(arg_1, 102974i, 0i, arg_3)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, u_input.b.x, arg_0.x, 0i), vec4<i32>(0i, arg_3, arg_0.x, -2147483647i), vec4<i32>(u_input.b.x, arg_0.x, 13889i, -95238i)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    let var_3 = Struct_2(any(vec3<bool>(!(arg_3 < 4787i), false, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)))), Struct_1(u_input.a.x), var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -762f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-381f, arg_2), vec2<f32>(-768f, -1000f)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(588f * arg_2), _wgslsmith_f_op_f32(-arg_2)) + vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(sign(arg_2))))), _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-arg_2)))))));
    var_2 = select(-vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(1884i), select(-2147483647i, arg_1, var_3.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, -13851i, var_2.x), ~vec3<i32>(arg_1, 1i, arg_3)), 1i, _wgslsmith_dot_vec2_i32(-u_input.b, _wgslsmith_add_vec2_i32(var_2.xy, vec2<i32>(1i, arg_1)))), vec4<i32>(-u_input.e, -(~(-arg_0.x)), 13218i, _wgslsmith_mult_i32(u_input.c, arg_1) & u_input.e), _wgslsmith_div_i32(arg_1, -43505i) > -27253i);
    return _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(arg_0.x, arg_0.x, arg_1, -4780i), select(vec4<i32>(arg_3, -1i, 53240i, -1i) | vec4<i32>(arg_3, arg_0.x, -2147483647i, arg_1), -vec4<i32>(arg_3, u_input.c, 56723i, arg_1), vec4<bool>(false, var_3.a, var_3.a, var_3.a))), vec4<i32>(var_2.x & _wgslsmith_div_i32(arg_1, var_2.x), ~(2147483647i >> (0u % 32u)), 1i, ~22383i)) ^ vec4<i32>(-1i << (var_1.a % 32u), -arg_3, _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, 2147483647i), var_2.x), -(~2147483647i)), 32717i);
}

fn func_2() -> bool {
    let var_0 = select(vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), true, true, all(vec2<bool>(true, true))), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, any(vec4<bool>(true, false, true, true)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true))), all(select(vec4<bool>(any(vec4<bool>(true, true, false, false)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), true)));
    let var_1 = abs(func_3(-(~vec3<i32>(u_input.e, u_input.e, 1i)), ~(~6346i), _wgslsmith_f_op_f32(-886f + _wgslsmith_div_f32(642f, 267f)), u_input.b.x) | (func_3(min(vec3<i32>(u_input.b.x, u_input.e, -30094i), vec3<i32>(u_input.b.x, -28213i, u_input.e)), ~u_input.b.x, _wgslsmith_f_op_f32(-1703f + 1080f), u_input.c >> (0u % 32u)) | ~abs(vec4<i32>(1i, 0i, u_input.b.x, -13892i))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1411f)), -1531f) + 215f)))));
    let var_3 = Struct_2(!var_0.x, Struct_1(u_input.a.x), 38973u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2385f, -2298f), vec2<f32>(-1873f, 768f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(896f, _wgslsmith_f_op_f32(1521f - 362f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - 1f));
    var var_4 = var_1;
    return !(_wgslsmith_f_op_f32(-var_3.e) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    let var_0 = arg_0;
    var var_1 = arg_2;
    var var_2 = false;
    return 7843u;
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(Struct_2(func_2(), Struct_1(_wgslsmith_div_u32(~488u, firstTrailingBit(u_input.d.x))), ~0u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(455f, 969f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1806f, -1000f) - vec2<f32>(-221f, 691f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(742f, 201f)), u_input.d.x <= u_input.a.x)))), 1010f), Struct_1(u_input.d.x), _wgslsmith_mod_i32(-(u_input.e | -22767i), 22335i), vec4<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(308f + 1550f) * _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -290f))), _wgslsmith_f_op_f32(f32(-1f) * -396f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1116f, -526f)))));
    var var_1 = Struct_1(_wgslsmith_mod_u32(var_0, ~var_0));
    let var_2 = 495f;
    var var_3 = Struct_2(select(true, true, !(!all(vec2<bool>(true, false)))), Struct_1(u_input.a.x), var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2, var_2))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(176f, var_2))) + vec2<f32>(var_2, var_2))), 1f);
    let var_4 = var_3.b;
    return Struct_2(var_3.a, Struct_1(~var_4.a), ~var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.d.x, var_2) * vec2<f32>(193f, var_3.e))) - var_3.d) * var_3.d), -843f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0.a;
    var_1 = !var_0.a;
    let var_2 = 28329u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(87146i, -3806i), u_input.e), _wgslsmith_mult_i32(u_input.b.x, -1i) << (var_0.b.a % 32u)), 0i & u_input.c));
}

