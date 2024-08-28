struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false, false, -67945i), Struct_1(true, false, -1i), Struct_1(true, true, 2147483647i), Struct_1(true, false, -1i), Struct_1(false, true, -1i), Struct_1(false, false, 2147483647i), Struct_1(false, false, i32(-2147483648)), Struct_1(true, false, 2147483647i), Struct_1(false, false, 0i), Struct_1(false, true, 1i), Struct_1(true, true, -1i), Struct_1(true, false, -1i));

var<private> global1: array<vec4<bool>, 13>;

var<private> global2: u32;

var<private> global3: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(10282u, 15711u, 4066u), vec3<u32>(0u, 16939u, 0u), vec3<u32>(0u, 60458u, 0u), vec3<u32>(15445u, 31855u, 16454u), vec3<u32>(0u, 1u, 1u), vec3<u32>(29194u, 0u, 1u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(21775u, 4294967295u, 0u), vec3<u32>(1u, 1u, 44002u));

var<private> global4: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_1, 12>();
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_div_u32(60115u, 1u)), 4294967295u);
    global1 = array<vec4<bool>, 13>();
    let var_1 = Struct_1(arg_0.b, false, countOneBits(~u_input.c));
    let var_2 = 402f;
    return u_input.c;
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    var var_0 = -_wgslsmith_dot_vec4_i32(-(~vec4<i32>(1810i, u_input.b, 2147483647i, global4.c)) | reverseBits(vec4<i32>(21198i, 16107i, 2147483647i, u_input.b)), firstLeadingBit(~vec4<i32>(-30936i, global4.c, global4.c, u_input.c) << (~vec4<u32>(u_input.a, u_input.a, u_input.a, 8685u) % vec4<u32>(32u))));
    var var_1 = Struct_1(all(vec4<bool>(all(select(vec2<bool>(true, global4.b), vec2<bool>(true, global4.a), vec2<bool>(false, global4.b))), select(any(vec3<bool>(global4.a, false, false)), true, true), true, 38765i > (u_input.b ^ u_input.b))), any(select(vec3<bool>(global4.a, true, global4.a), vec3<bool>(global4.a, global4.a, true), !global4.b)) && ((true | (u_input.b != u_input.b)) && global4.a), -25869i);
    global2 = u_input.a;
    return min(_wgslsmith_sub_u32(u_input.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(5754u, 6852u), ~0u)) << (max(24044u, u_input.a) % 32u), ~15011u);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-754f)), _wgslsmith_f_op_f32(678f * -154f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1095f * -213f), _wgslsmith_f_op_f32(sign(928f))))), _wgslsmith_f_op_f32(-222f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1734f, 677f, global4.b)), _wgslsmith_f_op_f32(max(592f, 1783f))))), _wgslsmith_f_op_f32(max(609f, -336f))) + vec4<f32>(_wgslsmith_f_op_f32(-363f * -839f), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(446f * 1701f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(362f * 439f))) + -187f), -1569f));
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(884f, -1655f, _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-332f))), _wgslsmith_f_op_f32(-967f * _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 617f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(676f + -365f)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1942f, var_0.x, 297f, -151f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 627f) + vec4<f32>(var_0.x, var_0.x, 845f, -1000f)), !global1[_wgslsmith_index_u32(48970u, 13u)])) + vec4<f32>(_wgslsmith_f_op_f32(var_0.x * -436f), _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x)))));
    var var_1 = abs(select(_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -27625i, 6814i, abs(-1i), abs(2147483647i)), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(global4.c, -2147483647i, global4.c, 17362i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.c, -1i, 2147483647i, arg_0.c), vec4<i32>(-2147483647i, 55987i, -2147483647i, arg_0.c)))), vec4<i32>(_wgslsmith_add_i32(func_2(arg_0), ~26643i), 0i, ~arg_0.c << ((u_input.a ^ 4294967295u) % 32u), abs(func_2(Struct_1(true, true, 1i)))), !(_wgslsmith_div_i32(global4.c, -3578i) != -2147483647i)));
    global1 = array<vec4<bool>, 13>();
    global1 = array<vec4<bool>, 13>();
    return Struct_1(func_3() > 1u, true, 17211i);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1(Struct_1(any(select(select(vec3<bool>(false, false, global4.b), vec3<bool>(global4.b, true, true), vec3<bool>(false, global4.b, global4.b)), vec3<bool>(false, true, false), !vec3<bool>(global4.b, global4.a, true))), global4.a, _wgslsmith_mult_i32(global4.c, _wgslsmith_sub_i32(1i, global4.c))));
    let var_0 = Struct_1(global4.b, any(select(!vec2<bool>(global4.b, global4.a), select(vec2<bool>(global4.b, false), vec2<bool>(false, true), global4.b), select(vec2<bool>(global4.a, false), vec2<bool>(global4.a, true), global4.b))) | !global4.b, ~_wgslsmith_mult_i32(global4.c, u_input.b ^ -1i));
    global1 = array<vec4<bool>, 13>();
    let var_1 = !(!var_0.b);
    var var_2 = func_1(global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(4294967295u, reverseBits(4294967295u))), 12u)]);
    let var_3 = func_1(var_0);
    global2 = u_input.a;
    global4 = func_1(func_1(Struct_1(abs(global4.c) >= 1i, !(4294967295u >= u_input.a), var_2.c)));
    var var_4 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(~1u);
}

