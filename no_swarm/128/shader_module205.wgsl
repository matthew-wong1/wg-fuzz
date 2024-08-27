struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18>;

var<private> global1: i32 = 12439i;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(180f, 255f), vec2<f32>(-440f, 713f));

var<private> global3: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(1660f, -384f), vec2<f32>(-153f, -196f), vec2<f32>(1656f, 1462f), vec2<f32>(1697f, 269f), vec2<f32>(227f, 1000f), vec2<f32>(1108f, -1465f), vec2<f32>(-144f, 1015f));

var<private> global4: array<vec4<i32>, 27>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) * global2.a.x))));
    global1 = 75369i;
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(2394u, 43278u, 4294967295u), reverseBits(vec3<u32>(0u, 23486u, 16956u))), ~(~vec3<u32>(12186u, 37559u, 15176u))) ^ _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(4294967295u, 0u)), firstTrailingBit(1u)), 1u);
    var var_2 = -vec3<i32>(3436i, 63480i, 2147483647i);
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.a.x)), _wgslsmith_div_f32(492f, global2.b.x), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-849f * global2.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(arg_0 + global2.b.x), _wgslsmith_f_op_f32(sign(-1000f)), global2.b.x) * vec4<f32>(global2.a.x, arg_0, _wgslsmith_f_op_f32(1069f - 1463f), _wgslsmith_f_op_f32(-207f - 1352f)))), vec4<f32>(1f, 2621f, _wgslsmith_f_op_f32(exp2(global2.b.x)), _wgslsmith_f_op_f32(trunc(arg_2.a.x)))));
    return arg_2;
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = ~vec3<i32>(reverseBits(abs(u_input.a >> (15912u % 32u))), u_input.a, 1i);
    global3 = array<vec2<f32>, 7>();
    let var_1 = func_1(1f, _wgslsmith_add_i32(_wgslsmith_sub_i32(0i ^ var_0.x, ~(-1i)) >> ((~arg_0 & 5508u) % 32u), -1475i), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(884f, _wgslsmith_f_op_f32(round(-479f))))), u_input.a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2148f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1693f, 1375f)))));
    global4 = array<vec4<i32>, 27>();
    var var_2 = _wgslsmith_div_i32(abs(abs(i32(-1i) * -27000i)), ~var_0.x) >= -1i;
    return -1009f;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    global3 = array<vec2<f32>, 7>();
    global3 = array<vec2<f32>, 7>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(63518u, 7u)])))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-202f, -101f) - _wgslsmith_f_op_f32(func_3(0u))), 1407f))));
    var var_1 = firstTrailingBit((_wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, arg_0.x, 4294967295u, 4294967295u), vec4<u32>(arg_0.x, 0u, 39567u, arg_1)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, arg_0.x, 15241u, 9057u), vec4<u32>(4294967295u, 4294967295u, arg_0.x, arg_0.x), vec4<u32>(59519u, arg_0.x, arg_1, 4294967295u))) << (_wgslsmith_dot_vec2_u32(arg_0, arg_0) % 32u)) << (_wgslsmith_add_u32(arg_1, arg_1) % 32u));
    var var_2 = abs(u_input.a);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(var_0.b)))), _wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(arg_1, 7u)], _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, global2.b.x), vec2<f32>(global2.b.x, 1000f)))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(func_1(596f, u_input.a, Struct_1(global3[_wgslsmith_index_u32(arg_0.x, 7u)], global3[_wgslsmith_index_u32(arg_1, 7u)])).a.x - -423f)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, -1582f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, var_0.b.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.b, vec2<f32>(425f, -206f))) + global3[_wgslsmith_index_u32(arg_0, 7u)]) * _wgslsmith_f_op_vec2_f32(-global2.b)));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(var_2.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(690f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.a.x + -243f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_1.a)))), u_input.a > abs(_wgslsmith_mod_i32(u_input.a, 3378i) & -25433i)));
    var var_4 = any(select(select(select(select(vec2<bool>(false, true), global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(71081u, 18u)]), vec2<bool>(true, true), select(vec2<bool>(false, true), global0[_wgslsmith_index_u32(arg_0, 18u)], false)), global0[_wgslsmith_index_u32(arg_0, 18u)], true), global0[_wgslsmith_index_u32(~1u, 18u)], !(!any(vec4<bool>(true, true, false, true)))));
    return 1531f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(countOneBits(43921i) << ((63904u << (select(1u, 4294967295u, all(vec3<bool>(true, false, false))) % 32u)) % 32u));
    global0 = array<vec2<bool>, 18>();
    var var_1 = func_1(_wgslsmith_div_f32(-1136f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1i, Struct_1(_wgslsmith_f_op_vec2_f32(min(global2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, 688f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a.x, global2.a.x), vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(global2.b.x + 551f)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 39258u), 18u)]))));
    let var_2 = func_1(_wgslsmith_f_op_f32(func_4(0u, func_2(vec2<u32>(1u, abs(69324u)), 10222u | _wgslsmith_clamp_u32(0u, 0u, 10547u)))), u_input.a | _wgslsmith_mult_i32(i32(-1i) * -4336i, -var_0), func_2(firstLeadingBit(vec2<u32>(1u, 1u)), ~(~1u)));
    var var_3 = select(vec4<bool>(!any(vec3<bool>(true, true, true)), false, ~(~(-1i)) <= (_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, 2147483647i, u_input.a), vec3<i32>(2147483647i, -22200i, u_input.a)) | -var_0), true || (true & all(global0[_wgslsmith_index_u32(0u, 18u)]))), !vec4<bool>(true, -u_input.a <= (u_input.a ^ -1i), any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), all(vec4<bool>(true, true, true, true))), !any(vec4<bool>(true, true, true, true)));
    let var_4 = abs(-_wgslsmith_sub_vec4_i32(global4[_wgslsmith_index_u32(~4294967295u, 27u)], vec4<i32>(-1i) * -vec4<i32>(-18360i, 1i, var_0, var_0)));
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.x))))), var_1.a);
    let var_6 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(530f + _wgslsmith_f_op_f32(f32(-1f) * -298f)), global2.a.x), _wgslsmith_div_f32(var_1.b.x, -878f), var_1.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.b.x, global2.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_5.a.x), ~vec4<u32>(firstTrailingBit(88591u), select(_wgslsmith_clamp_u32(5384u, 0u, 58245u), ~0u, any(var_3.xxx)), 0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 12072u, 25799u, 32187u), vec4<u32>(91858u, 4294967295u, 4689u, 16136u))), _wgslsmith_div_u32(~1u, ~1u));
}

