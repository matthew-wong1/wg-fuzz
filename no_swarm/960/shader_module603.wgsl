struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec3<f32>(714f, 894f, -679f)), Struct_2(vec3<f32>(-1427f, 732f, 1000f)), Struct_2(vec3<f32>(-299f, -268f, 261f)), Struct_2(vec3<f32>(806f, -1000f, -1336f)), Struct_2(vec3<f32>(514f, -544f, 2092f)), Struct_2(vec3<f32>(1590f, -1457f, -446f)), Struct_2(vec3<f32>(2064f, -716f, -305f)), Struct_2(vec3<f32>(-143f, 1604f, 801f)), Struct_2(vec3<f32>(1196f, -1258f, 1310f)), Struct_2(vec3<f32>(404f, -964f, -1766f)), Struct_2(vec3<f32>(378f, 187f, -666f)), Struct_2(vec3<f32>(524f, 1827f, 128f)), Struct_2(vec3<f32>(1868f, -109f, 1599f)), Struct_2(vec3<f32>(-1286f, 1029f, 738f)), Struct_2(vec3<f32>(487f, 1082f, 957f)), Struct_2(vec3<f32>(-184f, -1211f, 1462f)), Struct_2(vec3<f32>(958f, -1616f, 1576f)), Struct_2(vec3<f32>(631f, -1468f, 646f)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_5) -> f32 {
    var var_0 = vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-138f + _wgslsmith_f_op_f32(arg_1.a.x * arg_0)), arg_1.a.x)), _wgslsmith_f_op_f32(select(-2087f, -1695f, any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false))))))), arg_0);
    let var_1 = !(!select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(u_input.a.x != 4294967295u, true), true));
    var_0 = arg_1.a;
    var var_2 = Struct_5(~reverseBits(~arg_2.b.x | u_input.c), firstTrailingBit(-vec3<i32>(_wgslsmith_mod_i32(u_input.c, arg_2.b.x), select(0i, u_input.c, false), arg_2.a)));
    var var_3 = _wgslsmith_mult_u32(1u ^ _wgslsmith_sub_u32(18485u, u_input.a.x), 35865u);
    return arg_0;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-2409f)), -1000f, 1033f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1120f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(763f * -351f), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(19694u, u_input.a.x), 18u)], Struct_5(-3639i, vec3<i32>(2147483647i, 1954i, u_input.c)))) - _wgslsmith_f_op_f32(192f * _wgslsmith_f_op_f32(f32(-1f) * -2711f))), _wgslsmith_div_f32(1609f, -1165f), 1241f, _wgslsmith_f_op_f32(round(-920f)))));
    var var_1 = Struct_5(firstLeadingBit(1i), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -1353i, u_input.c) & vec3<i32>(0i, u_input.c, -49459i), vec3<i32>(u_input.c, u_input.c, u_input.c)) | ((vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -48681i, -6524i)) << (vec3<u32>(0u, u_input.a.x, ~0u) % vec3<u32>(32u))));
    global0 = array<Struct_2, 18>();
    let var_2 = Struct_4(~3344u, u_input.b.zz, Struct_2(var_0.xxx));
    var var_3 = any(!vec3<bool>(true, -var_1.a > 0i, firstLeadingBit(var_2.b.x) != _wgslsmith_sub_u32(var_2.a, 1u)));
    return var_2.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_2 {
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    var var_0 = !select(arg_0.c.yx, vec2<bool>(false, !arg_0.c.x), arg_0.c.x);
    let var_1 = vec4<i32>(u_input.c, _wgslsmith_add_i32(2147483647i & u_input.c, -(-u_input.c ^ ~u_input.c)), reverseBits(-43713i), 1i >> (func_2() % 32u));
    var_0 = select(!(!vec2<bool>(-1246f >= arg_3.c.a.x, 1u > arg_3.a)), select(select(!(!arg_0.b.wz), arg_2.wz, vec2<bool>(any(arg_0.b.yw), -26425i >= var_1.x)), arg_0.b.xw, var_0.x), !select(!select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true), arg_0.b.wy), select(!vec2<bool>(arg_0.c.x, true), arg_2.xw, vec2<bool>(arg_2.x, arg_2.x)), true));
    return arg_3.c;
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> i32 {
    var var_0 = arg_0.c.a.x;
    let var_1 = arg_0.c.a.x;
    let var_2 = select(!(!vec3<bool>(true, 65905u >= arg_0.a, arg_0.c.a.x > -790f)), vec3<bool>(true, all(vec2<bool>(true, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 43305u, arg_1, arg_1) | vec4<u32>(u_input.b.x, 0u, 56676u, 4294967295u), vec4<u32>(4294967295u, arg_0.b.x, 10368u, 34185u) | vec4<u32>(u_input.a.x, 27282u, 0u, u_input.b.x)) >= 7646u), false);
    global0 = array<Struct_2, 18>();
    var_0 = var_1;
    return _wgslsmith_sub_i32(select(-72997i, -2147483647i, true), firstTrailingBit(firstTrailingBit(-(u_input.c & 1i))));
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    global0 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(847f, _wgslsmith_f_op_f32(-arg_2.a.x))));
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    let var_1 = Struct_3(((arg_0 | ~arg_0) << (u_input.a.x % 32u)) << (~0u % 32u), ~firstTrailingBit(_wgslsmith_sub_u32(1776u, 0u)), arg_0, arg_2, ~min(u_input.c, 2147483647i));
    return arg_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~(u_input.a.x | 25577u), vec3<i32>(u_input.c, u_input.c, func_4(Struct_4(u_input.a.x, vec2<u32>(18120u, 38859u) >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u)), func_1(Struct_1(vec2<f32>(1031f, -704f), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec2<f32>(-1015f, -2103f), vec4<bool>(false, true, true, false), Struct_4(u_input.a.x, vec2<u32>(u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(0u, 18u)]))), 43810u)), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1461f, 518f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-225f, -2125f) + vec2<f32>(-1198f, 460f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1222f, 3238f), vec2<f32>(-881f, 637f)) * vec2<f32>(834f, -123f))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, false, false, false), true)), select(vec4<bool>(any(vec3<bool>(true, true, true)), true, u_input.b.x != u_input.b.x, false), vec4<bool>(true, true, true, true), true)));
    let var_1 = 1u;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1098f, -1071f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(208f, 1564f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2481f, 534f) - vec2<f32>(-714f, 1634f))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 971f) * vec2<f32>(237f, 1633f))))));
    var var_3 = ~_wgslsmith_add_u32(30811u, ~(_wgslsmith_div_u32(40046u, u_input.b.x) >> (_wgslsmith_div_u32(u_input.a.x, 0u) % 32u)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))) - _wgslsmith_f_op_f32(-2053f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -582f))))));
    var_0 = !(any(vec4<bool>(var_1 != u_input.a.x, all(vec4<bool>(false, true, true, true)), true, any(vec2<bool>(false, true)))) || select(true, all(vec3<bool>(false, false, true)), true));
    var var_5 = vec3<u32>(_wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, abs(vec3<u32>(u_input.b.x, u_input.b.x, 69058u)))), var_1, u_input.b.x);
    var_5 = _wgslsmith_mod_vec3_u32(u_input.a, ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-11774i, var_4, vec2<i32>(abs(~u_input.c), -1i), 1i, var_5.x);
}

