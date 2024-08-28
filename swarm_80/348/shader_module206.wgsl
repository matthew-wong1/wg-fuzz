struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1 = Struct_1(true, 41353i, vec2<bool>(false, true));

var<private> global2: array<Struct_1, 28>;

var<private> global3: array<Struct_1, 11>;

var<private> global4: array<vec2<i32>, 4>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<u32> {
    global2 = array<Struct_1, 28>();
    let var_0 = global2[_wgslsmith_index_u32(~global0.x, 28u)];
    let var_1 = Struct_1(true, min(21739i, var_0.b), select(vec2<bool>(!any(global1.c), true), global1.c, select(global1.c, var_0.c, select(!var_0.c, !vec2<bool>(false, global1.a), true))));
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(~(~_wgslsmith_div_u32(global0.x, global0.x)), 0u), firstTrailingBit(_wgslsmith_mult_u32(min(_wgslsmith_dot_vec3_u32(global0.zzw, vec3<u32>(global0.x, global0.x, global0.x)), 3174u ^ global0.x), min(global0.x, 70407u) | firstTrailingBit(global0.x))), _wgslsmith_dot_vec3_u32(~max(global0.wzx, countOneBits(global0.yzw)), ~(vec3<u32>(global0.x, global0.x, global0.x) ^ select(vec3<u32>(global0.x, 28759u, 0u), global0.wzw, vec3<bool>(var_1.a, false, var_0.a)))), global0.x);
    let var_3 = 657f;
    return _wgslsmith_div_vec4_u32(var_2, var_2);
}

fn func_2() -> vec4<u32> {
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, global0.x, 39000u, 1u), func_3()), select(abs(vec4<u32>(1u, global0.x, global0.x, global0.x)), vec4<u32>(global0.x, 0u, 1u, 25411u), !vec4<bool>(global1.a, false, global1.a, false))), _wgslsmith_clamp_vec4_u32(func_3() ^ _wgslsmith_sub_vec4_u32(vec4<u32>(8817u, global0.x, 4294967295u, 1u), vec4<u32>(global0.x, global0.x, global0.x, 4294967295u)), ~(vec4<u32>(global0.x, global0.x, global0.x, global0.x) << (vec4<u32>(global0.x, global0.x, global0.x, global0.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 11062u, 1u, 0u) << (vec4<u32>(global0.x, 8370u, 4294967295u, global0.x) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(global0.x, global0.x, global0.x, 1u))))), ~select(select(vec4<u32>(4294967295u, 0u, 49200u, 18113u), ~vec4<u32>(global0.x, 8103u, global0.x, global0.x), true), countOneBits(~vec4<u32>(global0.x, 39268u, 45437u, 0u)), any(select(global1.c, vec2<bool>(true, global1.a), vec2<bool>(global1.a, global1.a))))), 28u)];
    global2 = array<Struct_1, 28>();
    let var_0 = global4[_wgslsmith_index_u32(1u, 4u)] & vec2<i32>(59057i, _wgslsmith_mult_i32(1i, -18752i) | (max(2147483647i, u_input.a) << (_wgslsmith_sub_u32(87529u, 17856u) % 32u)));
    var var_1 = !vec4<bool>(global1.c.x, global1.c.x || false, false, global1.a);
    let var_2 = global2[_wgslsmith_index_u32(global0.x, 28u)];
    return firstLeadingBit(_wgslsmith_div_vec4_u32(func_3(), max(vec4<u32>(0u, global0.x, global0.x, 4294967295u), vec4<u32>(global0.x, global0.x, 1u, global0.x)) | (vec4<u32>(0u, 1620u, 23558u, global0.x) << (vec4<u32>(35430u, global0.x, 4294967295u, global0.x) % vec4<u32>(32u))))) & vec4<u32>(1u, _wgslsmith_div_u32(~67358u, 23533u) & select(abs(0u), global0.x, true), global0.x, 4294967295u);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> i32 {
    global0 = ~func_2();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(264f, arg_0)))) - vec2<f32>(2244f, 494f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 + arg_0), 1147f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, arg_0))))), u_input.a < (-arg_1.b | abs(-64468i)))));
    var var_1 = (~select(vec4<u32>(global0.x, global0.x, global0.x, 69805u) << (vec4<u32>(global0.x, 1u, global0.x, global0.x) % vec4<u32>(32u)), vec4<u32>(1u, 4294967295u, global0.x, global0.x), select(vec4<bool>(false, false, arg_1.c.x, true), vec4<bool>(arg_1.a, false, true, false), vec4<bool>(false, false, false, global1.c.x))) & _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global0.x, global0.x), _wgslsmith_dot_vec3_u32(global0.xwy, vec3<u32>(global0.x, 15630u, global0.x)), 9644u, _wgslsmith_sub_u32(global0.x, global0.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 29565u, 57540u, 62518u), vec4<u32>(4294967295u, global0.x, 4294967295u, global0.x)), vec4<u32>(4294967295u, global0.x, global0.x, global0.x) & vec4<u32>(49920u, global0.x, global0.x, 4294967295u)))) << (~(firstLeadingBit(func_3()) & abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global0.x, global0.x, 52074u), vec4<u32>(1u, 14573u, global0.x, 0u), vec4<u32>(global0.x, 78200u, global0.x, 8097u)))) % vec4<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(244f * 3240f))) <= var_0.x, global1.b, vec2<bool>(1i > _wgslsmith_dot_vec2_i32(-global4[_wgslsmith_index_u32(9750u, 4u)], global4[_wgslsmith_index_u32(_wgslsmith_div_u32(37812u, 4017u), 4u)]), !all(select(vec3<bool>(false, true, true), vec3<bool>(false, arg_1.c.x, true), vec3<bool>(false, global1.c.x, global1.a)))));
    var var_3 = Struct_1(false, u_input.a, !(!vec2<bool>(true, var_1.x < var_1.x)));
    return -12138i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_add_i32(-(1i ^ u_input.a), firstTrailingBit(abs(1i))), u_input.a);
    var var_1 = func_1(-962f, global3[_wgslsmith_index_u32(4294967295u, 11u)]);
    var_0 = -2147483647i;
    let var_2 = ~(~global0.zx << (vec2<u32>(17625u, 4294967295u) % vec2<u32>(32u)));
    var var_3 = Struct_1(all(!select(vec4<bool>(global1.a, global1.c.x, global1.c.x, false), vec4<bool>(true, global1.a, true, global1.a), vec4<bool>(true, true, true, true))), u_input.a, vec2<bool>(any(vec3<bool>(!global1.c.x, any(vec4<bool>(global1.c.x, false, false, global1.c.x)), var_2.x == 0u)), any(select(select(vec4<bool>(true, true, global1.c.x, global1.c.x), vec4<bool>(false, global1.a, global1.a, global1.a), false), select(vec4<bool>(global1.c.x, global1.a, false, false), vec4<bool>(global1.c.x, global1.a, false, global1.c.x), vec4<bool>(false, global1.c.x, true, global1.a)), true))));
    var var_4 = global3[_wgslsmith_index_u32(global0.x, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(firstLeadingBit((global0.xxx ^ global0.wzx) | ~vec3<u32>(global0.x, 4294967295u, 9054u)), func_3().yzy & abs(global0.zxz)), ~(~14522u));
}

