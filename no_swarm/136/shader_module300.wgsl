struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30>;

var<private> global1: vec2<f32> = vec2<f32>(-452f, 128f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(trunc(3674f));
    var var_1 = arg_0;
    return Struct_3(u_input.a.xy);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: f32) -> vec4<f32> {
    let var_0 = vec2<i32>(-2147483647i, 2147483647i << (arg_1.a.x % 32u));
    global1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, -427f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-307f, global1.x), vec2<f32>(global1.x, arg_3)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, arg_3)))))));
    let var_1 = Struct_2(select(arg_2.x, 62349u, any(vec4<bool>(true, true, arg_3 == -2005f, false))), Struct_1(min(select(_wgslsmith_clamp_vec4_u32(arg_2, vec4<u32>(4294967295u, arg_0, 48742u, arg_2.x), arg_2), arg_2, true), arg_2), ~(var_0 & vec2<i32>(var_0.x, 18148i))), Struct_1(max(vec4<u32>(abs(4294967295u), ~33515u, ~21366u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_2.x), arg_2.xy)), vec4<u32>(~48930u, 22415u, abs(arg_2.x), ~5154u)), vec2<i32>(~(~var_0.x), ~(0i ^ var_0.x))), Struct_1(_wgslsmith_clamp_vec4_u32(arg_2, min(vec4<u32>(u_input.a.x, 4294967295u, arg_2.x, 79585u), ~vec4<u32>(13909u, 0u, 46223u, arg_0)), arg_2), var_0));
    let var_2 = _wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, 93039u, arg_0) ^ vec3<u32>(47227u, var_1.d.a.x, 56288u), vec3<u32>(~0u, 1u, arg_2.x), all(vec2<bool>(false, false))), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.x, 4294967295u, 27525u) ^ vec3<u32>(30146u, arg_1.a.x, var_1.c.a.x), ~vec3<u32>(arg_0, 1750u, arg_1.a.x)), firstLeadingBit(vec3<u32>(53351u, 4294967295u, u_input.a.x)), var_1.c.a.zyz)) ^ vec3<u32>(reverseBits(~(var_1.a ^ arg_1.a.x)), 21214u, arg_2.x);
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.x, arg_3, global1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 555f, global1.x, 1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1059f, -1789f, -1182f) + vec4<f32>(1019f, arg_3, -186f, 952f)))), vec4<f32>(_wgslsmith_f_op_f32(227f - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -993f), global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-755f, 294f, true)) * 860f), -712f))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -213f, 978f, arg_0.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -802f, global1.x, -472f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1408f)), vec4<f32>(arg_0.x, global1.x, arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1594f, arg_0.x, arg_0.x, 1346f), vec4<f32>(global1.x, 314f, 1099f, -310f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 784f, arg_0.x, global1.x)))))));
    let var_1 = 25206u;
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 678f, global1.x, var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.a.x, var_1), vec2<u32>(11621u, var_1)), func_2(vec4<f32>(-335f, var_0.x, -1277f, 587f)), select(vec4<u32>(0u, var_1, 1u, var_1), vec4<u32>(4294967295u, 4294967295u, var_1, 0u), false), 908f))))));
    let var_2 = Struct_2(71483u >> (var_1 % 32u), Struct_1(~_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1, 55201u, var_1, u_input.a.x), _wgslsmith_sub_vec4_u32(arg_1.d.a, vec4<u32>(var_1, 0u, arg_1.a.a.x, arg_1.a.a.x))), firstLeadingBit(-vec2<i32>(-6836i, arg_1.c.x))), Struct_1(arg_1.d.a | (_wgslsmith_sub_vec4_u32(arg_1.d.a, vec4<u32>(var_1, 1u, 15787u, var_1)) << ((arg_1.d.a << (arg_1.d.a % vec4<u32>(32u))) % vec4<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.x, -1i, -1i), arg_1.b.xwz) << (_wgslsmith_div_u32(arg_1.d.a.x, 67804u) % 32u), 1i)), Struct_1(vec4<u32>(u_input.a.x, ~_wgslsmith_add_u32(u_input.a.x, 59510u), (arg_1.d.a.x ^ u_input.a.x) | 21892u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 32671u), global0[_wgslsmith_index_u32(33651u, 30u)]), 4294967295u)), _wgslsmith_mult_vec2_i32(min(vec2<i32>(arg_1.c.x, 26132i), arg_1.d.b >> (u_input.a.yy % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, arg_1.b.x) >> (global0[_wgslsmith_index_u32(var_1, 30u)] % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.c.x, arg_1.b.x), vec2<i32>(-2147483647i, arg_1.b.x))))));
    var var_3 = arg_1;
    return select(vec2<bool>(any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), select(vec2<bool>(true, !(1u < arg_1.d.a.x)), vec2<bool>(any(vec3<bool>(true, false, true)), !(global1.x < arg_0.x)), !(abs(1u) != var_2.b.a.x)), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, false), true), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(!all(vec2<bool>(true, true)), true, true, all(select(vec2<bool>(true, true), func_1(vec2<f32>(406f, -1077f), Struct_4(Struct_3(vec2<u32>(4294967295u, u_input.a.x)), vec4<i32>(23119i, -2147483647i, -2147483647i, -2147483647i), vec2<i32>(1006i, -1i), Struct_1(vec4<u32>(4294967295u, 40470u, 4294967295u, u_input.a.x), vec2<i32>(-27585i, 58412i)))), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_1 = Struct_2(4294967295u, Struct_1(~(_wgslsmith_mult_vec4_u32(vec4<u32>(23290u, u_input.a.x, 13802u, u_input.a.x), vec4<u32>(13051u, u_input.a.x, 32102u, u_input.a.x)) & (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 458u) ^ vec4<u32>(0u, u_input.a.x, 31206u, 24179u))), vec2<i32>(1i, 1i)), Struct_1(((vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 13636u) << (vec4<u32>(u_input.a.x, 61252u, u_input.a.x, 18237u) % vec4<u32>(32u))) << (vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) << ((abs(vec4<u32>(23592u, u_input.a.x, u_input.a.x, 4294967295u)) | ~vec4<u32>(1u, 26096u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), ~(~select(vec2<i32>(-73645i, -2147483647i), vec2<i32>(1i, 22460i), vec2<bool>(var_0.x, false)))), Struct_1(vec4<u32>(1827u, ~31177u, 16709u, u_input.a.x), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(16744i, 15025i), firstLeadingBit(vec2<i32>(1i, -1i))), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-2147483647i, 42733i)))));
    let var_2 = vec3<u32>(~reverseBits(_wgslsmith_div_u32(var_1.d.a.x, u_input.a.x)), _wgslsmith_div_u32(1u, max(0u, u_input.a.x)), var_1.d.a.x);
    var var_3 = global1.x;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(max(-767f, _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(191f)))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-416f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, global1.x, false)) + _wgslsmith_f_op_f32(floor(global1.x)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))), -568f, select(select(false, all(vec4<bool>(true, var_0.x, true, false)), var_0.x || false), var_0.x, !var_0.x))));
    var_3 = -424f;
    let var_4 = reverseBits(~(~(-_wgslsmith_add_i32(var_1.c.b.x, var_1.b.b.x))));
    global0 = array<vec2<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.a.x, ~(-_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.c.b.x, 2147483647i, var_4, 2147483647i), vec4<i32>(15675i, 16696i, var_4, var_4))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1278f, -908f) - vec2<f32>(global1.x, 466f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, -1063f), vec2<f32>(global1.x, -1240f), var_0.wz)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-775f, global1.x)))))), max(vec2<u32>(_wgslsmith_div_u32(~var_1.a, 28578u), reverseBits(_wgslsmith_div_u32(53197u, u_input.a.x))), var_1.d.a.ww), _wgslsmith_div_u32(u_input.a.x >> ((1u | var_2.x) % 32u), var_1.c.a.x) ^ 78432u);
}

