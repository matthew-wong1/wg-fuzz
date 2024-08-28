struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    var var_0 = Struct_2(_wgslsmith_sub_i32(~(-global0[_wgslsmith_index_u32(arg_1.x, 25u)] & (u_input.a << (1u % 32u))), 1i), select(select(select(vec4<bool>(true, arg_3.b.x, arg_3.b.x, true), vec4<bool>(true, true, false, false), select(vec4<bool>(arg_2.b.x, true, arg_2.b.x, arg_3.b.x), vec4<bool>(false, arg_2.b.x, false, true), false)), select(!vec4<bool>(false, arg_3.b.x, false, false), select(vec4<bool>(arg_2.b.x, arg_2.b.x, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(false, false, false, true)), any(vec2<bool>(arg_3.b.x, arg_3.b.x))), select(!vec4<bool>(false, arg_3.b.x, arg_2.b.x, arg_2.b.x), vec4<bool>(false, any(vec2<bool>(arg_3.b.x, arg_3.b.x)), all(vec2<bool>(true, false)), arg_3.b.x), vec4<bool>(select(true, false, arg_2.b.x), true, !arg_2.b.x, true)), arg_2.b.x));
    let var_1 = abs(~(~arg_3.a.x));
    var var_2 = arg_3;
    return select(vec2<bool>(arg_3.b.x, ~var_1 < _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_1, 1u, arg_3.a.x), 1u, arg_1.x)), !select(var_0.b.yw, vec2<bool>(arg_3.b.x, false), !(!var_2.b)), select(vec2<bool>(true, true), !select(vec2<bool>(true, arg_2.b.x), vec2<bool>(var_2.b.x, var_0.b.x), vec2<bool>(var_2.b.x, false)), (0i | var_0.a) != -(~global0[_wgslsmith_index_u32(arg_1.x, 25u)])));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 62570u), vec2<u32>(0u, 0u))), max(vec2<u32>(1u, 1u), vec2<u32>(1u, 31246u)))), !arg_0.zz);
    var_0 = Struct_1(var_0.a, !vec2<bool>(var_0.b.x, false));
    var var_1 = select(!select(vec2<bool>(!arg_0.x, !arg_0.x), !func_3(vec2<f32>(-730f, -654f), vec3<u32>(var_0.a.x, 17518u, var_0.a.x), Struct_1(vec2<u32>(var_0.a.x, var_0.a.x), arg_0.xz), Struct_1(vec2<u32>(var_0.a.x, var_0.a.x), arg_0.xx)), arg_0.xx), func_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(910f, -711f))))), vec3<u32>(select(34963u, var_0.a.x, all(vec2<bool>(var_0.b.x, arg_0.x))), var_0.a.x, _wgslsmith_sub_u32(select(var_0.a.x, var_0.a.x, var_0.b.x), ~5776u)), Struct_1(abs(_wgslsmith_clamp_vec2_u32(var_0.a, var_0.a, vec2<u32>(4294967295u, var_0.a.x))), vec2<bool>(false, all(var_0.b))), Struct_1(_wgslsmith_clamp_vec2_u32(select(var_0.a, var_0.a, var_0.b), var_0.a, var_0.a), !arg_0.xz)), arg_0.x);
    var_0 = Struct_1(min(var_0.a, var_0.a), !func_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(558f, 352f)))), select(select(vec3<u32>(var_0.a.x, 46992u, var_0.a.x), vec3<u32>(var_0.a.x, 6204u, var_0.a.x), vec3<bool>(var_0.b.x, var_1.x, false)), vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x), 2147483647i == u_input.a), Struct_1(var_0.a, vec2<bool>(var_0.b.x, false)), Struct_1(~vec2<u32>(1u, var_0.a.x), vec2<bool>(false, arg_0.x))));
    let var_2 = vec2<i32>(firstLeadingBit(37599i), _wgslsmith_div_i32(2147483647i, u_input.a));
    return Struct_1(vec2<u32>(_wgslsmith_clamp_u32(reverseBits(~var_0.a.x), 28742u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(7134u, 8050u, var_0.a.x), vec3<u32>(4294967295u, 4294967295u, 0u))), ~(~_wgslsmith_clamp_u32(0u, var_0.a.x, 15391u))), arg_0.zy);
}

fn func_1() -> u32 {
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    let var_0 = func_2(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false))));
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    return _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.x, 0u, 27799u, 1u) << (vec4<u32>(max(var_0.a.x, var_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(15825u, var_0.a.x, 57776u, 4294967295u), vec4<u32>(var_0.a.x, var_0.a.x, 6271u, var_0.a.x)), _wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(3723u, 0u)), _wgslsmith_add_u32(0u, 0u)) % vec4<u32>(32u)), max(~abs(vec4<u32>(var_0.a.x, 22494u, var_0.a.x, var_0.a.x)), ~reverseBits(vec4<u32>(var_0.a.x, 0u, 0u, 0u)))), var_0.a.x);
}

fn func_4(arg_0: Struct_2) -> bool {
    var var_0 = arg_0.b.wxw;
    global0 = array<i32, 25>();
    var var_1 = Struct_1(~(~vec2<u32>(1u, 1u)), var_0.xz);
    global0 = array<i32, 25>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1930f, -880f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(388f, -1000f)))))))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1000f, 724f, arg_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(329f, 552f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 382f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1469f, 666f))))));
    return var_0.x | !var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_4(Struct_2(global0[_wgslsmith_index_u32(~func_1(), 25u)], select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), true)));
    global0 = array<i32, 25>();
    var var_1 = ~_wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 74932u), vec3<u32>(1u, 33984u, 4294967295u)), ~0u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u));
    var var_2 = func_2(vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, false, false)))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(246f, 546f)))), ~(var_1.wxw ^ vec3<u32>(var_1.x, 11246u, 0u)), Struct_1(var_1.xy & var_1.yy, vec2<bool>(true, true)), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 15929u), var_1.xy), vec2<bool>(false, false))).x, false));
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(222f * -144f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2629f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-675f, -408f) + 2255f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-295f, -1736f))))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-515f, _wgslsmith_f_op_f32(floor(1270f))), vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_div_f32(1127f, -800f))))));
    var var_5 = 36157u & ~(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(var_1.x, var_1.x), _wgslsmith_mod_u32(var_1.x, var_1.x)) << ((101258u ^ var_1.x) % 32u));
    global0 = array<i32, 25>();
    var var_6 = ~_wgslsmith_div_u32(_wgslsmith_sub_u32(11797u, var_1.x), ~(~1335u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.x), min(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_1.x, var_2.a.x, 4282u, 0u)), vec4<u32>(var_2.a.x, 1u, firstLeadingBit(6673u), _wgslsmith_div_u32(var_2.a.x, var_1.x))), ~_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(var_1.x, 49197u, var_2.a.x, var_2.a.x)), vec4<u32>(4294967295u, var_1.x, var_2.a.x, 4294967295u))));
}

