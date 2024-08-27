struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: array<u32, 32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = 66284u;
    var_0 = global1[_wgslsmith_index_u32(abs(u_input.b | u_input.b), 32u)];
    let var_1 = Struct_1(false, !(!arg_1.b), firstLeadingBit(vec3<u32>(40603u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 32u)], 4294967295u), arg_1.c.x) << (arg_1.c % vec3<u32>(32u))), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(select(arg_1.c, arg_1.c, true), ~arg_1.c), ~(~arg_1.d)));
    var_0 = u_input.a.x ^ ~reverseBits(~4294967295u);
    var_0 = _wgslsmith_add_u32(arg_1.d.x ^ ~(global1[_wgslsmith_index_u32(~var_1.d.x, 32u)] >> (abs(var_1.d.x) % 32u)), _wgslsmith_mult_u32(~(~(1u ^ arg_1.c.x)), arg_1.d.x | _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(arg_1.d.x, 32u)], arg_1.c.x) & arg_1.d.yz, ~vec2<u32>(33284u, 48417u))));
    return ~min(_wgslsmith_clamp_u32(arg_1.c.x ^ 12594u, firstLeadingBit(arg_1.d.x), u_input.a.x), u_input.a.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(true, vec3<bool>(true, true, true), vec3<u32>(4294967295u, ~func_3(min(vec4<i32>(11051i, 1i, -2147483647i, -2147483647i), vec4<i32>(26276i, -2147483647i, 39353i, 29219i)), Struct_1(true, vec3<bool>(false, true, true), vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(89631u, 32u)], 21596u), vec3<u32>(0u, 4294967295u, 16128u))), ~(~(u_input.a.x | u_input.b))), ~(~(~abs(vec3<u32>(29575u, global1[_wgslsmith_index_u32(4294967295u, 32u)], 0u)))));
    let var_1 = Struct_1(any(select(vec4<bool>(all(var_0.b), false, true, all(vec4<bool>(var_0.a, false, false, var_0.b.x))), select(select(vec4<bool>(var_0.a, true, var_0.a, false), vec4<bool>(var_0.b.x, false, var_0.b.x, false), vec4<bool>(var_0.b.x, false, var_0.b.x, true)), vec4<bool>(false, true, var_0.b.x, false), vec4<bool>(false, var_0.b.x, true, false)), false)), !(!(!var_0.b)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.d, vec3<u32>(1u, 15945u, 1u)), vec3<u32>(~u_input.b, 1u, ~1u)), vec3<u32>(2460u, 4294967295u, _wgslsmith_add_u32(3088u ^ _wgslsmith_add_u32(global1[_wgslsmith_index_u32(10601u, 32u)], 8940u), _wgslsmith_dot_vec3_u32(~var_0.d, ~var_0.c))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(29895u, 30u)]), _wgslsmith_f_op_f32(min(1001f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.d.x, 32u)], 30u)])), _wgslsmith_div_f32(-889f, 3033f))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(10571u, 30u)], 741f, global0[_wgslsmith_index_u32(1u, 30u)]), vec3<f32>(global0[_wgslsmith_index_u32(1u, 30u)], 1363f, global0[_wgslsmith_index_u32(38924u, 30u)]), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c.x, 32u)], 32u)], 30u)], global0[_wgslsmith_index_u32(var_1.c.x, 30u)], -586f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(38323u, 30u)], global0[_wgslsmith_index_u32(var_0.c.x, 30u)]))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c.x, 32u)], 30u)], -472f), vec3<f32>(global0[_wgslsmith_index_u32(0u, 30u)], 860f, global0[_wgslsmith_index_u32(51261u, 30u)]), var_0.b)), 1u > var_1.d.x)))));
    let var_3 = _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(var_0.d.x >> (reverseBits(1u) % 32u), _wgslsmith_mod_u32(u_input.b, abs(51977u)), var_0.c.x)), ~vec3<u32>(1u, reverseBits(~31127u), 4294967295u));
    global0 = array<f32, 30>();
    return Struct_1(any(var_1.b), !select(select(var_1.b, var_0.b, var_1.a), select(select(var_0.b, vec3<bool>(var_0.b.x, var_1.a, false), var_1.b.x), vec3<bool>(false, true, var_0.a), all(var_0.b)), !(!var_0.a)), countOneBits(firstLeadingBit(var_3)), _wgslsmith_sub_vec3_u32(select(reverseBits(~var_1.c), ~vec3<u32>(var_3.x, 89495u, 0u), var_0.b), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(26158u, global1[_wgslsmith_index_u32(var_0.d.x, 32u)], var_0.d.x), var_1.c, var_3) >> (abs(vec3<u32>(global1[_wgslsmith_index_u32(var_1.d.x, 32u)], 57667u, 28123u)) % vec3<u32>(32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = ~1u;
    global0 = array<f32, 30>();
    var var_1 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.b.x, 31613u > var_0, true && arg_0.b.x, false), 1i != _wgslsmith_clamp_i32(-4456i, -1i, -12619i)), select(select(!vec4<bool>(false, arg_0.a, true, true), select(select(vec4<bool>(arg_0.b.x, false, arg_0.b.x, arg_0.a), vec4<bool>(arg_0.b.x, arg_0.a, arg_0.a, false), vec4<bool>(arg_0.a, true, arg_0.b.x, arg_2.a)), vec4<bool>(arg_2.b.x, false, false, true), any(vec2<bool>(arg_0.b.x, false))), !select(vec4<bool>(false, arg_2.a, arg_2.a, false), vec4<bool>(arg_0.b.x, arg_2.a, true, arg_2.a), arg_0.b.x)), vec4<bool>(!any(vec4<bool>(arg_0.b.x, false, arg_0.a, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, -2147483647i), vec3<i32>(-50135i, 33004i, -2147483647i)) != 0i, all(select(arg_0.b.yx, arg_0.b.zz, arg_2.a)), _wgslsmith_f_op_f32(min(1000f, global0[_wgslsmith_index_u32(u_input.a.x, 30u)])) < global0[_wgslsmith_index_u32(u_input.a.x << (0u % 32u), 30u)]), vec4<bool>(true, arg_2.a, false, _wgslsmith_f_op_f32(abs(866f)) < _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 30u)]))), select(select(vec4<bool>(true, true, true, func_2().b.x), select(!vec4<bool>(arg_2.b.x, true, true, arg_0.b.x), vec4<bool>(true, true, true, true), !arg_0.b.x), select(vec4<bool>(false, false, arg_2.a, arg_0.b.x), select(vec4<bool>(true, arg_2.a, arg_0.b.x, false), vec4<bool>(true, false, true, arg_2.b.x), arg_0.b.x), !arg_2.a)), vec4<bool>(!(!arg_0.a), all(vec4<bool>(arg_2.a, arg_0.b.x, arg_2.a, arg_0.a)) | (-460f < global0[_wgslsmith_index_u32(4294967295u, 30u)]), all(!arg_2.b), any(vec4<bool>(true, arg_0.b.x, arg_2.a, arg_2.b.x))), all(!vec3<bool>(arg_0.b.x, arg_0.a, arg_0.b.x))));
    let var_2 = arg_0.b.x;
    var_1 = vec4<bool>(false, var_2, !var_1.x && all(func_2().b.yy), var_1.x == true);
    return arg_0.c.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    var var_0 = ~global1[_wgslsmith_index_u32(~func_4(func_2(), vec2<u32>(arg_0.x | arg_0.x, ~4294967295u), arg_1), 32u)];
    var var_1 = any(!(!vec2<bool>(arg_1.a, !arg_1.b.x)));
    global1 = array<u32, 32>();
    var_0 = ~arg_0.x;
    return vec4<bool>(arg_1.b.x, arg_1.a, all(!(!(!vec3<bool>(arg_1.a, false, false)))), true);
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global1 = array<u32, 32>();
    var var_0 = func_2().c;
    var var_1 = Struct_1(arg_2.b.x, !func_2().b, min(firstLeadingBit(arg_2.c), firstTrailingBit(_wgslsmith_sub_vec3_u32(arg_2.c, vec3<u32>(16920u, 0u, 0u)))), ~select(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 43400u, global1[_wgslsmith_index_u32(1u, 32u)]), arg_2.c), ~vec3<u32>(var_0.x, 43961u, u_input.b), func_2().b) ^ ~vec3<u32>(abs(arg_2.c.x), ~u_input.a.x, 1u));
    var_1 = Struct_1(all(select(vec2<bool>(arg_1, var_1.a), arg_2.b.zx, select(select(vec2<bool>(arg_1, true), vec2<bool>(true, arg_1), var_1.b.xx), vec2<bool>(false, false), arg_2.b.zx))), func_2().b, select(~vec3<u32>(func_4(Struct_1(arg_2.b.x, vec3<bool>(true, true, true), vec3<u32>(1u, u_input.b, var_0.x), arg_2.d), vec2<u32>(u_input.a.x, var_0.x), Struct_1(arg_2.b.x, var_1.b, vec3<u32>(4294967295u, u_input.b, var_0.x), var_1.c)), 1u, max(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 32u)])), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_2.d.x, 0u), vec3<u32>(27457u, arg_2.d.x, 5684u), var_1.d) << (firstLeadingBit(arg_2.c) % vec3<u32>(32u))), false), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, func_3(vec4<i32>(36419i, -1i, 9491i, 38196i), arg_2), var_1.c.x), _wgslsmith_sub_u32(var_0.x, var_1.d.x) & u_input.a.x), ~1u, 3289u));
    let var_2 = -1i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-439f, true, Struct_1(!all(vec3<bool>(false, false, false)) & all(func_1(vec4<u32>(89293u, 0u, 84384u, global1[_wgslsmith_index_u32(110691u, 32u)]), Struct_1(true, vec3<bool>(false, true, false), vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 32u)], 11830u, u_input.a.x), vec3<u32>(34067u, 39295u, 0u)), 930f)), func_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(9281u, 32u)], 0u, 1u, u_input.a.x) << (vec4<u32>(49284u, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 1u, 16280u) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 1u, 4294967295u, global1[_wgslsmith_index_u32(u_input.b, 32u)]), max(vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a.x, 28034u), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)]))), Struct_1(true, select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<u32>(0u, 1u, u_input.a.x), ~vec3<u32>(784u, global1[_wgslsmith_index_u32(0u, 32u)], 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(18895u, 30u)])))).yzw, firstTrailingBit(abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(0u, 32u)], 19707u) % vec3<u32>(32u)))), _wgslsmith_sub_vec3_u32(vec3<u32>(func_2().d.x, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(24135u, u_input.b, 39442u), 32u)], 27025u), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, 4294967295u)), ~vec3<u32>(global1[_wgslsmith_index_u32(16532u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(u_input.b, 32u)])))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~42595u, 30u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 30u)])))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(sign(1000f)))))) * var_2.x);
    let var_4 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-23858i, -2147483647i) << (_wgslsmith_add_u32(u_input.b, var_1.d.x) % 32u), min(i32(-1i) * -1i, abs(2147483647i)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(8636i, -1i, 0i), vec3<i32>(-1i, -38574i, 1i)), _wgslsmith_mult_i32(0i, -1i))), firstTrailingBit(vec3<i32>(1i, 1i, 1i)));
    var var_5 = true;
    var var_6 = ~vec3<u32>(20305u, u_input.b, 14744u);
    var var_7 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-633f, max(reverseBits(_wgslsmith_add_u32(var_6.x, global1[_wgslsmith_index_u32(~1u, 32u)])), _wgslsmith_clamp_u32(func_3(vec4<i32>(var_4.x, var_4.x, 3907i, 0i), var_1), _wgslsmith_dot_vec2_u32(vec2<u32>(115545u, 0u), ~var_1.c.zy), _wgslsmith_sub_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(73464u, 32u)], var_1.d.x), abs(var_7.d.x)))));
}

