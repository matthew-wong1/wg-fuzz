struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(13983u, 4294967295u, 71287u), Struct_2(vec3<bool>(false, false, true), 67330u, Struct_1(1280f, vec4<f32>(489f, -226f, -2225f, 1252f), vec2<bool>(false, true), vec2<f32>(-368f, 501f), i32(-2147483648)), Struct_1(-383f, vec4<f32>(-1010f, -1670f, -238f, -2026f), vec2<bool>(false, false), vec2<f32>(1746f, -286f), -39001i), vec2<i32>(-53788i, -78468i)), Struct_2(vec3<bool>(true, false, true), 40809u, Struct_1(-431f, vec4<f32>(-1116f, -1261f, 107f, 455f), vec2<bool>(true, true), vec2<f32>(543f, 589f), -51191i), Struct_1(-1350f, vec4<f32>(1664f, 933f, -266f, -254f), vec2<bool>(false, true), vec2<f32>(1033f, 830f), -7926i), vec2<i32>(3460i, 37311i)), vec4<u32>(4294967295u, 25836u, 1u, 4294967295u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<bool>) -> u32 {
    var var_0 = Struct_3(~_wgslsmith_mod_vec3_u32(vec3<u32>(68514u, 34379u, _wgslsmith_mult_u32(arg_2.x, arg_2.x)), arg_2.yxz), global0.c, global0.c, vec4<u32>(3458u, global0.d.x, ~4294967295u, 0u));
    var var_1 = var_0.c.c;
    var var_2 = vec4<bool>(true, var_1.c.x, -11888i >= ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.xwy, vec3<i32>(0i, u_input.b.x, 2147483647i), vec3<i32>(-13977i, var_0.b.e.x, u_input.a)), vec3<i32>(var_0.c.e.x, -14596i, 1i)), any(vec4<bool>(true, true, true, true)));
    global0 = Struct_3(u_input.c, var_0.c, Struct_2(vec3<bool>(var_1.c.x, true, !all(var_0.b.a)), min(global0.d.x, _wgslsmith_mult_u32(arg_0, arg_2.x) >> (_wgslsmith_mult_u32(13061u, 1008u) % 32u)), Struct_1(-1000f, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.c.d.x, var_0.b.c.b.x, var_1.b.x, var_0.c.d.d.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.c.d.x, -459f, arg_1, var_0.c.c.b.x))), !(!arg_3), _wgslsmith_f_op_vec2_f32(global0.b.c.b.wz * _wgslsmith_f_op_vec2_f32(var_1.d * global0.b.c.d)), 5692i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1054f * -1000f) - -957f), vec4<f32>(_wgslsmith_f_op_f32(815f * 1242f), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -167f), -427f), global0.b.a.yy, _wgslsmith_f_op_vec2_f32(-var_0.c.c.d), ~(-972i)), ~vec2<i32>(var_1.e, -63704i)), vec4<u32>(~_wgslsmith_mod_u32(1u, var_0.c.b), 1u, 15754u, ~var_0.b.b));
    var_0 = Struct_3(~select(vec3<u32>(~71319u, _wgslsmith_mod_u32(arg_0, 4294967295u), ~u_input.c.x), u_input.d, var_0.c.c.c.x || var_1.c.x), var_0.b, global0.b, vec4<u32>(global0.a.x, _wgslsmith_mult_u32(0u, reverseBits(~1u)), abs(~arg_2.x), u_input.c.x));
    return _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.a, global0.a), 4294967295u), _wgslsmith_dot_vec4_u32(global0.d, ~arg_2), ~arg_0 << ((global0.c.b ^ arg_0) % 32u))), abs(var_0.d.ywy));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: f32) -> Struct_2 {
    let var_0 = global0.c.d;
    global0 = Struct_3(vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.e.x), (_wgslsmith_div_u32(u_input.e.x, global0.d.x) & (global0.d.x & 59301u)) ^ ~abs(u_input.e.x), 41495u), Struct_2(vec3<bool>(all(!vec4<bool>(false, var_0.c.x, false, false)), global0.c.a.x, true), ~func_3(_wgslsmith_add_u32(59478u, u_input.e.x), _wgslsmith_f_op_f32(-var_0.a), max(vec4<u32>(global0.d.x, global0.c.b, 954u, global0.b.b), global0.d), vec2<bool>(global0.b.a.x, false)), global0.c.c, global0.c.d, global0.b.e), Struct_2(!global0.b.a, ~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.b, global0.b.b, 27358u), vec3<u32>(u_input.e.x, 0u, 60232u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 1194f) + _wgslsmith_f_op_f32(ceil(var_0.d.x))), vec4<f32>(707f, _wgslsmith_f_op_f32(-168f * arg_2), 1000f, _wgslsmith_f_op_f32(-global0.c.d.b.x)), vec2<bool>(false, any(vec3<bool>(true, global0.c.c.c.x, true))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0.b.d.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_0.a)))), ~_wgslsmith_sub_i32(2147483647i, arg_1)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -603f))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(var_0.a + var_0.a), global0.b.d.a, -828f), select(vec2<bool>(false, global0.c.d.c.x), vec2<bool>(global0.c.d.c.x, global0.b.c.c.x), select(var_0.c, vec2<bool>(true, false), vec2<bool>(global0.b.c.c.x, var_0.c.x))), vec2<f32>(_wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(-389f - global0.b.c.d.x)), 1i), vec2<i32>(~global0.b.e.x, var_0.e)), vec4<u32>(global0.c.b, global0.c.b, global0.a.x, _wgslsmith_div_u32(4294967295u, ~global0.b.b)));
    global0 = Struct_3(u_input.c, Struct_2(vec3<bool>(true & (true | var_0.c.x), select(true, true, true), any(var_0.c)), _wgslsmith_div_u32(1u | abs(global0.d.x), u_input.e.x), Struct_1(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -795f)), global0.b.c.b, var_0.c, vec2<f32>(388f, var_0.b.x), ~_wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(arg_1, var_0.e))), global0.c.c, global0.c.e & vec2<i32>(1i, _wgslsmith_sub_i32(global0.c.c.e, 58086i))), global0.b, min(~min(vec4<u32>(46771u, global0.a.x, 0u, 4294967295u) >> (global0.d % vec4<u32>(32u)), firstLeadingBit(global0.d)), vec4<u32>(_wgslsmith_div_u32(global0.a.x, 52352u) & u_input.e.x, u_input.c.x, global0.c.b ^ firstTrailingBit(52717u), ~(global0.a.x >> (global0.a.x % 32u)))));
    global0 = Struct_3(u_input.d, global0.c, Struct_2(!global0.b.a, ~(~firstLeadingBit(66524u)), Struct_1(_wgslsmith_f_op_f32(global0.b.d.d.x - _wgslsmith_f_op_f32(451f * var_0.b.x)), _wgslsmith_f_op_vec4_f32(-global0.c.d.b), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(global0.b.a.x, global0.b.a.x)), vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x * -1000f), arg_2), var_0.e), global0.c.c, min(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 31056i), global0.c.e), select(-vec2<i32>(u_input.b.x, -1i), vec2<i32>(arg_1, 10957i), select(vec2<bool>(global0.c.a.x, global0.b.d.c.x), vec2<bool>(false, true), true)))), max(vec4<u32>(max(u_input.c.x, ~1u), ~(~u_input.c.x), 1u, ~1u), min(~global0.d, select(vec4<u32>(91097u, 4294967295u, global0.b.b, global0.c.b), global0.d, !vec4<bool>(global0.b.c.c.x, true, false, false)))));
    let var_1 = -1000f;
    return global0.b;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    var var_0 = global0.a;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-323f + -1370f), -242f)), arg_1.b.d.d.x));
    var_0 = select(reverseBits(global0.d.wxz), ~(~_wgslsmith_div_vec3_u32(~global0.a, vec3<u32>(4294967295u, var_0.x, global0.c.b) & vec3<u32>(global0.d.x, 14123u, 15865u))), global0.c.a);
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.d.a - _wgslsmith_f_op_f32(sign(global0.c.d.d.x))), arg_1.b.d.b.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.b.d.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.c.d.x, global0.b.c.a, 1907f, arg_1.b.c.b.x)) - _wgslsmith_f_op_vec4_f32(arg_1.c.c.b * arg_2.d.b))) + arg_1.b.d.b) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-794f, global0.b.c.b.x, arg_2.d.b.x, -1334f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.b.c.b.x, arg_1.c.d.d.x, arg_1.c.c.a, 1000f)))), _wgslsmith_f_op_vec4_f32(arg_2.d.b - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, -891f, global0.c.c.d.x, arg_1.c.c.b.x)))))));
    return func_3(~_wgslsmith_dot_vec3_u32(u_input.d, ~(u_input.d ^ global0.a)), 1f, ~vec4<u32>(~(17287u & arg_1.a.x), ~_wgslsmith_dot_vec4_u32(global0.d, vec4<u32>(var_0.x, 4294967295u, var_0.x, arg_2.b)), reverseBits(arg_2.b), 4294967295u), arg_1.b.d.c);
}

fn func_1() -> u32 {
    global0 = Struct_3(u_input.d, Struct_2(select(global0.b.a, vec3<bool>(!global0.b.c.c.x, global0.c.e.x > global0.b.d.e, all(global0.b.a)), !(!global0.b.a)), func_4(global0.c.d.c.x, Struct_3(vec3<u32>(730u, u_input.d.x, 4294967295u), global0.c, Struct_2(global0.c.a, 80824u, global0.b.c, global0.b.d, u_input.b.yw), global0.d), func_2(global0.b.c.d.x, 8879i, global0.c.c.d.x)) << (_wgslsmith_sub_u32(global0.b.b, 1u) % 32u), global0.b.d, global0.b.d, ~func_2(_wgslsmith_f_op_f32(trunc(-1518f)), u_input.b.x, _wgslsmith_f_op_f32(sign(1274f))).e), Struct_2(global0.b.a, ~4294967295u, global0.c.d, global0.b.c, abs(global0.c.e)), global0.d);
    let var_0 = Struct_2(vec3<bool>(true, all(select(global0.c.a, global0.b.a, false)), any(global0.c.a.yy) && global0.c.c.c.x), 4294967295u, func_2(1560f, min(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.b.x, -22279i)), u_input.b.zzz | u_input.b.zyz), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, -12760i, 2147483647i, u_input.b.x)), vec4<i32>(-14096i, 2147483647i, 0i, 23327i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.d.d.x) - _wgslsmith_f_op_f32(ceil(929f)))).c, Struct_1(267f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-363f, -591f, 1617f, global0.c.c.b.x) * vec4<f32>(_wgslsmith_f_op_f32(661f + -1589f), -578f, _wgslsmith_f_op_f32(-global0.b.d.b.x), 1818f)), !(!global0.b.a.zx), global0.b.d.d, func_2(_wgslsmith_f_op_f32(max(global0.c.d.b.x, _wgslsmith_f_op_f32(global0.b.d.a + global0.c.c.d.x))), max(global0.b.e.x, _wgslsmith_sub_i32(global0.b.c.e, global0.b.e.x)), _wgslsmith_f_op_f32(-global0.c.d.a)).d.e), vec2<i32>(u_input.a, global0.c.c.e));
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(~global0.d.x, ~(~1u), 0u, global0.c.b), _wgslsmith_add_vec4_u32(global0.d, vec4<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_add_u32(global0.b.b, 4294967295u), 32204u), func_2(415f, -var_0.c.e, _wgslsmith_f_op_f32(global0.b.c.a + 849f)).b, ~(~4294967295u))));
    let var_2 = max(global0.a.x, global0.a.x) >> (_wgslsmith_mult_u32(51197u, var_1.x) % 32u);
    global0 = Struct_3(vec3<u32>(~var_0.b, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, var_1.x, 46301u), ~vec4<u32>(12299u, var_1.x, 0u, var_1.x))), ~1u), global0.c, Struct_2(!select(!global0.b.a, var_0.a, false & global0.b.d.c.x), 1u, var_0.d, func_2(var_0.d.b.x, (u_input.a ^ 15105i) ^ -4786i, var_0.c.b.x).c, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.d.a))), _wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(0i, var_0.d.e), global0.b.d.e), -2162f).e), ~_wgslsmith_sub_vec4_u32(vec4<u32>(max(10710u, 4294967295u), 102810u, 30140u, 5646u), _wgslsmith_clamp_vec4_u32(global0.d, _wgslsmith_mod_vec4_u32(vec4<u32>(26732u, var_1.x, var_1.x, global0.a.x), vec4<u32>(44463u, 10001u, 1u, 0u)), select(vec4<u32>(u_input.d.x, var_1.x, u_input.c.x, 47681u), vec4<u32>(1u, 3750u, var_2, 0u), vec4<bool>(var_0.c.c.x, true, false, true)))));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(26863u, min(global0.a.x, var_2)), global0.a.yx, ~(global0.a.xz ^ var_1.yx)), u_input.c.yz), var_1.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(0u, 35141u, _wgslsmith_clamp_u32(~func_1(), ~(min(u_input.e.x, global0.d.x) << (countOneBits(global0.c.b) % 32u)), 4294967295u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.c.b | 80177u, ~global0.a.x) >> (4294967295u % 32u), firstLeadingBit(u_input.c.x) ^ global0.a.x));
    let var_1 = Struct_2(!(!select(vec3<bool>(global0.c.a.x, global0.b.d.c.x, false), vec3<bool>(true, global0.c.d.c.x, global0.c.d.c.x), select(true, global0.c.a.x, global0.c.d.c.x))), ((max(0u, 4294967295u) << (reverseBits(u_input.d.x) % 32u)) | 23692u) ^ _wgslsmith_dot_vec2_u32(select(var_0.ww << (u_input.c.zx % vec2<u32>(32u)), vec2<u32>(39456u, 0u), select(global0.b.c.c, vec2<bool>(false, false), global0.c.a.xx)), vec2<u32>(global0.c.b, 61683u)), Struct_1(-470f, vec4<f32>(global0.b.d.d.x, _wgslsmith_f_op_f32(-global0.b.c.d.x), global0.c.c.a, _wgslsmith_f_op_f32(-func_2(772f, u_input.a, 740f).d.d.x)), select(vec2<bool>(global0.c.c.c.x, !global0.b.d.c.x), vec2<bool>(false, any(vec3<bool>(true, false, global0.c.a.x))), vec2<bool>(false, true)), global0.b.d.b.xy, u_input.b.x), global0.c.d, u_input.b.zw);
    let var_2 = max(~func_4(global0.b.a.x, Struct_3(var_0.zww, var_1, func_2(global0.c.d.a, global0.c.e.x, var_1.d.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 43410u, u_input.e.x, var_0.x), vec4<u32>(1u, 4294967295u, 31352u, 44095u), vec4<u32>(1u, 77558u, 4294967295u, var_1.b))), global0.b), ~global0.c.b >> (_wgslsmith_sub_u32(~var_0.x, ~abs(4294967295u)) % 32u));
    var var_3 = _wgslsmith_f_op_f32(trunc(1000f));
    let var_4 = -18249i;
    let var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.b, global0.c.c.b, vec4<f32>(-385f, _wgslsmith_f_op_f32(-global0.b.d.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_1.c.a)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(686f - var_1.c.d.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(func_2(_wgslsmith_f_op_f32(-global0.b.d.b.x), u_input.a, _wgslsmith_div_f32(118f, var_1.c.d.x)).c.d, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(var_1.d.a, var_1.c.a)))) * var_1.d.b.xx));
}

