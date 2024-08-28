struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<bool>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(48308u, 4294967295u);

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<i32>(14092i, -8678i, 2147483647i, -1i), 60931i, vec4<bool>(false, false, true, true), true, vec2<i32>(0i, -1i)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec3<u32>) -> f32 {
    var var_0 = vec3<u32>(26253u, arg_2.x, arg_0);
    global1 = array<Struct_1, 1>();
    var var_1 = ~(~max(~(~arg_1), arg_1));
    let var_2 = arg_1;
    var_1 = -29006i ^ arg_1;
    return _wgslsmith_f_op_f32(round(-111f));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> f32 {
    global1 = array<Struct_1, 1>();
    let var_0 = abs(_wgslsmith_add_i32(abs(-40045i), arg_1.x) ^ _wgslsmith_mod_i32(~(~arg_1.x), arg_1.x));
    var var_1 = Struct_1(vec4<i32>(min(~var_0, -19478i), ~(48551i & arg_1.x) & var_0, ~arg_1.x, ~24805i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-16440i, 0i, var_0), -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, 23341i, arg_1.x), arg_1, vec3<i32>(var_0, -69570i, 28195i))), arg_1.x | abs(1i)), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(10113u, -17301i, vec3<u32>(arg_0, u_input.b.x, 1u))) * 1096f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-809f * -651f) + _wgslsmith_f_op_f32(min(-659f, 969f))), true, true, any(vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true))), any(vec2<bool>(any(vec4<bool>(true, true, true, true)), true)), ~(~(countOneBits(arg_1.zy) & -vec2<i32>(22556i, -15773i))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(global0.x, -58225i, vec3<u32>(u_input.a, 0u, 55340u))), _wgslsmith_f_op_f32(-464f * -504f), -1546f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1173f, 1732f, -1841f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-808f, -1246f, 529f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1710f, 122f, 703f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1003f, 1171f, -451f))))));
    global1 = array<Struct_1, 1>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-303f)), var_2.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1879f, -1577f, true)))) + _wgslsmith_f_op_f32(max(-1078f, var_2.x))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> vec2<u32> {
    global1 = array<Struct_1, 1>();
    let var_0 = select(arg_0.a.e, arg_0.a.e, !(!select(vec2<bool>(false, false), vec2<bool>(true, arg_2), true)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), arg_1)), 563f, _wgslsmith_f_op_f32(-781f * arg_1), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 221f)));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-581f + 2027f) + _wgslsmith_f_op_f32(select(1151f, -816f, arg_0.a.d))) - -929f))), _wgslsmith_f_op_f32(func_2(~global0.x, vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0.a.e, max(vec2<i32>(-1i, var_0.x), vec2<i32>(arg_0.a.a.x, -88754i))), -40975i & arg_0.a.b, 1i))), arg_1, arg_1);
    global1 = array<Struct_1, 1>();
    return ~(~(~u_input.b.zy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_vec2_u32(~(~_wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.b.zy), u_input.b.zy)), ~(vec2<u32>(27708u, min(4294967295u, 4294967295u)) >> (_wgslsmith_mod_vec2_u32(u_input.b.zx, func_1(Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, -22092i, -2147483647i), 0i, vec4<bool>(true, false, true, false), false, vec2<i32>(1i, 16683i))), 1000f, false)) % vec2<u32>(32u))));
    var var_0 = !(!all(vec3<bool>(any(vec4<bool>(true, true, false, true)), false, false)));
    let var_1 = 1u;
    var var_2 = 306f;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_u32(4294967295u, u_input.a, 1u), -21304i, ~vec3<u32>(1u, 25613u, global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1261f + -1607f)) + -978f), _wgslsmith_f_op_f32(894f + 248f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(~firstLeadingBit(-vec4<i32>(-2147483647i, 2147483647i, -25457i, -61222i)), max(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 37294i, 8352i, 18446i), vec4<i32>(14567i, 0i, 7382i, 0i), vec4<i32>(-43123i, 2147483647i, -7451i, -5132i)), max(vec4<i32>(2147483647i, -44367i, 11920i, 1i), vec4<i32>(2147483647i, 19638i, 21950i, 13438i)), vec4<i32>(1i, 1i, 1i, 1i)), -vec4<i32>(1i, 1i, 1i, 1i))), var_3.zx, ~min(_wgslsmith_div_vec2_u32(u_input.b.zz, u_input.b.yz), vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(global0.x, global0.x, 4294967295u))), -(vec2<i32>(1i, 1i) ^ ~(vec2<i32>(2147483647i, 1i) >> (u_input.b.yz % vec2<u32>(32u)))));
}

