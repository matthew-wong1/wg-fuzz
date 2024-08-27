struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<i32, 18>;

var<private> global2: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(~(~arg_0.a), max(~arg_0.b, abs(_wgslsmith_div_vec4_i32(arg_0.b, vec4<i32>(global1[_wgslsmith_index_u32(65197u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], 40634i, arg_0.a.x)) & vec4<i32>(arg_0.b.x, 2147483647i, arg_3.a.x, arg_1))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), abs(u_input.a)), 1u), _wgslsmith_f_op_f32(select(952f, -567f, false)));
    var var_1 = !vec4<bool>(arg_2 >= _wgslsmith_f_op_f32(max(-869f, arg_3.d)), !(abs(arg_0.c.x) < _wgslsmith_clamp_u32(0u, 16388u, 4294967295u)), true, true);
    let var_2 = all(!select(select(select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, true, var_1.x, false)), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, false, var_1.x, var_1.x), true)), vec4<bool>(!var_1.x, false, false, true), select(!vec4<bool>(var_1.x, false, var_1.x, true), !vec4<bool>(false, var_1.x, true, var_1.x), !var_1.x)));
    let var_3 = -(~countOneBits(arg_0.b.yx));
    var var_4 = select(!select(!select(vec4<bool>(false, true, false, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, false, false)), !(!vec4<bool>(false, false, var_1.x, true)), vec4<bool>(true, true, true, any(vec2<bool>(var_2, true)))), vec4<bool>(_wgslsmith_add_u32(firstTrailingBit(4294967295u), arg_0.c.x) < abs(~13906u), var_2, var_1.x, select(false, true, true)), (arg_0.c.x <= ~(~arg_3.c.x)) & var_2);
    return !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(f32(-1f) * -2041f)) + _wgslsmith_div_f32(189f, 393f)) > arg_3.d);
}

fn func_2() -> bool {
    var var_0 = !vec4<bool>(func_3(global0[_wgslsmith_index_u32(1u, 11u)], select(global1[_wgslsmith_index_u32(u_input.a.x, 18u)] | global1[_wgslsmith_index_u32(10791u, 18u)], _wgslsmith_mod_i32(1i, 457i), true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-287f, 588f)))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x ^ u_input.a.x), 11u)]), any(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, false, false))), all(vec4<bool>(true, true, true, true)), (all(vec3<bool>(false, true, true)) | true) & all(vec4<bool>(true, false, false, false)));
    var var_1 = Struct_1(abs(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(0u, 18u)], -1i, global1[_wgslsmith_index_u32(0u, 18u)]) | vec3<i32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(1u, 18u)]), !vec3<bool>(true, var_0.x, false)), vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 2147483647i) >> (vec3<u32>(44553u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_i32(vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec3<i32>(35569i, global1[_wgslsmith_index_u32(1u, 18u)], -2147483647i)))), ((_wgslsmith_mod_vec4_i32(vec4<i32>(15091i, -25741i, -30900i, global1[_wgslsmith_index_u32(1u, 18u)]), vec4<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(23792u, 18u)], 28310i)) << (vec4<u32>(25888u, 1u, 1u, u_input.a.x) % vec4<u32>(32u))) | abs(-vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(45290u, 18u)]))) | ((-vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], 4574i, 1i, 13157i) & abs(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], 17342i, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(1u, 18u)]))) & vec4<i32>(~0i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.b, 18u)], -2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.a.x), 18u)], global1[_wgslsmith_index_u32(min(15616u, u_input.a.x), 18u)])), abs(~vec2<u32>(u_input.b, ~48213u)), -2221f);
    global0 = array<Struct_1, 11>();
    var var_2 = 24637i;
    let var_3 = !select(select(vec2<bool>(!var_0.x, select(var_0.x, var_0.x, var_0.x)), vec2<bool>(false, global1[_wgslsmith_index_u32(35947u, 18u)] >= -32070i), !all(vec3<bool>(var_0.x, false, true))), !var_0.ww, !(!var_0.x));
    return !var_3.x && !var_0.x;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: vec4<i32>) -> u32 {
    global1 = array<i32, 18>();
    let var_0 = vec2<bool>(all(vec2<bool>(arg_0, true)) | func_2(), false);
    let var_1 = !vec3<bool>(true || arg_0, arg_0, false);
    global1 = array<i32, 18>();
    global1 = array<i32, 18>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-990f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1528f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(804f + 155f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-968f + -261f) - -293f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1346f * -1160f))))));
    var var_1 = 76180u == func_1(((u_input.a.x >= 4294967295u) | false) & true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), vec2<f32>(-331f, var_0))))), ~(~u_input.a), vec4<i32>(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)] | global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(25582u, 18u)]), global1[_wgslsmith_index_u32(33904u, 18u)], ~_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 12427i), i32(-1i) * -29707i));
    var var_2 = Struct_1(select(_wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)]) | min(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], -24660i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 32414i, global1[_wgslsmith_index_u32(u_input.a.x, 18u)])), abs(-vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], -1876i))), max(-_wgslsmith_mult_vec3_i32(vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(1u, 18u)]), vec3<i32>(66541i, global1[_wgslsmith_index_u32(14988u, 18u)], 10023i)), ~vec3<i32>(-31097i, -86464i, 0i)), vec3<bool>(!func_2(), !select(false, true, false), true)), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(global1[_wgslsmith_index_u32(66304u, 18u)], 2147483647i)), -vec2<i32>(23514i, global1[_wgslsmith_index_u32(18654u, 18u)])), vec2<i32>(1i << (u_input.b % 32u), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(1u, 18u)], 2147483647i))), global1[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_dot_vec4_i32(vec4<i32>(~2147483647i, -26484i ^ global1[_wgslsmith_index_u32(1u, 18u)], select(global1[_wgslsmith_index_u32(u_input.b, 18u)], -24109i, true), -12977i), _wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(36905u, 18u)], global1[_wgslsmith_index_u32(17239u, 18u)], global1[_wgslsmith_index_u32(36366u, 18u)]), vec4<i32>(22579i, 42790i, 14859i, -2631i) ^ vec4<i32>(-14850i, global1[_wgslsmith_index_u32(u_input.b, 18u)], -51100i, global1[_wgslsmith_index_u32(u_input.b, 18u)]))), i32(-1i) * -_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(50145u, 18u)], global1[_wgslsmith_index_u32(22915u, 18u)])), ~u_input.a, _wgslsmith_f_op_f32(437f + _wgslsmith_f_op_f32(select(var_0, var_0, func_3(global0[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_mult_i32(1128i, global1[_wgslsmith_index_u32(u_input.b, 18u)]), -434f, global0[_wgslsmith_index_u32(abs(3572u), 11u)])))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1052f)) * _wgslsmith_f_op_f32(var_2.d + -1000f)))), _wgslsmith_f_op_f32(floor(var_2.d))));
    var var_4 = select(func_3(Struct_1(_wgslsmith_clamp_vec3_i32(var_2.b.ywx, vec3<i32>(2147483647i, -1i, var_2.a.x), var_2.a), ~var_2.b, vec2<u32>(var_2.c.x, 1u), var_0), countOneBits(~global1[_wgslsmith_index_u32(1u, 18u)]), -618f, Struct_1(vec3<i32>(var_2.b.x, var_2.b.x, global1[_wgslsmith_index_u32(u_input.b, 18u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], var_2.a.x, -43554i), var_2.b, var_2.b), abs(u_input.a), _wgslsmith_f_op_f32(sign(585f)))) || true, (var_2.a.x != abs(-52113i | global1[_wgslsmith_index_u32(u_input.a.x, 18u)])) || false, !(0u <= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_2.c.x) | vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(var_2.c.x, var_2.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(firstLeadingBit(~1u), 18u)], -(i32(-1i) * -48417i)), countOneBits(-1i), ~var_2.b);
}

