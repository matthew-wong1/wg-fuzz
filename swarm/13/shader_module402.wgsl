struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<u32, 2>;

var<private> global2: Struct_1;

var<private> global3: vec3<i32>;

var<private> global4: u32 = 16107u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec4<f32>) -> Struct_1 {
    global1 = array<u32, 2>();
    var var_0 = Struct_1(global2.a);
    let var_1 = !vec3<bool>(!any(!vec2<bool>(global2.a, true)), true, any(select(vec3<bool>(true, true, true), !vec3<bool>(false, var_0.a, var_0.a), false)));
    var var_2 = global0[_wgslsmith_index_u32(30517u, 29u)];
    global4 = arg_2.x;
    return global0[_wgslsmith_index_u32(0u, 29u)];
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> f32 {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1426f, arg_0, arg_0) - vec3<f32>(-122f, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, 1000f, arg_0))), select(vec3<bool>(false, false, global2.a), vec3<bool>(false, global2.a, arg_1.x), true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) - vec3<f32>(368f, arg_0, arg_0)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0 - 337f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)))), countOneBits(vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.b.zz % vec2<u32>(32u))), u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -457f, arg_0, 805f) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -360f, arg_0, 1144f), vec4<f32>(arg_0, -995f, arg_0, arg_0))))));
    var var_1 = u_input.b.zw;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 29u)];
    var var_3 = -230f;
    let var_4 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - arg_0), -600f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))))));
    return 1857f;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -202f), arg_0.xz)))));
    let var_1 = arg_1;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = 4294967295u;
    global2 = Struct_1(_wgslsmith_mod_i32(~(i32(-1i) * -2147483647i), _wgslsmith_mult_i32(global3.x, u_input.d) >> (26332u % 32u)) >= func_2(select(vec3<bool>(false, false, false), vec3<bool>(global2.a, false, false), !vec3<bool>(global2.a, global2.a, true)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-364f, 1000f, 415f)), abs(vec2<u32>(4294967295u, 4294967295u)), select(vec4<u32>(4294967295u, u_input.c.x, 64984u, global1[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], 2u)], 54863u, global1[_wgslsmith_index_u32(u_input.b.x, 2u)], 37088u), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-139f, 519f, -328f, 583f)))));
    global4 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u >> (global1[_wgslsmith_index_u32(48256u, 2u)] % 32u), global1[_wgslsmith_index_u32(5695u, 2u)]), ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], 2u)], 2u)], u_input.b.x)), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(u_input.c.x, global1[_wgslsmith_index_u32(14153u, 2u)], 1u, global1[_wgslsmith_index_u32(8805u, 2u)])), vec4<u32>(u_input.a.x, 1u, u_input.c.x, global1[_wgslsmith_index_u32(0u, 2u)])), 2u)], u_input.a.x)), u_input.b.yz);
    global1 = array<u32, 2>();
    var var_0 = global0[_wgslsmith_index_u32(120266u, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~countOneBits(global3.zx ^ (vec2<i32>(global3.x, 1i) | global3.xy)));
}

