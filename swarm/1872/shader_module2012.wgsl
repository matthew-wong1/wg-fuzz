struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, false, false);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = ~abs(vec4<i32>(~u_input.b.x ^ 2147483647i, max(-12164i, -u_input.b.x), 0i, -9907i));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1190f, -891f, 1000f, 251f)))))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1060f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-740f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(289f + -995f)), -638f)));
    var var_2 = Struct_1(vec2<bool>(false, any(vec4<bool>(global0[_wgslsmith_index_u32(0u << (u_input.d.x % 32u), 3u)], all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(6369u, 3u)])), true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))), _wgslsmith_mult_vec4_i32(u_input.b, ~(~_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(u_input.c.x, 1068i, u_input.c.x, 1i)))), var_1, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(45075u, ~(~_wgslsmith_clamp_u32(0u, u_input.e.x, 4294967295u))), 3u)]);
    var var_3 = Struct_3(Struct_1(var_2.a, vec4<i32>(1i, var_2.b.x, u_input.b.x << (_wgslsmith_div_u32(1u, u_input.e.x) % 32u), -(var_0.x ^ -10082i)), var_1, !global0[_wgslsmith_index_u32(u_input.e.x, 3u)]), Struct_1(select(vec2<bool>(var_2.d, select(false, var_2.a.x, var_2.a.x)), vec2<bool>(u_input.a.x > 89605u, var_2.d), false & all(var_2.a)), -vec4<i32>(var_0.x, ~(-6118i), i32(-1i) * -2147483647i, -2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1 - vec4<f32>(var_2.c.x, var_2.c.x, var_1.x, var_2.c.x))) * vec4<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(min(var_1.x, var_1.x)), -355f)), _wgslsmith_div_i32(max(-47i, var_0.x), min(u_input.b.x, u_input.b.x)) < 59666i), Struct_1(var_2.a, u_input.c, vec4<f32>(-288f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), 694f, -1070f), true), _wgslsmith_mod_i32(-(u_input.c.x | min(-2147483647i, -10656i)), 20349i), _wgslsmith_add_u32(u_input.e.x, 0u));
    var_3 = Struct_3(Struct_1(var_2.a, ~vec4<i32>(~(-2147483647i), 1i, ~2147483647i, select(var_2.b.x, var_2.b.x, false)), var_1, var_3.a.a.x), Struct_1(!var_2.a, vec4<i32>(-2147483647i, firstLeadingBit(var_0.x), u_input.c.x, var_2.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_3.a.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.c.x, var_1.x, var_3.a.c.x, -680f))), all(!vec3<bool>(global0[_wgslsmith_index_u32(var_3.e, 3u)], true, true))), Struct_1(select(vec2<bool>(var_2.a.x, var_2.a.x), vec2<bool>(var_2.d, u_input.e.x == 4294967295u), vec2<bool>(true, var_3.a.d)), var_2.b, var_1, any(var_3.b.a)), ~var_2.b.x, u_input.d.x);
    return all(select(select(vec4<bool>(true, true, true || global0[_wgslsmith_index_u32(var_3.e, 3u)], true), !select(vec4<bool>(true, var_2.a.x, false, true), vec4<bool>(false, var_3.a.d, true, false), vec4<bool>(var_2.a.x, var_3.a.a.x, var_3.c.d, var_2.d)), select(!vec4<bool>(global0[_wgslsmith_index_u32(var_3.e, 3u)], var_2.a.x, global0[_wgslsmith_index_u32(37821u, 3u)], var_2.d), vec4<bool>(var_3.a.a.x, var_3.c.a.x, false, var_3.a.a.x), !vec4<bool>(global0[_wgslsmith_index_u32(44253u, 3u)], true, var_3.b.a.x, var_3.c.a.x))), !(!vec4<bool>(true, var_3.c.a.x, var_3.b.a.x, global0[_wgslsmith_index_u32(u_input.d.x, 3u)])), global0[_wgslsmith_index_u32(4294967295u, 3u)]));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = Struct_2(Struct_1(vec2<bool>(!global0[_wgslsmith_index_u32(arg_0, 3u)], global0[_wgslsmith_index_u32(~0u, 3u)]), abs(u_input.b), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1281f, -1418f, 1167f, -558f) * vec4<f32>(376f, -469f, 551f, 545f))))), func_3()));
    var var_1 = var_0.a.b.x | -u_input.b.x;
    let var_2 = ~u_input.a.x;
    var var_3 = vec3<bool>(all(!vec3<bool>(select(var_0.a.d, var_0.a.d, true), func_3(), false)), var_0.a.a.x, true);
    let var_4 = Struct_2(Struct_1(vec2<bool>(firstTrailingBit(-1i) != select(2147483647i, var_0.a.b.x, true), var_3.x), abs(vec4<i32>(u_input.b.x, var_0.a.b.x, var_0.a.b.x, u_input.b.x)) >> ((vec4<u32>(u_input.e.x, arg_0, 56820u, 4294967295u) ^ u_input.a) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c.x, -1288f, 116f, 208f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1004f, 702f, -996f, var_0.a.c.x)))), var_0.a.c)), all(select(!vec3<bool>(global0[_wgslsmith_index_u32(var_2, 3u)], var_3.x, true), vec3<bool>(false, true, true), func_3()))));
    return ~var_2;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = max(-12259i, u_input.b.x) << (func_2(~u_input.d.x) % 32u);
    var var_1 = Struct_1(select(vec2<bool>(_wgslsmith_f_op_f32(step(-217f, -1000f)) <= 332f, true), !vec2<bool>(true, func_3()), !select(select(vec2<bool>(arg_0.x, global0[_wgslsmith_index_u32(3237u, 3u)]), arg_0.zy, arg_0.zx), vec2<bool>(global0[_wgslsmith_index_u32(55791u, 3u)], true), global0[_wgslsmith_index_u32(4294967295u, 3u)])), -u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(1000f, 1847f, true)), _wgslsmith_f_op_f32(1589f + -1022f), _wgslsmith_div_f32(187f, -419f), -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2045f, -1071f, 139f, 966f), vec4<f32>(-1929f, -407f, -1067f, -847f)))))), any(!vec4<bool>(!global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.e.x, 3u)], arg_0.x, arg_0.x)));
    let var_2 = Struct_2(Struct_1(var_1.a, u_input.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(var_1.c, _wgslsmith_f_op_vec4_f32(var_1.c * var_1.c))))), true));
    var var_3 = _wgslsmith_f_op_f32(-var_2.a.c.x);
    var var_4 = 1566f;
    return Struct_1(var_1.a, abs(var_1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c + vec4<f32>(var_2.a.c.x, -961f, var_2.a.c.x, 1000f))))), all(arg_0.xyz));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> vec4<i32> {
    let var_0 = func_1(select(select(vec4<bool>(arg_0.a.a.x, arg_0.c.b.x < u_input.c.x, arg_0.b.d, true), !vec4<bool>(false, false, false, arg_0.c.a.x), vec4<bool>(false, true, global0[_wgslsmith_index_u32(~62067u, 3u)], true)), select(select(vec4<bool>(arg_0.a.a.x, arg_1, true, false), vec4<bool>(true, arg_1, false, arg_1), true), vec4<bool>(arg_0.b.a.x, true, all(vec2<bool>(true, arg_0.a.a.x)), global0[_wgslsmith_index_u32(arg_0.e, 3u)]), true), true));
    return _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-_wgslsmith_clamp_i32(arg_0.a.b.x, arg_0.d, -77708i), _wgslsmith_sub_i32(u_input.c.x, abs(var_0.b.x)), max(~7775i, i32(-1i) * -2147483647i), _wgslsmith_mod_i32(~1i, ~0i))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b, var_0.b), var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 3>();
    let var_0 = select(~(~(u_input.c >> (u_input.a % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.c.x, 17946i, 11107i, 3970i), -u_input.c)), func_4(Struct_3(func_1(select(vec4<bool>(global0[_wgslsmith_index_u32(48309u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 3u)], true, global0[_wgslsmith_index_u32(0u, 3u)], true), vec4<bool>(global0[_wgslsmith_index_u32(36288u, 3u)], global0[_wgslsmith_index_u32(u_input.d.x, 3u)], false, false))), func_1(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false, true, global0[_wgslsmith_index_u32(u_input.e.x, 3u)])), Struct_1(vec2<bool>(false, true), _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(-11734i, u_input.b.x, -1i, -1i)), vec4<f32>(1912f, -272f, 1320f, -337f), !global0[_wgslsmith_index_u32(107347u, 3u)]), -u_input.b.x, _wgslsmith_add_u32(firstTrailingBit(u_input.d.x), 4294967295u << (u_input.a.x % 32u))), !(global0[_wgslsmith_index_u32(countOneBits(u_input.e.x), 3u)] & true)), vec4<bool>(func_1(select(vec4<bool>(false, global0[_wgslsmith_index_u32(68275u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 3u)], global0[_wgslsmith_index_u32(u_input.d.x, 3u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 3u)], false, false))).c.x <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1972f, -1000f) - _wgslsmith_f_op_f32(362f * -295f)), !global0[_wgslsmith_index_u32(~(~39006u), 3u)], true, false));
    let var_1 = select(select(select(!func_1(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(0u, 3u)])).a, !vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(56556u, 3u)]), !select(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 3u)], false), false)), func_1(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.d.x, 3u)]), false)).a, global0[_wgslsmith_index_u32(0u, 3u)]), vec2<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 3u)], true, global0[_wgslsmith_index_u32(u_input.e.x, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)])), global0[_wgslsmith_index_u32(u_input.d.x, 3u)]), vec2<bool>(false, true));
    var var_2 = func_1(!(!vec4<bool>(false, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], true, true, false)), global0[_wgslsmith_index_u32(u_input.d.x, 3u)], true)));
    var_2 = func_1(select(select(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 3u)], var_1.x, false), vec4<bool>(true, var_1.x, true, false), var_1.x), vec4<bool>(false, var_2.a.x, false, false), !vec4<bool>(var_2.a.x, global0[_wgslsmith_index_u32(45084u, 3u)], true, true)), vec4<bool>(true, func_1(vec4<bool>(global0[_wgslsmith_index_u32(10414u, 3u)], true, false, false)).d, true, true), false), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(28806u, 3u)], false, global0[_wgslsmith_index_u32(26182u, 3u)], var_1.x), vec4<bool>(global0[_wgslsmith_index_u32(54788u, 3u)], var_1.x, true, true), false), vec4<bool>(true, true, var_2.a.x, true), true), vec4<bool>(var_2.d, true, var_2.d, 1u == u_input.e.x), vec4<bool>(true, !global0[_wgslsmith_index_u32(u_input.e.x, 3u)], var_2.a.x & false, var_1.x)), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer((select(vec3<i32>(u_input.c.x, var_2.b.x, u_input.c.x), var_2.b.wyx, vec3<bool>(var_2.d, var_1.x, false)) | u_input.b.xxw) ^ vec3<i32>(~_wgslsmith_div_i32(2147483647i, var_0.x), ~var_2.b.x, u_input.b.x), vec2<i32>(44853i, abs(-var_2.b.x)), -reverseBits(var_2.b), max(vec3<i32>(-2147483647i, u_input.c.x, _wgslsmith_mult_i32(~6687i, _wgslsmith_mod_i32(var_2.b.x, var_2.b.x))), ~func_4(Struct_3(Struct_1(var_2.a, var_2.b, vec4<f32>(-156f, -812f, -1000f, var_2.c.x), var_1.x), Struct_1(vec2<bool>(var_2.d, global0[_wgslsmith_index_u32(13712u, 3u)]), u_input.c, vec4<f32>(-420f, var_2.c.x, var_2.c.x, 897f), true), Struct_1(var_2.a, var_2.b, vec4<f32>(var_2.c.x, 223f, 600f, 455f), true), var_2.b.x, 61652u), true).wxy), _wgslsmith_sub_i32(select(countOneBits(u_input.c.x), ~(-u_input.b.x), false), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_clamp_i32(reverseBits(2147483647i), -17614i >> (0u % 32u), -1i))));
}

