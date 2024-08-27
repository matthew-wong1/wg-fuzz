struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec2<f32>;

var<private> global2: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(4294967295u, 27172u), vec2<u32>(89457u, 1u), vec2<u32>(54777u, 103743u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 14478u), vec2<u32>(4294967295u, 1u), vec2<u32>(136984u, 20059u), vec2<u32>(1u, 35521u));

var<private> global3: array<f32, 1> = array<f32, 1>(266f);

var<private> global4: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(0u, 12358u, 37473u, 1u), vec4<u32>(4294967295u, 31001u, 64214u, 17315u), vec4<u32>(1u, 76575u, 1u, 23498u), vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(35324u, 1u, 31581u, 2828u), vec4<u32>(36465u, 0u, 30935u, 1u), vec4<u32>(4777u, 12089u, 21661u, 0u), vec4<u32>(36258u, 0u, 36669u, 24481u), vec4<u32>(41648u, 4294967295u, 1u, 48975u), vec4<u32>(0u, 4294967295u, 0u, 86319u), vec4<u32>(4294967295u, 41829u, 32379u, 0u), vec4<u32>(0u, 0u, 76505u, 34972u), vec4<u32>(1u, 1u, 12220u, 0u), vec4<u32>(1u, 7228u, 22680u, 102403u), vec4<u32>(30010u, 46372u, 4294967295u, 51563u), vec4<u32>(4294967295u, 4294967295u, 13307u, 115657u), vec4<u32>(47708u, 64586u, 23071u, 28338u), vec4<u32>(12648u, 53488u, 0u, 0u), vec4<u32>(1u, 57002u, 0u, 10628u), vec4<u32>(1u, 36492u, 1u, 4294967295u), vec4<u32>(0u, 39077u, 4294967295u, 1u), vec4<u32>(21941u, 2043u, 15853u, 4294967295u), vec4<u32>(0u, 1u, 1702u, 4294967295u), vec4<u32>(14581u, 20209u, 0u, 7013u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: bool) -> vec3<i32> {
    let var_0 = Struct_1(-975f, -vec4<i32>(1i, -1i, -arg_1, select(u_input.a, arg_0, arg_2)) & _wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-27396i, -40034i, 2147483647i, 47484i), vec4<i32>(arg_1, arg_1, u_input.a, arg_0))), -vec4<i32>(arg_0, -1i, arg_1, 2147483647i), vec4<i32>(-1i, 2147483647i, -4803i, -arg_0)), 0i, 209f, vec3<i32>(-16029i, arg_0, _wgslsmith_div_i32(-1i ^ select(arg_1, u_input.a, arg_2), -arg_0)));
    global4 = array<vec4<u32>, 24>();
    let var_1 = select(vec3<bool>(!(!arg_2), any(vec3<bool>(arg_2, any(vec3<bool>(arg_2, arg_2, arg_2)), false)), arg_2), vec3<bool>(false || (-10362i < _wgslsmith_mult_i32(arg_1, arg_1)), arg_2, false), !(!any(!vec3<bool>(false, arg_2, arg_2))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x));
    let var_3 = var_0;
    return select(reverseBits(abs(var_3.b.wzz)), var_3.e, vec3<bool>(!any(!vec4<bool>(false, var_1.x, true, var_1.x)), any(vec4<bool>(var_1.x, true, var_1.x, false)) && var_1.x, any(var_1)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    global2 = array<vec2<u32>, 8>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.d - -1026f)))) * -897f), -arg_2.b, 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.a, global3[_wgslsmith_index_u32(4294967295u, 1u)]), _wgslsmith_f_op_f32(f32(-1f) * -1395f)), _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(abs(global1.x)))) - _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(~u_input.c >> (1u % 32u), 1u)]))), _wgslsmith_add_vec3_i32(vec3<i32>(26257i, -arg_2.e.x, -_wgslsmith_mod_i32(-22425i, 2147483647i)), ~arg_0.e));
    let var_1 = !vec2<bool>(any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false))), true);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.d, _wgslsmith_f_op_f32(trunc(global1.x)), false))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.c, 1u)], global3[_wgslsmith_index_u32(u_input.b.x, 1u)]) + _wgslsmith_f_op_f32(max(641f, global1.x)))))), 730f, var_1.x));
    global4 = array<vec4<u32>, 24>();
    return select(!select(select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(false, true, var_1.x, var_1.x), !vec4<bool>(true, var_1.x, false, false)), select(vec4<bool>(true, var_1.x, false, false), vec4<bool>(false, false, var_1.x, false), 1i < arg_1.b.x), select(!vec4<bool>(var_1.x, false, var_1.x, var_1.x), select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(false, false, false, false), vec4<bool>(false, var_1.x, var_1.x, true)), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, false), vec4<bool>(false, false, var_1.x, true)))), !(!vec4<bool>(any(var_1), false, true, any(vec2<bool>(true, var_1.x)))), vec4<bool>(all(vec2<bool>(false, true)), true, var_1.x, all(!select(var_1, vec2<bool>(true, true), true))));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = func_4(Struct_1(945f, _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 16528i, -37353i) >> (global4[_wgslsmith_index_u32(0u, 24u)] % vec4<u32>(32u)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(~u_input.a, u_input.a, 21347i << (0u % 32u), u_input.a << (u_input.b.x % 32u))), ~(~_wgslsmith_mod_i32(14522i, -2147483647i)), 403f, vec3<i32>((i32(-1i) * -2147483647i) | u_input.a, -_wgslsmith_dot_vec3_i32(vec3<i32>(23949i, u_input.a, 1i), vec3<i32>(2147483647i, 0i, u_input.a)), -u_input.a >> (_wgslsmith_clamp_u32(u_input.b.x, u_input.c, u_input.b.x) % 32u))), Struct_1(arg_0, ~vec4<i32>(abs(u_input.a), -u_input.a, ~(-52140i), select(u_input.a, -1i, false)), u_input.a, global3[_wgslsmith_index_u32(4294967295u, 1u)], vec3<i32>(-35467i, 1i, _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(1i, 2147483647i)))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) + _wgslsmith_div_f32(arg_0, -1522f)), global1.x), vec4<i32>(u_input.a, 5398i, u_input.a | u_input.a, select(u_input.a, u_input.a, true) | 2147483647i), u_input.a, _wgslsmith_f_op_f32(-2726f + _wgslsmith_f_op_f32(select(1627f, _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(4294967295u, 1u)])), all(vec4<bool>(true, false, false, false))))), _wgslsmith_mod_vec3_i32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, -2147483647i, 1i), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)), -2147483647i, false), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 2147483647i), vec3<i32>(-66290i, u_input.a, 1i)))));
    let var_1 = select(vec3<i32>(2147483647i, i32(-1i) * -_wgslsmith_add_i32(-2147483647i, u_input.a), firstLeadingBit(max(u_input.a, -1i))), vec3<i32>(-u_input.a, ~_wgslsmith_div_i32(0i, _wgslsmith_mod_i32(1i, u_input.a)), -17341i), var_0.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-1007f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-832f * global3[_wgslsmith_index_u32(1u, 1u)]))), -848f))), vec4<i32>(select(max(u_input.a, var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, var_1.x, -2147483647i), vec4<i32>(var_1.x, var_1.x, -15424i, 0i)), !var_0.x), 2147483647i, 14067i, u_input.a) ^ vec4<i32>(u_input.a, _wgslsmith_mod_i32(firstLeadingBit(u_input.a), var_1.x & 0i), _wgslsmith_dot_vec2_i32(var_1.yy, vec2<i32>(2147483647i, -21147i)) | 1i, select(-22075i, _wgslsmith_dot_vec3_i32(var_1, vec3<i32>(31477i, u_input.a, 2147483647i)), var_0.x == var_0.x)), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1030f - global3[_wgslsmith_index_u32(~u_input.b.x, 1u)]), -1525f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), abs(vec3<i32>(~(~(-1i)), -13813i, ~(-2147483647i))));
    var var_3 = -462f;
    let var_4 = i32(-1i) * -(u_input.a ^ var_1.x);
    return var_0.xy;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>) -> i32 {
    global2 = array<vec2<u32>, 8>();
    var var_0 = -2147483647i;
    global3 = array<f32, 1>();
    global4 = array<vec4<u32>, 24>();
    var var_1 = select(vec3<bool>(arg_0.x, all(func_2(311f)), arg_0.x), vec3<bool>(false, !arg_0.x, arg_0.x), true);
    return abs(-u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<u32>, 24>();
    let var_0 = ~(~(~(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 66489u))) ^ reverseBits(u_input.b));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1704f + 1029f) * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 1u)] - global1.x)))) + global1.x), vec4<i32>(u_input.a, -38036i, func_1(vec2<bool>(true, true), select(-vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(15462i, u_input.a, u_input.a, -39597i), vec4<i32>(2147483647i, u_input.a, 1i, u_input.a)), select(true, true, false))), -func_3(19320i, 2147483647i, true).x >> (0u % 32u)), _wgslsmith_mult_i32(func_1(vec2<bool>(true, true), vec4<i32>(56895i, func_3(u_input.a, u_input.a, true).x, _wgslsmith_sub_i32(-31288i, -26406i), _wgslsmith_add_i32(u_input.a, -22809i))), -_wgslsmith_add_i32(abs(u_input.a), u_input.a)), _wgslsmith_f_op_f32(472f + global1.x), abs(select(vec3<i32>(~0i, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-62317i, -1i, u_input.a), vec3<i32>(-64193i, u_input.a, -7763i))), -vec3<i32>(-26579i, -1i, -69983i) ^ ~vec3<i32>(u_input.a, 1i, 0i), any(vec2<bool>(false, false)))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1271f), 1252f, _wgslsmith_f_op_f32(f32(-1f) * -789f));
    global4 = array<vec4<u32>, 24>();
    let var_3 = ~_wgslsmith_div_u32(~1u, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(var_3, var_0.x), (_wgslsmith_sub_vec2_i32(var_1.b.xz, var_1.e.xy) & var_1.b.yz) & vec2<i32>(max(-2147483647i, _wgslsmith_div_i32(2147483647i, 20318i)), 0i), -1936f, _wgslsmith_sub_u32(var_3, 82240u), ~(1u & _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_0.zzz, u_input.b.zwy), ~var_0.xxy)));
}

