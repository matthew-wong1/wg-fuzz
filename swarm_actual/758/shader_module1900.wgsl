struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = -firstLeadingBit(_wgslsmith_mod_vec4_i32(~(vec4<i32>(u_input.a.x, 16969i, -2147483647i, -33637i) >> (vec4<u32>(arg_2.a, 0u, arg_0.a, arg_0.a) % vec4<u32>(32u))), -vec4<i32>(12422i, -1i, u_input.a.x, 0i) | -vec4<i32>(u_input.a.x, 1i, 1i, -1i)));
    var var_1 = arg_0;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, -867f, arg_1.a, 1402f) - vec4<f32>(-1104f, 805f, -1184f, -833f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1043f, arg_1.a, global0.x, 1165f) * vec4<f32>(907f, global0.x, 514f, -629f)))))));
    var_1 = Struct_2(~_wgslsmith_sub_u32(12773u, _wgslsmith_clamp_u32(arg_0.a, arg_0.a, firstLeadingBit(0u))));
    var_0 = firstLeadingBit(firstTrailingBit(select(~(vec4<i32>(55460i, 16686i, 0i, var_0.x) & vec4<i32>(2147483647i, var_0.x, var_0.x, u_input.a.x)), -firstLeadingBit(vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, u_input.a.x)), !vec4<bool>(arg_1.b.x, arg_1.c, false, arg_1.c))));
    return select(select(vec4<bool>(!all(vec4<bool>(arg_1.c, false, arg_1.b.x, arg_1.b.x)), !arg_1.b.x, all(arg_1.b.zy), !arg_1.b.x), vec4<bool>((global0.x >= global0.x) || true, all(!vec4<bool>(true, arg_1.c, arg_1.b.x, true)), false & (var_1.a >= 68230u), any(!arg_1.b.yz)), select(select(!vec4<bool>(true, true, arg_1.c, false), select(vec4<bool>(arg_1.c, true, arg_1.c, true), vec4<bool>(false, arg_1.c, false, arg_1.b.x), false), !vec4<bool>(false, arg_1.b.x, false, false)), !select(vec4<bool>(false, true, arg_1.b.x, false), vec4<bool>(arg_1.c, false, true, arg_1.c), true), arg_1.c)), select(vec4<bool>((u_input.a.x > 0i) && true, arg_1.c, arg_1.c, any(vec4<bool>(true, true, arg_1.c, arg_1.b.x))), vec4<bool>(!(!arg_1.c), arg_1.c, abs(1u) <= _wgslsmith_mult_u32(55650u, var_1.a), true), false), vec4<bool>(false, arg_1.b.x, arg_1.c, true));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = func_3(Struct_2(_wgslsmith_mult_u32(arg_0, arg_0)), arg_2, Struct_2(~reverseBits(1u)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a, arg_2.a, global0.x, arg_1.x), vec4<f32>(global0.x, global0.x, arg_2.a, -1643f)) + vec4<f32>(861f, 584f, -104f, 1532f)), vec4<f32>(_wgslsmith_f_op_f32(global0.x - -775f), _wgslsmith_f_op_f32(sign(arg_2.a)), 125f, arg_1.x)))));
    var var_1 = ~(~_wgslsmith_clamp_u32(select(~arg_0, _wgslsmith_mult_u32(15286u, 0u), !var_0.x), ~1u, abs(u_input.b.x ^ u_input.c.x)));
    let var_2 = !(var_0.x | ((_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) > ~u_input.a.x) | (_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -59745i) <= u_input.a.x)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, -331f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(-global0.x), var_2)) - 448f) - -2091f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, -481f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(f32(-1f) * -1025f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -552f), global0.x, _wgslsmith_f_op_f32(-global0.x), arg_1.x) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, arg_2.a, -1343f, -1778f)))))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(~4294967295u, _wgslsmith_f_op_vec3_f32(-global0.ywx), Struct_1(global0.x, vec3<bool>(false, false, false), true))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2038f, global0.x, global0.x, 2776f) - vec4<f32>(-164f, -1424f, -273f, global0.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.x, global0.x, global0.x) - vec4<f32>(global0.x, global0.x, global0.x, global0.x)))))));
    var var_0 = any(vec2<bool>(func_3(Struct_2(u_input.b.x), Struct_1(global0.x, vec3<bool>(true, true, true), false), arg_0).x, true));
    var var_1 = Struct_1(global0.x, !func_3(Struct_2(~17036u), Struct_1(_wgslsmith_f_op_f32(global0.x * global0.x), func_3(Struct_2(4118u), Struct_1(global0.x, vec3<bool>(false, true, true), true), Struct_2(4294967295u)).xyz, any(vec2<bool>(false, false))), arg_0).xxy, select(true, !(global0.x < _wgslsmith_f_op_f32(f32(-1f) * -1511f)), true));
    let var_2 = !func_3(arg_0, Struct_1(_wgslsmith_div_f32(-424f, _wgslsmith_f_op_f32(f32(-1f) * -417f)), func_3(arg_0, Struct_1(-171f, vec3<bool>(false, false, true), var_1.c), arg_0).xzz, select(var_1.c, false, var_1.b.x) || false), Struct_2(arg_0.a));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1897f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(961f, 1160f)))), select(func_3(Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(arg_0.a, 1u))), Struct_1(_wgslsmith_f_op_f32(905f * var_1.a), !vec3<bool>(true, var_2.x, false), !var_1.b.x), arg_0).wxz, !vec3<bool>(!var_1.c, true, var_1.b.x), vec3<bool>(true || any(var_2.xz), true, all(var_1.b))), !any(select(vec3<bool>(false, false, true), select(vec3<bool>(var_1.b.x, var_1.b.x, true), vec3<bool>(false, false, false), var_2.ywz), var_2.x || false)));
    return Struct_1(-866f, var_2.zxx, ~arg_0.a != 73937u);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.a, 820f, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -171f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2364f, arg_1.a)), -346f));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1346f + arg_1.a)), _wgslsmith_f_op_f32(ceil(-1678f)), _wgslsmith_div_f32(1420f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -1000f) + 565f)), -146f));
    let var_0 = -abs(firstTrailingBit(arg_0) & 10626i) << (abs(countOneBits(63840u)) % 32u);
    let var_1 = arg_1.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0.xx)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
    return Struct_2(~_wgslsmith_add_u32(u_input.c.x, u_input.c.x) ^ reverseBits(~_wgslsmith_div_u32(u_input.b.x, u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.a.x, func_1(Struct_2(u_input.c.x ^ ~21607u)));
    var var_1 = u_input.a.x;
    var var_2 = vec3<f32>(826f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1235f - _wgslsmith_f_op_vec4_f32(func_2(u_input.b.x, vec3<f32>(global0.x, 1326f, 1727f), Struct_1(-1382f, vec3<bool>(false, true, true), true))).x))), _wgslsmith_f_op_f32(f32(-1f) * -132f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-625f + global0.x)));
    var var_3 = vec2<bool>(20079u >= ~_wgslsmith_dot_vec2_u32(~u_input.c, vec2<u32>(u_input.b.x, u_input.b.x)), true);
    var var_4 = select(vec2<bool>(false, true), vec2<bool>(!(!all(vec4<bool>(var_3.x, true, false, var_3.x))), false), select(!vec2<bool>(43389u >= u_input.b.x, true), !func_3(var_0, Struct_1(var_2.x, vec3<bool>(var_3.x, true, var_3.x), false), func_4(u_input.a.x, Struct_1(var_2.x, vec3<bool>(false, true, true), false))).yy, vec2<bool>(true, true)));
    var_1 = 1330i;
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(var_0.a, global0.wwy, Struct_1(_wgslsmith_f_op_f32(global0.x - var_2.x), func_3(Struct_2(6867u), Struct_1(1628f, vec3<bool>(false, var_4.x, false), var_3.x), Struct_2(4294967295u)).yxw, !var_4.x))).x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1278f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * -1000f), _wgslsmith_f_op_f32(-1215f * 168f)), _wgslsmith_f_op_f32(trunc(-111f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x, -(~1i), u_input.a.x, u_input.a.x), 54882u, ~u_input.b.x);
}

