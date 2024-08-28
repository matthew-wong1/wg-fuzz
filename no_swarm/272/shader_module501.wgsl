struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(471f, 1000f);

var<private> global1: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = ~firstLeadingBit(min(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.c.x), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(66764u, 0u, u_input.a.x, 4294967295u), vec4<u32>(u_input.c.x, 4294967295u, 93394u, u_input.b.x)), u_input.b.x), ~countOneBits(vec4<u32>(23146u, u_input.a.x, u_input.d, u_input.d))));
    global1 = _wgslsmith_add_u32(max(~_wgslsmith_clamp_u32(4294967295u, u_input.a.x, var_0.x), 0u) | 8029u, _wgslsmith_dot_vec3_u32(var_0.wxx, countOneBits(~vec3<u32>(4294967295u, u_input.c.x, 0u) >> (vec3<u32>(0u, var_0.x, u_input.b.x) % vec3<u32>(32u)))));
    global1 = 0u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1029f), _wgslsmith_f_op_f32(436f * global0.x)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global0.x, 592f, arg_1.a))))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_3 {
    global1 = countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~arg_0.xyw, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, u_input.a.x, 0u), u_input.a, vec3<u32>(arg_0.x, u_input.a.x, u_input.d))), reverseBits(~(vec3<u32>(1u, u_input.a.x, 0u) ^ vec3<u32>(1u, 26212u, u_input.d)))));
    return Struct_3(_wgslsmith_mod_u32(u_input.d | (arg_0.x << (0u % 32u)), ~arg_0.x) << (1u % 32u), Struct_2(Struct_1(false, arg_1.x, all(vec3<bool>(arg_2.a, arg_2.c, true)), arg_2.d, max(~arg_2.b, countOneBits(83552i))), -arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(1670f, -536f, false)), arg_2)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-137f - arg_2.d.x) - _wgslsmith_f_op_f32(sign(global0.x)))), arg_1.x, true));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: f32) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, global0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(109f, 798f), _wgslsmith_f_op_vec2_f32(sign(arg_1.d)), true))))));
    let var_0 = ~(~select(0u, 1u, arg_0.b.e));
    var var_1 = func_2(~reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, arg_2.a, var_0, 1u), vec4<u32>(22402u, arg_0.a, u_input.b.x, 27008u))) << (max(_wgslsmith_sub_vec4_u32(vec4<u32>(67042u, 0u, arg_0.a, 44389u), vec4<u32>(4294967295u, 22941u, arg_0.a, arg_0.a)), ~vec4<u32>(arg_0.a, u_input.a.x, arg_2.a, arg_2.a)) % vec4<u32>(32u)), vec2<i32>(0i, countOneBits(arg_0.b.b)), arg_2.b.a).b;
    var var_2 = arg_0.b.a.b << (firstLeadingBit(9135u) % 32u);
    let var_3 = vec4<bool>(func_2(_wgslsmith_clamp_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(0u, arg_0.a, arg_2.a, u_input.a.x))), select(vec4<u32>(arg_0.a, 1u, 72479u, arg_2.a), vec4<u32>(var_0, 26703u, 499u, 4294967295u), true) & vec4<u32>(31565u, 4294967295u, arg_0.a, 63927u), vec4<u32>(1u, 32636u, u_input.a.x, 14068u) << (max(vec4<u32>(1u, 20754u, 1u, 0u), vec4<u32>(4294967295u, arg_0.a, arg_2.a, 123523u)) % vec4<u32>(32u))), -(firstLeadingBit(vec2<i32>(arg_2.b.b, -6397i)) << (~vec2<u32>(0u, arg_0.a) % vec2<u32>(32u))), arg_2.b.a).b.a.a, select((arg_1.c && false) == arg_1.a, true | (select(false, arg_2.b.e, false) || false), false && arg_2.b.a.c), func_2(~(~vec4<u32>(0u, var_0, 11627u, 21391u)) & ~vec4<u32>(u_input.c.x, arg_2.a, 0u, arg_0.a), vec2<i32>(1i, 0i) | ~(-vec2<i32>(22590i, arg_1.b)), Struct_1(arg_2.b.a.c == any(vec2<bool>(arg_2.b.e, var_1.a.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.b.a.e, var_1.d) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), -vec2<i32>(1304i, -37154i)), true, arg_2.b.a.d, countOneBits(var_1.b) & 1i)).b.a.a, false);
    return arg_0.b.c;
}

fn func_1(arg_0: vec4<f32>) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(945f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -992f), _wgslsmith_f_op_f32(arg_0.x * arg_0.x)) + _wgslsmith_f_op_f32(func_4(func_2(vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.d), vec2<i32>(0i, -18970i), Struct_1(false, 0i, false, vec2<f32>(-1107f, global0.x), 0i)), Struct_1(false, -12327i, false, arg_0.xz, -13547i), Struct_3(4294967295u, Struct_2(Struct_1(true, 2147483647i, false, arg_0.yw, -15173i), 2147483647i, arg_0.x, 14497i, false)), _wgslsmith_f_op_f32(786f + 1000f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-449f)), arg_0.x)), 755f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, arg_0.x)), global0.x), vec2<bool>(false, func_2(vec4<u32>(u_input.a.x, u_input.b.x, u_input.c.x, u_input.c.x), vec2<i32>(-44017i, 2147483647i) >> (u_input.b.xy % vec2<u32>(32u)), Struct_1(true, 26259i, false, arg_0.zx, -2860i)).b.a.a)))));
    let var_0 = -(~vec3<i32>(1i, 1i, 1i));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 1110f) - _wgslsmith_f_op_f32(398f * arg_0.x)), 503f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(arg_0.x, Struct_1(true, var_0.x, true, vec2<f32>(-119f, -1266f), var_0.x))))), -1000f))));
    var var_2 = select(!vec2<bool>(!any(vec4<bool>(true, false, true, false)), arg_0.x == global0.x), select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), all(vec3<bool>(false, true, true))), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, false)))), !any(vec4<bool>(true, true, true, true)));
    let var_3 = Struct_4(select(select(!(!vec3<bool>(false, var_2.x, var_2.x)), vec3<bool>(true, any(vec3<bool>(var_2.x, false, var_2.x)), any(vec2<bool>(var_2.x, true))), var_2.x), vec3<bool>(!(!var_2.x), !any(vec4<bool>(var_2.x, true, true, var_2.x)), !(!var_2.x)), vec3<bool>(var_2.x, true, var_2.x)), -625f, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-1427f * global0.x)), Struct_3(min(~(~u_input.a.x), u_input.c.x), Struct_2(func_2(~vec4<u32>(u_input.b.x, u_input.c.x, 1u, 4294967295u), vec2<i32>(-2147483647i, var_0.x), Struct_1(var_2.x, 0i, var_2.x, arg_0.xw, -2147483647i)).b.a, -var_0.x, _wgslsmith_f_op_f32(trunc(-1021f)), min(_wgslsmith_mod_i32(0i, var_0.x), var_0.x & 0i), any(vec2<bool>(true, true)))));
    return !select(vec4<bool>(true, all(var_3.a.yy), true, any(vec2<bool>(var_3.a.x, var_2.x))), select(vec4<bool>(true, var_2.x, true, !var_3.a.x), vec4<bool>(any(var_3.a.zx), true | var_2.x, var_2.x, -1003f != arg_0.x), var_3.a.x), select(true, any(select(vec4<bool>(var_2.x, var_3.a.x, var_3.a.x, var_2.x), vec4<bool>(true, var_2.x, var_2.x, var_2.x), true)), var_3.d.b.e | true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~u_input.d << (~(~1u) % 32u)) | ~u_input.b.x;
    let var_0 = !(!(!func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1241f, -911f)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_div_vec4_u32(vec4<u32>(88117u, u_input.a.x, 0u, 4294967295u), vec4<u32>(4294967295u, u_input.d, u_input.a.x, u_input.c.x)), vec2<i32>(~(-3036i), ~49740i), Struct_1(!var_0.x, -39577i, true, vec2<f32>(global0.x, -1245f), 1i)), Struct_1(var_0.x, -23206i, func_1(vec4<f32>(-1211f, 649f, 887f, global0.x)).x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))), 1i), func_2(vec4<u32>(firstLeadingBit(u_input.c.x), u_input.c.x, ~u_input.c.x, 0u), ~vec2<i32>(-44846i, -75390i), Struct_1(true, 1i, func_2(vec4<u32>(55377u, u_input.a.x, u_input.b.x, u_input.c.x), vec2<i32>(-955i, 1i), Struct_1(true, 1i, var_0.x, vec2<f32>(global0.x, -1000f), 9273i)).b.a.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1119f)), _wgslsmith_div_i32(2147483647i, -5305i))), global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -380f));
    let var_1 = vec4<bool>(true, _wgslsmith_div_f32(-156f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * func_2(vec4<u32>(1u, 11322u, u_input.a.x, 1u), vec2<i32>(-5634i, 20215i), Struct_1(false, -10105i, true, vec2<f32>(-1175f, 100f), -59254i)).b.c)) > 242f, var_0.x, !(!func_2(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, u_input.b.x), vec4<u32>(14443u, u_input.b.x, u_input.d, u_input.d)), vec2<i32>(-2147483647i, 1i), func_2(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 4294967295u), vec2<i32>(-2147483647i, 1i), Struct_1(false, 26267i, true, vec2<f32>(global0.x, -1442f), -1i)).b.a).b.e));
    var var_2 = Struct_1(func_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 1107f, global0.x, global0.x), _wgslsmith_div_vec4_f32(vec4<f32>(-518f, 1000f, global0.x, 2026f), vec4<f32>(268f, global0.x, 531f, -1000f)))))).x, firstTrailingBit(_wgslsmith_div_i32(0i, 1i) << (1u % 32u)) & _wgslsmith_clamp_i32(-33459i >> (~u_input.b.x % 32u), 1i, -497i), ~u_input.d > (45569u | ~min(1u, u_input.b.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 499f) * vec2<f32>(global0.x, -513f)), vec2<f32>(1f, 1f), var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -133f))), !all(!vec3<bool>(var_1.x, true, true)))), _wgslsmith_add_i32(-reverseBits(1i), firstTrailingBit(-1i)));
    var var_3 = func_2(min(~vec4<u32>(u_input.c.x, u_input.a.x, 4294967295u, u_input.a.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.c.x, 2009u, 0u), abs(vec4<u32>(28276u, 56741u, 14089u, 0u))) % vec4<u32>(32u)), vec4<u32>(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), countOneBits(u_input.d), 102406u, u_input.b.x)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(select(firstLeadingBit(vec2<i32>(-1i, var_2.b)), vec2<i32>(0i, var_2.b), func_2(vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, u_input.b.x), vec2<i32>(2147483647i, var_2.e), Struct_1(var_1.x, var_2.b, var_0.x, var_2.d, -2147483647i)).b.a.c), vec2<i32>(-1i) * -vec2<i32>(var_2.e, var_2.b)), _wgslsmith_mult_vec2_i32(min(vec2<i32>(var_2.e, 24762i), vec2<i32>(-2147483647i, var_2.b)) | -vec2<i32>(var_2.b, 0i), -vec2<i32>(var_2.b, 5206i)), -(~select(vec2<i32>(-26763i, -37965i), vec2<i32>(2147483647i, 28708i), var_1.wx))), func_2(vec4<u32>(func_2(vec4<u32>(u_input.c.x, 79247u, u_input.a.x, 1u), _wgslsmith_div_vec2_i32(vec2<i32>(var_2.b, var_2.e), vec2<i32>(var_2.b, -2147483647i)), func_2(vec4<u32>(32945u, 1u, u_input.b.x, u_input.d), vec2<i32>(var_2.b, var_2.e), Struct_1(var_1.x, var_2.e, false, vec2<f32>(1303f, global0.x), var_2.e)).b.a).a, ~(u_input.d & u_input.a.x), u_input.c.x, 4294967295u & u_input.c.x), vec2<i32>(-440i, _wgslsmith_div_i32(var_2.b ^ -1i, var_2.e)), Struct_1(false, i32(-1i) * -69875i, true, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -365f) + var_2.d), (var_2.e & -1i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b, 7338i), vec2<i32>(var_2.b, var_2.e)))).b.a).b.a;
    let var_4 = -396f != global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-843f, -268f))), var_3.d.x)), vec3<f32>(_wgslsmith_div_f32(var_3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x))), _wgslsmith_f_op_f32(min(var_2.d.x, _wgslsmith_f_op_f32(max(-287f, _wgslsmith_f_op_f32(global0.x + var_3.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.d.x))))), max(u_input.a.yz, vec2<u32>(u_input.b.x, reverseBits(u_input.c.x))));
}

