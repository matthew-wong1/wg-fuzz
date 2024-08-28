struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<f32>, 18>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = array<vec3<f32>, 18>();
    var var_0 = arg_1.x;
    var var_1 = 0u;
    var_0 = arg_1.x || false;
    var var_2 = Struct_2(0i >> (~arg_3.b % 32u), ~1u, arg_1.x, ~0u);
    return arg_2.c.x;
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: f32) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(1u, 18u)] - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1283f, -828f))))));
    var var_0 = Struct_2(_wgslsmith_div_i32(67230i, abs(-_wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), arg_0, true, 1u);
    var var_1 = _wgslsmith_div_vec3_u32(firstLeadingBit(~vec3<u32>(arg_0, 4294967295u, arg_0) | _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(26440u, 63017u, arg_0)), min(vec3<u32>(4294967295u, 30156u, arg_0), vec3<u32>(1u, 11069u, 0u)), firstLeadingBit(vec3<u32>(arg_0, 4294967295u, arg_0)))), abs(abs((vec3<u32>(arg_0, var_0.d, 1u) | vec3<u32>(arg_0, arg_0, arg_0)) ^ ~vec3<u32>(35386u, arg_0, arg_0))));
    let var_2 = _wgslsmith_clamp_i32(~(-select(-2147483647i, ~u_input.b.x, select(false, arg_1, false))), var_0.a, u_input.b.x);
    return _wgslsmith_f_op_f32(round(arg_2));
}

fn func_2() -> Struct_1 {
    global0 = vec3<f32>(global0.x, -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.x)))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 914f) * global0.x))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0.x, 847f, false)), -2015f))) * global0.x));
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(firstLeadingBit(~85821u), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(971f, 236f))))), -992f));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(63321u, 1u), 18u)];
    return Struct_1(vec3<i32>(~reverseBits(i32(-1i) * -1i), var_0 >> ((74170u << (_wgslsmith_clamp_u32(10123u, 29815u, 17177u) % 32u)) % 32u), _wgslsmith_div_i32(-_wgslsmith_mod_i32(u_input.b.x, 43149i), 29245i)), ~_wgslsmith_clamp_u32(1u, ~(~1u), ~firstTrailingBit(4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_1, _wgslsmith_f_op_f32(sign(-687f)), _wgslsmith_f_op_f32(-global0.x))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1440f) * global0.x), -1422f, _wgslsmith_f_op_f32(f32(-1f) * -709f), global0.x)), (~_wgslsmith_mod_i32(var_0, u_input.a.x) & -48652i) >> (firstTrailingBit(86413u) % 32u), abs(_wgslsmith_clamp_i32(-36765i, var_0, ~u_input.a.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = Struct_2(_wgslsmith_mod_i32(~(~(~arg_2.e)), ~_wgslsmith_clamp_i32(arg_1.e | var_0.a.x, ~arg_1.d, func_2().e)), var_0.b, false, arg_2.b);
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(622f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.c.x - arg_2.c.x))), 132f))));
    let var_4 = false;
    return Struct_1(arg_2.a, arg_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_2.c, _wgslsmith_f_op_vec4_f32(step(arg_1.c, vec4<f32>(-293f, arg_2.c.x, arg_1.c.x, var_0.c.x))))) * vec4<f32>(748f, _wgslsmith_f_op_f32(f32(-1f) * -1087f), -1302f, arg_3.c.x)) - _wgslsmith_f_op_vec4_f32(round(arg_3.c))), arg_2.e, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(636f + 773f)))) + _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(func_1(Struct_1(u_input.a, 0u, vec4<f32>(-1292f, 542f, -242f, global0.x), u_input.a.x, -2147483647i), vec4<bool>(true, false, true, true), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.a.x), 7255u, vec4<f32>(923f, global0.x, -409f, 120f), -1i, u_input.b.x), Struct_1(u_input.a, 22417u, vec4<f32>(-1420f, global0.x, -140f, -2250f), u_input.b.x, u_input.b.x)))), 588f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 558f))), -1035f);
    let var_1 = func_4(120f, func_2(), func_2(), func_2());
    let var_2 = func_4(1291f, func_2(), var_1, func_4(_wgslsmith_f_op_f32(-815f - -1252f), func_4(-419f, func_2(), var_1, var_1), Struct_1(select(u_input.b.wxw, u_input.b.xwz ^ vec3<i32>(-15101i, var_1.d, var_1.a.x), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b, 8421u, 0u), vec3<u32>(12701u, var_1.b, 57035u)), min(vec3<u32>(1u, var_1.b, 0u), vec3<u32>(var_1.b, var_1.b, 45924u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.c.x, -224f, -849f) - var_1.c)), 21387i, firstLeadingBit(firstLeadingBit(var_1.e))), var_1));
    let var_3 = ~vec2<i32>(~(2147483647i >> ((var_1.b >> (4294967295u % 32u)) % 32u)), select(-min(var_2.a.x, var_1.e), _wgslsmith_add_i32(firstLeadingBit(1i), 1i << (var_1.b % 32u)), all(vec4<bool>(true, true, true, true))));
    global0 = vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(var_2.c.x * 1123f), 161f);
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~1u, u_input.b, abs(vec4<u32>(55632u, max(~var_1.b, firstLeadingBit(var_2.b)), countOneBits(4294967295u), ~(~var_2.b))));
}

