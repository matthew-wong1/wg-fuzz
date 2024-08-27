struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    return true && all(!vec2<bool>(true, any(vec4<bool>(false, true, true, true))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>) -> i32 {
    let var_0 = select(vec3<bool>(!all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true))), _wgslsmith_sub_i32(~0i, u_input.a.x) >= _wgslsmith_dot_vec2_i32(-u_input.a, u_input.a), any(vec2<bool>(true, all(vec2<bool>(true, true))))), !vec3<bool>(_wgslsmith_div_i32(u_input.c, u_input.c) >= ~u_input.a.x, true, true), vec3<bool>(true, func_3(), true));
    var var_1 = select(select(select(vec4<bool>(select(var_0.x, false, var_0.x), 0u == arg_1.x, !var_0.x, true), select(!vec4<bool>(false, var_0.x, true, var_0.x), !vec4<bool>(false, true, var_0.x, false), select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x))), true), select(vec4<bool>(func_3(), any(var_0), 0u < arg_0.x, var_0.x), vec4<bool>(true, !var_0.x, all(var_0.yz), func_3()), all(select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, false)))), select(!(!vec4<bool>(var_0.x, var_0.x, true, false)), select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false)), !vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x == var_0.x), vec4<bool>(true, true, !var_0.x, true))), select(vec4<bool>(all(var_0) | true, any(select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, false, true, var_0.x))), ~7303u < abs(arg_1.x), true), vec4<bool>(true | (var_0.x != true), true, true, max(arg_0.x, u_input.b) == u_input.d.x), var_0.x), var_0.x);
    var var_2 = _wgslsmith_div_f32(600f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-358f * 1471f), 989f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(992f * 872f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1005f, -260f)) - 470f))));
    let var_3 = select(select(!select(vec2<bool>(true, false), !var_1.wx, vec2<bool>(false, var_1.x)), select(!vec2<bool>(true, var_1.x), var_1.yy, !select(vec2<bool>(var_1.x, true), vec2<bool>(var_0.x, var_1.x), false)), func_3()), select(select(var_0.yy, var_1.zz, var_0.yx), select(select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_0.x), var_1.zx), select(var_0.yy, select(vec2<bool>(true, var_0.x), var_1.wx, var_1.xx), var_1.yw), all(var_1.yz) == true), !any(vec4<bool>(var_0.x, var_0.x, false, true))), !select(var_1.wy, vec2<bool>(true, true), func_3()));
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1606f, _wgslsmith_div_f32(153f, -1293f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(509f, -514f) - -1462f)))));
    return ~(-2147483647i);
}

fn func_1() -> u32 {
    var var_0 = u_input.a;
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_mult_u32(0u, ~(~u_input.d.x) | (4660u >> (reverseBits(0u) % 32u))) >= ~u_input.b;
    var var_3 = ~vec4<u32>(var_1 << (~(~var_1) % 32u), _wgslsmith_div_u32((var_1 & var_1) & var_1, u_input.b), _wgslsmith_sub_u32(~u_input.d.x, reverseBits(u_input.d.x) << (u_input.d.x % 32u)), 1u);
    let var_4 = ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -11933i, _wgslsmith_mult_i32(-6399i, var_0.x), -2147483647i, -13905i), vec4<i32>(-20403i, _wgslsmith_clamp_i32(-1i, -14238i, u_input.c), _wgslsmith_mod_i32(var_0.x, var_0.x), func_2(u_input.d.zyx, vec2<u32>(var_3.x, var_1)))));
    return var_3.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_2(~(~(4294967295u >> (_wgslsmith_add_u32(u_input.d.x, u_input.b) % 32u))), vec3<u32>(abs(abs(~u_input.d.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.b, u_input.b), vec3<u32>(u_input.b, 4405u, 4294967295u)) >> (u_input.d.x % 32u), 63535u));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<i32>(-36866i << (func_1() % 32u), -_wgslsmith_add_i32(2147483647i, 0i), u_input.c, 2147483647i), Struct_3(vec2<bool>(true, true)), _wgslsmith_mod_i32(43348i, (u_input.a.x << (_wgslsmith_sub_u32(9056u, u_input.d.x) % 32u)) << (_wgslsmith_mod_u32(min(24403u, u_input.d.x), 4294967295u >> (1u % 32u)) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f) * 2041f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1291f, 126f, false)), -499f))) - -592f));
    var_0 = Struct_2(var_0.a, var_0.b);
    var var_1 = Struct_3(vec2<bool>(!any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false)), false));
    var var_2 = _wgslsmith_f_op_f32(abs(-971f));
    var var_3 = ~firstLeadingBit(85295u);
    var var_4 = Struct_2(1u, var_0.b);
    var var_5 = !(!select(select(select(var_1.a, vec2<bool>(var_1.a.x, var_1.a.x), var_1.a.x), var_1.a, any(var_1.a)), var_1.a, var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(i32(-1i) * -18231i, 1i >> (_wgslsmith_mult_u32(593u, u_input.b) % 32u), 2147483647i));
}

