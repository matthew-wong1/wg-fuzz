struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<u32> {
    var var_0 = vec4<u32>(u_input.c, 4294967295u, ~u_input.c, ~u_input.c);
    let var_1 = all(select(global1.wz, select(!global1.xw, global1.ww, vec2<bool>(all(vec4<bool>(global1.x, true, false, global1.x)), 39719u == u_input.c)), !select(global1.xw, !vec2<bool>(global1.x, global1.x), global1.xy)));
    global1 = select(select(vec4<bool>(true, select(!global1.x, global1.x | var_1, var_1 & false), !all(global1.wxw), any(global1.wxz)), !(!select(vec4<bool>(global1.x, var_1, false, true), vec4<bool>(true, true, false, var_1), false)), select(vec4<bool>(true, any(vec2<bool>(true, global1.x)), false, true), select(select(vec4<bool>(false, false, false, var_1), vec4<bool>(var_1, false, global1.x, true), global1.x), vec4<bool>(true, global1.x, false, var_1), !vec4<bool>(true, true, global1.x, var_1)), !select(vec4<bool>(var_1, false, var_1, true), vec4<bool>(true, var_1, var_1, var_1), false))), !(!select(!vec4<bool>(false, false, global1.x, true), !vec4<bool>(global1.x, false, var_1, false), global1.x)), var_1);
    global0 = -u_input.b.x;
    var var_2 = Struct_1(var_0.x);
    return vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~reverseBits(28754u), 9452u), vec3<u32>(~(~u_input.c), 4294967295u, (u_input.c << (var_0.x % 32u)) >> ((u_input.c >> (var_2.a % 32u)) % 32u))), ~37970u);
}

fn func_2() -> vec2<u32> {
    let var_0 = ~(~abs(vec3<i32>(2147483647i, -2147483647i, 1i)));
    global0 = ~(-2147483647i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(abs(-1318f)), _wgslsmith_f_op_f32(sign(-531f)), -1000f)))));
    let var_2 = select(~_wgslsmith_clamp_vec3_u32(max(~vec3<u32>(34460u, u_input.c, u_input.c), ~vec3<u32>(u_input.c, 1u, u_input.c)), func_3(), vec3<u32>(1u, u_input.c, u_input.c)), vec3<u32>(min(u_input.c, min(u_input.c, ~u_input.c)), ~1u, u_input.c), global1.x && false);
    let var_3 = Struct_1(~1u);
    return _wgslsmith_div_vec2_u32(var_2.yy, _wgslsmith_clamp_vec2_u32(var_2.yy, ~((var_2.yx >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) << (vec2<u32>(0u, var_2.x) % vec2<u32>(32u))), vec2<u32>(~var_2.x, 1u)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~vec4<u32>(max(31653u, 0u >> (u_input.c % 32u)), u_input.c, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, arg_0.a)), func_2()), 8819u);
    global0 = countOneBits(firstTrailingBit(i32(-1i) * -(u_input.a.x << (0u % 32u))));
    let var_1 = Struct_1(firstLeadingBit(4294967295u));
    global1 = !arg_2;
    global0 = 2147483647i;
    return var_1;
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    var var_0 = arg_1.x;
    let var_1 = func_1(func_1(func_1(arg_2, true, select(vec4<bool>(false, global1.x, false, arg_0), vec4<bool>(true, false, arg_0, global1.x), vec4<bool>(arg_0, arg_0, false, global1.x)), func_1(func_1(Struct_1(1u), false, vec4<bool>(true, arg_0, false, global1.x), Struct_1(arg_2.a)), true, vec4<bool>(true, arg_0, arg_0, true), arg_2)), all(!global1.zx), select(!select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, global1.x, false), true), !(!vec4<bool>(false, true, global1.x, true)), select(!vec4<bool>(arg_0, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, arg_0, arg_0), true)), Struct_1(11748u)), global1.x, vec4<bool>(global1.x, any(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(global1.x, true, global1.x), select(vec3<bool>(true, global1.x, false), global1.zyx, false))), (-u_input.a.x << (min(1u, u_input.c) % 32u)) < (u_input.b.x ^ -u_input.a.x), false), Struct_1(50017u));
    var var_2 = func_1(var_1, !any(!global1.wwy), vec4<bool>(true, !(global1.x || true), !select(true, arg_0 & true, global1.x), !(_wgslsmith_div_f32(-433f, -1591f) <= _wgslsmith_f_op_f32(floor(1000f)))), var_1);
    global0 = 2147483647i;
    global0 = arg_1.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec4<bool>(all(select(!vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(false, global1.x, global1.x, global1.x), 0u <= u_input.c)), !func_4(all(vec4<bool>(true, false, global1.x, global1.x)), vec4<i32>(51247i, 299i, 1i, -1i), func_1(Struct_1(u_input.c), global1.x, vec4<bool>(global1.x, global1.x, false, global1.x), Struct_1(u_input.c))), global1.x && (u_input.c >= firstTrailingBit(1u)), global1.x);
    let var_0 = func_1(Struct_1(_wgslsmith_div_u32(u_input.c, 36531u)), any(global1.xwy) & !global1.x, vec4<bool>(all(vec4<bool>(global1.x, false, !global1.x, select(global1.x, false, true))), global1.x, u_input.a.x != u_input.d, global1.x), func_1(func_1(func_1(Struct_1(0u), global1.x, !vec4<bool>(global1.x, global1.x, global1.x, global1.x), func_1(Struct_1(u_input.c), global1.x, vec4<bool>(true, global1.x, global1.x, false), Struct_1(7864u))), !select(false, false, global1.x), !(!vec4<bool>(global1.x, global1.x, true, global1.x)), func_1(Struct_1(42133u), true, vec4<bool>(global1.x, false, false, global1.x), func_1(Struct_1(85245u), global1.x, vec4<bool>(false, global1.x, global1.x, false), Struct_1(1u)))), true, select(!vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(-17551i > u_input.d, false, u_input.a.x >= -2147483647i, !global1.x), true), Struct_1(firstTrailingBit(~73935u))));
    global1 = vec4<bool>(all(global1.yy), any(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, global1.x, true, true)), select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(global1.x, global1.x, true, global1.x), global1.x), false), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(global1.x, true, global1.x, global1.x)), false, global1.x & global1.x, true))), global1.x, all(!vec4<bool>(true, true, all(global1.xy), global1.x)));
    let var_1 = u_input.b;
    global1 = vec4<bool>(any(!(!(!vec4<bool>(global1.x, false, global1.x, false)))), global1.x || (_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, var_1.x), u_input.a), var_1.x) == max(~18843i, _wgslsmith_sub_i32(0i, u_input.d))), false, !(global1.x && !all(vec3<bool>(global1.x, global1.x, true))));
    global1 = !vec4<bool>(true, !global1.x, var_0.a == abs(abs(0u)), _wgslsmith_f_op_f32(step(923f, _wgslsmith_f_op_f32(1000f * 1404f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(884f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-815f, -254f), -952f)))));
    global0 = u_input.d << ((_wgslsmith_clamp_u32((65169u & var_0.a) << (~u_input.c % 32u), func_2().x, u_input.c) & u_input.c) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(_wgslsmith_mod_i32(1i, u_input.b.x), _wgslsmith_dot_vec3_i32(-u_input.b, select(vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x), u_input.a, global1.x)), -24316i)));
}

