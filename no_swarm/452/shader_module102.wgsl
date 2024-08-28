struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-39342i, 22792u, vec2<i32>(-45097i, 13667i), true), Struct_1(i32(-2147483648), 1u, vec2<i32>(2147483647i, 28627i), false), Struct_1(27471i, 0u, vec2<i32>(-31713i, 42587i), true), Struct_1(-1i, 130596u, vec2<i32>(1i, 4039i), true), Struct_1(1i, 1u, vec2<i32>(14309i, 11420i), false), Struct_1(2147483647i, 38279u, vec2<i32>(27784i, -85235i), false), Struct_1(-22382i, 4294967295u, vec2<i32>(i32(-2147483648), -1i), true), Struct_1(2147483647i, 48280u, vec2<i32>(-110i, -38068i), true), Struct_1(-26432i, 4294967295u, vec2<i32>(-1i, 88001i), true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: bool, arg_3: i32) -> i32 {
    let var_0 = u_input.a.x << ((firstTrailingBit(3245u) | 70860u) % 32u);
    global1 = array<Struct_1, 9>();
    var var_1 = ~_wgslsmith_mod_vec3_u32(min(~vec3<u32>(global0.b, u_input.b.x, 47321u), ~(~vec3<u32>(global0.b, global0.b, global0.b))), ~_wgslsmith_div_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 29151u), u_input.b)));
    var var_2 = -1235f == _wgslsmith_f_op_f32(arg_0 - -967f);
    var_2 = arg_2;
    return arg_1.x;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: bool) -> i32 {
    global0 = Struct_1(-_wgslsmith_dot_vec2_i32(global0.c, vec2<i32>(func_3(798f, u_input.c, arg_2, 26024i), firstLeadingBit(20591i))), firstTrailingBit(min(73980u, arg_0) & ~0u) ^ ~u_input.b.x, vec2<i32>(_wgslsmith_mult_i32(-3459i, -global0.c.x) & u_input.c.x, reverseBits(_wgslsmith_mod_i32(-global0.a, 2147483647i))), arg_2 || !(!(global0.a == 54414i)));
    global1 = array<Struct_1, 9>();
    var var_0 = global1[_wgslsmith_index_u32(global0.b, 9u)];
    let var_1 = firstLeadingBit(global0.a);
    global0 = Struct_1(min(2147483647i, var_1), _wgslsmith_dot_vec4_u32(vec4<u32>(1448u, firstTrailingBit(u_input.b.x), var_0.b, global0.b), vec4<u32>(select(0u, 81480u, false) ^ select(56642u, 1u, true), 4294967295u, 40055u, _wgslsmith_mult_u32(reverseBits(12490u), 1u))), firstLeadingBit(firstTrailingBit(firstLeadingBit(vec2<i32>(2147483647i, 9368i)))) << (~abs(u_input.b.yz) % vec2<u32>(32u)), !(_wgslsmith_f_op_f32(ceil(1546f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1942f)));
    return var_0.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    global0 = Struct_1(-arg_2.x, 0u, vec2<i32>(-arg_2.x, u_input.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, global0.d)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    let var_0 = -(~u_input.c);
    var var_1 = all(vec2<bool>(!(!(!global0.d)), !any(!vec4<bool>(false, global0.d, true, true))));
    global1 = array<Struct_1, 9>();
    global0 = Struct_1(max(~19165i, _wgslsmith_sub_i32(arg_1 | u_input.c.x, (global0.a << (global0.b % 32u)) | arg_2.x)), global0.b, arg_2.xx, any(!select(vec2<bool>(true, global0.d), !vec2<bool>(global0.d, global0.d), select(false, global0.d, global0.d))));
    return Struct_1(2147483647i, min(global0.b, 1u), reverseBits(reverseBits(vec2<i32>(_wgslsmith_dot_vec4_i32(arg_2, arg_2), ~var_0.x))), false);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<i32> {
    global1 = array<Struct_1, 9>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-470f, -1675f, 416f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(568f, 365f, -1172f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-647f, _wgslsmith_f_op_f32(round(1194f)), _wgslsmith_f_op_f32(349f - -188f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1009f, 367f, -720f))))));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, ~u_input.a.x), -(~global0.c.x)), u_input.a), arg_3.x, u_input.c.yy, global0.d);
    var var_2 = var_1;
    var_2 = func_4(var_0.yx, global0.a, vec4<i32>(50392i, -1i, firstLeadingBit(func_2(_wgslsmith_sub_u32(arg_3.x, arg_0.x), !vec4<bool>(false, var_1.d, arg_2.d, true), var_0.x < 310f)), -20786i));
    return firstLeadingBit(abs(-vec2<i32>(-2147483647i, ~global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 51536i;
    global1 = array<Struct_1, 9>();
    let var_1 = Struct_1(-1i, u_input.b.x, ~func_1(~(u_input.b & vec3<u32>(0u, u_input.b.x, 0u)), true, Struct_1(max(-27688i, u_input.c.x), global0.b, firstLeadingBit(vec2<i32>(u_input.c.x, -2147483647i)), !global0.d), _wgslsmith_mod_vec3_u32(~u_input.b, ~vec3<u32>(0u, 1u, 4294967295u))), any(vec2<bool>(global0.d, global0.d)));
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(949f, _wgslsmith_div_f32(-885f, _wgslsmith_f_op_f32(f32(-1f) * -1284f))) * vec2<f32>(1968f, 1401f)), -u_input.a.x, -vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(global0.c >> (vec2<u32>(var_1.b, 1u) % vec2<u32>(32u)), -vec2<i32>(u_input.c.x, global0.a)), abs(1i), func_3(-479f, u_input.c, var_1.b <= 1u, var_1.a)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(405f)))), -233f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -873f), _wgslsmith_f_op_f32(f32(-1f) * -269f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-409f - -1969f), _wgslsmith_f_op_f32(-824f + 754f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-333f, -814f), -405f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(select(u_input.b & u_input.b, _wgslsmith_div_vec3_u32(vec3<u32>(52269u, 1u, var_1.b), vec3<u32>(u_input.b.x, 57733u, 10888u)), select(vec3<bool>(var_2.d, var_2.d, false), vec3<bool>(false, var_2.d, var_2.d), vec3<bool>(false, true, true)))), _wgslsmith_div_vec3_i32(abs(vec3<i32>(~global0.a, min(u_input.c.x, -8435i), var_1.a)), _wgslsmith_div_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_2.c.x, 15590i), vec3<i32>(22118i, 1i, 45579i)), u_input.c)));
}

