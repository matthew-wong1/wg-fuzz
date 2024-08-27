struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<bool, 24> = array<bool, 24>(true, false, false, true, false, false, true, true, false, false, true, false, true, true, false, true, true, false, true, false, false, true, true, false);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = arg_0;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(~u_input.b), u_input.a.x), 14u)];
    let var_2 = vec3<u32>(_wgslsmith_sub_u32(42159u, u_input.a.x), _wgslsmith_dot_vec4_u32(countOneBits(~(vec4<u32>(u_input.a.x, 21216u, u_input.a.x, u_input.b) >> (vec4<u32>(u_input.b, 1u, u_input.b, u_input.b) % vec4<u32>(32u)))), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.a.x)), ~u_input.b);
    var_0 = arg_0;
    global0 = 1u;
    return arg_0;
}

fn func_3(arg_0: u32) -> u32 {
    global0 = ~(~_wgslsmith_mod_u32(126660u, _wgslsmith_div_u32(23285u, select(4294967295u, 1u, true))));
    global2 = array<bool, 24>();
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1003f))) <= _wgslsmith_f_op_f32(919f - _wgslsmith_f_op_f32(round(-1885f))), false);
    return 4294967295u | arg_0;
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.c.x;
    global2 = array<bool, 24>();
    let var_1 = _wgslsmith_sub_u32(1u, select(_wgslsmith_mult_u32(4294967295u, ~(~u_input.b)), func_3(firstLeadingBit(reverseBits(u_input.a.x))), !(_wgslsmith_sub_u32(1u, u_input.a.x) <= min(u_input.a.x, 61851u))));
    var_0 = -882f;
    let var_2 = Struct_1(_wgslsmith_mult_vec2_i32(-(vec2<i32>(-1i) * -arg_0.a), arg_0.a), select(true, -1246f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), all(!select(vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, global2[_wgslsmith_index_u32(var_1, 24u)], true), true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.c, arg_0.c)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x), arg_0.c.x, 1039f), true)), (2147483647i ^ _wgslsmith_dot_vec3_i32(u_input.d, u_input.d)) >> (_wgslsmith_mult_u32(0u << ((22078u << (var_1 % 32u)) % 32u), var_1) % 32u));
    return arg_0.c.x;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> vec4<u32> {
    var var_0 = Struct_1(u_input.c, true, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(floor(-913f))), arg_0, _wgslsmith_f_op_f32(step(-692f, 769f))))), 0i);
    var var_1 = !var_0.b;
    var var_2 = Struct_1(u_input.d.yy, ~(-(~u_input.d.x)) > (-abs(2147483647i) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, var_0.a.x, -25416i, var_0.d), max(vec4<i32>(var_0.d, -33093i, var_0.d, 28775i), vec4<i32>(var_0.d, 2147483647i, 1i, u_input.d.x)))), _wgslsmith_f_op_vec4_f32(var_0.c + vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(var_0.a, var_0.b, var_0.c, -12157i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), 1974f), _wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_f_op_f32(ceil(1902f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)))), min(-2147483647i, u_input.d.x));
    var var_3 = u_input.d;
    let var_4 = Struct_1(vec2<i32>(u_input.c.x, u_input.d.x), select(all(vec4<bool>(true, arg_1.x, any(arg_1), true)), global2[_wgslsmith_index_u32(abs(~abs(u_input.a.x)), 24u)], !(!(false | var_0.b))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_2.c.x, var_0.c.x, 178f))))), -_wgslsmith_add_i32(var_2.a.x, select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.d.x, var_0.a.x), u_input.d), ~(-1i), true)));
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, ~_wgslsmith_mod_u32(~4294967295u, firstLeadingBit(69260u)), ~u_input.b, u_input.a.x), vec4<u32>(50716u, u_input.a.x, u_input.b, _wgslsmith_mult_u32(u_input.b ^ 162982u, 36192u)), vec4<u32>(26926u, 4294967295u >> (~abs(u_input.b) % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(19939u, 13551u, u_input.a.x), _wgslsmith_div_vec3_u32(vec3<u32>(55500u, 37402u, u_input.b), vec3<u32>(u_input.b, u_input.a.x, u_input.a.x))), ~1u), 85861u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 24>();
    let var_0 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -2147483647i), ~_wgslsmith_sub_vec2_i32(u_input.d.zy, vec2<i32>(u_input.d.x, -12840i))) | _wgslsmith_mult_vec2_i32(vec2<i32>(9069i, -u_input.c.x), u_input.c), global2[_wgslsmith_index_u32(93905u, 24u)], vec4<f32>(1f, _wgslsmith_f_op_f32(min(-356f, 1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-504f, -2145f)) - _wgslsmith_f_op_f32(sign(275f))))), _wgslsmith_f_op_f32(func_1(-760f))), -1i | _wgslsmith_dot_vec4_i32(~select(vec4<i32>(u_input.d.x, -45491i, u_input.c.x, u_input.d.x), vec4<i32>(-1i, u_input.c.x, -11019i, u_input.c.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 24u)], global2[_wgslsmith_index_u32(u_input.b, 24u)], global2[_wgslsmith_index_u32(97875u, 24u)], false)), reverseBits(vec4<i32>(-50124i, 33980i, 0i, u_input.d.x))));
    var var_1 = vec2<bool>(true, true);
    var var_2 = min(func_4(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(0u, 14u)])), select(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<bool>(false, false, var_0.b), !vec3<bool>(false, var_1.x, var_1.x))), ~vec4<u32>(u_input.a.x | u_input.b, _wgslsmith_clamp_u32(67448u, 4294967295u, u_input.b), _wgslsmith_div_u32(0u, 1u), _wgslsmith_sub_u32(u_input.b, 72980u))) >> ((vec4<u32>(_wgslsmith_mult_u32(u_input.b, _wgslsmith_mod_u32(u_input.a.x, 1u)), ~u_input.a.x ^ max(u_input.a.x, 6234u), 1u, _wgslsmith_clamp_u32(1u, 0u, _wgslsmith_div_u32(12549u, 52978u))) >> (vec4<u32>(43511u, _wgslsmith_add_u32(u_input.b, u_input.b ^ 1u), 1u, reverseBits(~u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_3 = 239f;
    global2 = array<bool, 24>();
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.c.x))))) + _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c.x)))))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + -129f)), 444f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(select(1033f, _wgslsmith_f_op_f32(var_0.c.x * var_0.c.x), all(vec2<bool>(var_1.x, var_0.b))))))));
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<i32>(_wgslsmith_div_i32(-21969i, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-2147483647i, 53631i))), ~countOneBits(var_0.d), ~reverseBits(-45401i), -26862i)), firstLeadingBit(var_2.xx), var_5, select(var_2.zz, ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(0u, 4294967295u)), ~vec2<u32>(21091u, u_input.a.x)), select(vec2<bool>(true, !var_0.b), vec2<bool>(true, true), !var_1.x)), func_4(-567f, vec3<bool>(~4294967295u != select(1514u, u_input.a.x, true), any(vec2<bool>(false, true)), var_0.b)).x);
}

