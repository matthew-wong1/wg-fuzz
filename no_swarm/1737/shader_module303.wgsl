struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(45050u, 1u, 1u, 27114u, 42018u);

var<private> global1: Struct_2 = Struct_2(Struct_1(1000f, 26297i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    global1 = Struct_2(global1.a);
    global0 = array<u32, 5>();
    global1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a + -873f) - _wgslsmith_f_op_f32(trunc(global1.a.a))), global1.a.a), _wgslsmith_div_i32(u_input.c.x, max(u_input.c.x, -18375i))));
    global0 = array<u32, 5>();
    var var_0 = true;
    return Struct_3(!(!arg_0));
}

fn func_1(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = firstTrailingBit(80770u);
    let var_1 = func_2(arg_0.xzx);
    var var_2 = Struct_2(Struct_1(1000f, i32(-1i) * -_wgslsmith_mult_i32(global1.a.b, -1i)));
    var var_3 = ~(vec3<u32>(1u & var_0, ~_wgslsmith_dot_vec3_u32(u_input.b.xww, vec3<u32>(4294967295u, u_input.b.x, 59423u)), ~var_0) ^ u_input.b.www);
    global0 = array<u32, 5>();
    return arg_0.xzw;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = Struct_1(552f, ~(-5229i));
    global1 = Struct_2(arg_0);
    global0 = array<u32, 5>();
    var var_1 = arg_2;
    global1 = Struct_2(var_0);
    return Struct_2(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(global1.a, !select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), Struct_3(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), func_1(vec4<bool>(true, true, true, true)), vec3<bool>(true, all(vec2<bool>(false, false)), true))));
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(min(~u_input.a.x, ~u_input.b.x), 0u)), ~(~(~vec2<u32>(1u, 4294967295u))) << (~(_wgslsmith_mod_vec2_u32(u_input.a, u_input.b.yx) & ~vec2<u32>(0u, 1u)) % vec2<u32>(32u)));
    let var_2 = select(vec4<bool>(true, any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true))), true, false), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true);
    global0 = array<u32, 5>();
    var var_3 = var_0;
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    let var_4 = global0[_wgslsmith_index_u32(~countOneBits(~(global0[_wgslsmith_index_u32(var_1.x, 5u)] >> (u_input.a.x % 32u))), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer((~(vec3<i32>(1i, u_input.c.x, u_input.c.x) | vec3<i32>(u_input.c.x, global1.a.b, 2147483647i)) << ((u_input.b.www & max(vec3<u32>(var_1.x, u_input.a.x, 33999u), u_input.b.xzx)) % vec3<u32>(32u))) ^ -(~(vec3<i32>(1i, global1.a.b, 1i) >> (u_input.b.xzz % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.a.a, _wgslsmith_f_op_f32(443f - _wgslsmith_f_op_f32(floor(1093f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.a)) * _wgslsmith_f_op_f32(1179f - 1341f)), var_0.a.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a, var_0.a.a, 390f, -1219f) - vec4<f32>(var_3.a.a, var_0.a.a, global1.a.a, 681f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.a.a, var_3.a.a, global1.a.a, var_3.a.a), vec4<f32>(global1.a.a, 589f, var_0.a.a, global1.a.a)))))))));
}

