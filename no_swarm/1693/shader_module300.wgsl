struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 19> = array<u32, 19>(19164u, 40928u, 0u, 26621u, 1u, 0u, 38731u, 0u, 4294967295u, 1u, 85546u, 0u, 53949u, 23265u, 48127u, 1u, 75637u, 1u, 1u);

var<private> global3: vec2<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> Struct_1 {
    global2 = array<u32, 19>();
    var var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.a.x, arg_0.a.x, arg_1))))))), ~(~0u), arg_0.c);
    global0 = array<i32, 1>();
    global1 = Struct_1(var_1.a, 1u, global1.c);
    return arg_0;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> bool {
    return true;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = vec3<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x);
    let var_1 = !(!vec4<bool>(func_3(var_0.zz, func_2(Struct_1(global1.a, u_input.b.x, global1.c), 582f, arg_2.a.yy), -1263f), arg_2.c.x, var_0.x && true, global1.c.x));
    var var_2 = vec2<i32>((arg_1 ^ 1i) | ((u_input.c.x ^ _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(23183u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)])) >> (~(~arg_2.b) % 32u)), _wgslsmith_dot_vec4_i32((-u_input.d | vec4<i32>(1i, -1i, -38673i, global0[_wgslsmith_index_u32(1695u, 1u)])) >> (vec4<u32>(_wgslsmith_mod_u32(48362u, global1.b), arg_2.b, 92695u, global2[_wgslsmith_index_u32(select(global1.b, 1u, false), 19u)]) % vec4<u32>(32u)), u_input.d));
    let var_3 = arg_2;
    global0 = array<i32, 1>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global1.a - vec3<f32>(var_3.a.x, global1.a.x, global1.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_2.a, vec3<f32>(828f, global3.x, -1994f), vec3<bool>(true, false, var_0.x))) * _wgslsmith_f_op_vec3_f32(-arg_2.a)), vec3<bool>(true, true, select(arg_2.c.x, var_3.c.x, var_3.c.x))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_3.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-178f)), _wgslsmith_f_op_f32(-523f - -1000f), _wgslsmith_f_op_f32(max(arg_2.a.x, global1.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_1(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.d.x, global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec3<i32>(u_input.d.x, 2147483647i, u_input.d.x), vec3<i32>(0i, u_input.c.x, global0[_wgslsmith_index_u32(102465u, 1u)])) | ~u_input.d.www, abs(global0[_wgslsmith_index_u32(global1.b, 1u)] << (abs(95220u) % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a.x, -682f, global3.x)))), u_input.b.x, global1.c))), abs(_wgslsmith_sub_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(~1u, 19u)], global1.b), 1u)), select(!global1.c, !select(global1.c, vec2<bool>(global1.c.x, global1.c.x), false), vec2<bool>(true, !func_3(vec2<bool>(global1.c.x, false), Struct_1(vec3<f32>(224f, global1.a.x, -747f), 4294967295u, global1.c), global1.a.x))));
    global0 = array<i32, 1>();
    var var_1 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

