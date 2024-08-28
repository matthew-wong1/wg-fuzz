struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(988f, -794f, -629f);

var<private> global1: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(25550u, 4294967295u, 67834u, 33195u), vec4<u32>(4294967295u, 100116u, 0u, 1u), vec4<u32>(78745u, 68094u, 75353u, 6091u), vec4<u32>(1u, 31273u, 47413u, 4294967295u), vec4<u32>(12206u, 35837u, 16356u, 1u), vec4<u32>(14874u, 21482u, 1u, 1u), vec4<u32>(4294967295u, 34102u, 49931u, 75810u), vec4<u32>(15478u, 28613u, 0u, 37914u));

var<private> global2: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(-339f, -651f), vec2<f32>(-431f, 371f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 2>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(660f, -208f, global0.x, -490f) + vec4<f32>(global0.x, global0.x, global0.x, 612f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(848f, global0.x, global0.x, 1000f)), global0.x <= global0.x))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(max(global0.x, 1000f)), global0.x, global0.x, _wgslsmith_f_op_f32(floor(global0.x))))))));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(1355f)), -997f, _wgslsmith_f_op_f32(trunc(global0.x)), -568f)));
    var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(step(340f, _wgslsmith_f_op_f32(trunc(var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-972f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 876f));
    let var_1 = _wgslsmith_sub_i32(max(-9225i, -25156i), ~(i32(-1i) * -countOneBits(u_input.a)));
    global1 = array<vec4<u32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(626f * 393f), ~(-vec2<i32>(var_1, 0i)) << (vec2<u32>(1u, ~_wgslsmith_sub_u32(4294967295u, 54591u)) % vec2<u32>(32u)));
}

