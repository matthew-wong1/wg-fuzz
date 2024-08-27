struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: vec3<u32> = vec3<u32>(1u, 0u, 57700u);

var<private> global2: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: i32, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec3_i32(select(vec3<i32>(-19329i, -1i >> (u_input.b % 32u), select(-46664i, arg_2, arg_0.x)), select(vec3<i32>(-52104i, u_input.a.x, 34803i), vec3<i32>(u_input.a.x, arg_2, -2147483647i), vec3<bool>(arg_1.x, arg_0.x, false)) | ~vec3<i32>(17251i, u_input.a.x, u_input.a.x), true), _wgslsmith_add_vec3_i32(vec3<i32>(78864i, ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_2, arg_2, -1i), vec4<i32>(u_input.a.x, -2147483647i, 1i, 2147483647i))), -(~vec3<i32>(28285i, u_input.a.x, 0i)))) >> ((~_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(0u, u_input.b, 0u)), vec3<u32>(3267u, 1u, u_input.b) << (vec3<u32>(1u, u_input.b, 11536u) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(abs(vec3<u32>(global1.x, global1.x, global1.x) << (vec3<u32>(u_input.b, 30092u, 0u) % vec3<u32>(32u))), vec3<u32>(1u, _wgslsmith_add_u32(101002u, 77173u), global1.x)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = global0[_wgslsmith_index_u32(max(4294967295u ^ (u_input.b & _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 1u, 4294967295u, 0u), ~vec4<u32>(global1.x, 0u, global1.x, 1u))), global1.x), 16u)];
    var var_2 = Struct_1(true, vec3<bool>(arg_0.x, arg_1.x, arg_0.x));
    let var_3 = Struct_1(false, !global2[_wgslsmith_index_u32(u_input.b, 12u)]);
    var_0 = abs(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, var_0.x), vec2<i32>(var_0.x, 17853i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_2, var_0.x), vec3<i32>(arg_2, 1i, arg_2)), var_0.x) | _wgslsmith_div_vec3_i32(select(firstLeadingBit(vec3<i32>(arg_2, -1i, -27829i)), -vec3<i32>(2147483647i, var_0.x, var_0.x), !var_2.b), abs(vec3<i32>(-29300i, arg_2, 1i)) & vec3<i32>(0i, 0i, var_0.x)));
    return !(!select(vec4<bool>(true, arg_1.x, any(vec4<bool>(false, var_3.b.x, var_3.b.x, var_3.a)), arg_1.x), !vec4<bool>(true, var_3.b.x, true, false), arg_0.x));
}

fn func_2() -> Struct_2 {
    let var_0 = all(select(select(vec4<bool>(true, true, any(vec2<bool>(false, false)), true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), select(func_3(global2[_wgslsmith_index_u32(u_input.b, 12u)], select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), 13649i ^ u_input.a.x, vec4<f32>(global0[_wgslsmith_index_u32(40240u, 16u)], 505f, global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), all(func_3(vec3<bool>(false, false, true), vec2<bool>(false, true), 0i, vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], 743f, 1034f, global0[_wgslsmith_index_u32(global1.x, 16u)])))), vec4<bool>(func_3(vec3<bool>(false, false, false), vec2<bool>(false, false), 2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 16u)], global0[_wgslsmith_index_u32(global1.x, 16u)], global0[_wgslsmith_index_u32(30164u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]))).x, all(vec3<bool>(false, false, false)), func_3(!global2[_wgslsmith_index_u32(global1.x, 12u)], select(vec2<bool>(false, true), vec2<bool>(true, false), true), -u_input.a.x, vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], 1307f, -1237f, global0[_wgslsmith_index_u32(115557u, 16u)])).x, true)));
    let var_1 = Struct_2(Struct_1((~global1.x & 23138u) >= _wgslsmith_mod_u32(1u, global1.x), select(select(vec3<bool>(var_0, true, var_0), select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, false, false), vec3<bool>(false, false, var_0)), global2[_wgslsmith_index_u32(global1.x, 12u)]), func_3(func_3(vec3<bool>(false, var_0, var_0), vec2<bool>(var_0, true), u_input.a.x, vec4<f32>(global0[_wgslsmith_index_u32(20678u, 16u)], global0[_wgslsmith_index_u32(global1.x, 16u)], -405f, global0[_wgslsmith_index_u32(u_input.b, 16u)])).xyy, select(vec2<bool>(var_0, true), vec2<bool>(true, var_0), false), 3739i, vec4<f32>(-1182f, global0[_wgslsmith_index_u32(global1.x, 16u)], 1000f, global0[_wgslsmith_index_u32(1u, 16u)])).zyw, select(select(global2[_wgslsmith_index_u32(12429u, 12u)], vec3<bool>(var_0, var_0, var_0), var_0), vec3<bool>(var_0, var_0, false), true))), Struct_1(!(!(var_0 | var_0)), !(!vec3<bool>(false, var_0, true))), Struct_1(var_0, global2[_wgslsmith_index_u32((u_input.b << (4360u % 32u)) | 63372u, 12u)]), Struct_1(var_0, global2[_wgslsmith_index_u32(1u, 12u)]));
    global0 = array<f32, 16>();
    var var_2 = !(!(!all(vec3<bool>(true, false, false))));
    let var_3 = !func_3(global2[_wgslsmith_index_u32(global1.x, 12u)], !var_1.b.b.yy, -84154i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(17538u, 16u)], 1954f, global0[_wgslsmith_index_u32(global1.x, 16u)], 2348f), vec4<f32>(-998f, global0[_wgslsmith_index_u32(7053u, 16u)], -1000f, global0[_wgslsmith_index_u32(22098u, 16u)])))))).zxx;
    return Struct_2(var_1.b, var_1.a, var_1.c, Struct_1(true, vec3<bool>(-1786f <= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 16u)] + 753f), false, false)));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec3<bool>(any(vec2<bool>(true, arg_1.b.b.x)), arg_1.b.b.x, !any(select(!vec4<bool>(arg_1.a.b.x, arg_1.b.b.x, arg_1.d.b.x, arg_1.d.a), vec4<bool>(arg_1.b.b.x, arg_1.a.b.x, arg_1.d.a, arg_1.d.b.x), select(vec4<bool>(false, true, arg_1.b.b.x, arg_1.c.b.x), vec4<bool>(true, arg_1.b.a, arg_1.a.b.x, false), arg_1.d.a))));
    global0 = array<f32, 16>();
    var var_1 = -_wgslsmith_add_i32(-1i, 2147483647i);
    let var_2 = firstTrailingBit(vec4<u32>(global1.x, firstLeadingBit(reverseBits(abs(1u))), global1.x, max(u_input.b, global1.x)));
    let var_3 = 475u;
    return Struct_1(true, vec3<bool>(all(select(select(arg_1.d.b.yz, var_0.xy, vec2<bool>(arg_1.a.b.x, var_0.x)), var_0.xy, func_2().b.b.x)), all(vec4<bool>(func_3(vec3<bool>(false, arg_1.d.b.x, false), arg_1.a.b.zz, 1i, vec4<f32>(arg_0, -1056f, -477f, 480f)).x, true, true, true)), var_0.x));
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    var var_0 = func_4(-476f, func_2());
    var_0 = func_4(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global1.x, 16u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1581f))))), func_2());
    var var_1 = u_input.a.x | (-_wgslsmith_sub_i32(u_input.a.x, abs(u_input.a.x)) ^ ~(-3847i));
    var var_2 = !vec4<bool>(var_0.a, func_2().d.b.x, true, func_4(1970f, func_2()).a);
    let var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(firstTrailingBit(abs(0i))), u_input.a.x << (global1.x % 32u), firstTrailingBit(2147483647i)), select(-vec3<i32>(~u_input.a.x, max(u_input.a.x, 11700i), u_input.a.x), -_wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.a.x, -1i, -52072i)), abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), !func_4(global0[_wgslsmith_index_u32(~global1.x, 16u)], func_2()).b), vec3<i32>(-1i, u_input.a.x << (_wgslsmith_sub_u32(arg_0.x, 33079u) % 32u), ~(-1i)));
    return -1i;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<i32>) -> Struct_1 {
    global2 = array<vec3<bool>, 12>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 16u)])));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-172f, global0[_wgslsmith_index_u32(u_input.b, 16u)]))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global1.x, 16u)], -175f) - vec2<f32>(119f, global0[_wgslsmith_index_u32(0u, 16u)]))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(305f, var_0)))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-117f, var_0, true)))), -659f))), !func_4(_wgslsmith_f_op_f32(-var_0), func_2()).b.x));
    var var_2 = -2147483647i;
    let var_3 = Struct_1(any(vec4<bool>(true, all(func_3(global2[_wgslsmith_index_u32(global1.x, 12u)], vec2<bool>(true, true), -1i, vec4<f32>(var_0, 225f, 195f, 576f))), false, true)), !(!global2[_wgslsmith_index_u32(min(_wgslsmith_div_u32(u_input.b, 1548u), abs(2076u)), 12u)]));
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec3<u32>(global1.x, ~reverseBits(global1.x), global1.x);
    var var_0 = func_5(vec2<i32>(u_input.a.x, -_wgslsmith_mod_i32(func_1(vec2<u32>(u_input.b, 29270u)), _wgslsmith_mod_i32(u_input.a.x, 29549i))), select(vec2<i32>(-u_input.a.x, abs(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a))), ~(u_input.a | ~u_input.a), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))));
    global1 = vec3<u32>(min(min(~global1.x, 4294967295u) | (u_input.b & countOneBits(36592u)), 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u << (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, u_input.b), vec3<u32>(67466u, 70996u, u_input.b)) % 32u), _wgslsmith_sub_u32(u_input.b, global1.x), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(50924u, 6016u, global1.x), vec3<u32>(u_input.b, 1u, 0u), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(global1.x, u_input.b, global1.x) | vec3<u32>(22399u, global1.x, u_input.b))), ~vec3<u32>(4294967295u, u_input.b, global1.x) | select(~vec3<u32>(1u, 1u, global1.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 37045u), vec3<u32>(u_input.b, global1.x, 6109u)), vec3<bool>(true, true, true))), 4294967295u);
    let var_1 = select(vec4<bool>(false, false, var_0.b.x, false), select(vec4<bool>(any(func_5(u_input.a, vec2<i32>(-27315i, u_input.a.x)).b.yx), false, var_0.a, firstTrailingBit(44767u) <= ~1u), !func_3(!vec3<bool>(var_0.b.x, true, var_0.b.x), !vec2<bool>(var_0.a, var_0.a), -2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(80372u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], -1497f, -1286f) * vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 16u)], 1147f, 1068f, -820f))), var_0.a && all(!vec4<bool>(var_0.a, var_0.b.x, true, var_0.b.x))), !vec4<bool>(var_0.a, true, !(var_0.a & var_0.a), var_0.b.x));
    global0 = array<f32, 16>();
    let var_2 = func_5(select(-reverseBits(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 2147483647i))), _wgslsmith_mult_vec2_i32(u_input.a, reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a.x), u_input.a))), var_0.b.x), _wgslsmith_mod_vec2_i32(max(~vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(-1i, -u_input.a.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(19496i, u_input.a.x)), u_input.a, vec2<i32>(-1i, ~(-65380i)))));
    var var_3 = Struct_1(var_0.a, select(!(!(!global2[_wgslsmith_index_u32(0u, 12u)])), func_4(-140f, func_2()).b, select(vec3<bool>(all(var_1), global0[_wgslsmith_index_u32(1u, 16u)] >= 363f, true), var_0.b, func_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.x, 45921u), 16u)], Struct_2(var_2, Struct_1(var_2.a, var_1.xxx), var_2, var_2)).b)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-730f, global0[_wgslsmith_index_u32(0u, 16u)], -1130f, global0[_wgslsmith_index_u32(u_input.b, 16u)]), vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(31850u, 16u)], -1481f), var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1476f, global0[_wgslsmith_index_u32(33465u, 16u)], global0[_wgslsmith_index_u32(26646u, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)]) + vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], -1211f, 118f, global0[_wgslsmith_index_u32(global1.x, 16u)])))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(global1.x, 16u)], -1000f)), -676f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4529u, 16u)] * -376f))) + vec4<f32>(global0[_wgslsmith_index_u32(~u_input.b ^ 59326u, 16u)], -382f, -1166f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(global1.x, 16u)])) - global0[_wgslsmith_index_u32(global1.x, 16u)]))));
    let var_5 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_4.x, 1300f, var_0.a)), var_4.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_4 - var_4), var_4), abs(vec3<i32>(-7463i, 1i, u_input.a.x ^ u_input.a.x)), select(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x << (16758u % 32u), abs(11497i)), -7480i), u_input.a.x, !(!var_0.b.x) || true), var_4.zww, vec3<i32>(u_input.a.x, u_input.a.x | u_input.a.x, u_input.a.x));
}

