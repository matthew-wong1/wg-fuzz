struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec3<i32> = vec3<i32>(-1i, 56690i, 1i);

var<private> global2: Struct_3;

var<private> global3: vec4<f32> = vec4<f32>(1181f, 1131f, -169f, -1274f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1116f * global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + _wgslsmith_div_f32(2103f, _wgslsmith_f_op_f32(global2.a.x + global2.a.x))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(global3.yw + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-835f, -379f) * global2.a) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.a.x, global3.x))))) - global2.a));
    let var_2 = 5116u;
    var_0 = -815f;
    var var_3 = false;
    return ~(67682u >> (max(32716u, u_input.c) % 32u));
}

fn func_2() -> Struct_3 {
    global2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, global3.x)))) + global3.wz) * vec2<f32>(1697f, 282f)));
    let var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(func_3(), ~func_3()), vec2<u32>(1u, 1u)), u_input.c, ~u_input.d, abs(_wgslsmith_mult_u32(min(~u_input.d, _wgslsmith_sub_u32(4294967295u, 1u)), max(~29820u, ~12232u))));
    var var_1 = select(!(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !vec3<bool>(!(global1.x > u_input.b.x), true, any(vec2<bool>(true, true))), true);
    let var_2 = ~_wgslsmith_mult_vec4_u32(var_0, select(vec4<u32>(reverseBits(28552u), _wgslsmith_mod_u32(u_input.c, u_input.d), _wgslsmith_clamp_u32(14075u, 1u, 0u), 13313u), var_0, vec4<bool>(var_1.x && true, all(vec3<bool>(true, false, var_1.x)), !var_1.x, any(vec4<bool>(var_1.x, true, var_1.x, false)))));
    var var_3 = Struct_1(_wgslsmith_mult_i32(2147483647i, ~u_input.b.x), vec2<bool>(!(!select(var_1.x, var_1.x, var_1.x)), !var_1.x), select(select(abs(-vec4<i32>(34216i, u_input.a, -2147483647i, global1.x)), vec4<i32>(_wgslsmith_clamp_i32(44744i, u_input.b.x, u_input.b.x), -34113i, ~0i, _wgslsmith_mod_i32(-1i, -2147483647i)), var_1.x), vec4<i32>(~abs(global1.x), 43812i, _wgslsmith_mult_i32(~global1.x, -1i << (var_0.x % 32u)), global1.x), !(!select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, false), vec4<bool>(true, var_1.x, false, var_1.x)))), countOneBits(vec3<i32>(-58649i, global1.x ^ -211i, ~u_input.a)) & (_wgslsmith_clamp_vec3_i32(~vec3<i32>(global1.x, 22845i, -33883i), vec3<i32>(71784i, u_input.a, -2147483647i), -vec3<i32>(global1.x, -57522i, 1421i)) << (vec3<u32>(countOneBits(u_input.c), func_3(), var_2.x) % vec3<u32>(32u))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, global3.x))));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_2 {
    global2 = func_2();
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, -208f, global2.a.x, arg_0) * vec4<f32>(154f, -950f, global3.x, 648f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -247f), -689f, 1f, _wgslsmith_f_op_f32(1962f - 563f)))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -1000f) - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-534f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(576f))))), global2.a.x));
    let var_0 = 449f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(847f)));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, global3.x, 483f, -191f) - vec4<f32>(1501f, -1170f, -904f, global2.a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1236f, 1280f, -850f, global2.a.x)))))));
    return Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, reverseBits(_wgslsmith_div_u32(u_input.d, u_input.d)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(54412u, 33869u, u_input.d)), vec3<u32>(4294967295u, 32243u, 4294967295u))), ~(~(~vec3<u32>(u_input.d, 0u, 1u)))), u_input.b, -global1.x, _wgslsmith_f_op_f32(global3.x + var_0), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec2<i32>(~1i, max(abs(_wgslsmith_div_i32(26128i, global1.x)), -firstLeadingBit(-2147483647i)));
    var var_1 = select(select(!vec2<bool>(true, all(vec3<bool>(true, false, false))), vec2<bool>(true, true), true), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true);
    global1 = ~abs(firstLeadingBit(vec3<i32>(i32(-1i) * -27539i, _wgslsmith_add_i32(var_0.x, global1.x), u_input.a & 3294i)));
    let var_2 = 42913u;
    global0 = ~(~var_2);
    let var_3 = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-968f, -956f)) + _wgslsmith_f_op_f32(global2.a.x * global2.a.x))))), true);
    var var_4 = Struct_1(-23177i, vec2<bool>(var_1.x, (~u_input.c ^ _wgslsmith_sub_u32(u_input.c, 65824u)) >= firstTrailingBit(var_2)), vec4<i32>(u_input.b.x, u_input.a, -24762i, 19766i | u_input.a), ~vec3<i32>(global1.x ^ -55956i, i32(-1i) * -var_3.c, -abs(global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(~(-vec4<i32>(0i, -2646i, var_4.d.x, var_3.b.x)) | vec4<i32>(_wgslsmith_add_i32(var_3.c, u_input.a), -u_input.a, _wgslsmith_mult_i32(var_3.c, var_0.x), _wgslsmith_div_i32(-2992i, 39239i)), vec4<i32>(_wgslsmith_sub_i32(0i, var_3.c), ~1i, 0i, u_input.a)), vec4<i32>(2910i, u_input.a, -72273i, ~reverseBits(-80662i)), var_0.x);
}

