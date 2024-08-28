struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2340f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.wy, vec2<i32>(-1i, u_input.b.x)), vec2<i32>(u_input.b.x, 29696i)) >> (firstLeadingBit(u_input.d.zz) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(u_input.b.wx >> (~vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), -countOneBits(u_input.b.yw))), 1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(185f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -713f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-465f, 193f), vec2<f32>(-1775f, -1076f))), vec2<f32>(-1328f, -1012f), select(vec2<bool>(arg_0, true), vec2<bool>(true, true), false)))));
    var var_1 = ~vec4<u32>(u_input.d.x, u_input.d.x, 1u, min(min(var_0.b & 46847u, ~4294967295u), ~firstLeadingBit(u_input.c.x)));
    return vec4<u32>(~_wgslsmith_clamp_u32(var_1.x, var_1.x, var_1.x), (~var_0.b >> (~var_0.b % 32u)) & abs(_wgslsmith_dot_vec4_u32(vec4<u32>(30725u, 1u, 1u, var_1.x), firstTrailingBit(vec4<u32>(4294967295u, 1u, var_0.b, var_1.x)))), ~62551u, 88647u);
}

fn func_2() -> vec4<u32> {
    let var_0 = true;
    return ~func_3(!var_0);
}

fn func_1(arg_0: f32) -> vec4<i32> {
    var var_0 = vec4<bool>(true, -30888i != u_input.b.x, true, select(~1u < u_input.c.x, !(!all(vec3<bool>(true, false, false))), (_wgslsmith_sub_i32(19845i, u_input.b.x) != abs(u_input.b.x)) | true));
    global0 = -632f;
    let var_1 = select(!(!vec3<bool>(true, var_0.x | var_0.x, true)), vec3<bool>(true, !all(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), var_0.x), u_input.b.x < firstLeadingBit(-1i));
    let var_2 = reverseBits(firstLeadingBit(func_2()));
    var var_3 = max(~(~_wgslsmith_div_vec4_u32(vec4<u32>(76744u, var_2.x, 49627u, 4294967295u), vec4<u32>(var_2.x, 33692u, var_2.x, 1u))), max(var_2, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.x), vec2<u32>(24612u, 0u)), ~var_2.x, func_3(true).x, u_input.c.x))) | ~var_2;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(max(~u_input.b, u_input.b | u_input.b), u_input.b), select(~vec4<i32>(1i, u_input.b.x, 2147483647i, u_input.b.x), func_1(_wgslsmith_f_op_f32(select(-554f, -1043f, false))), true)), vec4<i32>(_wgslsmith_clamp_i32(-29226i, 0i, u_input.b.x), _wgslsmith_sub_i32(16660i >> (u_input.a % 32u), u_input.b.x), u_input.b.x, (_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) ^ u_input.b.x) << (func_2().x % 32u)));
    var_0 = ~(~(~u_input.b));
    var var_1 = var_0.x;
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(741f + _wgslsmith_f_op_f32(max(-186f, -148f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)))))));
    var_1 = abs(0i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.x, -21815i, _wgslsmith_dot_vec2_i32(-u_input.b.yz, vec2<i32>(var_0.x, -2147483647i) >> (vec2<u32>(1u, u_input.d.x) % vec2<u32>(32u)))) << (~_wgslsmith_div_vec3_u32(u_input.d, u_input.d) % vec3<u32>(32u)), _wgslsmith_div_u32(20639u, ~(~35251u) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 18296u, 1u, u_input.d.x) >> (vec4<u32>(0u, 33591u, 18078u, u_input.c.x) % vec4<u32>(32u)), func_2())), ~var_0.yw >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(1u, 1u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 640f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -427f)))));
}

