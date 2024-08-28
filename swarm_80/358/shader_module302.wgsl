struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2, arg_3: vec3<bool>) -> u32 {
    let var_0 = -(_wgslsmith_clamp_vec2_i32(max(vec2<i32>(2147483647i, arg_2.a), u_input.b.yz), vec2<i32>(1i, 25267i), firstTrailingBit(vec2<i32>(2147483647i, -9587i))) << (arg_0.wx % vec2<u32>(32u))) >> (arg_0.xz % vec2<u32>(32u));
    let var_1 = 1u;
    let var_2 = arg_2;
    var var_3 = ~(_wgslsmith_div_i32(arg_2.a, 2147483647i) >> (arg_0.x % 32u));
    let var_4 = var_0.x;
    return ~u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = true;
    var_0 = true;
    let var_1 = !(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)));
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(min(abs(1u >> (arg_3.b.a.x % 32u)), 0u), min(~arg_3.b.a.x, arg_3.b.a.x) | arg_3.b.a.x, select(17108u, _wgslsmith_mod_u32(abs(u_input.a), reverseBits(4294967295u)), (arg_1.c > arg_1.b) & (arg_1.a <= arg_1.a))), firstLeadingBit(arg_0.a.x ^ arg_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1883u, 45786u, 4294967295u, arg_0.a.x), arg_0.a), ~12927u & _wgslsmith_sub_u32(~u_input.a, countOneBits(arg_0.a.x)));
    var var_3 = vec2<u32>(~func_2((arg_0.a << (arg_0.a % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, 43925u, 0u, 0u) % vec4<u32>(32u)), ~(arg_2.x >> (arg_3.b.a.x % 32u)), Struct_2(_wgslsmith_div_i32(-2147483647i, 2147483647i), -1686f, _wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(exp2(arg_3.c.b)), _wgslsmith_f_op_f32(841f - arg_3.c.c)), vec3<bool>(821f <= arg_3.a, true, var_1.x)), arg_0.a.x);
    return arg_0;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -735f, 1348f, -637f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(540f, -1000f, -911f, 1466f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(489f, 1370f, 279f, 946f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(945f, 635f, -1878f, -603f), vec4<f32>(1335f, 1000f, -156f, -830f)))))))));
    let var_1 = func_3(Struct_1(vec4<u32>(func_2(~vec4<u32>(u_input.a, 15539u, 4294967295u, u_input.a), ~u_input.a, Struct_2(2147483647i, 537f, -690f, -1448f, -1228f), vec3<bool>(true, true, true)), 44751u, u_input.a, u_input.a)), Struct_2(_wgslsmith_mult_i32(~abs(u_input.b.x), -(~u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-677f, _wgslsmith_f_op_f32(-869f * var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -496f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1148f * -1772f), -989f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-864f - var_0.x), _wgslsmith_f_op_f32(-var_0.x)) - -809f)), vec3<u32>(~0u, 48649u, _wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a), ~vec4<u32>(26533u, 46004u, 4294967295u, 4294967295u)))), Struct_3(_wgslsmith_f_op_f32(floor(var_0.x)), Struct_1(~select(vec4<u32>(4230u, 4294967295u, u_input.a, 13597u), vec4<u32>(u_input.a, 4067u, u_input.a, 74218u), false)), Struct_2(-u_input.b.x, _wgslsmith_f_op_f32(-118f + -447f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0.x, -481f)), 922f)), _wgslsmith_f_op_f32(-266f * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1468f)), _wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = var_0.x;
    return 20246u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(func_1() ^ _wgslsmith_div_u32(func_2(vec4<u32>(u_input.a, u_input.a, 12162u, 46892u), 1u, Struct_2(u_input.b.x, -1000f, -1152f, 504f, 271f), vec3<bool>(false, false, false)), max(u_input.a, u_input.a)), func_2(select(vec4<u32>(u_input.a, 25996u, 31168u, 32143u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 155u, 0u, 41334u), vec4<u32>(u_input.a, 15368u, 1u, 44013u)), true), u_input.a & 14035u, Struct_2(u_input.b.x, 1f, 355f, _wgslsmith_f_op_f32(1000f - 965f), 1f), vec3<bool>(any(vec3<bool>(false, false, false)), true, false)), ~1u, func_1()) >> (firstLeadingBit(vec4<u32>(~1u >> (0u % 32u), u_input.a ^ ~69381u, firstTrailingBit(u_input.a), 13233u)) % vec4<u32>(32u));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1681f)), _wgslsmith_f_op_f32(max(-1278f, -232f)))), _wgslsmith_f_op_f32(max(-3429f, _wgslsmith_f_op_f32(max(854f, 392f)))))) * 917f));
    var_0 = min(vec4<u32>(1u, 105574u, u_input.a, 0u) | abs(vec4<u32>(var_0.x, u_input.a, min(25123u, 1u), select(8891u, 4294967295u, var_1))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a, u_input.a, 17240u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 1u, u_input.a, 60111u), vec4<u32>(54242u, var_0.x, 4294967295u, 22723u)) | (vec4<u32>(u_input.a, u_input.a, var_0.x, var_0.x) | vec4<u32>(0u, u_input.a, u_input.a, u_input.a))) & ~(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)));
    var_0 = ~(vec4<u32>(~_wgslsmith_mult_u32(u_input.a, u_input.a), ~(~var_0.x), u_input.a, ~u_input.a) | _wgslsmith_div_vec4_u32(vec4<u32>(29857u, var_0.x, func_3(Struct_1(vec4<u32>(u_input.a, var_0.x, 0u, 0u)), Struct_2(-1i, var_2, 340f, 827f, 1141f), vec3<u32>(var_0.x, 4294967295u, 31355u), Struct_3(var_2, Struct_1(vec4<u32>(u_input.a, var_0.x, u_input.a, u_input.a)), Struct_2(u_input.b.x, -302f, -477f, var_2, var_2), var_2)).a.x, ~u_input.a), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 1u, u_input.a, 69467u), vec4<u32>(var_0.x, 66639u, 23383u, 0u)))));
    var var_3 = Struct_4(firstTrailingBit(1u), ~(~33080u));
    var var_4 = _wgslsmith_sub_u32((91170u << (1u % 32u)) ^ ~var_0.x, reverseBits(var_3.a));
    var_4 = abs(0u);
    var_4 = u_input.a ^ ~72095u;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<i32>(~(2147483647i >> (var_3.a % 32u)), ~(u_input.b.x | u_input.b.x))));
}

