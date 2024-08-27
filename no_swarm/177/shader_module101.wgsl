struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec3<i32> = vec3<i32>(12556i, 1i, 4449i);

var<private> global2: Struct_1;

var<private> global3: vec3<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<u32>) -> u32 {
    global1 = -vec3<i32>(_wgslsmith_div_i32(global2.b, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1.x, -22005i, -61371i), vec4<i32>(2147483647i, -1i, global2.b, global2.b))), _wgslsmith_mod_i32(global2.b, -1i), min(2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(12454i, global2.b), vec2<i32>(31852i, -48659i)), global1.zz)));
    let var_0 = global2.b ^ global1.x;
    let var_1 = Struct_1(68291u, _wgslsmith_add_i32(var_0, _wgslsmith_div_i32(var_0, global2.b)), ~(min(u_input.a.wzw, vec3<u32>(41667u, u_input.a.x, u_input.a.x)) << (max(vec3<u32>(35986u, u_input.a.x, u_input.a.x), ~u_input.a.xyz) % vec3<u32>(32u))), vec4<bool>(any(vec2<bool>(global3.x && false, global2.a < 0u)), global3.x, _wgslsmith_f_op_f32(-724f * -2527f) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(2204f, -921f)))), arg_1));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-775f)) * _wgslsmith_f_op_f32(f32(-1f) * -174f))))));
    global1 = -(~max(-_wgslsmith_add_vec3_i32(vec3<i32>(global1.x, 23148i, 3376i), vec3<i32>(var_0, global1.x, var_1.b)), vec3<i32>(~(-1i), var_0 << (global2.c.x % 32u), global2.b & 25923i)));
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, 25395u), func_1(true, true, u_input.a), 0u), ~u_input.a.xww, u_input.a.yzx & ~u_input.a.wwx));
}

