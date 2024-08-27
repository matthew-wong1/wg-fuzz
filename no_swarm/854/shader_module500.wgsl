struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(-8523i);

var<private> global2: vec4<u32> = vec4<u32>(124504u, 48139u, 6009u, 4294967295u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -541f)))) + _wgslsmith_f_op_f32(sign(143f))));
    return _wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(13452u, u_input.a, global2.x, global2.x), vec4<u32>(global2.x, global2.x, 0u, global2.x), vec4<bool>(false, false, true, false))) ^ vec4<u32>(0u, ~1u, global2.x, 6222u), vec4<u32>(_wgslsmith_add_u32(firstTrailingBit(~0u), abs(~u_input.a)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(global2.x, 1u), 1u, 83392u), ~(~1u), 0u));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = vec4<u32>(countOneBits(47157u) & ~u_input.a, ~abs(~(1u & u_input.b)), u_input.b, select(_wgslsmith_dot_vec3_u32((global2.zxx & global2.yyz) << (global2.yyw % vec3<u32>(32u)), global2.xxy & ~vec3<u32>(global2.x, 0u, 4294967295u)), 46784u, false));
    var var_1 = Struct_2(~_wgslsmith_div_i32(-global0.a, ~(-2147483647i) & global1.a));
    var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x | abs(select(var_0.x, 1728u, false)), ~select(_wgslsmith_sub_u32(u_input.a, 4294967295u), 20963u, arg_0.x > arg_0.x), 100484u, u_input.b >> (~func_3() % 32u)), firstTrailingBit(vec4<u32>(~_wgslsmith_sub_u32(32314u, 26705u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(43683u, var_0.x), 0u), var_0.x << (1u % 32u), u_input.a)));
    global2 = ~vec4<u32>(62640u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 28954u), vec2<u32>(4294967295u, global2.x))), ~u_input.b, u_input.b);
    global0 = Struct_2(u_input.c.x);
    return Struct_2(reverseBits(-1i));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2) -> u32 {
    let var_0 = select(vec4<bool>(false, (-1i & arg_2.a) >= arg_2.a, true, (_wgslsmith_mod_u32(global2.x, 13926u) <= 1u) == true), vec4<bool>(abs(abs(arg_0)) != (select(4294967295u, 1u, false) << (arg_0 % 32u)), false, true, true & !(arg_2.a != 1i)), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)));
    var var_1 = countOneBits(1i);
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>((-global1.a ^ ~u_input.c.x) & ~1i, global1.a, -16141i << (_wgslsmith_clamp_u32(~u_input.b, _wgslsmith_div_u32(arg_1.x, u_input.a), arg_1.x) % 32u)), vec3<i32>(global1.a & -_wgslsmith_mod_i32(global1.a, arg_2.a), -abs(~(-1i)), ~(-u_input.c.x) ^ ~u_input.c.x));
    let var_3 = !select(var_0, !select(select(var_0, var_0, var_0.x), vec4<bool>(true, var_0.x, false, false), var_0), vec4<bool>(true & !var_0.x, var_0.x || true, !var_0.x, any(vec4<bool>(true, true, true, true))));
    let var_4 = -30172i;
    return ~4294967295u;
}

fn func_1() -> vec4<bool> {
    let var_0 = ~(-1i);
    var var_1 = ~(vec4<u32>(_wgslsmith_add_u32(u_input.b, _wgslsmith_div_u32(global2.x, 77813u)), func_4(~u_input.a, ~vec3<u32>(u_input.b, 4294967295u, u_input.a), func_2(vec4<f32>(487f, -628f, 344f, -585f))), 23430u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 25790u, 87868u)), ~global2.ywz)) & firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(11601u, 3727u, u_input.a, 4294967295u), firstLeadingBit(vec4<u32>(18275u, u_input.b, global2.x, global2.x)))));
    var_1 = vec4<u32>(35769u, 0u, ~(~global2.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global2.yz, var_1.yz), func_4(~60188u, var_1.yzz << (var_1.zww % vec3<u32>(32u)), Struct_2(-1i)))) | _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 108558u, 27593u, u_input.b) << ((firstTrailingBit(vec4<u32>(global2.x, u_input.a, u_input.a, global2.x)) << (abs(vec4<u32>(74445u, u_input.a, 11509u, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(45123u, global2.x, global2.x, u_input.a), select(min(vec4<u32>(59300u, global2.x, var_1.x, var_1.x), vec4<u32>(4294967295u, global2.x, var_1.x, var_1.x)), _wgslsmith_div_vec4_u32(vec4<u32>(8082u, 1u, u_input.b, global2.x), vec4<u32>(var_1.x, 42830u, global2.x, 24353u)), false)));
    global1 = func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(455f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(468f + -701f))), -1716f, -835f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-201f + 263f), 1f, -454f, 1f), vec4<f32>(1f, 1f, 1f, 1f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, true, true))))))));
    let var_2 = vec2<i32>(-global1.a, abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, global1.a, 48420i, 19521i), vec4<i32>(-2147483647i, -1i, global1.a, -2147483647i)) << (global2.x % 32u)));
    return select(!vec4<bool>(true, false, false, (global2.x << (var_1.x % 32u)) <= ~u_input.b), select(vec4<bool>(all(vec2<bool>(true, true)), true, any(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), vec4<bool>(true, global1.a == firstTrailingBit(global0.a), !any(vec2<bool>(false, false)), false && any(vec3<bool>(false, false, false))), !vec4<bool>(true, true, 1u >= u_input.a, any(vec4<bool>(false, false, false, true)))), any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_1());
    global0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(913f, -870f, -818f, 498f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1084f, 597f, -500f, -1807f) + vec4<f32>(-1003f, 366f, -186f, 1171f))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-507f, -223f, -1100f, 128f) * vec4<f32>(-622f, 372f, 1232f, -1150f)))))));
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-265f)));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-904f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1187f))), min(2147483647i, ~u_input.c.x) < min(2147483647i, 2147483647i))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-1986f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-458f)))))));
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1028f * 1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3, 289f))), _wgslsmith_f_op_f32(-var_3)))));
    var var_4 = Struct_1(any(var_0.yzy), _wgslsmith_div_vec2_u32(~(~select(vec2<u32>(u_input.a, var_1), global2.zw, var_0.x)), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, global2.x), global2.zz)), ~29758u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + _wgslsmith_f_op_f32(767f - 2666f)), _wgslsmith_f_op_f32(ceil(var_3)), _wgslsmith_f_op_f32(var_3 + var_3))), var_0.x);
    let var_5 = Struct_1(var_0.x, _wgslsmith_sub_vec2_u32(~var_4.b, var_4.b), func_4(_wgslsmith_dot_vec2_u32(~max(global2.wy, global2.xz), select(vec2<u32>(global2.x, 0u), vec2<u32>(11147u, 0u), select(true, false, true))), ~(~global2.xxz), Struct_2(u_input.c.x)), var_4.d, var_0.x & func_1().x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global0.a, _wgslsmith_mult_i32(_wgslsmith_mult_i32(36794i, -global0.a), -39106i), ~countOneBits(-13571i)), _wgslsmith_add_vec4_u32(~vec4<u32>(global2.x, 4294967295u, var_5.c, var_1), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_5.b.x, 38616u, 69788u, var_4.b.x), vec4<u32>(4294967295u, var_1, var_5.b.x, var_4.c) & vec4<u32>(25488u, var_5.b.x, 53389u, global2.x))) << (vec4<u32>(~_wgslsmith_mod_u32(4294967295u, 71687u), global2.x, _wgslsmith_sub_u32(4294967295u | global2.x, var_4.b.x), var_5.c >> (~var_1 % 32u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-var_4.d.yx));
}

