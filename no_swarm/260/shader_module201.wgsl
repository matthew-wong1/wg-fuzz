struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: i32 = -1i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = 4294967295u;
    global0 = firstTrailingBit(firstLeadingBit(~(~countOneBits(vec4<u32>(global0.x, 0u, 0u, arg_0.b)))));
    global0 = (~(~vec4<u32>(global0.x, 2447u, u_input.c.x, 53449u)) << ((max(_wgslsmith_div_vec4_u32(vec4<u32>(690u, global0.x, 46071u, 1u), vec4<u32>(global0.x, u_input.c.x, global0.x, 0u)), vec4<u32>(global0.x, global0.x, arg_0.b, 1253u)) | select(select(vec4<u32>(4294967295u, 0u, global0.x, arg_0.b), vec4<u32>(arg_0.b, arg_0.b, global0.x, 4294967295u), vec4<bool>(false, true, true, true)), ~vec4<u32>(4294967295u, u_input.c.x, 12929u, 4294967295u), vec4<bool>(true, true, true, true))) % vec4<u32>(32u))) | vec4<u32>(~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x >> (global0.x % 32u), ~arg_0.d.x, _wgslsmith_clamp_u32(u_input.c.x, global0.x, u_input.c.x), _wgslsmith_dot_vec2_u32(global0.zz, vec2<u32>(global0.x, 1u))), abs(vec4<u32>(global0.x, global0.x, u_input.c.x, global0.x))), 0u, arg_0.b);
    var var_1 = u_input.b.x;
    let var_2 = Struct_3(!(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), true))), ~vec4<i32>(u_input.d, u_input.b.x, -1i, i32(-1i) * -1i), arg_0.a.x, Struct_1(_wgslsmith_sub_vec2_i32(~(~u_input.b.xx), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.xy, vec2<i32>(1i, arg_0.a.x)), select(vec2<i32>(u_input.d, u_input.a), vec2<i32>(arg_0.a.x, arg_0.a.x), vec2<bool>(true, false)))), u_input.c.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_0.c))))), ~(~arg_0.d)), _wgslsmith_mult_u32(abs(u_input.c.x), u_input.c.x));
    return u_input.c.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> i32 {
    global1 = _wgslsmith_mod_i32(-u_input.a, u_input.a);
    global0 = vec4<u32>(func_3(Struct_1(arg_1.a, 1u, _wgslsmith_f_op_vec3_f32(-arg_1.c), firstTrailingBit(arg_1.d))), abs(arg_1.d.x), ~_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 0u), 4294967295u ^ arg_1.d.x), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 8330u), vec4<u32>(1u, 20809u, arg_1.d.x, global0.x)))) & ~vec4<u32>(~(~4294967295u), arg_1.b >> (1u % 32u), global0.x ^ ~34250u, u_input.c.x & arg_1.d.x);
    let var_0 = Struct_1(abs(-vec2<i32>(0i, 13528i)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), global0.x, arg_1.c, _wgslsmith_mod_vec2_u32(~(arg_1.d ^ vec2<u32>(4294967295u, arg_1.d.x)), u_input.c.zx));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, _wgslsmith_add_i32(-1i, 2147483647i)), _wgslsmith_sub_i32(arg_1.a.x, -3537i));
    var var_2 = var_0.d.x;
    return ~select(_wgslsmith_sub_i32(var_0.a.x << (global0.x % 32u), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b.yxz), ~u_input.b.zyw)), ~(~(~56158i)), any(vec4<bool>(false, true, true, true)) == (global0.x <= ~u_input.c.x));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_4 {
    global1 = arg_2.x;
    global1 = abs(abs(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(max(arg_0, arg_0))), Struct_1(u_input.b.xw << (vec2<u32>(1308u, 6952u) % vec2<u32>(32u)), 26951u | u_input.c.x, vec3<f32>(arg_0, arg_0, -1275f), global0.ww))));
    var var_0 = vec3<bool>(true, u_input.c.x >= (48278u << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), ~vec2<u32>(80216u, 0u)) % 32u)), (421f >= _wgslsmith_f_op_f32(abs(arg_1.x))) | any(vec4<bool>(all(vec2<bool>(false, true)), true, true, true)));
    var var_1 = (0u >> (u_input.c.x % 32u)) ^ _wgslsmith_add_u32(~(~0u) & _wgslsmith_dot_vec3_u32(vec3<u32>(44958u, global0.x, u_input.c.x), ~u_input.c), ~1u | ~(~global0.x));
    var var_2 = global0.xy;
    return Struct_4(Struct_1(~u_input.b.ww, ~reverseBits(global0.x), _wgslsmith_f_op_vec3_f32(-arg_1.zzz), global0.wy));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(ceil(arg_3.x));
    var var_1 = any(arg_2.zwy);
    global1 = i32(-1i) * -2147483647i;
    var var_2 = func_1(_wgslsmith_f_op_f32(abs(arg_3.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_1.a.c.x, 467f, var_0))))))), u_input.b).a;
    var var_3 = arg_2;
    return Struct_3(!vec2<bool>(!arg_2.x, arg_2.x), vec4<i32>(_wgslsmith_div_i32(-max(arg_1.a.a.x, arg_1.a.a.x), 0i), -3772i, _wgslsmith_mult_i32(u_input.b.x, -2147483647i), countOneBits(_wgslsmith_add_i32(arg_0, -3964i)) << (4294967295u % 32u)), countOneBits(abs(arg_0) & u_input.a), arg_1.a, max(global0.x, 4294967295u));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    var var_0 = arg_2.d;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(-1765f, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(select(0u, global0.x, false), _wgslsmith_add_u32(33236u, u_input.c.x)), 15569u), func_4(select(-_wgslsmith_add_i32(u_input.a, u_input.d), _wgslsmith_clamp_i32(u_input.d, -368i, _wgslsmith_add_i32(u_input.b.x, u_input.d)), any(vec3<bool>(true, true, true))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -253f) * _wgslsmith_div_f32(586f, 1403f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -674f), _wgslsmith_f_op_f32(f32(-1f) * -663f), -1131f, _wgslsmith_f_op_f32(round(-1135f))), u_input.b), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, select(false, false, false), true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false), false)), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), func_1(_wgslsmith_f_op_f32(ceil(-764f)), _wgslsmith_div_vec4_f32(vec4<f32>(-319f, -1380f, -432f, 392f), vec4<f32>(1017f, -460f, 1000f, 197f)), _wgslsmith_sub_vec4_i32(u_input.b, u_input.b)).a.c.x)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(567f, 1086f))) * _wgslsmith_f_op_vec2_f32(-func_4(-1792i, Struct_4(Struct_1(u_input.b.wy, u_input.c.x, vec3<f32>(1202f, -358f, 1523f), vec2<u32>(u_input.c.x, 49981u))), vec4<bool>(false, false, false, false), vec2<f32>(1389f, 292f)).d.c.zy)), ~(vec2<u32>(global0.x, global0.x) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))) & func_4(min(u_input.d, u_input.b.x), func_1(186f, vec4<f32>(-1432f, 479f, -324f, -865f), vec4<i32>(u_input.d, u_input.a, u_input.a, u_input.b.x)), vec4<bool>(true, true, true, true), vec2<f32>(1732f, -1000f)).d.d));
    let var_0 = u_input.b.x ^ (_wgslsmith_div_i32(-(~u_input.a), firstTrailingBit(42408i)) << (94137u % 32u));
    var var_1 = vec3<u32>(reverseBits(u_input.c.x), global0.x, 73285u);
    let var_2 = Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(-abs(vec2<i32>(0i, -42428i)), u_input.b.zz), ~u_input.b.wx), global0.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(select(global0.x, var_1.x, false), 4294967295u), abs(var_1.zy)) % 32u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1065f, -1570f, -688f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-178f, -1442f, 519f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-701f, -988f, 915f), vec3<f32>(395f, 989f, -183f), vec3<bool>(true, true, true))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1646f, 688f, -185f) * vec3<f32>(581f, -1000f, 714f))) * func_1(_wgslsmith_f_op_f32(max(122f, -1829f)), vec4<f32>(1291f, -1658f, -2645f, 607f), -vec4<i32>(var_0, -55845i, -34724i, 2756i)).a.c))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~global0.yz, max(vec2<u32>(var_1.x, var_1.x), vec2<u32>(27668u, 75788u))) >> (u_input.c.xy % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(global0.x, func_3(Struct_1(u_input.b.xx, global0.x, vec3<f32>(801f, 956f, 836f), global0.wz))), 0u)));
    let var_3 = 531f;
    var_1 = vec3<u32>(4294967295u, u_input.c.x, ~4379u);
    var var_4 = _wgslsmith_mult_u32(_wgslsmith_mult_u32((global0.x & global0.x) & 47699u, ~min(1u, 13908u)) >> (max(u_input.c.x, 0u) % 32u), _wgslsmith_div_u32(7384u, u_input.c.x) & 4294967295u);
    global1 = ~(-39038i) & var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(global0.x, u_input.c.x, 11000u, 4294967295u)) >> (max(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_2.b, global0.x, 69824u), vec4<u32>(u_input.c.x, 27218u, 4294967295u, 4294967295u)), (vec4<u32>(0u, var_1.x, 0u, 0u) << (vec4<u32>(13808u, global0.x, var_2.b, var_1.x) % vec4<u32>(32u))) & (vec4<u32>(global0.x, var_2.b, 1u, 0u) << (vec4<u32>(18712u, u_input.c.x, 32801u, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u)), var_2.c.x, max(-vec2<i32>(-18159i, var_0) | vec2<i32>(var_0, func_2(var_2.c.x, var_2)), var_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1725f, 428f, all(vec2<bool>(true, false)))) * _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_2.c.x)))));
}

