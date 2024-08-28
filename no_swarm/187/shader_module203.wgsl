struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
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

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec4<i32>, 16>;

var<private> global2: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(762f, 228f, 543f), vec3<f32>(-1640f, -405f, -777f), vec3<f32>(189f, -651f, -1000f), vec3<f32>(-120f, 870f, 2189f), vec3<f32>(599f, 1253f, -3953f), vec3<f32>(649f, 489f, 804f), vec3<f32>(-562f, 145f, 1919f), vec3<f32>(-1000f, -678f, 413f), vec3<f32>(-632f, 338f, -1272f), vec3<f32>(-1136f, 698f, -1422f), vec3<f32>(-1000f, -1415f, -693f));

var<private> global3: u32 = 30122u;

var<private> global4: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(4294967295u, vec4<f32>(2235f, -355f, -1127f, -1541f), 248f), Struct_1(2338u, vec4<f32>(1123f, 988f, -586f, -1000f), -1000f), Struct_1(98789u, vec4<f32>(-805f, 1006f, -1168f, -1531f), 274f), Struct_1(1u, vec4<f32>(1302f, 192f, 1320f, -415f), -223f), Struct_1(0u, vec4<f32>(442f, -1626f, 850f, 1094f), 487f), Struct_1(1u, vec4<f32>(1472f, -307f, -913f, 415f), -1000f), Struct_1(4294967295u, vec4<f32>(581f, -644f, -1474f, -326f), -2614f), Struct_1(1u, vec4<f32>(893f, -1053f, -259f, -1253f), -715f), Struct_1(1u, vec4<f32>(-247f, -1508f, 577f, 482f), -236f), Struct_1(1u, vec4<f32>(1000f, -647f, -1110f, -574f), 956f), Struct_1(40258u, vec4<f32>(-1025f, -1158f, 1374f, 1864f), 1832f), Struct_1(4294967295u, vec4<f32>(-373f, -770f, -1120f, -731f), 827f), Struct_1(17075u, vec4<f32>(-1119f, 715f, -1807f, -926f), 656f), Struct_1(4294967295u, vec4<f32>(810f, 898f, -407f, 161f), -446f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: f32) -> u32 {
    global1 = array<vec4<i32>, 16>();
    var var_0 = u_input.b;
    let var_1 = global4[_wgslsmith_index_u32(arg_0, 14u)];
    var var_2 = Struct_1(abs(countOneBits(_wgslsmith_mod_u32(10992u, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_2, 973f, -503f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -608f, -1081f, arg_2)))) - _wgslsmith_f_op_vec4_f32(max(var_1.b, _wgslsmith_f_op_vec4_f32(-var_1.b))))), arg_1);
    let var_3 = var_0.x;
    return var_2.a & abs(abs(var_1.a));
}

fn func_2() -> i32 {
    global3 = _wgslsmith_add_u32(1u | func_3(~(~33248u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1510f)) + -1592f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~(~1u) | (reverseBits(~53230u) << (_wgslsmith_add_u32(117724u, _wgslsmith_dot_vec2_u32(vec2<u32>(41048u, 4294967295u), vec2<u32>(80585u, 46198u))) % 32u)));
    global4 = array<Struct_1, 14>();
    let var_0 = false != any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, false, false)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), true)));
    var var_1 = Struct_1(~(~_wgslsmith_sub_u32(func_3(1492u, 1065f, 144f), 4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1520f, 1306f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1000f, false))), any(vec4<bool>(true, var_0, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-135f - 770f), -977f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2067f))), _wgslsmith_f_op_f32(min(166f, 1746f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1656f - 471f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(191f * -1838f), _wgslsmith_f_op_f32(step(-1359f, -704f)), false)) - 447f)));
    return -_wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.a, -1i) & vec2<i32>(u_input.b.x, 21535i)), vec2<i32>(~u_input.b.x, u_input.a) & select(vec2<i32>(0i, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.a), u_input.b.xx), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_1(firstLeadingBit(~(0u >> (abs(arg_1.a) % 32u))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b) + arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b.x, arg_1.b.x))) + _wgslsmith_f_op_f32(-1989f - _wgslsmith_f_op_f32(exp2(arg_0.b.x))))));
    let var_1 = max(vec2<i32>(u_input.b.x, func_2()), -u_input.b.zy);
    var var_2 = Struct_1(_wgslsmith_mult_u32(arg_0.a, _wgslsmith_mult_u32(~arg_0.a >> (~4294967295u % 32u), arg_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.b, _wgslsmith_f_op_vec4_f32(sign(var_0.b)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * var_0.b.x));
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(var_2.a, firstTrailingBit(41322u)), 88309u ^ (var_2.a ^ _wgslsmith_mult_u32(var_2.a, arg_0.a)), var_0.a, arg_0.a), (vec4<u32>(~var_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, var_0.a, arg_1.a, 0u), vec4<u32>(73089u, arg_0.a, arg_1.a, 33303u)), min(0u, var_2.a), reverseBits(arg_1.a)) >> ((~vec4<u32>(27318u, 31175u, arg_0.a, 10125u) << ((vec4<u32>(var_0.a, arg_1.a, var_0.a, 4294967295u) ^ vec4<u32>(0u, 1u, var_0.a, 48223u)) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (~min(~vec4<u32>(1u, var_0.a, var_2.a, arg_1.a), min(vec4<u32>(var_2.a, arg_0.a, var_0.a, 8063u), vec4<u32>(var_2.a, 42477u, 30751u, 53717u))) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_div_u32(~(~_wgslsmith_sub_u32(arg_0.a, 18521u)), ~arg_0.a) << (arg_0.a % 32u);
    return select(!vec3<bool>(any(vec4<bool>(false, false, false, false)), true, !(arg_0.a < 0u)), vec3<bool>(true, select(true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))), _wgslsmith_f_op_f32(-arg_2.x) == arg_1.c), true), vec3<bool>(true, true, false));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    var var_0 = false;
    var var_1 = vec3<u32>(arg_1.a, func_3(min(4294967295u, 1u), -699f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.x, 1500f) + _wgslsmith_f_op_f32(ceil(468f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -188f)))), arg_1.a);
    let var_2 = u_input.a;
    var_0 = !(!(_wgslsmith_f_op_f32(-710f - _wgslsmith_f_op_f32(-arg_1.c)) > arg_1.b.x));
    var_1 = ~_wgslsmith_mult_vec3_u32(abs(~vec3<u32>(19327u, var_1.x, 4294967295u)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(28918u, arg_1.a, arg_1.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 84600u, arg_1.a), vec3<u32>(0u, 20881u, 0u)) >> (select(vec3<u32>(49136u, arg_1.a, arg_1.a), vec3<u32>(4294967295u, arg_1.a, 72581u), vec3<bool>(arg_0.x, arg_0.x, true)) % vec3<u32>(32u))));
    return abs(_wgslsmith_dot_vec2_u32(vec2<u32>(24919u, 41811u), ~(~(~var_1.xx))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-46527i, 0i, -_wgslsmith_mult_i32(u_input.a | 63252i, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(~1u, 16u)], vec4<i32>(2108i, 0i, u_input.a, -44252i))));
    var var_1 = vec4<u32>(19122u, ~func_4(func_1(global4[_wgslsmith_index_u32(1u, 14u)], global4[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(0u, 11u)]), global4[_wgslsmith_index_u32(~0u, 14u)], vec2<bool>(true, true)), ~24655u, ~50011u) << (vec4<u32>(_wgslsmith_div_u32(0u, 1u), _wgslsmith_div_u32(_wgslsmith_sub_u32(~0u, 1u), 2700u), 1u, max(firstTrailingBit(0u), 1u) ^ 0u) % vec4<u32>(32u));
    global0 = ~(~var_1.x << (var_1.x % 32u));
    global1 = array<vec4<i32>, 16>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-172f - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1684f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-286f))) * _wgslsmith_f_op_f32(f32(-1f) * -1581f)))), _wgslsmith_f_op_f32(sign(-288f)), _wgslsmith_div_f32(-186f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(499f - 1203f), _wgslsmith_f_op_f32(trunc(-1253f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1447f)) - -943f)))));
    var var_3 = func_3(~var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1019f + var_2.x), _wgslsmith_f_op_f32(1192f * var_2.x))), -1000f), _wgslsmith_f_op_f32(-var_2.x)) ^ (~(~(~var_1.x)) | 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

