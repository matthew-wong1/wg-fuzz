struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_3, 29>;

var<private> global2: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(1u, 4294967295u), vec2<u32>(2239u, 10587u), vec2<u32>(1u, 21030u), vec2<u32>(1u, 34139u), vec2<u32>(19904u, 0u), vec2<u32>(2413u, 0u), vec2<u32>(4294967295u, 6435u), vec2<u32>(8315u, 4294967295u), vec2<u32>(1u, 3489u), vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = vec2<f32>(1845f, global0.b);
    global0 = Struct_4(~countOneBits(~select(u_input.c.x, global0.a, false)), _wgslsmith_f_op_f32(abs(global0.b)));
    let var_1 = Struct_2(~_wgslsmith_mod_vec3_u32(~u_input.a.zzx | ~vec3<u32>(4294967295u, 0u, 16055u), u_input.a.wxz), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, u_input.d) & (vec2<i32>(-9633i, u_input.d) & vec2<i32>(2147483647i, u_input.d)), vec2<i32>(~(-5179i), u_input.d)), true));
    var var_2 = var_1.b;
    global0 = Struct_4(1u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a.x) + -151f) - -824f))));
    return arg_0;
}

fn func_2() -> bool {
    global0 = Struct_4(~global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))));
    let var_0 = vec3<bool>(all(vec3<bool>(true, true, true)), select(true == (global0.a < global0.a), all(vec2<bool>(true, true)), global0.b != global0.b) | true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3(vec4<bool>(false, false, true, true)))));
    let var_1 = -1079f;
    let var_2 = Struct_2(vec3<u32>(~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 99990u), vec3<u32>(44507u, 1u, 0u))), select(u_input.c.x, u_input.a.x, global0.b >= _wgslsmith_f_op_f32(-1513f + var_1)), ~_wgslsmith_add_u32(reverseBits(global0.a), firstLeadingBit(u_input.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, global0.b)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, -1858f) * vec2<f32>(var_1, global0.b)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, 1156f) * vec2<f32>(1002f, -391f)))), abs(abs(abs(u_input.b))), any(func_3(vec4<bool>(var_0.x, var_0.x, false, var_0.x)).zyy) || (true & !var_0.x)));
    global2 = array<vec2<u32>, 11>();
    return select(true, true, !(1u != global0.a) || var_2.b.c) || (abs(_wgslsmith_sub_i32(firstTrailingBit(-27620i), 3072i)) <= max(min(-25807i >> (var_2.a.x % 32u), abs(var_2.b.b)), var_2.b.b));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(u_input.c, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)), vec2<f32>(global0.b, 1045f))), reverseBits(i32(-1i) * -1i), func_2()));
    global2 = array<vec2<u32>, 11>();
    let var_1 = min(abs(~0u), ~(~4294967295u));
    let var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, u_input.b, 14817i, -53650i), vec4<i32>(64211i, -2147483647i, u_input.b, 56064i)), select(vec4<i32>(u_input.d, -47182i, 27409i, 1i), vec4<i32>(2147483647i, var_0.b.b, u_input.b, u_input.b), vec4<bool>(var_0.b.c, var_0.b.c, false, true)) >> (vec4<u32>(1u, var_1, var_1, 4294967295u) % vec4<u32>(32u))) ^ ~select(vec4<i32>(u_input.b, -1i, -78525i, 2147483647i), vec4<i32>(49517i, u_input.d, -49573i, 0i), false), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.b, var_0.b.b, 45376i) | vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.d, var_0.b.b, var_0.b.b)), u_input.b, ~0i, ~u_input.b), vec4<i32>(min(0i, ~(-2147483647i)), firstTrailingBit(~var_0.b.b), -firstTrailingBit(0i), var_0.b.b)));
    var_0 = Struct_2(u_input.c, var_0.b);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.b.a), -2147483647i, !var_0.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, global0.b <= global0.b, !(!all(vec3<bool>(true, true, true))));
    let var_1 = Struct_5(global0.b, u_input.c);
    global2 = array<vec2<u32>, 11>();
    let var_2 = _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(f32(-1f) * -886f)));
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a + 559f))))), _wgslsmith_f_op_f32(-var_2)), reverseBits(-2147483647i) & u_input.b, true);
    let var_4 = 0i;
    var var_5 = func_1();
    var var_6 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2296f, -702f)), var_3.a.x))), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.yxx, vec3<u32>(0u, ~0u, ~143441u), u_input.c), _wgslsmith_mult_vec3_u32(var_1.b, select(_wgslsmith_mult_vec3_u32(vec3<u32>(84704u, 1u, u_input.a.x), var_1.b), vec3<u32>(u_input.c.x, 72738u, 1u), var_0.x))));
    var var_7 = Struct_4(11576u, -434f);
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(vec4<i32>(-1i, var_3.b, i32(-1i) * -1i, var_4)), _wgslsmith_sub_vec4_i32(abs(select(vec4<i32>(0i, var_4, var_4, -2147483647i), vec4<i32>(0i, u_input.d, 1i, 1i), vec4<bool>(true, var_5.c, true, true))), abs(vec4<i32>(var_3.b, 12956i, 2147483647i, var_5.b) & vec4<i32>(20332i, u_input.d, u_input.d, -1i)))));
}

