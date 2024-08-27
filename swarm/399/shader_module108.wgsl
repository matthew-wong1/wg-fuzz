struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<u32>(29651u, 37904u, 116784u)), Struct_1(vec3<u32>(0u, 22205u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 797u, 4691u)), Struct_1(vec3<u32>(58110u, 49099u, 19795u)), Struct_1(vec3<u32>(4294967295u, 46456u, 4294967295u)), Struct_1(vec3<u32>(5531u, 12271u, 12774u)), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 0u, 19195u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 20458u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = var_0 > firstLeadingBit(~(~countOneBits(5100u)));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u ^ abs(firstTrailingBit(29124u)), ~_wgslsmith_sub_u32(42153u, 7172u) & ~_wgslsmith_sub_u32(20842u, ~var_0)), 9u)];
    global0 = array<Struct_1, 9>();
    var_1 = arg_0;
    return global0[_wgslsmith_index_u32(u_input.c.x << (4294967295u % 32u), 9u)];
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-975f, -1000f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1103f), vec2<f32>(-1568f, 959f))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1497f, -1238f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1002f, 656f))) - vec2<f32>(-1986f, 569f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1165f, -184f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2181f, 1910f) + vec2<f32>(-190f, 251f)), vec2<bool>(false, true)))))));
    global0 = array<Struct_1, 9>();
    var var_1 = _wgslsmith_div_u32(3438u, firstTrailingBit(~0u));
    var_1 = _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(17827u, _wgslsmith_div_u32(u_input.d.x & select(0u, arg_1.a.x, true), arg_1.a.x >> ((1u << (0u % 32u)) % 32u)), 73699u, 44590u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(-1206f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, -1435f)), -543f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))))));
    return vec3<bool>(true, !any(vec4<bool>(true, true, true, true)), ~u_input.a >= (_wgslsmith_mod_i32(max(u_input.b.x, -8051i), ~(-25227i)) ^ u_input.b.x));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = u_input.d;
    var var_1 = func_2(!(!all(vec4<bool>(false, true, false, arg_1))), _wgslsmith_mult_vec4_i32(select(~vec4<i32>(arg_3, u_input.a, -23088i, 2897i), vec4<i32>(arg_3, 0i, u_input.a, 0i) ^ vec4<i32>(u_input.b.x, -3962i, arg_3, 1i), select(arg_1, arg_1, arg_1)), min(max(vec4<i32>(arg_3, -1i, arg_3, u_input.a), vec4<i32>(1i, 8488i, u_input.b.x, arg_3)), ~vec4<i32>(arg_3, u_input.a, 0i, arg_3))) << (~_wgslsmith_mod_vec4_u32(u_input.d, select(u_input.d, u_input.d, vec4<bool>(false, arg_1, false, arg_1))) % vec4<u32>(32u)), _wgslsmith_mod_u32(max(arg_2.a.x, firstTrailingBit(u_input.c.x ^ 1u)), 4294967295u));
    let var_2 = arg_3;
    var var_3 = vec4<bool>(!all(select(vec3<bool>(arg_1, arg_1, arg_1), func_3(vec4<u32>(1u, 1u, arg_0.a.x, 0u), global0[_wgslsmith_index_u32(17800u, 9u)]), vec3<bool>(arg_1, true, false))), true, !arg_1, true);
    var var_4 = 1f;
    return _wgslsmith_f_op_f32(f32(-1f) * -672f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    var var_0 = Struct_1(max(_wgslsmith_mod_vec3_u32(u_input.d.wzz, _wgslsmith_div_vec3_u32(u_input.d.wxx, vec3<u32>(15716u, u_input.d.x, 37696u)) & vec3<u32>(1u, 17305u, u_input.d.x)), abs(u_input.d.xxy)));
    let var_1 = 958f;
    let var_2 = u_input.d.wy ^ vec2<u32>(u_input.c.x, 4294967295u);
    global0 = array<Struct_1, 9>();
    var_0 = global0[_wgslsmith_index_u32(56519u, 9u)];
    var var_3 = vec3<f32>(var_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(u_input.c.x, 9u)], false, global0[_wgslsmith_index_u32(var_0.a.x, 9u)], u_input.b.x)))))), var_1);
    var var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-559f, var_1, var_3.x, -1235f)) * vec4<f32>(var_1, _wgslsmith_div_f32(var_3.x, -518f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(step(-1034f, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_1, 1310f, -203f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1168f, var_3.x, _wgslsmith_f_op_f32(-720f + var_1), -1187f) - vec4<f32>(var_1, _wgslsmith_f_op_f32(sign(var_1)), -508f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1)), -258f))))));
    var_0 = func_2(true, _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, -61890i, 30539i, -1i), vec4<i32>(u_input.b.x, u_input.a, 2147483647i, u_input.a), true), min(vec4<i32>(-30664i, -2147483647i, 11217i, 2147483647i), vec4<i32>(u_input.a, u_input.b.x, u_input.a, u_input.b.x))), _wgslsmith_clamp_i32(2147483647i, 40181i & u_input.a, _wgslsmith_mult_i32(u_input.a, 25517i)), firstLeadingBit(_wgslsmith_sub_i32(u_input.b.x, 84193i)), u_input.b.x), ~(-min(vec4<i32>(u_input.a, u_input.a, 0i, -35915i), vec4<i32>(2147483647i, u_input.b.x, 1i, u_input.a)))), u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-981f, var_4.x, -716f, _wgslsmith_f_op_f32(f32(-1f) * -1141f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(-var_4.x), -1000f, _wgslsmith_f_op_f32(exp2(var_3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_3.x, -806f, 535f) + vec4<f32>(var_4.x, -252f, -1000f, 1123f)))))), u_input.a, vec3<i32>(~1i, _wgslsmith_sub_i32((u_input.a | -6745i) << (32295u % 32u), 0i), firstTrailingBit(_wgslsmith_div_i32(-8001i, u_input.b.x) << (firstLeadingBit(var_2.x) % 32u))));
}

