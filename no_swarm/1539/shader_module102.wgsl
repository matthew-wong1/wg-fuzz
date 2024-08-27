struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = u_input.e;
    let var_1 = arg_0;
    let var_2 = true;
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    return abs(u_input.e.zzw);
}

fn func_2() -> Struct_2 {
    let var_0 = ~(u_input.d.zwz >> (_wgslsmith_mult_vec3_u32(func_3(Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)]), Struct_2(u_input.e.x)), u_input.b) % vec3<u32>(32u)));
    global0 = array<u32, 30>();
    let var_1 = Struct_2(_wgslsmith_div_u32(reverseBits(_wgslsmith_sub_u32(u_input.d.x, var_0.x)) | ~firstTrailingBit(30648u), 0u));
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(abs(~u_input.c)), 6189i, ~u_input.c, u_input.a), vec4<i32>(~(min(-2147483647i, 22635i) << (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 30u)], 40567u) % 32u)), countOneBits(u_input.a), u_input.c, u_input.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1043f))), 1934f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -733f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(959f, -343f)) + _wgslsmith_f_op_f32(f32(-1f) * -212f)))));
    return var_1;
}

fn func_4(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-827f + -409f);
    let var_1 = Struct_3(2147483647i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, var_0))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(-1439f, -595f)))))), -1926f, Struct_1(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    var var_2 = Struct_3(-_wgslsmith_mult_i32(firstTrailingBit(-u_input.a), select(27498i, u_input.a, true) & -1i), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(534f)) * 176f) - _wgslsmith_f_op_f32(step(var_1.d.a, 2122f))), var_1.d);
    var_2 = var_1;
    global0 = array<u32, 30>();
    return select(_wgslsmith_dot_vec4_u32(u_input.e, firstTrailingBit(min(vec4<u32>(global0[_wgslsmith_index_u32(1u, 30u)], 7108u, 0u, 58988u), u_input.d >> (u_input.e % vec4<u32>(32u))))), 1u, true);
}

fn func_1() -> StorageBuffer {
    var var_0 = vec2<u32>(~func_4(func_2()), ~_wgslsmith_dot_vec4_u32(u_input.e, u_input.d));
    var_0 = _wgslsmith_div_vec2_u32(~vec2<u32>(~(~global0[_wgslsmith_index_u32(u_input.d.x, 30u)]), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, var_0.x), 30u)], 30u)]), func_3(Struct_2(1u), func_2()).yy);
    global0 = array<u32, 30>();
    var_0 = u_input.e.wy;
    var var_1 = _wgslsmith_clamp_vec4_u32(countOneBits(~u_input.e), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.d.xxw, ~vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11863u, 30u)], 30u)])), ~firstTrailingBit(~37139u), ~(~6206u >> (var_0.x % 32u)), 59516u & u_input.d.x), vec4<u32>(~u_input.b.x, countOneBits(_wgslsmith_div_u32(~23746u, u_input.b.x)), u_input.b.x, ~43003u));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1753f + -224f), 1465f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-649f)), _wgslsmith_f_op_f32(-167f * -1361f), true)), 1f)), var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(8806i, u_input.a, 111450i), _wgslsmith_div_vec3_i32(~(vec3<i32>(1i, 6837i, u_input.c) << (vec3<u32>(var_1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 30u)], 30u)], 1u) % vec3<u32>(32u))), vec3<i32>(-4750i, 0i, -2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(494f, -734f, 1281f)))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -126f), -859f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(918f)), _wgslsmith_div_f32(406f, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(655f, -2866f, -1556f, 1394f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

