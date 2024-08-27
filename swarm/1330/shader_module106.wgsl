struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec4<i32>) -> vec3<u32> {
    let var_0 = arg_2.wxx;
    var var_1 = arg_1;
    var var_2 = arg_0;
    var var_3 = -186f;
    var var_4 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -596f)), 102f, -848f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(526f, -1000f, 1163f))))), u_input.d.yyz, !(!vec3<bool>(true, any(vec2<bool>(true, false)), true)));
    return var_4.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: u32, arg_3: u32) -> i32 {
    let var_0 = arg_0;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_1.a);
    var var_3 = u_input.d;
    var_3 = vec4<u32>(128350u, ~4294967295u, _wgslsmith_sub_u32(abs(~(~arg_2)), arg_1.x), reverseBits(var_0.b.x));
    return -1i;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>) -> f32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(602f, -427f, arg_0.x) + vec3<f32>(1625f, arg_0.x, arg_0.x)) * arg_0.xxy), func_3(41008u, Struct_4(Struct_1(1u, -3593i)), vec4<i32>(u_input.a, u_input.c.x, -7524i, 23812i) >> (vec4<u32>(u_input.d.x, 4294967295u, 0u, u_input.d.x) % vec4<u32>(32u))), vec3<bool>(true, any(vec2<bool>(var_0.x, var_0.x)), true)), firstLeadingBit(countOneBits(u_input.d & u_input.d)), ~4294967295u, ~reverseBits(64115u)) << (_wgslsmith_clamp_u32(~func_3(_wgslsmith_add_u32(u_input.b, 38951u), Struct_4(Struct_1(u_input.d.x, -1i)), abs(vec4<i32>(u_input.a, 54151i, u_input.c.x, u_input.c.x))).x, reverseBits(~firstTrailingBit(17570u)), reverseBits(u_input.d.x)) % 32u);
    var var_2 = Struct_1(u_input.d.x, u_input.a);
    return arg_0.x;
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: bool, arg_3: u32) -> Struct_2 {
    var var_0 = select(vec3<bool>(true, true, true), select(select(select(select(vec3<bool>(false, arg_0.x, arg_2), vec3<bool>(true, true, true), vec3<bool>(arg_0.x, arg_0.x, true)), !vec3<bool>(arg_0.x, arg_2, arg_2), select(vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_2, arg_2, true), false)), !vec3<bool>(arg_2, true, arg_2), !select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_2, true, false), vec3<bool>(arg_2, arg_0.x, arg_2))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, true, arg_2)), select(vec3<bool>(false, arg_2, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_2, arg_2, arg_0.x)), arg_2), vec3<bool>(true, true, true), !arg_0.x), !select(vec3<bool>(true, true, true), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(true, false, true), vec3<bool>(arg_2, arg_2, arg_0.x)), vec3<bool>(false, true, arg_0.x))), select(43662u != u_input.b, any(!select(vec3<bool>(true, true, false), vec3<bool>(arg_2, arg_2, true), false)), true));
    var_0 = vec3<bool>(arg_0.x, all(select(!vec3<bool>(var_0.x, false, true), vec3<bool>(!var_0.x, !var_0.x, any(vec3<bool>(arg_0.x, arg_0.x, false))), select(select(vec3<bool>(arg_2, false, arg_0.x), vec3<bool>(var_0.x, true, false), true), !vec3<bool>(var_0.x, true, arg_0.x), arg_1 >= arg_1))), -1000f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_1, arg_1)))) - -655f));
    var_0 = select(!vec3<bool>(false, true != (u_input.a != -26962i), true), vec3<bool>(any(vec2<bool>(arg_0.x, false)) | false, !arg_2, arg_2), !(!(!(!vec3<bool>(var_0.x, arg_0.x, false)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, -521f, arg_1)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1821f, -1000f, arg_1))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -779f)), vec3<f32>(arg_1, -233f, -416f)), vec3<f32>(-2020f, -1420f, -1000f)))), abs(reverseBits(~vec3<u32>(arg_3, arg_3, 22558u))), !select(select(!vec3<bool>(var_0.x, true, arg_0.x), !vec3<bool>(true, true, var_0.x), all(var_0.yz)), !vec3<bool>(var_0.x, false, arg_2), select(vec3<bool>(true, false, false), !vec3<bool>(arg_0.x, true, false), !vec3<bool>(arg_0.x, true, true))));
    var var_2 = Struct_1(~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.d.x, var_1.b.x >> (70145u % 32u)), 0u), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -9455i, -6056i), -vec3<i32>(37268i, -26240i, u_input.a)), _wgslsmith_add_i32(~26079i, 5872i)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a.x, 1450f, var_1.a.x), var_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(918f, arg_1, var_1.a.x)), !(!vec3<bool>(false, false, arg_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.x)) + _wgslsmith_f_op_f32(select(var_1.a.x, -683f, arg_2))), -1763f, _wgslsmith_div_f32(arg_1, -447f)))), ~var_1.b, vec3<bool>(all(!(!vec4<bool>(arg_2, var_1.c.x, var_0.x, false))), true, var_0.x));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    var var_0 = -1i;
    let var_1 = -vec2<i32>(max(u_input.c.x, 30883i), _wgslsmith_add_i32(-1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(7713i, -2147483647i, u_input.c.x, -4305i), vec4<i32>(-2147483647i, u_input.c.x, -1i, -1i))));
    let var_2 = func_5(!select(vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), false))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-364f, 628f, -2333f, 343f)) + vec4<f32>(-318f, -224f, 898f, 193f)))), select(vec2<bool>(true, select(true, false, false)), vec2<bool>(true, true), vec2<bool>(0u == arg_0, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1214f))), 212f) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * 974f), _wgslsmith_f_op_f32(floor(-350f)))), ~_wgslsmith_add_u32(u_input.d.x, arg_0));
    var_0 = 2147483647i;
    let var_3 = var_2.a;
    return ~vec2<u32>(~arg_0, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(func_1(_wgslsmith_div_u32(~_wgslsmith_add_u32(1u, 69486u), max(u_input.d.x, 7993u) & u_input.b)));
    var var_1 = u_input.d.zz;
    var_0 = vec2<u32>(abs(~1u), func_1(_wgslsmith_sub_u32(u_input.b, var_1.x)).x);
    var_1 = u_input.d.xx;
    var_1 = u_input.d.xz;
    var_1 = vec2<u32>(46059u, _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(~u_input.d.zzw, abs(u_input.d.wxz))), select(~78711u, var_1.x, true)));
    var_1 = vec2<u32>(u_input.d.x & _wgslsmith_clamp_u32(~26701u, ~_wgslsmith_add_u32(var_1.x, 4294967295u), u_input.b), 2030u);
    var_1 = ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), u_input.d.zz);
    var var_2 = func_1(~func_5(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), -1520f, true, var_1.x).b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_2.x, _wgslsmith_dot_vec4_u32(u_input.d, ~vec4<u32>(var_0.x, var_1.x, 1u, 41760u))));
}

