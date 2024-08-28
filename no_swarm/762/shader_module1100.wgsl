struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: f32) -> bool {
    global0 = ~u_input.c.x;
    global1 = -_wgslsmith_mod_i32(51947i, u_input.c.x);
    var var_0 = max(select(abs(u_input.a), vec3<u32>(u_input.a.x, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.e.x, 35329u, u_input.e.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.e.x, u_input.e.x))), 41772u), true), u_input.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_2 = _wgslsmith_mod_u32(4294967295u, 7367u);
    return all(select(vec4<bool>(true, countOneBits(u_input.d) < -4977i, ~31223i <= u_input.d, firstTrailingBit(1u) <= 4294967295u), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false), true), any(vec4<bool>(true, true, true, true))), select(vec4<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(false, false)), true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), true)));
}

fn func_2() -> i32 {
    var var_0 = Struct_5(Struct_2(Struct_1(select(func_3(397f, 315f), any(vec4<bool>(true, false, false, true)), true), -2147483647i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -869f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(636f)), 524f, _wgslsmith_f_op_f32(-1552f * 130f), -1261f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-819f, -1300f, 1023f, -558f) * vec4<f32>(-198f, 590f, 748f, -1136f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-839f, -335f, -344f, 401f) * vec4<f32>(1000f, 1000f, -1100f, 756f)))), Struct_1(true, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(716f)), -1568f)))), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1240f, 1048f, _wgslsmith_f_op_f32(max(-1042f, 609f)), _wgslsmith_div_f32(257f, 549f))), vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(-2147483647i, select(24924i, -35958i, true), 0i << (1u % 32u)), _wgslsmith_mult_i32(~u_input.b.x, firstTrailingBit(57905i)), countOneBits(u_input.b.x | -1446i)), Struct_2(Struct_1(true, u_input.c.x, _wgslsmith_f_op_f32(-1468f - -2005f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-607f, 1178f, 266f, 1338f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-902f, 1000f, 1501f, 449f), vec4<f32>(1130f, -1000f, 603f, 536f))), Struct_1(true, u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -402f)))));
    var_0 = Struct_5(var_0.a, var_0.b);
    global1 = reverseBits(u_input.c.x);
    var var_1 = firstLeadingBit(_wgslsmith_clamp_u32(11613u, u_input.a.x, _wgslsmith_div_u32(~(~u_input.a.x), u_input.e.x)));
    var var_2 = var_0.a;
    return _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, -8165i), ~var_0.b.c.a.b);
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    global1 = u_input.d >> (arg_0.x % 32u);
    global1 = func_2();
    var var_0 = Struct_1(any(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec3<bool>(false, true, true)), all(vec4<bool>(true, true, false, true)), false), vec4<bool>(true, true, true, true))), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(-819f, -432f, true))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1172f, var_0.c, 457f, var_0.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -522f, -1692f, -610f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 1523f, -671f, var_0.c) - vec4<f32>(1000f, var_0.c, -377f, var_0.c)), vec4<bool>(false, false, true, var_0.a)))))));
    let var_2 = select(select(select(select(!vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, true, false, var_0.a), true), vec4<bool>(all(vec3<bool>(var_0.a, true, var_0.a)), false, select(var_0.a, false, true), !var_0.a), any(vec2<bool>(false, var_0.a)) & true), vec4<bool>((arg_0.x << (1u % 32u)) <= _wgslsmith_add_u32(32577u, u_input.e.x), all(vec2<bool>(true, false)), all(select(vec2<bool>(false, false), vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, var_0.a))), any(select(vec4<bool>(false, false, true, var_0.a), vec4<bool>(false, var_0.a, var_0.a, true), vec4<bool>(false, true, var_0.a, var_0.a)))), any(select(!vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, true), select(vec2<bool>(false, false), vec2<bool>(false, false), var_0.a)))), vec4<bool>(any(select(vec2<bool>(var_0.a, true), select(vec2<bool>(false, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a)), vec2<bool>(var_0.a, var_0.a))), true, !func_3(226f, _wgslsmith_f_op_f32(-var_1.x)), false), true);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_i32(u_input.d & abs(20068i), func_1(u_input.a.yx));
    global0 = 1i;
    global0 = _wgslsmith_add_i32(~(-2147483647i), ~u_input.b.x) & (_wgslsmith_mult_i32(-1i, firstLeadingBit(-9185i)) & (u_input.d ^ -2147483647i));
    var var_0 = min(max(-(min(vec2<i32>(23046i, -2147483647i), u_input.b) << (~vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), u_input.c.xy), abs(~vec2<i32>(-42714i, 13140i) << (u_input.e.yy % vec2<u32>(32u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-348f)), _wgslsmith_f_op_f32(2243f * -1766f)))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1803f)), 634f), -2147483647i, 1232f);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-853f - var_1.c), _wgslsmith_f_op_f32(-var_1.c), var_1.c, 2072f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1087f, 875f, -430f, -829f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(354f, -2501f, 1335f, var_1.c) * vec4<f32>(var_1.c, 1000f, -257f, -2762f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1186f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1648f, _wgslsmith_f_op_f32(var_1.c * 2033f))), _wgslsmith_f_op_f32(-var_1.c))), -221f, var_1.c), vec4<bool>(false, true | var_1.a, !var_1.a, !all(vec2<bool>(var_1.a, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -678f), var_1.c)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_2 + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -887f, var_2.x, var_1.c))))))), var_1.b, _wgslsmith_f_op_f32(-var_1.c));
}

