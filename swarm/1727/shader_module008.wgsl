struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: u32 = 4294967295u;

var<private> global2: bool = true;

var<private> global3: i32 = 9863i;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = max((_wgslsmith_mult_i32(~48596i, arg_2.c.x) << (~u_input.a.x % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, arg_0, _wgslsmith_sub_u32(u_input.a.x, arg_0)), ~(vec4<u32>(54587u, u_input.a.x, arg_0, 64957u) | vec4<u32>(4294967295u, u_input.a.x, 13257u, arg_0))) % 32u), -2147483647i);
    var var_1 = !(!(!(!(!vec2<bool>(true, arg_2.a.b)))));
    let var_2 = Struct_2(arg_2.a, arg_2.b, vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -20280i, firstLeadingBit(~0i)), var_0), ~99771u);
    global1 = _wgslsmith_div_u32(0u, _wgslsmith_div_u32(u_input.a.x, abs(~arg_2.d)));
    var var_3 = _wgslsmith_add_u32(reverseBits(~(~47973u)), countOneBits(arg_0));
    return _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_2.c.x, 26094i, var_0, var_0), max(vec4<i32>(1806i, 1i, 6979i, arg_2.c.x), vec4<i32>(var_2.c.x, var_2.c.x, arg_2.c.x, var_0))), _wgslsmith_div_vec4_i32(abs(~vec4<i32>(var_2.c.x, -1i, 122i, arg_2.c.x)), ~select(vec4<i32>(60251i, -7883i, var_0, arg_2.c.x), vec4<i32>(-1i, -29687i, -30422i, -52030i), vec4<bool>(arg_2.a.b, var_2.a.b, var_1.x, true)))), _wgslsmith_mult_vec4_i32(~((vec4<i32>(-21448i, var_2.c.x, var_0, arg_2.c.x) & vec4<i32>(-71244i, var_2.c.x, 0i, -17394i)) << ((vec4<u32>(1u, var_2.d, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, arg_0, arg_0, var_2.d)) % vec4<u32>(32u))), countOneBits(vec4<i32>(var_0, 1i, -1i, var_0)) >> (~(vec4<u32>(u_input.a.x, 58209u, 1943u, 16452u) | vec4<u32>(arg_2.d, 1u, var_2.d, var_2.d)) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: f32) -> vec2<f32> {
    global3 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(abs(func_3(24178u | arg_0.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3, -754f, -1254f), vec3<f32>(-141f, arg_3, arg_3), true)), Struct_2(Struct_1(-143f, true, arg_3), Struct_1(265f, false, arg_3), vec2<i32>(14803i, -2147483647i), arg_0.x))), vec4<i32>(~(-2147483647i), -select(-22242i, -1i, true), 2147483647i, countOneBits(i32(-1i) * -2147483647i))), select(-min(select(vec4<i32>(1i, 2147483647i, -36121i, -1i), vec4<i32>(-2147483647i, 2147483647i, -17223i, 45483i), vec4<bool>(true, false, true, false)), ~vec4<i32>(4069i, -13011i, 0i, -37670i)), vec4<i32>(~12373i, i32(-1i) * -2147483647i, ~1i, -6571i) << (_wgslsmith_add_vec4_u32(select(vec4<u32>(1u, arg_2.x, arg_0.x, 0u), vec4<u32>(4294967295u, 4294967295u, arg_0.x, 73182u), vec4<bool>(true, true, true, false)), ~vec4<u32>(arg_0.x, 4294967295u, u_input.a.x, 1u)) % vec4<u32>(32u)), !any(vec3<bool>(true, true, true))));
    global3 = _wgslsmith_dot_vec4_i32(select(-vec4<i32>(1i, -2147483647i, 1i, ~(-2147483647i)), func_3(~4294967295u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(807f, -689f, -1021f)), Struct_2(Struct_1(-821f, false, 1080f), Struct_1(arg_3, true, arg_3), vec2<i32>(-42402i, -1i), 0u)) << (countOneBits(~vec4<u32>(arg_1.x, u_input.a.x, 0u, arg_1.x)) % vec4<u32>(32u)), vec4<bool>(1000f < _wgslsmith_f_op_f32(-950f + arg_3), true, any(vec3<bool>(true, true, true)), true)), func_3(~(0u << (_wgslsmith_add_u32(42688u, arg_2.x) % 32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -1513f, -638f) - vec3<f32>(arg_3, -1522f, 120f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-434f, 2714f, arg_3)) + vec3<f32>(arg_3, arg_3, -1000f)), all(vec4<bool>(false, true, false, true)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-519f + arg_3), true, _wgslsmith_f_op_f32(f32(-1f) * -1151f)), Struct_1(_wgslsmith_f_op_f32(ceil(567f)), select(false, false, false), _wgslsmith_f_op_f32(select(arg_3, arg_3, false))), -func_3(0u, vec3<f32>(-734f, arg_3, 1464f), Struct_2(Struct_1(116f, true, 297f), Struct_1(arg_3, false, -2180f), vec2<i32>(2147483647i, -111072i), 41918u)).xx, 1u)));
    global0 = ~(~(~arg_0.x));
    global3 = 1i;
    var var_0 = Struct_1(arg_3, true, _wgslsmith_f_op_f32(arg_3 - _wgslsmith_div_f32(-2284f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(trunc(arg_3)))))));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1939f, arg_3), vec2<f32>(165f, 643f), vec2<bool>(false, var_0.b))))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global3 = arg_0;
    var var_0 = !vec4<bool>(false, any(vec2<bool>(true, any(vec4<bool>(false, true, false, true)))), true, all(vec4<bool>(all(vec3<bool>(false, false, true)), true, false, true)));
    global1 = 43574u;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(u_input.a.xz << (u_input.a.yz % vec2<u32>(32u)), max(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(0u, 3273u, 1u), _wgslsmith_f_op_f32(floor(-1000f)))))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), 532f);
    return Struct_1(299f, true, _wgslsmith_f_op_f32(var_1.x * 1f));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_u32(~(vec2<u32>(4294967295u, u_input.a.x) << (u_input.a.xz % vec2<u32>(32u))), select(u_input.a.zx, ~u_input.a.zz, arg_0.b.b));
    let var_1 = !vec2<bool>(all(!vec4<bool>(true, arg_0.a.b, arg_0.a.b, arg_0.a.b)), arg_0.b.b);
    global0 = 0u;
    global0 = 61066u;
    var var_2 = select(arg_0.c.x, arg_0.c.x & ~select(arg_0.c.x & arg_0.c.x, arg_0.c.x, arg_0.a.b != true), var_1.x);
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.c, arg_0.b.a) - arg_0.a.a))))), true, _wgslsmith_f_op_f32(min(arg_0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(var_0, u_input.a, u_input.a, 522f)).x)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = !arg_1.b;
    var var_1 = select(select(select(!vec3<bool>(true, true, arg_1.b), !(!vec3<bool>(arg_1.b, true, arg_0.x)), vec3<bool>(true, all(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), arg_1.b || false)), vec3<bool>(false, all(arg_0), arg_0.x), true & func_4(Struct_2(Struct_1(arg_1.c, arg_1.b, arg_1.c), arg_1, vec2<i32>(2147483647i, -4658i), u_input.a.x)).b), !select(!(!vec3<bool>(arg_1.b, false, false)), vec3<bool>(arg_0.x, true, !arg_0.x), vec3<bool>(!arg_1.b, true, false)), all(vec2<bool>(true, true)));
    var var_2 = !vec2<bool>(any(select(var_1.xy, !vec2<bool>(arg_0.x, arg_0.x), var_1.x)), all(!select(vec4<bool>(true, arg_1.b, false, true), vec4<bool>(false, arg_1.b, true, false), vec4<bool>(true, var_1.x, true, var_1.x))));
    let var_3 = countOneBits(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(~11660u, ~u_input.a.x, _wgslsmith_div_u32(arg_2.x, u_input.a.x), arg_2.x), ~vec4<u32>(u_input.a.x, 1u, 64902u, 50271u), vec4<u32>(~1u, u_input.a.x, 1u, ~u_input.a.x))));
    var_0 = arg_0.x;
    return Struct_2(Struct_1(-1698f, !(!var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1758f * -1688f), _wgslsmith_f_op_f32(arg_1.a - 1772f), arg_1.b)) + arg_1.a)), arg_1, select(countOneBits(vec2<i32>(-2147483647i, -47563i)), firstLeadingBit(-vec2<i32>(1i, 46001i)), var_1.yy) | (_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, 2147483647i)), vec2<i32>(-2147483647i, -6914i)) & _wgslsmith_clamp_vec2_i32(~vec2<i32>(-11237i, -2147483647i), -vec2<i32>(2147483647i, -26464i), _wgslsmith_mult_vec2_i32(vec2<i32>(2508i, -13459i), vec2<i32>(1i, 1i)))), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    global0 = _wgslsmith_sub_u32(_wgslsmith_add_u32((~1377u ^ u_input.a.x) << (13484u % 32u), 1u), ~(~(~u_input.a.x) | ~u_input.a.x));
    let var_0 = u_input.a.x;
    var var_1 = func_5(vec2<bool>(true, !(!any(vec3<bool>(false, true, false)))), func_4(Struct_2(func_1(_wgslsmith_add_i32(-30749i, -1i)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -257f), true, _wgslsmith_div_f32(-2110f, 1594f)), _wgslsmith_mod_vec2_i32(vec2<i32>(-44982i, -2147483647i), vec2<i32>(-1i, -31579i)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(var_0, 4294967295u), u_input.a.yx) % vec2<u32>(32u)), 17598u)), vec3<u32>(0u, u_input.a.x, var_0));
    global1 = max(var_0, ~min(firstTrailingBit(~1u), var_0 >> (var_0 % 32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1724f) * _wgslsmith_f_op_f32(-var_1.b.a)))) < func_5(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(var_1.a.b, var_1.b.b), var_1.b.b), select(!vec2<bool>(var_1.b.b, false), select(vec2<bool>(true, false), vec2<bool>(true, var_1.b.b), vec2<bool>(true, true)), false)), func_1(~(-2147483647i)), u_input.a).a.c;
    global2 = all(vec3<bool>(all(vec2<bool>(all(vec2<bool>(var_1.a.b, true)), func_5(vec2<bool>(true, var_1.a.b), Struct_1(var_1.b.a, true, var_1.b.c), u_input.a).a.b)), var_0 >= 1u, false));
    global0 = ~(~(~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(50236i, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a)), _wgslsmith_f_op_f32(var_1.b.a + -1276f)), var_1.b.c, 187f, _wgslsmith_f_op_vec2_f32(func_2(~abs(vec2<u32>(var_1.d, 49198u)), ~select(vec3<u32>(4294967295u, var_1.d, u_input.a.x), vec3<u32>(13723u, 0u, 28738u), vec3<bool>(true, false, var_1.a.b)), vec3<u32>(1u, u_input.a.x, var_1.d), _wgslsmith_f_op_f32(-func_4(Struct_2(var_1.b, var_1.a, vec2<i32>(var_1.c.x, var_1.c.x), var_1.d)).c))).x), var_1.a.a);
}

