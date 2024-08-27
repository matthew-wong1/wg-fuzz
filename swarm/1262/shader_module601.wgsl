struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32;

var<private> global2: vec4<u32> = vec4<u32>(0u, 46862u, 10456u, 1u);

var<private> global3: array<u32, 31>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: f32) -> vec4<u32> {
    let var_0 = Struct_1(vec3<bool>(1i > _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 18225i), arg_1.zzz), 0i), true, true));
    global1 = arg_2;
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -505f)));
    return firstTrailingBit(_wgslsmith_sub_vec4_u32(abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(84476u, global3[_wgslsmith_index_u32(u_input.c.x, 31u)], u_input.a, global2.x), vec4<u32>(global3[_wgslsmith_index_u32(0u, 31u)], 1u, global3[_wgslsmith_index_u32(global2.x, 31u)], global3[_wgslsmith_index_u32(global2.x, 31u)]))), select(vec4<u32>(global2.x, _wgslsmith_sub_u32(u_input.c.x, 4294967295u), 0u, _wgslsmith_mod_u32(0u, global2.x)), ~countOneBits(vec4<u32>(global3[_wgslsmith_index_u32(20382u, 31u)], 12098u, 18246u, global2.x)), vec4<bool>(false, all(vec4<bool>(true, var_0.a.x, false, false)), true, var_0.a.x))));
}

fn func_2() -> Struct_1 {
    global3 = array<u32, 31>();
    global3 = array<u32, 31>();
    global0 = 1f;
    global2 = func_3(u_input.c.x, vec4<i32>(u_input.b.x, -1i, -1i, -2147483647i | u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -993f));
    var var_0 = u_input.b.x;
    return Struct_1(select(!vec3<bool>(true, true, select(false, true, false)), vec3<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 0i), vec3<i32>(2147483647i, u_input.b.x, 18724i)) != -39953i, 4294967295u <= select(global3[_wgslsmith_index_u32(12559u, 31u)], 0u, true), !all(vec3<bool>(false, true, true))), vec3<bool>(any(vec2<bool>(false, false)), true, true)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> vec2<u32> {
    var var_0 = func_2();
    var var_1 = vec2<bool>(arg_1, arg_1 && select(arg_1, var_0.a.x & any(vec2<bool>(var_0.a.x, arg_1)), all(!vec4<bool>(false, var_0.a.x, var_0.a.x, false))));
    let var_2 = 75020u;
    let var_3 = Struct_1(select(!vec3<bool>(var_0.a.x, select(true, false, var_1.x), true), !select(!vec3<bool>(var_0.a.x, arg_1, var_0.a.x), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), !vec3<bool>(any(var_0.a), all(vec3<bool>(false, true, true)), true)));
    var var_4 = true;
    return global2.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_1(-u_input.b, -280f != _wgslsmith_f_op_f32(sign(-764f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-439f, 1656f)))));
}

