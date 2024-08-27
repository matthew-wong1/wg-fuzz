struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: i32) -> bool {
    var var_0 = ~u_input.c.ww;
    let var_1 = false;
    var_0 = vec2<u32>(var_0.x, var_0.x);
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    return all(!vec4<bool>(any(vec4<bool>(var_1, true, var_1, false)), false, var_1, !any(vec3<bool>(var_1, var_1, false))));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_mod_vec3_i32(max(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, -1i), vec3<i32>(2147483647i, -2147483647i, -7851i)), ~reverseBits(vec3<i32>(-1i, 0i, 35912i))) | vec3<i32>(6366i, _wgslsmith_mod_i32(2458i, 1i), firstTrailingBit(arg_2.x << (88024u % 32u))), (vec3<i32>(-1i) * -(vec3<i32>(arg_2.x, arg_2.x, -1i) | vec3<i32>(arg_2.x, arg_2.x, 12911i))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(-63487i), countOneBits(arg_2.x), -arg_2.x), vec3<i32>(~arg_2.x, -8330i | arg_2.x, -36509i)));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1495f, _wgslsmith_div_f32(2338f, arg_1.x))) * _wgslsmith_f_op_f32(round(-1014f))), arg_1.x), arg_1.x, _wgslsmith_f_op_f32(872f + _wgslsmith_f_op_f32(1f - arg_1.x)));
    let var_2 = min(84927i, -33578i);
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, -1691f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), var_1.x, any(vec2<bool>(true, true))));
    var var_4 = arg_1.x;
    return -(-8604i >> (_wgslsmith_sub_u32(~0u, arg_0) % 32u));
}

fn func_1() -> i32 {
    let var_0 = u_input.c.zzz;
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    let var_1 = select(vec3<bool>(true, false, any(vec2<bool>(true, all(vec4<bool>(true, false, true, true))))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), func_2(vec3<f32>(636f, 571f, 1000f), vec3<f32>(-538f, 859f, -121f), 1i)), !any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), vec3<bool>(true, false, func_3(_wgslsmith_mod_u32(4294967295u, var_0.x), vec4<f32>(463f, 1734f, -2777f, -1803f), abs(vec2<i32>(-5011i, -44946i)), Struct_2(u_input.a)) == _wgslsmith_dot_vec4_i32(vec4<i32>(-12782i, -1i, -2147483647i, 6561i), countOneBits(vec4<i32>(2147483647i, 28418i, 25641i, -14633i)))));
    global0 = array<Struct_3, 12>();
    return abs(1i);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: f32) -> StorageBuffer {
    global0 = array<Struct_3, 12>();
    let var_0 = -344f;
    global0 = array<Struct_3, 12>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.c.x, 4294967295u, _wgslsmith_div_u32(~(~(arg_2.e | arg_2.c.x)), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 699u), 0u))), 12u)];
    let var_2 = Struct_2(arg_2.c.x);
    return StorageBuffer(26681u, select(~(-36213i), -(~(-28524i)), _wgslsmith_f_op_f32(1237f + _wgslsmith_f_op_f32(-736f - 1098f)) >= _wgslsmith_f_op_f32(exp2(var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = func_4(~_wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, 7399u)), vec2<u32>(min(u_input.a, u_input.b.x), select(u_input.c.x, u_input.a, true))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), true | any(vec4<bool>(false, false, true, true))), vec4<bool>(select(false, select(true, true, true), true), true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), Struct_1(vec3<bool>(_wgslsmith_f_op_f32(trunc(2174f)) == 1f, all(vec2<bool>(false, false)) == all(vec2<bool>(false, true)), false), -_wgslsmith_sub_i32(func_1(), func_3(u_input.a, vec4<f32>(-1000f, -1334f, 1285f, -804f), vec2<i32>(-1i, 50841i), Struct_2(u_input.b.x))), vec2<u32>(1u, 1u), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), all(vec4<bool>(false, false, false, true))), vec2<bool>(true, true)), _wgslsmith_add_u32(u_input.b.x, abs(u_input.b.x)) | 4294967295u), -1000f);
}

