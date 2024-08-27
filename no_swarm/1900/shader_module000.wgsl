struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21>;

var<private> global1: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(1622u, 17234u, 55921u), vec3<u32>(4294967295u, 4294967295u, 17825u), vec3<u32>(29185u, 118341u, 25810u), vec3<u32>(39903u, 0u, 0u), vec3<u32>(0u, 9188u, 4294967295u), vec3<u32>(91750u, 12095u, 4294967295u), vec3<u32>(114737u, 0u, 2708u), vec3<u32>(35329u, 6452u, 35250u), vec3<u32>(4134u, 0u, 31032u), vec3<u32>(31466u, 4294967295u, 64975u), vec3<u32>(0u, 1u, 18498u), vec3<u32>(79442u, 31200u, 21650u), vec3<u32>(94669u, 51946u, 1u), vec3<u32>(95592u, 30326u, 4294967295u), vec3<u32>(39730u, 29277u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 1775u, 23669u), vec3<u32>(8673u, 4294967295u, 0u), vec3<u32>(0u, 4663u, 4294967295u), vec3<u32>(9791u, 25952u, 4294967295u), vec3<u32>(0u, 1u, 57414u), vec3<u32>(42771u, 8203u, 62300u), vec3<u32>(4294967295u, 1u, 46421u), vec3<u32>(37669u, 55257u, 0u), vec3<u32>(4294967295u, 23424u, 47120u), vec3<u32>(34387u, 50129u, 0u), vec3<u32>(10475u, 33497u, 1u), vec3<u32>(12141u, 15967u, 1u), vec3<u32>(1u, 0u, 0u), vec3<u32>(1u, 0u, 7198u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = vec2<u32>(~_wgslsmith_div_u32(~_wgslsmith_clamp_u32(u_input.a, 0u, 0u), ~(7190u << (u_input.a % 32u))), _wgslsmith_mod_u32(1u, abs(~select(1u, u_input.a, true))));
    return -(~firstTrailingBit(_wgslsmith_sub_i32(1i, 1i)));
}

fn func_2(arg_0: Struct_2) -> f32 {
    global1 = array<vec3<u32>, 31>();
    let var_0 = vec4<i32>(-_wgslsmith_mod_i32(func_3(), ~2147483647i) << (11795u % 32u), _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -14205i), select(vec2<i32>(~(-2147483647i), 2147483647i), vec2<i32>(~(-6942i), 1i), !(!vec2<bool>(arg_0.a.x, arg_0.a.x)))), 1i, 1i);
    let var_1 = Struct_4(func_3(), arg_0.b, ~65137u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, arg_0.b, _wgslsmith_f_op_f32(min(879f, arg_0.b)), _wgslsmith_f_op_f32(-1584f - arg_0.b))))));
    var var_2 = arg_0.a.x;
    var_2 = all(select(arg_0.a, vec2<bool>(false, arg_0.c.x), vec2<bool>((arg_0.c.x & arg_0.c.x) != arg_0.c.x, true)));
    return 1178f;
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1132f, -189f, false)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(vec2<bool>(true, true), 162f, vec4<bool>(false, true, false, false))))))));
    var_0 = 1724f;
    var_0 = _wgslsmith_f_op_f32(step(-1365f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1310f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1069f, -559f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(480f, -1000f)))))));
    global1 = array<vec3<u32>, 31>();
    var var_1 = (-vec3<i32>(-2147483647i, 1i, abs(1i)) & vec3<i32>(firstLeadingBit(-2147483647i) >> ((57088u >> (u_input.a % 32u)) % 32u), countOneBits(select(23404i, 15435i, true)), _wgslsmith_div_i32(-48223i, -1i) >> (u_input.a % 32u))) >> (select(vec3<u32>(u_input.a, 31744u, ~0u << (select(u_input.a, u_input.a, true) % 32u)), ~vec3<u32>(~0u, u_input.a, u_input.a), (true || select(false, false, false)) | (all(vec2<bool>(true, false)) & true)) % vec3<u32>(32u));
    return StorageBuffer(vec2<u32>(u_input.a, ~(~_wgslsmith_div_u32(u_input.a, u_input.a))), -(~vec3<i32>(var_1.x, firstLeadingBit(5062i), var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1275f;
    var var_1 = _wgslsmith_f_op_f32(-556f - 1f);
    var_0 = -240f;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(310f - 393f)));
    var_0 = _wgslsmith_f_op_f32(-1337f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(var_2 + var_2)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2 + 1969f), _wgslsmith_f_op_f32(-var_2), true))))));
    let x = u_input.a;
    s_output = func_1();
}

