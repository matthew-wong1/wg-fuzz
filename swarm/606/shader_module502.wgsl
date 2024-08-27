struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = vec4<bool>(arg_3, arg_1, true, all(!global0.xx));
    global0 = var_0.wyw;
    global0 = vec3<bool>(any(select(vec4<bool>(global0.x, true, any(global0.zz), true), select(var_0, var_0, select(vec4<bool>(var_0.x, true, arg_1, false), var_0, vec4<bool>(false, var_0.x, global0.x, arg_1))), select(!var_0, select(var_0, vec4<bool>(var_0.x, false, true, var_0.x), true), all(var_0.yw)))), !all(var_0.wwy), any(!global0.xy));
    return any(select(vec2<bool>(!select(false, false, var_0.x), arg_3), vec2<bool>(true, u_input.b.x >= -44611i), vec2<bool>(false, true)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec3<i32>) -> u32 {
    global0 = select(vec3<bool>(!global0.x, global0.x, !any(vec3<bool>(global0.x, false, true))), select(!vec3<bool>(true, true, arg_1.x == -294f), !vec3<bool>(func_3(1637u, global0.x, Struct_1(vec3<u32>(arg_0.a.x, arg_2.a.x, arg_0.a.x)), global0.x), global0.x, all(vec3<bool>(false, false, false))), !(_wgslsmith_dot_vec3_i32(vec3<i32>(-44788i, 1i, arg_3.x), vec3<i32>(-14921i, arg_3.x, arg_3.x)) == u_input.e.x)), !(!all(!global0.zx)));
    let var_0 = Struct_1(vec3<u32>(78316u, arg_0.a.x, _wgslsmith_mult_u32(arg_2.a.x, 0u)));
    var var_1 = vec2<bool>(true, abs(var_0.a.x) <= 1u);
    var_1 = select(vec2<bool>(all(vec2<bool>(var_1.x, func_3(var_0.a.x, var_1.x, Struct_1(vec3<u32>(37105u, var_0.a.x, 0u)), var_1.x))), true || !(var_0.a.x != var_0.a.x)), vec2<bool>(var_1.x, !var_1.x && true), select(global0.yy, vec2<bool>(true, true), select(!(!global0.xx), global0.xy, true)));
    global0 = !vec3<bool>(!select(false, false, true), global0.x, true);
    return firstTrailingBit(0u);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<i32>) -> i32 {
    global0 = select(select(arg_0, !arg_0, arg_0), vec3<bool>(true, true, true), false);
    global0 = arg_0;
    let var_0 = _wgslsmith_add_i32(i32(-1i) * -14337i, _wgslsmith_div_i32(~_wgslsmith_mult_i32(-25945i, _wgslsmith_clamp_i32(arg_2.x, arg_2.x, u_input.c.x)), 1i));
    var var_1 = u_input.b.wzz;
    var var_2 = vec3<f32>(-208f, _wgslsmith_div_f32(291f, -1232f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2049f, -774f)))))));
    return 1i;
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(64948u, 42807u), arg_0.a.x), arg_0.a.wz));
    let var_1 = func_4(!(!select(select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, false, true)), !vec3<bool>(global0.x, global0.x, global0.x), any(vec3<bool>(false, true, false)))), Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(arg_0.a, _wgslsmith_sub_vec4_u32(vec4<u32>(87972u, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<u32>(4294967295u, 38852u, 0u, 4294967295u))), vec4<u32>(arg_0.a.x, ~3608u, 1u & arg_0.a.x, func_2(arg_0, vec4<f32>(-715f, -587f, 495f, 470f), Struct_2(vec4<u32>(arg_0.a.x, 0u, 4294967295u, 13994u)), u_input.e.wxx)))), vec3<i32>(-1i, _wgslsmith_clamp_i32(2147483647i, u_input.a, u_input.b.x), 1i));
    var var_2 = Struct_1(max(arg_0.a.xyw, ~arg_0.a.zzw) & (arg_0.a.xwy << (vec3<u32>(~0u, arg_0.a.x, _wgslsmith_div_u32(arg_0.a.x, arg_0.a.x)) % vec3<u32>(32u))));
    let var_3 = arg_0;
    var_0 = var_3.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-339f, -1802f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1044f)), _wgslsmith_f_op_f32(-1433f - 1893f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-227f - -185f) + -1447f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-571f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -346f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1425f, -905f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-428f * 454f))))));
    let var_1 = vec4<bool>(true, true, -30593i < (_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.e.yw, u_input.b.wz), -19226i) ^ ~(~2147483647i)), all(vec3<bool>(global0.x, false, u_input.b.x >= 1i)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1097f - -665f) - -187f)) + _wgslsmith_f_op_f32(func_1(Struct_2(~vec4<u32>(45195u, 30301u, 4294967295u, 4294967295u))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(880f, -2297f, -216f, 360f) + vec4<f32>(857f, -336f, 732f, -1357f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(2161f, -635f, 1129f, 221f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(200f, -172f, -1099f, 1735f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1953f, 931f, 212f, -969f), vec4<f32>(-544f, 2214f, -814f, -658f), false))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1546f, _wgslsmith_f_op_f32(func_1(Struct_2(vec4<u32>(4294967295u, 92395u, 27211u, 0u)))), _wgslsmith_f_op_f32(abs(1019f)), _wgslsmith_f_op_f32(f32(-1f) * -413f)))), select(select(!select(var_1, var_1, var_1.x), select(!var_1, select(vec4<bool>(global0.x, global0.x, global0.x, false), var_1, var_1), all(vec4<bool>(global0.x, true, var_1.x, var_1.x))), !(!vec4<bool>(var_1.x, false, false, global0.x))), vec4<bool>(false, global0.x, true, !global0.x), !any(!var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), 33347u, 1u), abs(_wgslsmith_add_u32(0u, 0u))) >> (countOneBits(vec3<u32>(~1u, 1u, 9796u)) % vec3<u32>(32u)), var_2.xx);
}

