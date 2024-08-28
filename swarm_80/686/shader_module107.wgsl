struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, true), 2147483647i, -8579i, false, vec4<i32>(16381i, 1i, 14431i, -21347i)), vec3<bool>(true, false, true), vec2<bool>(true, true));

var<private> global1: vec4<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global0 = Struct_2(global0.a, global1.xzw, global0.c);
    global0 = Struct_2(Struct_1(vec2<bool>(true, all(vec4<bool>(global1.x, false, true, true)) & global0.c.x), abs(max(1i, global0.a.c)), _wgslsmith_clamp_i32(2147483647i, -1i, ~(-2147483647i ^ u_input.c.x)), ~24503u != _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 57076u, 4294967295u), ~38948u), ~firstTrailingBit(global0.a.e)), select(global1.wzz, vec3<bool>(all(select(vec4<bool>(true, global1.x, true, false), vec4<bool>(global0.b.x, global0.b.x, true, global0.c.x), vec4<bool>(global1.x, true, true, global0.c.x))), true, !any(global1.xy)), true), select(global0.c, select(select(global0.a.a, global0.a.a, !global1.x), select(!global1.xy, select(global0.a.a, global1.xz, global0.c.x), false), select(select(vec2<bool>(true, global1.x), vec2<bool>(true, global0.c.x), true), global1.yz, vec2<bool>(global0.a.a.x, false))), vec2<bool>(any(vec2<bool>(true, true)), true)));
    global0 = Struct_2(global0.a, select(!global0.b, global1.zzw, !global1.zxz), !vec2<bool>(true, global1.x));
    var var_0 = Struct_2(global0.a, select(select(select(vec3<bool>(false, true, global0.b.x), vec3<bool>(false, false, false), select(vec3<bool>(global0.a.d, global0.b.x, false), vec3<bool>(global0.b.x, global1.x, true), true)), !(!global1.xzx), select(global0.b, select(global1.xxw, vec3<bool>(global1.x, global0.c.x, true), global0.b.x), global1.wzy)), select(vec3<bool>(true, true, global0.a.d), select(vec3<bool>(global0.c.x, global1.x, global1.x), vec3<bool>(true, global0.c.x, global1.x), !global1.x), select(select(global1.wzz, vec3<bool>(global0.a.d, true, false), global0.b), select(global0.b, vec3<bool>(global0.a.d, global1.x, true), true), vec3<bool>(global0.b.x, global0.b.x, false))), true), select(vec2<bool>(global0.b.x, false && global0.b.x), !(!select(global1.yx, global1.wx, vec2<bool>(global0.b.x, true))), all(select(!vec4<bool>(global0.a.d, false, global0.a.a.x, true), select(vec4<bool>(global0.a.a.x, global1.x, true, false), vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(global1.x, false, true, global0.a.d)), any(vec2<bool>(false, false))))));
    let var_1 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(649f + _wgslsmith_div_f32(-195f, 871f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-364f, -989f)))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(max(-337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1474f))) - 1000f), _wgslsmith_f_op_f32(-1131f * -2657f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2587f), _wgslsmith_f_op_f32(sign(155f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1098f + 650f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1704f, 1607f))), 377f, _wgslsmith_f_op_f32(-959f * _wgslsmith_f_op_f32(select(1743f, 744f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -679f) - _wgslsmith_f_op_f32(-582f - -173f)))));
    let var_1 = global0.a;
    let var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(57148u, 88247u | min(0u, u_input.d)), firstTrailingBit(~vec2<u32>(1u, 24906u)) & vec2<u32>(1u, _wgslsmith_clamp_u32(6282u, 4294967295u, u_input.d)), firstTrailingBit(vec2<u32>(4294967295u ^ u_input.d, select(44623u, 47636u, global0.a.a.x)))), reverseBits(_wgslsmith_mult_vec2_u32(countOneBits(~vec2<u32>(u_input.d, 81245u)), firstLeadingBit(firstTrailingBit(vec2<u32>(52946u, u_input.d))))));
    var var_3 = _wgslsmith_dot_vec4_u32(reverseBits(~(vec4<u32>(4294967295u, u_input.d, var_2.x, 1u) >> (vec4<u32>(var_2.x, var_2.x, 9423u, var_2.x) % vec4<u32>(32u)))), ~(vec4<u32>(77091u, var_2.x, 61087u, 1u) >> (~vec4<u32>(var_2.x, 52487u, var_2.x, u_input.d) % vec4<u32>(32u)))) >> (~_wgslsmith_add_u32(~1u, select(1u, max(var_2.x, 20947u), global1.x)) % 32u);
    global0 = Struct_2(Struct_1(!(!select(var_1.a, global1.yy, vec2<bool>(true, false))), firstLeadingBit(abs(arg_0.x) << (var_2.x % 32u)), firstLeadingBit(countOneBits(countOneBits(arg_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + -456f))) <= var_0.x, vec4<i32>(-28795i, -global0.a.c, -arg_0.x, u_input.c.x)), select(select(!global1.zyx, select(!global0.b, global0.b, select(global1.wzy, vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, global1.x, true))), global0.b), select(!select(global1.xzy, vec3<bool>(global1.x, false, var_1.a.x), vec3<bool>(true, global0.b.x, false)), vec3<bool>(-454f <= var_0.x, false, any(vec4<bool>(global1.x, false, false, true))), vec3<bool>(any(vec3<bool>(global1.x, false, var_1.d)), false != global0.a.a.x, !var_1.a.x)), global0.a.d), vec2<bool>(global0.c.x, all(!vec3<bool>(global0.c.x, var_1.a.x, true))));
    return Struct_3(global0.a, -_wgslsmith_clamp_i32(firstTrailingBit(arg_0.x), arg_0.x, global0.a.e.x), Struct_2(global0.a, global1.yyx, select(var_1.a, select(vec2<bool>(global1.x, global0.c.x), global0.b.xz, global1.x), !any(global1.yz))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    var var_0 = func_2(vec2<i32>(firstTrailingBit(0i), -abs(~arg_0.a.b)));
    global0 = func_2(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-2147483647i, arg_2.b) | vec2<i32>(global0.a.e.x, arg_2.a.e.x)), arg_2.c.a.e.yx)).c;
    global0 = func_2(abs(vec2<i32>(abs(1973i) & (var_0.b >> (1u % 32u)), countOneBits(2147483647i)))).c;
    var_0 = arg_1;
    global0 = Struct_2(arg_2.a, vec3<bool>(true, true, arg_1.c.b.x), func_2(vec2<i32>(arg_2.a.e.x, -43321i)).a.a);
    return arg_1.c.a;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> vec4<u32> {
    let var_0 = false || !global1.x;
    global1 = !(!vec4<bool>(_wgslsmith_f_op_f32(364f * arg_2) < -686f, var_0, var_0, select(select(global1.x, var_0, global0.a.d), u_input.d < 1u, global0.b.x)));
    global1 = !vec4<bool>(all(vec2<bool>(true, true)), any(!arg_0.c), var_0, true || (arg_2 <= arg_2));
    let var_1 = (_wgslsmith_add_i32(-_wgslsmith_sub_i32(1i, u_input.a.x), ~_wgslsmith_add_i32(global0.a.e.x, arg_0.a.b)) > ~7476i) & false;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(1f)), 1257f, 158f);
    return ~vec4<u32>(u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 31345u), vec2<u32>(u_input.d, 2995u), vec2<u32>(123121u, u_input.d))), ~_wgslsmith_sub_u32(u_input.d, u_input.d), u_input.d) | ~vec4<u32>(abs(71427u ^ u_input.d), 4294967295u, _wgslsmith_sub_u32(1u, u_input.d) | firstTrailingBit(3769u), ~u_input.d);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = Struct_2(Struct_1(select(vec2<bool>(global0.a.a.x || global0.b.x, !global1.x), global1.wz, global1.zy), _wgslsmith_clamp_i32(0i, -8102i, 0i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(49517i, global0.a.e.x, global0.a.e.x) >> (vec3<u32>(arg_0, arg_0, 48868u) % vec3<u32>(32u)), vec3<i32>(-2147483647i, global0.a.e.x, 30748i) >> (vec3<u32>(u_input.d, u_input.d, 4294967295u) % vec3<u32>(32u))), u_input.b, select(true, false, global1.x), vec4<i32>(1i, ~global0.a.b, -1i, ~u_input.c.x)), !global1.zxx, select(global1.ww, vec2<bool>(global1.x, (u_input.c.x > global0.a.c) | true), vec2<bool>(all(vec4<bool>(global1.x, global0.b.x, global0.c.x, true)) & (global1.x || false), all(vec2<bool>(false, true)))));
    global0 = Struct_2(global0.a, global0.b, vec2<bool>(global1.x, global0.b.x));
    let var_0 = abs(func_5(Struct_2(func_4(Struct_2(Struct_1(global1.zy, u_input.c.x, 74864i, global0.a.a.x, global0.a.e), global0.b, global0.b.zy), func_2(vec2<i32>(u_input.b, u_input.c.x)), func_2(vec2<i32>(u_input.a.x, 1i))), vec3<bool>(any(vec4<bool>(false, global1.x, global1.x, false)), global1.x, true), global0.c), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global0.a.e, vec4<i32>(2332i, global0.a.b, 22548i, 2147483647i)), vec4<i32>(min(2147483647i, global0.a.c), ~u_input.c.x, u_input.b, _wgslsmith_mult_i32(u_input.b, 21211i))), 288f));
    global1 = !(!vec4<bool>(global1.x, true, global1.x, select(true, any(vec4<bool>(false, global0.c.x, true, true)), !global0.a.d)));
    global0 = Struct_2(func_2(_wgslsmith_mod_vec2_i32(-(~global0.a.e.zz), firstLeadingBit(firstTrailingBit(global0.a.e.xy)))).a, vec3<bool>(false, !any(vec2<bool>(global1.x, global1.x)), all(global0.a.a)), global1.zy);
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global1.yy, vec2<bool>(!(1u != u_input.d) & global1.x, global1.x), !select(!global1.wx, !select(global1.zy, global0.b.xx, vec2<bool>(true, global1.x)), vec2<bool>(true, any(vec3<bool>(global1.x, global1.x, false)))));
    global0 = Struct_2(func_1(9103u), !vec3<bool>(all(func_1(5468u).a), 48258u >= select(0u, u_input.d, false), true), vec2<bool>(false, !(var_0.x || global0.c.x)));
    let var_1 = global0.b;
    var var_2 = global1.x;
    global1 = vec4<bool>(false, func_2(func_1(u_input.d).e.yw).c.b.x, false, 1u > min(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(49046u, 28493u), min(17427u, 41489u)), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(u_input.c.x, -(77034i << (u_input.d % 32u)), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(358f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -582f))), 1u);
}

