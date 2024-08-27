struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = global0.b.x;
    var var_1 = 713f;
    var var_2 = vec4<bool>(global0.d.x, false == (_wgslsmith_sub_i32(select(u_input.b.x, -60147i, true), _wgslsmith_mod_i32(879i, 4211i)) == select(1i, select(u_input.c, 57147i, false), false)), any(vec3<bool>(true, true, false)), false);
    return -16924i;
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_1(vec4<i32>(reverseBits(~func_3(0u)), global0.a.x, select(u_input.c, _wgslsmith_div_i32(u_input.b.x, func_3(u_input.d)), !all(global0.d)), -2147483647i), vec3<f32>(789f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global0.b.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b.x)))), -_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.c, 2147483647i, -7097i, u_input.b.x) | ~vec4<i32>(1i, 2147483647i, global0.c, -1i), vec4<i32>(u_input.c << (1u % 32u), global0.c, countOneBits(48935i), global0.c ^ -24334i)), vec2<bool>(all(vec2<bool>(any(global0.d), global0.d.x)), ~u_input.d == 51789u));
    global0 = var_0;
    global0 = Struct_1(reverseBits(global0.a), var_0.b, global0.a.x ^ 1i, vec2<bool>(!(!var_0.d.x), true));
    global0 = Struct_1(vec4<i32>(global0.c, var_0.c, 2580i, _wgslsmith_add_i32(~u_input.b.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(global0.c, global0.c, 40688i), firstLeadingBit(global0.a.yxy)))), var_0.b, -_wgslsmith_clamp_i32(1i, countOneBits(global0.c), -1i) >> (42244u % 32u), var_0.d);
    var var_1 = Struct_1(vec4<i32>(-_wgslsmith_mult_i32(var_0.c, _wgslsmith_sub_i32(-28548i, -12225i)), ~u_input.c, firstLeadingBit(~_wgslsmith_mult_i32(8268i, u_input.c)), _wgslsmith_mult_i32(global0.a.x, ~1i) | var_0.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global0.b)) * _wgslsmith_f_op_vec3_f32(var_0.b * var_0.b)))) + global0.b), _wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0.c, u_input.b.x), ~(-1i)), abs(var_0.a.x))), select(vec2<bool>(any(select(vec4<bool>(global0.d.x, true, true, global0.d.x), vec4<bool>(var_0.d.x, global0.d.x, false, true), false)), all(!vec3<bool>(var_0.d.x, true, var_0.d.x))), !global0.d, all(vec4<bool>(all(vec3<bool>(global0.d.x, var_0.d.x, var_0.d.x)), true, true, !global0.d.x))));
    return ~(-(countOneBits(vec4<i32>(var_1.a.x, var_1.a.x, u_input.b.x, var_1.a.x) & vec4<i32>(-10847i, -22639i, 16726i, -1i)) ^ ((vec4<i32>(global0.a.x, -2147483647i, -1i, u_input.b.x) & vec4<i32>(var_0.a.x, global0.c, -1i, var_0.c)) ^ vec4<i32>(1i, 0i, u_input.c, u_input.b.x))));
}

fn func_1(arg_0: i32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2161f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b.x)))) * _wgslsmith_f_op_f32(step(369f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(global0.b.x + 911f))))));
    global0 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, u_input.b.x, global0.c, u_input.b.x), global0.a), _wgslsmith_mult_i32(arg_0, arg_0), 0i & u_input.b.x, 12216i), max(abs(u_input.b), -global0.a)), func_2()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -288f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -193f), _wgslsmith_f_op_f32(ceil(var_0)))))), -1i, vec2<bool>(all(global0.d), any(select(vec3<bool>(global0.d.x, true, true), !vec3<bool>(global0.d.x, global0.d.x, false), true))));
    var var_1 = Struct_2(~_wgslsmith_dot_vec3_i32(-u_input.b.zxz, _wgslsmith_div_vec3_i32(max(vec3<i32>(0i, -4046i, u_input.c), vec3<i32>(global0.c, u_input.b.x, 2147483647i)), _wgslsmith_clamp_vec3_i32(global0.a.www, vec3<i32>(51526i, -8500i, -43064i), global0.a.wxz))), 6091u, Struct_1(u_input.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.b.x)) + _wgslsmith_f_op_f32(603f * var_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 164f)), -1348f), -(arg_0 << (_wgslsmith_add_u32(1u, u_input.e.x) % 32u)), select(select(!global0.d, global0.d, true), select(!vec2<bool>(global0.d.x, true), vec2<bool>(true, true), any(vec2<bool>(global0.d.x, global0.d.x))), select(vec2<bool>(true, true), vec2<bool>(global0.d.x, true), global0.d.x))), false, firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, 0u, 1u), vec4<u32>(u_input.d, 0u, 1u, 51085u))));
    var var_2 = vec3<bool>(false, !(!(_wgslsmith_f_op_f32(trunc(-490f)) == -1312f)), any(!select(var_1.c.d, select(vec2<bool>(false, true), vec2<bool>(true, global0.d.x), vec2<bool>(true, global0.d.x)), u_input.b.x == -2147483647i)));
    var_2 = select(!select(!vec3<bool>(false, var_1.c.d.x, false), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, global0.d.x), vec3<bool>(var_2.x, var_1.d, var_2.x)), !var_1.d), !select(vec3<bool>(var_2.x, true, 1u <= var_1.b), vec3<bool>(false || var_2.x, true, false), var_1.d), select(vec3<bool>(any(vec2<bool>(false, var_2.x)), ~1u <= reverseBits(u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -223f) < _wgslsmith_div_f32(-773f, var_0)), !(!select(vec3<bool>(false, false, global0.d.x), vec3<bool>(var_1.d, var_2.x, true), vec3<bool>(true, var_1.c.d.x, false))), vec3<bool>(all(!vec3<bool>(false, global0.d.x, global0.d.x)), (var_1.b > u_input.e.x) && (global0.d.x == true), false)));
    return firstLeadingBit(var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(firstLeadingBit(u_input.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0.b))), ~min(_wgslsmith_sub_i32(-1i, ~18228i), global0.a.x), !(!(!global0.d)));
    let var_0 = -1503f;
    var var_1 = ~reverseBits(vec4<u32>(~(~4294967295u), _wgslsmith_add_u32(15882u, _wgslsmith_sub_u32(1u, u_input.a.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 1043u, 1u), vec4<u32>(1u, u_input.e.x, u_input.d, 42183u)), ~12206u));
    var_1 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(63795u, var_1.x, 4294967295u, var_1.x), vec4<u32>(u_input.e.x, u_input.d, 42338u, u_input.a.x)), vec4<u32>(u_input.a.x, 1u, u_input.d, countOneBits(var_1.x))), vec4<u32>(_wgslsmith_div_u32(2874u, _wgslsmith_sub_u32(var_1.x, var_1.x)), _wgslsmith_sub_u32(23465u, 1u), var_1.x, ~(~u_input.d)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, var_1.x, 4294967295u, var_1.x), vec4<u32>(73631u, var_1.x, u_input.d, 57612u))));
    let var_2 = ~48152i;
    var_1 = ~(~_wgslsmith_add_vec4_u32(select(max(vec4<u32>(12179u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, u_input.e.x, 0u)), ~vec4<u32>(0u, 70410u, 1u, 4294967295u), select(vec4<bool>(false, global0.d.x, true, false), vec4<bool>(global0.d.x, false, global0.d.x, global0.d.x), global0.d.x)), ~vec4<u32>(var_1.x, 1u, u_input.e.x, var_1.x)));
    var_1 = func_1(-6961i);
    var var_3 = Struct_2(func_2().x, ~abs(u_input.e.x), Struct_1(_wgslsmith_sub_vec4_i32(select(~u_input.b, ~global0.a, vec4<bool>(global0.d.x, global0.d.x, global0.d.x, false)), firstLeadingBit(vec4<i32>(var_2, global0.a.x, u_input.b.x, 2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global0.b, vec3<f32>(var_0, var_0, 874f))) - vec3<f32>(1f, _wgslsmith_f_op_f32(var_0 - global0.b.x), _wgslsmith_f_op_f32(trunc(-398f)))), _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(-15133i, var_2, 8821i)), vec3<i32>(i32(-1i) * -42933i, global0.a.x, -u_input.c)), vec2<bool>(true, all(select(vec3<bool>(global0.d.x, global0.d.x, true), vec3<bool>(global0.d.x, false, false), false)))), false, ~min(_wgslsmith_sub_vec4_u32(~vec4<u32>(85503u, 124076u, 27362u, 1u), ~vec4<u32>(u_input.e.x, u_input.a.x, u_input.a.x, 50980u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.a.x, var_1.x, u_input.d), vec4<u32>(67629u, var_1.x, var_1.x, var_1.x)), 1u, u_input.d & 27650u, ~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(-var_2 << (_wgslsmith_dot_vec3_u32(~var_1.wyw, ~var_3.e.yzw) % 32u)).xyx, global0.b.zy, ~(var_3.e.xy >> (abs(vec2<u32>(var_1.x, var_1.x)) % vec2<u32>(32u))), ~(~vec4<i32>(~1i, 1i, 1i, ~global0.a.x)));
}

