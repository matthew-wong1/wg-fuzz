struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 17> = array<bool, 17>(false, false, false, true, false, false, true, false, false, true, false, false, true, false, false, false, true);

var<private> global2: array<Struct_2, 24>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = 566f;
    let var_1 = -1i;
    var var_2 = u_input.a;
    let var_3 = ~vec2<i32>(-2147483647i, 2147483647i);
    global2 = array<Struct_2, 24>();
    return 89584u;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<bool> {
    global0 = (all(select(!vec2<bool>(global1[_wgslsmith_index_u32(arg_1.a, 17u)], global1[_wgslsmith_index_u32(29410u, 17u)]), select(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 17u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(arg_1.a, 17u)]), global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), global1[_wgslsmith_index_u32(max(6446u, 1u), 17u)])) || global1[_wgslsmith_index_u32(func_2(u_input.a.x), 17u)]) & false;
    global2 = array<Struct_2, 24>();
    let var_0 = -369f;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.x, -507f))))));
    return vec2<bool>(any(!select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(31206u, 17u)]), vec2<bool>(global1[_wgslsmith_index_u32(57305u, 17u)], false), vec2<bool>(false, false)), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 17u)], false), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), false), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(var_1.a, 17u)]))), true);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec3<f32>) -> vec4<bool> {
    global1 = array<bool, 17>();
    var var_0 = Struct_4(Struct_1(arg_1.c.a), _wgslsmith_f_op_vec3_f32(-arg_0.xzw), Struct_2(arg_1.a, Struct_1(select(~arg_1.b.a, 4294967295u | arg_1.c.a, true)), Struct_1(4294967295u)));
    let var_1 = Struct_2(arg_1.a, Struct_1(0u), Struct_1(70221u));
    let var_2 = ~(~select(u_input.a.wz, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, arg_1.c.a), u_input.a.wz), var_1.a.x)) ^ ~abs(u_input.a.zz ^ countOneBits(vec2<u32>(arg_1.c.a, 65440u)));
    global0 = all(vec3<bool>(false, ~arg_2.x > arg_2.x, any(vec3<bool>(all(vec3<bool>(var_0.c.a.x, var_0.c.a.x, var_1.a.x)), 0i == arg_2.x, all(vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 17u)]))))));
    return select(vec4<bool>(true, !global1[_wgslsmith_index_u32(var_1.b.a, 17u)], true, false), select(vec4<bool>(true, select(var_1.a.x, false, all(vec4<bool>(var_0.c.a.x, var_0.c.a.x, var_1.a.x, arg_1.a.x))), 1f <= _wgslsmith_div_f32(-732f, arg_3.x), select(true | var_1.a.x, !arg_1.a.x, false)), !vec4<bool>(arg_2.x == -2147483647i, var_1.a.x, all(vec4<bool>(false, var_1.a.x, global1[_wgslsmith_index_u32(61778u, 17u)], var_0.c.a.x)), -439f < arg_0.x), !vec4<bool>(true, true, true, select(true, true, false))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~vec2<i32>(-select(-2147483647i, 23925i, global1[_wgslsmith_index_u32(1u, 17u)]), (-66875i >> (u_input.a.x % 32u)) >> (u_input.a.x % 32u)));
    let var_1 = -751f;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1372f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1128f, var_1)) - _wgslsmith_f_op_f32(-541f * 476f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 1038f))), all(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)), Struct_1(70726u))))));
    global2 = array<Struct_2, 24>();
    global1 = array<bool, 17>();
    global0 = select(true, !any(func_3(vec4<f32>(-1798f, -726f, 194f, var_2.x), global2[_wgslsmith_index_u32(u_input.a.x, 24u)], vec3<i32>(var_0.x, -2147483647i, -20498i), vec3<f32>(-922f, var_1, var_2.x))), any(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 382f, -1957f, var_2.x)), Struct_2(vec2<bool>(true, false), Struct_1(2609u), Struct_1(34372u)), vec3<i32>(var_0.x, var_0.x, var_0.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)), vec3<f32>(-853f, 387f, var_1)).xz)) || global1[_wgslsmith_index_u32(33034u, 17u)];
    global2 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-631f * _wgslsmith_f_op_f32(-var_1)))), abs(~u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(890f * -253f), _wgslsmith_f_op_f32(-633f * var_1))), 618f, _wgslsmith_f_op_f32(-var_2.x))), ~4294967295u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1206f, var_2.x)), var_2.x, _wgslsmith_f_op_f32(-var_2.x), var_1), vec4<f32>(var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1956f - 1936f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + -672f), var_2.x), select(vec4<bool>(true, true, true, true), func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-766f, 1504f, var_1, -188f), vec4<f32>(866f, var_2.x, var_2.x, -450f)), Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], false), Struct_1(1u), Struct_1(u_input.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, -32106i, var_0.x), vec3<i32>(2147483647i, var_0.x, 0i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(155f, -1060f, var_1))), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 17u)])))));
}

