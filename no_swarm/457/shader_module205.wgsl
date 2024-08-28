struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(43791u, vec2<f32>(-1006f, -631f), vec3<f32>(-498f, 1935f, 238f), vec4<u32>(4294967295u, 1u, 126u, 4294967295u));

var<private> global1: vec3<i32> = vec3<i32>(-1i, -51678i, -39662i);

var<private> global2: array<Struct_1, 20>;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = select(!vec3<bool>(!all(vec2<bool>(true, true)), true, true), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), true), (-2147483647i | global1.x) >= select(108047i, u_input.b, false)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), all(vec4<bool>(false, true, true, true))), any(vec4<bool>(true, true, true, true))), true);
    var var_1 = abs(vec4<i32>(-50308i, _wgslsmith_div_i32(max(-arg_0, _wgslsmith_add_i32(arg_0, u_input.c)), firstTrailingBit(41329i)), 51166i, ~_wgslsmith_clamp_i32(global1.x, -global1.x, 1i)));
    var_1 = -min(vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, -43808i), select(vec3<i32>(0i, var_1.x, global1.x), var_1.zzw, var_0.x)), firstLeadingBit(arg_0), u_input.c), select(abs(vec4<i32>(-11675i, arg_0, global1.x, var_1.x) | vec4<i32>(var_1.x, -15490i, -11774i, arg_0)), max(~vec4<i32>(-2147483647i, -9962i, global1.x, arg_0), vec4<i32>(u_input.b, u_input.c, var_1.x, 10367i)), !(!vec4<bool>(false, var_0.x, true, false))));
    var_1 = vec4<i32>(var_1.x, -50113i, ~var_1.x, ~(-6867i));
    global2 = array<Struct_1, 20>();
    return var_1.zzw & _wgslsmith_div_vec3_i32(~_wgslsmith_clamp_vec3_i32(-var_1.zwy, var_1.ywy, var_1.xxy), vec3<i32>(-16472i, -7745i, ~max(1i, arg_0)));
}

fn func_4(arg_0: vec3<i32>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~_wgslsmith_mult_u32(18814u, u_input.a) & (_wgslsmith_mod_u32(u_input.a, u_input.a) ^ _wgslsmith_sub_u32(0u, global3.a))), global3.d.x), 20u)];
    var var_1 = -522f;
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(45173u, reverseBits(global3.d.x), firstLeadingBit(u_input.a), 19608u >> (global0.d.x % 32u)), var_0.d), 1u), 20u)];
    let var_3 = vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(1000f + global3.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, global0.b.x) * _wgslsmith_f_op_f32(trunc(-423f))))), -524f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -981f), global3.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1853f)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3));
    return 2619u;
}

fn func_2() -> Struct_1 {
    var var_0 = abs(min(global0.d.x, func_4(func_3(1i))));
    let var_1 = vec3<i32>(20395i << (1u % 32u), _wgslsmith_mult_i32(-firstLeadingBit(-global1.x), -1i), -global1.x);
    var var_2 = -1i;
    global2 = array<Struct_1, 20>();
    return Struct_1(1u, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x * 1071f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(808f, global3.c.x, true)) * _wgslsmith_f_op_f32(global3.b.x - global0.b.x))), global3.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.c.x, _wgslsmith_div_f32(global3.b.x, global0.b.x), 134f))), global0.c, !vec3<bool>(false, false, global1.x > u_input.b))), vec4<u32>(~(~_wgslsmith_add_u32(7989u, global3.d.x)), abs(4294967295u), 0u, ~(~1u)));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = global3.b;
    var var_1 = func_2();
    global3 = global2[_wgslsmith_index_u32(4294967295u, 20u)];
    var var_2 = Struct_1(abs(1u) ^ ~_wgslsmith_mult_u32(~19986u, ~global0.d.x), vec2<f32>(_wgslsmith_f_op_f32(sign(-2229f)), _wgslsmith_f_op_f32(floor(-256f))), vec3<f32>(global3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.x, global3.c.x) + -824f)), global0.c.x), vec4<u32>(_wgslsmith_clamp_u32(~36328u, global3.d.x, ~(global0.a & u_input.a)), ~func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.c, -10548i), vec3<i32>(arg_0, arg_0, global1.x))), 0u, 1u));
    var var_3 = _wgslsmith_f_op_vec3_f32(-global0.c);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 1367f, var_3.x, 367f)) * vec4<f32>(-793f, 164f, 850f, global0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(~u_input.a))) & global3.a;
    global2 = array<Struct_1, 20>();
    let var_1 = vec3<i32>(3303i ^ _wgslsmith_mod_i32(-2147483647i, -u_input.c), _wgslsmith_sub_i32(u_input.b | -global1.x, global1.x), -1i) ^ ~vec3<i32>(492i, _wgslsmith_div_i32(global1.x, abs(u_input.b)), 1i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(global3.c.x, -1440f)));
    global2 = array<Struct_1, 20>();
    var var_3 = vec2<i32>(var_1.x, abs(~reverseBits(-global1.x)));
    var var_4 = ~(-(i32(-1i) * -var_3.x));
    let var_5 = global2[_wgslsmith_index_u32(51244u, 20u)];
    let var_6 = vec3<i32>(_wgslsmith_sub_i32(abs(~var_3.x), u_input.c), -1i, var_3.x);
    let x = u_input.a;
    s_output = func_1(min(~_wgslsmith_dot_vec3_i32(vec3<i32>(-21396i, var_1.x, var_1.x), var_1) >> (22029u % 32u), -1i));
}

