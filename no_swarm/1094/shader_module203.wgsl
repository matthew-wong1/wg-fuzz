struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: u32;

var<private> global2: bool;

var<private> global3: array<vec4<bool>, 4>;

var<private> global4: Struct_1 = Struct_1(-7289i, vec3<i32>(0i, -14929i, -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    let var_0 = reverseBits(u_input.b.x);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 889f)) * _wgslsmith_f_op_f32(select(-1989f, 327f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2202f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1743f + 1598f)))))), -379f);
    global1 = ~var_0;
    var var_2 = Struct_2(Struct_1(-202i, vec3<i32>(-22913i, global4.b.x, ~(~(-2147483647i)))));
    let var_3 = 109827u;
    return var_0;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    global3 = array<vec4<bool>, 4>();
    var var_0 = Struct_1(u_input.d, _wgslsmith_mult_vec3_i32(global4.b, ~(~firstLeadingBit(global4.b))));
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(countOneBits(func_3()), arg_0.x), u_input.e.x, arg_0.x);
    let var_2 = _wgslsmith_mod_u32(var_1.x, 0u);
    var var_3 = Struct_2(Struct_1(global4.a, vec3<i32>(-u_input.d, _wgslsmith_dot_vec3_i32(max(vec3<i32>(-2269i, global4.b.x, -42063i), global4.b), ~vec3<i32>(global4.a, u_input.d, global4.a)), 1i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(3254f, 866f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1298f)))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> vec2<f32> {
    let var_0 = ~(u_input.e.x << (~_wgslsmith_sub_u32(0u & u_input.c.x, ~u_input.c.x) % 32u));
    global2 = (max(_wgslsmith_clamp_i32(-20575i, -global4.b.x, ~u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(31557i, arg_0), vec2<i32>(global4.a, arg_0))) | -3916i) <= arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -195f));
    let var_2 = Struct_2(Struct_1(global4.a, global4.b));
    global0 = !select(!vec3<bool>(u_input.c.x != u_input.c.x, u_input.a < 0u, global0.x && false), select(select(!vec3<bool>(true, global0.x, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, false, global0.x)), select(vec3<bool>(true, true, global0.x), vec3<bool>(true, true, global0.x), vec3<bool>(false, false, global0.x))), vec3<bool>(global0.x, false, !global0.x), select(false, true, false)), !(global0.x | all(vec4<bool>(global0.x, global0.x, global0.x, false))));
    return arg_1.yx;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = -852f;
    global4 = arg_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(-1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(701f, var_0, -668f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(func_2(vec3<u32>(54966u, u_input.a, 0u))), 410f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) * vec3<f32>(var_0, -868f, -1000f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, -492f, var_0), vec3<f32>(var_0, 1983f, -738f))))))));
    let var_2 = arg_0;
    global1 = _wgslsmith_clamp_u32(4998u, ((_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a) & (u_input.e.x >> (u_input.b.x % 32u))) ^ 68308u) & u_input.b.x, 4294967295u);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.c.x;
    global3 = array<vec4<bool>, 4>();
    global3 = array<vec4<bool>, 4>();
    var var_0 = ~(-_wgslsmith_div_i32(38757i, firstTrailingBit(-u_input.d)));
    var var_1 = Struct_1(u_input.d, reverseBits(vec3<i32>(_wgslsmith_add_i32(global4.b.x, -9582i), global4.b.x << (4294967295u % 32u), func_1(Struct_1(-22096i, global4.b))) & vec3<i32>(~u_input.d, ~0i, global4.b.x)));
    global1 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~3674u, ~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), u_input.c.x << (u_input.c.x % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 0u), select(u_input.b, u_input.c.xxx, vec3<bool>(global0.x, false, true)))), min(vec4<u32>(34057u, u_input.b.x ^ 4294967295u, max(u_input.e.x, 18620u), 1u | u_input.e.x), u_input.c)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-50937i, var_1.b.x, -1i), vec3<i32>(global4.a, u_input.d, 3899i)) << (_wgslsmith_sub_u32(2757u, 1u) % 32u), -10204i >> (0u % 32u)), u_input.b.x, ~u_input.c.x);
}

