struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 25> = array<f32, 25>(703f, -291f, 916f, 925f, -674f, -103f, 2711f, 148f, -544f, -1000f, -354f, -1481f, -155f, -131f, -2007f, 943f, 954f, -932f, 228f, 746f, -915f, 1000f, 942f, -716f, -243f);

var<private> global2: array<f32, 8>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: vec2<f32>, arg_3: vec3<bool>) -> bool {
    global1 = array<f32, 25>();
    global2 = array<f32, 8>();
    global1 = array<f32, 25>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1789f, 1890f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))), _wgslsmith_f_op_f32(trunc(148f))));
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(-1382i, select(u_input.b.x ^ arg_0.c, u_input.b.x, false) | (7690i & u_input.b.x)), vec2<i32>(abs(abs(countOneBits(-76856i))), select(~min(u_input.b.x, -25655i), _wgslsmith_add_i32(arg_0.a.a, 1i) | 2147483647i, arg_0.d)));
    return false;
}

fn func_2() -> vec3<bool> {
    return vec3<bool>(func_3(Struct_5(Struct_1(max(-23576i, -1i)), _wgslsmith_sub_i32(u_input.b.x, 38445i) >= _wgslsmith_div_i32(u_input.b.x, u_input.b.x), u_input.b.x | u_input.b.x, global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -452f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2141f, global1[_wgslsmith_index_u32(u_input.c, 25u)]))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.c, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1200f, -499f)))), !select(vec3<bool>(false, false, true), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true), false), 1u == u_input.a.x)), true, true);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> Struct_5 {
    global1 = array<f32, 25>();
    let var_0 = 9720i;
    var var_1 = Struct_3(vec2<f32>(global2[_wgslsmith_index_u32(1u, 8u)], -909f), 1264f, arg_0);
    let var_2 = -852f;
    var var_3 = u_input.a >> (~select(u_input.a, ~u_input.a, func_2()) % vec3<u32>(32u));
    return Struct_5(arg_0, true, -var_1.c.a, true);
}

fn func_4(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_3(arg_2.zx, -1000f, func_1(func_1(Struct_1(1i), arg_2.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_2.yx - vec2<f32>(global2[_wgslsmith_index_u32(5863u, 8u)], global2[_wgslsmith_index_u32(53758u, 8u)]))))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1274f, 276f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(arg_1.x, 25u)], -1183f), arg_2.ww, vec2<bool>(global0.x, global0.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2736f, 237f))))).a);
    var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -374f), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.x, 36095u), 25u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -843f))) - 1f), func_1(Struct_1(-u_input.b.x), _wgslsmith_div_f32(var_0.b, 630f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(984f, -651f), var_0.a, vec2<bool>(arg_0.b, true)))), vec2<f32>(arg_2.x, -547f)))).a);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(0u, 8u)], -830f, true)), 1234f) * _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(arg_2.x - var_0.b))))), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(106184u, arg_1.x, arg_0.d), ~abs(u_input.a.x)), 25u)])), 495f);
    let var_2 = select(!(!select(!vec4<bool>(arg_0.b, true, false, global0.x), !vec4<bool>(true, false, true, global0.x), !arg_0.d)), select(!vec4<bool>(global0.x, arg_0.d, true, true), !select(select(vec4<bool>(arg_0.b, false, false, arg_0.b), vec4<bool>(false, global0.x, arg_0.b, arg_0.d), vec4<bool>(true, global0.x, false, false)), select(vec4<bool>(true, false, false, global0.x), vec4<bool>(arg_0.d, true, false, arg_0.d), vec4<bool>(global0.x, arg_0.d, false, global0.x)), global0.x), true), true);
    global0 = vec3<bool>(-2147483647i > (2147483647i >> (~firstTrailingBit(10071u) % 32u)), !arg_0.b, false);
    return Struct_1(_wgslsmith_dot_vec2_i32(-abs(u_input.b.zy), vec2<i32>(arg_0.c, 13396i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(Struct_1(u_input.b.x), _wgslsmith_f_op_f32(select(-339f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.c, 25u)]))), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-992f, global2[_wgslsmith_index_u32(u_input.a.x, 8u)]))))), vec4<u32>(43312u, 43662u, u_input.a.x, ~_wgslsmith_dot_vec2_u32(u_input.a.yz, ~u_input.a.xz)), vec4<f32>(_wgslsmith_f_op_f32(174f * global1[_wgslsmith_index_u32(29328u, 25u)]), global2[_wgslsmith_index_u32(34006u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(60425u | u_input.c, 25u)] + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(u_input.c, 25u)])))));
    global1 = array<f32, 25>();
    let var_1 = Struct_2(Struct_1(23742i));
    global1 = array<f32, 25>();
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_dot_vec2_u32(u_input.a.yy, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zz), ~u_input.a.xz >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.a.x), u_input.a.xy) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-532f))))), ~1i, var_0.a);
}

