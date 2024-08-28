struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    return Struct_1(firstLeadingBit(-vec4<i32>(-2147483647i, -22505i, 5722i, ~84819i)), -3613i, _wgslsmith_mult_vec2_i32(vec2<i32>(-6013i, ~u_input.d.x), -(_wgslsmith_add_vec2_i32(u_input.c.xz, u_input.c.xx) ^ u_input.d.zy)), vec2<f32>(_wgslsmith_f_op_f32(round(-194f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -235f))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: vec4<i32>) -> vec2<f32> {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1926f, -693f) + _wgslsmith_f_op_f32(855f + _wgslsmith_f_op_f32(step(1000f, arg_0.d.x))))));
    var var_1 = abs(-45469i);
    var var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(358f + var_0.a.x)));
    global0 = array<bool, 20>();
    let var_3 = Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.d.x))), arg_0.d.x)), var_2.d);
    return var_2.d;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.a.a.x) + arg_0.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x) - arg_0.b.x)), 510f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -374f) * -1139f) + 572f);
    global0 = array<bool, 20>();
    var_0 = _wgslsmith_f_op_f32(-arg_0.a.a.x);
    var var_1 = ~0u ^ abs(~firstTrailingBit(~u_input.b));
    return arg_0;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_4(_wgslsmith_sub_vec2_i32(-_wgslsmith_add_vec2_i32(u_input.c.xx, -vec2<i32>(5746i, arg_0.x)), ~select(arg_0, vec2<i32>(arg_1.c.x, 32104i), vec2<bool>(true, true))));
    global0 = array<bool, 20>();
    var var_1 = func_4(Struct_3(Struct_2(vec2<f32>(418f, 843f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d)), _wgslsmith_f_op_vec2_f32(func_3(func_2(arg_1.d.x), select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(5073u, 20u)]), global0[_wgslsmith_index_u32(u_input.b, 20u)]), ~vec4<u32>(u_input.b, 1u, 53435u, 13683u), vec4<i32>(arg_1.b, var_0.a.x, -2147483647i, -32497i) >> (vec4<u32>(u_input.a, 33175u, 78776u, 4294967295u) % vec4<u32>(32u))))))), select(select(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(3554u, 20u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 20u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 20u)], global0[_wgslsmith_index_u32(1u, 20u)])), vec2<bool>(false, false), global0[_wgslsmith_index_u32(u_input.b, 20u)]), select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 20u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 20u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 20u)])), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 20u)]), vec2<bool>(global0[_wgslsmith_index_u32(22596u, 20u)], true)), !(!global0[_wgslsmith_index_u32(1u, 20u)])), vec2<bool>(true, true), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(35684u), reverseBits(1u)), 20u)] & all(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(17666u, 20u)]))), firstLeadingBit(~var_0.a));
    let var_2 = Struct_4(select(u_input.c.yx, select(vec2<i32>(i32(-1i) * -39450i, 7224i ^ arg_1.a.x), ~u_input.d.yy, all(vec4<bool>(global0[_wgslsmith_index_u32(8828u, 20u)], true, false, global0[_wgslsmith_index_u32(24050u, 20u)]))), true));
    var var_3 = true;
    return min(~(u_input.e & _wgslsmith_div_u32(u_input.e, u_input.e)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 20>();
    let var_0 = vec2<bool>(global0[_wgslsmith_index_u32(~(func_1(~u_input.c.xx, Struct_1(vec4<i32>(0i, u_input.d.x, u_input.d.x, 2147483647i), u_input.d.x, vec2<i32>(-2147483647i, u_input.d.x), vec2<f32>(1160f, -1222f))) | _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 3472u, u_input.a), vec3<u32>(4294967295u, 76137u, u_input.a)), vec3<u32>(1u, 1u, 68542u))), 20u)], _wgslsmith_sub_u32(u_input.b, ~u_input.a >> (1u % 32u)) <= min(~reverseBits(u_input.e), 69671u));
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-144f, 861f, -102f, 334f) * vec4<f32>(1132f, 178f, 634f, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1962f, -1437f, -2816f, -1000f)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(443f, -728f, _wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_f_op_f32(round(508f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(426f, -1318f, -498f, -2343f) - vec4<f32>(-1857f, -931f, -837f, -1573f))), false))), u_input.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<i32>(~(-countOneBits(u_input.d.x)), 6151i, 2147483647i, -2147483647i));
}

