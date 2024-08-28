struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -640f;

var<private> global1: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(0i, -12007i, 0i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(29824i, -27404i, -5075i));

var<private> global2: array<Struct_2, 10>;

var<private> global3: f32 = 1477f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-524f * 727f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(956f, -902f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(840f)), 3085f)))), _wgslsmith_f_op_f32(round(1234f)), -390f);
    let var_1 = Struct_2(var_0.yy, vec3<bool>(any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true))), false, all(vec4<bool>(any(vec3<bool>(false, true, false)), true, false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(ceil(-242f)), _wgslsmith_f_op_f32(-539f * var_0.x), _wgslsmith_f_op_f32(-525f - 1000f), var_0.x))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, var_0.x, _wgslsmith_div_f32(2169f, 126f), var_0.x)))), abs(u_input.a));
    var var_2 = var_1.b.x;
    var var_3 = Struct_1(~(~(~(vec4<u32>(var_1.d, 64684u, var_1.d, 1u) | vec4<u32>(var_1.d, u_input.a, 17869u, 62578u)))), ~u_input.a >= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.d, 0u), countOneBits(reverseBits(vec3<u32>(var_1.d, var_1.d, var_1.d)))), var_1.b.xy, 2147483647i, var_1.d);
    global0 = _wgslsmith_f_op_f32(var_1.a.x * -1184f);
    return -1245f;
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<i32>, 3>();
    var var_0 = true || !(!(u_input.a != 11334u) | false);
    var var_1 = ~firstTrailingBit(-(~(-2147483647i)));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(func_3()));
    return Struct_1(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a, firstLeadingBit(1u)), ~_wgslsmith_mod_u32(67789u, u_input.a), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), countOneBits(vec2<u32>(28165u, u_input.a)))), min(~_wgslsmith_div_u32(u_input.a, u_input.a), ~u_input.a << (0u % 32u)), u_input.a, ~(13035u & u_input.a) & 56538u), all(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true))) || all(vec3<bool>(select(true, true, false), true, true)), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true), vec2<bool>(true, true), true == all(vec2<bool>(true, false))), vec2<bool>(true, true), select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true, select(false, false, false)), vec2<bool>(select(true, true, false), true))), 0i, u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(floor(359f));
    global0 = -842f;
    var var_0 = func_2();
    global0 = _wgslsmith_f_op_f32(func_3());
    var_0 = arg_2;
    return Struct_3(any(vec2<bool>(var_0.c.x, all(!vec4<bool>(false, false, arg_3.b.x, false)))), global1[_wgslsmith_index_u32(~55187u, 3u)], arg_3.b);
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = Struct_3(true, global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~u_input.a, u_input.a) & (u_input.a << (abs(~14621u) % 32u)), 3u)], vec3<bool>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 42041u), vec3<bool>(var_0.x, true, var_0.x)), vec3<u32>(u_input.a, u_input.a, 42731u)) == (u_input.a << (~1u % 32u)), all(vec3<bool>(true, var_0.x, true)) | true, var_0.x));
    var var_2 = var_1.b.x;
    var var_3 = func_4(global2[_wgslsmith_index_u32(u_input.a, 10u)], firstTrailingBit(~(-var_1.b.x)), func_2(), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1643f, 592f))), -1915f), !select(var_1.c, select(var_1.c, vec3<bool>(true, false, true), var_1.c.x), select(var_1.c, var_1.c, var_1.c)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1094f))), arg_0.x, arg_0.x, _wgslsmith_f_op_f32(func_3())), abs(u_input.a | reverseBits(4294967295u))));
    let var_4 = -2147483647i;
    return select(_wgslsmith_mult_i32(-func_2().d, var_1.b.x), 15933i, false);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<bool>) -> vec3<f32> {
    let var_0 = ~(vec2<u32>(abs(0u | u_input.a), u_input.a) | ~vec2<u32>(15560u, u_input.a));
    let var_1 = func_2();
    let var_2 = vec3<u32>(reverseBits(max(~var_1.a.x, 18619u & var_0.x)), ~(~(abs(480u) | ~var_0.x)), _wgslsmith_mult_u32(~(~_wgslsmith_div_u32(var_1.e, var_0.x)), select(1u, ~(~7875u), true)));
    global1 = array<vec3<i32>, 3>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_2) - _wgslsmith_f_op_f32(trunc(arg_2))), arg_2), _wgslsmith_div_f32(-1479f, _wgslsmith_f_op_f32(round(arg_2)))) + _wgslsmith_div_f32(740f, -721f));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(626f, arg_2, 1689f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(745f, 487f, arg_2), vec3<f32>(arg_2, -1000f, 135f), var_1.c.x)))) * vec3<f32>(-962f, _wgslsmith_f_op_f32(-398f - _wgslsmith_f_op_f32(exp2(arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + 175f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1417f * -218f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1597f, -540f, false))))) - -188f);
    var var_0 = vec2<u32>(countOneBits(u_input.a & (min(u_input.a, 1u) << (max(u_input.a, u_input.a) % 32u))), ~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(7430u, 9185u, u_input.a, 4294967295u), vec4<u32>(50802u, u_input.a, 18009u, u_input.a))));
    var var_1 = ~(~abs(abs(vec2<u32>(1u, 60934u))) >> (abs(vec2<u32>(1u, _wgslsmith_sub_u32(var_0.x, 29893u))) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(func_5(vec4<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(-31285i, -1275i, 2147483647i), global1[_wgslsmith_index_u32(23289u, 3u)] << (vec3<u32>(29515u, var_0.x, u_input.a) % vec3<u32>(32u))), 1i >> ((var_0.x >> (var_1.x % 32u)) % 32u), all(vec2<bool>(true, true)) | all(vec3<bool>(false, true, true))), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), -_wgslsmith_dot_vec2_i32(vec2<i32>(24841i, -2147483647i), vec2<i32>(1i, 1i)), 0i), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 0i, 1i), vec4<i32>(-1i, -8853i, 2147483647i, -47653i), vec4<i32>(-1i, 3861i, -61360i, -10789i)) ^ firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, -1i, 1i))) ^ ~min(-vec4<i32>(0i, -15105i, -36361i, -14557i), max(vec4<i32>(30332i, 0i, 2147483647i, -1i), vec4<i32>(-1i, 2147483647i, 64983i, 23268i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -144f))) * 2495f)), !(!func_2().c)));
    global2 = array<Struct_2, 10>();
    global2 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-898f - var_2.x))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(min(-267f, var_2.x))), 2147483647i, -reverseBits(vec3<i32>(-1i, 1i, -2147483647i)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(15579i, -1i)), ~(-5165i), 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-29571i, -2147483647i, -1i) << (vec3<u32>(34317u, var_0.x, var_1.x) % vec3<u32>(32u)), ~global1[_wgslsmith_index_u32(4294967295u, 3u)]), global1[_wgslsmith_index_u32(min(~0u, firstLeadingBit(var_1.x)), 3u)]), -1209f);
}

