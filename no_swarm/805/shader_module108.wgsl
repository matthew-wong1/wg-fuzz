struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: i32;

var<private> global2: f32 = 1280f;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: i32) -> f32 {
    global1 = ~_wgslsmith_dot_vec4_i32(~vec4<i32>(min(arg_3, arg_3), arg_3, 46433i, -2147483647i ^ u_input.a.x), ~((vec4<i32>(arg_0.c, 12765i, arg_0.c, u_input.b) | vec4<i32>(0i, arg_0.b, -40434i, u_input.b)) & firstLeadingBit(vec4<i32>(12741i, arg_3, arg_3, arg_3))));
    global1 = abs(arg_3);
    global0 = select(select(vec4<bool>(global0.x, true, _wgslsmith_f_op_f32(round(640f)) < 1646f, true), !select(!vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, false, global0.x, false), !vec4<bool>(global0.x, false, global0.x, global0.x)), all(vec4<bool>(any(vec3<bool>(global0.x, false, global0.x)), true, true, true))), select(vec4<bool>(~arg_3 != -arg_0.c, true, !all(global0.yyz), !all(global0.zz)), !vec4<bool>(true, !global0.x, global0.x, global0.x), global0.x || true), !vec4<bool>(false, global0.x, true, all(vec4<bool>(false, true, false, true))));
    var var_0 = u_input.a;
    global0 = select(select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(~arg_0.a == ~arg_1.a, !(global0.x | true), global0.x, all(vec4<bool>(false, global0.x, false, global0.x)) || all(vec4<bool>(global0.x, global0.x, true, global0.x))), 0u > firstTrailingBit(_wgslsmith_mod_u32(arg_0.a, arg_0.a))), !vec4<bool>((u_input.b << (arg_1.a % 32u)) < -var_0.x, !global0.x, firstTrailingBit(1i) <= arg_1.c, any(vec4<bool>(false, true, true, global0.x)) & (0u >= arg_2.x)), vec4<bool>(global0.x, arg_1.a < ~(76891u | arg_0.a), true, true && select(!global0.x, any(vec3<bool>(global0.x, true, true)), !global0.x)));
    return _wgslsmith_f_op_f32(trunc(291f));
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = arg_0.a;
    global1 = 4095i;
    let var_1 = _wgslsmith_f_op_f32(func_3(arg_0, arg_0, _wgslsmith_mod_vec3_u32(~abs(vec3<u32>(arg_0.a, 0u, arg_0.a)), ~(~vec3<u32>(34700u, 4294967295u, 1u))), 37393i));
    global0 = !(!vec4<bool>(!(var_0 == var_0), !global0.x, global0.x, true));
    let var_2 = Struct_2(firstLeadingBit(35252u), ~u_input.b, firstTrailingBit(~0i) & (i32(-1i) * -11682i));
    return vec2<bool>(global0.x, global0.x);
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), (_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 29074u), firstTrailingBit(vec2<u32>(12412u, 4294967295u))) >> (~vec2<u32>(1u, 57523u) % vec2<u32>(32u))) | countOneBits(vec2<u32>(1u, 1u)));
    let var_1 = !vec4<bool>(any(select(func_2(Struct_2(16844u, 2147483647i, 2147483647i)), !global0.ww, false)), all(!select(vec4<bool>(true, false, false, global0.x), vec4<bool>(true, false, global0.x, false), global0.x)), !global0.x, global0.x);
    return vec3<i32>(abs(_wgslsmith_sub_i32(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, -2147483647i), u_input.a))), u_input.a.x, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!all(vec4<bool>(global0.x, false, global0.x, true)) && (_wgslsmith_mult_i32(~u_input.a.x, max(u_input.a.x, u_input.b)) == -u_input.a.x), all(vec4<bool>(false, global0.x, global0.x, false)) & true, global0.x);
    let var_1 = func_1();
    let var_2 = Struct_2(firstLeadingBit(1u), -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(u_input.a.x, 2147483647i)), u_input.a.zx), u_input.a.x), 1i);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-506f, -2204f, 1520f, 691f))))) - vec4<f32>(-1339f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(255f - -400f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2273f, -687f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-527f, -420f)) + _wgslsmith_f_op_f32(-1089f + -1000f)))));
    let var_4 = vec4<bool>(-var_2.b == ~(~_wgslsmith_dot_vec3_i32(u_input.a, var_1)), false, var_0.x, select(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -476f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(565f * -1000f), _wgslsmith_f_op_f32(-var_3.x)), any(select(vec4<bool>(global0.x, false, true, var_0.x), vec4<bool>(false, false, true, true), !vec4<bool>(global0.x, global0.x, true, true)))));
    var var_5 = Struct_2(22573u, -2147483647i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xx, abs(_wgslsmith_div_vec4_i32(abs(vec4<i32>(1i, var_1.x, var_2.c, 0i)), vec4<i32>(u_input.a.x, var_5.b, u_input.b, var_1.x))) ^ -vec4<i32>(-1i, var_2.b, _wgslsmith_dot_vec2_i32(var_1.zx, vec2<i32>(var_2.c, var_5.c)), u_input.a.x | -1i), u_input.a.zy, var_3.x);
}

