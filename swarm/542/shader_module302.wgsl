struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: vec3<i32>) -> bool {
    let var_0 = arg_2.a.a;
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    let var_1 = !vec3<bool>(arg_2.a.a.x, true, any(vec3<bool>(arg_2.a.a.x, !arg_2.a.a.x, var_0.x)));
    let var_2 = arg_0;
    return all(!(!select(!vec4<bool>(arg_2.a.a.x, var_1.x, true, var_1.x), !vec4<bool>(false, false, var_0.x, var_1.x), !var_1.x)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<f32>) -> vec4<bool> {
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    return select(vec4<bool>(false, true, true, !(u_input.b.x <= ~u_input.b.x)), vec4<bool>(func_2(arg_1, 1i << (arg_1 % 32u), global0[_wgslsmith_index_u32(countOneBits(~arg_1), 28u)], vec3<i32>(_wgslsmith_clamp_i32(-32982i, u_input.a, u_input.b.x), max(u_input.b.x, -47635i), 7875i)), !func_2(firstTrailingBit(arg_1), u_input.c, Struct_2(Struct_1(vec2<bool>(true, true), arg_2)), max(vec3<i32>(0i, u_input.a, u_input.b.x), vec3<i32>(-49125i, 21541i, u_input.b.x))), true, func_2(39211u, u_input.c, Struct_2(Struct_1(vec2<bool>(true, true), vec4<f32>(438f, 250f, 179f, arg_2.x))), ~(vec3<i32>(2147483647i, u_input.b.x, u_input.a) << (vec3<u32>(arg_1, 28234u, 4294967295u) % vec3<u32>(32u))))), !(844f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1164f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(56303u, ~(~_wgslsmith_clamp_u32(10366u, 59606u, 1u))), _wgslsmith_mod_u32(1u, ~(~(~0u))));
    let var_1 = !select(vec4<bool>(true, 0i <= countOneBits(u_input.a), false, all(vec2<bool>(false, true)) | false), func_1(899f, countOneBits(_wgslsmith_mod_u32(4294967295u, var_0.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1437f, 1274f, -1894f, -244f) * vec4<f32>(-331f, -954f, 600f, 1302f))))), !(!any(vec4<bool>(false, true, false, false))));
    var var_2 = u_input.c;
    global0 = array<Struct_2, 28>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1927f, 2212f)))));
    var_3 = 383f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1413f)) - 276f))));
}

