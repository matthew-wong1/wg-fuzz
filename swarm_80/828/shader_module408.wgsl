struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_2(all(vec2<bool>(global1.x, false)));
    global1 = vec3<bool>(!arg_1.a.x, any(vec2<bool>(true, !arg_0)), any(!(!vec4<bool>(false, false, true, global1.x))));
    global0 = vec3<i32>(~_wgslsmith_sub_i32(~_wgslsmith_add_i32(global0.x, global0.x), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c.x, 42623i), ~(-20407i))), 0i, 0i);
    global1 = !vec3<bool>(true, !select(arg_1.a.x, false, global1.x || false), arg_0);
    let var_1 = 36490i;
    return abs(-_wgslsmith_mod_i32(select(select(-1i, u_input.c.x, global1.x), -1i, true), -1i));
}

fn func_2(arg_0: Struct_2) -> bool {
    global0 = vec3<i32>(1i, _wgslsmith_mod_i32(u_input.c.x, 2147483647i), func_3(false, Struct_1(select(select(global1.zx, global1.xx, vec2<bool>(true, false)), global1.xy, global1.xx))));
    let var_0 = _wgslsmith_clamp_i32(global0.x, global0.x, _wgslsmith_clamp_i32(-2147483647i, abs(global0.x), func_3(!(global1.x & arg_0.a), Struct_1(global1.xy))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1172f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1024f - -1154f))), 703f)));
    var var_2 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(select(u_input.a, _wgslsmith_add_i32(var_0, 4859i), !arg_0.a), ~func_3(false, Struct_1(global1.zz)), -1i, i32(-1i) * -9384i), reverseBits(vec4<i32>(global0.x >> (u_input.b % 32u), min(34220i, u_input.c.x), select(global0.x, 34070i, false), -2147483647i)));
    let var_3 = arg_0.a;
    return global1.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = select(!(!vec2<bool>(u_input.d.x != 54434u, true)), global1.zy, !select(!func_2(arg_1), false, true));
    let var_1 = 1124f;
    var var_2 = _wgslsmith_clamp_i32(global0.x, -3813i | _wgslsmith_mult_i32(global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, 48372i) & vec3<i32>(global0.x, 37007i, 1i), ~vec3<i32>(u_input.c.x, global0.x, 30929i))), reverseBits(global0.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-105f, var_1, -392f, var_1))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-332f, var_1, -1000f, -537f) * vec4<f32>(var_1, -1000f, var_1, var_1))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1102f, -2613f, -497f, 471f), vec4<f32>(var_1, -285f, var_1, var_1), arg_0.x)))))))));
    var var_4 = max(global0.x, global0.x);
    return -vec3<i32>(firstLeadingBit(~global0.x & -1i), u_input.a, ~0i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global1.xx, Struct_2(true));
    let var_0 = Struct_2(!(!(!any(global1.zy))));
    global1 = select(select(select(select(!vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, true, true), !vec3<bool>(false, true, var_0.a)), !select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, false, global1.x), var_0.a), all(!vec3<bool>(false, global1.x, false))), select(select(!vec3<bool>(true, true, var_0.a), vec3<bool>(global1.x, false, true), var_0.a || true), vec3<bool>(true, global1.x, true), false), global1.x), vec3<bool>(false, any(vec4<bool>(var_0.a, true, true, global1.x)), !var_0.a), vec3<bool>(~max(u_input.b, u_input.b) < abs(_wgslsmith_mod_u32(u_input.b, 0u)), var_0.a | var_0.a, (4294967295u > _wgslsmith_sub_u32(u_input.b, 4294967295u)) || all(select(vec4<bool>(false, false, global1.x, var_0.a), vec4<bool>(var_0.a, true, var_0.a, false), vec4<bool>(var_0.a, var_0.a, global1.x, var_0.a)))));
    let var_1 = Struct_2(true);
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1391f - -580f) - 226f), _wgslsmith_div_f32(1113f, 829f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -730f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(429f, -1000f, 792f)) * _wgslsmith_div_vec3_f32(vec3<f32>(463f, -1224f, -1306f), vec3<f32>(824f, 406f, -806f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(353f, -730f, -2724f)), vec3<f32>(639f, -570f, -721f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~abs(firstLeadingBit(u_input.d))), 4294967295u, vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.d.yx, _wgslsmith_add_vec2_u32(abs(u_input.d.yx), ~vec2<u32>(u_input.d.x, 13945u))), select(~(~u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 8701u, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) & u_input.d.x, any(vec2<bool>(false, false))), 4294967295u));
}

