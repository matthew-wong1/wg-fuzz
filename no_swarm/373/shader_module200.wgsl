struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(-1i, 0i), vec2<i32>(-5327i, -10420i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(58104i, i32(-2147483648)), vec2<i32>(-14273i, 16362i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-59760i, 1i), vec2<i32>(-33256i, -24095i));

var<private> global1: bool = true;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>) -> vec4<f32> {
    global0 = array<vec2<i32>, 9>();
    let var_0 = Struct_1(_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, 24200i, 2147483647i) | (u_input.d ^ u_input.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(997f, _wgslsmith_f_op_f32(-361f * -1000f))), 847f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(269f - -288f), 2104f, any(arg_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-194f)), -251f))), -_wgslsmith_sub_vec3_i32(abs(~u_input.d), ~vec3<i32>(u_input.d.x, u_input.b, 1i)), min(vec4<i32>(-2147483647i, countOneBits(u_input.b ^ 2147483647i), -36117i, 1i), min(firstTrailingBit(vec4<i32>(u_input.b, u_input.b, -2147483647i, 2147483647i)), vec4<i32>(~(-1i), u_input.d.x, i32(-1i) * -559i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.d.x, 0i), vec3<i32>(u_input.b, u_input.d.x, -2147483647i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 1084f)) - _wgslsmith_f_op_f32(max(-848f, -507f))) * 1f)));
    let var_1 = select(vec3<bool>(all(select(select(arg_1, arg_1, arg_1), select(arg_1, arg_1, arg_1.x), true)), false, arg_1.x), select(!select(arg_1.yyw, select(vec3<bool>(arg_1.x, true, true), vec3<bool>(true, true, arg_1.x), true), vec3<bool>(true, true, true)), !arg_1.www, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)) >= _wgslsmith_f_op_f32(var_0.e - -1686f)), true);
    global1 = !any(!select(arg_1.ww, vec2<bool>(var_1.x, arg_1.x), var_1.xy));
    var var_2 = Struct_1(u_input.d.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 315f, 1334f, -984f) - var_0.b))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b * vec4<f32>(154f, 122f, var_0.e, 1635f)), _wgslsmith_f_op_vec4_f32(var_0.b + vec4<f32>(var_0.b.x, var_0.e, 756f, -2021f))))))), vec3<i32>(~(-var_0.a), -40052i, ~u_input.b), _wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(var_0.d, vec4<i32>(0i, 0i, var_0.c.x, 0i) & vec4<i32>(-21633i, -15000i, var_0.a, -41937i), vec4<i32>(var_0.a, u_input.d.x, 0i, var_0.c.x) >> (vec4<u32>(40850u, 6232u, u_input.a.x, 32515u) % vec4<u32>(32u))), select(-(~vec4<i32>(u_input.b, 2147483647i, var_0.c.x, var_0.c.x)), vec4<i32>(_wgslsmith_sub_i32(20040i, -15775i), ~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -1i), vec3<i32>(var_0.d.x, -1i, u_input.d.x)), u_input.b), vec4<bool>(true, false, any(arg_1), true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-744f)) + var_0.e))));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x * var_2.e)), -693f, 575f, _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_vec4_f32(-var_0.b))));
}

fn func_2(arg_0: vec4<i32>) -> bool {
    global1 = false;
    var var_0 = Struct_1(abs(u_input.d.x), vec4<f32>(1f, 1f, 1f, 1f), arg_0.xxw, arg_0, _wgslsmith_f_op_f32(abs(-314f)));
    let var_1 = ~arg_0;
    var var_2 = u_input.b;
    var var_3 = Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(func_3(~u_input.a.zw, vec4<bool>(false, true, true, all(vec3<bool>(false, false, false))))), select(abs(~countOneBits(arg_0.yyw)), _wgslsmith_mod_vec3_i32(vec3<i32>(-27739i, 7585i, -2154i) | vec3<i32>(-1i, arg_0.x, 23186i), _wgslsmith_clamp_vec3_i32(arg_0.ywx, var_1.zwz, u_input.d)) & -u_input.d, select(vec3<bool>(any(vec4<bool>(true, true, false, true)), -1i == u_input.b, all(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), _wgslsmith_div_vec4_i32(-vec4<i32>(-12583i, min(var_0.d.x, 8709i), -46496i, select(arg_0.x, -48175i, true)), var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1043f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -606f) * var_0.e))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.e))))));
    return false;
}

fn func_1() -> vec4<i32> {
    var var_0 = select(vec4<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true), vec4<bool>(1u != ~u_input.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1000f, 1510f, true)))) > 1424f, !(func_2(vec4<i32>(-30780i, u_input.d.x, -2147483647i, u_input.d.x)) & true), any(vec4<bool>(any(vec4<bool>(false, true, true, true)), false, false, true))), reverseBits(_wgslsmith_mod_i32(-u_input.b, u_input.d.x)) >= u_input.d.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(func_3(min(vec2<u32>(u_input.a.x, 1u), u_input.a.xw), !select(select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, true), var_0.x), !vec4<bool>(var_0.x, false, false, true), u_input.a.x >= u_input.a.x), select(!vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, false, false, false), select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, false, true, false), true)), vec4<bool>(var_0.x, var_0.x & var_0.x, var_0.x, true)))).x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-612f * -1283f), 1662f), 294f)))));
    global1 = var_0.x;
    var var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(~u_input.b, u_input.d.x ^ 40192i, 2147483647i), vec3<i32>(_wgslsmith_mult_i32(abs(~u_input.b), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 40939i), vec4<i32>(2147483647i, -43343i, u_input.d.x, 2147483647i))), 1i & (abs(u_input.d.x) << (999u % 32u)), _wgslsmith_dot_vec4_i32(select(reverseBits(vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, 8357i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.d.x), vec4<i32>(u_input.d.x, -1i, -22907i, -2147483647i)), var_0.x), _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.b, u_input.b, -1i, u_input.d.x), vec4<i32>(-2382i, u_input.b, u_input.d.x, u_input.d.x), false), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, u_input.b, 9365i), vec4<i32>(u_input.b, 0i, 24700i, u_input.b))))));
    return firstLeadingBit(-(vec4<i32>(-1i) * -(vec4<i32>(var_3.x, 8786i, u_input.d.x, u_input.d.x) << (u_input.a % vec4<u32>(32u)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    var var_0 = vec3<bool>(false, true, true);
    let var_1 = 26457u;
    let var_2 = ~reverseBits(~(_wgslsmith_div_vec4_u32(vec4<u32>(3043u, u_input.c, 1u, 25926u), vec4<u32>(var_1, 14984u, var_1, var_1)) >> (reverseBits(u_input.a) % vec4<u32>(32u))));
    global0 = array<vec2<i32>, 9>();
    let var_3 = reverseBits(-firstTrailingBit(vec3<i32>(-42605i, 74268i << (var_2.x % 32u), ~arg_0.x)));
    return any(!(!vec3<bool>(all(vec3<bool>(var_0.x, var_0.x, true)), any(vec4<bool>(true, true, true, true)), !var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 9>();
    var var_0 = func_4(vec3<i32>(~(~firstTrailingBit(-35873i)), u_input.d.x, u_input.d.x), _wgslsmith_clamp_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(-3272i, u_input.d.x, u_input.b, -34259i) ^ vec4<i32>(u_input.b, u_input.d.x, 1i, -2147483647i), vec4<i32>(12637i, -1i, u_input.d.x, u_input.d.x)), func_1(), ~(abs(vec4<i32>(1i, 1i, -69898i, u_input.b)) >> (vec4<u32>(57136u, 58400u, u_input.a.x, 1u) % vec4<u32>(32u)))), Struct_1(1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(375f, -2375f, 617f, 928f) + vec4<f32>(541f, 184f, -532f, 147f))) * vec4<f32>(_wgslsmith_f_op_f32(floor(205f)), 2186f, 1f, 547f)), -(~u_input.d), vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, u_input.b, u_input.b, u_input.d.x), vec4<i32>(-73281i, 1i, u_input.d.x, u_input.d.x)), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(22257i, u_input.d.x, u_input.d.x, u_input.d.x), -vec4<i32>(-1i, 39785i, u_input.d.x, u_input.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -257f)));
    global1 = func_4(u_input.d, -(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -3515i, u_input.b, -2147483647i), vec4<i32>(-2147483647i, u_input.b, -2147483647i, u_input.d.x))) ^ select(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x) << (u_input.a % vec4<u32>(32u)), vec4<i32>(0i, u_input.b, -43309i, -23026i), true)), Struct_1(func_1().x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1015f, 160f, -186f, 1000f))))), func_1().yyx, vec4<i32>(u_input.b, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.d.x, -33533i, -2147483647i), vec4<i32>(u_input.b, 30478i, u_input.d.x, u_input.d.x)), _wgslsmith_div_i32(-1i, u_input.d.x), func_1().x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(877f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(889f, 1329f)) - _wgslsmith_f_op_f32(max(-2882f, 123f))))));
    var var_1 = Struct_1(-8001i, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2037f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1029f - -525f) * _wgslsmith_f_op_f32(f32(-1f) * -834f)), _wgslsmith_div_f32(-484f, -993f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-203f, -353f), -175f))))), vec3<i32>(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), u_input.d.x, -func_1().x), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, -35600i, -2916i, 20301i), vec4<i32>(-12045i, 2147483647i, u_input.d.x, u_input.d.x)), firstTrailingBit(-vec4<i32>(u_input.d.x, 18526i, u_input.b, u_input.d.x)), max(vec4<i32>(u_input.d.x, u_input.d.x, -637i, 27074i), vec4<i32>(-2147483647i, u_input.b, -2147483647i, u_input.d.x))), vec4<i32>(-43538i | u_input.b, 12728i, countOneBits(-10083i), u_input.d.x) >> (~min(vec4<u32>(u_input.c, 0u, 4294967295u, 1u), vec4<u32>(u_input.a.x, 85120u, 64522u, u_input.c)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -302f));
    let var_2 = false;
    var var_3 = !(var_2 || !(!(!var_2)));
    var var_4 = var_1.b;
    var var_5 = u_input.b;
    global1 = !(!(any(select(vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, false, var_2), var_2)) && (var_4.x <= var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(var_1.c) >> (select(vec3<u32>(15157u, 0u, 1u), u_input.a.wxw, vec3<bool>(var_2, var_2, true)) % vec3<u32>(32u)), max(var_1.d.wzz | var_1.d.yyz, var_1.d.zyx >> (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u)))), -_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.c.x, 51449i, u_input.d.x) & vec3<i32>(u_input.b, var_1.a, u_input.d.x), var_1.c)), vec2<u32>(min(~_wgslsmith_add_u32(u_input.c, u_input.c), ~u_input.a.x), u_input.c), -225f, vec4<f32>(var_1.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-575f, -801f)), var_4.x, var_4.x));
}

