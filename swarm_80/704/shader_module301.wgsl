struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<bool>,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: Struct_4,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: array<i32, 21> = array<i32, 21>(0i, 1i, -1i, -18101i, -39577i, 0i, -9399i, 1i, 0i, i32(-2147483648), 1i, -6139i, -1i, i32(-2147483648), -792i, 7905i, -20274i, -64599i, 1i, -1i, -1i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> i32 {
    global1 = array<i32, 21>();
    let var_0 = Struct_3(select(vec3<bool>(all(!arg_0.c), false, arg_0.c.x), !arg_0.c, select(arg_0.e.x != 0i, true, false)), arg_0.c.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(-441f, arg_0.a.a), _wgslsmith_f_op_f32(-986f + -1000f), _wgslsmith_f_op_f32(-arg_0.d.a.x), _wgslsmith_f_op_f32(f32(-1f) * -832f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.d.a.x, arg_0.d.a.x, arg_0.a.a, 535f), vec4<f32>(arg_0.a.a, -127f, -302f, -2312f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.a.x, -282f, arg_0.d.a.x, arg_0.a.a)))), arg_0.c.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.d.a.x * arg_0.d.a.x))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -2215f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(arg_0.d.a.x))) - arg_0.d.a.x), 1000f)));
    let var_2 = true;
    var var_3 = false;
    return firstTrailingBit(-6574i);
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(~1u | select(firstLeadingBit(_wgslsmith_mult_u32(87442u, 30601u)), 1u, _wgslsmith_dot_vec4_i32(vec4<i32>(-2038i, u_input.a, -1i, u_input.a), vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(1u, 21u)], u_input.a, -35496i)) <= 1i), _wgslsmith_div_u32(4294967295u, 24132u), 24460u);
    var var_1 = -1i;
    let var_2 = true;
    var var_3 = vec4<i32>(func_3(Struct_4(arg_0.a, -arg_0.e.yz, vec3<bool>(arg_0.c.x, false, false), Struct_2(vec3<f32>(arg_0.d.a.x, arg_0.a.a, 306f)), ~vec3<i32>(-2147483647i, -21400i, -1i))), arg_0.e.x, u_input.a, _wgslsmith_mod_i32(-1i, 24858i)) | (~(-vec4<i32>(-27227i, -2147483647i, -2147483647i, 2147483647i)) << (select(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 89921u), vec3<u32>(1u, 0u, 0u)), _wgslsmith_mult_u32(89669u, 13477u), 0u), !select(vec4<bool>(var_2, arg_0.c.x, arg_0.c.x, var_2), vec4<bool>(false, false, arg_0.c.x, true), arg_0.c.x)) % vec4<u32>(32u)));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(min(arg_0.a.a, 1386f)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-398f * _wgslsmith_f_op_f32(arg_0.a.a - 627f))) + var_4.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> f32 {
    global0 = array<Struct_2, 2>();
    global1 = array<i32, 21>();
    global0 = array<Struct_2, 2>();
    let var_0 = Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a)))))), Struct_4(arg_0, vec2<i32>(firstTrailingBit(-37606i) & -u_input.a, -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(27417u, 21u)], 2147483647i), vec3<i32>(u_input.a, -2147483647i, 17559i))), !arg_1.a, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-823f, 551f, arg_0.a), vec3<f32>(-1450f, arg_0.a, 163f)))), vec3<i32>(~1i, func_3(Struct_4(Struct_1(-1057f), vec2<i32>(global1[_wgslsmith_index_u32(0u, 21u)], 0i), arg_1.a, global0[_wgslsmith_index_u32(4294967295u, 2u)], vec3<i32>(u_input.a, u_input.a, -1i))), i32(-1i) * -u_input.a)), Struct_4(arg_0, abs(~(-vec2<i32>(0i, -32138i))), arg_1.a, Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, -311f, arg_0.a), vec3<f32>(-2413f, arg_0.a, -337f), vec3<bool>(false, arg_2, arg_2)))), ~vec3<i32>(~u_input.a, 0i, 63167i)), global0[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_sub_vec4_i32(abs(~max(vec4<i32>(0i, u_input.a, -2147483647i, 0i), vec4<i32>(u_input.a, u_input.a, 0i, global1[_wgslsmith_index_u32(4294967295u, 21u)]))), _wgslsmith_mod_vec4_i32(vec4<i32>(-global1[_wgslsmith_index_u32(0u, 21u)], 1i, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(3698u, 21u)]), u_input.a), abs(vec4<i32>(-53438i, global1[_wgslsmith_index_u32(4294967295u, 21u)], u_input.a, 2147483647i)))));
    var var_1 = -398f;
    return 526f;
}

fn func_1() -> Struct_5 {
    global1 = array<i32, 21>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(703f, -725f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(func_2(Struct_4(Struct_1(1000f), vec2<i32>(global1[_wgslsmith_index_u32(63922u, 21u)], u_input.a), vec3<bool>(false, true, false), Struct_2(vec3<f32>(786f, -550f, 1678f)), vec3<i32>(0i, 2147483647i, -51278i))), Struct_3(vec3<bool>(true, false, false), true), true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1555f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-245f, -431f)), _wgslsmith_f_op_f32(f32(-1f) * -395f))))));
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(895f, var_0.x, reverseBits(-15326i) < _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(9465u, 21u)], 0i, global1[_wgslsmith_index_u32(19339u, 21u)], global1[_wgslsmith_index_u32(33756u, 21u)]), vec4<i32>(1i, -53865i, 17784i, -28617i)), firstTrailingBit(vec4<i32>(-27275i, 33016i, 11523i, 1i))))));
    return Struct_5(var_1.a, Struct_4(Struct_1(-1403f), _wgslsmith_mult_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], -2147483647i), vec2<i32>(-19203i, u_input.a), vec2<i32>(3872i, -23600i)), countOneBits(-vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(0u, 21u)]))), vec3<bool>(true, false, var_0.x > -1283f), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0, var_0)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a, var_1.a, 129f))))), vec3<i32>(firstLeadingBit(u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(31226u, 75381u, 11154u, 1u), ~vec4<u32>(1u, 1u, 28951u, 4294967295u)), 21u)], -countOneBits(1i))), Struct_4(func_2(Struct_4(var_1, _wgslsmith_mod_vec2_i32(vec2<i32>(-28480i, 0i), vec2<i32>(-5441i, global1[_wgslsmith_index_u32(119489u, 21u)])), vec3<bool>(false, true, false), Struct_2(vec3<f32>(var_0.x, -1557f, var_1.a)), ~vec3<i32>(global1[_wgslsmith_index_u32(0u, 21u)], -1i, global1[_wgslsmith_index_u32(0u, 21u)]))), ~select(vec2<i32>(2147483647i, -65565i) & vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], u_input.a), abs(vec2<i32>(global1[_wgslsmith_index_u32(0u, 21u)], u_input.a)), vec2<bool>(true, true)), vec3<bool>(true, false, all(vec2<bool>(true, true))), global0[_wgslsmith_index_u32(max(abs(1u) >> (1u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 10140u, 1972u), ~vec3<u32>(87246u, 1u, 1u))), 2u)], vec3<i32>(~reverseBits(-1i), max(-u_input.a, u_input.a << (12785u % 32u)), global1[_wgslsmith_index_u32(1u, 21u)])), Struct_2(vec3<f32>(1493f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1506f)))), vec4<i32>(global1[_wgslsmith_index_u32(26383u, 21u)], 57653i, _wgslsmith_dot_vec3_i32(~(vec3<i32>(1i, -24358i, u_input.a) ^ vec3<i32>(0i, u_input.a, u_input.a)), abs(vec3<i32>(global1[_wgslsmith_index_u32(11622u, 21u)], 0i, global1[_wgslsmith_index_u32(1u, 21u)]) >> (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u)))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(firstTrailingBit(1u), ~0u, all(vec2<bool>(false, true))), 33169u), 21u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec3<bool>(false, true, any(vec4<bool>(true, true, true, true))), any(vec3<bool>(true, true, true)));
    global0 = array<Struct_2, 2>();
    global1 = array<i32, 21>();
    global1 = array<i32, 21>();
    let var_1 = func_1();
    let var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_2(var_1.b).a, -1023f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(694f * _wgslsmith_f_op_f32(abs(-1000f)))), var_2);
}

