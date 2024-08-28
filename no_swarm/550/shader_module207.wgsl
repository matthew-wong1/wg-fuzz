struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    return vec4<f32>(-923f, -328f, _wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1370f) - _wgslsmith_f_op_f32(floor(-1401f)))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(any(vec4<bool>(false, true, false, true))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1080f, 1000f, arg_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(947f, -1107f, arg_0.x, 465f))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), 195f, _wgslsmith_f_op_f32(f32(-1f) * -863f), var_0.x))));
    var_0 = vec4<f32>(-601f, _wgslsmith_f_op_f32(ceil(-305f)), var_0.x, var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-517f, arg_0.x, arg_0.x, -1764f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, var_0.x, 688f, arg_0.x)))))) - vec4<f32>(_wgslsmith_div_f32(-545f, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-219f - -1001f))));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1000f)), 606f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(220f * -157f), _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(min(arg_0.x, -442f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1057f, -157f, 856f, 462f)))), true)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -312f, var_0.x, -639f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_0.x, arg_0.x, -904f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.x, 251f, arg_0.x) - vec4<f32>(var_0.x, arg_0.x, 1660f, -1404f))))), select(~_wgslsmith_mod_vec2_u32(vec2<u32>(26274u, u_input.c), select(vec2<u32>(11581u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, true))), (vec2<u32>(u_input.a, u_input.a) | (vec2<u32>(u_input.c, u_input.d) << (vec2<u32>(u_input.d, 59951u) % vec2<u32>(32u)))) & max(min(vec2<u32>(u_input.d, u_input.a), vec2<u32>(u_input.c, 22295u)), vec2<u32>(u_input.d, 76080u) ^ vec2<u32>(u_input.a, 339u)), false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    let var_0 = arg_1;
    var var_1 = arg_3.x;
    var_1 = !(!all(arg_3));
    let var_2 = true;
    let var_3 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_0.a.yy - vec2<f32>(var_0.a.x, 628f)))) - vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.a.x, 1000f)), _wgslsmith_f_op_f32(sign(arg_1.a.x)))), abs(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b.x >> (arg_0.b.x % 32u), -33216i), -arg_2 & u_input.b.x)), arg_2);
    return 445f;
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(true);
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.x, arg_0) + -330f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1297f) * _wgslsmith_f_op_f32(-arg_1.a.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_0)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-467f, arg_0)))), vec2<f32>(arg_1.a.x, arg_0), all(vec4<bool>(true, false, false, false)) && var_0.a))), -(42183i & u_input.b.x), -2897i);
    var_0 = Struct_2(select(_wgslsmith_sub_i32(~1i, _wgslsmith_clamp_i32(-31359i, u_input.e, u_input.b.x)) > (i32(-1i) * -2147483647i), !(40001i <= _wgslsmith_add_i32(u_input.b.x, -1i)), !any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(var_0.a, var_0.a)))));
    var var_2 = firstTrailingBit(~_wgslsmith_sub_vec4_u32(~(vec4<u32>(u_input.a, 35236u, u_input.d, var_1.b.x) << (vec4<u32>(u_input.a, 5899u, u_input.c, 1u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.b.x, 0u, 104853u, u_input.c), vec4<u32>(0u, var_1.b.x, u_input.a, var_1.b.x)) >> ((vec4<u32>(0u, u_input.d, 50451u, u_input.a) >> (vec4<u32>(1u, u_input.d, u_input.a, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return Struct_2(!(!select(true, var_0.a, false) & false));
}

fn func_1() -> vec3<f32> {
    var var_0 = _wgslsmith_mod_vec2_i32(-vec2<i32>(i32(-1i) * -u_input.b.x, ~19428i), ~(u_input.b.yx >> (_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(57799u, u_input.a)), vec2<u32>(84469u, 1u) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var_0 = -u_input.b.zy;
    let var_1 = func_5(_wgslsmith_f_op_f32(func_4(func_2(vec2<f32>(_wgslsmith_div_f32(-535f, 140f), _wgslsmith_div_f32(846f, -895f)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-36033i, var_0.x, var_0.x, 1i), vec4<i32>(u_input.e, 45768i, var_0.x, var_0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -2147483647i, 0i) ^ vec4<i32>(-1i, u_input.b.x, u_input.e, -65173i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.e, -1i, 40420i), vec4<i32>(6662i, 0i, u_input.e, 19650i)))), Struct_3(vec3<f32>(_wgslsmith_div_f32(468f, -882f), _wgslsmith_f_op_f32(1051f + -807f), _wgslsmith_f_op_f32(max(398f, -365f)))), _wgslsmith_add_i32(-10277i, reverseBits(~var_0.x)), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(false, false, false), true))), Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-668f, 613f, -956f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-532f, -255f, 704f))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1753f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1483f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-165f)))))));
    var_0 = -u_input.b.xy | u_input.b.zx;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(431f, 831f, 973f) * vec3<f32>(124f, 1034f, -656f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-498f, -2742f, -123f), vec3<f32>(-1000f, 1144f, -1126f), vec3<bool>(true, true, var_1.a))) - vec3<f32>(-1000f, -155f, 181f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-732f, -1379f, -560f) + vec3<f32>(502f, -863f, -606f)))))) - vec3<f32>(-994f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(999f)) + _wgslsmith_f_op_f32(-642f + 605f))), 551f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(1i, u_input.e) >> (_wgslsmith_sub_u32(~u_input.d, firstTrailingBit(min(u_input.c ^ 4294967295u, u_input.c))) % 32u);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())) * vec3<f32>(744f, _wgslsmith_div_f32(-1036f, _wgslsmith_f_op_f32(f32(-1f) * -565f)), _wgslsmith_f_op_f32(-858f * _wgslsmith_f_op_f32(f32(-1f) * -1100f)))));
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(step(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, 1042f))))))));
    let var_2 = vec2<bool>(!(!(u_input.c != 76907u) | true), true);
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))))));
    var_1 = Struct_3(var_1.a);
    let var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_1(vec4<f32>(var_1.a.x, 610f, -515f, var_1.a.x), vec2<u32>(u_input.c, 0u)), Struct_3(var_1.a), var_0, vec3<bool>(var_2.x, false, false))), -1043f)), ~(vec3<u32>(u_input.d ^ u_input.c, 63382u, max(30387u, u_input.d)) & _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.d), vec3<u32>(1u, u_input.d, u_input.c)), ~vec3<u32>(u_input.d, u_input.c, u_input.a), firstLeadingBit(vec3<u32>(7106u, 4294967295u, 71462u)))));
}

