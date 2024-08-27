struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = vec2<bool>(arg_2, arg_2);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_1.a.x, 1154f))))))));
}

fn func_3(arg_0: i32) -> i32 {
    global0 = array<u32, 32>();
    let var_0 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(u_input.b.x, ~firstLeadingBit(u_input.e.x), !(true && any(vec2<bool>(true, false)))), 32u)], 32u)] << (_wgslsmith_clamp_u32(u_input.b.x, (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.e.x, 7116u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], u_input.e.x, 1u)) & max(452u, global0[_wgslsmith_index_u32(7471u, 32u)])) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 9594u, 16069u), vec3<u32>(global0[_wgslsmith_index_u32(27412u, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9915u, 32u)], 32u)], u_input.e.x) << (u_input.e.yxy % vec3<u32>(32u))), (select(1u, u_input.b.x, false) & 41831u) ^ u_input.b.x) % 32u), 32u)];
    var var_1 = func_2(_wgslsmith_div_i32(-15331i, _wgslsmith_mod_i32(firstLeadingBit(u_input.d.x), select(arg_0, arg_0, true)) >> ((~u_input.b.x & _wgslsmith_div_u32(4294967295u, 4294967295u)) % 32u)), func_2(68883i, func_2(firstTrailingBit(~(-26680i)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1599f, -1587f, 744f))), true || any(vec3<bool>(false, true, true)), vec4<u32>(1u, u_input.b.x ^ u_input.e.x, _wgslsmith_mult_u32(35788u, u_input.e.x), global0[_wgslsmith_index_u32(0u, 32u)])), all(vec3<bool>(any(vec2<bool>(false, true)), true, true)), u_input.e), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true))), vec4<bool>(any(vec4<bool>(false, true, false, true)), true, true, any(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true))), min(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(10239u, 0u, 41210u, 84031u) | vec4<u32>(26252u, global0[_wgslsmith_index_u32(13025u, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 32u)], global0[_wgslsmith_index_u32(u_input.e.x, 32u)]), u_input.e, _wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(86800u, 32u)], 32u)], 32u)], global0[_wgslsmith_index_u32(u_input.e.x, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12146u, 32u)], 32u)]), u_input.e))), ~(~u_input.e)));
    let var_2 = func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(select(_wgslsmith_sub_i32(-11243i, u_input.d.x), 1i, true), ~_wgslsmith_dot_vec3_i32(vec3<i32>(32322i, -51910i, u_input.c), vec3<i32>(arg_0, arg_0, 0i)), -30004i), select(max(vec3<i32>(u_input.a, u_input.d.x, arg_0), vec3<i32>(u_input.d.x, -43821i, u_input.c)) << (~u_input.e.yzy % vec3<u32>(32u)), vec3<i32>(arg_0 | 0i, -25630i, firstLeadingBit(-2147483647i)), false)), func_2(0i, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), _wgslsmith_f_op_f32(trunc(665f)), _wgslsmith_div_f32(1221f, -1299f))), true, _wgslsmith_mult_vec4_u32(~(u_input.e ^ vec4<u32>(48544u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 32u)], 37516u, global0[_wgslsmith_index_u32(53684u, 32u)])), max(_wgslsmith_div_vec4_u32(u_input.e, u_input.e), u_input.e))), any(vec4<bool>(true, true, true, true)) | true, abs(u_input.e));
    global0 = array<u32, 32>();
    return 6994i;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(u_input.a, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-354f, -120f) + -554f), 1113f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(473f - -369f)))), false, ~(~max(u_input.e, _wgslsmith_sub_vec4_u32(u_input.e, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], 1u, 4294967295u, u_input.e.x)))));
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    var var_1 = func_3(_wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, 0i), 1i));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1468f, 643f), _wgslsmith_f_op_f32(f32(-1f) * -849f), -226f))));
    var var_1 = select(vec3<bool>(true && all(vec2<bool>(true, true)), u_input.e.x < 1672u, !any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))), select(vec3<bool>(true, true, true), !vec3<bool>(false, true, all(vec4<bool>(true, false, false, true))), vec3<bool>(true, true, true)), true);
    let var_2 = select(u_input.e | min(u_input.e, ~(~vec4<u32>(27245u, 32441u, 31853u, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]))), vec4<u32>(global0[_wgslsmith_index_u32(u_input.e.x, 32u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 32u)] & ~u_input.e.x, 3479u), _wgslsmith_dot_vec4_u32(u_input.e << (max(vec4<u32>(u_input.b.x, 11558u, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.e.x, 32u)]), vec4<u32>(4294967295u, 0u, u_input.e.x, global0[_wgslsmith_index_u32(1u, 32u)])) % vec4<u32>(32u)), abs(reverseBits(u_input.e))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, ~u_input.e.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.b.x), 32u)]), u_input.e), 32u)]), vec4<bool>(var_1.x, true, u_input.e.x == 1u, var_1.x));
    var var_3 = func_1();
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zy, _wgslsmith_mod_vec3_u32(vec3<u32>(66290u, max(_wgslsmith_sub_u32(u_input.b.x, u_input.e.x), _wgslsmith_clamp_u32(var_2.x, global0[_wgslsmith_index_u32(72032u, 32u)], 77225u)), firstLeadingBit(~0u)), vec3<u32>(var_2.x, ~_wgslsmith_mult_u32(52743u, 0u), 1u)));
}

