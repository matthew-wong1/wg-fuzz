struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_3, 19>;

var<private> global2: vec3<f32> = vec3<f32>(386f, -505f, -459f);

var<private> global3: Struct_4;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> f32 {
    global1 = array<Struct_3, 19>();
    global0 = countOneBits(global3.d.c.d.xzy);
    var var_0 = ~global3.d.e.c;
    var var_1 = select(max(global3.a.d.zx >> (global0.zy % vec2<u32>(32u)), abs(~(~u_input.b.yx))), u_input.b.xx & ~(~(~vec2<u32>(34064u, global3.c.c.x))), global3.d.b.yz);
    let var_2 = arg_0.x;
    return 458f;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_1.d.b, 773f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1436f) - _wgslsmith_f_op_f32(min(-1287f, global3.c.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(u_input.a.zy, 5885i)))))), -945f);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.d.b, arg_0.d.b), arg_1.a.a, true)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1559f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-global2.yy), arg_1.c.d, arg_0.c.d), select(!select(vec3<bool>(arg_0.b.x, false, arg_0.b.x), select(vec3<bool>(global3.d.b.x, arg_0.b.x, true), vec3<bool>(global3.d.b.x, false, global3.d.b.x), global3.d.b.x), !vec3<bool>(arg_1.b.x, false, global3.d.b.x)), global3.d.b, global3.d.b), global3.a, Struct_2(arg_0.e.a, arg_1.c.a.x, 0u, countOneBits(reverseBits(global0.x))), Struct_2(vec4<i32>(_wgslsmith_sub_i32(0i, arg_0.d.a.x >> (arg_2.x % 32u)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, -2147483647i)), ~vec2<i32>(u_input.d, 1i)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(40104i, global3.d.d.a.x), _wgslsmith_add_i32(global3.d.e.a.x, 17187i)), _wgslsmith_add_i32(min(11552i, arg_1.e.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.d.d.a.x, 0i, global3.d.d.a.x, u_input.d), vec4<i32>(37056i, u_input.d, -20434i, u_input.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.d.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), 16911u, arg_0.a.d.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.a.x, _wgslsmith_f_op_f32(abs(arg_1.a.b.x)), _wgslsmith_f_op_f32(step(var_1.d.b, arg_0.c.b.x)), _wgslsmith_f_op_f32(abs(arg_0.c.b.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-712f)) * _wgslsmith_f_op_f32(-arg_0.c.a.x)), global3.d.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-219f)), -939f) + _wgslsmith_f_op_f32(-global2.x))));
    global3 = Struct_4(global3.c, _wgslsmith_mult_u32(~37442u, ~21292u ^ ~min(var_1.e.c, 14756u)), global3.a, Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.b, 285f) - vec2<f32>(global3.c.b.x, 425f)) - vec2<f32>(global2.x, var_1.a.a.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.a.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global3.d.e.b)), vec2<bool>(false, false))), u_input.b, ~vec4<u32>(var_1.e.c, 3297u, 30360u, global0.x)), select(!arg_0.b, !vec3<bool>(global3.d.b.x, arg_0.b.x, false), var_1.b.x), arg_1.c, arg_1.d, Struct_2(abs(_wgslsmith_add_vec4_i32(vec4<i32>(55680i, -1i, -1i, -10049i), vec4<i32>(23885i, var_1.d.a.x, u_input.a.x, 41811i))), global2.x, countOneBits(1u & arg_0.a.c.x), min(var_1.e.d, ~global3.a.c.x))));
    global1 = array<Struct_3, 19>();
    return _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), 484f))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_4 {
    var var_0 = global1[_wgslsmith_index_u32(global0.x, 19u)];
    global0 = ~vec3<u32>(1u | u_input.b.x, global0.x, 89382u);
    var var_1 = _wgslsmith_f_op_f32(min(624f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(343f)))));
    var var_2 = -max(-122i, ~var_0.e.a.x) >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(global0.x, 23329u << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.x), global0.yy) % 32u)), ~firstLeadingBit(11033u)) % 32u);
    global3 = Struct_4(global3.d.a, ~(~global3.d.a.c.x), arg_2, Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(441f, global3.a.a.x, true)), _wgslsmith_f_op_f32(global3.a.b.x * arg_1.b)), global3.a.a, ~global3.c.d, firstLeadingBit(countOneBits(global3.c.d))), var_0.b, global3.a, arg_1, Struct_2(var_0.e.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_1.b)), _wgslsmith_f_op_f32(abs(-1176f)))), arg_1.c, 0u)));
    return Struct_4(arg_2, 0u, global3.d.a, global1[_wgslsmith_index_u32(~arg_2.d.x, 19u)]);
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    global3 = Struct_4(func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-global2.x)))), arg_1.d.d, func_4(_wgslsmith_f_op_f32(func_2(func_4(349f, Struct_2(vec4<i32>(u_input.d, u_input.d, -20459i, 2147483647i), global3.a.b.x, 31690u, arg_3), Struct_1(global3.d.a.a, arg_1.d.c.b, arg_1.a.c, arg_1.a.c)).d, global1[_wgslsmith_index_u32(arg_1.c.c.x, 19u)], global3.d.c.c.zx)), arg_1.d.d, Struct_1(_wgslsmith_f_op_vec2_f32(global3.a.a * global3.d.a.a), _wgslsmith_f_op_vec2_f32(-arg_1.d.a.a), select(vec4<u32>(0u, global3.d.a.d.x, arg_3, arg_1.d.d.d), global3.a.c, false), ~vec4<u32>(arg_1.b, global0.x, 20313u, arg_1.d.a.d.x))).c).c, reverseBits(max(global0.x, arg_3)), func_4(1441f, Struct_2(vec4<i32>(_wgslsmith_sub_i32(arg_1.d.d.a.x, 17067i), global3.d.e.a.x, 1i, select(global3.d.e.a.x, 0i, global3.d.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), -1197f, global3.d.b.x)), ~_wgslsmith_dot_vec4_u32(global3.a.d, u_input.b), select(countOneBits(42685u), abs(1u), !arg_1.d.b.x)), arg_1.d.a).a, func_4(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2685f, arg_1.d.a.a.x), _wgslsmith_f_op_f32(-global3.d.c.b.x))), Struct_2(firstTrailingBit(vec4<i32>(u_input.a.x, -22673i, arg_1.d.d.a.x, arg_1.d.d.a.x)), -998f, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.d.x, global0.x, 42829u, 45398u), vec4<u32>(global3.d.e.c, global0.x, 1u, 24552u)), ~(~global0.x)), func_4(-1000f, Struct_2(reverseBits(u_input.a), _wgslsmith_f_op_f32(func_2(arg_1.d, arg_1.d, vec2<u32>(10686u, u_input.c))), arg_1.c.d.x, ~1u), arg_1.d.c).d.c).d);
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(433f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1139f, _wgslsmith_f_op_f32(global3.c.a.x * global2.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_1.c.b.x)), global3.d.e.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(537f - 1701f), _wgslsmith_f_op_f32(-global2.x)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(arg_1.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c.a.x, global2.x) * global3.c.a)), !arg_1.d.b.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.d.a.b - arg_1.c.b) - global3.a.b)))), select(vec4<u32>(firstLeadingBit(~arg_1.b), ~arg_1.b, 5375u, _wgslsmith_sub_u32(u_input.c, firstLeadingBit(0u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1972u, global0.x, global0.x, 13318u) & (vec4<u32>(global0.x, u_input.c, arg_3, arg_1.a.c.x) >> (u_input.b % vec4<u32>(32u))), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, arg_1.b), global3.a.d.zy), _wgslsmith_dot_vec2_u32(vec2<u32>(38098u, 3393u), vec2<u32>(global0.x, 41197u)), abs(46714u)), func_4(526f, func_4(global2.x, Struct_2(u_input.a, arg_1.d.d.b, arg_3, 1u), Struct_1(global2.zz, global2.xx, global3.a.c, global3.c.d)).d.e, func_4(238f, Struct_2(vec4<i32>(arg_1.d.e.a.x, 6101i, 14039i, -38492i), arg_1.a.a.x, global0.x, 4294967295u), arg_1.a).c).a.d), select(!vec4<bool>(global3.d.b.x, false, true, arg_1.d.b.x), !(!vec4<bool>(global3.d.b.x, global3.d.b.x, arg_1.d.b.x, false)), !(global3.a.d.x != u_input.b.x))), vec4<u32>(~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, global3.d.a.d.x), global0.xy) << (arg_3 % 32u)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, global0.x, u_input.c), vec4<u32>(arg_3, 0u, 28436u, 4294967295u)), ~arg_1.c.d.x)), ~4294967295u, arg_1.b));
}

fn func_1() -> Struct_1 {
    global3 = Struct_4(func_5(any(global3.d.b), func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_3(global3.a, global3.d.b, global3.c, global3.d.e, global3.d.e), Struct_3(Struct_1(vec2<f32>(global3.d.c.b.x, -474f), global3.d.a.a, vec4<u32>(global0.x, 2187u, global0.x, 38528u), global3.c.c), vec3<bool>(global3.d.b.x, global3.d.b.x, false), Struct_1(vec2<f32>(global3.d.c.a.x, global2.x), global3.a.a, global3.d.c.d, u_input.b), global3.d.e, global3.d.d), vec2<u32>(u_input.c, global3.c.c.x))))), global3.d.d, global3.a), global3.d.b, _wgslsmith_mult_u32(~(~global3.b), global3.a.d.x)), ~u_input.b.x, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global3.a.b))) + global2.xz), _wgslsmith_f_op_vec2_f32(step(global2.xz, global3.c.b)), ~reverseBits(~u_input.b), func_4(global3.a.b.x, global3.d.d, global3.c).d.c.d), func_4(-1000f, Struct_2(vec4<i32>(-1i, 30700i, max(u_input.d, global3.d.e.a.x), global3.d.e.a.x & u_input.a.x), _wgslsmith_f_op_f32(-global3.a.b.x), ~13987u, u_input.b.x), global3.d.a).d);
    var var_0 = Struct_4(Struct_1(vec2<f32>(_wgslsmith_div_f32(-273f, -978f), global2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global3.a.a)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global2.zy)))), u_input.b, u_input.b), ~min(firstTrailingBit(0u), u_input.c), global3.d.c, global1[_wgslsmith_index_u32(global0.x, 19u)]);
    let var_1 = Struct_3(func_4(-1707f, func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.a.x), -1382f)), var_0.d.e, func_4(_wgslsmith_f_op_f32(f32(-1f) * -114f), var_0.d.e, Struct_1(global2.yy, vec2<f32>(-486f, global2.x), var_0.a.c, var_0.d.a.d)).c).d.e, global3.d.a).c, vec3<bool>(var_0.d.b.x, !global3.d.b.x, var_0.d.b.x), var_0.d.a, func_4(_wgslsmith_f_op_f32(var_0.c.b.x - -1329f), var_0.d.e, func_5(any(func_4(global3.a.a.x, Struct_2(var_0.d.d.a, var_0.c.a.x, 4294967295u, global0.x), Struct_1(global3.c.a, var_0.a.a, var_0.d.a.c, vec4<u32>(24938u, 4294967295u, 4294967295u, global3.c.d.x))).d.b), Struct_4(var_0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), global3.a.d.yw), global3.c, func_4(var_0.a.a.x, Struct_2(global3.d.d.a, -844f, 48329u, u_input.c), global3.c).d), func_4(1159f, Struct_2(vec4<i32>(1i, var_0.d.e.a.x, 0i, global3.d.d.a.x), global2.x, 17141u, global3.b), func_4(-212f, global3.d.d, Struct_1(vec2<f32>(var_0.c.a.x, var_0.d.a.a.x), global3.a.b, vec4<u32>(global3.d.e.d, var_0.d.a.c.x, u_input.c, 1u), vec4<u32>(var_0.c.c.x, 1u, global0.x, var_0.a.d.x))).d.c).d.b, global3.d.e.c)).d.e, Struct_2(u_input.a, _wgslsmith_f_op_f32(-442f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d.d.b, -1180f, global3.d.b.x)))), reverseBits(_wgslsmith_sub_u32(4294967295u, ~83431u)), global3.c.d.x));
    let var_2 = 1u;
    global0 = ~(var_0.c.d.yyw << (vec3<u32>(0u, _wgslsmith_add_u32(~var_1.e.d, firstLeadingBit(global0.x)), 29156u) % vec3<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(var_0.c.a + _wgslsmith_f_op_vec2_f32(-var_1.a.a)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.a.x)) - _wgslsmith_f_op_f32(474f - _wgslsmith_f_op_f32(-global2.x))), -674f), vec4<u32>(u_input.b.x, 0u, global0.x, ~_wgslsmith_mult_u32(global0.x, 13354u)), _wgslsmith_clamp_vec4_u32(var_1.a.d, abs(vec4<u32>(1u, 1u, 7346u, 19440u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(58214u, var_2, 55574u, global0.x) | vec4<u32>(0u, var_2, 0u, 4294967295u), ~vec4<u32>(1u, 1u, global0.x, var_2)), vec4<u32>(_wgslsmith_mult_u32(var_2, u_input.b.x), 1u & global3.d.d.d, var_2 | var_1.e.d, 22196u ^ var_0.a.c.x) ^ u_input.b));
}

fn func_6(arg_0: Struct_4, arg_1: bool) -> Struct_2 {
    var var_0 = u_input.b.x;
    global3 = arg_0;
    global0 = global3.a.c.zwy;
    global3 = Struct_4(func_5(global3.d.b.x, func_4(1299f, func_4(583f, func_4(arg_0.c.b.x, global3.d.e, Struct_1(global3.c.b, arg_0.a.a, vec4<u32>(14027u, 82075u, arg_0.b, global3.b), arg_0.d.a.d)).d.d, func_1()).d.e, Struct_1(vec2<f32>(656f, global2.x), func_4(969f, arg_0.d.e, Struct_1(vec2<f32>(global3.c.b.x, 189f), vec2<f32>(670f, global3.c.a.x), global3.a.d, arg_0.d.a.d)).d.c.a, u_input.b, arg_0.c.c ^ arg_0.d.c.c)), !(!arg_0.d.b), countOneBits(~(~85507u))), ~reverseBits(~38890u), Struct_1(global2.xy, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.c.b)) * global2.xz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(607f, global3.d.e.b))))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, u_input.c), arg_0.d.c.c)), ~vec4<u32>(firstTrailingBit(4294967295u), countOneBits(0u), _wgslsmith_sub_u32(global0.x, arg_0.b), arg_0.a.d.x)), func_4(_wgslsmith_f_op_f32(func_5(arg_1 | arg_1, func_4(-1355f, arg_0.d.d, global3.c), arg_0.d.b, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.c.x, 1u, 10059u, arg_0.c.d.x), global3.c.d)).a.x * 175f), arg_0.d.e, global3.c).d);
    var var_1 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(464f, _wgslsmith_f_op_f32(min(global3.d.d.b, -137f)))) * arg_0.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1097f, global2.x)) - arg_0.c.b.x))), func_4(global2.x, arg_0.d.e, Struct_1(_wgslsmith_f_op_vec2_f32(-global3.c.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(561f, global2.x))), _wgslsmith_f_op_vec2_f32(-global2.xy)), _wgslsmith_clamp_vec4_u32(vec4<u32>(17726u, arg_0.c.c.x, arg_0.a.d.x, arg_0.a.d.x), vec4<u32>(25345u, arg_0.d.c.d.x, arg_0.b, 1u), _wgslsmith_add_vec4_u32(global3.c.c, vec4<u32>(27360u, u_input.b.x, global3.b, 32640u))), u_input.b)).d.d, global3.c).d;
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(890f, _wgslsmith_div_f32(var_1.d.b, _wgslsmith_f_op_f32(global3.c.a.x - global3.d.d.b)))), Struct_2(vec4<i32>(arg_0.d.e.a.x, u_input.a.x, ~arg_0.d.e.a.x, -1i), 707f, ~u_input.c, firstLeadingBit(5311u)), func_1()).d.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = func_6(Struct_4(func_1(), firstLeadingBit(~func_5(true, Struct_4(Struct_1(global2.zz, vec2<f32>(2107f, -1000f), global3.d.c.c, vec4<u32>(global0.x, global3.c.d.x, 6795u, 1u)), u_input.c, global3.a, global3.d), vec3<bool>(true, global3.d.b.x, false), 12331u).d.x), Struct_1(global2.xz, global2.xy, vec4<u32>(~1u, u_input.b.x, ~global0.x, ~0u), global3.c.d << (u_input.b % vec4<u32>(32u))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, firstLeadingBit(global3.b)), 19u)]), global3.d.b.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_6(Struct_4(Struct_1(global3.d.a.a, global2.yx, vec4<u32>(var_0, global0.x, 0u, var_1.c), global3.d.c.d), var_0, global3.a, global3.d), select(global3.d.b.x, global3.d.b.x, true)).b), _wgslsmith_f_op_f32(-func_6(func_4(1000f, global3.d.d, global3.a), var_0 != global3.b).b))));
    global2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global3.a.b.x, 200f), var_2, _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.a.b.x, -1000f, global3.c.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1613f, var_1.b, -1000f))))))));
    global0 = u_input.b.wwz;
    var var_3 = global3.d;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(global3.d, Struct_3(var_3.a, global3.d.b, Struct_1(var_3.c.b, vec2<f32>(1668f, var_3.a.a.x), vec4<u32>(1u, 39406u, u_input.b.x, 17740u), vec4<u32>(0u, u_input.c, global3.a.d.x, 36048u)), global3.d.e, Struct_2(var_1.a, global3.a.b.x, 48633u, 0u)), global0.zy)), _wgslsmith_f_op_f32(-227f * 488f))), 1063f)));
    let x = u_input.a;
    s_output = StorageBuffer(~global3.c.c.yx, firstLeadingBit(-vec4<i32>(i32(-1i) * -5096i, -1i, -10240i, -17758i)), vec4<u32>((4294967295u << (func_5(false, Struct_4(Struct_1(vec2<f32>(global3.a.a.x, var_3.e.b), vec2<f32>(var_3.e.b, 276f), vec4<u32>(34956u, global3.a.d.x, 5777u, var_3.a.d.x), global3.a.d), var_3.a.d.x, Struct_1(global3.c.b, vec2<f32>(var_2, global3.c.b.x), vec4<u32>(4294967295u, global0.x, global3.d.a.c.x, 34290u), u_input.b), Struct_3(global3.a, vec3<bool>(global3.d.b.x, var_3.b.x, var_3.b.x), global3.a, Struct_2(vec4<i32>(-1i, global3.d.e.a.x, var_1.a.x, 2147483647i), 373f, 1u, global3.c.c.x), global3.d.d)), vec3<bool>(global3.d.b.x, false, true), 108728u).d.x % 32u)) >> (~global3.b % 32u), ~2466u, 4294967295u, _wgslsmith_dot_vec4_u32(global3.a.c, vec4<u32>(_wgslsmith_div_u32(4294967295u, global3.b), var_3.a.d.x, global3.d.a.d.x, ~2996u))), firstTrailingBit(global3.d.d.a.yxz), ~min(4294967295u, 51205u));
}

