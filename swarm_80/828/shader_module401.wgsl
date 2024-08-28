struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -827f), 131f);
    let var_1 = 4294967295u;
    global0 = Struct_1(vec3<bool>(2147483647i == -u_input.b.x, global0.a.x, global0.a.x), global0.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(global0.c, vec3<f32>(global0.c.x, var_0.x, 1761f), vec3<bool>(global0.a.x, false, global0.a.x)))))))));
    let var_2 = 0u;
    global0 = Struct_1(!select(vec3<bool>(true, global0.a.x, 11415u > var_2), global0.a, !all(global0.a)), global0.a.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global0.c, vec3<f32>(170f, 420f, -171f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(563f, -1238f, var_0.x) - vec3<f32>(global0.c.x, global0.c.x, global0.c.x)))), vec3<bool>(select(global0.b, global0.b, global0.a.x), global0.b, !global0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(global0.c, global0.c, vec3<bool>(global0.a.x, false, global0.a.x))), _wgslsmith_div_vec3_f32(global0.c, vec3<f32>(global0.c.x, global0.c.x, global0.c.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1408f, -771f, global0.c.x) * global0.c))))));
    return !(!any(vec3<bool>(any(global0.a.yx), u_input.b.x <= u_input.a.x, select(false, false, global0.a.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec4<u32> {
    global0 = Struct_1(arg_1.a, all(vec3<bool>(all(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_1.b)), false, false)) | arg_1.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(257f, arg_0.c.x, arg_1.c.x) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.c.x, -1000f, arg_0.c.x)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.c))))));
    let var_0 = abs(max(vec4<u32>(_wgslsmith_div_u32(1u, arg_3), arg_3, _wgslsmith_clamp_u32(0u, 4294967295u | arg_3, arg_3 << (8644u % 32u)), 1u), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 4294967295u, 21381u, arg_2), vec4<u32>(arg_3, arg_3, 35723u, 4294967295u)))));
    global0 = Struct_1(select(!(!arg_0.a), !arg_0.a, vec3<bool>(true, !all(vec4<bool>(arg_0.a.x, arg_1.b, global0.a.x, global0.a.x)), true)), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, arg_0.c.x, arg_0.c.x)), vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(round(arg_0.c.x)), _wgslsmith_f_op_f32(round(global0.c.x)))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_0.c.x)), _wgslsmith_f_op_f32(sign(1000f)), !arg_1.b)), _wgslsmith_f_op_f32(select(-1498f, _wgslsmith_div_f32(arg_0.c.x, global0.c.x), global0.b)), 127f)));
    var var_1 = Struct_1(vec3<bool>(arg_1.a.x, arg_0.a.x, true), all(select(vec4<bool>(true, false, any(vec3<bool>(global0.b, true, arg_1.b)), true), select(select(vec4<bool>(global0.a.x, true, arg_0.a.x, global0.b), vec4<bool>(global0.a.x, false, false, arg_1.b), arg_0.b), select(vec4<bool>(false, arg_0.a.x, false, false), vec4<bool>(false, global0.b, true, true), false), select(vec4<bool>(global0.a.x, false, true, false), vec4<bool>(global0.a.x, false, arg_1.b, arg_0.b), arg_1.a.x)), !vec4<bool>(arg_1.b, arg_0.a.x, false, true))), arg_0.c);
    let var_2 = select(select(select(vec4<bool>(true, any(vec4<bool>(arg_0.b, var_1.b, var_1.a.x, arg_0.a.x)), true, !global0.a.x), vec4<bool>(true, true, true, true), true), select(vec4<bool>(arg_0.b, u_input.a.x >= u_input.a.x, true && arg_0.a.x, global0.b), select(vec4<bool>(arg_1.a.x, false, false, global0.b), vec4<bool>(false, true, false, false), vec4<bool>(arg_1.b, true, global0.b, var_1.b)), vec4<bool>(all(vec3<bool>(arg_1.a.x, arg_1.b, false)), true, any(vec4<bool>(global0.a.x, arg_0.a.x, arg_0.b, false)), 15398u >= var_0.x)), select(vec4<bool>(true, true, var_1.a.x, true), vec4<bool>(!arg_1.b, !arg_1.b, all(vec3<bool>(global0.a.x, arg_0.a.x, arg_1.b)), global0.b), select(vec4<bool>(false, false, arg_0.a.x, global0.a.x), vec4<bool>(true, false, true, true), select(vec4<bool>(true, global0.b, global0.a.x, global0.b), vec4<bool>(true, false, arg_1.a.x, false), vec4<bool>(var_1.a.x, false, false, false))))), select(vec4<bool>(all(vec3<bool>(arg_0.a.x, arg_0.a.x, true)), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(1000f - var_1.c.x) < _wgslsmith_f_op_f32(f32(-1f) * -589f), var_1.b), !select(vec4<bool>(global0.b, arg_1.b, true, arg_1.b), !vec4<bool>(arg_0.b, arg_1.b, global0.b, arg_0.a.x), select(vec4<bool>(var_1.b, true, false, true), vec4<bool>(arg_0.a.x, true, false, var_1.a.x), vec4<bool>(global0.a.x, false, global0.b, arg_0.b))), select(vec4<bool>(267f < arg_1.c.x, all(vec4<bool>(var_1.a.x, arg_1.b, false, global0.b)), arg_3 < var_0.x, false), select(!vec4<bool>(true, false, global0.a.x, false), vec4<bool>(arg_1.a.x, var_1.b, false, arg_0.b), select(vec4<bool>(arg_0.a.x, global0.b, false, var_1.a.x), vec4<bool>(true, true, arg_0.b, true), true)), !func_3())), select(vec4<bool>(~7446u == firstTrailingBit(26645u), false, true, !arg_0.a.x), vec4<bool>(select(false, global0.b, global0.b) != false, false, func_3(), arg_1.a.x), !select(vec4<bool>(true, var_1.a.x, var_1.a.x, arg_0.a.x), select(vec4<bool>(true, var_1.a.x, true, false), vec4<bool>(false, var_1.a.x, true, true), arg_1.b), !vec4<bool>(arg_0.b, false, arg_0.a.x, false))));
    return _wgslsmith_clamp_vec4_u32(var_0, firstTrailingBit(select(_wgslsmith_mod_vec4_u32(var_0, var_0), var_0, vec4<bool>(false, var_2.x, arg_1.b, var_2.x)) ^ select(max(vec4<u32>(arg_2, 66480u, var_0.x, 0u), vec4<u32>(arg_2, arg_2, var_0.x, arg_3)), _wgslsmith_sub_vec4_u32(var_0, var_0), vec4<bool>(var_2.x, true, false, arg_1.b))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x | ~arg_2, ~(1u | arg_3), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 25629u), vec2<u32>(arg_3, var_0.x)) | 0u, 1u), _wgslsmith_mod_vec4_u32(reverseBits(var_0), var_0)));
}

fn func_5(arg_0: vec4<u32>) -> bool {
    var var_0 = true;
    let var_1 = Struct_1(global0.a, true, global0.c);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(582f, global0.c.x, var_1.c.x, global0.c.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-779f, var_1.c.x, 285f, 2532f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, var_1.c.x, var_1.c.x, global0.c.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, -339f, global0.c.x) + vec4<f32>(-1000f, -1000f, global0.c.x, -848f))))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_1.c.x, -220f, global0.c.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, 222f, 1000f, global0.c.x)) - vec4<f32>(global0.c.x, -1231f, -1000f, -916f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(387f, var_1.c.x, global0.c.x, 1369f) * vec4<f32>(200f, 1000f, global0.c.x, var_1.c.x)))))));
    var var_3 = var_1;
    var var_4 = abs(~64605u);
    return var_1.b;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = select(false, global0.a.x, !global0.b) | func_5(func_4(Struct_1(global0.a, any(vec4<bool>(global0.b, global0.a.x, false, global0.a.x)), _wgslsmith_f_op_vec3_f32(-global0.c)), Struct_1(global0.a, func_3(), _wgslsmith_f_op_vec3_f32(exp2(global0.c))), 1u, 4294967295u));
    global0 = Struct_1(select(global0.a, select(vec3<bool>(true, true, func_3()), select(global0.a, vec3<bool>(global0.b, global0.a.x, false), vec3<bool>(global0.b, global0.b, false)), all(!global0.a.xz)), vec3<bool>(!(global0.b & global0.b), true && (global0.b || global0.a.x), select(true, !global0.a.x, !global0.a.x))), any(select(select(select(vec4<bool>(false, true, true, global0.b), vec4<bool>(global0.a.x, true, global0.b, false), vec4<bool>(global0.a.x, false, false, false)), !vec4<bool>(global0.b, false, global0.b, global0.b), vec4<bool>(true, true, true, global0.a.x)), vec4<bool>(!global0.a.x, true, global0.b, all(global0.a)), global0.b)), global0.c);
    global0 = Struct_1(select(vec3<bool>(false, global0.b, true), select(vec3<bool>(func_3(), true, global0.a.x), select(vec3<bool>(global0.b, global0.b, true), vec3<bool>(true, true, global0.a.x), select(true, global0.b, global0.a.x)), !vec3<bool>(global0.b, global0.b, true)), global0.a), select(_wgslsmith_f_op_f32(round(-945f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.x))), global0.b, false), vec3<f32>(global0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-145f + 931f), _wgslsmith_f_op_f32(global0.c.x + -256f), true)), -467f), 1000f));
    let var_1 = arg_0;
    global0 = Struct_1(!global0.a, select(true, true, global0.b), global0.c);
    return true;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> f32 {
    global0 = Struct_1(!vec3<bool>(select(true, arg_3.a.x, true), _wgslsmith_f_op_f32(global0.c.x + arg_0) > _wgslsmith_f_op_f32(arg_0 * 2968f), -2147483647i >= (u_input.b.x & u_input.a.x)), !func_2(arg_2), _wgslsmith_f_op_vec3_f32(floor(arg_3.c)));
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(-1i, u_input.b.x), (_wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(88282i, -2147483647i)) | u_input.a.x) | u_input.a.x, abs(1i), arg_2);
    global0 = arg_3;
    var var_1 = Struct_1(arg_3.a, all(vec3<bool>(!func_3(), 1i <= _wgslsmith_dot_vec3_i32(var_0.yyz, vec3<i32>(-1i, u_input.a.x, arg_2)), arg_3.a.x)), vec3<f32>(arg_0, -345f, _wgslsmith_f_op_f32(f32(-1f) * -474f)));
    var var_2 = !select(!vec2<bool>(true, var_1.b && global0.b), vec2<bool>(select(select(arg_3.b, var_1.a.x, arg_3.a.x), global0.a.x, false), arg_1), _wgslsmith_f_op_f32(sign(arg_3.c.x)) <= _wgslsmith_f_op_f32(abs(-1007f)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(global0.a, !select(!vec3<bool>(true, global0.b, false), select(vec3<bool>(global0.b, global0.a.x, false), vec3<bool>(false, false, global0.a.x), false), !vec3<bool>(global0.a.x, false, false)), global0.b), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(global0.c))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(var_0.c.x, any(global0.a), _wgslsmith_dot_vec3_i32(u_input.a, ~vec3<i32>(u_input.a.x, 1i, 1i)), var_0)), 1169f, -421f, global0.c.x) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, global0.c.x, 962f, global0.c.x)))), vec4<f32>(191f, _wgslsmith_f_op_f32(exp2(global0.c.x)), var_0.c.x, _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x))));
    var var_2 = abs(vec3<u32>(0u, ~_wgslsmith_div_u32(min(1u, 4294967295u), 1u), abs(firstTrailingBit(4294967295u))));
    var_2 = select(_wgslsmith_mod_vec3_u32(~(~(vec3<u32>(var_2.x, var_2.x, var_2.x) >> (vec3<u32>(36705u, var_2.x, var_2.x) % vec3<u32>(32u)))), firstTrailingBit(select(~vec3<u32>(0u, 88493u, 8467u), vec3<u32>(0u, 1u, var_2.x), vec3<bool>(false, false, var_0.b)))), ~firstTrailingBit(countOneBits(vec3<u32>(4294967295u, var_2.x, var_2.x))), 45341u >= var_2.x);
    var var_3 = vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x);
    var_3 = global0.a;
    var_3 = vec3<bool>(var_0.b, var_0.a.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, 4294967295u, var_1.wx, u_input.b.xx, var_2.x ^ 1u);
}

