struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_sub_u32(countOneBits(arg_2), ~abs(arg_2));
    return select(u_input.b.zy, select(firstTrailingBit(vec2<i32>(abs(arg_1), i32(-1i) * -32142i)), vec2<i32>(-1637i, 4869i), true), true);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_mod_vec2_i32(u_input.b.xz, _wgslsmith_clamp_vec2_i32(func_3(Struct_1(1961f, vec2<f32>(1000f, -1000f), vec3<f32>(318f, 870f, 924f), vec4<u32>(u_input.c, u_input.c, 1u, 0u)), -26099i, u_input.c), _wgslsmith_sub_vec2_i32(u_input.b.yz, u_input.b.xy), vec2<i32>(u_input.b.x, u_input.b.x)) << (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u))));
    var var_1 = Struct_2(-_wgslsmith_clamp_vec2_i32(var_0.a, u_input.b.yz ^ u_input.b.xx, vec2<i32>(firstTrailingBit(var_0.a.x), ~(-2147483647i))));
    let var_2 = true;
    let var_3 = Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(abs(var_1.a), max(~vec2<i32>(-36669i, -2147483647i), vec2<i32>(u_input.a, u_input.a))), u_input.b.yx));
    var_1 = var_3;
    return Struct_2(var_3.a);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(reverseBits(vec2<i32>(_wgslsmith_div_i32(~u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(-2147483647i, u_input.a))), 1i)));
    var var_1 = vec4<i32>(-82577i, -9585i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.b, -(u_input.b >> (vec3<u32>(u_input.c, u_input.c, 14280u) % vec3<u32>(32u)))), _wgslsmith_mod_i32(abs(~10141i), -44569i)), 0i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1052f + 1634f) - _wgslsmith_f_op_f32(1049f - 1339f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(812f, -1834f)) - _wgslsmith_f_op_f32(921f + 438f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1229f))))) + -1179f));
    var var_3 = vec3<bool>(false, true, true);
    var var_4 = -(~vec3<i32>(_wgslsmith_add_i32(u_input.b.x << (u_input.c % 32u), var_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 2147483647i, u_input.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(0i, var_0.a.x, 1i, var_1.x), vec4<i32>(-9039i, -28810i, 0i, var_0.a.x))), select(var_0.a.x, var_0.a.x, any(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), select(vec3<bool>(true, true, true), select(vec3<bool>(all(vec4<bool>(false, true, true, false)), true, true), vec3<bool>(false, true, true), true), vec3<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), false, false)), Struct_2(u_input.b.yy), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2247f)) + _wgslsmith_f_op_f32(304f - 1331f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -344f), 1154f), _wgslsmith_f_op_f32(abs(186f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -545f)), _wgslsmith_f_op_f32(366f * -1061f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-672f, -664f)))));
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = vec2<u32>(u_input.c, ~u_input.c | (4294967295u << (~(~u_input.c) % 32u)));
    var var_3 = vec2<i32>(-1i) * -u_input.b.xy;
    var_3 = firstLeadingBit(vec2<i32>((func_2().a.x | -9282i) >> (77918u % 32u), _wgslsmith_div_i32(-_wgslsmith_div_i32(25100i, var_3.x), u_input.b.x)));
    let var_4 = 11815u;
    var var_5 = var_0.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, firstLeadingBit((_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, var_2.x, var_2.x), vec3<u32>(0u, u_input.c, 42568u)) | (vec3<u32>(var_4, 1u, 1u) << (vec3<u32>(78655u, var_4, 57941u) % vec3<u32>(32u)))) >> (vec3<u32>(_wgslsmith_mod_u32(u_input.c, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(20834u, var_2.x, var_2.x, u_input.c), vec4<u32>(u_input.c, 73606u, var_2.x, var_2.x)), _wgslsmith_add_u32(var_4, 70219u)) % vec3<u32>(32u))), max(1u, 4294967295u));
}

