struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1 = Struct_1(-1292f, false);

var<private> global2: array<bool, 15> = array<bool, 15>(true, true, false, true, false, false, false, true, true, true, true, false, true, true, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    global2 = array<bool, 15>();
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) * -862f), arg_0);
    global2 = array<bool, 15>();
    var var_0 = u_input.a.xz;
    var var_1 = vec3<u32>(abs(1u), ~(~(~u_input.a.x)), var_0.x | _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, var_0.x & var_0.x, reverseBits(var_0.x), 1u), firstLeadingBit(~vec4<u32>(57174u, u_input.a.x, var_0.x, 4294967295u))));
    return vec4<i32>(-(-73628i >> (countOneBits(u_input.a.x) % 32u)) >> (1u % 32u), ~(~(-67400i)), min(-24994i, 2147483647i), ~_wgslsmith_mod_i32(-abs(0i), 16607i));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: vec2<f32>) -> bool {
    let var_0 = func_3(global0.x);
    global2 = array<bool, 15>();
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(960f, 1360f), arg_3)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(arg_3, arg_3)), arg_3, select(vec2<bool>(global0.x, global0.x), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], false), global0.zy)))))));
    global1 = Struct_1(-784f, any(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global2[_wgslsmith_index_u32(1u, 15u)], global1.b, false), vec3<bool>(true, true, true))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), !(!any(select(vec4<bool>(global1.b, false, false, global2[_wgslsmith_index_u32(1u, 15u)]), vec4<bool>(global1.b, global2[_wgslsmith_index_u32(1u, 15u)], global0.x, global1.b), global1.b))));
    return global0.x;
}

fn func_1() -> vec2<i32> {
    global0 = select(vec3<bool>(!global1.b, all(vec4<bool>(global0.x, global1.a < global1.a, !global0.x, true)), all(vec4<bool>(global1.b, false, select(false, true, false), true))), vec3<bool>(true, !(true & !global0.x), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1324f), _wgslsmith_add_i32(_wgslsmith_div_i32(15515i, -1i), 0i), -1i, vec2<f32>(global1.a, _wgslsmith_f_op_f32(min(-810f, global1.a))))), !all(select(select(vec3<bool>(global0.x, global2[_wgslsmith_index_u32(0u, 15u)], true), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 15u)], global2[_wgslsmith_index_u32(u_input.c.x, 15u)]), vec3<bool>(false, false, true)), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], global1.b), vec3<bool>(true, false, false), vec3<bool>(true, global0.x, true)), select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 15u)], false), vec3<bool>(false, false, false), vec3<bool>(global0.x, false, global0.x)))));
    let var_0 = vec3<i32>(1i << ((_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), u_input.a.xz) | 36755u) % 32u), 55860i, _wgslsmith_div_i32(_wgslsmith_div_i32(69946i, _wgslsmith_mult_i32(26055i, select(-38320i, 18014i, global2[_wgslsmith_index_u32(15013u, 15u)]))), -func_3(global0.x & false).x));
    let var_1 = countOneBits(var_0.x);
    global2 = array<bool, 15>();
    let var_2 = Struct_2(global1.a >= 1009f);
    return var_0.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(-_wgslsmith_clamp_i32(2147483647i, -1i, 28710i), -2147483647i);
    var var_1 = ~firstTrailingBit(4294967295u);
    var_1 = ~(~countOneBits(u_input.b.x & 48887u));
    var_0 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(abs(var_0.x), ~(-2147483647i)), min(var_0.x, -7305i)), var_0.x);
    var_0 = _wgslsmith_sub_vec2_i32(max(func_1(), vec2<i32>(-1i, _wgslsmith_mult_i32(-32254i, 1i))), ~_wgslsmith_div_vec2_i32(vec2<i32>(0i, _wgslsmith_add_i32(var_0.x, var_0.x)), -func_1()));
    global2 = array<bool, 15>();
    var_1 = _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.b.x, 18211u), vec3<u32>(u_input.a.x, 8480u, 24871u)), 0u, u_input.c.x)), vec4<u32>(abs(76788u), reverseBits(_wgslsmith_mod_u32(u_input.c.x, 4294967295u)), u_input.c.x, 4282u));
    var_0 = vec2<i32>(min(-2147483647i, 0i), var_0.x);
    let var_2 = Struct_2(all(global0.zx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~u_input.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(49150u, 16034u), vec2<u32>(reverseBits(4369u), u_input.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -790f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a, _wgslsmith_f_op_f32(floor(742f)), _wgslsmith_f_op_f32(global1.a * -1000f)))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(-1612f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a))), 2032f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-341f, -1078f, global1.a, 815f)) - vec4<f32>(global1.a, global1.a, global1.a, global1.a))))), _wgslsmith_f_op_f32(f32(-1f) * -1998f));
}

