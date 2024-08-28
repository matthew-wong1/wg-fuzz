struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

var<private> global1: array<i32, 27>;

var<private> global2: array<f32, 22> = array<f32, 22>(181f, 631f, 752f, -1810f, -1162f, 1414f, -470f, 1776f, -1701f, 349f, -1280f, 271f, -173f, 398f, 1460f, -2899f, -1544f, -1000f, -989f, -874f, 752f, 351f);

var<private> global3: vec2<u32>;

var<private> global4: array<u32, 27> = array<u32, 27>(62193u, 28460u, 0u, 34479u, 4294967295u, 10990u, 1u, 42092u, 9911u, 4294967295u, 0u, 1u, 1u, 91839u, 68494u, 4294967295u, 4294967295u, 1u, 4294967295u, 1u, 90660u, 19055u, 58901u, 42223u, 0u, 29104u, 0u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d, 27u)], 22u)], global2[_wgslsmith_index_u32(global3.x, 22u)], -804f, -393f)) - vec4<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], global2[_wgslsmith_index_u32(34901u, 22u)], false)), 1071f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_2.a, 27u)], 22u)]), _wgslsmith_f_op_f32(trunc(1000f))))));
    let var_1 = Struct_2(Struct_1(global3.x), abs(~u_input.e.x) & -6475i, _wgslsmith_f_op_f32(220f - global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3.x, 27u)], 22u)]), false);
    let var_2 = var_1.a;
    var var_3 = -var_1.b;
    let var_4 = 1791f;
    return firstTrailingBit(var_2.a);
}

fn func_3(arg_0: bool) -> i32 {
    global4 = array<u32, 27>();
    var var_0 = _wgslsmith_mult_vec2_u32(~(~vec2<u32>(~global4[_wgslsmith_index_u32(global3.x, 27u)], ~global4[_wgslsmith_index_u32(0u, 27u)])), vec2<u32>(~(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3.x, 27u)], 27u)], 27u)] >> (0u % 32u)), firstLeadingBit(global3.x)));
    let var_1 = Struct_1(~0u);
    global1 = array<i32, 27>();
    var var_2 = global2[_wgslsmith_index_u32(var_1.a, 22u)];
    return 4947i;
}

fn func_1() -> vec2<bool> {
    var var_0 = -_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(abs(1u), 27u)], i32(-1i) * -u_input.e.x) ^ 4319i;
    var var_1 = Struct_1(func_2(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, false)), -(u_input.e.zxz & _wgslsmith_mult_vec3_i32(u_input.e.zxx, vec3<i32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 27u)], 27u)], -23946i, global1[_wgslsmith_index_u32(7250u, 27u)]))), Struct_1(~0u)));
    var var_2 = -vec2<i32>(-1i, -_wgslsmith_mult_i32(2147483647i & u_input.e.x, u_input.c.x ^ u_input.c.x));
    var var_3 = Struct_2(Struct_1(~(~_wgslsmith_mult_u32(1u, 0u))), _wgslsmith_dot_vec2_i32(~u_input.e.zx, ~select(~u_input.c.zz, u_input.e.wy, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(18195u, 27u)], 22u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1541f))))), true);
    var_0 = -func_3(false);
    return !select(!(!vec2<bool>(true, var_3.d)), vec2<bool>(true, true), _wgslsmith_f_op_f32(step(-560f, 1781f)) <= global2[_wgslsmith_index_u32(u_input.d, 22u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, global4[_wgslsmith_index_u32(u_input.d, 27u)], global4[_wgslsmith_index_u32(4294967295u, 27u)], u_input.d), ~vec4<u32>(26049u, 103556u, 11484u, 0u)), u_input.b, vec4<bool>(true, true, true, true)));
    let var_1 = -703f;
    var var_2 = Struct_2(Struct_1(var_0.x), reverseBits(1i), _wgslsmith_f_op_f32(var_1 - var_1), true);
    global0 = array<vec3<bool>, 16>();
    var var_3 = !func_1();
    let var_4 = Struct_2(var_2.a, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b.xzz, u_input.b.yzx), var_0.x), 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.c * var_1))))), true);
    var_3 = !(!(!vec2<bool>(all(global0[_wgslsmith_index_u32(7306u, 16u)]), var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_div_i32(~1i, -13525i), 0i), _wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, global3.x), abs(~44000u)));
}

