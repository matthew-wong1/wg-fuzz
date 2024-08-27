struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<f32, 3> = array<f32, 3>(-1858f, -2158f, 1119f);

var<private> global2: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(2170f, 642f, -2044f), vec3<f32>(1177f, 1000f, 903f), vec3<f32>(620f, -611f, 1645f), vec3<f32>(-805f, 156f, -373f), vec3<f32>(1000f, 273f, -139f), vec3<f32>(-159f, 506f, 495f));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = global2[_wgslsmith_index_u32(~countOneBits(4294967295u), 6u)];
    var var_1 = Struct_2(Struct_1(abs(0i), abs(~(-18152i))), all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, false, false), select(true, false, false)), vec4<bool>(true, true, true, true))), abs(u_input.d.zx), Struct_1(u_input.a ^ 2147483647i, abs(_wgslsmith_clamp_i32(~u_input.a, 0i | u_input.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -37560i), vec2<i32>(u_input.e.x, -1i))))), vec4<u32>(arg_1.a, countOneBits(_wgslsmith_div_u32(~36363u, ~arg_1.a)), 12150u, arg_0.x));
    global2 = array<vec3<f32>, 6>();
    return vec2<bool>(var_1.b, var_1.b);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    global0 = any(select(vec2<bool>(u_input.e.x < 2147483647i, true), !func_3(vec4<u32>(4294967295u, arg_0.x, 68760u, 42264u), Struct_3(0u)), true)) != any(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true)));
    var var_0 = u_input.e;
    let var_1 = Struct_3(u_input.d.x);
    var var_2 = Struct_2(arg_2, !(any(vec3<bool>(true, false, true)) || true), ~((arg_0.yx << ((arg_0.xx >> (arg_0.yz % vec2<u32>(32u))) % vec2<u32>(32u))) | u_input.d.xx), arg_2, ~(vec4<u32>(60654u, 0u, ~4294967295u, _wgslsmith_add_u32(var_1.a, 0u)) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(28061u, 77012u, 65790u), u_input.d), var_1.a, 8130u, u_input.d.x)));
    var var_3 = ~_wgslsmith_sub_vec2_i32(-((var_0.xy & var_0.zx) >> ((vec2<u32>(3491u, 45966u) ^ u_input.d.zz) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(abs(~vec2<i32>(var_0.x, var_2.d.b)), countOneBits(vec2<i32>(1i, 1i))));
    return _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(14762u, 3u)] + -1000f);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 3u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.d, vec4<f32>(global1[_wgslsmith_index_u32(25319u, 3u)], -311f, global1[_wgslsmith_index_u32(96909u, 3u)], global1[_wgslsmith_index_u32(u_input.b, 3u)]), Struct_1(5581i, -2147483647i)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(38888u, 3u)] * global1[_wgslsmith_index_u32(40783u, 3u)]))), _wgslsmith_f_op_f32(f32(-1f) * -228f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(77u, 3u)]) * _wgslsmith_f_op_f32(floor(-303f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d.x, 3u)], -550f))))));
    global0 = max(~(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(0u, u_input.d.x, u_input.d.x)) | ~1u), ~min(20821u, 54174u) & ~firstTrailingBit(4294967295u)) < min(u_input.d.x, u_input.d.x);
    let var_1 = global1[_wgslsmith_index_u32(~u_input.b, 3u)];
    var var_2 = Struct_3(select(u_input.d.x, _wgslsmith_div_u32(u_input.d.x, 0u), max(_wgslsmith_mult_u32(u_input.d.x, 4294967295u), max(u_input.d.x, u_input.d.x)) <= ~4294967295u));
    let var_3 = _wgslsmith_add_i32(48347i, 1i) ^ u_input.e.x;
    return !(false != (68404u == (min(u_input.d.x, 26463u) & var_2.a)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>) -> f32 {
    global0 = !all(func_3(vec4<u32>(0u, arg_1.x, u_input.c, 1u), Struct_3(u_input.b))) & any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_0 = vec4<i32>(i32(-1i) * -19290i, _wgslsmith_add_i32(select(~(-1i), 33618i, false), firstTrailingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 41892i, -40590i, arg_0.x), vec4<i32>(-1i, u_input.a, u_input.e.x, arg_0.x)))), i32(-1i) * -(~u_input.e.x >> (~1u % 32u)), arg_0.x);
    let var_1 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(11278u, 3u)] + global1[_wgslsmith_index_u32(arg_1.x, 3u)]) * global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, u_input.b, 98473u), u_input.d), 3u)]) == _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~1u, 3u)], -890f))), vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)) && true, func_3(vec4<u32>(firstTrailingBit(20075u), u_input.d.x | u_input.b, 78667u, ~16003u), Struct_3(~u_input.b)).x, true), true);
    let var_2 = Struct_2(Struct_1(~23090i << ((u_input.d.x << (u_input.b % 32u)) % 32u), ~(-15702i)), var_1.x, arg_1, Struct_1(u_input.e.x, -63305i), _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 11282u, 71452u, u_input.d.x), select(vec4<u32>(0u, 47790u, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, 56347u, u_input.b), vec4<bool>(false, var_1.x, var_1.x, true))), min(vec4<u32>(16861u, u_input.b, u_input.d.x, 1u), ~vec4<u32>(arg_1.x, arg_1.x, u_input.c, 4294967295u)) | ~(~vec4<u32>(0u, 1u, 10922u, 4294967295u))));
    global0 = true;
    return _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32((var_2.e.x ^ 1u) ^ arg_1.x, 1u & ~var_2.c.x)), 3u)]);
}

fn func_5(arg_0: f32) -> i32 {
    global0 = ((!func_3(vec4<u32>(u_input.b, 24191u, u_input.c, u_input.b), Struct_3(u_input.d.x)).x != false) || (_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d.x, 3u)] * _wgslsmith_f_op_f32(-arg_0)) > arg_0)) & (_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 28151u, 26772u, 70095u), vec4<u32>(4294967295u, u_input.c, 115263u, u_input.d.x) ^ vec4<u32>(u_input.d.x, u_input.c, u_input.b, u_input.c)), 3u)], arg_0)) != _wgslsmith_div_f32(-533f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(countOneBits(1u), 3u)] - -1045f)));
    global0 = false;
    var var_0 = Struct_2(Struct_1(1827i, 2147483647i), false, vec2<u32>(_wgslsmith_add_u32(47761u >> (u_input.d.x % 32u), ~u_input.d.x), firstLeadingBit(_wgslsmith_mod_u32(u_input.b, u_input.b) >> (firstTrailingBit(8274u) % 32u))), Struct_1(17140i, (i32(-1i) * -8296i) & -_wgslsmith_clamp_i32(2147483647i, -28165i, -1i)), vec4<u32>(u_input.d.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, 1u), 4294967295u), u_input.d.x, countOneBits(_wgslsmith_div_u32(u_input.d.x, 26747u) ^ 16574u)));
    let var_1 = select(min(_wgslsmith_add_vec2_i32(vec2<i32>(1i, var_0.a.a), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.e.x), u_input.e.xy >> (vec2<u32>(5035u, u_input.c) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, u_input.e.x), u_input.e.zy, -vec2<i32>(u_input.e.x, 31496i))), _wgslsmith_div_vec2_i32(u_input.e.yy, _wgslsmith_mod_vec2_i32(u_input.e.yz, -u_input.e.yz >> (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.d.x, var_0.e.x)) % vec2<u32>(32u)))), func_3(_wgslsmith_clamp_vec4_u32(countOneBits(reverseBits(vec4<u32>(1u, var_0.e.x, var_0.e.x, 0u))), vec4<u32>(firstTrailingBit(var_0.e.x), var_0.e.x, firstLeadingBit(0u), ~u_input.c), firstLeadingBit(select(vec4<u32>(u_input.c, 40314u, var_0.e.x, 55016u), var_0.e, true))), Struct_3(u_input.b)).x);
    global0 = false;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-u_input.e.x, _wgslsmith_div_i32(reverseBits(2147483647i), abs(u_input.a)));
    var_0 = Struct_1(func_5(_wgslsmith_f_op_f32(func_4(select(u_input.e.zy, -u_input.e.yz, func_1()), u_input.d.xx))), firstTrailingBit(u_input.e.x));
    let var_1 = select(select(vec2<bool>(true, all(vec2<bool>(false, false))), func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b, 53774u, u_input.d.x) << (vec4<u32>(u_input.c, u_input.d.x, 36528u, u_input.b) % vec4<u32>(32u)), min(vec4<u32>(u_input.b, 0u, 45958u, 0u), vec4<u32>(u_input.c, 1u, u_input.c, u_input.d.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 0u, 31293u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.b, 74961u), vec4<u32>(0u, u_input.c, u_input.c, u_input.c))), Struct_3(1u)), true), func_3(vec4<u32>(reverseBits(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x)), _wgslsmith_add_u32(73717u, u_input.d.x), _wgslsmith_mult_u32(u_input.c, u_input.d.x), 4294967295u), Struct_3(~_wgslsmith_mod_u32(4294967295u, 8287u))), all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), global1[_wgslsmith_index_u32(u_input.b, 3u)] > _wgslsmith_f_op_f32(f32(-1f) * -619f))));
    var_0 = Struct_1(var_0.b, var_0.b);
    global0 = true;
    var var_2 = Struct_3(~31712u);
    var_0 = Struct_1(1i, -(~(~(-2147483647i))));
    var_2 = Struct_3(firstLeadingBit(~abs(53245u)));
    let var_3 = global2[_wgslsmith_index_u32(~u_input.d.x, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-966f, -1173f, global1[_wgslsmith_index_u32(var_2.a, 3u)]));
}

