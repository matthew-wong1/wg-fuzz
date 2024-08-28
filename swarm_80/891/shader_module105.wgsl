struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = u_input.a.x;
    var var_1 = Struct_3(arg_0, ~_wgslsmith_mod_vec4_i32(-(~vec4<i32>(u_input.d.x, 20463i, 18916i, u_input.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.d.x, u_input.b, 0i) & vec4<i32>(-53108i, -13315i, u_input.d.x, u_input.c), vec4<i32>(-1i, u_input.b, 0i, u_input.d.x))), 419f);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(203f, 372f, var_1.c) + vec3<f32>(-918f, -849f, arg_0.b)), vec3<f32>(-646f, arg_0.b, 770f)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, var_1.c)))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.b))), 1516f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b * 908f) * _wgslsmith_f_op_f32(select(var_1.a.b, var_1.a.b, arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - var_1.a.b) + _wgslsmith_f_op_f32(round(366f))), _wgslsmith_f_op_f32(ceil(1234f))), true)));
    var var_3 = u_input.e;
    let var_4 = Struct_1(vec2<bool>(!(!(true & arg_0.a.x)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) + var_2.x))));
    return arg_0.a.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(vec2<bool>(true, true), -884f);
    var var_1 = ~65827u;
    let var_2 = Struct_1(select(!select(vec2<bool>(var_0.a.x, var_0.a.x), !vec2<bool>(true, var_0.a.x), func_3(Struct_1(var_0.a, var_0.b))), select(vec2<bool>(var_0.a.x, all(vec4<bool>(true, false, var_0.a.x, var_0.a.x))), select(var_0.a, var_0.a, select(true, false, true)), true), !select(var_0.a, !var_0.a, !vec2<bool>(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_f32(step(var_0.b, var_0.b)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_4 = var_2.a.x && any(select(select(select(vec4<bool>(false, var_2.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, true, true, false), vec4<bool>(var_2.a.x, var_2.a.x, false, var_2.a.x)), vec4<bool>(true, true, true, true), !vec4<bool>(var_0.a.x, var_0.a.x, var_2.a.x, var_0.a.x)), vec4<bool>(true, true, var_0.a.x, var_0.a.x == true), select(select(vec4<bool>(false, var_0.a.x, false, false), vec4<bool>(false, var_2.a.x, true, false), vec4<bool>(var_0.a.x, true, var_0.a.x, true)), select(vec4<bool>(var_2.a.x, false, true, false), vec4<bool>(var_0.a.x, false, var_0.a.x, true), vec4<bool>(var_2.a.x, var_0.a.x, true, false)), false)));
    return u_input.e.x;
}

fn func_1(arg_0: vec2<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(u_input.a.x), ~_wgslsmith_sub_u32(1u, u_input.e.x), countOneBits(~0u)), _wgslsmith_sub_vec3_u32(~u_input.a, vec3<u32>(firstTrailingBit(u_input.e.x), func_2(), _wgslsmith_mod_u32(u_input.e.x, u_input.e.x)))), _wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(u_input.a, min(vec3<u32>(u_input.e.x, 39664u, 4294967295u), vec3<u32>(u_input.e.x, 1u, 0u))), u_input.a));
    let var_1 = func_2();
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(857f, -352f, -1830f, 565f) * vec4<f32>(841f, -514f, 1056f, 422f))), vec4<f32>(-166f, _wgslsmith_div_f32(389f, 1000f), 212f, _wgslsmith_f_op_f32(max(1000f, 1141f))), false))), vec4<f32>(-887f, -587f, 233f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(floor(-2151f)))));
    let var_3 = func_3(Struct_1(arg_0, -266f));
    let var_4 = _wgslsmith_add_vec2_i32(u_input.d, _wgslsmith_mod_vec2_i32(~vec2<i32>(36331i, 2147483647i), select(vec2<i32>(u_input.b, -31506i), u_input.d, arg_0.x)) >> (~(vec2<u32>(38062u, 0u) << (var_0.zx % vec2<u32>(32u))) % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_1, var_0.x), var_0.yy), firstTrailingBit(select(_wgslsmith_clamp_vec2_u32(u_input.e, u_input.a.xx, var_0.xz), min(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_1, 28840u)), arg_0.x)), min(var_0.zy, u_input.a.zz)) % vec2<u32>(32u));
    return select(vec3<bool>(!arg_0.x, false, all(!vec4<bool>(arg_0.x, var_3, var_3, arg_0.x))), vec3<bool>(true, !var_3, true), !select(!select(vec3<bool>(var_3, arg_0.x, false), vec3<bool>(false, true, false), true), select(select(vec3<bool>(true, var_3, arg_0.x), vec3<bool>(false, arg_0.x, var_3), vec3<bool>(true, true, false)), vec3<bool>(false, var_3, arg_0.x), any(vec3<bool>(true, true, true))), !var_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(select(func_1(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), vec3<bool>(func_1(vec2<bool>(true, true)).x, false, u_input.e.x > u_input.e.x), true));
    let var_1 = Struct_1(vec2<bool>(!all(vec2<bool>(var_0, var_0)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(390f)) * -948f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(883f - 411f)), _wgslsmith_f_op_f32(step(-382f, _wgslsmith_f_op_f32(553f * 1528f)))))));
    var var_2 = Struct_2(_wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.b, u_input.d.x, 0i | u_input.b, u_input.c), abs(vec4<i32>(-41096i, 15996i, u_input.d.x, u_input.b))), vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -13165i, -u_input.d.x), _wgslsmith_add_i32(u_input.d.x, ~0i), _wgslsmith_div_i32(_wgslsmith_mult_i32(96532i, u_input.b), min(-2147483647i, u_input.c)), u_input.b)), var_1.b, var_1);
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b), 1000f)))), var_1);
    var var_3 = vec2<i32>(u_input.c, u_input.d.x);
    var_3 = ~(vec2<i32>(var_2.a.x ^ var_3.x, -var_3.x) | countOneBits(~var_2.a.xw));
    var_2 = Struct_2(-var_2.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1.b, -757f))))), -1469f, true)), Struct_1(select(vec2<bool>(true, all(vec4<bool>(false, var_0, false, false))), select(var_1.a, var_1.a, false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(var_1.b * var_1.b)));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b)))), 1103f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f + -169f))) * var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, firstTrailingBit(-vec3<i32>(1i, max(var_3.x, u_input.b), -12736i | u_input.b)));
}

