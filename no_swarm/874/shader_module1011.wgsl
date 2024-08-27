struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = 0u;
    var_0 = 0u;
    let var_1 = arg_1.x;
    return firstTrailingBit(16097u);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(vec4<u32>(~u_input.a.x >> (firstLeadingBit(func_3(u_input.b.wyw, vec3<i32>(1i, -38097i, 1i))) % 32u), 10639u, min((u_input.b.x & 1u) << (func_3(vec3<u32>(u_input.a.x, u_input.a.x, 9207u), vec3<i32>(23894i, 0i, -27896i)) % 32u), _wgslsmith_dot_vec3_u32(~u_input.a, _wgslsmith_add_vec3_u32(u_input.b.xyx, vec3<u32>(24655u, 0u, u_input.a.x)))), _wgslsmith_div_u32(u_input.b.x, 1u)), firstTrailingBit(select(u_input.a.x, u_input.a.x, u_input.b.x > 20943u)), 0i);
    return ~(_wgslsmith_add_i32(var_0.c, -1i) ^ -var_0.c);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> StorageBuffer {
    let var_0 = Struct_5(-firstTrailingBit(firstTrailingBit(_wgslsmith_div_i32(-2147483647i, -1949i))), Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(49750u, u_input.b.x, arg_0, 16266u), u_input.b), 1u, func_2()));
    var var_1 = vec3<bool>(true, any(vec4<bool>(false, countOneBits(u_input.b.x) != 4294967295u, false, true || select(false, true, true))), true || all(vec3<bool>(select(true, true, true), true, true)));
    let var_2 = _wgslsmith_add_i32(0i, -func_2());
    var var_3 = Struct_2(var_0.b, _wgslsmith_mod_u32(1u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(36849u, arg_0, 4294967295u, arg_0), ~vec4<u32>(7276u, 0u, var_0.b.b, u_input.a.x)), arg_0, !(u_input.b.x <= 52788u))), abs(~max(abs(vec4<i32>(1i, -1i, var_0.a, 3053i)), countOneBits(vec4<i32>(-1i, arg_1.x, -7940i, 2147483647i)))));
    let var_4 = !(!vec4<bool>(select(var_1.x, var_1.x, false) && var_1.x, select(false, false, false), true, false));
    return StorageBuffer(~(~arg_1 << (vec2<u32>(var_0.b.a.x, 1u >> (1u % 32u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1171f, -521f, -646f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1391f, -1435f, -381f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1581f, 993f, -638f) * vec3<f32>(774f, -1321f, 1105f)), !var_4.wxz))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, false, all(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, false, false))));
    let x = u_input.a;
    s_output = func_1(~u_input.a.x, -_wgslsmith_add_vec2_i32(vec2<i32>(-4055i, 0i), -select(vec2<i32>(-2147483647i, 1i), vec2<i32>(-14486i, 8573i), vec2<bool>(var_0.x, false))));
}

