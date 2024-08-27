struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-1675f, 211f, 593f, -650f), vec4<f32>(549f, -859f, -612f, 310f), vec4<f32>(-825f, -338f, 637f, -1087f));

var<private> global1: Struct_1;

var<private> global2: vec3<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32) -> i32 {
    global1 = Struct_1(40528u, vec4<bool>(true, !global2.x, true, false));
    global2 = !(!vec3<bool>(true, !all(global1.b), select(global1.b.x, global1.b.x | false, global1.b.x)));
    global0 = array<vec4<f32>, 3>();
    global2 = !global1.b.xwy;
    let var_0 = _wgslsmith_dot_vec3_u32(select(abs(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global1.a, 26243u), vec3<u32>(1u, global1.a, 0u), vec3<u32>(global1.a, 4294967295u, 1u)), vec3<u32>(global1.a, global1.a, 1u), vec3<bool>(global2.x, false, true))), ~(~(vec3<u32>(global1.a, 0u, global1.a) ^ vec3<u32>(global1.a, global1.a, 1u))), select(global1.b.xzx, global1.b.zxz, !select(global1.b.wxy, vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, global1.b.x, true)))), ~_wgslsmith_div_vec3_u32(~vec3<u32>(0u, global1.a, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(26444u, 31717u, 38236u), countOneBits(vec3<u32>(global1.a, 4294967295u, global1.a)))));
    return min(29309i, abs(max(-15253i, abs(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    global2 = select(vec3<bool>(any(select(vec3<bool>(false, global2.x, false), global1.b.xzy, true)), true, false), !(!vec3<bool>(true, global1.b.x, any(vec3<bool>(false, false, false)))), select(vec3<bool>(true, global1.b.x, all(arg_1.b.xw)), select(arg_1.b.zzw, global1.b.yww, !global1.b.zzw), !vec3<bool>(any(vec3<bool>(true, global2.x, global2.x)), global2.x, all(global1.b.xw))));
    var var_0 = -(~reverseBits(arg_0));
    let var_1 = vec3<bool>(true, !any(global1.b.zzz), true);
    var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a | countOneBits(u_input.a), vec4<i32>(u_input.a.x, -2147483647i, i32(-1i) * -15759i, -1i)) & u_input.a, firstLeadingBit(-u_input.a));
    global1 = arg_1;
    return Struct_1(max(arg_2.x, firstLeadingBit(arg_2.x)), vec4<bool>(false, true, var_1.x, !(global1.b.x | true)));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    global0 = array<vec4<f32>, 3>();
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x * arg_0.x))), 270f));
    let var_1 = global1.a;
    global2 = select(vec3<bool>(false, true, global1.b.x), vec3<bool>(all(!global1.b.xxw), true, all(!vec2<bool>(global1.b.x, true)) & true), global1.b.yyw);
    let var_2 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global1.a ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, global1.a, 4294967295u), vec3<u32>(0u, global1.a, 1u))), ~(~select(vec2<u32>(global1.a, global1.a), vec2<u32>(22108u, 0u), global2.xz))), -2147483647i, func_3(select(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.yxw, u_input.a.zwx, vec3<i32>(-28180i, u_input.a.x, -11122i)), u_input.a.wxw >> (vec3<u32>(0u, 33079u, global1.a) % vec3<u32>(32u))), ~func_2(945f), global1.b.x), Struct_1(4294967295u, global1.b), abs(~vec4<u32>(global1.a, global1.a, 4294967295u, 35286u) ^ ~vec4<u32>(4294967295u, global1.a, global1.a, global1.a))));
    return ~global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!(!global1.b.yyx)));
    let var_1 = _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~(~(~(~global1.a))), 3u)] * _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~(~31439u), 3u)]));
    let var_2 = Struct_3(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.zyx - var_1.zyw)) * var_1.wzz)), (~u_input.a.xxy ^ -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.a.x), u_input.a.yxw)) << (~(~(~vec3<u32>(12469u, global1.a, global1.a))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1697f - var_1.x)))), var_1.x, func_3(u_input.a.x, Struct_1(_wgslsmith_clamp_u32(1u, global1.a, ~35824u), !select(global1.b, global1.b, false)), _wgslsmith_div_vec4_u32(~abs(vec4<u32>(2487u, global1.a, 0u, global1.a)), max(~vec4<u32>(global1.a, global1.a, global1.a, global1.a), ~vec4<u32>(global1.a, 4294967295u, global1.a, 22167u)))));
    let var_3 = vec3<u32>(var_2.e.a, global1.a, var_2.a);
    global1 = Struct_1(var_2.e.a << (~global1.a % 32u), var_2.e.b);
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

