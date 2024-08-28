struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<f32>, 24>;

var<private> global2: f32;

var<private> global3: Struct_2 = Struct_2(Struct_1(4294967295u, 620f), -800f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -328f);
    global1 = array<vec4<f32>, 24>();
    var var_0 = Struct_1(u_input.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-430f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(arg_0, global3.b))))), global3.b)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-var_0.b)));
    var_0 = global3.a;
    return _wgslsmith_f_op_f32(sign(-1324f));
}

fn func_2() -> vec2<u32> {
    var var_0 = global3.a;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(499f, global3.a.b)) - _wgslsmith_f_op_f32(var_0.b * -390f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1314f - 1515f) - 1040f)))));
    var var_1 = select(vec4<i32>(-(~0i), 2147483647i, 45421i >> (_wgslsmith_add_u32(min(0u, var_0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, global3.a.a, global3.a.a, var_0.a), vec4<u32>(0u, 4294967295u, global3.a.a, var_0.a))) % 32u), max(~_wgslsmith_dot_vec2_i32(u_input.c.yy, u_input.c.yy), -35398i)), vec4<i32>(u_input.a, _wgslsmith_mult_i32(~u_input.c.x, _wgslsmith_add_i32(u_input.c.x | u_input.a, 1i)), -2147483647i, _wgslsmith_mult_i32(u_input.a, 2147483647i) >> (var_0.a % 32u)), true);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b)) - -350f);
    var var_2 = Struct_3(global3.a, _wgslsmith_f_op_f32(-var_0.b), ~_wgslsmith_clamp_i32(1i, -1i, 1i), true, _wgslsmith_f_op_f32(func_3(-312f, false)));
    return countOneBits(vec2<u32>(1u, 1u)) | (max(~vec2<u32>(var_0.a, u_input.b), reverseBits(~vec2<u32>(u_input.b, 4294967295u))) | ~_wgslsmith_mod_vec2_u32(abs(vec2<u32>(7300u, 1743u)), select(vec2<u32>(var_2.a.a, var_0.a), vec2<u32>(32066u, u_input.b), false)));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-global3.b);
    global1 = array<vec4<f32>, 24>();
    let var_1 = (vec2<u32>(u_input.b, 1u) >> ((vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(_wgslsmith_mult_u32(1u, global3.a.a), ~0u) % vec2<u32>(32u))) % vec2<u32>(32u))) << (~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, global3.a.a), func_2()), ~vec2<u32>(0u, 53622u) & func_2()) % vec2<u32>(32u));
    var var_2 = Struct_3(Struct_1(global3.a.a, -958f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + 123f)))), 2147483647i, false, _wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(105f, -794f)), global3.a.b))));
    let var_3 = u_input.c;
    return Struct_2(Struct_1(abs(var_1.x), _wgslsmith_div_f32(global3.a.b, var_2.b)), _wgslsmith_f_op_f32(select(1971f, _wgslsmith_f_op_f32(global3.a.b + _wgslsmith_f_op_f32(func_3(1704f, var_2.d))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<vec4<f32>, 24>();
    var var_1 = Struct_2(Struct_1(1u, _wgslsmith_f_op_f32(1130f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1037f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -808f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.b), countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(48751u, var_0.a.a, 30057u, global3.a.a), vec4<u32>(60440u, 22284u, 0u, var_0.a.a)) | reverseBits(vec4<u32>(4294967295u, 4294967295u, var_0.a.a, 1u))), 1i, -237f);
}

