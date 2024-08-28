struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = Struct_4(Struct_3(u_input.a, 280f, firstTrailingBit(~vec2<u32>(u_input.c.x, 10275u)), Struct_1(_wgslsmith_f_op_f32(-1779f - _wgslsmith_f_op_f32(ceil(-108f))), u_input.d, firstTrailingBit(~u_input.a), vec4<i32>(~(-2147483647i), u_input.d.x, _wgslsmith_sub_i32(1i, arg_0), ~u_input.d.x), firstLeadingBit(~u_input.c.zxx))));
    var var_1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(-var_0.a.b))), var_0.a.b), 1i, Struct_4(var_0.a));
    var_1 = Struct_5(vec3<f32>(1539f, var_0.a.d.a, _wgslsmith_f_op_f32(f32(-1f) * -884f)), var_1.c.a.d.d.x, Struct_4(Struct_3(var_1.c.a.d.c, _wgslsmith_div_f32(-258f, _wgslsmith_f_op_f32(var_0.a.d.a + var_0.a.d.a)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(17271u, var_1.c.a.c.x), u_input.c.yz, var_0.a.d.e.yy), Struct_1(-1168f, var_1.c.a.d.d.yz, var_1.c.a.c.x >> (u_input.c.x % 32u), ~var_0.a.d.d, _wgslsmith_div_vec3_u32(vec3<u32>(var_1.c.a.d.c, 4294967295u, 25462u), vec3<u32>(u_input.c.x, var_1.c.a.d.c, u_input.a))))));
    var_1 = Struct_5(var_1.a, -2147483647i, Struct_4(Struct_3(var_1.c.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.b, var_1.a.x))), u_input.c.yy, var_1.c.a.d)));
    var_1 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.x, 601f, _wgslsmith_div_f32(var_1.c.a.b, var_1.c.a.d.a)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.a.d.a)), 458f, 1627f)))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 0i, arg_0, 22i), ~var_1.c.a.d.d & (vec4<i32>(u_input.d.x, 31950i, var_1.c.a.d.b.x, 2147483647i) & var_0.a.d.d)), Struct_4(var_0.a));
    return 1i;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_5 {
    var var_0 = arg_2.d.yxx;
    var_0 = min(-vec3<i32>(-2147483647i, abs(-53740i), arg_2.b.x | 0i), arg_2.d.zyz);
    let var_1 = arg_1.x;
    var_0 = ~abs(max(vec3<i32>(u_input.d.x, ~arg_2.b.x, _wgslsmith_clamp_i32(36668i, 0i, var_0.x)), vec3<i32>(-15398i, func_3(u_input.d.x), arg_2.b.x & 0i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -240f, arg_2.a, 402f)), vec4<f32>(arg_2.a, -1070f, -1599f, arg_2.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, 944f, arg_2.a, 112f))))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1439f), -339f, -1924f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-540f, 237f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a))))));
    return Struct_5(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1399f, -611f))), 358f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, 1014f), _wgslsmith_f_op_f32(var_2.x - 331f))))), u_input.d.x, Struct_4(Struct_3(1u, 270f, ~vec2<u32>(var_1, arg_1.x) & vec2<u32>(0u, 9430u), arg_2)));
}

fn func_4(arg_0: Struct_5) -> i32 {
    var var_0 = vec2<i32>(i32(-1i) * -(~abs(arg_0.c.a.d.d.x)), _wgslsmith_mult_i32(u_input.d.x, -_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d.x, -2147483647i), u_input.d.x)));
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(select(u_input.c.yww, u_input.c.wxy, false) ^ ~vec3<u32>(10622u, 0u, 64064u)), func_2(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), true), true), arg_0.c.a.d.e, arg_0.c.a.d).c.a.d.e), u_input.c.zwx);
    let var_2 = select(-abs(~vec4<i32>(198i, u_input.d.x, u_input.d.x, 1i)), reverseBits(vec4<i32>(countOneBits(~2147483647i), ~arg_0.c.a.d.b.x, _wgslsmith_sub_i32(u_input.d.x, firstTrailingBit(24881i)), _wgslsmith_clamp_i32(arg_0.c.a.d.b.x, u_input.d.x, 0i) | 2147483647i)), vec4<bool>(!(!select(false, true, true)), all(vec3<bool>(true, true, true)), !all(vec4<bool>(false, true, false, false)), !all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    var_0 = arg_0.c.a.d.d.zy;
    var_0 = _wgslsmith_add_vec2_i32(vec2<i32>((var_0.x >> (arg_0.c.a.d.c % 32u)) ^ u_input.d.x, ~reverseBits(-2147483647i)) & (abs(func_2(vec2<bool>(false, true), arg_0.c.a.d.e, Struct_1(arg_0.a.x, u_input.d, var_1.x, arg_0.c.a.d.d, vec3<u32>(14508u, 1u, u_input.c.x))).c.a.d.d.yx) ^ countOneBits(vec2<i32>(54856i, 2147483647i))), -(u_input.d | (vec2<i32>(-1i, arg_0.c.a.d.d.x) ^ vec2<i32>(36480i, var_0.x))));
    return _wgslsmith_add_i32(var_2.x, 1i);
}

fn func_1() -> f32 {
    var var_0 = Struct_1(246f, vec2<i32>(func_4(func_2(vec2<bool>(true, true), u_input.c.yzz, Struct_1(316f, vec2<i32>(u_input.d.x, -67187i), u_input.b, vec4<i32>(-2147483647i, -21005i, u_input.d.x, 58590i), u_input.c.yyx))) & (i32(-1i) * -u_input.d.x), u_input.d.x), u_input.c.x, ~vec4<i32>(_wgslsmith_add_i32(u_input.d.x, u_input.d.x), select(_wgslsmith_sub_i32(u_input.d.x, 18625i), abs(14498i), true), _wgslsmith_clamp_i32(u_input.d.x, 0i, u_input.d.x) ^ ~(-2147483647i), u_input.d.x), u_input.c.ywx);
    var_0 = Struct_1(265f, var_0.b, 0u, var_0.d, u_input.c.xyw);
    var_0 = Struct_1(1000f, var_0.b, ~(~35711u), _wgslsmith_mult_vec4_i32(var_0.d, ~(~vec4<i32>(u_input.d.x, 0i, var_0.b.x, -2576i))), ~(~abs(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.b), u_input.c.zxx))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(floor(938f)), var_0.d.wy, firstTrailingBit(~var_0.c), vec4<i32>(1i, select(_wgslsmith_div_i32(var_0.d.x, var_0.d.x), u_input.d.x | var_0.b.x, select(false, false, false)) >> (_wgslsmith_clamp_u32(~var_0.c, var_0.e.x, u_input.c.x | 536u) % 32u), -(~(-1i)), -1i), vec3<u32>(4294967295u, ~_wgslsmith_sub_u32(4294967295u, 1u), 15029u) << (~var_0.e % vec3<u32>(32u)));
    var var_1 = 15420i;
    return _wgslsmith_f_op_f32(f32(-1f) * -240f);
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    let var_0 = all(select(!(!vec3<bool>(arg_3, false, arg_3)), vec3<bool>(true, !(!arg_3), true && all(vec3<bool>(false, false, false))), true));
    let var_1 = vec3<u32>(0u, u_input.c.x, u_input.a);
    var var_2 = _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, -arg_2.x | (arg_2.x >> (1u % 32u)));
    let var_3 = arg_1;
    let var_4 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2(vec2<bool>(arg_3, arg_3), u_input.c.yxz, Struct_1(-184f, vec2<i32>(arg_2.x, -43487i), 53616u, vec4<i32>(arg_2.x, -1i, 73731i, arg_2.x), vec3<u32>(u_input.c.x, u_input.c.x, 23984u))).a.x, _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -450f)), 6429i, Struct_4(Struct_3(firstLeadingBit(firstTrailingBit(1u)), _wgslsmith_f_op_f32(1365f + arg_0), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), var_1.yy)), Struct_1(_wgslsmith_f_op_f32(step(arg_0, -1726f)), vec2<i32>(u_input.d.x, u_input.d.x), ~1u, select(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 2147483647i), vec4<i32>(-2147483647i, u_input.d.x, arg_2.x, -34506i), vec4<bool>(var_0, var_0, false, var_0)), select(u_input.c.xzz, vec3<u32>(u_input.b, var_1.x, 1u), var_0)))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2((countOneBits(-33039i) ^ _wgslsmith_div_i32(u_input.d.x, -400i)) << (_wgslsmith_mod_u32(u_input.b, u_input.a) % 32u));
    let var_1 = Struct_3(26422u, _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), -2087f, _wgslsmith_add_vec2_i32(u_input.d, vec2<i32>(2147483647i, -21759i)), false)), countOneBits(vec2<u32>(22044u, u_input.b) << (u_input.c.wx % vec2<u32>(32u))), func_2(vec2<bool>(true, true), ~vec3<u32>(14731u, ~u_input.c.x, u_input.c.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1287f), ~u_input.d, select(~u_input.a, u_input.a, u_input.d.x == var_0.a), _wgslsmith_mod_vec4_i32(-vec4<i32>(12804i, 0i, var_0.a, u_input.d.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, 1i, -1i, var_0.a), vec4<i32>(var_0.a, u_input.d.x, -14134i, 0i))), vec3<u32>(u_input.b, 0u, 1u))).c.a.d);
    var var_2 = var_1.b;
    let var_3 = var_1;
    var var_4 = Struct_4(Struct_3(~var_3.c.x, _wgslsmith_f_op_f32(-var_3.d.a), ~var_1.c, var_3.d));
    let x = u_input.a;
    s_output = StorageBuffer((var_3.a ^ ~48330u) << (39128u % 32u), -u_input.d);
}

