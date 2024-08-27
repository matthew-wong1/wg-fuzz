struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 22> = array<i32, 22>(2147483647i, -45655i, -1i, 1i, -64053i, 1i, -26761i, i32(-2147483648), 2915i, i32(-2147483648), 58526i, 2147483647i, 45521i, -21928i, 22575i, 32380i, 0i, 0i, 64826i, 1035i, 2151i, -3738i);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1() -> vec2<u32> {
    var var_0 = global0.a.c.x;
    let var_1 = firstLeadingBit(max(vec3<i32>(~(~1i), min(1i, _wgslsmith_mod_i32(u_input.b, u_input.b)), select(u_input.d, -14822i, global0.b.x) | ~0i), u_input.e));
    global1 = array<i32, 22>();
    var_0 = 646f;
    var var_2 = global0.b;
    return global0.a.a;
}

fn func_3() -> bool {
    let var_0 = -920f;
    global1 = array<i32, 22>();
    let var_1 = Struct_1(~vec2<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(2070u, u_input.c, 0u, u_input.c) << (vec4<u32>(130874u, global0.a.a.x, 19270u, u_input.c) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, u_input.c, 0u, u_input.a.x))), var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.c.x, global0.a.b, global0.a.b) - _wgslsmith_f_op_vec3_f32(global0.a.c + vec3<f32>(global0.a.c.x, var_0, 796f)))) - vec3<f32>(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - var_0), -1357f), 1f)));
    var var_2 = Struct_2(Struct_1(~abs(var_1.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.c.x, -261f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(650f * -1000f) + _wgslsmith_f_op_f32(min(global0.a.c.x, var_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-var_1.b)))), vec2<bool>(global0.a.a.x < (0u | _wgslsmith_div_u32(0u, var_1.a.x)), any(!select(vec4<bool>(true, true, global0.b.x, true), vec4<bool>(false, global0.b.x, global0.b.x, global0.b.x), true))));
    let var_3 = global0.a;
    return global0.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> f32 {
    let var_0 = select(firstLeadingBit(1u), 0u, !any(select(vec3<bool>(global0.b.x, false, global0.b.x), vec3<bool>(global0.b.x, false, global0.b.x), func_3())));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_u32(select(vec2<u32>(var_0, 1u), ~vec2<u32>(1u, 80484u), vec2<bool>(global0.b.x, false)), _wgslsmith_div_vec2_u32(u_input.a.zz << (vec2<u32>(0u, 10046u) % vec2<u32>(32u)), arg_0.a)), arg_1.x, global0.a.c), global0.b);
    global1 = array<i32, 22>();
    var var_2 = global0.a.c;
    var var_3 = global0.a;
    return -553f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~firstTrailingBit(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(476f + 611f)))), vec3<f32>(_wgslsmith_f_op_f32(global0.a.c.x + global0.a.b), _wgslsmith_f_op_f32(global0.a.c.x + _wgslsmith_f_op_f32(func_2(global0.a, global0.a.c.yx, global1[_wgslsmith_index_u32(1u, 22u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c.x + global0.a.c.x) + _wgslsmith_f_op_f32(abs(295f))), 315f)));
    var var_1 = global0.b.x;
    let var_2 = Struct_2(global0.a, !global0.b);
    var_0 = var_2.a;
    let var_3 = var_2;
    global0 = Struct_2(var_3.a, global0.b);
    global0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~0u, var_0.a.x | 0u, u_input.a.x, 0u), firstTrailingBit(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(u_input.e), u_input.e), vec3<i32>(min(global1[_wgslsmith_index_u32(var_0.a.x, 22u)], -2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(85328u, 36332u), 22u)], global1[_wgslsmith_index_u32(var_2.a.a.x ^ u_input.c, 22u)]))), _wgslsmith_mult_vec4_u32(~(~(vec4<u32>(var_0.a.x, 15521u, 82171u, 45064u) | vec4<u32>(0u, var_0.a.x, var_0.a.x, u_input.c))), ~(~abs(vec4<u32>(11526u, var_0.a.x, var_2.a.a.x, 51706u)))), ~select(~vec3<i32>(global1[_wgslsmith_index_u32(var_0.a.x, 22u)], global1[_wgslsmith_index_u32(var_2.a.a.x, 22u)], -19026i), u_input.e, false), select(vec2<i32>(-reverseBits(2147483647i), -_wgslsmith_add_i32(u_input.d, 1037i)), vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(26712i, 1233i, u_input.b), vec3<i32>(37922i, global1[_wgslsmith_index_u32(79215u, 22u)], -1i)), 0i), !(!vec2<bool>(false, var_3.b.x))));
}

