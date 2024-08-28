struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-533f, -1539f, 110f, -435f), vec4<f32>(-538f, -632f, -424f, -1426f), vec4<f32>(-1133f, 430f, 1298f, 2538f), vec4<f32>(-649f, -536f, -236f, -859f), vec4<f32>(-1000f, 834f, -419f, -1279f), vec4<f32>(1383f, -593f, 249f, -783f), vec4<f32>(1160f, 983f, 2348f, 663f), vec4<f32>(1160f, 207f, -2812f, 1024f), vec4<f32>(-1222f, -153f, -1046f, -156f), vec4<f32>(-1021f, -496f, -1044f, -1091f), vec4<f32>(1160f, -1376f, -218f, 978f), vec4<f32>(1000f, 1171f, 911f, -1085f));

var<private> global1: Struct_2;

var<private> global2: Struct_3 = Struct_3(true, Struct_2(48457u, Struct_1(false, 44536u, vec2<bool>(false, true), 1u), vec3<i32>(1i, 0i, 1i), 33269i), i32(-2147483648), vec3<bool>(true, false, true));

var<private> global3: u32 = 4294967295u;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: f32) -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(1u, 12u)];
    var var_1 = Struct_1(!all(vec2<bool>(all(global2.d), true)), global4.b.d, global4.b.c, 17481u);
    var var_2 = vec2<u32>(~(0u >> (1u % 32u)), select(_wgslsmith_div_u32(~global2.b.b.d, 0u), 4294967295u, !all(vec4<bool>(false, false, var_1.c.x, global4.b.c.x))));
    var var_3 = Struct_2(~global2.b.b.d, Struct_1(true, 1u, !vec2<bool>(true, !global1.b.c.x), ~1u), ~vec3<i32>(arg_2, u_input.a.x ^ 1i, reverseBits(7896i)) << (reverseBits(select(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 11474u, u_input.b), vec3<u32>(u_input.b, 36244u, var_2.x)), ~vec3<u32>(global2.b.a, 151237u, 4294967295u), select(vec3<bool>(global2.b.b.c.x, false, false), global2.d, false))) % vec3<u32>(32u)), -18245i ^ (1i & _wgslsmith_clamp_i32(global4.c.x, -12272i, -global2.b.c.x)));
    global3 = 4294967295u;
    return _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_sub_i32(var_3.c.x, global4.c.x), global1.c.x) & vec3<i32>(u_input.a.x, -27671i, 2147483647i)), (max(~vec3<i32>(global4.c.x, 0i, u_input.a.x), select(var_3.c, global4.c, global4.b.c.x)) & abs(abs(vec3<i32>(-2147483647i, u_input.a.x, 1i)))) ^ max(vec3<i32>(_wgslsmith_mod_i32(-7790i, 3388i), var_3.c.x, -1i), vec3<i32>(~(-21435i), ~u_input.a.x, _wgslsmith_div_i32(global4.d, u_input.a.x))));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec2<u32>) -> f32 {
    var var_0 = vec3<i32>(~(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0), vec2<i32>(-13507i, global4.d)) << (firstLeadingBit(1u) % 32u)), u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(func_3(arg_2, -1000f, 1i, arg_2), vec3<i32>(-28879i, 2147483647i, 53013i)), u_input.a.x)) >> (select((_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, global1.a, arg_3.x), vec3<u32>(global4.a, arg_3.x, 70015u)) | _wgslsmith_add_vec3_u32(vec3<u32>(global1.b.b, arg_3.x, 37669u), vec3<u32>(29153u, 1u, 1u))) ^ ~(~vec3<u32>(0u, arg_3.x, 58756u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, arg_3.x, 0u), abs(vec3<u32>(global2.b.b.d, 0u, global4.a)) ^ min(vec3<u32>(global1.a, 18003u, global1.a), vec3<u32>(0u, global2.b.a, 0u))), select(select(vec3<bool>(arg_1.x, arg_1.x, true), arg_1, true), !arg_1, arg_1)) % vec3<u32>(32u));
    var var_1 = Struct_3(true, global2.b, u_input.a.x, !(!vec3<bool>(false, !arg_1.x, true)));
    return _wgslsmith_f_op_f32(-674f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1866f)))))));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-401f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - 1000f), _wgslsmith_f_op_f32(1918f - _wgslsmith_div_f32(736f, _wgslsmith_f_op_f32(func_2(-5338i, vec3<bool>(true, global4.b.c.x, global1.b.a), 1167f, vec2<u32>(0u, u_input.b)))))));
    global3 = firstTrailingBit(~_wgslsmith_div_u32(_wgslsmith_sub_u32(max(13398u, 1u), 403u), 11358u << (_wgslsmith_sub_u32(1u, u_input.b) % 32u)));
    let var_1 = global2.b;
    global3 = ~(~0u);
    global0 = array<vec4<f32>, 12>();
    return -26860i;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_1 {
    global3 = _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(~arg_1.x, 0u) << (29895u % 32u), reverseBits(arg_0.b.a), ~(~arg_1.x));
    global4 = arg_0.b;
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 31828u) & firstTrailingBit(vec2<u32>(33885u, u_input.b)), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_1, vec3<u32>(4294967295u, u_input.b, 56801u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_0.b.a, 32679u), arg_1, vec3<u32>(global4.a, 31342u, global4.b.d))), _wgslsmith_sub_u32(global1.b.d, u_input.b) << (~0u % 32u))), global4.b, -u_input.a.wyz, arg_0.b.d);
    var var_1 = global1.b.c.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(146f, -499f), _wgslsmith_div_f32(-1689f, -334f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-582f, 1075f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(486f, -133f), vec2<f32>(1000f, -1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -918f), vec2<f32>(-583f, -229f), true)), select(var_0.b.a, true, arg_0.d.x)))))));
    return Struct_1(all(!arg_0.d), ~firstTrailingBit(~global1.a), vec2<bool>(false, any(vec3<bool>(global1.c.x != u_input.a.x, all(vec3<bool>(false, var_0.b.c.x, true)), arg_0.a))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true & global1.b.a, all(!vec4<bool>(false, false, true, global4.b.c.x)), true), vec3<bool>(any(select(vec4<bool>(false, true, global2.a, global1.b.a), vec4<bool>(global4.b.a, global2.b.b.c.x, true, false), true)), true, !global1.b.c.x), false), global2.d, !select(vec3<bool>(global2.d.x, global4.b.a, false == global2.b.b.c.x), vec3<bool>(true, true, true), global2.d));
    var var_1 = -u_input.a.x;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-126f, -1010f) - _wgslsmith_f_op_f32(132f - -2215f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-258f)), _wgslsmith_f_op_f32(f32(-1f) * -693f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-914f)) + -499f)), -215f);
    var var_3 = func_4(Struct_3(all(global2.d), Struct_2(~(u_input.b ^ 17858u), global2.b.b, vec3<i32>(66132i, 2147483647i, func_1()), func_3(1010f, var_2.x, 0i, var_2.x).x), u_input.a.x, !var_0), reverseBits(~(~(~vec3<u32>(u_input.b, u_input.b, u_input.b)))));
    var var_4 = Struct_1((0i << (_wgslsmith_div_u32(_wgslsmith_sub_u32(36564u, global2.b.b.b), ~1u) % 32u)) <= u_input.a.x, 66678u, !global4.b.c, global1.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(456f)), _wgslsmith_f_op_f32(-var_2.x)), -316f, min(-18126i, global2.c) == global4.c.x)), _wgslsmith_f_op_f32(floor(-1559f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1102f, var_2.x) + vec2<f32>(-479f, -566f)), vec2<f32>(1000f, -402f))))), abs(firstTrailingBit(vec3<u32>(var_4.d, 8627u, 51148u) | vec3<u32>(var_4.b, 38432u, var_3.d))));
}

