struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<bool>(false, true, false, false), true, 550f), Struct_1(vec4<bool>(false, true, false, false), true, 502f), Struct_1(vec4<bool>(false, true, true, true), false, 477f), Struct_1(vec4<bool>(true, true, false, true), true, -1251f), Struct_1(vec4<bool>(false, true, true, false), true, 669f), Struct_1(vec4<bool>(true, false, false, true), false, -764f), Struct_1(vec4<bool>(true, false, false, false), false, 400f), Struct_1(vec4<bool>(false, true, true, false), true, 506f), Struct_1(vec4<bool>(false, true, true, false), true, 1394f), Struct_1(vec4<bool>(false, false, true, true), true, 1097f), Struct_1(vec4<bool>(false, false, true, true), true, 1000f), Struct_1(vec4<bool>(false, true, false, false), true, 1399f), Struct_1(vec4<bool>(true, false, false, false), false, -1000f), Struct_1(vec4<bool>(false, true, true, false), true, 1343f), Struct_1(vec4<bool>(false, true, false, true), false, 1135f), Struct_1(vec4<bool>(true, false, false, true), false, 570f), Struct_1(vec4<bool>(false, true, true, false), false, 1000f), Struct_1(vec4<bool>(false, false, true, false), true, 198f), Struct_1(vec4<bool>(false, true, false, true), false, -813f), Struct_1(vec4<bool>(true, false, false, false), false, 213f), Struct_1(vec4<bool>(false, false, true, false), false, 511f), Struct_1(vec4<bool>(false, true, true, false), false, -507f), Struct_1(vec4<bool>(true, true, true, true), true, 203f), Struct_1(vec4<bool>(true, true, false, false), true, -1223f), Struct_1(vec4<bool>(false, true, true, false), true, 1302f), Struct_1(vec4<bool>(true, false, false, false), false, 1469f), Struct_1(vec4<bool>(false, true, true, true), true, 379f), Struct_1(vec4<bool>(true, true, false, false), true, -1754f));

var<private> global1: u32;

var<private> global2: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = u_input.c.x;
    var var_1 = -2147483647i;
    let var_2 = vec2<bool>(true, false);
    var var_3 = global0[_wgslsmith_index_u32(u_input.d, 28u)];
    var var_4 = abs(abs(vec4<i32>(reverseBits(var_0 ^ u_input.c.x), -var_0, min(var_0, -1i), var_0 >> (42256u % 32u))));
    return ~_wgslsmith_sub_vec3_u32(select(vec3<u32>(72103u, 0u, ~u_input.b), (vec3<u32>(u_input.b, 50849u, 65039u) >> (vec3<u32>(1u, 12176u, u_input.b) % vec3<u32>(32u))) >> (~vec3<u32>(u_input.a.x, 43611u, 16520u) % vec3<u32>(32u)), vec3<bool>(!var_2.x, var_3.b, false | var_3.b)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.d, u_input.b), vec3<u32>(4294967295u, u_input.d, 18482u) << (vec3<u32>(80765u, u_input.d, 4294967295u) % vec3<u32>(32u))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = 8471u;
    let var_1 = _wgslsmith_div_i32(u_input.c.x, u_input.c.x);
    global2 = arg_2.a.x;
    var var_2 = Struct_1(!arg_2.a, !(_wgslsmith_f_op_f32(step(-2197f, _wgslsmith_f_op_f32(-arg_0))) == _wgslsmith_f_op_f32(-215f * _wgslsmith_f_op_f32(sign(293f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 502f)))));
    var var_3 = Struct_1(!select(vec4<bool>(select(false, arg_2.a.x, true), !var_2.a.x, true, true), select(var_2.a, select(vec4<bool>(true, var_2.b, true, arg_2.b), vec4<bool>(var_2.b, arg_2.b, false, false), var_2.b), var_2.b), !select(var_2.a, vec4<bool>(true, false, arg_2.b, var_2.b), true)), any(vec4<bool>(false, var_2.a.x, any(arg_2.a.xyw), all(vec2<bool>(var_2.a.x, arg_2.a.x)))), _wgslsmith_f_op_f32(-arg_2.c));
    return var_3.b;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> u32 {
    global2 = any(!(!vec2<bool>(u_input.c.x > -21902i, any(vec3<bool>(arg_0, false, true)))));
    let var_0 = Struct_1(!vec4<bool>(true, any(select(vec4<bool>(false, true, arg_0, false), vec4<bool>(false, false, arg_0, arg_0), arg_0)), arg_0, any(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, true, true), vec3<bool>(false, arg_0, true)))), arg_0, -1148f);
    var var_1 = Struct_1(var_0.a, func_3(var_0.c, -116f, Struct_1(var_0.a, arg_0, -417f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(trunc(var_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -699f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(trunc(var_0.c)))))));
    let var_2 = select(!select(vec2<bool>(var_0.a.x, all(var_0.a.xx)), !var_1.a.xz, true), select(select(!(!vec2<bool>(arg_0, true)), var_0.a.ww, all(vec2<bool>(var_1.a.x, arg_0)) | false), vec2<bool>(any(select(vec3<bool>(true, var_0.b, var_1.a.x), var_0.a.wzy, vec3<bool>(var_0.a.x, false, true))), !(!var_1.b)), arg_0), var_0.a.ww);
    global1 = 50904u;
    return ~_wgslsmith_add_u32(u_input.a.x, firstLeadingBit(~(~u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = 176f;
    var var_2 = ~vec4<u32>(func_2(true, func_1(vec3<f32>(1000f, 841f, -1759f))), 54947u, ~0u, u_input.d);
    var var_3 = vec3<u32>(~(~func_2(true, vec3<u32>(var_2.x, 25484u, 51824u)) << ((firstTrailingBit(85342u) ^ min(u_input.d, u_input.a.x)) % 32u)), u_input.d, ~abs(~_wgslsmith_div_u32(49756u, 1u)));
    var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(0u, ~_wgslsmith_div_u32(var_2.x, ~var_2.x), var_2.x & _wgslsmith_div_u32(var_2.x, ~u_input.b)), var_2.yww);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(abs(_wgslsmith_add_vec3_i32(~var_0, ~u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(select(-9347i, var_0.x, true), 13979i, var_0.x), vec3<i32>(u_input.c.x, -1i, u_input.c.x) << (~var_2.xyz % vec3<u32>(32u)))));
}

