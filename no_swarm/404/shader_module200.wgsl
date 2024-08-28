struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<u32>) -> Struct_1 {
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    let var_0 = -58616i;
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>((23887i ^ firstTrailingBit(-85188i)) << (arg_3.x % 32u), 2147483647i, i32(-1i) * -1i), _wgslsmith_mult_vec3_i32(-(vec3<i32>(-1i, 29853i, 0i) & vec3<i32>(-6848i, arg_1.a, var_0)), vec3<i32>(-1i, ~(-1i), global0[_wgslsmith_index_u32(0u, 29u)] ^ var_0)) >> ((countOneBits(reverseBits(vec3<u32>(u_input.b, arg_3.x, 79363u))) >> (vec3<u32>(arg_2.x, 0u, firstLeadingBit(1u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return arg_1;
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1892f, _wgslsmith_f_op_f32(1121f - 1229f), -1940f, _wgslsmith_f_op_f32(-745f - 752f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1077f, -1000f, -1001f, -331f), vec4<f32>(1125f, 175f, -981f, -1191f), true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-174f, -511f, 342f, 1005f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-428f, -258f, -1150f, -1019f) + vec4<f32>(-1000f, 502f, 1227f, -366f))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-356f)), _wgslsmith_f_op_f32(387f * -1004f), -2149f, _wgslsmith_f_op_f32(min(-864f, -643f)))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, false, false)))), vec4<f32>(405f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-445f * -701f) - 705f)), _wgslsmith_f_op_f32(936f - _wgslsmith_f_op_f32(-2751f + _wgslsmith_f_op_f32(ceil(-644f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-684f - _wgslsmith_f_op_f32(-1239f * -178f)) + -1334f)));
    let var_1 = vec3<bool>(!(var_0.x == -2106f), true, true);
    let var_2 = reverseBits(vec3<i32>(~_wgslsmith_div_i32(global0[_wgslsmith_index_u32(reverseBits(0u), 29u)], 0i ^ global0[_wgslsmith_index_u32(8980u, 29u)]), ~(reverseBits(1i) << (abs(arg_0) % 32u)), global0[_wgslsmith_index_u32(arg_0, 29u)]));
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    return var_2.x;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_3(vec4<i32>(select(1i, -13685i & func_3(u_input.b), all(vec3<bool>(false, false, true))), global0[_wgslsmith_index_u32(51960u, 29u)], -33349i, func_3(_wgslsmith_mult_u32(select(42244u, u_input.a.x, true), 72557u))));
    global0 = array<i32, 29>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + 1f);
    let var_2 = ~(~abs(vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, u_input.a.x), vec3<u32>(1u, arg_2.x, 12489u)), 16458u, 8572u)));
    return -1396f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1314f, Struct_1(_wgslsmith_mult_i32(-62588i & _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(37433u, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(15182u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], 0i, -31678i, -1i)), -global0[_wgslsmith_index_u32(~1u, 29u)])), _wgslsmith_add_vec2_u32(u_input.a, _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(48985u, 7652u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.a.x), u_input.a, vec2<u32>(1u, u_input.a.x)) | vec2<u32>(76010u, 0u))), max(firstTrailingBit(~_wgslsmith_div_vec2_u32(u_input.a, u_input.a)), u_input.a));
    global0 = array<i32, 29>();
    let var_1 = true;
    var var_2 = ~(~_wgslsmith_sub_i32(firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(10713u, u_input.b), 29u)]), global0[_wgslsmith_index_u32(4294967295u, 29u)]));
    let var_3 = ~947i;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1481f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(672f, Struct_3(vec4<i32>(-1i, -14160i, global0[_wgslsmith_index_u32(u_input.b, 29u)], var_3)), vec2<u32>(u_input.b, u_input.a.x)))))), _wgslsmith_f_op_f32(max(387f, -955f)), vec3<f32>(-642f, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(370f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-965f + -1504f)))));
}

