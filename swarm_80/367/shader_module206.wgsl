struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(1u, 94278u), vec2<u32>(4294967295u, 16502u), vec2<u32>(4294967295u, 60017u), vec2<u32>(97022u, 1u), vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 63900u), vec2<u32>(0u, 0u), vec2<u32>(1u, 36008u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 34906u), vec2<u32>(15535u, 1u), vec2<u32>(26460u, 1u), vec2<u32>(0u, 14512u), vec2<u32>(1u, 12644u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 18436u), vec2<u32>(1u, 28944u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(28349u, 4294967295u));

var<private> global1: bool = false;

var<private> global2: array<vec4<i32>, 25>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

var<private> global4: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    global4 = _wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.b.zz, _wgslsmith_div_vec2_u32(vec2<u32>(global4.x, u_input.b.x) ^ global0[_wgslsmith_index_u32(global4.x, 23u)], vec2<u32>(u_input.b.x, 4294967295u))), select(reverseBits(vec2<u32>(_wgslsmith_mult_u32(1071u, var_0), var_0)), u_input.b.zy, vec2<bool>(!(!global3.x), false)));
    var var_1 = select(select(vec4<bool>(true, all(!global3.zy), global3.x, !global3.x), select(select(!vec4<bool>(global3.x, false, global3.x, true), !vec4<bool>(global3.x, global3.x, false, global3.x), select(vec4<bool>(global3.x, false, false, false), vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(true, false, global3.x, global3.x))), vec4<bool>(false, !global3.x, any(vec3<bool>(false, true, global3.x)), all(vec4<bool>(global3.x, global3.x, false, false))), !(!vec4<bool>(global3.x, global3.x, global3.x, true))), true), !select(vec4<bool>(all(vec2<bool>(global3.x, true)), !global3.x, u_input.a < u_input.a, true), vec4<bool>(all(vec3<bool>(false, global3.x, false)), global3.x | false, global3.x, true), any(vec2<bool>(true, global3.x))), select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(221f)) + -1000f) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(732f, -1392f, false)), -1173f)), global3.x, true));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(302f, -365f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2033f, 246f, true)) + 862f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-705f * _wgslsmith_div_f32(_wgslsmith_div_f32(1384f, 419f), _wgslsmith_div_f32(1114f, -845f)))), _wgslsmith_f_op_f32(-1f));
    var var_3 = all(vec3<bool>(!(!(!global3.x)), true, true));
    let var_4 = -(~_wgslsmith_sub_vec3_i32(reverseBits(countOneBits(vec3<i32>(u_input.a, 43609i, 66430i))), vec3<i32>(38016i, u_input.a, -u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a, 22644i), max(u_input.a, countOneBits(select(-2147483647i, u_input.a, var_4.x <= u_input.a))));
}

