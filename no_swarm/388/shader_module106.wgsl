struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    return arg_1.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    global0 = array<vec3<bool>, 1>();
    let var_0 = vec3<f32>(arg_0.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.d * -1109f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-696f, arg_1.b, true)) + _wgslsmith_f_op_f32(arg_0.a.d + arg_0.b)) * arg_0.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -940f));
    let var_1 = arg_0.c;
    var var_2 = var_1;
    let var_3 = 0i;
    return 0u ^ ~(~func_2(arg_1, Struct_2(arg_0.a, var_0.x, true)).a);
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<i32>(u_input.b & (min(u_input.b, u_input.a) << (1u % 32u)), _wgslsmith_div_i32(reverseBits(0i), u_input.b), -2147483647i);
    var var_1 = Struct_2(Struct_1(abs(func_3(Struct_2(Struct_1(10743u, 634f, vec2<i32>(1i, u_input.c.x), 612f, vec3<u32>(1u, 53816u, 55203u)), 1027f, false), func_2(Struct_1(0u, 248f, vec2<i32>(u_input.b, -1i), 770f, vec3<u32>(1u, 56370u, 0u)), Struct_2(Struct_1(53423u, -1672f, vec2<i32>(var_0.x, u_input.b), 323f, vec3<u32>(4294967295u, 4294967295u, 0u)), -1129f, false)))), _wgslsmith_f_op_f32(step(-1419f, -456f)), var_0.yy >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 16563u), vec2<u32>(64224u, 0u)) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f + -142f) * _wgslsmith_div_f32(281f, -356f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -397f))), countOneBits(vec3<u32>(4294967295u, 0u, 17173u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1055f, 284f)), -1552f) - _wgslsmith_f_op_f32(floor(577f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1499f)))), true);
    global0 = array<vec3<bool>, 1>();
    var var_2 = Struct_3(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(false, false))))));
    var var_3 = func_2(func_2(func_2(func_2(Struct_1(var_1.a.e.x, var_1.a.b, vec2<i32>(10304i, 18578i), var_1.b, vec3<u32>(var_1.a.a, 4294967295u, var_1.a.e.x)), Struct_2(Struct_1(121184u, var_1.a.d, vec2<i32>(1i, 6087i), var_1.b, vec3<u32>(0u, 4294967295u, 21853u)), var_1.a.b, false)), Struct_2(var_1.a, _wgslsmith_div_f32(-1063f, 1000f), var_1.c)), Struct_2(func_2(func_2(Struct_1(4294967295u, 723f, vec2<i32>(2147483647i, var_1.a.c.x), -381f, vec3<u32>(27813u, var_1.a.a, var_1.a.e.x)), Struct_2(var_1.a, 1071f, var_1.c)), Struct_2(Struct_1(0u, -704f, vec2<i32>(-88188i, var_0.x), -552f, var_1.a.e), -1645f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b) - _wgslsmith_f_op_f32(-var_1.b)), true)), Struct_2(var_1.a, _wgslsmith_f_op_f32(trunc(-753f)), true));
    return Struct_2(func_2(Struct_1(~(~92731u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b + var_3.d) + _wgslsmith_f_op_f32(-var_3.b)), min(vec2<i32>(-2147483647i, var_0.x), ~u_input.c), var_1.a.d, vec3<u32>(firstTrailingBit(var_1.a.e.x), max(62108u, var_1.a.e.x), _wgslsmith_div_u32(0u, 10240u))), Struct_2(func_2(func_2(var_1.a, Struct_2(var_1.a, var_3.b, var_2.a)), Struct_2(var_1.a, 1916f, true)), _wgslsmith_f_op_f32(exp2(var_1.a.b)), var_1.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(211f + -1786f) + -1149f))), var_1.b)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 1>();
    var var_0 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 0u, 47705u), countOneBits(vec4<u32>(11920u, 15242u, 4294967295u, 4294967295u)))) | 1u;
    var var_1 = func_1();
    let var_2 = func_1();
    global0 = array<vec3<bool>, 1>();
    var var_3 = !(!vec4<bool>(!var_1.c, any(select(global0[_wgslsmith_index_u32(var_2.a.e.x, 1u)], vec3<bool>(var_2.c, false, false), false)), !var_1.c, false));
    var var_4 = vec3<u32>(var_2.a.e.x ^ ~_wgslsmith_mult_u32(var_1.a.a, ~1u), var_1.a.e.x, _wgslsmith_sub_u32(4294967295u, ~(~61774u)));
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.a.c, var_1.a.c.x, func_1().a.e.x);
}

