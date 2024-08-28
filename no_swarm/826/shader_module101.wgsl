struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(4294967295u, 0u, 4294967295u, 15428u, 1u, 12878u, 4294967295u, 61458u, 1u, 61763u, 21824u, 80142u, 17660u, 1u, 1u, 1u, 19799u, 0u, 81608u, 19359u, 4294967295u, 1u, 95809u, 76750u, 10757u, 52348u, 0u, 32352u, 7830u, 4294967295u);

var<private> global1: bool;

var<private> global2: array<Struct_1, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(countOneBits(vec2<i32>(_wgslsmith_sub_i32(-21152i, u_input.a), u_input.a)));
    global0 = array<u32, 30>();
    let var_1 = var_0;
    var var_2 = Struct_1(var_1.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-843f, -454f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(296f, -1097f), vec2<f32>(630f, -1441f))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(462f, 1000f)))), vec2<bool>(true, true))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-142f, -247f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(189f)) * _wgslsmith_f_op_f32(952f * 345f))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b | ~u_input.b;
    global1 = any(vec2<bool>(true, !all(vec4<bool>(false, false, true, false))));
    var var_1 = func_1();
    var var_2 = func_1();
    var_1 = func_1();
    var var_3 = !select(vec3<bool>(true, true, true), !vec3<bool>(any(vec2<bool>(true, true)), true, 1u <= var_0.x), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))), ~(-abs(-var_2.a.x)), abs(min(vec3<u32>(1u, 35377u, 10665u), ~(~u_input.b))));
}

