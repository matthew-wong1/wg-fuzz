struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = false;
    global1 = !(!vec4<bool>(!arg_0, !(global0.b || true), global0.a.x, all(select(vec2<bool>(false, global1.x), global0.a.xz, global1.wx))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_1);
    let var_2 = global1.x;
    var var_3 = Struct_2(global1.wzz, !(_wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_3, 0i), _wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(-1i, u_input.b.x))) > (abs(arg_3) >> (abs(u_input.a.x) % 32u))));
    return _wgslsmith_f_op_f32(max(arg_1.x, 1000f));
}

fn func_3() -> vec2<u32> {
    var var_0 = u_input.a.x;
    let var_1 = vec4<bool>(~select(~u_input.a.x, 36112u, any(vec4<bool>(global1.x, true, global1.x, global1.x))) < 1u, false != any(!vec3<bool>(true, true, global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-576f)), _wgslsmith_f_op_f32(trunc(302f)), all(vec3<bool>(false, true, global0.a.x)))) < _wgslsmith_f_op_f32(631f * -1000f), !all(vec3<bool>(false, all(vec2<bool>(global1.x, global1.x)), true)));
    var var_2 = u_input.a.x;
    var var_3 = -max(0i, ~_wgslsmith_sub_i32(max(1i, -36188i), select(1i, u_input.b.x, true)));
    let var_4 = _wgslsmith_mult_u32(~reverseBits(u_input.a.x) | (u_input.a.x & u_input.a.x), select(13748u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zz), ~27111u, 15867u), global0.a.x) << (u_input.a.x % 32u));
    return _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 37144u, var_4) >> (u_input.a.wwy % vec3<u32>(32u)), vec3<u32>(var_4, 45134u, 53088u)), 52479u) | vec2<u32>(_wgslsmith_mod_u32(min(u_input.a.x, 13519u), _wgslsmith_div_u32(1u, var_4)), var_4), vec2<u32>(var_4, _wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a.yzz, u_input.a.wzz), firstTrailingBit(u_input.a.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a.x, 152261u, 4294967295u), select(vec4<u32>(1u, 21629u, var_4, 17599u), u_input.a, global1.x)))));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> i32 {
    let var_0 = firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(14233i, i32(-1i) * -27553i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, 36052i), max(u_input.b.yz, u_input.b.yz))) << (func_3() % vec2<u32>(32u)));
    let var_1 = u_input.b.x;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(923f)), 1133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2))) - var_3.x) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-776f, _wgslsmith_f_op_f32(1034f - var_2)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(-1619f, var_2))))), _wgslsmith_f_op_f32(-var_3.x));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(!global1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-172f, 397f)), _wgslsmith_f_op_f32(-791f - -339f), 11912i)))), -1022f, _wgslsmith_f_op_f32(func_1(false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(486f, -803f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-504f, -3102f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(894f, 1778f) - vec2<f32>(-2076f, -753f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-892f * 473f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(674f - -471f), -384f)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)) >> (0u % 32u), _wgslsmith_mod_i32(u_input.b.x, 1i)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1001f, 222f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x))), var_0.x));
    global1 = vec4<bool>(global0.b, global0.b, var_0.x <= 195f, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~46799i, abs(u_input.b.x)), -func_2(525f, global0.a), -2147483647i) < u_input.b.x);
    let var_1 = Struct_2(vec3<bool>(global1.x, any(vec2<bool>(true, any(global1.xw))), true), !any(select(global1.wxy, select(vec3<bool>(true, global0.b, false), vec3<bool>(global0.b, global1.x, true), global0.a), !global1.wxz)));
    global0 = Struct_2(!vec3<bool>(any(vec3<bool>(false, var_1.a.x, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -63843i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 1i, 41989i)) >= u_input.b.x, firstTrailingBit(1i) != reverseBits(-23075i)), !select(false, var_1.a.x, all(vec4<bool>(global0.b, false, false, false)) & global0.b));
    let var_2 = _wgslsmith_sub_i32(-_wgslsmith_mod_i32(firstLeadingBit(~u_input.b.x), max(u_input.b.x, u_input.b.x << (u_input.a.x % 32u))), _wgslsmith_mod_i32(u_input.b.x | 46375i, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) - _wgslsmith_f_op_f32(-var_0.x))))), u_input.a.wxy, (4294967295u & _wgslsmith_mod_u32(u_input.a.x << (0u % 32u), _wgslsmith_mult_u32(58639u, u_input.a.x))) & u_input.a.x, ~u_input.a.zx >> (~vec2<u32>(~4294967295u, _wgslsmith_sub_u32(59275u, 0u)) % vec2<u32>(32u)));
}

