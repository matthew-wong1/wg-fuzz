struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = 1i;
    global0 = array<vec2<i32>, 31>();
    var var_1 = arg_1;
    global0 = array<vec2<i32>, 31>();
    global0 = array<vec2<i32>, 31>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1243f);
}

fn func_2() -> vec2<i32> {
    var var_0 = u_input.c;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2282f) * 2571f) + _wgslsmith_f_op_f32(f32(-1f) * -268f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(667f))))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(4294967295u, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -184f)), false)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-990f - -524f)))));
    var var_2 = select(select(vec3<bool>(true, true, true), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), var_1.x >= var_1.x), !select(true, false, false) & !all(vec2<bool>(true, true))), select(vec3<bool>(!all(vec2<bool>(true, false)), true, _wgslsmith_clamp_i32(-1i, u_input.e, var_0.x) > (i32(-1i) * -29247i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, false)), all(vec3<bool>(true, false, true)), all(vec3<bool>(false, false, true)))), !((var_1.x <= 522f) == all(vec3<bool>(true, false, false)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, select(true, true, true), true)));
    global0 = array<vec2<i32>, 31>();
    let var_3 = abs(~(-2147483647i));
    return -countOneBits(-global0[_wgslsmith_index_u32(u_input.b.x, 31u)]) | ~vec2<i32>(var_0.x, 2147483647i);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_i32(func_2(), max(reverseBits(vec2<i32>(arg_0.x & -24147i, arg_0.x)), u_input.c));
    var_0 = 0i;
    var var_1 = u_input.b & u_input.b;
    var var_2 = arg_1;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(1000f)));
    return var_1.x << (~min(firstTrailingBit(4294967295u), ~(~1u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = ~vec4<u32>(4294967295u, ~_wgslsmith_sub_u32(63006u, 50641u), u_input.b.x, 0u);
    global0 = array<vec2<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, var_1 >> (vec4<u32>(func_1(select(vec4<i32>(var_0.x, var_0.x, var_0.x, 57035i), vec4<i32>(u_input.c.x, u_input.e, var_0.x, -63438i), true), Struct_1(-291f)), u_input.b.x, ~(~73996u), var_1.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 879f), vec2<f32>(-1000f, -310f), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-357f, 279f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1122f, -1071f) + vec2<f32>(-120f, -587f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1908f, -1552f) + vec2<f32>(1000f, 1174f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1117f - -1137f), -557f, 1349f))) - vec3<f32>(_wgslsmith_f_op_f32(-1361f - _wgslsmith_f_op_f32(1196f + 1000f)), 159f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1786f * -1369f))))));
}

