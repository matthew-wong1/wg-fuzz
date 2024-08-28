struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2577i;

var<private> global1: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false));

var<private> global2: vec2<u32>;

var<private> global3: i32 = -18081i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<bool>) -> vec2<u32> {
    global3 = -max(_wgslsmith_mult_i32(~u_input.d, 1i) | ~(u_input.d & u_input.d), _wgslsmith_clamp_i32(0i, 0i, select(~49717i, 5455i, !arg_3.x)));
    let var_0 = !(any(vec2<bool>(true, true)) & !any(!global1[_wgslsmith_index_u32(4294967295u, 20u)]));
    global3 = -1i;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-arg_2.a), Struct_1(~min(arg_0, arg_0)));
    var var_2 = abs(u_input.d >> ((var_1.b.a | 90078u) % 32u)) != -1i;
    return vec2<u32>(min(arg_2.b.a, ~_wgslsmith_clamp_u32(arg_0, 55785u, u_input.b) ^ arg_0), _wgslsmith_sub_u32(~min(~u_input.c, global2.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.a, arg_1.a, var_1.b.a, u_input.c) << (vec4<u32>(var_1.b.a, 56365u, u_input.a, arg_0) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(6899u, 0u, global2.x, arg_1.a), vec4<u32>(32351u, var_1.b.a, global2.x, 51618u)))));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    let var_0 = ~(~vec3<u32>(~(u_input.c & u_input.c), global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, u_input.b, 0u, 1743u) & vec4<u32>(u_input.a, 0u, 53466u, 72315u), select(vec4<u32>(global2.x, 29913u, u_input.c, 0u), vec4<u32>(50432u, global2.x, u_input.b, 1u), vec4<bool>(true, false, arg_0.x, arg_0.x)))));
    global1 = array<vec3<bool>, 20>();
    var var_1 = vec2<u32>(countOneBits(~1u), 76862u);
    var_1 = firstLeadingBit(max(min(vec2<u32>(var_0.x, u_input.c) & var_0.yx, vec2<u32>(global2.x, ~0u)), func_3(var_0.x, Struct_1(_wgslsmith_add_u32(1u, 35133u)), Struct_2(-391f, Struct_1(global2.x)), !(!vec2<bool>(true, arg_0.x)))));
    global3 = min(u_input.d, _wgslsmith_add_i32(_wgslsmith_sub_i32((u_input.d << (32029u % 32u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_0.x), var_0.zz) % 32u), 117i), _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), vec4<i32>(u_input.d, u_input.d, -61297i, -2147483647i) ^ vec4<i32>(u_input.d, -2147483647i, 49712i, 2147483647i))));
    return ~countOneBits(min(global2.x, 1u) >> (~var_0.x % 32u)) < global2.x;
}

fn func_1(arg_0: vec2<i32>) -> StorageBuffer {
    var var_0 = !(func_2(!(!global1[_wgslsmith_index_u32(u_input.b, 20u)])) | !(true & all(vec3<bool>(false, false, false))));
    global1 = array<vec3<bool>, 20>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-540f + _wgslsmith_f_op_f32(-1000f + -143f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1235f * -1396f)))), Struct_1(_wgslsmith_clamp_u32(abs(u_input.a), ~(~66286u), ~global2.x)));
    global1 = array<vec3<bool>, 20>();
    global2 = func_3(abs(_wgslsmith_div_u32(~(31681u >> (0u % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(42665u, u_input.b, var_1.b.a), vec3<u32>(4294967295u, u_input.b, 1u)), global2.x))), var_1.b, var_1, !vec2<bool>(true, all(vec4<bool>(true, false, true, true))));
    return StorageBuffer(firstTrailingBit(arg_0), ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-429f))))));
    let var_1 = Struct_1(~_wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.b, 84821u), ~_wgslsmith_mod_u32(79881u, 1u)));
    global3 = 0i;
    global1 = array<vec3<bool>, 20>();
    global0 = abs(0i);
    var_0 = _wgslsmith_f_op_f32(step(-977f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-574f, -645f)) + -779f)))));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_add_vec2_i32(vec2<i32>(1i, -(u_input.d >> (global2.x % 32u))), vec2<i32>(-54197i, 3179i) >> (select(_wgslsmith_add_vec2_u32(vec2<u32>(21058u, u_input.c), vec2<u32>(925u, 53648u)), vec2<u32>(1u, u_input.a), 6964i != u_input.d) % vec2<u32>(32u))));
}

