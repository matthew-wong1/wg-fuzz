struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 0i, vec2<i32>(-40i, 1i), vec4<u32>(1u, 4724u, 74936u, 71216u), 4294967295u);

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(4294967295u, 2072u), vec2<u32>(0u, 6317u), vec2<u32>(0u, 9150u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 25617u), vec2<u32>(1u, 14393u), vec2<u32>(7930u, 4294967295u), vec2<u32>(50683u, 36238u), vec2<u32>(4780u, 77544u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 51598u), vec2<u32>(0u, 9903u), vec2<u32>(116944u, 58156u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(1792u, 45428u), vec2<u32>(18084u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 57139u), vec2<u32>(0u, 10605u), vec2<u32>(48176u, 1u), vec2<u32>(33919u, 4294967295u), vec2<u32>(30937u, 0u), vec2<u32>(57600u, 22117u), vec2<u32>(1u, 42855u), vec2<u32>(15411u, 23787u), vec2<u32>(4294967295u, 28881u));

var<private> global3: f32 = 989f;

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_add_vec4_u32(~abs(vec4<u32>(23710u, arg_0.d.d.x, u_input.b, 4294967295u)) >> (~(~global1.d) % vec4<u32>(32u)), ~select(arg_0.b.d, ~vec4<u32>(60113u, 3101u, arg_0.d.d.x, var_0.b.d.x), false) & ~firstLeadingBit(_wgslsmith_mod_vec4_u32(var_0.d.d, vec4<u32>(4294967295u, 0u, 1u, global0.d.x))));
    var var_2 = vec2<bool>(true, global1.a);
    var var_3 = vec2<f32>(-1490f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -920f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-587f - 797f))))));
    var var_4 = arg_0.b;
    return 13800u;
}

fn func_2() -> bool {
    let var_0 = Struct_1(false, -firstLeadingBit(-5729i << (func_3(Struct_2(global0.c.x, Struct_1(global0.a, 0i, u_input.d.yw, global0.d, 1u), global0.c, Struct_1(false, -19825i, vec2<i32>(2147483647i, global0.b), vec4<u32>(global0.d.x, global0.e, 28484u, u_input.b), global1.d.x))) % 32u)), u_input.d.zw, ~reverseBits(global1.d), max(func_3(Struct_2(global0.b, Struct_1(false, global1.b, global1.c, vec4<u32>(global1.e, 86477u, 56497u, u_input.b), 49556u), -global1.c, Struct_1(true, u_input.d.x, vec2<i32>(global0.c.x, 2147483647i), global1.d, global0.e))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(31088u, 15354u), _wgslsmith_dot_vec2_u32(vec2<u32>(40579u, 1u), u_input.a.zz)), global1.d.x)));
    var var_1 = !(!select(vec2<bool>(global1.a || false, true), vec2<bool>(var_0.a & false, global0.a), !vec2<bool>(false, var_0.a)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1936f)));
    global1 = var_0;
    var var_3 = min(~u_input.d.xyz, vec3<i32>(0i, countOneBits(_wgslsmith_dot_vec3_i32(~u_input.d.zwz, -vec3<i32>(u_input.c.x, global1.c.x, 0i))), u_input.c.x));
    return all(select(vec4<bool>(_wgslsmith_f_op_f32(-var_2) < _wgslsmith_f_op_f32(max(1344f, var_2)), any(vec4<bool>(true, false, true, true)) && true, !(-1128f < var_2), global1.a), select(!select(vec4<bool>(global0.a, global1.a, false, global0.a), vec4<bool>(true, var_0.a, true, false), vec4<bool>(true, true, var_1.x, false)), vec4<bool>(true, global1.a, global1.d.x >= 71090u, any(vec4<bool>(var_0.a, true, var_0.a, var_0.a))), vec4<bool>(global1.a, var_0.a != false, false, global0.a)), !select(!vec4<bool>(false, false, true, global1.a), select(vec4<bool>(true, false, global1.a, global0.a), vec4<bool>(global0.a, true, false, false), vec4<bool>(false, var_1.x, global0.a, true)), global1.a)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec4<f32>) -> vec4<u32> {
    let var_0 = vec2<u32>(~76677u, 1u);
    let var_1 = _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_add_i32(firstTrailingBit(24029i), -5483i >> (global0.e % 32u)));
    let var_2 = vec3<i32>(u_input.c.x, 2147483647i, 0i) >> (_wgslsmith_sub_vec3_u32(global1.d.xxy, ~(~(global1.d.yyy & global1.d.xzy))) % vec3<u32>(32u));
    var var_3 = !select(vec4<bool>(~global0.e == ~51976u, false, false, func_2()), !(!select(vec4<bool>(global1.a, global1.a, true, false), vec4<bool>(false, global1.a, true, global0.a), vec4<bool>(global0.a, global0.a, global0.a, true))), vec4<bool>(global1.a, !global0.a, !(!global1.a), all(select(vec4<bool>(true, global0.a, global1.a, true), vec4<bool>(false, global1.a, true, global0.a), global0.a))));
    return ~global1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    global1 = Struct_1(!global0.a == false, -_wgslsmith_sub_i32(-_wgslsmith_div_i32(-51116i, global1.c.x), _wgslsmith_mod_i32(-global1.b, ~global1.c.x)), abs(vec2<i32>(~(i32(-1i) * -4173i), firstTrailingBit(-39070i))), ~func_1(-109f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1479f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-486f, -649f, 158f, -656f)))), 4294967295u);
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(global0.d.x, max(16795u, global0.d.x)), 4294967295u, global1.d.x);
    var var_2 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(global0.c.x, firstTrailingBit(0i), _wgslsmith_div_i32(-105668i, 58459i)), _wgslsmith_mod_i32(var_0.x, min(2147483647i, min(-2837i, -2147483647i)))), Struct_1(global1.a, var_0.x, vec2<i32>(~global0.c.x, ~2147483647i >> (firstTrailingBit(64151u) % 32u)), ~global0.d, reverseBits(global1.e)), _wgslsmith_add_vec2_i32(vec2<i32>(~global1.c.x, -2147483647i), -u_input.d.yw) ^ _wgslsmith_div_vec2_i32(~vec2<i32>(-7960i, -19653i), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-12525i, global0.c.x), global0.c, global0.c))), Struct_1(true, u_input.c.x, _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b, u_input.d.x), global1.c & vec2<i32>(45501i, 13105i), global1.c) << ((vec2<u32>(global1.e, 4294967295u) >> (~vec2<u32>(global1.e, var_1.x) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(~global1.d), global1.d.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(465f * -488f) + 893f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1251f) - _wgslsmith_f_op_f32(round(-2491f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-840f - _wgslsmith_f_op_f32(-1997f - 466f)) - _wgslsmith_f_op_f32(-1623f - -1738f))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-196f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1371f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-551f, 781f, -106f) - vec3<f32>(_wgslsmith_f_op_f32(272f + 319f), 1314f, _wgslsmith_div_f32(532f, -123f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), -909f);
}

