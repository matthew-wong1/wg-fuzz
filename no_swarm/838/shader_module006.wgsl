struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
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

var<private> global0: Struct_1 = Struct_1(false, vec2<f32>(-374f, -483f), 12641u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> vec3<f32> {
    let var_0 = false;
    return vec3<f32>(288f, -509f, 1000f);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_5) -> vec3<f32> {
    global0 = arg_1.c.a;
    global0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-306f, _wgslsmith_f_op_f32(-1576f + 797f)) * arg_1.b.e.yx))), select(countOneBits(_wgslsmith_add_u32(0u & u_input.a.x, u_input.a.x)), ~4294967295u, !all(arg_0)));
    global0 = Struct_1(true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.b)), _wgslsmith_f_op_vec2_f32(ceil(global0.b)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-895f - global0.b.x)))), ~arg_1.c.a.c);
    var var_0 = Struct_3(~vec2<u32>(arg_1.d.b.a.c, arg_1.c.a.c), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(19173i, arg_1.b.b.x, arg_1.b.b.x), vec3<i32>(_wgslsmith_sub_i32(1i, -3113i), -19281i, 2147483647i)), -1i, 1i ^ (~u_input.b.x & _wgslsmith_add_i32(-2147483647i, 16686i)), arg_1.b.b.x), select(arg_0, arg_0, true), arg_1.b.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.b.e), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * arg_1.d.b.a.b.x))), global0.b.x, _wgslsmith_f_op_f32(arg_1.b.e.x + _wgslsmith_f_op_f32(arg_1.d.b.a.b.x * global0.b.x))), select(select(vec3<bool>(false, false, global0.a), vec3<bool>(arg_1.c.a.a, arg_1.d.a, arg_0.x), arg_0.x), arg_0, arg_1.a.x))));
    var_0 = arg_1.b;
    return _wgslsmith_f_op_vec3_f32(abs(arg_1.b.e));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>) -> vec4<f32> {
    let var_0 = 19414u;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-186f, -1000f)) - _wgslsmith_f_op_f32(1935f + arg_1.x)) + _wgslsmith_div_f32(890f, _wgslsmith_f_op_f32(floor(global0.b.x))))));
    global0 = Struct_1(true, global0.b, firstTrailingBit(firstLeadingBit(~(~var_0))));
    let var_2 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.x, -114f))) - vec2<f32>(253f, 269f))), _wgslsmith_add_u32(~1u | ~var_0, _wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_mult_u32(global0.c, var_0), ~global0.c))));
    var_1 = arg_1.yx;
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(686f, 125f, true)), var_2.a.b.x, _wgslsmith_f_op_f32(global0.b.x + global0.b.x), _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(true, true, true), Struct_5(vec4<bool>(false, global0.a, var_2.a.a, var_2.a.a), Struct_3(vec2<u32>(global0.c, global0.c), vec4<i32>(u_input.d, -6576i, arg_0.x, arg_0.x), vec3<bool>(false, true, true), vec4<u32>(u_input.a.x, global0.c, var_2.a.c, u_input.a.x), vec3<f32>(1000f, 515f, global0.b.x)), var_2, Struct_4(global0.a, Struct_2(var_2.a))))).x) * vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.a.b.x)), 3410f, -1183f, _wgslsmith_f_op_f32(var_2.a.b.x + global0.b.x))))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(u_input.b ^ _wgslsmith_mod_vec3_i32(~vec3<i32>(-1i, -1i, arg_0) >> (reverseBits(u_input.a.zzx) % vec3<u32>(32u)), -_wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(1i, -1i, arg_0), u_input.c.zwz)), _wgslsmith_f_op_vec3_f32(func_3(!select(vec3<bool>(false, arg_1.a.a, arg_1.a.a), vec3<bool>(arg_1.a.a, arg_3.a.a, arg_3.a.a), !arg_3.a.a), Struct_5(!vec4<bool>(arg_3.a.a, false, arg_3.a.a, true), Struct_3(~u_input.a.yy, -u_input.c, vec3<bool>(true, true, true), min(u_input.a, vec4<u32>(u_input.a.x, 75095u, 1u, arg_3.a.c)), vec3<f32>(-1000f, -1608f, arg_2)), Struct_2(Struct_1(arg_3.a.a, vec2<f32>(1297f, -1450f), global0.c)), Struct_4(true, arg_1))))));
    let var_1 = Struct_1(true, arg_3.a.b, abs(~1u));
    global0 = Struct_1((global0.c | 15475u) > min(u_input.a.x, ~4294967295u), arg_1.a.b, max(_wgslsmith_sub_u32(~(~arg_3.a.c), 14343u), 0u));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -361f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(u_input.c.zzz, _wgslsmith_f_op_vec3_f32(var_0.yxz + var_0.wzy))).x * _wgslsmith_f_op_vec3_f32(func_3(!vec3<bool>(true, true, var_1.a), Struct_5(vec4<bool>(true, false, false, arg_1.a.a), Struct_3(u_input.a.yw, u_input.c, vec3<bool>(true, true, var_1.a), vec4<u32>(1u, global0.c, arg_1.a.c, var_1.c), var_0.zzy), Struct_2(Struct_1(global0.a, var_0.zz, 1u)), Struct_4(false, arg_1)))).x), 376f, 1475f), var_0, !select(select(vec4<bool>(true, false, var_1.a, arg_1.a.a), vec4<bool>(var_1.a, var_1.a, false, var_1.a), true), vec4<bool>(true, arg_1.a.a, var_1.a, !arg_1.a.a), vec4<bool>(true, true, all(vec3<bool>(true, true, arg_3.a.a)), true))));
    let var_3 = !arg_1.a.a;
    return Struct_2(Struct_1((global0.c > ~arg_3.a.c) | true, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_1.b), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_3.a.b.x, global0.b.x))))))), u_input.a.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> Struct_3 {
    let var_0 = ~vec2<u32>(~1u, min(0u, 49539u));
    var var_1 = Struct_1(!(true | (-2147483647i == arg_2)), _wgslsmith_f_op_vec2_f32(-global0.b), 10883u);
    var_1 = func_2(_wgslsmith_div_i32(~(-arg_2 | u_input.d), ~abs(0i)), arg_0, -583f, Struct_2(Struct_1(true, global0.b, var_1.c))).a;
    var var_2 = vec2<i32>(firstTrailingBit(arg_2), u_input.c.x >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.c, 4294967295u, 4294967295u, 41315u), ~u_input.a) % 32u));
    var_1 = arg_1.a;
    return Struct_3(u_input.a.zw, vec4<i32>(1i | ~arg_2, 34210i, -30007i, firstLeadingBit(-70577i)), select(select(vec3<bool>(true, true, true), !vec3<bool>(true, global0.a, arg_0.a.a), true), !vec3<bool>(true, !global0.a, true), select(vec3<bool>(true, global0.a, arg_1.a.a), vec3<bool>(!arg_3, !arg_0.a.a, all(vec3<bool>(arg_0.a.a, global0.a, true))), select(vec3<bool>(arg_0.a.a, true, global0.a), !vec3<bool>(var_1.a, global0.a, global0.a), any(vec2<bool>(arg_3, false))))), select(u_input.a | _wgslsmith_div_vec4_u32(max(u_input.a, u_input.a), u_input.a), ~vec4<u32>(var_0.x, 1u, min(10178u, global0.c), 3997u), vec4<bool>(true, !(arg_0.a.b.x == 801f), select(false, 15759u != arg_1.a.c, -1000f >= arg_1.a.b.x), true)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, 774f, -376f), vec3<f32>(-1486f, global0.b.x, arg_0.a.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b.x, 803f, var_1.b.x)))) - vec3<f32>(_wgslsmith_div_f32(-1563f, 810f), arg_0.a.b.x, -1000f)))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.e.x * _wgslsmith_f_op_f32(-arg_0.e.x)), 458f, !arg_1.c.x));
    global0 = func_2((_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(arg_1.b, u_input.c), firstLeadingBit(u_input.c)) << (func_5(Struct_2(Struct_1(true, arg_1.e.yx, global0.c)), Struct_2(Struct_1(true, vec2<f32>(arg_1.e.x, -701f), global0.c)), -2147483647i, all(vec2<bool>(true, arg_0.c.x))).d.x % 32u)) << (abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(42009u, 43282u), vec2<u32>(39377u, u_input.a.x))) % 32u), Struct_2(func_2(2147483647i, func_2(_wgslsmith_mult_i32(arg_1.b.x, 1i), Struct_2(Struct_1(arg_1.c.x, arg_0.e.xz, 0u)), arg_0.e.x, Struct_2(Struct_1(false, global0.b, 63134u))), arg_1.e.x, Struct_2(Struct_1(global0.a, arg_1.e.zy, 44108u))).a), _wgslsmith_f_op_vec4_f32(func_4(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2147483647i, -1i, -5572i), -arg_1.b.x), _wgslsmith_clamp_i32(abs(-6619i), -arg_1.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, arg_1.b.x), u_input.b.xx)), arg_1.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_1.e)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_0.e * arg_0.e), _wgslsmith_f_op_vec3_f32(arg_1.e - arg_0.e)))))).x, func_2(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.c.x, -1i, -2147483647i, u_input.b.x), arg_0.b), min(vec4<i32>(arg_0.b.x, arg_0.b.x, -1i, -5939i), arg_0.b)) >> (_wgslsmith_add_u32(~arg_0.d.x, 6164u >> (arg_1.a.x % 32u)) % 32u), func_2(_wgslsmith_mult_i32(func_5(Struct_2(Struct_1(true, vec2<f32>(1747f, arg_2), 2660u)), Struct_2(Struct_1(global0.a, global0.b, u_input.a.x)), arg_0.b.x, false).b.x, func_5(Struct_2(Struct_1(false, arg_1.e.zx, 0u)), Struct_2(Struct_1(false, vec2<f32>(arg_1.e.x, var_0), 0u)), arg_1.b.x, arg_1.c.x).b.x), func_2(_wgslsmith_div_i32(arg_0.b.x, 1i), Struct_2(Struct_1(true, vec2<f32>(-1095f, arg_0.e.x), u_input.a.x)), global0.b.x, func_2(13069i, Struct_2(Struct_1(true, arg_1.e.xz, global0.c)), 973f, Struct_2(Struct_1(arg_0.c.x, vec2<f32>(-632f, -1741f), arg_1.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-334f, arg_2)), func_2(1i, func_2(-2147483647i, Struct_2(Struct_1(false, arg_0.e.xx, global0.c)), 1025f, Struct_2(Struct_1(global0.a, vec2<f32>(arg_0.e.x, 994f), 4294967295u))), _wgslsmith_f_op_f32(-1315f * arg_2), Struct_2(Struct_1(false, arg_1.e.xy, arg_1.d.x)))), arg_2, Struct_2(func_2(-1i, func_2(45739i, Struct_2(Struct_1(arg_0.c.x, global0.b, 0u)), var_0, Struct_2(Struct_1(false, arg_1.e.yz, arg_0.a.x))), _wgslsmith_f_op_f32(sign(var_0)), Struct_2(Struct_1(arg_1.c.x, vec2<f32>(1848f, 875f), 0u))).a))).a;
    global0 = Struct_1(global0.a, arg_1.e.zz, arg_0.d.x);
    global0 = func_2(u_input.d, func_2(arg_1.b.x, func_2(arg_1.b.x, func_2(_wgslsmith_add_i32(-2147483647i, 40025i), func_2(948i, Struct_2(Struct_1(arg_1.c.x, arg_0.e.yy, global0.c)), -473f, Struct_2(Struct_1(global0.a, arg_0.e.zx, 56368u))), global0.b.x, func_2(1i, Struct_2(Struct_1(true, arg_0.e.xx, arg_1.d.x)), var_0, Struct_2(Struct_1(arg_1.c.x, vec2<f32>(var_0, global0.b.x), 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(108f - arg_1.e.x) * _wgslsmith_f_op_f32(-1000f * -1902f)), func_2(arg_1.b.x, Struct_2(Struct_1(arg_1.c.x, arg_0.e.xx, 1u)), 868f, func_2(67903i, Struct_2(Struct_1(false, vec2<f32>(arg_1.e.x, 1000f), 4294967295u)), arg_0.e.x, Struct_2(Struct_1(false, vec2<f32>(var_0, global0.b.x), 4294967295u))))), var_0, Struct_2(Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_0.e.x) - vec2<f32>(-243f, global0.b.x)), _wgslsmith_mod_u32(42955u, 14656u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -576f))), Struct_2(func_2(-arg_0.b.x ^ ~(-1i), func_2(2147483647i, func_2(-1i, Struct_2(Struct_1(arg_0.c.x, vec2<f32>(-1332f, -1020f), 4294967295u)), -1000f, Struct_2(Struct_1(true, arg_1.e.zy, 61278u))), _wgslsmith_f_op_f32(-1792f + arg_2), func_2(49144i, Struct_2(Struct_1(global0.a, arg_0.e.zz, 0u)), -1130f, Struct_2(Struct_1(true, vec2<f32>(-1596f, arg_1.e.x), global0.c)))), arg_0.e.x, func_2(~u_input.d, Struct_2(Struct_1(false, arg_0.e.xy, 1u)), 683f, func_2(2147483647i, Struct_2(Struct_1(global0.a, arg_1.e.xz, u_input.a.x)), var_0, Struct_2(Struct_1(true, vec2<f32>(2666f, arg_0.e.x), arg_0.d.x))))).a)).a;
    let var_1 = select(vec4<bool>(true, true, global0.c >= countOneBits(abs(global0.c)), false | global0.a), vec4<bool>(true, (_wgslsmith_div_u32(u_input.a.x, 0u) >= 1u) & false, arg_0.c.x, false), select(!select(select(vec4<bool>(true, global0.a, global0.a, true), vec4<bool>(false, global0.a, arg_1.c.x, true), vec4<bool>(true, true, true, arg_0.c.x)), vec4<bool>(false, false, true, global0.a), !vec4<bool>(arg_1.c.x, true, true, arg_1.c.x)), vec4<bool>(arg_0.c.x, false, true, !func_5(Struct_2(Struct_1(arg_1.c.x, arg_1.e.yx, arg_0.d.x)), Struct_2(Struct_1(true, vec2<f32>(global0.b.x, -1091f), arg_0.d.x)), 2147483647i, arg_1.c.x).c.x), select(select(vec4<bool>(arg_0.c.x, false, arg_1.c.x, false), vec4<bool>(arg_0.c.x, false, true, global0.a), true), !(!vec4<bool>(arg_1.c.x, arg_0.c.x, global0.a, arg_1.c.x)), select(select(vec4<bool>(arg_1.c.x, false, true, true), vec4<bool>(arg_1.c.x, false, true, false), arg_1.c.x), select(vec4<bool>(false, false, arg_0.c.x, false), vec4<bool>(global0.a, false, arg_1.c.x, false), true), select(vec4<bool>(false, global0.a, global0.a, false), vec4<bool>(true, global0.a, arg_1.c.x, true), false)))));
    return func_5(func_2(abs(_wgslsmith_mult_i32(~5114i, arg_0.b.x)), Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-418f, 2405f) + vec2<f32>(global0.b.x, 1077f)), func_5(Struct_2(Struct_1(false, vec2<f32>(-599f, arg_0.e.x), arg_1.d.x)), Struct_2(Struct_1(false, vec2<f32>(-537f, 1724f), 0u)), -8756i, var_1.x).d.x)), _wgslsmith_f_op_f32(-arg_1.e.x), Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1755f, -625f)), ~global0.c))), func_2(arg_1.b.x, Struct_2(func_2(0i, Struct_2(Struct_1(false, arg_1.e.yx, 1u)), _wgslsmith_f_op_vec4_f32(func_4(vec3<i32>(12850i, u_input.b.x, -1i), vec3<f32>(270f, arg_2, -270f))).x, Struct_2(Struct_1(var_1.x, arg_0.e.yy, u_input.a.x))).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1513f + 243f)), func_2(countOneBits(u_input.b.x), Struct_2(Struct_1(false, vec2<f32>(arg_2, -328f), 50175u)), arg_1.e.x, func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.x, u_input.b.x), u_input.c.yz), Struct_2(Struct_1(global0.a, arg_0.e.yx, arg_1.d.x)), _wgslsmith_f_op_f32(select(293f, -817f, false)), func_2(arg_0.b.x, Struct_2(Struct_1(false, global0.b, 2455u)), 1448f, Struct_2(Struct_1(arg_0.c.x, vec2<f32>(arg_1.e.x, var_0), 12844u)))))), _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_div_i32(reverseBits(select(-30812i, -1i, true)), -1i)), all(vec3<bool>(var_1.x, !arg_1.c.x, (u_input.b.x < 0i) || false)));
}

fn func_7(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_5) -> Struct_1 {
    let var_0 = ~arg_2.b.d.zzz;
    global0 = func_2(_wgslsmith_add_i32(func_5(Struct_2(Struct_1(global0.a, vec2<f32>(1000f, arg_2.d.b.a.b.x), u_input.a.x)), Struct_2(func_2(28789i, Struct_2(arg_2.d.b.a), arg_2.d.b.a.b.x, arg_2.d.b).a), -1i, true).b.x, -func_5(Struct_2(Struct_1(false, arg_2.c.a.b, u_input.a.x)), Struct_2(arg_2.d.b.a), 33494i | arg_2.b.b.x, select(true, global0.a, arg_0)).b.x), Struct_2(func_2(arg_2.b.b.x, func_2(-12567i, Struct_2(arg_2.c.a), arg_2.d.b.a.b.x, func_2(u_input.c.x, arg_2.d.b, arg_2.b.e.x, arg_2.c)), _wgslsmith_f_op_f32(global0.b.x * -1000f), arg_2.d.b).a), -1159f, Struct_2(arg_2.d.b.a)).a;
    global0 = arg_2.d.b.a;
    global0 = arg_2.d.b.a;
    var var_1 = Struct_4(!select(arg_0, !global0.a, !(arg_2.b.c.x && global0.a)), func_2(_wgslsmith_mult_i32(arg_1.x, 1i), Struct_2(arg_2.d.b.a), global0.b.x, Struct_2(func_2(_wgslsmith_add_i32(arg_2.b.b.x, arg_1.x), Struct_2(arg_2.c.a), -117f, Struct_2(Struct_1(true, vec2<f32>(global0.b.x, 1731f), var_0.x))).a)));
    return arg_2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(any(vec3<bool>(224f != _wgslsmith_f_op_f32(global0.b.x * global0.b.x), global0.a, !any(vec3<bool>(global0.a, true, global0.a)))), _wgslsmith_f_op_vec2_f32(-global0.b), u_input.a.x);
    global0 = func_7(global0.a, vec4<i32>(u_input.d, 16670i, -28627i, ~60505i), Struct_5(vec4<bool>(global0.a, global0.a, true, global0.a), func_6(Struct_3(min(u_input.a.yw, u_input.a.zw), vec4<i32>(u_input.c.x, -2147483647i, -29558i, u_input.d), select(vec3<bool>(true, global0.a, true), vec3<bool>(true, false, global0.a), false), ~u_input.a, _wgslsmith_f_op_vec3_f32(func_1())), func_5(func_2(-2147483647i, Struct_2(Struct_1(true, vec2<f32>(-521f, global0.b.x), 4294967295u)), 986f, Struct_2(Struct_1(global0.a, global0.b, 57886u))), func_2(u_input.c.x, Struct_2(Struct_1(false, global0.b, 23957u)), -387f, Struct_2(Struct_1(global0.a, vec2<f32>(1361f, -2109f), 15365u))), _wgslsmith_div_i32(u_input.b.x, 0i), true), -1000f), Struct_2(Struct_1(global0.a | global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global0.b.x)), ~0u)), Struct_4(func_5(Struct_2(Struct_1(global0.a, vec2<f32>(global0.b.x, -1272f), 11134u)), Struct_2(Struct_1(false, global0.b, global0.c)), u_input.d, true).c.x, Struct_2(Struct_1(global0.a, vec2<f32>(-741f, global0.b.x), u_input.a.x)))));
    let var_0 = any(!select(vec4<bool>(global0.a, global0.a, global0.a, true), vec4<bool>(global0.a, global0.a, true, global0.a), vec4<bool>(false, true, true, global0.a))) || global0.a;
    global0 = func_2(-1032i, func_2(_wgslsmith_clamp_i32(-2147483647i, ~u_input.c.x, _wgslsmith_add_i32(2147483647i, u_input.c.x)) >> (select(4294967295u ^ u_input.a.x, 7958u, true & var_0) % 32u), Struct_2(func_2(firstLeadingBit(u_input.d), Struct_2(Struct_1(false, global0.b, global0.c)), 1f, func_2(u_input.b.x, Struct_2(Struct_1(false, global0.b, global0.c)), 247f, Struct_2(Struct_1(var_0, vec2<f32>(1689f, global0.b.x), 4294967295u)))).a), _wgslsmith_f_op_f32(func_7(false, _wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, u_input.c), Struct_5(vec4<bool>(false, var_0, global0.a, true), Struct_3(vec2<u32>(global0.c, global0.c), u_input.c, vec3<bool>(true, global0.a, var_0), u_input.a, vec3<f32>(global0.b.x, global0.b.x, global0.b.x)), Struct_2(Struct_1(var_0, global0.b, u_input.a.x)), Struct_4(false, Struct_2(Struct_1(var_0, global0.b, 33344u))))).b.x - _wgslsmith_f_op_f32(step(global0.b.x, _wgslsmith_f_op_f32(step(558f, global0.b.x))))), func_2(-2147483647i, func_2(min(u_input.c.x, u_input.d), func_2(17684i, Struct_2(Struct_1(global0.a, global0.b, 4294967295u)), 443f, Struct_2(Struct_1(global0.a, vec2<f32>(global0.b.x, 1511f), u_input.a.x))), global0.b.x, Struct_2(Struct_1(var_0, vec2<f32>(-246f, global0.b.x), 16942u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1797f)) + global0.b.x), Struct_2(func_2(u_input.d, Struct_2(Struct_1(false, global0.b, u_input.a.x)), -261f, Struct_2(Struct_1(true, global0.b, 4294967295u))).a))), global0.b.x, func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.c.x, -u_input.c.x), u_input.c.wz), func_2(abs(-49210i), func_2(max(u_input.b.x, -395i), Struct_2(Struct_1(true, vec2<f32>(1379f, global0.b.x), u_input.a.x)), _wgslsmith_f_op_f32(-global0.b.x), func_2(u_input.d, Struct_2(Struct_1(false, vec2<f32>(-940f, global0.b.x), 74690u)), global0.b.x, Struct_2(Struct_1(var_0, global0.b, 5435u)))), -132f, Struct_2(Struct_1(true, vec2<f32>(373f, global0.b.x), u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(func_6(Struct_3(vec2<u32>(u_input.a.x, 39112u), u_input.c, vec3<bool>(var_0, global0.a, true), vec4<u32>(4304u, global0.c, 84840u, 4294967295u), vec3<f32>(global0.b.x, global0.b.x, global0.b.x)), Struct_3(u_input.a.xy, vec4<i32>(u_input.d, 0i, u_input.c.x, u_input.b.x), vec3<bool>(true, true, false), u_input.a, vec3<f32>(global0.b.x, 1022f, global0.b.x)), -1080f).c, Struct_5(vec4<bool>(var_0, false, true, false), Struct_3(u_input.a.xy, vec4<i32>(u_input.c.x, u_input.b.x, u_input.d, u_input.d), vec3<bool>(true, false, false), u_input.a, vec3<f32>(global0.b.x, -796f, global0.b.x)), Struct_2(Struct_1(true, vec2<f32>(global0.b.x, global0.b.x), global0.c)), Struct_4(true, Struct_2(Struct_1(true, vec2<f32>(global0.b.x, 1000f), 59535u)))))).x), Struct_2(Struct_1(var_0 || true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b.x, global0.b.x), global0.b, var_0)), _wgslsmith_mod_u32(38236u, 18441u))))).a;
    global0 = Struct_1(var_0, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-530f, -984f)) - vec2<f32>(-272f, global0.b.x)), global0.b)), _wgslsmith_div_vec2_f32(func_5(func_2(-1i, Struct_2(Struct_1(global0.a, vec2<f32>(380f, -1070f), 0u)), 148f, Struct_2(Struct_1(var_0, vec2<f32>(624f, global0.b.x), global0.c))), Struct_2(Struct_1(global0.a, vec2<f32>(-2405f, global0.b.x), 1u)), u_input.d, func_6(Struct_3(vec2<u32>(u_input.a.x, u_input.a.x), u_input.c, vec3<bool>(true, true, var_0), vec4<u32>(u_input.a.x, u_input.a.x, 0u, global0.c), vec3<f32>(global0.b.x, global0.b.x, -1175f)), Struct_3(vec2<u32>(u_input.a.x, global0.c), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.d), vec3<bool>(global0.a, var_0, false), u_input.a, vec3<f32>(global0.b.x, 550f, -570f)), global0.b.x).c.x).e.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-720f, global0.b.x)))))), ~global0.c);
    global0 = func_7(all(func_6(Struct_3(~vec2<u32>(u_input.a.x, 46020u), u_input.c << (u_input.a % vec4<u32>(32u)), !vec3<bool>(global0.a, global0.a, var_0), firstLeadingBit(vec4<u32>(global0.c, u_input.a.x, 1u, 17527u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, 1155f, 153f))), func_5(Struct_2(Struct_1(global0.a, global0.b, u_input.a.x)), func_2(-3607i, Struct_2(Struct_1(false, vec2<f32>(-180f, global0.b.x), global0.c)), 1000f, Struct_2(Struct_1(var_0, vec2<f32>(global0.b.x, global0.b.x), 80160u))), -1i, global0.a), 874f).c.yz), countOneBits(~vec4<i32>(-19887i, -7102i, 23374i, 0i) ^ vec4<i32>(func_6(Struct_3(vec2<u32>(4294967295u, 4294967295u), u_input.c, vec3<bool>(var_0, global0.a, true), vec4<u32>(u_input.a.x, 0u, 99008u, u_input.a.x), vec3<f32>(2285f, global0.b.x, 856f)), Struct_3(u_input.a.wx, vec4<i32>(-82418i, 26203i, 7460i, -2147483647i), vec3<bool>(true, false, false), u_input.a, vec3<f32>(global0.b.x, -783f, global0.b.x)), 781f).b.x, ~(-1i), _wgslsmith_mod_i32(u_input.c.x, 2147483647i), -6004i | u_input.c.x)), Struct_5(vec4<bool>(!(-1445f != global0.b.x), false, func_5(Struct_2(Struct_1(global0.a, global0.b, u_input.a.x)), Struct_2(Struct_1(true, vec2<f32>(868f, 913f), global0.c)), u_input.d, any(vec4<bool>(false, false, true, false))).c.x, true), Struct_3(u_input.a.xz, func_5(Struct_2(Struct_1(false, vec2<f32>(global0.b.x, 1000f), u_input.a.x)), Struct_2(Struct_1(true, vec2<f32>(701f, 193f), global0.c)), 0i, true).b | u_input.c, !vec3<bool>(false, global0.a, var_0), ~vec4<u32>(global0.c, 38258u, global0.c, u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-478f, -272f, global0.b.x) * vec3<f32>(global0.b.x, 472f, 1000f)) - vec3<f32>(global0.b.x, 456f, global0.b.x))), Struct_2(func_2(u_input.b.x, func_2(-1i, Struct_2(Struct_1(global0.a, vec2<f32>(global0.b.x, global0.b.x), 57734u)), -241f, Struct_2(Struct_1(true, vec2<f32>(-393f, global0.b.x), global0.c))), _wgslsmith_div_f32(global0.b.x, global0.b.x), func_2(-1650i, Struct_2(Struct_1(true, vec2<f32>(global0.b.x, 116f), u_input.a.x)), 769f, Struct_2(Struct_1(true, global0.b, global0.c)))).a), Struct_4(var_0, func_2(firstLeadingBit(-26536i), func_2(11176i, Struct_2(Struct_1(true, vec2<f32>(global0.b.x, -1673f), 18324u)), 541f, Struct_2(Struct_1(var_0, global0.b, 12556u))), _wgslsmith_div_f32(global0.b.x, -2112f), Struct_2(Struct_1(false, vec2<f32>(global0.b.x, -860f), u_input.a.x))))));
    global0 = func_2(u_input.d, Struct_2(Struct_1(all(func_6(Struct_3(vec2<u32>(global0.c, 0u), u_input.c, vec3<bool>(true, true, var_0), u_input.a, vec3<f32>(global0.b.x, 1269f, global0.b.x)), Struct_3(u_input.a.wy, u_input.c, vec3<bool>(global0.a, false, var_0), vec4<u32>(global0.c, 64798u, 4294967295u, u_input.a.x), vec3<f32>(-1435f, global0.b.x, global0.b.x)), global0.b.x).c), func_7(u_input.d > u_input.c.x, -vec4<i32>(-53442i, u_input.c.x, 17938i, -23883i), Struct_5(vec4<bool>(true, global0.a, var_0, false), Struct_3(u_input.a.xx, vec4<i32>(2147483647i, -1i, 16373i, -1i), vec3<bool>(global0.a, false, global0.a), vec4<u32>(1u, global0.c, 114919u, 21197u), vec3<f32>(-1000f, global0.b.x, global0.b.x)), Struct_2(Struct_1(true, global0.b, 6910u)), Struct_4(global0.a, Struct_2(Struct_1(var_0, vec2<f32>(global0.b.x, 546f), u_input.a.x))))).b, u_input.a.x)), global0.b.x, Struct_2(Struct_1(var_0, func_2(u_input.d, func_2(u_input.c.x, Struct_2(Struct_1(global0.a, vec2<f32>(global0.b.x, global0.b.x), u_input.a.x)), global0.b.x, Struct_2(Struct_1(var_0, global0.b, 40969u))), global0.b.x, Struct_2(Struct_1(false, vec2<f32>(global0.b.x, 487f), 24144u))).a.b, _wgslsmith_add_u32(u_input.a.x, ~u_input.a.x)))).a;
    let var_1 = func_6(func_6(Struct_3(vec2<u32>(1u, countOneBits(global0.c)), ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, u_input.d), vec3<bool>(true, true, true), ~vec4<u32>(1u, global0.c, 24336u, 4294967295u), _wgslsmith_f_op_vec3_f32(func_3(select(vec3<bool>(false, true, true), vec3<bool>(global0.a, var_0, global0.a), vec3<bool>(false, true, var_0)), Struct_5(vec4<bool>(var_0, var_0, true, false), Struct_3(u_input.a.wz, u_input.c, vec3<bool>(var_0, var_0, false), u_input.a, vec3<f32>(924f, 898f, global0.b.x)), Struct_2(Struct_1(false, global0.b, 4294967295u)), Struct_4(true, Struct_2(Struct_1(true, global0.b, u_input.a.x))))))), func_5(Struct_2(Struct_1(var_0, vec2<f32>(-1355f, -1019f), 4294967295u)), Struct_2(Struct_1(true, vec2<f32>(global0.b.x, global0.b.x), 1u)), ~countOneBits(10179i), _wgslsmith_f_op_f32(exp2(global0.b.x)) <= global0.b.x), global0.b.x), func_6(Struct_3(u_input.a.ww, reverseBits(u_input.c), !(!vec3<bool>(false, var_0, global0.a)), u_input.a >> (u_input.a % vec4<u32>(32u)), vec3<f32>(_wgslsmith_div_f32(-1109f, global0.b.x), _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(var_0, global0.a, global0.a), Struct_5(vec4<bool>(global0.a, false, true, global0.a), Struct_3(u_input.a.xx, u_input.c, vec3<bool>(global0.a, var_0, true), u_input.a, vec3<f32>(global0.b.x, -136f, global0.b.x)), Struct_2(Struct_1(global0.a, vec2<f32>(970f, 1000f), u_input.a.x)), Struct_4(false, Struct_2(Struct_1(false, vec2<f32>(global0.b.x, 782f), u_input.a.x)))))).x, func_7(var_0, vec4<i32>(9931i, -74745i, u_input.d, 0i), Struct_5(vec4<bool>(false, var_0, true, global0.a), Struct_3(vec2<u32>(72u, global0.c), u_input.c, vec3<bool>(global0.a, global0.a, var_0), vec4<u32>(global0.c, global0.c, global0.c, u_input.a.x), vec3<f32>(global0.b.x, global0.b.x, -136f)), Struct_2(Struct_1(true, global0.b, 13356u)), Struct_4(true, Struct_2(Struct_1(var_0, global0.b, global0.c))))).b.x)), Struct_3(~(~u_input.a.zz), select(vec4<i32>(24114i, 41723i, 36005i, -16887i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.d, u_input.d, u_input.b.x), vec4<i32>(-10019i, 0i, -16787i, u_input.c.x)), true), func_5(func_2(1i, Struct_2(Struct_1(true, global0.b, global0.c)), -1000f, Struct_2(Struct_1(global0.a, global0.b, 1u))), func_2(-2147483647i, Struct_2(Struct_1(false, global0.b, 1u)), global0.b.x, Struct_2(Struct_1(global0.a, global0.b, 115878u))), func_6(Struct_3(vec2<u32>(u_input.a.x, 34472u), vec4<i32>(u_input.c.x, 0i, u_input.c.x, u_input.b.x), vec3<bool>(var_0, global0.a, false), u_input.a, vec3<f32>(-169f, global0.b.x, global0.b.x)), Struct_3(u_input.a.yz, vec4<i32>(u_input.d, -11845i, u_input.b.x, u_input.c.x), vec3<bool>(true, global0.a, var_0), vec4<u32>(u_input.a.x, global0.c, 4294967295u, u_input.a.x), vec3<f32>(1341f, 1578f, global0.b.x)), global0.b.x).b.x, any(vec2<bool>(global0.a, global0.a))).c, u_input.a, vec3<f32>(_wgslsmith_f_op_f32(-771f - -1189f), _wgslsmith_f_op_f32(-global0.b.x), 265f)), _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(global0.b.x, global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_f_op_f32(-global0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 529f, var_1.e.x, 722f))))));
}

