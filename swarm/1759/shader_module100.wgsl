struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: vec3<bool>,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1487f;

var<private> global1: vec3<u32> = vec3<u32>(13131u, 17225u, 1u);

var<private> global2: bool;

var<private> global3: vec3<u32> = vec3<u32>(0u, 4294967295u, 4294967295u);

var<private> global4: i32 = 19245i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = max(vec3<i32>(~arg_1.d, _wgslsmith_clamp_i32(u_input.a.x, 112820i, u_input.c), -arg_1.d), vec3<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1132i, 1i, 0i, u_input.a.x), vec4<i32>(-17009i, u_input.a.x, -2147483647i, -1i)), vec4<i32>(-21004i, arg_1.d, -2147483647i, u_input.c)), u_input.c, 43059i));
    global4 = ~arg_1.d;
    global0 = _wgslsmith_f_op_f32(floor(-1000f));
    let var_1 = ~vec2<i32>(_wgslsmith_sub_i32(var_0.x, select(i32(-1i) * -1i, u_input.c, arg_0)), -18958i);
    let var_2 = vec4<bool>(select(true, !arg_1.b.x, arg_0), func_3() && arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(round(896f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1795f))) > _wgslsmith_f_op_f32(f32(-1f) * -425f), (~49858u != (1u << (_wgslsmith_clamp_u32(0u, u_input.e, 0u) % 32u))) || arg_1.b.x);
    return arg_1.d;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_mult_vec2_i32(u_input.a.zz, vec2<i32>(~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(-52103i, u_input.c)), func_2(arg_0.x, Struct_1(arg_1, vec2<bool>(true, arg_0.x), u_input.d, u_input.c))), _wgslsmith_clamp_i32(countOneBits(u_input.a.x), firstTrailingBit(u_input.c), u_input.c)));
    global3 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(~(~0u), _wgslsmith_div_u32(min(63798u, 1u), _wgslsmith_sub_u32(global1.x, global1.x))), max(u_input.d, countOneBits(global1.x) << (~u_input.d % 32u))), arg_1, firstTrailingBit(~select(1u, select(34231u, 0u, arg_0.x), u_input.e < 13047u)));
    var var_1 = arg_0.x;
    global0 = -937f;
    global2 = all(select(arg_0.yz, select(arg_0.wy, select(select(vec2<bool>(true, true), arg_0.zx, arg_0.x), select(arg_0.wx, vec2<bool>(arg_0.x, true), false), arg_0.x), arg_0.zx), false));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1807f), _wgslsmith_f_op_f32(step(-313f, 299f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(309f, 603f))), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -418f), vec2<f32>(1000f, 2311f)), select(vec2<bool>(true, arg_0.x), arg_0.xz, arg_0.x)))))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec2<f32>) -> vec4<u32> {
    let var_0 = -701f;
    var var_1 = Struct_5(Struct_3(Struct_1(0u, select(!arg_1.a.zx, vec2<bool>(arg_1.a.x, arg_1.a.x), arg_1.a.x), firstLeadingBit(~18099u), ~_wgslsmith_mult_i32(-2147483647i, u_input.c)), Struct_2(Struct_1(global3.x, vec2<bool>(arg_1.a.x, false), u_input.e, -1i), ~(~3051u), 1752f), Struct_2(Struct_1(4294967295u, select(vec2<bool>(false, true), arg_1.a.yy, arg_1.a.zx), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0, global1.x, 0u), vec4<u32>(4294967295u, global3.x, 8285u, 1u)), u_input.c), global3.x, arg_2.x), select(vec2<bool>(-967f == arg_2.x, false), arg_1.a.zz, select(!arg_1.a.wy, select(arg_1.a.zy, arg_1.a.wx, false), any(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x)))), Struct_1(global1.x, arg_1.a.zx, _wgslsmith_add_u32(0u, u_input.d) >> ((4294967295u << (arg_0 % 32u)) % 32u), u_input.a.x & 0i)), true, select(select(vec3<bool>(global3.x < global3.x, true, true), !vec3<bool>(arg_1.a.x, false, arg_1.a.x), true), select(vec3<bool>(true, arg_1.a.x, any(arg_1.a.xwx)), arg_1.a.zxw, vec3<bool>(true, !arg_1.a.x, arg_1.a.x)), vec3<bool>(any(arg_1.a), func_3(), false)), vec3<i32>(u_input.a.x, -abs(_wgslsmith_mult_i32(1i, 29371i)), ~(~u_input.a.x & (u_input.a.x ^ 2147483647i))), countOneBits(global3.x));
    global1 = ~vec3<u32>(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, u_input.e, global1.x, global1.x), vec4<u32>(34439u, 60807u, 45960u, var_1.a.a.a))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global1.yx, vec2<u32>(global3.x, arg_0)), global3.xy), var_1.e);
    global2 = true;
    var var_2 = vec4<i32>(~abs(-var_1.d.x), (0i | (u_input.a.x >> (arg_0 % 32u))) << (40014u % 32u), ~u_input.a.x, firstLeadingBit(~func_2(true, var_1.a.c.a))) ^ abs(min(-vec4<i32>(41866i, var_1.a.b.a.d, 1i, var_1.a.a.d), _wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, u_input.c, 2147483647i, var_1.a.a.d), select(vec4<i32>(-2147483647i, -30706i, 0i, -2147483647i), vec4<i32>(u_input.a.x, 6914i, var_1.d.x, var_1.a.b.a.d), false))));
    return countOneBits(vec4<u32>(max(4294967295u, ~_wgslsmith_dot_vec2_u32(global3.xy, global1.zz)), ~abs(var_1.e) & var_1.a.b.b, var_1.e, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(1u, Struct_4(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, false, false, true), u_input.e))))) + vec2<f32>(_wgslsmith_f_op_f32(select(-489f, _wgslsmith_f_op_f32(ceil(193f)), func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(983f * -1183f)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-643f, _wgslsmith_f_op_f32(f32(-1f) * -1092f)) * _wgslsmith_f_op_f32(-255f - _wgslsmith_div_f32(608f, 133f))) * 465f));
    let var_1 = Struct_4(!vec4<bool>(false, true, true, any(vec2<bool>(true, true))));
    global3 = firstTrailingBit(func_4(_wgslsmith_dot_vec3_u32(select(reverseBits(vec3<u32>(0u, var_0.x, global3.x)), vec3<u32>(u_input.d, 0u, u_input.d), var_1.a.x), var_0.zzw), Struct_4(var_1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(431f, 665f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1739f, -204f) + vec2<f32>(-429f, -1127f))))).wyy);
    var var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), select(19807u, 1u, var_1.a.x))).x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(666f + -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, _wgslsmith_f_op_vec2_f32(func_1(var_1.a, global1.x)).x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-931f, -1852f))), var_1.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) - _wgslsmith_f_op_f32(var_2.x * 329f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(724f)) * var_2.x), var_2.x, -520f), vec4<f32>(-124f, _wgslsmith_f_op_f32(2173f + var_2.x), _wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -788f)), vec4<u32>(countOneBits(var_0.x), _wgslsmith_mod_u32(1u, abs(529u)) & ~(var_0.x >> (1u % 32u)), ~_wgslsmith_dot_vec3_u32(~var_0.xzz, vec3<u32>(47750u, 4294967295u, global3.x) & vec3<u32>(var_0.x, u_input.d, 8552u)), ~abs(global1.x)), var_0.zy, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-102f, -603f, _wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(1000f + 625f))))));
}

