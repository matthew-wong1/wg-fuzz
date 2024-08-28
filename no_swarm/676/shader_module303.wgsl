struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: vec4<i32> = vec4<i32>(-856i, -71728i, 2147483647i, -1i);

var<private> global3: u32 = 39831u;

var<private> global4: array<i32, 28> = array<i32, 28>(-27104i, 0i, -45641i, 2147483647i, -1i, 1i, -1i, -1854i, 1i, 4118i, 16940i, 11632i, 2147483647i, 23527i, i32(-2147483648), 2147483647i, 1i, -1i, 42139i, 15043i, 0i, 2301i, 2147483647i, 0i, 35555i, 2147483647i, -55707i, 2147483647i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> bool {
    global3 = u_input.a;
    var var_0 = Struct_2(1i, Struct_1(~vec4<u32>(78702u, firstLeadingBit(u_input.a), ~4294967295u, ~u_input.a), 63064u ^ u_input.a, u_input.a & 36690u, _wgslsmith_mult_vec4_u32(firstTrailingBit(select(u_input.b, u_input.b, vec4<bool>(true, true, true, false))), u_input.b), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)), Struct_1(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(38996u, 1u, 4294967295u, 22610u) & u_input.b), _wgslsmith_clamp_u32(~(~4294967295u), u_input.b.x, ~abs(u_input.a)), _wgslsmith_mod_u32(~(u_input.b.x & 75817u), select(u_input.a, 1u, true)), u_input.b, !(!select(vec2<bool>(false, false), vec2<bool>(false, true), false))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1137f, _wgslsmith_f_op_f32(-1000f - -374f), _wgslsmith_f_op_f32(trunc(-281f)), _wgslsmith_f_op_f32(abs(1000f)))))));
    var var_1 = u_input.b;
    let var_2 = 0u;
    let var_3 = var_0.c;
    return !(!all(vec3<bool>(var_3.e.x, true, true))) | !(!(var_1.x <= _wgslsmith_dot_vec3_u32(vec3<u32>(45737u, var_1.x, 0u), var_3.a.wxw)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_1(u_input.b, arg_1.x >> ((~arg_3.c.b ^ 28525u) % 32u), ~59658u, ~u_input.b, select(vec2<bool>(!arg_3.b.e.x, true), !select(select(vec2<bool>(arg_3.b.e.x, false), vec2<bool>(arg_3.c.e.x, true), true), arg_3.b.e, true), select(arg_3.c.e, select(arg_3.b.e, vec2<bool>(arg_3.b.e.x, true), vec2<bool>(true, arg_3.b.e.x)), arg_3.c.e)));
    let var_1 = select(~(u_input.e.xyx | ~_wgslsmith_mod_vec3_i32(u_input.e.yww, vec3<i32>(arg_2.x, -227i, arg_3.a))), vec3<i32>(u_input.e.x & -(38780i ^ u_input.d), -2322i, i32(-1i) * -2147483647i), vec3<bool>(true, true, true));
    let var_2 = ~vec2<u32>(arg_1.x, arg_3.c.a.x) >> (max(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a), arg_1), max(vec2<u32>(arg_1.x, 30665u) >> (_wgslsmith_add_vec2_u32(var_0.a.xy, var_0.d.wz) % vec2<u32>(32u)), ~countOneBits(vec2<u32>(32863u, u_input.a)))) % vec2<u32>(32u));
    let var_3 = Struct_2(1i, Struct_1(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, u_input.a, var_0.a.x, 22526u), vec4<u32>(21968u, arg_1.x, arg_3.c.d.x, arg_1.x), _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(0u, var_2.x, 42651u, arg_3.b.c))), ~(~vec4<u32>(var_0.b, u_input.b.x, 86601u, 4294967295u))), 4294967295u, _wgslsmith_dot_vec3_u32(var_0.a.xxz, ~vec3<u32>(arg_1.x, var_0.d.x, var_0.a.x)), u_input.b, var_0.e), Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(arg_3.b.d, vec4<u32>(arg_3.c.a.x, 0u, var_0.a.x, 0u)), abs(vec4<u32>(var_0.c, 0u, 1u, var_2.x))), arg_1.x, 15245u >> (u_input.b.x % 32u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1.x), var_0.a.xz), ~var_2.x), abs(vec4<u32>(arg_1.x, var_2.x, 37340u, arg_1.x)) & firstLeadingBit(u_input.b), (u_input.b << (vec4<u32>(1u, arg_1.x, var_0.b, 0u) % vec4<u32>(32u))) << (min(u_input.b, arg_3.c.a) % vec4<u32>(32u))), select(select(select(var_0.e, vec2<bool>(true, false), var_0.e), vec2<bool>(true, arg_3.c.e.x), var_0.e), arg_3.b.e, vec2<bool>(var_0.e.x || arg_3.c.e.x, !arg_3.c.e.x))), arg_3.d);
    let var_4 = ~(max(select(var_3.c.d.wxx, vec3<u32>(1u, 1u, 1u), vec3<bool>(var_3.b.e.x, var_3.c.e.x, true)), vec3<u32>(var_3.c.b, 62717u, 0u) ^ vec3<u32>(4294967295u, 11371u, 4294967295u)) | var_0.a.xxy) & var_0.a.xwz;
    return abs(_wgslsmith_mod_u32(var_0.a.x, ((var_4.x | 0u) | 0u) >> (abs(var_4.x) % 32u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    global0 = abs(~(0i & global2.x));
    global1 = 1u;
    let var_0 = func_4(vec2<i32>(-2147483647i, ~1i), select(arg_0.xx, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 42847u), arg_2.a.xz), func_3() && arg_2.e.x), u_input.e.wx, Struct_2(u_input.c, Struct_1(vec4<u32>(arg_0.x, 803u, arg_2.a.x, 1u), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_u32(arg_0.wy, arg_0.zy), vec4<u32>(arg_0.x, arg_2.b, 54347u, 34004u), arg_2.e), arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1123f, -1102f, -2174f, 396f) - vec4<f32>(1220f, -819f, -503f, 359f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-160f, 1000f, 348f, 754f))))) > countOneBits(0u);
    let var_1 = global4[_wgslsmith_index_u32(abs(30326u), 28u)];
    let var_2 = Struct_2(7906i, Struct_1(vec4<u32>(_wgslsmith_add_u32(~arg_2.d.x, arg_2.b ^ 2853u), _wgslsmith_sub_u32(0u, arg_2.c), arg_0.x, 1u), ~1u, ~_wgslsmith_dot_vec2_u32(u_input.b.xy, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, 40431u), arg_2.d.wz)), ~select(arg_2.a, vec4<u32>(arg_0.x, 0u, u_input.a, 4294967295u) | vec4<u32>(arg_2.b, 17145u, arg_2.c, 20012u), vec4<bool>(false, var_0, arg_1, false)), select(select(!arg_2.e, vec2<bool>(var_0, false), select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), true)), vec2<bool>(arg_2.e.x | var_0, !arg_2.e.x), select(!arg_2.e, vec2<bool>(true, true), !vec2<bool>(var_0, true)))), Struct_1(abs(arg_0), _wgslsmith_clamp_u32(9928u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.x, 0u, arg_0.x), vec3<u32>(u_input.a, arg_0.x, arg_2.c))), u_input.b.x), u_input.b.x, arg_2.d, vec2<bool>(true, -global4[_wgslsmith_index_u32(arg_0.x, 28u)] >= global2.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))), 104f, -1194f, _wgslsmith_f_op_f32(-2191f * 604f)));
    return arg_0.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = ~(~1u);
    var var_1 = _wgslsmith_clamp_vec2_u32(arg_0.yw, vec2<u32>(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_add_u32(min(arg_0.x, 9406u), _wgslsmith_mod_u32(u_input.a, arg_0.x))), u_input.b.x), select(select(abs(arg_0.xz), vec2<u32>(arg_0.x, func_2(arg_0, true, Struct_1(vec4<u32>(u_input.b.x, 0u, 13581u, arg_0.x), 45086u, 0u, vec4<u32>(4294967295u, u_input.a, 12934u, arg_0.x), vec2<bool>(true, true)))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(false, true))), vec2<u32>(~arg_0.x, func_2(vec4<u32>(4294967295u, u_input.a, 15779u, arg_0.x), true, Struct_1(vec4<u32>(u_input.a, arg_0.x, 0u, arg_0.x), arg_0.x, 1u, arg_0, vec2<bool>(false, false)))) << (max(~vec2<u32>(u_input.a, 1u), vec2<u32>(135602u, 32927u)) % vec2<u32>(32u)), vec2<bool>(true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true)))));
    let var_2 = 1i;
    var var_3 = ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-4394i, arg_1.x, -2147483647i) & vec3<i32>(-2147483647i, -22014i, arg_2.x), countOneBits(global2.yxw)), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b.x, ~(u_input.b.x & u_input.a)), 28u)]);
    global2 = vec4<i32>(u_input.d, -28810i, _wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(arg_2.x, min(2147483647i, 13449i))), max(_wgslsmith_dot_vec3_i32(u_input.e.wwz, select(global2.xxz, global2.xwx, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), reverseBits(global2.yx))) & arg_2.x);
    return Struct_1(countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0, firstTrailingBit(u_input.b)), _wgslsmith_mod_u32(1u, 44251u) & firstTrailingBit(1u), ~firstLeadingBit(arg_0.x), abs(u_input.a))), 40017u, ~var_1.x, vec4<u32>(_wgslsmith_mod_u32(arg_0.x, ~69491u), u_input.b.x, ~1u | firstTrailingBit(62267u), arg_0.x), !select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global4[_wgslsmith_index_u32(u_input.b.x, 28u)];
    let var_0 = reverseBits(u_input.b);
    global1 = _wgslsmith_sub_u32(u_input.b.x, ~(~var_0.x));
    let var_1 = func_1(vec4<u32>(~abs(u_input.a), max(~(u_input.a & 1u), _wgslsmith_add_u32(var_0.x, firstLeadingBit(var_0.x))), var_0.x, u_input.b.x), (vec2<i32>(-global4[_wgslsmith_index_u32(21523u, 28u)], u_input.e.x) | _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(1i, global4[_wgslsmith_index_u32(0u, 28u)])), u_input.e.zz)) >> (firstTrailingBit(vec2<u32>(abs(16617u), u_input.b.x)) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(-countOneBits(vec2<i32>(u_input.e.x, global4[_wgslsmith_index_u32(26195u, 28u)])), ~(-_wgslsmith_sub_vec2_i32(global2.zw, vec2<i32>(63290i, 30838i)))));
    let var_2 = _wgslsmith_clamp_i32(~global4[_wgslsmith_index_u32(reverseBits(~30836u), 28u)], global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(15971u, var_1.a.x), 28u)], u_input.d);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(705f))))));
    let var_4 = var_1.e.x;
    let var_5 = _wgslsmith_clamp_vec2_u32(~func_1(select(~vec4<u32>(20463u, 30133u, var_1.b, u_input.b.x), ~vec4<u32>(1u, var_0.x, 36057u, 56543u), var_4), ~_wgslsmith_clamp_vec2_i32(u_input.e.zy, vec2<i32>(global4[_wgslsmith_index_u32(var_0.x, 28u)], 0i), global2.yy), vec2<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 28u)], -2147483647i) << (abs(vec2<u32>(1u, var_0.x)) % vec2<u32>(32u))).d.zy, ~(~vec2<u32>(~4294967295u, ~0u)), ~var_1.d.ww);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-474f, -537f, var_4))))), -760f, _wgslsmith_f_op_f32(f32(-1f) * -328f), -2673f));
}

