struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: Struct_2,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, false, true), 4294967295u), 574f, vec3<bool>(false, true, true), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, false, false), 1u));

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, true, false, true), 4294967295u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<f32>) -> vec2<bool> {
    global2 = Struct_1(vec3<bool>(!(!global1.d.b.x && true), _wgslsmith_dot_vec4_u32(~vec4<u32>(20779u, global1.a.c, global2.c, global1.d.c), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 41609u, u_input.b, 26512u), vec4<u32>(arg_0, 1u, 1u, global2.c))) <= 4294967295u, global1.a.a.x), !vec4<bool>(true, !(!arg_1), all(vec3<bool>(false, true, global2.b.x)), global2.b.x), _wgslsmith_dot_vec2_u32(~u_input.c.xy, ~abs(vec2<u32>(global1.a.c, global2.c))));
    var var_0 = -_wgslsmith_clamp_vec2_i32(u_input.a, _wgslsmith_clamp_vec2_i32(firstTrailingBit(abs(u_input.a)), select(vec2<i32>(37882i, u_input.a.x), firstTrailingBit(u_input.a), vec2<bool>(global1.a.a.x, false)), vec2<i32>(-1i) * -u_input.e), vec2<i32>(u_input.e.x, -39041i));
    var var_1 = -1215f;
    var var_2 = vec2<i32>(-47942i, firstLeadingBit(-(50894i | var_0.x)));
    var_2 = select(u_input.a, _wgslsmith_mod_vec2_i32(u_input.a, u_input.a), any(global2.b) || any(!(!global1.d.b)));
    return global1.a.a.zy;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_2 {
    global1 = Struct_2(Struct_1(select(global2.a, global2.b.zyy, !all(vec2<bool>(false, true))), global1.d.b, global2.c), _wgslsmith_f_op_f32(-global0.x), arg_0.xzx, arg_2.c.a);
    var var_0 = any(vec2<bool>(all(func_3(arg_3.x, false, _wgslsmith_f_op_vec4_f32(arg_2.d * vec4<f32>(-1000f, global1.b, global0.x, 150f)))), arg_2.b));
    let var_1 = u_input.c.x ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.c, ~1u, firstLeadingBit(global2.c), global1.a.c), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_3.x, 40999u, 73150u), vec4<u32>(u_input.b, u_input.b, global2.c, 0u)));
    var var_2 = arg_2;
    return Struct_2(Struct_1(global1.d.b.wwx, vec4<bool>(true, global2.b.x, arg_0.x, false), var_2.c.a.c), -177f, vec3<bool>((~2147483647i | u_input.e.x) >= 1i, !any(arg_2.a.zz), all(select(vec4<bool>(arg_0.x, arg_2.b, global2.b.x, arg_2.b), global1.a.b, true))), arg_2.c.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(~u_input.a.x, reverseBits(u_input.e.x), 2147483647i | u_input.e.x), -83209i) >> (1u % 32u);
    let var_1 = Struct_3(func_2(vec4<bool>(!arg_0.d.a.x, global2.a.x, global0.x == _wgslsmith_f_op_f32(floor(global0.x)), arg_1.x), ~(~_wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(global2.c, arg_3.d.c))), Struct_3(vec3<bool>(arg_0.a.a.x, arg_1.x, false), 1i < u_input.e.x, arg_3, vec4<f32>(_wgslsmith_f_op_f32(217f - arg_3.b), _wgslsmith_f_op_f32(global1.b * arg_0.b), _wgslsmith_f_op_f32(floor(-152f)), global0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_2.b))))), u_input.c.zy).a.b.zyz, arg_0.a.a.x, func_2(!vec4<bool>(u_input.a.x > -4415i, func_3(64502u, false, vec4<f32>(-900f, arg_2.b, arg_3.b, arg_0.b)).x, true, global1.a.b.x && false), firstLeadingBit(1u), Struct_3(global2.a, min(1u, global1.a.c) <= ~u_input.d, arg_2, vec4<f32>(_wgslsmith_f_op_f32(select(global1.b, -2009f, arg_1.x)), 340f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-arg_3.b)), _wgslsmith_f_op_f32(-arg_2.b)), vec2<u32>(_wgslsmith_clamp_u32(firstLeadingBit(1u), ~global1.d.c, global2.c), 4294967295u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-566f, -1374f, global0.x, global1.b)))))), _wgslsmith_div_f32(global1.b, arg_0.b));
    let var_2 = global1.d;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1064f)), -1678f, global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-arg_3.b)))))) * _wgslsmith_f_op_vec4_f32(var_1.d * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(228f)), 288f, 502f, 602f)))));
    var var_4 = u_input.c;
    return Struct_2(func_2(select(vec4<bool>(arg_0.c.x, true, all(arg_1), false), func_2(func_2(global1.a.b, 14255u, Struct_3(vec3<bool>(true, true, true), true, Struct_2(arg_0.d, var_3.x, vec3<bool>(var_2.b.x, var_1.a.x, false), Struct_1(arg_1, var_1.c.a.b, arg_3.a.c)), vec4<f32>(var_3.x, global0.x, arg_0.b, arg_0.b), 833f), u_input.c.zx).a.b, arg_0.d.c & 0u, var_1, firstTrailingBit(vec2<u32>(arg_3.d.c, 0u))).d.b, true), 36044u, Struct_3(func_2(arg_0.a.b, _wgslsmith_div_u32(1u, 67471u), Struct_3(var_1.c.c, false, Struct_2(var_1.c.d, arg_2.b, global1.c, Struct_1(arg_1, vec4<bool>(global1.c.x, true, var_2.b.x, true), 0u)), var_3, arg_0.b), firstTrailingBit(vec2<u32>(17846u, 1460u))).a.b.xxy, 1i <= _wgslsmith_dot_vec3_i32(vec3<i32>(1347i, u_input.a.x, -5977i), vec3<i32>(44360i, u_input.a.x, u_input.e.x)), var_1.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_3))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1383f, arg_2.b))), max(vec2<u32>(~arg_2.a.c, select(22155u, u_input.d, global1.d.b.x)), firstLeadingBit(vec2<u32>(var_1.c.d.c, var_4.x)))).a, _wgslsmith_f_op_f32(f32(-1f) * -259f), select(func_2(var_1.c.a.b, func_2(!vec4<bool>(global2.b.x, global1.a.a.x, var_1.a.x, true), ~u_input.c.x, Struct_3(global1.d.a, global1.d.a.x, Struct_2(arg_2.a, -1640f, arg_2.a.b.wyz, var_1.c.d), var_3, var_3.x), vec2<u32>(1u, arg_2.a.c)).d.c, var_1, ~vec2<u32>(30642u, 1u)).a.a, global1.d.a, vec3<bool>(true, global1.d.c == ~var_4.x, true)), Struct_1(vec3<bool>(false, true & (var_2.c >= global2.c), var_1.b), !(!vec4<bool>(false, false, global1.a.b.x, var_1.a.x)), 1u >> (var_4.x % 32u)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    global1 = func_4(func_2(vec4<bool>(arg_0.c.c.x, true, !global2.a.x, global1.c.x), ~_wgslsmith_dot_vec2_u32(u_input.c.xy, ~vec2<u32>(91026u, 7677u)), arg_0, ~vec2<u32>(_wgslsmith_sub_u32(arg_0.c.d.c, global2.c), global1.d.c | u_input.c.x)), func_2(vec4<bool>(global1.a.b.x, any(func_3(global2.c, false, vec4<f32>(665f, global0.x, 737f, global1.b))), global1.c.x, !any(global2.b)), ~(~countOneBits(global1.d.c)), Struct_3(vec3<bool>(arg_0.b, true, !arg_0.c.a.b.x), true, func_2(!vec4<bool>(arg_0.c.a.b.x, false, false, false), ~57329u, Struct_3(vec3<bool>(arg_0.a.x, false, false), global2.b.x, Struct_2(Struct_1(vec3<bool>(true, arg_0.b, arg_0.c.c.x), vec4<bool>(true, true, global1.d.a.x, true), global2.c), arg_0.e, vec3<bool>(true, arg_0.c.c.x, true), Struct_1(arg_0.a, arg_0.c.a.b, 1u)), arg_0.d, 604f), u_input.c.zy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1453f, global1.b, arg_0.c.b, -2089f))), -668f), max(vec2<u32>(global1.d.c, ~arg_0.c.d.c), ~(~vec2<u32>(4294967295u, 0u)))).a.a, func_2(!(!arg_0.c.a.b), _wgslsmith_mult_u32(u_input.d, global1.d.c & ~32988u), Struct_3(func_2(!global2.b, countOneBits(arg_0.c.d.c), arg_0, ~u_input.c.zx).d.b.zwz, all(arg_0.a.yz) != arg_0.c.a.a.x, func_2(vec4<bool>(arg_0.a.x, global2.b.x, global2.b.x, global1.d.a.x), 45459u, Struct_3(global1.a.b.yxx, true, arg_0.c, vec4<f32>(1000f, global0.x, 1616f, -437f), 585f), abs(vec2<u32>(0u, 0u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-588f, 168f, -1000f, 1943f)), -1326f), u_input.c.xy), func_2(global1.d.b, 25111u, Struct_3(global2.b.zzx, any(vec2<bool>(true, true)), func_2(!vec4<bool>(true, global1.a.b.x, true, false), arg_0.c.d.c | 0u, arg_0, abs(vec2<u32>(global2.c, u_input.c.x))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.b * 1053f), -1910f, _wgslsmith_div_f32(475f, 1000f), _wgslsmith_f_op_f32(select(global1.b, -1541f, false))), 380f), _wgslsmith_add_vec2_u32(u_input.c.zy, min(select(vec2<u32>(0u, 0u), u_input.c.xz, false), vec2<u32>(4294967295u, arg_0.c.d.c) << (u_input.c.yz % vec2<u32>(32u))))));
    global2 = func_2(global2.b, ~u_input.d, arg_0, _wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.c.a.c, global2.c), vec2<u32>(39133u, global1.d.c)), vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.c.yx, u_input.c.yx), 22477u))).d;
    let var_0 = arg_0.c.a;
    global1 = Struct_2(global1.d, global0.x, func_2(vec4<bool>(var_0.a.x || any(var_0.b), any(!var_0.b.wzw), global2.c != _wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(global2.c, 4294967295u)), any(select(vec3<bool>(true, var_0.b.x, global2.a.x), global2.b.wzx, vec3<bool>(global1.d.b.x, true, global1.c.x)))), ~(~34498u), Struct_3(global1.a.b.zzz, !all(global1.d.b.xw), Struct_2(global1.d, _wgslsmith_f_op_f32(step(global0.x, 1027f)), global2.a, Struct_1(vec3<bool>(false, arg_0.a.x, false), vec4<bool>(global1.d.a.x, true, arg_0.a.x, false), 0u)), vec4<f32>(func_4(Struct_2(var_0, global0.x, vec3<bool>(var_0.a.x, true, false), Struct_1(arg_0.c.c, var_0.b, 95665u)), arg_0.c.a.a, arg_0.c, Struct_2(Struct_1(global2.a, global1.d.b, var_0.c), arg_0.c.b, vec3<bool>(global2.a.x, var_0.b.x, false), var_0)).b, global0.x, _wgslsmith_div_f32(-1981f, -462f), _wgslsmith_f_op_f32(global0.x - 519f)), 906f), countOneBits(u_input.c.zz)).c, Struct_1(!(!arg_0.a), !func_2(select(vec4<bool>(global1.d.a.x, true, false, true), vec4<bool>(true, global2.b.x, global1.d.b.x, global2.b.x), true), 6462u << (global2.c % 32u), arg_0, u_input.c.yx).a.b, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c.yx, _wgslsmith_mod_vec2_u32(u_input.c.zy, u_input.c.xx)), min(func_4(Struct_2(var_0, 654f, vec3<bool>(var_0.a.x, global2.a.x, true), arg_0.c.a), vec3<bool>(true, global1.a.a.x, false), arg_0.c, arg_0.c).a.c, ~1u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-988f, _wgslsmith_f_op_f32(global1.b - -209f), _wgslsmith_f_op_f32(global0.x + 316f), -1455f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global1.b, -1073f, arg_0.e))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(582f, 360f, arg_0.d.x, global1.b))))));
    return _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(global1.b * arg_0.e))) - global1.b));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: f32) -> vec4<f32> {
    global2 = global1.d;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(110f, arg_2)))))));
    global2 = global1.d;
    var var_0 = func_2(func_4(func_4(func_2(global1.d.b, global2.c, Struct_3(vec3<bool>(global1.d.a.x, global2.b.x, global1.a.b.x), false, Struct_2(global1.a, -622f, vec3<bool>(global1.d.b.x, false, true), global1.d), vec4<f32>(675f, -683f, 723f, global1.b), global1.b), vec2<u32>(4294967295u, u_input.b)), select(!global2.b.yyz, !vec3<bool>(true, global2.b.x, true), true), Struct_2(func_2(global2.b, u_input.c.x, Struct_3(global1.a.b.xwy, true, Struct_2(Struct_1(global1.a.a, vec4<bool>(global1.d.b.x, global2.b.x, true, true), u_input.b), global1.b, global1.d.b.zwz, global1.a), vec4<f32>(340f, 141f, global0.x, global0.x), -1403f), u_input.c.zy).d, _wgslsmith_f_op_f32(select(arg_2, -590f, false)), global2.a, Struct_1(global2.b.ywz, global1.a.b, 6680u)), Struct_2(func_4(Struct_2(global1.a, arg_2, vec3<bool>(false, true, global2.a.x), global1.a), global2.b.yzw, Struct_2(Struct_1(global2.b.zyz, global2.b, global2.c), global0.x, global1.d.a, global1.d), Struct_2(Struct_1(global2.a, global1.d.b, global1.d.c), -696f, vec3<bool>(true, global2.a.x, global1.c.x), Struct_1(global1.c, vec4<bool>(global1.c.x, global2.a.x, true, global2.b.x), 0u))).a, func_2(global1.a.b, global1.a.c, Struct_3(vec3<bool>(global1.c.x, false, global1.c.x), global2.b.x, Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, global2.a.x, false, global1.d.a.x), u_input.b), global0.x, global1.a.b.wwy, Struct_1(vec3<bool>(global2.b.x, global2.b.x, global1.d.a.x), vec4<bool>(true, global1.c.x, true, false), global2.c)), vec4<f32>(-1192f, arg_2, 1833f, -838f), 518f), vec2<u32>(4294967295u, global2.c)).b, vec3<bool>(global1.c.x, false, true), Struct_1(vec3<bool>(false, global2.b.x, true), global2.b, global1.d.c))), vec3<bool>(global2.a.x, 1i <= _wgslsmith_dot_vec2_i32(vec2<i32>(-8814i, arg_1), u_input.e), global1.c.x), Struct_2(func_2(global2.b, ~1u, Struct_3(vec3<bool>(false, global2.b.x, global1.d.b.x), global1.d.a.x, Struct_2(global1.a, global1.b, global1.c, Struct_1(vec3<bool>(false, global1.a.a.x, true), global2.b, u_input.d)), vec4<f32>(arg_2, global0.x, global1.b, global1.b), 145f), ~vec2<u32>(4294967295u, global2.c)).d, _wgslsmith_f_op_f32(func_1(Struct_3(global2.b.wzw, false, Struct_2(Struct_1(global1.a.b.xxx, global2.b, 1u), arg_2, vec3<bool>(global1.a.b.x, true, false), global1.a), vec4<f32>(-1278f, -434f, global0.x, 1862f), 218f))), !vec3<bool>(global2.b.x, global1.c.x, true), Struct_1(select(vec3<bool>(false, global2.a.x, global2.b.x), global2.a, global1.c), vec4<bool>(global2.b.x, true, global1.d.a.x, global2.b.x), 7244u)), Struct_2(global1.d, _wgslsmith_f_op_f32(f32(-1f) * -706f), global1.c, func_4(func_2(global1.d.b, 0u, Struct_3(vec3<bool>(false, false, global2.a.x), false, Struct_2(global1.d, -774f, vec3<bool>(false, global2.b.x, global1.a.a.x), global1.a), vec4<f32>(global1.b, 604f, -990f, -1069f), global0.x), u_input.c.yy), !vec3<bool>(global1.d.a.x, global2.b.x, global2.a.x), Struct_2(Struct_1(vec3<bool>(false, true, global1.a.b.x), global2.b, 54642u), -1598f, vec3<bool>(false, true, global1.a.a.x), Struct_1(vec3<bool>(global2.b.x, true, true), global1.a.b, u_input.c.x)), func_2(vec4<bool>(false, global2.b.x, global2.a.x, global1.d.a.x), 29692u, Struct_3(global1.d.a, false, Struct_2(global1.d, global1.b, global2.b.ywz, global1.d), vec4<f32>(-948f, global1.b, global0.x, global1.b), global0.x), vec2<u32>(global1.a.c, global1.d.c))).a)).a.b, ~global1.a.c, Struct_3(!vec3<bool>(false, false, global2.b.x || global2.a.x), false | global2.b.x, Struct_2(func_2(global2.b, ~4294967295u, Struct_3(vec3<bool>(global2.a.x, global2.a.x, global1.c.x), global2.b.x, Struct_2(Struct_1(global1.c, global1.d.b, global2.c), arg_2, vec3<bool>(true, global1.d.b.x, global2.a.x), Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, global2.a.x, false, global1.c.x), 67750u)), vec4<f32>(1000f, global0.x, 183f, 1084f), 222f), u_input.c.xx).d, global0.x, vec3<bool>(!global1.d.a.x, true, true), Struct_1(func_2(vec4<bool>(global1.d.a.x, global1.a.b.x, false, global2.b.x), 52355u, Struct_3(global1.a.a, global2.b.x, Struct_2(Struct_1(vec3<bool>(false, true, global1.a.b.x), global2.b, global2.c), 223f, global1.a.a, Struct_1(vec3<bool>(global1.c.x, global2.b.x, global1.a.b.x), vec4<bool>(global1.c.x, false, false, global2.a.x), 1u)), vec4<f32>(584f, arg_2, -290f, global1.b), arg_2), vec2<u32>(global1.a.c, global1.d.c)).d.b.xzy, vec4<bool>(false, global2.a.x, global1.c.x, true), ~global1.d.c)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, 997f, arg_2, -3171f)) - vec4<f32>(global1.b, arg_2, -153f, global1.b)), vec4<f32>(_wgslsmith_f_op_f32(502f - 1114f), arg_2, -1994f, _wgslsmith_f_op_f32(-1871f + -568f)))), _wgslsmith_f_op_f32(f32(-1f) * -387f)), ~u_input.c.yx);
    let var_1 = ((false || global2.a.x) | func_3(~6903u, func_3(4294967295u, false, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, -1602f, 1248f, var_0.b), vec4<f32>(arg_2, global0.x, -1416f, 2075f)))).x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global1.b, global0.x, arg_2))).x) && all(!vec2<bool>(!global2.a.x, false));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, -667f))), global0.x)), arg_2, _wgslsmith_f_op_f32(-func_4(func_4(Struct_2(var_0.a, 941f, global1.c, Struct_1(var_0.a.b.yzw, vec4<bool>(false, true, false, var_0.c.x), u_input.b)), vec3<bool>(var_0.c.x, false, global1.a.b.x), Struct_2(Struct_1(global1.c, var_0.d.b, var_0.a.c), arg_2, global1.c, Struct_1(vec3<bool>(global2.a.x, true, global2.a.x), vec4<bool>(global2.b.x, var_0.d.a.x, global2.a.x, true), 0u)), Struct_2(global1.d, 812f, global1.a.b.wyw, global1.d)), vec3<bool>(var_1, var_1, false), Struct_2(global1.a, global1.b, vec3<bool>(false, false, var_1), var_0.d), Struct_2(Struct_1(var_0.a.b.yxy, global1.a.b, 4294967295u), 603f, global1.c, global1.d)).b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-529f, global0.x, _wgslsmith_div_f32(-1159f, global1.b), _wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1438f, global1.b, -1000f, global0.x)))) + _wgslsmith_f_op_vec4_f32(func_5(i32(-1i) * -1i, max(13749i, u_input.e.x), _wgslsmith_f_op_f32(func_1(Struct_3(global2.a, true, Struct_2(Struct_1(global2.a, global1.a.b, global1.d.c), -885f, global2.b.xyy, Struct_1(global2.b.xxy, global2.b, 39859u)), vec4<f32>(global0.x, -1329f, global0.x, 716f), 504f)))))))) + vec4<f32>(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1396f), global1.b, -1000f));
    let var_1 = select(func_2(select(global1.d.b, select(select(global1.d.b, global1.a.b, global1.d.b), global2.b, global1.d.b), !(!vec4<bool>(global1.c.x, global2.a.x, global2.b.x, global1.c.x))), u_input.c.x ^ ~global2.c, Struct_3(func_4(Struct_2(Struct_1(global1.d.a, vec4<bool>(global2.a.x, global1.a.b.x, false, true), 4294967295u), 681f, global2.a, global1.d), vec3<bool>(global1.c.x, global2.b.x, false), func_4(Struct_2(Struct_1(vec3<bool>(false, global1.d.b.x, true), global2.b, 27745u), -1490f, vec3<bool>(global1.d.a.x, global2.a.x, true), Struct_1(vec3<bool>(false, true, global1.d.a.x), vec4<bool>(global2.b.x, false, global2.a.x, true), 1u)), vec3<bool>(global2.b.x, true, global2.b.x), Struct_2(Struct_1(global1.c, global1.d.b, 1u), global1.b, vec3<bool>(false, global2.a.x, global1.a.a.x), Struct_1(global2.a, global2.b, 2303u)), Struct_2(global1.d, var_0.x, vec3<bool>(global1.c.x, global2.b.x, global2.b.x), global1.d)), Struct_2(Struct_1(vec3<bool>(global1.a.a.x, global1.c.x, global2.a.x), global1.a.b, 0u), 1644f, vec3<bool>(true, false, global1.d.a.x), Struct_1(global1.a.b.yyz, global2.b, u_input.b))).a.b.yxz, -2147483647i != _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i), vec2<i32>(39080i, u_input.a.x)), Struct_2(global1.d, 2022f, select(vec3<bool>(global2.b.x, global2.b.x, false), global1.c, vec3<bool>(false, global1.a.a.x, global1.a.a.x)), global1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-922f, 239f, global1.b, global1.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, var_0.x, global0.x, 540f) * var_0)), _wgslsmith_f_op_f32(floor(var_0.x))), ~u_input.c.yx).a.a.zx, !select(select(!global1.c.yz, func_3(global1.a.c, true, var_0), false), vec2<bool>(global2.b.x || true, global2.a.x), true && select(true, true, true)), global2.a.yy);
    let var_2 = ~(4294967295u >> (_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(global2.c, abs(global1.d.c))) % 32u));
    let var_3 = -(~(~(-25038i)));
    var var_4 = !(!var_1);
    let var_5 = true && global2.b.x;
    let var_6 = func_2(!(!global2.b), 10397u, Struct_3(func_4(func_4(Struct_2(global1.a, 1000f, global1.c, global1.a), !global2.a, func_2(global1.d.b, global1.d.c, Struct_3(global1.d.b.xwx, var_4.x, Struct_2(Struct_1(vec3<bool>(true, false, var_4.x), global2.b, u_input.d), 1073f, global2.a, Struct_1(vec3<bool>(global2.a.x, var_5, var_1.x), vec4<bool>(false, false, global1.a.a.x, var_1.x), global2.c)), vec4<f32>(-467f, global0.x, -1000f, global0.x), -1051f), vec2<u32>(4294967295u, global2.c)), Struct_2(global1.d, var_0.x, vec3<bool>(global1.a.b.x, var_1.x, var_1.x), global1.a)), func_2(select(vec4<bool>(var_4.x, false, false, false), vec4<bool>(var_5, true, true, var_4.x), true), 1u, Struct_3(global1.c, var_5, Struct_2(global1.d, var_0.x, global2.b.xyz, global1.d), var_0, global1.b), vec2<u32>(global2.c, global2.c)).a.b.zxx, Struct_2(global1.d, _wgslsmith_f_op_f32(sign(global0.x)), !global2.b.zyx, func_4(Struct_2(global1.d, global0.x, global2.b.yxz, Struct_1(vec3<bool>(var_4.x, var_4.x, var_1.x), global2.b, 1u)), vec3<bool>(true, global2.b.x, global2.b.x), Struct_2(global1.d, global0.x, vec3<bool>(var_1.x, true, false), Struct_1(vec3<bool>(global1.d.a.x, global1.d.b.x, var_4.x), vec4<bool>(false, global2.b.x, false, false), 4294967295u)), Struct_2(Struct_1(vec3<bool>(false, true, true), global2.b, 47935u), var_0.x, vec3<bool>(false, true, global1.c.x), Struct_1(vec3<bool>(global1.d.b.x, true, true), global1.d.b, 62209u))).d), func_4(func_2(global2.b, global1.a.c, Struct_3(global1.a.b.ywy, var_5, Struct_2(global1.a, var_0.x, vec3<bool>(global2.a.x, var_5, false), Struct_1(vec3<bool>(false, var_5, true), global1.a.b, var_2)), vec4<f32>(1000f, -1000f, global0.x, -1000f), 1000f), vec2<u32>(4294967295u, 89867u)), vec3<bool>(global2.a.x, var_4.x, true), func_4(Struct_2(Struct_1(global1.c, vec4<bool>(global1.d.b.x, true, var_4.x, global1.c.x), global1.d.c), -520f, vec3<bool>(true, true, false), global1.a), global1.d.b.wzz, Struct_2(global1.d, 1186f, global1.d.a, Struct_1(vec3<bool>(false, global2.b.x, true), vec4<bool>(global2.a.x, false, var_4.x, false), global1.a.c)), Struct_2(global1.d, 649f, global2.a, Struct_1(global1.a.a, vec4<bool>(var_5, var_4.x, global2.b.x, false), global1.a.c))), func_2(vec4<bool>(global1.d.a.x, false, var_1.x, false), 24909u, Struct_3(vec3<bool>(true, true, false), true, Struct_2(Struct_1(global1.d.b.xxx, global2.b, global2.c), 396f, global2.b.zyz, Struct_1(global2.a, vec4<bool>(var_4.x, false, var_5, false), 4294967295u)), vec4<f32>(-1007f, var_0.x, 433f, 292f), global1.b), vec2<u32>(var_2, 1u)))).c, select(global1.c.x, true, true), func_4(func_4(Struct_2(Struct_1(vec3<bool>(false, var_5, true), global2.b, var_2), -614f, global1.d.b.wzw, global1.a), !global2.b.wyy, Struct_2(global1.d, global1.b, global2.b.zzy, Struct_1(vec3<bool>(true, false, true), global1.a.b, 59627u)), Struct_2(Struct_1(vec3<bool>(global1.d.a.x, var_5, false), vec4<bool>(var_1.x, var_4.x, false, false), global1.a.c), 445f, vec3<bool>(true, var_1.x, true), global1.d)), !vec3<bool>(global2.b.x, var_1.x, false), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<bool>(global2.b.x, var_1.x, true, var_1.x), 39009u), _wgslsmith_f_op_f32(select(-185f, global1.b, var_4.x)), !vec3<bool>(var_4.x, false, false), Struct_1(vec3<bool>(false, false, true), global2.b, global1.d.c)), func_2(global1.d.b, 52361u, Struct_3(vec3<bool>(false, global2.a.x, false), var_5, Struct_2(Struct_1(vec3<bool>(var_5, false, global2.b.x), vec4<bool>(false, global2.a.x, var_4.x, global2.b.x), 4294967295u), -2668f, vec3<bool>(global2.a.x, var_5, var_1.x), global1.d), vec4<f32>(global0.x, var_0.x, global1.b, global1.b), -337f), u_input.c.zx >> (vec2<u32>(global1.d.c, global2.c) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, _wgslsmith_f_op_f32(-1343f - global1.b), _wgslsmith_div_f32(397f, global1.b), _wgslsmith_f_op_f32(var_0.x * -637f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 * vec4<f32>(-110f, 278f, 732f, 936f)))), _wgslsmith_f_op_vec4_f32(func_5(1i, -13388i, -283f)).x), u_input.c.yx);
    var var_7 = vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(var_3, var_3, 0i)), min(vec3<i32>(0i, 24205i, 0i), vec3<i32>(-10182i, var_3, -53456i)) | countOneBits(vec3<i32>(u_input.a.x, var_3, var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(u_input.c | vec3<u32>(62473u, max(var_2, global2.c), ~4294967295u), ~countOneBits(vec3<u32>(71342u, var_2, var_2)) >> (select(vec3<u32>(global2.c, 4294967295u, 130801u), u_input.c, all(vec3<bool>(var_1.x, global2.a.x, global2.b.x))) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 447f, 345f, var_6.b))) + var_0), _wgslsmith_f_op_f32(sign(1f)), abs(~vec2<u32>(~40558u, var_2 << (global1.d.c % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0, _wgslsmith_f_op_vec4_f32(-var_0), !vec4<bool>(false, true, var_6.c.x, false))))));
}

