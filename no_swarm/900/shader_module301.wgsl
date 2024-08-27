struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(164f, 227f);

var<private> global1: vec4<u32> = vec4<u32>(0u, 0u, 4294967295u, 21614u);

var<private> global2: i32 = 2147483647i;

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_mult_u32(~3351u, ~_wgslsmith_sub_u32(global1.x, 4294967295u));
    global2 = u_input.a.x;
    let var_1 = _wgslsmith_add_i32(1i, u_input.b);
    var var_2 = Struct_1(vec3<u32>(var_0 | (global1.x << (4290u % 32u)), u_input.c, u_input.d));
    let var_3 = vec4<i32>(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(u_input.a.yzx & vec3<i32>(-14390i, u_input.b, u_input.b), _wgslsmith_div_vec3_i32(u_input.a.zwy, u_input.a.xxy), vec3<i32>(var_1, var_1, u_input.b))), u_input.a.xxw), countOneBits(-2147483647i), var_1, -31148i);
    return Struct_2(~abs(-(~var_3.zz)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> f32 {
    global2 = 1i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-323f))), 1578f);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<u32>, arg_3: bool) -> vec2<f32> {
    global2 = -2147483647i;
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(2161f, _wgslsmith_f_op_f32(func_3(func_2(all(vec3<bool>(false, arg_3, false))), select(vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(global3.x, arg_1, true, true), false)))), vec2<f32>(-710f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 446f)))));
    global3 = vec3<bool>(false, !any(!(!vec4<bool>(false, arg_3, arg_3, arg_1))), false);
    var var_0 = func_2(arg_1).a;
    var var_1 = select(!(!vec4<bool>(false, true != arg_3, any(vec4<bool>(global3.x, true, arg_3, true)), arg_3 | false)), select(!select(!vec4<bool>(true, arg_3, arg_3, true), vec4<bool>(arg_1, arg_3, true, true), select(vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(arg_3, arg_3, arg_3, global3.x), vec4<bool>(true, global3.x, true, true))), vec4<bool>(true, !(!arg_3), !(!arg_3), arg_1), !vec4<bool>(any(vec3<bool>(false, arg_3, false)), u_input.c >= 14329u, global3.x || arg_3, global3.x)), false);
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -208f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(global0.x * -1330f), -665f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1694f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(431f, -1227f), vec2<f32>(546f, global0.x)))))))), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-384f, global0.x) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(u_input.d, global3.x, vec4<u32>(4294967295u, 8145u, global1.x, global1.x), global3.x)), vec2<f32>(-717f, -307f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, 389f)))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_vec2_f32(func_1(firstTrailingBit(1u), select(!global3.x, global3.x == global3.x, false), ~firstTrailingBit(vec4<u32>(global1.x, u_input.d, 1u, global1.x)), global3.x)).x)));
    let var_0 = func_2(any(!vec4<bool>(true, true, global3.x, -727f > global0.x)));
    let var_1 = all(vec2<bool>(true == global3.x, !any(!vec3<bool>(global3.x, global3.x, true))));
    var var_2 = vec4<u32>(~(u_input.d >> (~1u % 32u)), 4294967295u, ~_wgslsmith_mod_u32(abs(abs(global1.x)), global1.x), ~u_input.d);
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(-276f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x + global0.x))) + global0.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(362f, 1000f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1316f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -257f))), select(all(select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(true, false, false), false)), global3.x, !var_1 && true))));
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(27323i, -1i, i32(-1i) * -var_0.a.x), var_0.a.x);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1366f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(677f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstLeadingBit(~vec4<u32>(global1.x, 89378u, 10864u, u_input.d) << (~vec4<u32>(var_2.x, 23741u, 17131u, 62831u) % vec4<u32>(32u)))));
}

