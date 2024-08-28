struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -568f;

var<private> global1: vec4<f32> = vec4<f32>(1652f, 808f, -1171f, -368f);

var<private> global2: vec2<i32> = vec2<i32>(-32002i, 1i);

var<private> global3: vec2<bool>;

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = (vec2<u32>(~u_input.a, global4.b) ^ ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, global4.b)))) | vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 57961u & global4.b, _wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(1u, u_input.c.x)), ~global4.b), countOneBits(select(vec4<u32>(1u, 10837u, global4.b, 3204u), vec4<u32>(u_input.c.x, 1u, u_input.a, 0u), false))), countOneBits(abs(global4.b)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)));
    global3 = vec2<bool>(true, !(arg_0.x < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(705f, global1.x, false))))));
    let var_1 = firstLeadingBit(16309i);
    global3 = !(!vec2<bool>(!(global4.b == 74516u), true));
    return vec3<bool>(all(vec2<bool>(_wgslsmith_mod_u32(var_0.x, u_input.a) < (1u << (u_input.a % 32u)), !global4.c.x)), any(select(vec2<bool>(true, true), select(vec2<bool>(global3.x, false), vec2<bool>(global4.c.x, global3.x), global4.c), vec2<bool>(u_input.a >= var_0.x, true))), global3.x || (-1i > (0i ^ ~u_input.b)));
}

fn func_2() -> vec3<bool> {
    return select(select(!vec3<bool>(select(global4.c.x, true, global4.c.x), global3.x, false), select(!select(vec3<bool>(true, false, false), vec3<bool>(global3.x, false, global4.c.x), vec3<bool>(global4.c.x, true, false)), select(vec3<bool>(false, global4.c.x, global3.x), select(vec3<bool>(global4.c.x, false, false), vec3<bool>(true, global4.c.x, true), vec3<bool>(global3.x, global3.x, global4.c.x)), vec3<bool>(false, true, true)), select(func_3(global1.xwz), vec3<bool>(global3.x, true, global4.c.x), select(vec3<bool>(global4.c.x, global4.c.x, global3.x), vec3<bool>(true, global3.x, global3.x), false))), true), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !select(select(vec3<bool>(global4.c.x, false, true), vec3<bool>(global3.x, global3.x, global3.x), true), vec3<bool>(true, true, true), select(vec3<bool>(global3.x, global4.c.x, true), vec3<bool>(global3.x, true, true), global4.c.x)), vec3<bool>(true, ~u_input.e > 24693u, any(select(vec4<bool>(true, true, global4.c.x, false), vec4<bool>(false, true, false, global4.c.x), global3.x)))), select(func_3(global1.ywx), vec3<bool>(global3.x, global3.x, true), vec3<bool>(any(!vec3<bool>(true, global4.c.x, global3.x)), true, global4.c.x)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<bool> {
    return select(!(!vec3<bool>(true, all(vec3<bool>(global4.c.x, arg_1, global3.x)), arg_1)), vec3<bool>(true, all(!select(vec4<bool>(arg_1, arg_2.c.x, false, true), vec4<bool>(true, global4.c.x, true, arg_0.c.x), vec4<bool>(true, false, arg_0.c.x, true))), false), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u & ~_wgslsmith_sub_u32(~abs(u_input.e), global4.b);
    let var_1 = !select(!vec3<bool>(global3.x, true, !global3.x), !select(func_1(Struct_1(vec3<i32>(13053i, global2.x, 19882i), 4294967295u, vec2<bool>(global3.x, global3.x)), true, Struct_1(global4.a, global4.b, global4.c), vec4<u32>(u_input.d, 19752u, 24864u, u_input.d)), vec3<bool>(false, global3.x, global3.x), false), global3.x);
    global4 = Struct_1(vec3<i32>(-1231i, global4.a.x, i32(-1i) * -2456i), abs(~(~(~4294967295u))), global4.c);
    var var_2 = Struct_1(max(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(global2.x, u_input.b, global2.x)), max(vec3<i32>(global2.x, -12082i, global4.a.x), global4.a)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-24094i, -2147483647i, -2147483647i, global2.x), vec4<i32>(-37198i, global4.a.x, u_input.b, global4.a.x)), 1i, abs(global4.a.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, ~global4.a.x, 1i), vec3<i32>(_wgslsmith_dot_vec2_i32(global4.a.yy, global4.a.zx), 2147483647i, u_input.b), -(~global4.a))), 4294967295u, vec2<bool>(var_1.x, select(false, var_1.x, global4.c.x)));
    let var_3 = Struct_1(min(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, -20043i), vec3<i32>(var_2.a.x, global2.x, 12157i)), ~_wgslsmith_sub_i32(global2.x, 0i), _wgslsmith_clamp_i32(~39332i, ~2147483647i, abs(1i))), ~global4.a), 1u, vec2<bool>(!func_2().x, global4.c.x));
    let var_4 = Struct_1(_wgslsmith_mult_vec3_i32(var_2.a, global4.a), 29687u, func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, global1.x, 698f))) + _wgslsmith_f_op_vec3_f32(-global1.xzx))).zy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(max(_wgslsmith_dot_vec2_u32(abs(u_input.c.yy), ~vec2<u32>(var_3.b, 0u)), 4294967295u), _wgslsmith_add_u32(_wgslsmith_sub_u32(87633u, u_input.c.x) << (0u % 32u), 107176u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-713f)))), u_input.b, -1i);
}

