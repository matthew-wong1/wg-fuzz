struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(-435f), Struct_2(-621f), Struct_2(2576f), Struct_2(-1532f), Struct_2(110f), Struct_2(-248f), Struct_2(500f));

var<private> global1: array<vec3<f32>, 27>;

var<private> global2: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(-1072f, 281f, 273f, -187f), vec4<f32>(-285f, -1601f, -430f, 723f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, ~max(~u_input.c, vec3<u32>(u_input.c.x, 0u, u_input.c.x))), ~(~vec3<u32>(u_input.c.x, u_input.c.x, 1u)));
    let var_1 = Struct_4(countOneBits(u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1129f, 586f, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -177f) - _wgslsmith_f_op_f32(694f * -773f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(32462u, u_input.c.x), 1u), 2u)], vec4<f32>(_wgslsmith_f_op_f32(abs(-534f)), _wgslsmith_f_op_f32(step(1304f, 176f)), _wgslsmith_div_f32(-1226f, 415f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    global2 = array<vec4<f32>, 2>();
    let var_2 = Struct_1(1i, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(1u), u_input.c.x), 2u)]);
    global0 = array<Struct_2, 7>();
    return -136f;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    global0 = array<Struct_2, 7>();
    let var_0 = vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true);
    global1 = array<vec3<f32>, 27>();
    var var_1 = Struct_1(firstLeadingBit(-2636i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -273f, _wgslsmith_div_f32(-282f, _wgslsmith_div_f32(-749f, arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -441f))));
    let var_2 = _wgslsmith_mod_vec3_i32(-min(-u_input.b.zxx, u_input.b.zxx) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(~4294967295u, ~u_input.c.x, ~4294967295u), ~u_input.c) % vec3<u32>(32u)), -max(firstTrailingBit(u_input.b.yxz) & ~vec3<i32>(arg_2, var_1.a, 1i), abs(countOneBits(vec3<i32>(arg_2, u_input.a, arg_1.x)))));
    return max(_wgslsmith_mod_u32(firstTrailingBit(8027u), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 101u), vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.zy)), 27309u);
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-793f, _wgslsmith_f_op_f32(358f + 1645f), _wgslsmith_f_op_f32(-1704f * -711f))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_0.x));
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~(~u_input.c.x), _wgslsmith_div_u32(u_input.c.x, ~0u)), firstTrailingBit(0u) >> (func_3(Struct_1(arg_1, vec4<f32>(var_0.x, var_0.x, -1032f, -672f)), ~vec2<i32>(-58495i, 22019i), countOneBits(u_input.b.x)) % 32u)), _wgslsmith_add_u32(1u, ~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x | u_input.c.x)), _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 1u), u_input.c.x);
    let var_2 = true;
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.c.x & u_input.c.x, 27u)]), global1[_wgslsmith_index_u32(0u, 27u)])) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(128f - var_0.x) * _wgslsmith_f_op_f32(ceil(-301f))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(-1854f, _wgslsmith_f_op_f32(var_0.x * var_0.x)))))));
    return Struct_4(var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1221f, _wgslsmith_f_op_f32(1853f + var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1219f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global2[_wgslsmith_index_u32(35336u, 2u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global2[_wgslsmith_index_u32(u_input.c.x, 2u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 27>();
    global0 = array<Struct_2, 7>();
    var var_0 = global2[_wgslsmith_index_u32(~u_input.c.x, 2u)];
    var var_1 = !(true || select(any(vec3<bool>(true, false, false)), all(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, false)) || false));
    var var_2 = func_1(-(~(-1i)), -u_input.b.x);
    var_0 = global2[_wgslsmith_index_u32(var_2.a, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(-337f, abs(-2147483647i), ~func_3(Struct_1(i32(-1i) * -14858i, _wgslsmith_f_op_vec4_f32(trunc(global2[_wgslsmith_index_u32(var_2.a, 2u)]))), select(vec2<i32>(u_input.a, u_input.d.x) ^ u_input.d.yz, select(u_input.d.yx, vec2<i32>(28881i, -1i), vec2<bool>(false, false)), true), 16529i), ~u_input.c);
}

