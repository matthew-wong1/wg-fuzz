struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6>;

var<private> global1: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    var var_0 = true;
    let var_1 = global0[_wgslsmith_index_u32(~5316u, 6u)] | reverseBits(_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(56039u, 26690u), 6u)], countOneBits(~global0[_wgslsmith_index_u32(u_input.b, 6u)])));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.zz) + _wgslsmith_f_op_vec2_f32(-global1.yz)) * global1.yz)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))), 716f)));
    let var_3 = Struct_2(2147483647i, Struct_1(_wgslsmith_f_op_vec2_f32(-global1.yy), global1.x), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(global1.xz)), -412f));
    let var_4 = Struct_1(global1.xx, 677f);
    return vec2<f32>(var_4.a.x, var_4.b);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-976f, 1536f))) * global1.yy), global1.x);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1644f, -1067f)))) * global1.yz) + _wgslsmith_f_op_vec2_f32(func_3(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1747f * var_0.a.x) - global1.x)));
    var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1407f + global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(645f, _wgslsmith_f_op_f32(f32(-1f) * -644f)))));
    var var_1 = u_input.a;
    var_1 = u_input.a;
    return Struct_2(u_input.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(select(global1.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, var_0.a.x) - var_0.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 519f))), true)), global1.x), Struct_1(global1.zz, _wgslsmith_f_op_f32(max(var_0.a.x, -1555f))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global0 = array<vec4<u32>, 6>();
    global0 = array<vec4<u32>, 6>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + global1.x), 540f), 1f))), global1.x);
    var var_1 = u_input.a & vec2<i32>(-_wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a)), _wgslsmith_mod_i32(0i << (arg_0.x % 32u), 2147483647i) | 2147483647i);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1113f);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(global1.x != global1.x, true, true)), !vec3<bool>(all(vec4<bool>(false, false, false, true)), true, any(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-global1.x)) <= global1.x));
    var var_1 = func_1(firstLeadingBit(~vec3<u32>(~23352u, min(133168u, 4294967295u), u_input.b)));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.a.x), -1000f, global1.x);
    var var_2 = var_1.c;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-2030f * var_2.b), -1000f, _wgslsmith_f_op_f32(-global1.x));
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(-var_2.b), -521f);
    global0 = array<vec4<u32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(-15752i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, var_2.b, global1.x, _wgslsmith_f_op_f32(910f * global1.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.c.b, -873f, 776f, -521f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.b, -854f, global1.x, 931f))), true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(587f, -1737f, var_2.b, global1.x), vec4<f32>(global1.x, 251f, global1.x, var_2.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1042f, -1000f, global1.x, global1.x))))));
}

