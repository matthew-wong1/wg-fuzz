struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(-1i, -2707i, 18234i, 56064i));

var<private> global1: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(18792u, 24955u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 33124u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 41063u), vec3<u32>(1u, 17386u, 4294967295u), vec3<u32>(1u, 0u, 34078u), vec3<u32>(29827u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 15542u), vec3<u32>(10548u, 0u, 57443u), vec3<u32>(28829u, 1u, 5069u), vec3<u32>(0u, 3526u, 78162u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(56613u, 35984u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(59883u, 41955u, 45700u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 40863u, 4294967295u), vec3<u32>(32441u, 4294967295u, 30662u), vec3<u32>(0u, 72661u, 4294967295u), vec3<u32>(34631u, 23881u, 55074u), vec3<u32>(40380u, 4294967295u, 4294967295u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    global1 = array<vec3<u32>, 22>();
    let var_0 = arg_1.c;
    global1 = array<vec3<u32>, 22>();
    var var_1 = true;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.c.c))), firstLeadingBit(u_input.c));
    return arg_1;
}

fn func_3() -> Struct_2 {
    global0 = array<vec4<i32>, 1>();
    let var_0 = Struct_3(-802f, u_input.c);
    var var_1 = true;
    let var_2 = var_0;
    global1 = array<vec3<u32>, 22>();
    return func_2(var_0.a, Struct_2(_wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.b.x, -10246i), u_input.b & u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -674f)))), func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, var_2.a) * 919f), func_2(_wgslsmith_f_op_f32(step(var_0.a, 618f)), Struct_2(u_input.a.x, var_2.a, Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(var_0.b, var_0.b), 2327f, vec3<f32>(var_0.a, var_2.a, var_0.a)), vec3<f32>(-1217f, -1550f, 426f)))).c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, 336f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 1000f, var_0.a) + vec3<f32>(var_2.a, -1397f, -498f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-454f, 568f, 868f)), true))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec3<f32> {
    global1 = array<vec3<u32>, 22>();
    var var_0 = _wgslsmith_clamp_vec4_i32(~(~(-vec4<i32>(arg_1.a, arg_1.a, -2147483647i, u_input.b.x))), global0[_wgslsmith_index_u32(~(~func_3().c.b.x), 1u)] ^ global0[_wgslsmith_index_u32(abs(10648u), 1u)], -global0[_wgslsmith_index_u32(arg_1.c.b.x, 1u)]);
    var var_1 = arg_0.c;
    var_1 = Struct_1(vec4<bool>(all(!func_2(171f, arg_0).c.a.wx), _wgslsmith_f_op_f32(step(arg_1.d.x, _wgslsmith_div_f32(-1012f, -532f))) == var_1.d.x, ((arg_1.c.b.x | 94562u) < 4294967295u) != var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.c.c))) >= _wgslsmith_f_op_f32(-arg_0.d.x)), vec2<u32>(0u, arg_0.c.b.x), _wgslsmith_f_op_f32(-725f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1597f)), -1202f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, var_1.c, arg_1.c.c) - vec3<f32>(arg_1.d.x, arg_0.b, arg_1.d.x))), vec3<f32>(123f, arg_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(784f + 474f), 315f))), var_1.a.yxz)));
    let var_2 = vec3<f32>(-442f, arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-789f, 1000f)))) - _wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_f_op_f32(exp2(arg_0.b)))) * _wgslsmith_f_op_f32(-arg_1.d.x)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, 1694f, var_2.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2537f, -1450f, 188f), vec3<f32>(1240f, -703f, 2977f)))))), _wgslsmith_f_op_vec3_f32(sign(var_1.d)));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32) -> Struct_3 {
    global1 = array<vec3<u32>, 22>();
    let var_0 = 0u;
    global1 = array<vec3<u32>, 22>();
    let var_1 = ~abs(vec4<u32>(13376u, 0u, _wgslsmith_dot_vec2_u32(func_2(arg_0.x, Struct_2(5584i, arg_0.x, Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(u_input.c, var_0), arg_0.x, vec3<f32>(arg_1, arg_1, -322f)), vec3<f32>(arg_0.x, 880f, arg_1))).c.b, max(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 4294967295u))), u_input.c));
    let var_2 = min(vec4<u32>(var_0, u_input.c, ~_wgslsmith_div_u32(u_input.c, ~100717u), var_1.x), vec4<u32>(0u ^ ~var_1.x, _wgslsmith_div_u32(firstTrailingBit(u_input.c), ~var_0), firstTrailingBit(4294967295u), _wgslsmith_mod_u32(13214u, max(var_0, 4294967295u))) | (countOneBits(~var_1) ^ var_1));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3().d.x - _wgslsmith_f_op_f32(-func_2(arg_0.x, Struct_2(-31670i, arg_0.x, Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(0u, 4294967295u), arg_1, arg_0), vec3<f32>(arg_1, arg_0.x, -1084f))).d.x)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.x, 1f))))), select(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(var_0, 25053u), _wgslsmith_dot_vec4_u32(var_2 | var_1, ~var_2)), ~_wgslsmith_dot_vec3_u32(var_2.wxy, ~vec3<u32>(0u, u_input.c, 1u)), false));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = false;
    global0 = array<vec4<i32>, 1>();
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 358f)) + _wgslsmith_f_op_vec3_f32(select(arg_3.d, vec3<f32>(_wgslsmith_div_f32(arg_3.d.x, 759f), _wgslsmith_f_op_f32(f32(-1f) * -1107f), _wgslsmith_div_f32(-1000f, arg_3.c)), !func_2(arg_2, Struct_2(u_input.b.x, -1172f, Struct_1(arg_3.a, vec2<u32>(4294967295u, arg_3.b.x), 1000f, vec3<f32>(arg_1.a, 896f, arg_2)), vec3<f32>(arg_2, 232f, arg_0.a))).c.a.zwz))), _wgslsmith_div_f32(func_3().c.c, 488f));
    global0 = array<vec4<i32>, 1>();
    global0 = array<vec4<i32>, 1>();
    return func_3().c;
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    global1 = array<vec3<u32>, 22>();
    var var_1 = vec2<u32>(u_input.c, firstLeadingBit(countOneBits(u_input.c)) >> (23116u % 32u));
    var var_2 = ~(~(-25615i) | select(u_input.b.x | (-22960i >> (u_input.c % 32u)), 24265i, any(vec3<bool>(true, true, true))));
    global1 = array<vec3<u32>, 22>();
    return func_6(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_2(-1000f, Struct_2(0i, -477f, Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(var_1.x, var_1.x), -352f, vec3<f32>(-982f, 184f, -1000f)), vec3<f32>(140f, 1000f, 667f))), func_3())) - func_2(-1000f, func_2(-126f, Struct_2(u_input.b.x, -377f, Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(11166u, 1u), 253f, vec3<f32>(-1326f, 268f, -840f)), vec3<f32>(-534f, -270f, -310f)))).d), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1988f - 137f), -265f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1818f)) * _wgslsmith_f_op_f32(1304f * -283f))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1455f)), abs(_wgslsmith_sub_u32(u_input.c << (u_input.c % 32u), var_1.x))), _wgslsmith_f_op_f32(-585f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -465f))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(746f, -148f, true))), func_2(531f, Struct_2(1i, 1404f, Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(var_1.x, var_1.x), -392f, vec3<f32>(-1678f, 283f, 1985f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-614f, -1087f, 254f) * vec3<f32>(-1359f, 327f, 268f))))).c);
}

fn func_7(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_3) -> vec2<u32> {
    global0 = array<vec4<i32>, 1>();
    global1 = array<vec3<u32>, 22>();
    let var_0 = -44286i;
    var var_1 = func_2(1214f, Struct_2(abs(1i), _wgslsmith_f_op_f32(-func_3().b), Struct_1(!vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-877f, arg_2.a))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(1342f, arg_3.a, -676f), arg_0.d), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_0.d.x, 2005f), vec3<f32>(-298f, -1048f, arg_3.a), vec3<bool>(true, true, true)))))), vec3<f32>(-1329f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-194f * 101f) + _wgslsmith_f_op_f32(abs(700f))), arg_0.d.x)));
    var var_2 = ~(~firstTrailingBit(~reverseBits(vec3<u32>(arg_3.b, 65020u, 120562u))));
    return ~(~(arg_0.b << (_wgslsmith_add_vec2_u32(func_6(Struct_3(var_1.b, var_1.c.b.x), Struct_3(1227f, 4294967295u), arg_0.d.x, arg_0).b, vec2<u32>(var_1.c.b.x, var_2.x)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(4073u, 4294967295u) & ~firstTrailingBit(vec2<u32>(4294967295u, u_input.c)), ~func_7(func_1(), u_input.a, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0 >> (19229u % 32u)), Struct_3(_wgslsmith_f_op_f32(sign(431f)), 4294967295u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-293f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(550f, Struct_2(u_input.b.x, 955f, Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(36613u, 83067u), 1010f, vec3<f32>(433f, -2544f, -1115f)), vec3<f32>(-340f, -1011f, 577f))).c.d.x * _wgslsmith_f_op_f32(1000f - 500f)) * func_6(Struct_3(-758f, u_input.c), Struct_3(-1000f, u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -1043f), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(37477u, 1u), 1298f, vec3<f32>(1501f, -1760f, 576f))).c), _wgslsmith_f_op_f32(max(1f, -1549f))));
    var var_3 = select(!vec4<bool>(func_6(func_5(vec3<f32>(-855f, -1000f, -1663f), var_2.x), Struct_3(-267f, var_0), _wgslsmith_f_op_f32(var_2.x * -1000f), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(1u, 59934u), var_2.x, var_2)).a.x, true, u_input.b.x < 0i, var_2.x > var_2.x), func_3().c.a, any(!vec3<bool>(false, 4294967295u == var_0, true)));
    var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(countOneBits(var_0), ~1u) & abs(var_0), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(227f, var_2.x, -389f, 1453f), vec4<f32>(-491f, var_2.x, 1000f, var_2.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-495f, var_2.x, -211f, var_2.x), vec4<f32>(var_2.x, var_2.x, -502f, var_2.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 477f)))), (~vec3<u32>(u_input.c, var_0, 4294967295u) >> (~(~vec3<u32>(4294967295u, u_input.c, 0u)) % vec3<u32>(32u))) | ~min(_wgslsmith_mult_vec3_u32(global1[_wgslsmith_index_u32(var_0, 22u)], vec3<u32>(0u, 37179u, 26629u)), firstTrailingBit(vec3<u32>(u_input.c, var_0, u_input.c))), vec3<i32>(1i, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 40478i, countOneBits(u_input.a.x), ~2147483647i), global0[_wgslsmith_index_u32(0u, 1u)] >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, 4294967295u, u_input.c, 26681u), vec4<u32>(u_input.c, 0u, u_input.c, 0u)) % vec4<u32>(32u)))));
}

