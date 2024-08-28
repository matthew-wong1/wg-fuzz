struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = !arg_0;
    global0 = array<f32, 1>();
    return ~(~u_input.a.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> vec3<i32> {
    let var_0 = Struct_2(countOneBits(func_3(any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))))), Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], -920f)), Struct_1(vec2<f32>(_wgslsmith_div_f32(803f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(29438u, 1u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, arg_0.x), 1u)] - arg_1))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(abs(u_input.a.x), 1u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1568u, 1u)], 998f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-365f, -242f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.a.x - var_0.b.a.x), _wgslsmith_f_op_f32(-var_0.b.a.x)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.b.a - var_0.b.a), _wgslsmith_div_vec2_f32(vec2<f32>(-1318f, -1119f), var_0.d.a))))));
    var var_2 = select(vec3<bool>(true, true, true), select(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, true))), u_input.b.x != 36165i), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, any(vec3<bool>(false, false, true))), all(vec3<bool>(false, true, false))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !(global0[_wgslsmith_index_u32(u_input.a.x, 1u)] == arg_1))), !vec3<bool>(_wgslsmith_f_op_f32(ceil(var_0.d.a.x)) > arg_1, reverseBits(5756u) > u_input.a.x, false));
    var var_3 = vec2<bool>(any(select(select(vec3<bool>(true, true, true), !vec3<bool>(var_2.x, true, var_2.x), var_2.x), vec3<bool>(!var_2.x, var_2.x, var_2.x), vec3<bool>(any(vec2<bool>(true, var_2.x)), !var_2.x, true))), !any(!(!vec4<bool>(false, true, false, var_2.x))));
    let var_4 = reverseBits(firstTrailingBit(((arg_0.zyy << (vec3<u32>(u_input.a.x, 13651u, arg_0.x) % vec3<u32>(32u))) << (vec3<u32>(u_input.a.x, 0u, var_0.a) % vec3<u32>(32u))) & ~vec3<u32>(4294967295u, var_0.a, 76548u)));
    return u_input.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = -func_2(~(vec4<u32>(60787u, 0u, 73403u, u_input.a.x) >> (vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), arg_2.x) >> (u_input.a % vec3<u32>(32u));
    global0 = array<f32, 1>();
    let var_1 = countOneBits(~firstLeadingBit(abs(u_input.a.x) << (u_input.a.x % 32u)));
    var_0 = vec3<i32>(-1i) * -(~u_input.b);
    var var_2 = arg_0.x | !arg_0.x;
    return Struct_3(true, var_1, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u, 1u)], 597f, false)), u_input.a.xz, u_input.b.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-533f, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]))))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(633u, 1u)]) + vec2<f32>(129f, 1000f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(306f, global0[_wgslsmith_index_u32(reverseBits(14293u), 1u)]) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], 117f))))))));
    let var_1 = !select(var_0.a, false, !(!all(vec4<bool>(true, var_0.a, true, false))));
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    var var_2 = vec2<i32>(i32(-1i) * -(~(-u_input.b.x)), -(_wgslsmith_clamp_i32(~20707i, -u_input.b.x, u_input.b.x & var_0.e.x) & -_wgslsmith_add_i32(-58491i, var_0.e.x)));
    let var_3 = vec3<i32>(-22468i, var_0.e.x, ~abs(-17317i | ~var_2.x));
    let var_4 = var_0;
    var var_5 = var_4.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_4.c), global0[_wgslsmith_index_u32(~max(6791u, 1u), 1u)])), 19144i);
}

