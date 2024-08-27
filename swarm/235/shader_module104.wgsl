struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
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

var<private> global0: array<vec4<f32>, 28>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32) -> i32 {
    global0 = array<vec4<f32>, 28>();
    let var_0 = vec2<i32>(arg_2, -min(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0.a, u_input.b.x), vec3<i32>(-2147483647i, arg_0.c, -27824i))), _wgslsmith_div_i32(max(arg_0.a, arg_2), _wgslsmith_div_i32(-2147483647i, -2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-964f + 1f)));
    var var_2 = _wgslsmith_f_op_f32(floor(-1000f));
    let var_3 = _wgslsmith_div_vec3_u32(~u_input.d.xwz, select(u_input.d.xwz, vec3<u32>(~(arg_0.b.x ^ arg_0.b.x), ~arg_0.b.x, ~firstTrailingBit(arg_0.b.x)), vec3<bool>((var_0.x & 1i) < arg_0.a, select(true, var_1 == var_1, true), arg_1.x || true)));
    return _wgslsmith_clamp_i32(1i, max(~(~49340i), -40143i), _wgslsmith_dot_vec3_i32(firstTrailingBit(-(~vec3<i32>(var_0.x, 1i, arg_0.c))), _wgslsmith_mod_vec3_i32(vec3<i32>(min(-9796i, u_input.b.x), _wgslsmith_mult_i32(0i, arg_0.a), -u_input.a), ~vec3<i32>(0i, u_input.b.x, -12926i) >> (vec3<u32>(68223u, 18689u, 15534u) % vec3<u32>(32u)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(-(~(-2147483647i)), 30419i, func_4(arg_3, vec3<bool>(true, all(vec3<bool>(true, true, true)), false), -(func_3(Struct_1(1i, vec2<u32>(4294967295u, 4294967295u), u_input.a), arg_3, vec4<i32>(2147483647i, -1i, u_input.a, arg_3.c)) << (arg_3.b.x % 32u))), reverseBits(1i));
    var var_1 = true;
    var var_2 = any(select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(true, true))), select(vec2<bool>(any(vec3<bool>(false, false, false)), 1u >= u_input.c), vec2<bool>(select(true, false, true), any(vec2<bool>(false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), true))), true));
    var_1 = any(select(vec2<bool>(false, true | any(vec4<bool>(true, true, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, arg_3.a < -arg_3.a)));
    let var_3 = arg_3;
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    return arg_1;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_add_u32(arg_1.b.x, _wgslsmith_mod_u32(reverseBits(4294967295u), u_input.d.x));
    var var_1 = _wgslsmith_sub_u32(4208u, arg_1.b.x);
    return ~arg_1.b.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> bool {
    let var_0 = ~_wgslsmith_mult_u32(u_input.d.x, func_6(true, func_5(Struct_1(1i, vec2<u32>(u_input.c, u_input.d.x), arg_0.x), Struct_1(u_input.a, vec2<u32>(u_input.c, 0u), u_input.a), func_2(vec4<f32>(-283f, arg_1, arg_1, -1497f), vec4<f32>(473f, arg_1, 419f, -465f), vec2<u32>(64546u, u_input.d.x), Struct_1(22512i, u_input.d.zy, u_input.a)), vec3<bool>(true, true, false)), _wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(u_input.d.x, 28u)], vec4<f32>(1100f, arg_1, arg_1, 1418f))));
    global0 = array<vec4<f32>, 28>();
    let var_1 = -195f;
    var var_2 = -select(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, arg_0.x, u_input.a, arg_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-17083i, 43290i, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, u_input.a, arg_0.x, 17139i))), vec4<i32>(_wgslsmith_mod_i32(arg_0.x, arg_0.x) & arg_0.x, -30174i, u_input.a, -min(-1i, arg_0.x)), vec4<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true))), true, true, !all(vec4<bool>(false, true, true, false))));
    let var_3 = u_input.d.x;
    return any(select(!vec4<bool>(false, all(vec3<bool>(false, false, false)), true, true), vec4<bool>(!select(false, false, true), _wgslsmith_f_op_f32(sign(var_1)) < _wgslsmith_f_op_f32(f32(-1f) * -270f), !all(vec4<bool>(false, false, false, true)), false), !select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(vec4<bool>(true, true, true, true)) || !any(vec4<bool>(true, true, func_1(u_input.b, 269f), true));
    let var_1 = all(select(select(!vec3<bool>(false, false, var_0), !(!vec3<bool>(var_0, var_0, true)), true), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, var_0), vec3<bool>(false, var_0, true)), select(vec3<bool>(false, true, var_0), select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_0), false), vec3<bool>(true, true, true)), !vec3<bool>(var_0, false, var_0)), false));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -500f, _wgslsmith_f_op_f32(571f - 490f), _wgslsmith_f_op_f32(ceil(1368f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(540f, 1464f, -347f, 105f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(502f, -510f, -556f, -293f), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 28u)])) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1565f, 1288f, 1000f, -596f))))))), _wgslsmith_sub_vec2_u32(u_input.d.xy, _wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.d.x, 34044u)), u_input.d.yx)), func_5(Struct_1(_wgslsmith_mod_i32(u_input.a, -40434i) >> (47245u % 32u), u_input.d.zx, _wgslsmith_div_i32(u_input.b.x, _wgslsmith_mod_i32(1i, u_input.b.x))), Struct_1(-37207i, firstTrailingBit(u_input.d.ww), abs(27913i)), func_5(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1147f, -149f, -498f, -714f), global0[_wgslsmith_index_u32(40504u, 28u)], true)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, u_input.d.x), 28u)], _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.c), u_input.d.zy), Struct_1(-41894i, vec2<u32>(u_input.c, 4294967295u), 0i)), func_5(Struct_1(u_input.a, u_input.d.zy, -2147483647i), Struct_1(0i, u_input.d.xx, 34756i), func_5(Struct_1(-33298i, u_input.d.xy, u_input.b.x), Struct_1(u_input.a, vec2<u32>(0u, 27306u), -16907i), Struct_1(u_input.a, vec2<u32>(29590u, 57815u), 73685i), vec3<bool>(false, true, true)), select(vec3<bool>(var_0, true, var_1), vec3<bool>(var_1, false, false), vec3<bool>(false, true, var_1))), Struct_1(u_input.b.x, u_input.d.zw, 0i), !select(vec3<bool>(var_1, var_0, var_0), vec3<bool>(var_1, false, var_0), var_1)), !(!vec3<bool>(true, var_0, false))));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.c, 28u)]) - _wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(80547u, 28u)]))))))), vec4<f32>(827f, 322f, _wgslsmith_f_op_f32(1637f + _wgslsmith_f_op_f32(f32(-1f) * -491f)), 209f)));
    let var_4 = any(!(!vec2<bool>(false, var_1)));
    let var_5 = _wgslsmith_mod_vec4_u32(select(vec4<u32>(~12344u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, var_2.b.x, 1u, 0u), u_input.d) & ~37085u, 11269u ^ var_2.b.x, ~(~u_input.d.x)), u_input.d, vec4<bool>(false, var_1, false, any(vec4<bool>(var_1, var_0, false, false)))), vec4<u32>(41941u, _wgslsmith_mult_u32(1u, var_2.b.x), u_input.c, ~u_input.d.x));
    global0 = array<vec4<f32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(max(-firstTrailingBit(vec4<i32>(0i, 0i, 0i, var_2.c) >> (var_5 % vec4<u32>(32u))), ~firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, var_2.a, var_2.a, u_input.a), vec4<i32>(var_2.c, -6558i, u_input.a, -2147483647i)))));
}

