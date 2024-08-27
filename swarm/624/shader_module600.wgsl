struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, 1000f, -1314f, 922f);

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32) -> vec3<f32> {
    let var_0 = i32(-1i) * -arg_1;
    let var_1 = vec2<bool>(true, true);
    let var_2 = vec2<u32>(69106u, u_input.b.x);
    global1 = 13255i;
    var var_3 = Struct_5(~var_2 & (var_2 << (~max(vec2<u32>(2435u, u_input.b.x), u_input.b.wy) % vec2<u32>(32u))), vec4<bool>(var_1.x, firstLeadingBit(4294967295u) == arg_0, var_1.x, !(!var_1.x) | true), _wgslsmith_sub_vec4_u32(vec4<u32>(45588u, u_input.b.x, var_2.x, ~0u), vec4<u32>(1u, min(u_input.b.x, ~arg_0), 7239u, ~_wgslsmith_sub_u32(arg_0, arg_0))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1587f))) - global0.x), global0.x, _wgslsmith_f_op_f32(-global0.x));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    var var_0 = ~1u;
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2731f, global0.x, -1469f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-893f, global0.x, 846f, 757f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) + vec4<f32>(750f, global0.x, global0.x, -1007f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(547f, -412f, global0.x, -372f) * vec4<f32>(593f, -1000f, 865f, -1360f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(299f, 2155f, global0.x, -263f), vec4<f32>(283f, -1165f, global0.x, -924f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-416f, -590f, 1230f, -739f))))), select(vec4<bool>(true, arg_1.b.x, true, false), vec4<bool>(true, arg_1.b.x, arg_1.b.x, true), !arg_1.b.x))), arg_1.b.x && false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(349f * global0.x))), _wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(431f, global0.x)), _wgslsmith_f_op_f32(trunc(-434f)), 292f)), select(!vec4<bool>(true, true, true, arg_0.x > 0u), !vec4<bool>(!arg_1.b.x, !arg_1.b.x, true, true), true)));
    var var_1 = Struct_5(u_input.b.wz, select(vec4<bool>(arg_1.b.x, arg_1.b.x, all(!arg_1.b), 184f > _wgslsmith_f_op_vec3_f32(func_1(u_input.b.x, arg_1.a, 2147483647i)).x), vec4<bool>(true || !arg_1.b.x, true, true != arg_1.b.x, arg_1.b.x), true), u_input.b);
    return _wgslsmith_mod_u32((1u << ((arg_0.x << (select(arg_0.x, arg_0.x, arg_1.b.x) % 32u)) % 32u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(4034u, 1u, 4294967295u, u_input.b.x) << (vec4<u32>(59673u, arg_0.x, u_input.b.x, 96577u) % vec4<u32>(32u)), ~vec4<u32>(26278u, arg_0.x, var_1.c.x, arg_0.x) | select(var_1.c, arg_0, var_1.b)), ~(max(3257u, 1u) | max(44941u, reverseBits(u_input.b.x))));
}

fn func_4(arg_0: u32) -> vec3<bool> {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(4294967295u << (~arg_0 % 32u), ~countOneBits(arg_0) << (4294967295u % 32u)), u_input.b.x, 0u, ~1u);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + global0.ww) * global0.wz), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-383f, 294f), _wgslsmith_f_op_vec2_f32(vec2<f32>(566f, 279f) - vec2<f32>(global0.x, 1000f)))))), ~(~(~79459u)) > ~arg_0, vec4<bool>(true, !all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), true, true), vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(u_input.d | 16544i, ~u_input.a.x, u_input.c.x) & firstTrailingBit(_wgslsmith_clamp_i32(50339i, u_input.d, 0i)), _wgslsmith_dot_vec2_i32(~u_input.c.wx, u_input.a << (var_0.yy % vec2<u32>(32u))) << (arg_0 % 32u)));
    var var_2 = Struct_5(vec2<u32>(80369u, _wgslsmith_dot_vec2_u32(u_input.b.wy, reverseBits(select(vec2<u32>(0u, arg_0), vec2<u32>(var_0.x, 4088u), var_1.b)))), var_1.c, ~vec4<u32>(48470u, (15982u << (arg_0 % 32u)) >> (~1u % 32u), 24292u, func_3(~u_input.b, Struct_1(3595i, var_1.c.yy))));
    var_2 = Struct_5(~abs(var_0.yw ^ ~vec2<u32>(u_input.b.x, u_input.b.x)), !var_2.b, vec4<u32>(func_3(vec4<u32>(var_0.x, firstLeadingBit(arg_0), var_0.x, _wgslsmith_dot_vec4_u32(var_2.c, vec4<u32>(arg_0, 4294967295u, 0u, arg_0))), Struct_1(_wgslsmith_add_i32(-44484i, 16643i), !vec2<bool>(true, var_2.b.x))), ~(~_wgslsmith_sub_u32(1u, 0u)), var_0.x, abs(arg_0)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.wx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.xw - vec2<f32>(global0.x, 730f)) - vec2<f32>(-1265f, -2460f)))), any(!select(select(var_1.c.zz, var_2.b.yw, var_1.c.zx), !vec2<bool>(var_1.b, false), var_2.b.x)), vec4<bool>(any(select(vec3<bool>(false, var_1.c.x, true), !vec3<bool>(var_2.b.x, var_1.b, var_1.c.x), vec3<bool>(var_2.b.x, true, var_2.b.x))), var_2.b.x, _wgslsmith_div_i32(2147483647i, 60428i) <= ~_wgslsmith_sub_i32(u_input.d, 13942i), _wgslsmith_f_op_f32(-474f + _wgslsmith_f_op_f32(f32(-1f) * -1218f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(0u, u_input.d, 0i)).x)), firstTrailingBit(-u_input.c.zxx));
    return !(!(!(!(!var_1.c.yzz))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_5) -> Struct_1 {
    global1 = _wgslsmith_dot_vec4_i32(firstTrailingBit(min(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.a.x, u_input.c.x, -2147483647i) | vec4<i32>(1i, u_input.c.x, u_input.d, u_input.a.x), ~vec4<i32>(u_input.d, u_input.d, 0i, u_input.a.x)), _wgslsmith_add_vec4_i32(u_input.c, -vec4<i32>(27184i, -8045i, -1i, u_input.c.x)))), reverseBits(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 20015i), vec4<i32>(1i, u_input.c.x, u_input.a.x, u_input.c.x)))));
    global1 = 22456i;
    let var_0 = any(select(arg_2.b, select(!(!vec4<bool>(arg_2.b.x, false, arg_2.b.x, arg_2.b.x)), arg_2.b, arg_2.b.x), true));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-241f)), _wgslsmith_div_f32(global0.x, global0.x)) + global0.yz)), false, vec4<bool>(var_0, select(arg_2.b.x, false, global0.x <= 733f), all(!select(vec3<bool>(true, false, false), arg_2.b.wwx, arg_2.b.zzw)), true), _wgslsmith_add_vec3_i32(select(vec3<i32>(-2147483647i, ~u_input.d, -16956i), vec3<i32>(-32944i, u_input.a.x >> (arg_0 % 32u), 0i), select(arg_2.b.yzx, select(vec3<bool>(arg_2.b.x, var_0, var_0), arg_2.b.yxx, arg_2.b.zzx), u_input.a.x >= u_input.a.x)), -(~vec3<i32>(-2147483647i, 14391i, -5517i))));
    var var_2 = select(var_1.c.wyx, select(func_4(func_3(abs(vec4<u32>(7914u, arg_0, arg_2.a.x, arg_2.a.x)), Struct_1(2147483647i, var_1.c.yy))), select(vec3<bool>(var_0 | arg_2.b.x, func_4(0u).x, all(vec2<bool>(false, true))), var_1.c.zwz, arg_2.b.wwy), any(vec4<bool>(true, var_0, true, select(false, arg_2.b.x, false)))), !var_1.b);
    return Struct_1(max(u_input.c.x, _wgslsmith_clamp_i32(select(var_1.d.x, -22404i, true) & 2147483647i, 25188i, min(-63686i, -13198i))), vec2<bool>(var_1.c.x, func_4(~u_input.b.x).x));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_5) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global0.x, global0.x, -342f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1641f, global0.x, 750f)), arg_1.a.b.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -256f, global0.x, global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 284f) - vec4<f32>(global0.x, global0.x, global0.x, 211f)))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-736f, global0.x, -621f, -229f) - vec4<f32>(1000f, -686f, global0.x, -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 559f, -296f, global0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -584f, global0.x, global0.x), vec4<f32>(-492f, global0.x, global0.x, -787f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1214f, global0.x, 745f)), vec4<bool>(arg_1.a.b.x, false, arg_1.a.b.x, arg_1.a.b.x))))));
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(845f, 1000f), _wgslsmith_f_op_vec2_f32(global0.zy * vec2<f32>(714f, global0.x))) - _wgslsmith_f_op_vec2_f32(global0.xw * vec2<f32>(317f, -241f)))), all(vec3<bool>(!(arg_2.c.x >= arg_2.a.x), func_4(1u).x, false)), arg_2.b, vec3<i32>(~_wgslsmith_add_i32(arg_0.x, -1i), ~arg_1.a.a, abs(-abs(arg_1.a.a))));
    var var_1 = var_0.d.x;
    var var_2 = _wgslsmith_mod_vec2_i32(arg_0.xw, u_input.a);
    return Struct_3(func_2(u_input.b.x, select(arg_2.c.x, arg_2.a.x, !(!arg_2.b.x)), Struct_5(vec2<u32>(120480u, arg_2.c.x), var_0.c, vec4<u32>(_wgslsmith_mod_u32(0u, arg_2.a.x), 4294967295u, 5244u, ~0u))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = vec4<bool>(arg_1.a.b.x, !arg_1.a.b.x, func_5(select(vec4<i32>(-1i) * -vec4<i32>(arg_1.a.a, u_input.c.x, -7610i, u_input.d), vec4<i32>(-9228i, i32(-1i) * -52687i, 43289i, reverseBits(1i)), arg_1.a.b.x), Struct_3(Struct_1(~27116i, func_2(u_input.b.x, u_input.b.x, Struct_5(vec2<u32>(u_input.b.x, u_input.b.x), vec4<bool>(arg_1.a.b.x, false, arg_1.a.b.x, true), u_input.b)).b)), Struct_5(~_wgslsmith_div_vec2_u32(u_input.b.xw, vec2<u32>(u_input.b.x, u_input.b.x)), !select(vec4<bool>(arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x, false), vec4<bool>(arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x, false), arg_1.a.b.x), ~(~vec4<u32>(1u, u_input.b.x, 0u, 4294967295u)))).a.b.x, arg_1.a.b.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_0);
    var var_2 = u_input.b.x;
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) * var_1.x) * arg_0.x) + global0.x)));
    let var_4 = var_0.x;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-713f, 745f, 382f, global0.x))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, 1000f, 126f, arg_0.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-715f, -1176f, var_1.x, -312f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_6(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-290f, global0.x, -840f)))), _wgslsmith_div_vec3_f32(global0.zyw, _wgslsmith_f_op_vec3_f32(func_1(1u, u_input.c.x, -33657i)))), func_5(u_input.c, Struct_3(func_2(u_input.b.x, 20916u, Struct_5(u_input.b.yy, vec4<bool>(false, false, false, false), u_input.b))), Struct_5(u_input.b.yw, select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false), vec4<u32>(u_input.b.x, 33877u, 4294967295u, 60602u)))))));
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(trunc(1659f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 1797f))))));
    global1 = 0i;
    var var_1 = Struct_3(Struct_1(-_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, 2147483647i, -54976i), vec3<i32>(-1i, 0i, u_input.d)), vec2<bool>(true, true)));
    var var_2 = var_1.a.b.x;
    global1 = _wgslsmith_div_i32(u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a.x, -1i, var_1.a.a), _wgslsmith_mult_i32(abs(firstTrailingBit(u_input.c.x)), -var_1.a.a)));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0.zz * global0.xy), _wgslsmith_f_op_vec3_f32(func_1(u_input.b.x, var_1.a.a, u_input.d)).yx))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, global0.x) * global0.wy))))));
    var_2 = var_1.a.b.x;
    let var_4 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-828f - 935f) - 977f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-353f)), _wgslsmith_f_op_f32(-var_4.a)), _wgslsmith_sub_vec3_i32(u_input.c.yxx, ~(-vec3<i32>(u_input.c.x, var_1.a.a, var_1.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-735f * global0.x) * -944f))));
}

