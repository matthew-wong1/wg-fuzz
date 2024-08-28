struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15>;

var<private> global1: array<Struct_5, 1> = array<Struct_5, 1>(Struct_5(Struct_1(321f, vec4<bool>(false, true, true, false)), Struct_3(21903i, -777f, false, 1u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: bool, arg_3: f32) -> f32 {
    global0 = array<vec4<i32>, 15>();
    let var_0 = _wgslsmith_f_op_f32(trunc(arg_3));
    global1 = array<Struct_5, 1>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-109f, _wgslsmith_f_op_f32(max(var_0, 1760f))))));
    let var_2 = 1i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-182f * var_0)) - var_1.x))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1159f) * _wgslsmith_f_op_f32(f32(-1f) * -393f))), -1727f)));
    global1 = array<Struct_5, 1>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(func_3(1u, firstTrailingBit(~(vec4<i32>(-36558i, u_input.b, u_input.a.x, 2147483647i) | vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.b))), true, -810f)), ~max((global0[_wgslsmith_index_u32(1u, 15u)] ^ vec4<i32>(u_input.a.x, -2147483647i, -30318i, u_input.b)) << (vec4<u32>(u_input.c, 71722u, 0u, 0u) % vec4<u32>(32u)), reverseBits(vec4<i32>(-16345i, -48805i, -2147483647i, -54366i))));
    let var_2 = 3261u;
    let var_3 = 224f;
    return Struct_2(var_1.a, -(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, 0u, 882u), vec4<u32>(var_2, u_input.c, var_2, var_2)), 15u)] ^ var_1.b) & reverseBits(vec4<i32>(u_input.a.x, 11894i, -2147483647i, var_1.b.x)));
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    var var_0 = func_2();
    var_0 = func_2();
    return 29570i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -244f)))), vec4<i32>(func_1(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 87078u, u_input.c), vec3<u32>(0u, 43241u, 1u))), 0i, u_input.a.x, ~_wgslsmith_add_i32(1i, 20934i)) | _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(u_input.c), min(u_input.c, u_input.c)), 15u)], _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(0u, 15u)], -vec4<i32>(399i, 0i, u_input.a.x, 0i))));
    var_1 = func_2();
    let var_2 = -19133i | _wgslsmith_mod_i32(u_input.b, 58012i);
    var var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.c, 889u, u_input.c, 17893u), vec4<u32>(u_input.c, 1u, 2471u, u_input.c), true), select(vec4<u32>(3122u, u_input.c, 10881u, u_input.c), vec4<u32>(u_input.c, 1u, 0u, 30858u), vec4<bool>(false, var_0, true, false))), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 1u, 70160u), ~vec4<u32>(u_input.c, u_input.c, u_input.c, 26358u))), _wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), min(~(~firstLeadingBit(global0[_wgslsmith_index_u32(u_input.c, 15u)])), countOneBits(_wgslsmith_mod_vec4_i32(select(vec4<i32>(2147483647i, var_2, 43790i, 1i), var_1.b, var_0), vec4<i32>(-1i, -1i, 1i, var_1.b.x)))));
}

