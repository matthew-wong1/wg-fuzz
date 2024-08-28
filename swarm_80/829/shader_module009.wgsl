struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(63410i, -104615i, -82496i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(0i, 0i, 43839i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(-7499i, 2147483647i, 98769i), vec3<i32>(18171i, 2766i, -70722i), vec3<i32>(24639i, 5092i, -24736i), vec3<i32>(26180i, i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, 14112i, 25103i), vec3<i32>(33865i, 32943i, 1i), vec3<i32>(-25155i, -1i, 0i), vec3<i32>(0i, i32(-2147483648), 727i), vec3<i32>(0i, 0i, -12175i), vec3<i32>(0i, 0i, 18458i), vec3<i32>(-32646i, 2147483647i, -1i));

var<private> global2: f32 = 1188f;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global1 = array<vec3<i32>, 15>();
    var var_0 = -(abs(arg_1.x) >> (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, ~arg_2.a.x, arg_3.a.x), ~arg_3.a.x) % 32u));
    let var_1 = all(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), vec3<bool>(false, false, false), false)) && !(true && (-902f < global0.b));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1221f + arg_3.b), _wgslsmith_f_op_f32(global0.b + arg_2.b), -1697f, 893f))), u_input.a, ~select(-abs(arg_1.yy), arg_1.yx, _wgslsmith_f_op_f32(855f + arg_0) != _wgslsmith_f_op_f32(global0.b + -1605f)), select(!select(vec2<bool>(true, true), select(vec2<bool>(var_1, false), vec2<bool>(var_1, true), vec2<bool>(true, var_1)), select(vec2<bool>(var_1, var_1), vec2<bool>(true, var_1), true)), select(select(vec2<bool>(true, var_1), select(vec2<bool>(var_1, true), vec2<bool>(var_1, true), vec2<bool>(false, true)), !vec2<bool>(var_1, var_1)), !select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(var_1, true), false), !vec2<bool>(true, var_1), !vec2<bool>(var_1, var_1))), !(!vec2<bool>(var_1, var_1))));
    let var_3 = arg_1.x;
    return true;
}

fn func_4(arg_0: bool) -> f32 {
    global0 = Struct_1(vec3<u32>(firstLeadingBit(u_input.a.x), 1721u, global0.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(750f)) * _wgslsmith_f_op_f32(step(1316f, -1043f))) + _wgslsmith_f_op_f32(exp2(global0.b))), _wgslsmith_f_op_f32(sign(global0.b)), any(select(vec4<bool>(arg_0, arg_0, false, arg_0), !vec4<bool>(arg_0, true, true, true), !arg_0)))));
    let var_0 = Struct_1(vec3<u32>(1u >> (_wgslsmith_dot_vec2_u32(~u_input.a.yy, _wgslsmith_add_vec2_u32(u_input.a.yz, global0.a.zy)) % 32u), u_input.a.x, _wgslsmith_mult_u32(55417u, ~u_input.a.x) & _wgslsmith_mod_u32(_wgslsmith_sub_u32(global0.a.x, global0.a.x), global0.a.x)), _wgslsmith_f_op_f32(round(1f)));
    global2 = var_0.b;
    let var_1 = _wgslsmith_div_vec3_u32(global0.a, select(u_input.a, min(abs(_wgslsmith_div_vec3_u32(global0.a, vec3<u32>(2607u, 81608u, global0.a.x))), global0.a), !select(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, true, arg_0), arg_0), select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, true, true)), var_0.a.x != 15186u)));
    let var_2 = Struct_1(reverseBits(global0.a), global0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.b)))));
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -770f), global0.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * global0.b)), false)), _wgslsmith_f_op_f32(func_4(select(var_0, var_0, func_3(-699f, global1[_wgslsmith_index_u32(4932u, 15u)], Struct_1(u_input.a, -380f), Struct_1(vec3<u32>(1u, 11473u, 0u), 1119f))))));
    let var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(957f, _wgslsmith_div_f32(1000f, global0.b), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, global0.b, var_1.x, var_1.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b))), _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-var_1.x)), global0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b))))), countOneBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(global0.a.x, u_input.a.x, 4294967295u), vec3<u32>(40169u, u_input.a.x, u_input.a.x))), _wgslsmith_sub_vec2_i32(reverseBits(select(vec2<i32>(-49864i, -75180i), vec2<i32>(89792i, -5664i), true)), vec2<i32>(1i, 1i)) << (vec2<u32>(global0.a.x, min(~39971u, u_input.a.x)) % vec2<u32>(32u)), select(vec2<bool>(func_3(_wgslsmith_div_f32(-1072f, global0.b), _wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], vec3<i32>(0i, 1i, 1i)), Struct_1(u_input.a, global0.b), Struct_1(vec3<u32>(0u, 59111u, global0.a.x), 148f)), global0.b > -836f), vec2<bool>(true, func_3(_wgslsmith_f_op_f32(trunc(global0.b)), ~global1[_wgslsmith_index_u32(u_input.a.x, 15u)], Struct_1(u_input.a, global0.b), Struct_1(vec3<u32>(global0.a.x, global0.a.x, global0.a.x), 576f))), !any(vec4<bool>(var_0, var_0, var_0, false))));
    let var_3 = -10201i;
    global1 = array<vec3<i32>, 15>();
    return Struct_1(vec3<u32>(~(~min(global0.a.x, u_input.a.x)), var_2.b.x, ~_wgslsmith_add_u32(~4294967295u, max(var_2.b.x, global0.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(208f, _wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(1657f - -1072f)))), _wgslsmith_f_op_f32(-var_2.a.x))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(56279u), 15u)];
    let var_1 = _wgslsmith_f_op_f32(794f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.b), -768f)));
    let var_2 = arg_1;
    let var_3 = arg_0.a.x;
    global2 = 863f;
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: vec4<i32>) -> i32 {
    global2 = _wgslsmith_div_f32(863f, _wgslsmith_f_op_f32(f32(-1f) * -444f));
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_2.a.zw + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a.zz)))));
    let var_1 = func_5(arg_2, func_2());
    let var_2 = -vec4<i32>(_wgslsmith_add_i32(arg_1, 2147483647i), ~countOneBits(_wgslsmith_div_i32(arg_2.c.x, -31486i)), ~(-18955i), -arg_0);
    global0 = func_2();
    return _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(abs(~var_2)), var_2 | var_2), ~(~var_2));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -121f);
    let var_0 = vec4<bool>(true, true && !all(vec3<bool>(true, false, true)), true, global0.b <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b * global0.b), _wgslsmith_f_op_f32(-global0.b))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b, global0.b, -488f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, 2197f, -1000f) - vec3<f32>(-940f, -257f, global0.b))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 570f, global0.b)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.b, -601f, -1000f), vec3<f32>(global0.b, global0.b, global0.b)))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-771f, _wgslsmith_f_op_f32(-901f + -122f), global0.b)))));
    let var_2 = vec3<i32>(-_wgslsmith_dot_vec3_i32(-vec3<i32>(-112887i, 0i, 35273i), vec3<i32>(1i, 1i, 1i)), reverseBits(func_1(-2147483647i, -37090i, Struct_2(vec4<f32>(-803f, var_1.x, global0.b, global0.b), vec3<u32>(global0.a.x, global0.a.x, 1u), vec2<i32>(1i, 0i), var_0.ww), vec4<i32>(2147483647i, 1i, -16869i, 14928i) << (vec4<u32>(12246u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))) & (-_wgslsmith_mod_i32(-17801i, -1i) << (abs(u_input.a.x) % 32u)), -1i);
    var var_3 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.yz, vec2<u32>(~func_5(Struct_2(vec4<f32>(global0.b, global0.b, global0.b, -892f), vec3<u32>(global0.a.x, u_input.a.x, u_input.a.x), vec2<i32>(-1i, -21150i), var_0.yy), Struct_1(u_input.a, 1113f)).a.x, min(89952u, u_input.a.x | 33502u)) >> (u_input.a.zz % vec2<u32>(32u)), firstTrailingBit(1u), var_1, ~(func_5(Struct_2(vec4<f32>(-496f, global0.b, var_1.x, global0.b), global0.a, var_2.yy, vec2<bool>(var_0.x, var_0.x)), func_5(Struct_2(vec4<f32>(var_1.x, global0.b, global0.b, global0.b), vec3<u32>(0u, 1u, u_input.a.x), var_2.zz, var_0.wx), Struct_1(global0.a, global0.b))).a.yz << (vec2<u32>(_wgslsmith_mult_u32(0u, 4294967295u), 43571u) % vec2<u32>(32u))));
}

