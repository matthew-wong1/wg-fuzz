struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(38891i, 41433i, 13412i), -1i, Struct_1(1u, i32(-2147483648)), Struct_1(0u, -1i), true);

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_3, 12>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2) -> vec4<bool> {
    return vec4<bool>(all(vec3<bool>(global0.d.a != _wgslsmith_dot_vec4_u32(vec4<u32>(13925u, u_input.a, 61652u, arg_1.d.a), vec4<u32>(40166u, 4294967295u, arg_1.c.a, u_input.a)), true | all(vec4<bool>(arg_1.e, false, true, global0.e)), global0.e)), any(arg_0), all(arg_0), arg_1.e);
}

fn func_2() -> f32 {
    global0 = Struct_2(vec3<i32>(-(~41736i), -2147483647i, _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, global1.x), _wgslsmith_dot_vec3_i32(global1.wwy, vec3<i32>(global1.x, 1i, 8661i))), _wgslsmith_sub_i32(max(-664i, -1i), 1i))), -global0.d.b, global0.d, global0.d, any(select(func_3(vec2<bool>(true, true), Struct_2(global0.a, 0i, Struct_1(6470u, global1.x), global0.c, global0.e)), select(select(vec4<bool>(true, global0.e, global0.e, global0.e), vec4<bool>(false, false, global0.e, global0.e), vec4<bool>(global0.e, global0.e, true, global0.e)), vec4<bool>(true, global0.e, global0.e, global0.e), !vec4<bool>(true, global0.e, true, global0.e)), !(global0.e & global0.e))));
    global0 = Struct_2(-global0.a, _wgslsmith_div_i32(global1.x, countOneBits(-global0.a.x)) ^ ~(~(global0.a.x << (u_input.a % 32u))), global0.c, global0.c, all(select(!vec4<bool>(global0.e, global0.e, global0.e, global0.e), vec4<bool>(global0.e, true, true, true), false & global0.e)) & global0.e);
    global2 = array<Struct_3, 12>();
    var var_0 = Struct_3(~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 6839u, 4294967295u, 1u), vec4<u32>(u_input.a, global0.c.a, global0.c.a, u_input.a)), 4294967295u, 1u)));
    let var_1 = _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(82564i, global0.d.b)), -firstTrailingBit(~select(global1.wz, global0.a.yx, global0.e)), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(global0.a.yy, -abs(vec2<i32>(0i, global0.c.b))), vec2<i32>(global1.x, _wgslsmith_div_i32(global0.d.b, 0i)) & global1.xw));
    return 284f;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-181f, 491f, 1268f, -1000f) + vec4<f32>(-1000f, 1457f, -1000f, -404f)))), vec4<f32>(_wgslsmith_f_op_f32(max(1263f, -1430f)), 1553f, _wgslsmith_f_op_f32(1471f - 543f), 1534f), true)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1499f, 1557f, _wgslsmith_div_f32(1212f, -626f), _wgslsmith_f_op_f32(-170f - 401f)) * vec4<f32>(_wgslsmith_f_op_f32(round(378f)), _wgslsmith_f_op_f32(f32(-1f) * -1269f), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-829f - -430f)))));
    var var_1 = ~(1u ^ ~_wgslsmith_mod_u32(1u, 0u | global0.c.a));
    var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(abs(var_0))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1135f) - _wgslsmith_f_op_f32(f32(-1f) * -1142f)), _wgslsmith_f_op_f32(var_0.x * -1058f), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + _wgslsmith_f_op_f32(-386f * var_0.x))) - _wgslsmith_f_op_vec4_f32(-var_0)));
    var var_3 = var_0.xw;
    return -global0.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec3<i32>(~func_1(), ~_wgslsmith_div_i32(-1i, global0.c.b), ~(~14061i)), i32(-1i) * -4621i, global0.c, global0.d, !global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(u_input.a, ~0u, func_3(!vec2<bool>(global0.e, false), Struct_2(vec3<i32>(global1.x, -31003i, 31735i), global0.a.x, Struct_1(global0.d.a, 0i), global0.d, global0.e)).x), _wgslsmith_add_u32(u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, 1859u), vec4<u32>(global0.c.a, global0.d.a, u_input.a, 261u))), firstLeadingBit(4336u)));
}

