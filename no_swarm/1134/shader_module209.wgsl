struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: i32 = 31858i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global1 = i32(-1i) * -2147483647i;
    let var_0 = ((4839u ^ (1u << (u_input.e % 32u))) >> (u_input.c.x % 32u)) >> (_wgslsmith_sub_u32(u_input.c.x, ~_wgslsmith_mod_u32(u_input.c.x ^ 0u, 28423u)) % 32u);
    var var_1 = Struct_5(var_0, Struct_4(!global0.a));
    let var_2 = ~_wgslsmith_add_u32(~var_1.a, 3927u);
    let var_3 = reverseBits(u_input.c.wyx);
    return -370f;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(270f, -1126f, -805f))), _wgslsmith_div_vec3_f32(vec3<f32>(1232f, 125f, -1027f), vec3<f32>(406f, -189f, -1000f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1097f, -947f, -992f) * vec3<f32>(-324f, -1000f, -455f))) - vec3<f32>(_wgslsmith_f_op_f32(429f + _wgslsmith_f_op_f32(select(-454f, 449f, false))), -1292f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-260f, 590f, false)))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(300f, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-373f, -2330f)) * _wgslsmith_f_op_f32(step(-483f, 555f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(532f, 1296f, -1232f), vec3<f32>(-764f, -354f, -727f), global0.a.x)))), !all(select(vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(false, global0.a.x), vec2<bool>(global0.a.x, global0.a.x))))));
    var var_1 = ~vec2<u32>(~4294967295u, ~(~4294967295u));
    var var_2 = Struct_3(Struct_2(Struct_1(global0.a.x)), var_1.x, Struct_2(Struct_1(select(global0.a.x || global0.a.x, any(vec4<bool>(global0.a.x, true, true, true)), true))), Struct_1(global0.a.x & select(global0.a.x, global0.a.x, !global0.a.x)));
    var var_3 = 14722i;
    global1 = ~u_input.d;
    return Struct_4(vec2<bool>(true, any(select(vec3<bool>(false, var_2.a.a.a, var_2.a.a.a), vec3<bool>(false, false, global0.a.x), vec3<bool>(var_2.d.a, global0.a.x, var_2.d.a)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<bool> {
    global0 = func_2();
    global0 = func_2();
    global1 = _wgslsmith_add_i32(u_input.d, 34559i);
    global0 = Struct_4(!global0.a);
    let var_0 = Struct_3(Struct_2(Struct_1(u_input.b.x == firstTrailingBit(u_input.c.x))), reverseBits(~u_input.e), Struct_2(Struct_1(true)), arg_0);
    return vec2<bool>(any(global0.a), u_input.c.x == 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 737f;
    var var_1 = Struct_5(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 31536u, 1u, 1u) >> (u_input.c % vec4<u32>(32u)), max(vec4<u32>(1u, 4294967295u, u_input.b.x, u_input.c.x), ~vec4<u32>(0u, 4294967295u, 4294967295u, u_input.e))), Struct_4(func_1(Struct_1(true), vec3<f32>(-359f, _wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(floor(-791f))))));
    global0 = var_1.b;
    let var_2 = u_input.b.zz;
    let var_3 = Struct_2(Struct_1(global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(0i, -1i, u_input.d) >> (u_input.b % vec3<u32>(32u)))), max(vec2<i32>(0i, u_input.d), reverseBits(-vec2<i32>(u_input.d, u_input.d))), vec3<f32>(-318f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-520f)) - -648f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(301f, -478f))))));
}

