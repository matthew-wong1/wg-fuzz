struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<u32, 15> = array<u32, 15>(25561u, 1u, 3655u, 1u, 40337u, 4294967295u, 4294967295u, 0u, 1u, 4294967295u, 35403u, 16420u, 365u, 3568u, 14578u);

var<private> global2: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(843f, -211f, 1015f, 1000f)) * vec4<f32>(-1730f, 281f, -1000f, 272f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-410f - 369f) - 389f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(804f, -213f), _wgslsmith_f_op_f32(ceil(499f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(245f - 569f)), -555f)));
    var var_1 = global0[_wgslsmith_index_u32(u_input.b, 27u)];
    global0 = array<Struct_1, 27>();
    var var_2 = Struct_1(!(!(!var_1.a)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, -515f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1351f)))));
    return false;
}

fn func_2() -> vec3<bool> {
    global0 = array<Struct_1, 27>();
    let var_0 = _wgslsmith_clamp_u32(~(global1[_wgslsmith_index_u32(u_input.b, 15u)] >> (u_input.b % 32u)), ~max(4294967295u, u_input.b), 30563u);
    let var_1 = any(select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(-27327i != u_input.c.x, true, any(vec4<bool>(false, true, true, false)))), select(!func_3(), true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)))));
    let var_2 = Struct_1(select(select(vec3<bool>(all(vec2<bool>(var_1, false)), select(var_1, false, false), any(vec2<bool>(var_1, false))), select(!vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, true, var_1), var_1), var_1), vec3<bool>(all(select(vec2<bool>(var_1, var_1), vec2<bool>(true, var_1), vec2<bool>(true, true))), u_input.c.x < u_input.a.x, any(!vec2<bool>(var_1, var_1))), var_1));
    let var_3 = ~76391u;
    return select(!vec3<bool>(!(true | var_2.a.x), !var_1, all(vec3<bool>(false, false, true))), var_2.a, !any(!select(vec4<bool>(var_2.a.x, false, false, var_2.a.x), vec4<bool>(var_1, false, var_1, var_2.a.x), true)));
}

fn func_1() -> StorageBuffer {
    var var_0 = all(func_2());
    var var_1 = u_input.b;
    global1 = array<u32, 15>();
    global0 = array<Struct_1, 27>();
    let var_2 = 875f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f), -789f)));
    return StorageBuffer(-u_input.a.x, vec2<u32>(countOneBits(31124u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), ~max(vec2<u32>(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)]), vec2<u32>(3910u, 0u)))), vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, global1[_wgslsmith_index_u32(24643u, 15u)]), vec4<u32>(40819u, u_input.b, u_input.b, u_input.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b, 0u, global1[_wgslsmith_index_u32(45310u, 15u)]), vec4<u32>(global1[_wgslsmith_index_u32(0u, 15u)], u_input.b, u_input.b, global1[_wgslsmith_index_u32(1u, 15u)]), vec4<u32>(4294967295u, u_input.b, 50529u, 4363u)))), ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b, 57812u, 4294967295u, u_input.b), vec4<u32>(u_input.b, 4294967295u, global1[_wgslsmith_index_u32(25288u, 15u)], 0u)), vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 15u)], u_input.b, 4294967295u) ^ vec4<u32>(0u, 4294967295u, u_input.b, u_input.b)), abs(u_input.b), _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 15u)], 15u)]), 15u)], ~(~u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

