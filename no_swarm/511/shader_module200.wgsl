struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec2<i32> {
    return _wgslsmith_mod_vec2_i32(~(-(~vec2<i32>(-22111i, 1i) ^ (arg_1.zx >> (vec2<u32>(arg_3.x, arg_3.x) % vec2<u32>(32u))))), u_input.a.wy);
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: bool) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 404f, 844f) + vec3<f32>(arg_0.b, arg_0.b, arg_0.b)), vec3<f32>(arg_0.b, arg_0.b, arg_0.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1448f, -199f, -588f)))) + vec3<f32>(-2394f, _wgslsmith_div_f32(1548f, arg_0.b), _wgslsmith_f_op_f32(max(arg_0.b, arg_0.b)))), !(!(!vec3<bool>(arg_2, arg_2, arg_1))))), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(2098u, arg_0.a) << (~vec2<u32>(u_input.b, 15321u) % vec2<u32>(32u))), ~firstLeadingBit(vec2<u32>(u_input.b, 0u)) | select(~vec2<u32>(26321u, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, arg_1))), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(66279u, u_input.b) >> ((vec2<u32>(1u, 30942u) >> (vec2<u32>(arg_0.a, arg_0.a) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(arg_0.a, 4581u) | _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a, 38672u), vec2<u32>(u_input.b, arg_0.a), vec2<u32>(1u, 4294967295u))));
    var_0 = Struct_1(var_0.a, 35463u, firstLeadingBit(var_0.c));
    var var_1 = -((~u_input.a.x << (~(~u_input.b) % 32u)) ^ _wgslsmith_clamp_i32(_wgslsmith_add_i32(func_2(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 0i, -36777i), var_0.a, var_0.c).x, u_input.a.x), firstLeadingBit(u_input.a.x) & ~u_input.a.x, 7901i));
    let var_2 = func_2(select(select(-vec4<i32>(u_input.a.x, u_input.a.x, 68249i, -67858i), -u_input.a, !vec4<bool>(arg_1, arg_2, arg_2, arg_2)), _wgslsmith_add_vec4_i32(~vec4<i32>(86233i, 24916i, -17948i, 34757i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 69998i, u_input.a.x), u_input.a)), true), u_input.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(739f, var_0.a.x, arg_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), arg_1)), var_0.c).x | -1868i;
    let var_3 = Struct_3(abs(select(~(~var_2), ~(-var_2), !arg_1)), arg_0.a, !vec2<bool>(false, arg_1), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 939f, 317f) - var_0.a)), 1u, select(var_0.c, vec2<u32>(arg_0.a, 1u) & var_0.c, true)), Struct_1(vec3<f32>(782f, 385f, -664f), (17506u << (var_0.c.x % 32u)) ^ 13573u, _wgslsmith_div_vec2_u32(var_0.c, _wgslsmith_add_vec2_u32(var_0.c, var_0.c))), var_0.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1119f, arg_0.b, var_0.a.x)) * _wgslsmith_f_op_vec3_f32(-var_0.a)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 5004u), vec3<u32>(u_input.b, 16627u, 54913u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 62886u, arg_0.a), vec3<u32>(var_0.b, u_input.b, 0u), vec3<u32>(4294967295u, var_0.b, 4294967295u))), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, arg_0.a))), !vec3<bool>(all(vec4<bool>(arg_2, true, arg_2, arg_1)), true, !arg_1)), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(231f, var_0.a.x), _wgslsmith_f_op_f32(arg_0.b - arg_0.b), 1f))), u_input.b, ~vec2<u32>(arg_0.a, arg_0.a)));
    return 0i;
}

fn func_1() -> Struct_1 {
    let var_0 = firstTrailingBit(min(func_2(~vec4<i32>(u_input.a.x, -39025i, u_input.a.x, 48181i), ~(~u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1052f, -303f, 471f), vec3<f32>(-910f, -385f, -680f))) * vec3<f32>(1758f, 319f, -221f)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(68129u, u_input.b) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)))), u_input.a.yz));
    var var_1 = vec3<i32>(u_input.a.x, 28620i >> (_wgslsmith_clamp_u32(u_input.b, u_input.b, ~(~u_input.b)) % 32u), select(-(u_input.a.x | func_3(Struct_4(u_input.b, -454f), false, true)), ~u_input.a.x, (1u > _wgslsmith_sub_u32(1u, u_input.b)) | false));
    return Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-635f)))), _wgslsmith_f_op_f32(f32(-1f) * -301f)), 761f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1025f, 638f)) - 394f)), ~(~21848u), select(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, u_input.b)), select(countOneBits(vec2<u32>(0u, u_input.b)), abs(vec2<u32>(24142u, 4294967295u)), false), true) | ((_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 5718u), vec2<u32>(u_input.b, u_input.b)) >> ((vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))) | countOneBits(min(vec2<u32>(u_input.b, 69408u), vec2<u32>(20897u, 11047u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = Struct_4(~1u, -1000f);
    return select(vec4<bool>((all(vec4<bool>(arg_1.e.x, arg_1.e.x, false, true)) || arg_1.e.x) || arg_1.e.x, arg_1.e.x, arg_1.e.x, arg_1.e.x), select(vec4<bool>(any(arg_1.e.yy), arg_1.d.b < ~63435u, arg_1.e.x, false), vec4<bool>(!all(vec3<bool>(false, false, true)), arg_1.e.x, !all(vec3<bool>(arg_1.e.x, arg_1.e.x, arg_1.e.x)), true), select(select(!vec4<bool>(true, false, arg_1.e.x, false), vec4<bool>(false, false, arg_1.e.x, arg_1.e.x), select(vec4<bool>(arg_1.e.x, true, true, true), vec4<bool>(true, false, arg_1.e.x, true), arg_1.e.x)), select(!vec4<bool>(arg_1.e.x, arg_1.e.x, false, arg_1.e.x), !vec4<bool>(arg_1.e.x, arg_1.e.x, false, false), select(vec4<bool>(arg_1.e.x, arg_1.e.x, arg_1.e.x, arg_1.e.x), vec4<bool>(arg_1.e.x, false, false, arg_1.e.x), false)), vec4<bool>(any(arg_1.e.xz), false, true, true))), false);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec4<u32>, arg_3: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, u_input.a.x), u_input.a.x);
    let var_1 = true;
    var var_2 = Struct_3(-select(arg_1, arg_1, u_input.b > _wgslsmith_mod_u32(1u, 4294967295u)), 0u, func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1135f, 2326f, -819f))), ~(~arg_2.x), countOneBits(vec2<u32>(arg_0, arg_2.x))), Struct_2(func_1(), func_1(), 1f, Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1013f, -971f, -1303f))), arg_2.x, _wgslsmith_div_vec2_u32(arg_2.xx, arg_2.zy)), vec3<bool>(var_1, true, arg_3.x))).zy, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(487f, -405f, -729f))), vec3<f32>(-315f, -930f, -370f), any(arg_3.xxw))), arg_0, arg_2.xz), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1326f, -1634f, -408f) * vec3<f32>(1506f, 2138f, -1714f))), 0u, arg_2.wx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1195f))), func_1(), arg_3.zwy), func_1());
    var var_3 = Struct_4(firstLeadingBit(0u), _wgslsmith_f_op_f32(f32(-1f) * -366f));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-104f, 1073f)) - func_1().a.x), _wgslsmith_f_op_f32(f32(-1f) * -629f)))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_5(min(~4294967295u, abs(0u & u_input.b)), ~u_input.a.x, vec4<u32>(u_input.b, _wgslsmith_clamp_u32(u_input.b, 4294967295u, 46639u), countOneBits(u_input.b | 4294967295u), u_input.b), func_4(func_1(), Struct_2(Struct_1(vec3<f32>(149f, -873f, 406f), 11230u, vec2<u32>(u_input.b, 76395u)), Struct_1(vec3<f32>(2106f, -724f, 746f), u_input.b, vec2<u32>(u_input.b, 0u)), _wgslsmith_div_f32(850f, -1284f), func_1(), vec3<bool>(false, true, true)))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 22467u, 41586u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 14174u))) >> (~_wgslsmith_div_u32(firstTrailingBit(35994u), ~64613u) % 32u), !vec2<bool>(-8347i != _wgslsmith_div_i32(u_input.a.x, u_input.a.x), false), Struct_2(func_1(), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(-245f)), _wgslsmith_f_op_f32(f32(-1f) * -1609f), _wgslsmith_f_op_f32(trunc(1303f))), ~(~38209u), (vec2<u32>(2547u, u_input.b) | vec2<u32>(1u, 1u)) >> (firstTrailingBit(vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1388f, _wgslsmith_f_op_f32(ceil(-800f))) + -1628f), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-950f, -1000f, -415f))), ~_wgslsmith_sub_u32(u_input.b, u_input.b), vec2<u32>(_wgslsmith_add_u32(u_input.b, 1u), ~579u)), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1266f, 922f, -1000f)), abs(1u), ~vec2<u32>(u_input.b, u_input.b)), Struct_2(Struct_1(vec3<f32>(294f, 532f, 208f), u_input.b, vec2<u32>(u_input.b, u_input.b)), Struct_1(vec3<f32>(-325f, 1000f, -1540f), 26088u, vec2<u32>(51428u, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -629f), Struct_1(vec3<f32>(-818f, 463f, -121f), 48330u, vec2<u32>(0u, 8510u)), vec3<bool>(true, true, true))).wzw), func_1());
    let var_1 = Struct_2(var_0.e, var_0.e, 1f, var_0.d.a, var_0.d.e);
    let var_2 = ~firstLeadingBit(_wgslsmith_mod_vec2_u32(abs(firstLeadingBit(vec2<u32>(42735u, 2950u))), ~var_1.d.c));
    let var_3 = var_0.d;
    let var_4 = 43781u;
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-7022i);
}

