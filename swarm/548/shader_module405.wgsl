struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(1u, 0u), vec3<bool>(true, false, false), true, vec3<f32>(716f, 934f, -568f));

var<private> global2: vec2<bool>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<u32> {
    return arg_2 >> (firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(arg_0.x, arg_1.a.x), global0.xy), vec2<u32>(18747u, global1.a.x), max(global0.xz, vec2<u32>(57369u, global1.a.x))), reverseBits(vec2<u32>(40304u, arg_0.x)))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<u32>) -> vec2<i32> {
    let var_0 = ~(-47909i) < -_wgslsmith_dot_vec3_i32(vec3<i32>(~(-47041i), ~u_input.a, u_input.c.x ^ u_input.b.x), vec3<i32>(-10814i, u_input.c.x << (0u % 32u), u_input.c.x << (global1.a.x % 32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1914f, 1140f, global1.d.x) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.d.x, global1.d.x, 449f), vec3<f32>(563f, 671f, global1.d.x)))), global1.d)))));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -1100f), -471f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-465f * var_1.x) - 1236f) * 749f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + 237f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f))), _wgslsmith_f_op_f32(-396f * -176f));
    let var_3 = select(~firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, arg_0.x, global1.a.x), vec4<u32>(4294967295u, global1.a.x, 0u, 4294967295u))), vec4<u32>(26904u, 55883u, global0.x, _wgslsmith_sub_u32(56356u, abs(global1.a.x) & 1u)), any(vec4<bool>(false, var_0, false, true)));
    let var_4 = Struct_1(var_3.zz, !global1.b, any(global1.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -209f), _wgslsmith_f_op_f32(ceil(var_1.x)), -182f))));
    return u_input.c.xz;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: i32) -> vec2<i32> {
    var var_0 = ((_wgslsmith_mod_i32(-22400i, 1i) < ~_wgslsmith_clamp_i32(arg_1.x, 67766i, -2147483647i)) || (!(global2.x & arg_0.x) | all(select(global1.b, arg_0.zzy, false)))) && true;
    let var_1 = func_4(_wgslsmith_mod_vec2_u32(global1.a, func_3(~vec3<u32>(arg_2.x, 40113u, global0.x), Struct_1(max(vec2<u32>(4294967295u, global1.a.x), vec2<u32>(28054u, global0.x)), vec3<bool>(true, false, true), !arg_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-970f, global1.d.x, global1.d.x))), arg_2.zy)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-138f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-321f + global1.d.x))))), _wgslsmith_f_op_f32(min(240f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))))));
    let var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(47003u), ~global1.a.x, ~98775u & firstTrailingBit(arg_2.x)), select(~(~(~vec3<u32>(global1.a.x, 22532u, global1.a.x))), vec3<u32>(arg_2.x, 78901u, ~global0.x), ((-358f > global1.d.x) | true) & all(arg_0)), vec3<u32>(_wgslsmith_mult_u32(19108u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(28178u, arg_2.x, arg_2.x, 16382u), vec4<u32>(1u, global0.x, 8855u, global0.x))), 1u, global1.a.x));
    global1 = Struct_1(global0.yz << (~firstTrailingBit(vec2<u32>(global1.a.x, var_3.x)) % vec2<u32>(32u)), vec3<bool>(true, var_2 < _wgslsmith_f_op_f32(max(global1.d.x, _wgslsmith_f_op_f32(-global1.d.x))), select(true, false, true)), !(global1.c && all(arg_0)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(global1.d)))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2, 452f, var_2)))))));
    return vec2<i32>(2147483647i, ~40849i);
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = select(!global1.b, select(!select(global1.b, vec3<bool>(global2.x, false, global1.c), false), !vec3<bool>(all(vec3<bool>(true, global1.b.x, global1.b.x)), global2.x, global2.x == true), false), any(!select(select(global1.b, vec3<bool>(global2.x, false, false), global1.b.x), select(global1.b, global1.b, global1.b), vec3<bool>(global2.x, true, global2.x))));
    global1 = Struct_1(global1.a, var_0, false, arg_0);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d.x + arg_0.x), _wgslsmith_f_op_f32(max(-430f, 1327f)))))))));
    var var_2 = Struct_1(~abs(~vec2<u32>(global1.a.x, 51151u)), select(vec3<bool>(global2.x, select(!global2.x, global2.x, true), true), select(global1.b, select(var_0, !vec3<bool>(true, var_0.x, false), !var_0), !vec3<bool>(var_0.x, global2.x, var_0.x)), vec3<bool>(true, 29532u >= firstTrailingBit(arg_1), all(select(vec4<bool>(global1.b.x, global2.x, global1.c, false), vec4<bool>(global1.b.x, global2.x, global1.c, true), vec4<bool>(true, var_0.x, var_0.x, true))))), (true == var_0.x) & any(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global1.d)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global1.d * vec3<f32>(921f, -1188f, var_1))))), global1.d)));
    var_2 = Struct_1(~vec2<u32>(~(~4294967295u), arg_2), vec3<bool>(u_input.c.x >= _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(8847i, u_input.a, -2147483647i, arg_3), vec4<i32>(1i, u_input.b.x, arg_3, -20019i)), vec4<i32>(arg_3, -1i, 1i, u_input.b.x)), true, true), all(!var_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.d.x, _wgslsmith_f_op_f32(-var_2.d.x)))), -1035f, _wgslsmith_f_op_f32(-var_2.d.x)));
    return Struct_1(var_2.a, select(select(select(vec3<bool>(true, true, global1.b.x), !global1.b, var_0.x & global1.c), vec3<bool>(true, all(vec2<bool>(true, true)), true), !global1.c || global1.c), !(!(!vec3<bool>(global1.c, global2.x, true))), select(true, any(vec3<bool>(global1.c, var_2.c, var_2.b.x)), false) && true), false, arg_0);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = select(select(vec4<bool>(!global1.b.x, any(select(vec4<bool>(true, false, arg_0.b.x, arg_0.b.x), vec4<bool>(false, arg_0.c, arg_0.c, global2.x), global2.x)), arg_0.b.x, !arg_0.b.x), !(!vec4<bool>(arg_0.c, global2.x, false, false)), !select(select(vec4<bool>(false, false, false, global1.b.x), vec4<bool>(false, arg_0.c, arg_0.b.x, arg_0.b.x), arg_0.b.x), select(vec4<bool>(global2.x, global1.b.x, global2.x, false), vec4<bool>(true, global2.x, false, global1.b.x), global1.c), !global1.b.x)), select(!(!(!vec4<bool>(true, true, false, global1.b.x))), !(!vec4<bool>(global2.x, global1.b.x, global1.c, arg_0.b.x)), !vec4<bool>(true, any(vec4<bool>(arg_0.c, true, false, global1.c)), arg_0.c | true, global2.x)), global2.x);
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.d, arg_0.d, true))), arg_0.d)), 4294967295u, global1.a.x, _wgslsmith_dot_vec2_i32(-max(-u_input.c.yy, min(vec2<i32>(-1i, u_input.c.x), u_input.b)), _wgslsmith_div_vec2_i32(u_input.c.xy, func_2(select(var_0, vec4<bool>(false, global2.x, true, global1.b.x), false), vec3<i32>(u_input.a, u_input.a, u_input.c.x), countOneBits(vec3<u32>(52786u, arg_0.a.x, 4578u)), -44377i))));
    let var_2 = ~vec4<u32>(global0.x, _wgslsmith_div_u32(countOneBits(arg_0.a.x) << (4294967295u % 32u), 70059u), ~_wgslsmith_div_u32(global0.x, ~10265u), 4294967295u);
    let var_3 = Struct_1(abs(vec2<u32>(global0.x, ~(~var_1.a.x))), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, -1000f, 497f)), ~0u, 38204u, _wgslsmith_add_i32(_wgslsmith_mult_i32(-9689i, abs(u_input.c.x)), u_input.a)).b, true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1490f * 1052f), _wgslsmith_f_op_f32(-462f * var_1.d.x), global1.d.x) - vec3<f32>(_wgslsmith_f_op_f32(max(-1690f, -2020f)), _wgslsmith_f_op_f32(-arg_0.d.x), arg_0.d.x)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-493f - -594f)), _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x * global1.d.x) * _wgslsmith_f_op_f32(-global1.d.x)))));
    let var_4 = vec2<bool>(var_3.c, !(2147483647i <= u_input.b.x) || true);
    return func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.d.x, 1042f)), _wgslsmith_dot_vec2_u32(vec2<u32>((var_3.a.x >> (global0.x % 32u)) >> (11728u % 32u), var_1.a.x), ~var_3.a << (countOneBits(var_1.a) % vec2<u32>(32u))), ~(~global1.a.x), _wgslsmith_div_i32(u_input.b.x, u_input.c.x));
}

fn func_6(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    let var_0 = vec3<bool>(arg_2.c && (false && global2.x), any(vec4<bool>(false && (true && arg_2.b.x), false, global1.c, !(global1.c | arg_2.c))), global1.c);
    global0 = _wgslsmith_div_vec3_u32(~vec3<u32>(min(~17718u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.x, arg_2.a.x, 4294967295u), vec3<u32>(4294967295u, arg_2.a.x, 4294967295u))), ~_wgslsmith_clamp_u32(arg_2.a.x, arg_2.a.x, 37985u), reverseBits(~4294967295u)), ~(~reverseBits(countOneBits(vec3<u32>(6694u, arg_3, arg_2.a.x)))));
    var var_1 = _wgslsmith_f_op_f32(abs(global1.d.x));
    let var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.a, min(firstLeadingBit(global1.a), vec2<u32>(global0.x, 40633u) >> (vec2<u32>(1u, 19998u) % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(4529u, arg_3)) << (func_3(~vec3<u32>(global1.a.x, global0.x, global1.a.x), Struct_1(arg_2.a, vec3<bool>(global1.c, var_0.x, global2.x), true, arg_2.d), vec2<u32>(arg_2.a.x, 0u)) % vec2<u32>(32u))), vec2<u32>(max(80u, ~(~20724u)), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(global0.x, global0.x), _wgslsmith_mod_u32(arg_2.a.x, global1.a.x) & ~arg_3, ~0u)));
    let var_3 = global1.b;
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-422f, -674f, _wgslsmith_div_f32(-208f, -1000f)));
    let var_1 = _wgslsmith_dot_vec4_i32(max(~(-vec4<i32>(u_input.a, -38571i, -20216i, u_input.a) | (vec4<i32>(-57932i, 10977i, -44672i, -15685i) ^ vec4<i32>(u_input.c.x, 0i, u_input.c.x, -24991i))), vec4<i32>(u_input.b.x, u_input.c.x, u_input.a, _wgslsmith_div_i32(u_input.a, 1998i)) ^ reverseBits(vec4<i32>(-3227i, u_input.c.x, 1i, u_input.a))), _wgslsmith_sub_vec4_i32(vec4<i32>(min(u_input.b.x, u_input.b.x), _wgslsmith_add_i32(u_input.c.x & 16076i, countOneBits(1i)), u_input.c.x, 28621i), vec4<i32>(38777i, 1i, ~reverseBits(u_input.a), 9538i)));
    var var_2 = Struct_1(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(51150u, global1.a.x, global1.a.x) | vec3<u32>(1u, global0.x, global1.a.x), vec3<u32>(13914u, 1u, 0u)), 122809u), select(global1.b, func_6(var_0.x, ~(vec4<i32>(var_1, 0i, 41699i, 17258i) << (vec4<u32>(global1.a.x, 57004u, global1.a.x, 1u) % vec4<u32>(32u))), func_1(Struct_1(vec2<u32>(global1.a.x, 77602u), global1.b, global2.x, global1.d)), global1.a.x), global2.x), (global0.x ^ 4294967295u) > global0.x, vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-636f, -1757f))), global1.d.x, 711f));
    var var_3 = Struct_1(var_2.a | max(~(~vec2<u32>(global0.x, var_2.a.x)), ~(~vec2<u32>(global1.a.x, global1.a.x))), !vec3<bool>(global1.c, func_6(_wgslsmith_f_op_f32(ceil(var_2.d.x)), -vec4<i32>(1i, 23783i, u_input.a, u_input.a), Struct_1(var_2.a, global1.b, true, vec3<f32>(global1.d.x, var_0.x, 573f)), _wgslsmith_add_u32(0u, 0u)).x, func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(389f, 647f, -772f)), var_2.a.x, countOneBits(var_2.a.x), var_1 << (global0.x % 32u)).c), any(!vec2<bool>(all(global1.b), all(var_2.b))), global1.d);
    let var_4 = func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.d.x)))), global1.d.x, func_1(Struct_1(~vec2<u32>(0u, 14936u), func_1(Struct_1(global1.a, var_2.b, var_2.c, var_3.d)).b, true, _wgslsmith_f_op_vec3_f32(var_3.d * vec3<f32>(1024f, global1.d.x, var_0.x)))).d.x), 0u, var_2.a.x, u_input.a);
    var var_5 = func_5(var_4.d, ~_wgslsmith_clamp_u32(abs(var_2.a.x), ~var_2.a.x, global1.a.x), min(var_4.a.x, _wgslsmith_sub_u32(var_4.a.x, ~global0.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(-26056i, var_1), u_input.b) ^ vec2<i32>(2147483647i, 16044i), ~select(u_input.c.yy, vec2<i32>(32738i, -52573i), vec2<bool>(true, var_3.b.x))), max(max(vec2<i32>(u_input.b.x, var_1), vec2<i32>(var_1, u_input.c.x)) | abs(u_input.b), u_input.b)));
    let var_6 = _wgslsmith_f_op_f32(-var_2.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.x, var_3.d.x, var_0.x, -877f))))))), _wgslsmith_mod_u32(var_3.a.x, 4294967295u), u_input.c, vec2<f32>(1382f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_6 * var_0.x)))));
}

