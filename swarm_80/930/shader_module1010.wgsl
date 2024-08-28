struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(562f, -621f, 612f);

var<private> global1: array<bool, 21>;

var<private> global2: vec2<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(arg_1.d ^ reverseBits(4294967295u), u_input.d);
    global1 = array<bool, 21>();
    var var_1 = arg_1;
    global1 = array<bool, 21>();
    var var_2 = arg_1;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), -1000f), ~84944u, ~(~0u), arg_1.d, ~u_input.a.x);
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(global0.yy + vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1f)))), -309f));
    var var_1 = arg_0;
    let var_2 = func_2(!vec3<bool>(var_1.e > 1i, false, false), arg_0);
    var var_3 = u_input.b.zz;
    let var_4 = Struct_1(global2.x, 1u, var_3.x, 36823u, 1i);
    return StorageBuffer(_wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.c, _wgslsmith_add_u32(arg_0.c, 23817u)), abs(u_input.b) >> (countOneBits(vec3<u32>(arg_0.c, 0u, var_1.b)) % vec3<u32>(32u)))), vec3<i32>(-_wgslsmith_sub_i32(_wgslsmith_add_i32(2969i, u_input.a.x), ~55569i), ~(~var_2.e), _wgslsmith_dot_vec4_i32(u_input.a, -u_input.a)), _wgslsmith_f_op_f32(step(1009f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-693f * arg_0.a)), var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(false, false, false);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2158f)))), u_input.b.x, _wgslsmith_mult_u32(u_input.d, 4294967295u), u_input.b.x, -abs(~(i32(-1i) * -13559i)));
    let var_2 = var_1;
    let x = u_input.a;
    s_output = func_1(var_1);
}

