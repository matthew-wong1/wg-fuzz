struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(17397u, 0u), vec2<u32>(62492u, 33008u), vec2<u32>(111908u, 11929u), vec2<u32>(31407u, 4294967295u), vec2<u32>(46290u, 49867u));

var<private> global1: array<Struct_3, 23>;

var<private> global2: array<vec3<i32>, 24>;

var<private> global3: array<u32, 20> = array<u32, 20>(49489u, 70253u, 4294967295u, 16556u, 47161u, 20162u, 0u, 4294967295u, 55104u, 33495u, 1u, 0u, 0u, 58174u, 1u, 0u, 20603u, 4294967295u, 0u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = Struct_2(arg_2, vec3<bool>(true, true, true), min(~_wgslsmith_add_vec4_i32(u_input.a, countOneBits(vec4<i32>(arg_3, arg_2.e, arg_2.e, arg_2.e))), countOneBits(vec4<i32>(arg_2.e, arg_2.e, u_input.a.x, u_input.a.x)) << (firstTrailingBit(u_input.c | vec4<u32>(54606u, 0u, arg_0.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], 20u)])) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(922f, _wgslsmith_f_op_f32(f32(-1f) * -654f), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, arg_1.c), true)))) + _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(max(1685f, var_0.a.d.x))))));
}

fn func_2(arg_0: f32) -> f32 {
    global2 = array<vec3<i32>, 24>();
    var var_0 = reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(global3[_wgslsmith_index_u32(14337u, 20u)], global3[_wgslsmith_index_u32(1u, 20u)], global3[_wgslsmith_index_u32(u_input.b.x, 20u)], global3[_wgslsmith_index_u32(u_input.b.x, 20u)])), reverseBits(35818u) << (u_input.b.x % 32u)) << (1u % 32u));
    var var_1 = u_input.c.zw;
    var var_2 = vec2<u32>(61237u, global3[_wgslsmith_index_u32(u_input.b.x, 20u)] ^ 44111u);
    let var_3 = Struct_2(Struct_1(0i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1197f, -1010f) * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(global3[_wgslsmith_index_u32(var_1.x, 20u)], -1087f, false), Struct_3(var_2.x, arg_0, true), Struct_1(-1i, -1000f, arg_0, vec4<f32>(arg_0, arg_0, arg_0, 1000f), 1i), u_input.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -523f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-551f, 1000f, arg_0, 183f), vec4<f32>(arg_0, arg_0, -701f, arg_0)))))), -countOneBits(-2147483647i)), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), vec3<bool>(true, true, true), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), any(vec4<bool>(true, true, true, false))))), _wgslsmith_sub_vec4_i32(firstTrailingBit(u_input.a), -(-u_input.a & countOneBits(u_input.a))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -968f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 5>();
    var var_0 = Struct_3(firstLeadingBit(~firstTrailingBit(~u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(975f)))))), false);
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(1u, 4294967295u)), 20u)], _wgslsmith_mod_u32(4294967295u, u_input.c.x | global3[_wgslsmith_index_u32(var_0.a, 20u)]), ~var_0.a), u_input.c.zzx), 23u)];
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 23u)];
    var var_3 = vec4<bool>(false, true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.a.x, u_input.a.x, -1i, 91666i))), _wgslsmith_f_op_f32(trunc(var_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1798f, -202f)), any(select(vec2<bool>(var_1.c, var_0.c), vec2<bool>(true, var_2.c), true)))) < _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-3241f - -1401f))), true);
    let var_4 = u_input.c;
    let var_5 = Struct_1(u_input.a.x, 905f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-786f * -1319f))))), -258f)), vec4<f32>(-1491f, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1621f), -1088f) * _wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(var_0.b * -550f))), var_1.b), ~1i);
    global1 = array<Struct_3, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.xyz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_5.d)) - var_5.d) - vec4<f32>(_wgslsmith_f_op_f32(-var_5.c), -940f, var_1.b, -1022f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_5.d.xy, var_5.d.xz), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, 210f), var_5.d.wz))))), _wgslsmith_dot_vec2_i32(select(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -72926i), vec2<i32>(var_5.a, var_5.e)), vec2<i32>(u_input.a.x, var_5.a), u_input.a.x < -44881i), firstTrailingBit(~u_input.a.yw)) ^ -63746i);
}

