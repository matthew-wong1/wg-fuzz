struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 24>;

var<private> global2: vec2<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    return !all(select(vec3<bool>(global0.a, arg_1.a, true), !vec3<bool>(arg_3.b, arg_1.a, global0.a), !arg_3.b));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * 2046f)) * global2.x);
    var var_1 = ~(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, 78931u, u_input.c.x, u_input.c.x), vec4<u32>(global1[_wgslsmith_index_u32(1444u, 24u)], u_input.c.x, global1[_wgslsmith_index_u32(u_input.c.x, 24u)], 88140u)), ~(~vec4<u32>(u_input.c.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], 24u)], 24355u, global1[_wgslsmith_index_u32(0u, 24u)]))) & (vec4<u32>(u_input.c.x, ~global1[_wgslsmith_index_u32(0u, 24u)], 0u, ~0u) & vec4<u32>(15472u, 1u, 33271u, global1[_wgslsmith_index_u32(abs(17217u), 24u)])));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-563f, -2485f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1214f, -1379f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))), vec2<bool>(u_input.a.x > -2147483647i, true & global0.a))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1833f, _wgslsmith_f_op_f32(global2.x + global2.x)))))));
    var var_3 = vec4<bool>(any(!vec3<bool>(-501f > var_2.x, func_3(u_input.b, Struct_3(arg_0), vec3<f32>(var_2.x, global2.x, -1199f), Struct_1(var_2, true)), all(vec3<bool>(arg_0, global0.a, false)))), any(vec2<bool>(arg_0, true)) & !((var_1.x | 1u) < 65174u), false, global0.a & true);
    global2 = var_2;
    return Struct_1(_wgslsmith_f_op_vec2_f32(var_2 * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f)), global2.x)), true);
}

fn func_1() -> bool {
    var var_0 = func_2(true);
    var_0 = func_2(global0.a);
    global2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(10132u, 1u, 4294967295u >> (global1[_wgslsmith_index_u32(12083u, 24u)] % 32u)) ^ (_wgslsmith_add_vec3_u32(u_input.c, u_input.c) << ((vec3<u32>(59607u, 0u, u_input.c.x) << (vec3<u32>(u_input.c.x, global1[_wgslsmith_index_u32(430u, 24u)], 45731u) % vec3<u32>(32u))) % vec3<u32>(32u))), reverseBits(u_input.c) | ~(~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], u_input.c.x, 1u))), ~(~u_input.c.x));
    var var_2 = false;
    return true;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = !select(vec4<bool>(true, false, func_2(arg_0.b).b, global0.a), vec4<bool>(arg_0.b, !select(false, arg_0.b, arg_0.b), arg_0.a.x != _wgslsmith_f_op_f32(max(430f, global2.x)), global0.a), func_1());
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, global2.x))))), (global0.a && all(select(vec2<bool>(true, global0.a), var_0.xy, false))) | !(true && var_0.x));
    let var_2 = Struct_4(_wgslsmith_div_vec3_i32(max(vec3<i32>(-1i, u_input.a.x, 3572i), vec3<i32>(2147483647i, 24713i, u_input.b) & vec3<i32>(u_input.a.x, u_input.b, 39039i)) ^ min(vec3<i32>(u_input.b, u_input.a.x, 13483i) & vec3<i32>(2389i, u_input.a.x, u_input.b), vec3<i32>(1i, u_input.b, -1i)), vec3<i32>(abs(u_input.a.x), -_wgslsmith_add_i32(0i, -3981i), u_input.b)), _wgslsmith_mod_u32(abs(1u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(reverseBits(0u), _wgslsmith_add_u32(60953u, 1u)), ~u_input.c.x)), !select(vec3<bool>(false, all(vec3<bool>(global0.a, true, false)), func_3(u_input.a.x, Struct_3(arg_0.b), vec3<f32>(arg_0.a.x, 988f, var_1.a.x), arg_0)), vec3<bool>(all(vec4<bool>(var_1.b, false, var_1.b, global0.a)), true, true), vec3<bool>(true, 0u >= u_input.c.x, global0.a)));
    global0 = Struct_3(any(!vec2<bool>(global0.a, true == var_2.c.x)));
    var var_3 = Struct_1(var_1.a, var_0.x);
    return Struct_3(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 410f;
    var var_1 = _wgslsmith_mod_i32(u_input.b, 2147483647i);
    global0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global2.x, 1917f), 262f)), !global0.a | func_1()));
    var var_2 = Struct_4(vec3<i32>((u_input.a.x ^ -1i) >> (global1[_wgslsmith_index_u32(u_input.c.x, 24u)] % 32u), -countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, -42820i, u_input.b), vec4<i32>(0i, u_input.b, u_input.a.x, u_input.b))), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-3939i, 25072i, -1i), vec3<i32>(u_input.b, -35637i, -2147483647i)), vec3<i32>(u_input.b, u_input.b, 0i)) ^ u_input.a.x), 6667u, !vec3<bool>(global0.a, global0.a, false));
    var var_3 = -2147483647i;
    let var_4 = firstTrailingBit(var_2.a.x);
    var var_5 = Struct_2(vec2<i32>(u_input.b, _wgslsmith_div_i32(-u_input.a.x, firstLeadingBit(firstLeadingBit(var_2.a.x)))), _wgslsmith_sub_vec4_i32(select(-vec4<i32>(var_2.a.x, var_4, -13957i, 1i), reverseBits(vec4<i32>(68714i, var_2.a.x, var_4, var_2.a.x)), vec4<bool>(global0.a, true, global0.a, false)) & -vec4<i32>(-2147483647i, var_4, 7271i, u_input.a.x), ~vec4<i32>(var_2.a.x, var_2.a.x, _wgslsmith_clamp_i32(var_2.a.x, var_2.a.x, 1i), -25481i)), var_2.b & ~47990u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) + _wgslsmith_f_op_f32(global2.x - var_0)) + -1040f), 1196f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1266f, -807f))), abs(firstLeadingBit(select(_wgslsmith_sub_i32(4120i, u_input.a.x), _wgslsmith_mult_i32(var_4, 0i), false))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-max(-12530i, var_4), _wgslsmith_dot_vec3_i32(~vec3<i32>(var_5.b.x, var_2.a.x, var_4), select(var_2.a, vec3<i32>(var_5.e, var_5.e, var_5.b.x), true)), reverseBits(u_input.b | var_5.e), u_input.a.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-223f, global2.x, global2.x)) - vec3<f32>(-2162f, var_5.d.x, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.d.x, var_5.d.x, 1802f)))))));
}

