struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 6>;

var<private> global1: array<u32, 7> = array<u32, 7>(1u, 732u, 0u, 4294967295u, 17294u, 2132u, 8716u);

var<private> global2: f32;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 31128u, 0u, 4294967295u);

var<private> global4: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    return 0u;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1046f, 506f, -920f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-3078f, -493f, 295f) + vec3<f32>(-2571f, -209f, 1000f))))), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(1u, 4294967295u)), 7u)] | 1u, (2192u << (global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(114612u, 7u)], 7u)] % 32u)) << (global1[_wgslsmith_index_u32(global3.x, 7u)] % 32u)), true, _wgslsmith_mod_u32(~(~17670u), func_3(Struct_2(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 650f, -173f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1132f, -1000f, -139f, -154f), vec4<f32>(333f, 1343f, 1000f, -776f)))), Struct_2(45593i, vec3<f32>(-1036f, -839f, -1731f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2291f, 1445f, -1000f, -485f), vec4<f32>(1244f, 1678f, 1410f, 1000f)))), Struct_2(u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-285f, 672f, 1829f) - vec3<f32>(1429f, -487f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2079f, -934f, -432f, -546f) * vec4<f32>(-833f, -1313f, 327f, -133f))))), reverseBits(u_input.a & 20078i));
    global3 = ~(~countOneBits(select(~vec4<u32>(10746u, 48501u, 182u, global3.x), vec4<u32>(global3.x, 7956u, global1[_wgslsmith_index_u32(0u, 7u)], 0u) | vec4<u32>(623u, global3.x, global1[_wgslsmith_index_u32(26580u, 7u)], var_0.d), !vec4<bool>(false, true, var_0.c, true))));
    let var_1 = 69746u;
    let var_2 = -1000f;
    let var_3 = true;
    return Struct_2(_wgslsmith_add_i32(2147483647i, u_input.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a + var_0.a)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a * var_0.a) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, -1000f, var_0.a.x), vec3<f32>(var_2, -1404f, var_0.a.x))), vec3<f32>(-463f, var_0.a.x, _wgslsmith_f_op_f32(abs(109f))), ~var_1 >= func_3(Struct_2(1i, var_0.a, vec4<f32>(822f, -1004f, -1451f, var_0.a.x)), Struct_2(0i, var_0.a, vec4<f32>(var_0.a.x, -1000f, -1139f, var_0.a.x)), Struct_2(u_input.a, vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(1015f, var_0.a.x, 434f, 373f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-237f, _wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_div_f32(var_0.a.x, -1000f), _wgslsmith_f_op_f32(max(-678f, -1000f))) + vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(round(1313f)), _wgslsmith_f_op_f32(1187f + -452f)))));
}

fn func_1() -> Struct_3 {
    let var_0 = !vec3<bool>(false, true, !all(vec4<bool>(global4.x, global4.x, false, global4.x)));
    global0 = array<vec2<f32>, 6>();
    var var_1 = vec2<u32>(~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(27660u, _wgslsmith_dot_vec2_u32(global3.zx, global3.xx)), 7u)], _wgslsmith_mult_u32(~(global3.x | (global1[_wgslsmith_index_u32(53083u, 7u)] & global1[_wgslsmith_index_u32(30076u, 7u)])), ~0u));
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b.x)))), _wgslsmith_f_op_f32(1174f - _wgslsmith_f_op_f32(round(2171f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x + -1875f) - _wgslsmith_f_op_f32(sign(var_2.b.x)))))));
    return Struct_3(false, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-325f + var_3.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.c.x * 2038f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(667f, var_2.b.x)), 433f)), _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(~14843u, 7u)], var_1.x)), var_0.x, global1[_wgslsmith_index_u32(global3.x | _wgslsmith_sub_u32(var_1.x, global3.x), 7u)], u_input.a), any(vec3<bool>(!global4.x & true, var_0.x, !all(vec2<bool>(false, false)))), false, vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(32132i, var_2.a)), -vec2<i32>(u_input.a, var_2.a))), _wgslsmith_div_i32(~_wgslsmith_sub_i32(var_2.a, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(26687i, 27849i, var_2.a, 2147483647i), vec4<i32>(1i, -1i, var_2.a, u_input.a)) << (~global3.x % 32u)), ~(~var_2.a) << (~global3.x % 32u), var_2.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = func_1().b.a.xy;
    var var_1 = 16676i;
    global4 = select(!vec4<bool>(false, all(vec4<bool>(arg_1.c, arg_1.c, false, global4.x)), false, true), select(!(!vec4<bool>(true, true, false, arg_1.c)), select(!vec4<bool>(false, arg_0.a, arg_0.a, global4.x), !(!vec4<bool>(true, global4.x, arg_0.d, arg_1.c)), vec4<bool>(all(vec2<bool>(false, arg_0.a)), true, global4.x, true)), global4.x || func_1().a), select(!(!(!vec4<bool>(global4.x, arg_0.c, global4.x, false))), vec4<bool>(arg_1.c, all(vec3<bool>(true, true, true)), (arg_0.e.x <= 66527i) | global4.x, arg_0.d), vec4<bool>(arg_1.c, global4.x, true, global4.x)));
    var var_2 = Struct_3(!arg_1.c != (((arg_0.b.e | arg_1.e) > arg_1.e) || ((-19663i > arg_0.e.x) & true)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1().b.a - _wgslsmith_f_op_vec3_f32(arg_1.a + arg_0.b.a))), ~_wgslsmith_add_u32(~arg_0.b.b, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(arg_0.b.d, 7u)], 0u)), !(true & (arg_0.e.x > u_input.a)), ~global1[_wgslsmith_index_u32(1u, 7u)], ~arg_1.e), false, !(!(all(global4.www) == true)), ~(-arg_0.e));
    var var_3 = var_2.e;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(arg_1.a))))) + func_2().b) - _wgslsmith_f_op_vec3_f32(-arg_0.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(global3.x, 0u), _wgslsmith_add_u32(22158u, 20726u), 51421u >> (0u % 32u)) >= ~global1[_wgslsmith_index_u32(global3.x, 7u)], Struct_1(_wgslsmith_f_op_vec3_f32(func_4(func_1(), Struct_1(vec3<f32>(567f, 1896f, -655f), global3.x ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], global4.x, ~global1[_wgslsmith_index_u32(global3.x, 7u)], countOneBits(3349i)))), 18970u, any(global4.xw), _wgslsmith_add_u32(24531u, _wgslsmith_dot_vec2_u32(global3.xx ^ vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.x, 7u)], 7u)], 7u)]), global3.xw)), u_input.a), global4.x, _wgslsmith_dot_vec4_i32(select(~vec4<i32>(-16589i, 40840i, u_input.a, u_input.a), vec4<i32>(-39138i, 31593i, 2147483647i, -2147483647i) ^ vec4<i32>(u_input.a, 1i, 93440i, u_input.a), vec4<bool>(false, global4.x, global4.x, false)), vec4<i32>(2147483647i, u_input.a, -8744i >> (0u % 32u), 39677i)) <= 1i, vec4<i32>(u_input.a, -2147483647i, countOneBits(33689i), 1i));
    global2 = -721f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.a - vec3<f32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x)), var_0.b.a))), global3.x, func_1().c, 4294967295u, _wgslsmith_sub_i32(~(-(~(-1i))), u_input.a));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_3 = firstLeadingBit(17692u);
    var var_4 = 75077u;
    global4 = !select(vec4<bool>(true, false & any(vec3<bool>(true, true, true)), global4.x, true), select(select(vec4<bool>(global4.x, var_1.c, false, true), vec4<bool>(var_1.c, var_0.c, var_1.c, var_1.c), vec4<bool>(var_1.c, var_1.c, true, var_1.c)), vec4<bool>(var_0.a, global4.x, false && var_1.c, var_0.b.c), vec4<bool>(true, true, true, true)), global4.x || true);
    global2 = _wgslsmith_f_op_f32(func_1().b.a.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(801f + 1192f))))));
    var var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2, -1363f, 161f)))), vec3<f32>(var_2, _wgslsmith_f_op_f32(select(var_0.b.a.x, var_0.b.a.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1137f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-647f))), 549f, var_0.b.a.x)), ~0u, !(false || global4.x) || (true & global4.x), _wgslsmith_dot_vec2_u32(global3.xx, ~vec2<u32>(4294967295u, 4294967295u) ^ ~_wgslsmith_mod_vec2_u32(vec2<u32>(48610u, var_0.b.d), global3.yx)), _wgslsmith_clamp_i32(firstLeadingBit(u_input.a), 2147483647i, ~0i));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.d, _wgslsmith_f_op_f32(min(var_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2328f)))))), ~(~abs(firstLeadingBit(vec3<u32>(var_1.b, 9987u, 32105u)))), abs(countOneBits(70772u)), vec4<i32>(-71772i, 1i, 14560i, var_5.e));
}

