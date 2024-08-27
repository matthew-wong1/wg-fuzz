struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 8> = array<u32, 8>(0u, 9861u, 0u, 14033u, 0u, 39214u, 27329u, 51841u);

var<private> global2: Struct_2;

var<private> global3: array<u32, 20> = array<u32, 20>(8975u, 0u, 4294967295u, 12978u, 1u, 4294967295u, 1u, 1u, 1u, 4294967295u, 40881u, 1u, 1788u, 4294967295u, 24805u, 0u, 1u, 39708u, 44590u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = select(!(!select(vec2<bool>(true, true), !vec2<bool>(arg_0.c, global2.c), vec2<bool>(true, arg_0.c))), vec2<bool>(any(vec4<bool>(true, true, true, true)), false), arg_0.c);
    return select(!select(!select(vec2<bool>(global2.c, arg_0.c), vec2<bool>(global2.c, global2.c), global2.c), vec2<bool>(true, true), all(!vec4<bool>(true, global2.c, false, arg_0.c))), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0.c), vec2<bool>(global2.c, false), false), false), select(vec2<bool>(false, arg_0.c), vec2<bool>(false, arg_0.c), !global2.c), !select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), global2.c)), !vec2<bool>(true, var_0.x), true), vec2<bool>(true, true));
}

fn func_2(arg_0: u32) -> vec3<u32> {
    let var_0 = Struct_5(func_3(Struct_2(vec2<f32>(global2.a.x, 1696f), -2147483647i, all(select(vec4<bool>(true, global2.c, global2.c, false), vec4<bool>(global2.c, global2.c, false, global2.c), vec4<bool>(global2.c, global2.c, global2.c, false))), ~(~global2.d))), u_input.a.x, u_input.c);
    var var_1 = firstLeadingBit(-max(_wgslsmith_div_vec2_i32(abs(u_input.a.yz), vec2<i32>(u_input.a.x, u_input.a.x)), ~(~u_input.a.zy)));
    let var_2 = ~global2.d;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.a.x, 605f), -311f), global2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(404f, global2.a.x, var_0.a.x)))) + _wgslsmith_f_op_f32(max(global2.a.x, _wgslsmith_f_op_f32(step(global2.a.x, 1140f)))))));
    return vec3<u32>(_wgslsmith_div_u32(global2.d.x, ~_wgslsmith_dot_vec3_u32(global2.d.yyx, vec3<u32>(0u, 1u, var_0.c.x))) & max(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, global2.d.x), global2.d.xx), 4294967295u), global3[_wgslsmith_index_u32(1u, 20u)], countOneBits(_wgslsmith_mult_u32(~1u, _wgslsmith_sub_u32(~global2.d.x, 4294967295u))));
}

fn func_1(arg_0: bool, arg_1: i32) -> f32 {
    let var_0 = global2.b;
    global3 = array<u32, 20>();
    let var_1 = vec3<bool>(!(firstTrailingBit(max(u_input.c.x, 3044u)) > _wgslsmith_dot_vec2_u32(vec2<u32>(1044u, 1u), vec2<u32>(u_input.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(43411u, 20u)], 20u)]))), all(select(!vec2<bool>(false, global2.c), vec2<bool>(true, arg_0), select(vec2<bool>(true, false), select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), vec2<bool>(true, true)), global2.c))), arg_0);
    var var_2 = var_1;
    let var_3 = _wgslsmith_dot_vec3_u32(~(global2.d.ywy & ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 64118u, global2.d.x), vec3<u32>(66643u, global3[_wgslsmith_index_u32(0u, 20u)], 4294967295u))), countOneBits(func_2(_wgslsmith_mult_u32(~global2.d.x, ~5227u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(global2.d);
    var var_1 = _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_i32(abs(min(global2.b, u_input.a.x)), _wgslsmith_clamp_i32(-1i, global2.b, -8357i) << (var_0.x % 32u)) <= firstTrailingBit(~global2.b << (select(global1[_wgslsmith_index_u32(26079u, 8u)], 7283u, true) % 32u)), global2.b));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2219f, 1832f))))), _wgslsmith_f_op_f32(ceil(-242f))));
    var_2 = -1463f;
    global3 = array<u32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b, u_input.a.x, -1i, 2147483647i), vec4<i32>(-6050i, global2.b, 0i, -2147483647i)) & -2147483647i) ^ -2147483647i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, -1000f, -234f, global2.a.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-796f, -628f, 1274f, global2.a.x)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a.x, -1215f, 747f, -214f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.a.x, global2.a.x, global2.a.x, -190f), vec4<f32>(global2.a.x, global2.a.x, global2.a.x, -1840f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-850f, global2.a.x, global2.a.x, -394f)) + _wgslsmith_div_vec4_f32(vec4<f32>(global2.a.x, 908f, -747f, -1307f), vec4<f32>(global2.a.x, global2.a.x, global2.a.x, -1000f)))))), ~global2.d.x, _wgslsmith_sub_u32(1u, u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.a.x)), _wgslsmith_f_op_f32(sign(1882f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1398f + global2.a.x), 1000f)));
}

