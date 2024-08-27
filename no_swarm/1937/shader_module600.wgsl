struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14>;

var<private> global1: vec3<bool>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(1u), u_input.e, 1u, _wgslsmith_clamp_u32(global2.b, min(78106u, 5651u), 1u)), select(_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(arg_1.b, 14u)], _wgslsmith_sub_vec4_u32(vec4<u32>(global2.b, 1917u, 0u, 3800u), vec4<u32>(17119u, 1u, global2.b, 1u))), ~global0[_wgslsmith_index_u32(u_input.e, 14u)], global1.x)), u_input.e, ~(~global2.b), min(abs(_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 1u, arg_2.x, global2.b), vec4<u32>(16753u, arg_2.x, u_input.e, u_input.e)), ~global0[_wgslsmith_index_u32(18752u, 14u)])), firstLeadingBit(arg_2.x)));
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -721f, 237f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-586f, 1069f, 1270f), vec3<f32>(791f, -1134f, 646f))))) * vec3<f32>(-1000f, -533f, 1f)) + vec3<f32>(-1381f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(793f, -408f)))), _wgslsmith_f_op_f32(max(-696f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1387f - -634f))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_2.x)))), _wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(abs(var_2.x)))), _wgslsmith_f_op_f32(abs(1966f))));
    var var_3 = arg_1;
    return var_0.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = ~(~(i32(-1i) * -18711i)) > _wgslsmith_add_i32(arg_0.x, -1i);
    var var_1 = 12285u;
    var_0 = global1.x;
    var_1 = _wgslsmith_mod_u32(~26392u, abs(u_input.e));
    var var_2 = false;
    return max(select(global2.b, 1u, all(select(global1.xz, vec2<bool>(arg_2.x, global1.x), vec2<bool>(global1.x, arg_2.x)))), 1u ^ func_3(vec2<i32>(countOneBits(u_input.b), global2.a), Struct_1(_wgslsmith_div_i32(arg_0.x, -5035i), abs(u_input.e)), _wgslsmith_mod_vec3_u32(vec3<u32>(13061u, 13060u, u_input.e), countOneBits(vec3<u32>(17277u, 1u, u_input.e)))));
}

fn func_1() -> Struct_1 {
    let var_0 = ~min(~max(vec4<u32>(1u, global2.b, 41706u, 4294967295u), vec4<u32>(global2.b, 78165u, u_input.e, u_input.e)), global0[_wgslsmith_index_u32(func_2(u_input.d & vec2<i32>(-25379i, u_input.a), vec4<f32>(560f, -632f, 324f, -443f), !vec4<bool>(global1.x, global1.x, false, true)), 14u)]) | _wgslsmith_sub_vec4_u32(~select(abs(global0[_wgslsmith_index_u32(u_input.e, 14u)]), global0[_wgslsmith_index_u32(53599u, 14u)] ^ global0[_wgslsmith_index_u32(u_input.e, 14u)], !vec4<bool>(false, true, false, global1.x)), ~global0[_wgslsmith_index_u32(abs(global2.b), 14u)]);
    let var_1 = vec2<i32>(2147483647i << (~(31044u & global2.b) % 32u), 0i);
    var var_2 = Struct_1(global2.a, ~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.x, 1u), u_input.e), 4294967295u));
    let var_3 = vec4<bool>(global1.x & !global1.x, all(vec4<bool>(global1.x, !global1.x, global1.x, any(vec4<bool>(false, global1.x, global1.x, true)))), global1.x, !global1.x);
    global1 = vec3<bool>(all(vec4<bool>(!global1.x & all(vec3<bool>(var_3.x, global1.x, true)), any(!var_3.zyy), global1.x, false)), all(select(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, var_3.x, true), global1.x), select(select(vec3<bool>(var_3.x, global1.x, false), var_3.yxw, var_3.zzx), select(vec3<bool>(true, false, var_3.x), vec3<bool>(true, global1.x, global1.x), global1.x), select(vec3<bool>(var_3.x, global1.x, false), vec3<bool>(false, false, var_3.x), var_3.x)), true)), true);
    return Struct_1(0i, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, all(!select(!vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, false, global1.x), !vec3<bool>(global1.x, global1.x, true))));
    let var_1 = false;
    global0 = array<vec4<u32>, 14>();
    let var_2 = vec3<bool>(all(select(!var_0, global1.yz, !var_0)), true, !global1.x);
    let var_3 = _wgslsmith_dot_vec3_i32(min(vec3<i32>(0i, 2147483647i & (-16364i >> (global2.b % 32u)), u_input.c), vec3<i32>(firstTrailingBit(u_input.b << (global2.b % 32u)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global2.a, -4907i), global2.a, 5553i), min(u_input.b, u_input.c) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global2.a, 1i, -34252i), vec4<i32>(1i, global2.a, 0i, -16989i)))), vec3<i32>(i32(-1i) * -13393i, (0i & _wgslsmith_sub_i32(u_input.c, 56096i)) | -2147483647i, -1i));
    var var_4 = func_1();
    global0 = array<vec4<u32>, 14>();
    let var_5 = Struct_1(global2.a, 4294967295u);
    global2 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(~(-(var_4.a >> (u_input.e % 32u))) | u_input.d.x);
}

