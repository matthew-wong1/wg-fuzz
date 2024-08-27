struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
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

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(4294967295u, 1u, 39176u, 0u), vec4<u32>(0u, 39114u, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 6748u, 4294967295u), vec4<u32>(8599u, 41747u, 0u, 7958u), vec4<u32>(12232u, 0u, 38212u, 53539u), vec4<u32>(0u, 4294967295u, 27924u, 43637u), vec4<u32>(4294967295u, 45393u, 0u, 39150u), vec4<u32>(83619u, 0u, 4294967295u, 53601u), vec4<u32>(97022u, 32974u, 32479u, 18563u), vec4<u32>(0u, 0u, 28631u, 46613u), vec4<u32>(45966u, 0u, 26713u, 8636u), vec4<u32>(67559u, 79114u, 62u, 22101u), vec4<u32>(26845u, 0u, 90350u, 0u), vec4<u32>(4294967295u, 30416u, 20205u, 70018u), vec4<u32>(1u, 19692u, 40221u, 13309u), vec4<u32>(4294967295u, 79639u, 0u, 4294967295u), vec4<u32>(34580u, 1u, 4294967295u, 28897u), vec4<u32>(1u, 1u, 8999u, 1u), vec4<u32>(22720u, 379u, 0u, 4294967295u), vec4<u32>(1u, 0u, 1u, 65643u), vec4<u32>(116u, 4294967295u, 4294967295u, 47504u), vec4<u32>(1u, 37079u, 75885u, 1u));

var<private> global2: array<vec2<bool>, 18>;

var<private> global3: vec3<i32>;

var<private> global4: array<bool, 27>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> bool {
    global4 = array<bool, 27>();
    var var_0 = Struct_1(global0.a);
    global3 = vec3<i32>(-1i) * -(~abs(u_input.c.xyy));
    var var_1 = u_input.d.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a, 1943f))))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, var_0.a) * vec2<f32>(-680f, -119f))))))));
    return var_2.x <= _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1412f, _wgslsmith_f_op_f32(var_0.a - 1618f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    global4 = array<bool, 27>();
    let var_1 = global4[_wgslsmith_index_u32(select(u_input.d.x, 18166u, any(select(!(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 27u)], global4[_wgslsmith_index_u32(u_input.d.x, 27u)], true)), vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.d.x), 27u)], true, func_1()), select(select(vec3<bool>(false, false, true), vec3<bool>(global4[_wgslsmith_index_u32(var_0, 27u)], global4[_wgslsmith_index_u32(13551u, 27u)], true), global4[_wgslsmith_index_u32(4294967295u, 27u)]), !vec3<bool>(true, false, global4[_wgslsmith_index_u32(var_0, 27u)]), !vec3<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 27u)], global4[_wgslsmith_index_u32(u_input.d.x, 27u)], true))))), 27u)];
    global4 = array<bool, 27>();
    let var_2 = 299f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e);
}

