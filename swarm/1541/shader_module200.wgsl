struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-14931i, 3430i, 90226i);

var<private> global1: array<u32, 3>;

var<private> global2: vec2<f32> = vec2<f32>(644f, -1640f);

var<private> global3: f32;

var<private> global4: Struct_1 = Struct_1(vec3<u32>(1u, 7190u, 4294967295u), vec2<u32>(48330u, 1u), false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    var var_0 = vec3<i32>(59853i, abs(0i), -1i);
    var var_1 = ~2147483647i;
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-427f, global2.x), vec2<f32>(1036f, -643f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) * vec2<f32>(618f, 747f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -966f))));
    var var_3 = arg_2;
    let var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), 981f, _wgslsmith_f_op_f32(-458f + global2.x), _wgslsmith_f_op_f32(global2.x + -929f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(815f, _wgslsmith_f_op_f32(-var_2.x), global2.x, -620f)))));
    return 965f;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: vec3<u32>) -> u32 {
    global1 = array<u32, 3>();
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(false, true), !vec2<bool>(global4.c & global4.c, false));
    global4 = arg_2;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(573f, global2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(arg_3, vec2<u32>(112458u, arg_2.a.x), global4.c), vec4<u32>(57736u, arg_3.x, 733u, 50848u), true))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -609f, global2.x) * vec3<f32>(-1228f, global2.x, global2.x))))));
    global1 = array<u32, 3>();
    return 1u;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = ~abs(-2147483647i);
    let var_1 = Struct_1(arg_0.a, vec2<u32>(~(~func_2(4294967295u, 0u, arg_0, arg_0.a)), ~(_wgslsmith_sub_u32(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 3u)]) << (~1u % 32u))), true);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.b, _wgslsmith_mod_i32(abs(4333i), -20506i), 18007i << (~(~0u) % 32u), countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-11452i, -46238i, 33054i, 2147483647i), ~vec4<i32>(global0.x, global0.x, -23117i, -2147483647i)), vec4<i32>(1i, -2147483647i, func_1(Struct_1(global4.a, global4.b, global4.c)), u_input.b))));
    global2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(1000f, -386f)), -887f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(745f, _wgslsmith_f_op_f32(max(global2.x, global2.x)))), !(!(var_0.x < 2147483647i))))));
    global3 = global2.x;
    let var_1 = Struct_1(abs(vec3<u32>(min(~1u, global4.a.x >> (69235u % 32u)), ~firstTrailingBit(u_input.a), _wgslsmith_dot_vec2_u32(select(global4.a.yy, vec2<u32>(4294967295u, 40018u), global4.c), global4.a.yy))), select(min(_wgslsmith_sub_vec2_u32(global4.b, abs(vec2<u32>(4294967295u, u_input.a))), _wgslsmith_div_vec2_u32(global4.a.xz | global4.b, _wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global4.a.x, 3u)], 1u), vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(63519u, 3u)])))), ~_wgslsmith_add_vec2_u32(global4.a.yy, _wgslsmith_sub_vec2_u32(global4.b, global4.a.yz)), select(!(!vec2<bool>(true, global4.c)), select(select(vec2<bool>(true, global4.c), vec2<bool>(global4.c, true), false), vec2<bool>(global4.c, global4.c), select(vec2<bool>(false, global4.c), vec2<bool>(global4.c, false), vec2<bool>(global4.c, false))), vec2<bool>(any(vec4<bool>(global4.c, true, true, global4.c)), false))), global4.c);
    global4 = Struct_1(var_1.a, ~vec2<u32>(_wgslsmith_dot_vec2_u32(global4.a.zz, vec2<u32>(var_1.a.x, global1[_wgslsmith_index_u32(global4.a.x, 3u)])) ^ 44324u, func_2(global1[_wgslsmith_index_u32(~4294967295u, 3u)], 0u, var_1, select(vec3<u32>(1u, 72477u, 37428u), vec3<u32>(0u, 40279u, global4.a.x), false))), !global4.c);
    var var_2 = var_1;
    let var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -735f, global2.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 1032f)))))));
}

