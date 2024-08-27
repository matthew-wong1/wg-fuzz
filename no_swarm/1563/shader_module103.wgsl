struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<f32>(-682f, 3006f, 458f, 655f), vec2<i32>(16127i, -12605i), 11664u, vec3<f32>(1003f, 959f, 1722f), vec3<f32>(-576f, -905f, 1000f)), Struct_1(vec4<f32>(-981f, -788f, -1833f, 1139f), vec2<i32>(-1i, -97605i), 0u, vec3<f32>(-808f, 1662f, 1000f), vec3<f32>(334f, 800f, -2280f)), Struct_1(vec4<f32>(1000f, -1150f, 1000f, -990f), vec2<i32>(2147483647i, 2147483647i), 12220u, vec3<f32>(172f, 486f, 901f), vec3<f32>(962f, 1246f, -1293f)), Struct_1(vec4<f32>(-460f, 1916f, 954f, 1434f), vec2<i32>(8338i, 1i), 0u, vec3<f32>(-434f, -723f, -1339f), vec3<f32>(-930f, 1987f, -1287f)), Struct_1(vec4<f32>(415f, -550f, 156f, -949f), vec2<i32>(-34081i, -29184i), 1u, vec3<f32>(-591f, -1394f, 291f), vec3<f32>(-827f, 159f, -1789f)), Struct_1(vec4<f32>(131f, 808f, 1780f, 187f), vec2<i32>(20973i, 1129i), 41094u, vec3<f32>(1887f, 2084f, -200f), vec3<f32>(-1000f, -363f, -353f)), Struct_1(vec4<f32>(-621f, -578f, -1190f, -1000f), vec2<i32>(-1i, i32(-2147483648)), 31897u, vec3<f32>(-861f, -1359f, -619f), vec3<f32>(-2747f, 1000f, 1212f)), Struct_1(vec4<f32>(-566f, 792f, 325f, 2907f), vec2<i32>(0i, -10168i), 1u, vec3<f32>(1065f, 1652f, 2063f), vec3<f32>(1124f, -1000f, 1502f)), Struct_1(vec4<f32>(1000f, -902f, -1041f, 1254f), vec2<i32>(2147483647i, -2745i), 4294967295u, vec3<f32>(133f, 561f, -268f), vec3<f32>(-1132f, -372f, 1074f)), Struct_1(vec4<f32>(-548f, 727f, -438f, -409f), vec2<i32>(15505i, -1i), 28229u, vec3<f32>(461f, -840f, -1164f), vec3<f32>(-1000f, -698f, 478f)), Struct_1(vec4<f32>(-247f, -402f, 281f, 1035f), vec2<i32>(0i, -1163i), 0u, vec3<f32>(-879f, -391f, 1000f), vec3<f32>(173f, -1638f, -1059f)), Struct_1(vec4<f32>(1116f, 451f, 2095f, 321f), vec2<i32>(6435i, 2147483647i), 71598u, vec3<f32>(-878f, 320f, -565f), vec3<f32>(367f, 574f, 415f)));

var<private> global2: vec3<f32> = vec3<f32>(509f, 204f, -1576f);

var<private> global3: f32 = 1166f;

var<private> global4: Struct_1 = Struct_1(vec4<f32>(353f, 988f, 388f, -843f), vec2<i32>(-21219i, 2427i), 24374u, vec3<f32>(199f, 278f, -280f), vec3<f32>(909f, -2279f, 525f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), 1576f)), global2.x);
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_f_op_f32(global2.x - global4.a.x), global4.e.x < -917f))), -129f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(-268f))), global4.d.x), ((vec2<i32>(1i, 1i) << (abs(vec2<u32>(global4.c, global4.c)) % vec2<u32>(32u))) | firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(37304i, global4.b.x), arg_0.b))) ^ select(global4.b, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-8424i, global4.b.x), vec2<i32>(-18856i, -2147483647i), arg_0.b), !arg_2.x), ~firstTrailingBit(1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(915f * _wgslsmith_div_f32(1607f, -1095f)), global4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_0.a.wzy), arg_3.e))), arg_3.e, select(vec3<bool>(false, true, true), !(!vec3<bool>(true, arg_2.x, arg_2.x)), all(vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x))))));
    var var_2 = _wgslsmith_mod_vec3_i32(max(countOneBits(vec3<i32>(66010i, 0i, arg_3.b.x) ^ abs(u_input.e)), -(select(u_input.e, vec3<i32>(-2147483647i, 31295i, -38159i), arg_2.x) >> (_wgslsmith_div_vec3_u32(vec3<u32>(30279u, 56023u, arg_0.c), vec3<u32>(var_1.c, 61246u, 0u)) % vec3<u32>(32u)))), ~_wgslsmith_clamp_vec3_i32(u_input.e, u_input.e, select(u_input.e, vec3<i32>(var_1.b.x, 1i, arg_3.b.x), vec3<bool>(arg_2.x, true, false))) | max(vec3<i32>(select(var_1.b.x, arg_3.b.x, false), var_1.b.x, var_1.b.x), -countOneBits(vec3<i32>(u_input.b, global4.b.x, 4122i))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(min(517f, -912f)), _wgslsmith_div_f32(global4.a.x, -432f), 1417f, _wgslsmith_div_f32(global4.a.x, global4.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 291f, -1407f, global2.x))))), _wgslsmith_mod_vec2_i32(select(var_2.xx, vec2<i32>(42804i, var_1.b.x), false), _wgslsmith_add_vec2_i32(vec2<i32>(arg_3.b.x, countOneBits(2147483647i)), -vec2<i32>(var_2.x, var_2.x) >> (vec2<u32>(var_1.c, u_input.a) % vec2<u32>(32u)))), 1u, arg_3.a.xzw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.a.x, -150f, -783f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.d) * vec3<f32>(1693f, 1f, -1485f))));
    var_1 = global0[_wgslsmith_index_u32(global4.c, 21u)];
    return var_3.d.x;
}

fn func_2(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(round(global2.x)), -915f, global2.x, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(firstLeadingBit(18013u), 12u)], ~0u, vec2<bool>(true, true), Struct_1(vec4<f32>(global2.x, global2.x, -338f, global2.x), vec2<i32>(u_input.b, -15570i), 0u, global4.a.zwx, global4.a.ywy)))))), vec2<i32>(min(abs(i32(-1i) * -1i), u_input.d), _wgslsmith_mult_i32(global4.b.x, ~(-2147483647i))), 4294967295u, _wgslsmith_f_op_vec3_f32(-global4.a.zwy), vec3<f32>(241f, arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.e.x), _wgslsmith_f_op_f32(step(global4.e.x, arg_1)), global4.c < global4.c)), _wgslsmith_f_op_f32(-358f - _wgslsmith_f_op_f32(step(-2354f, arg_1)))))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.c, global4.c), 12u)];
    let var_2 = vec4<bool>(!all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), 4294967295u <= global4.c)), false, true, false);
    var var_3 = _wgslsmith_f_op_f32(-582f - _wgslsmith_f_op_f32(-arg_1));
    var var_4 = global0[_wgslsmith_index_u32(1u, 21u)];
    return var_1.c;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<f32>, arg_3: u32) -> bool {
    global4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(firstTrailingBit(select(vec4<u32>(u_input.a, arg_3, global4.c, 0u), vec4<u32>(arg_3, 4294967295u, 39588u, global4.c), false) | reverseBits(vec4<u32>(1u, global4.c, arg_3, arg_3))), vec4<u32>(~func_2(global4.c, arg_2.x), 1u, _wgslsmith_mod_u32(u_input.c, global4.c) << (~global4.c % 32u), arg_3), any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, true), true))), firstLeadingBit(vec4<u32>(~1u, arg_3, arg_3, _wgslsmith_dot_vec2_u32(vec2<u32>(global4.c, global4.c) << (vec2<u32>(arg_3, arg_3) % vec2<u32>(32u)), vec2<u32>(23568u, 0u))))), 12u)];
    global3 = _wgslsmith_f_op_f32(-arg_1);
    global2 = global4.d;
    global0 = array<Struct_1, 21>();
    let var_0 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, 442f >= global2.x, true), false), vec4<bool>(false, all(vec3<bool>(true, false, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true), vec4<bool>(u_input.e.x > u_input.d, global2.x > arg_1, true, true)), !select(vec4<bool>(all(vec3<bool>(false, false, false)), all(vec4<bool>(false, true, true, true)), false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), _wgslsmith_f_op_f32(f32(-1f) * -1478f) >= _wgslsmith_f_op_f32(ceil(arg_1))), vec4<bool>(all(vec3<bool>(false, false, true)), true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), u_input.d >= 1i), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(true, global2.x > global4.a.x, false))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(36043i, reverseBits(-firstTrailingBit(25720i)));
    let var_1 = ~global4.c;
    global3 = 1114f;
    var_0 = firstTrailingBit(u_input.e.x);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-610f)), global4.e.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1832f, global4.d.x));
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-599f, global4.a.x))) + _wgslsmith_f_op_f32(global4.e.x - global4.e.x)))), global2.x);
    let var_3 = Struct_1(global4.a, _wgslsmith_mult_vec2_i32(-firstLeadingBit(global4.b) & u_input.e.zz, select(_wgslsmith_mod_vec2_i32(u_input.e.xy, vec2<i32>(global4.b.x, u_input.e.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.d), vec2<i32>(global4.b.x, global4.b.x)), vec2<bool>(true, false))), 34853u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-734f, -1093f, global4.e.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.e) * _wgslsmith_f_op_vec3_f32(-global4.e))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.a.zwy), _wgslsmith_f_op_vec3_f32(select(global4.a.xxw, vec3<f32>(968f, global4.e.x, -1664f), func_1(u_input.e.x, -2673f, vec2<f32>(global2.x, global2.x), 4294967295u))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

