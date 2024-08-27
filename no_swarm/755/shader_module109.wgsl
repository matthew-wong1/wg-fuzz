struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<f32, 31> = array<f32, 31>(1002f, -1613f, -761f, -1038f, 745f, -687f, 226f, 714f, -2161f, 695f, -231f, 659f, -731f, -1822f, -145f, 252f, -354f, -968f, 956f, -2001f, 319f, 1829f, -455f, 1544f, -441f, 1081f, -159f, -115f, -1124f, -1232f, 354f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec3<f32>) -> i32 {
    let var_0 = vec2<u32>(countOneBits(4294967295u), ~(~1u));
    global0 = arg_2.a.a;
    return -_wgslsmith_mult_i32(arg_2.a.b, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(5930u, countOneBits(vec4<i32>(u_input.b.x, ~func_1(global1[_wgslsmith_index_u32(33562u, 31u)], vec3<f32>(global1[_wgslsmith_index_u32(1u, 31u)], -1301f, -233f), Struct_3(Struct_1(vec3<bool>(true, false, false), -2147483647i)), vec3<f32>(-1742f, -1300f, -164f)), _wgslsmith_mod_i32(-u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 0i), vec2<i32>(-17339i, -21425i))), -(u_input.b.x | 2147483647i))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(66388u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], true))), global1[_wgslsmith_index_u32(~1u, 31u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(63178u, 31u)] + -2271f)))))));
}

