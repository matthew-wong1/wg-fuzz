struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    let var_0 = vec3<bool>(true, arg_1.a.b.x > -44773i, (45177u <= _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 0u))) != (true != (arg_0.x && any(vec4<bool>(arg_0.x, arg_2.c.x, arg_1.a.c.x, false)))));
    return true;
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    let var_0 = arg_3.a.b;
    let var_1 = arg_3.a;
    var var_2 = abs(-var_1.b.zxx) | arg_3.a.a;
    return _wgslsmith_mult_u32(u_input.b.x, abs(arg_0));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> f32 {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    var var_0 = arg_0;
    var var_1 = 3173u;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-230f))))), -514f));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec2<bool> {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    var var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -883f), _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(~func_3(~u_input.b.x, arg_0.a.a.zx & arg_0.a.a.yy, arg_0.a.b.xx, Struct_2(arg_0.a, arg_0.b)), 20u)], ~max(1u, _wgslsmith_div_u32(1u, 4294967295u)), arg_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-946f))))));
    var_0 = vec4<f32>(-1004f, -846f, 1348f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(abs(1000f))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(ceil(var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(347f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-357f * 348f) * _wgslsmith_f_op_f32(var_0.x + -814f))))));
    return select(vec2<bool>(any(select(select(vec2<bool>(arg_0.a.c.x, arg_2.a.c.x), arg_0.a.c, false), vec2<bool>(arg_2.b.x, arg_0.b.x), select(vec2<bool>(false, arg_0.a.c.x), arg_2.a.c, arg_0.b.x))), true), select(arg_0.a.c, arg_2.b, any(arg_2.b)), !arg_2.a.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec3<i32>(~_wgslsmith_add_i32(u_input.a, 0i), -125522i << (1u % 32u), u_input.a), min(~(vec4<i32>(u_input.a, 1i, -2147483647i, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, -1i, 1i)), -(~vec4<i32>(0i, u_input.a, 35051i, u_input.a))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), any(vec4<bool>(false, false, false, true))), vec2<bool>(true, false), vec2<bool>(func_1(vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(u_input.b.x, 20u)], Struct_1(vec3<i32>(1i, u_input.a, u_input.a), vec4<i32>(u_input.a, 1i, 76699i, -30948i), vec2<bool>(false, false)), vec4<i32>(0i, u_input.a, u_input.a, 19708i)), all(vec3<bool>(true, false, false))))), !select(select(func_2(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], u_input.a, Struct_2(Struct_1(vec3<i32>(3985i, -38540i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec2<bool>(false, true)), vec2<bool>(false, true))), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), u_input.a > -1i)));
    let var_1 = reverseBits(~(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), countOneBits(vec3<u32>(u_input.b.x, 78787u, u_input.b.x))) >> ((vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) << (vec3<u32>(u_input.b.x, 20519u, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_2 = ~1i;
    global0 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.a.zy, vec3<f32>(1f, _wgslsmith_f_op_f32(max(1841f, _wgslsmith_f_op_f32(-1729f + -514f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) + -709f))));
}

