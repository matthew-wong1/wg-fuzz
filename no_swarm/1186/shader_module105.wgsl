struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<f32>(-234f, -770f, 1338f), 1193f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(abs(u_input.a << (countOneBits(4239u) % 32u)), 23755i), select(~(max(u_input.a, u_input.a) | (u_input.a | u_input.a)), ~(_wgslsmith_add_i32(u_input.a, u_input.a) >> (~50160u % 32u)), any(vec2<bool>(true, global0.a)) && true));
    global0 = Struct_1((i32(-1i) * -10313i) <= u_input.a, global0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))), global0.c, global0.a)));
    var var_1 = Struct_1(!((~1u ^ (arg_0 >> (110036u % 32u))) < _wgslsmith_sub_u32(arg_0, ~1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.b, global0.b, global0.a))), -228f);
    let var_2 = var_1.a;
    var_1 = Struct_1(global0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c, -948f, 698f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1651f, -595f, global0.b.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1534f, global0.b.x, -374f), vec3<f32>(global0.c, 728f, -577f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, _wgslsmith_f_op_f32(floor(var_1.c)), _wgslsmith_div_f32(global0.c, -1193f)))), 1456f);
    return true;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_3) -> u32 {
    global0 = arg_1.c;
    global0 = Struct_1(false, _wgslsmith_f_op_vec3_f32(arg_3.b.ywy + _wgslsmith_f_op_vec3_f32(arg_3.b.wzy - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b.x, arg_1.c.c, arg_3.b.x)))), -417f);
    global0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_1.b.b * vec3<f32>(_wgslsmith_f_op_f32(2035f - -597f), _wgslsmith_div_f32(783f, arg_1.b.c), 409f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-251f, _wgslsmith_f_op_f32(ceil(arg_1.c.b.x))) * _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(global0.b.x - -264f))));
    let var_0 = arg_3;
    var var_1 = 615f;
    return ~abs(arg_1.a);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_2(func_4(vec3<u32>(~arg_0, arg_0, _wgslsmith_mult_u32(14967u, ~arg_0)), Struct_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(arg_0, 38299u)), Struct_1(false, _wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(-1199f, -619f, global0.b.x)), global0.b.x), Struct_1(func_3(arg_0), _wgslsmith_f_op_vec3_f32(-global0.b), 1000f)), -2147483647i, Struct_3(~reverseBits(vec3<u32>(1u, 36971u, 11873u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, -277f, global0.c, 1416f) - vec4<f32>(305f, global0.c, 1315f, global0.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(537f, global0.c, global0.b.x, global0.b.x))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 18284u), vec2<u32>(4294967295u, 29149u)), ~vec2<u32>(arg_0, 25799u)), vec4<bool>(global0.a, true, true, true), 895f)), Struct_1(!all(!vec2<bool>(global0.a, true)), global0.b, _wgslsmith_f_op_f32(1f * global0.b.x)), Struct_1(true, _wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(930f, global0.b.x, 621f) + global0.b))), _wgslsmith_f_op_f32(-global0.c)));
    var_0 = Struct_2(arg_0 | _wgslsmith_mult_u32(~arg_0, 0u), var_0.b, Struct_1(func_3(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.a, 4294967295u, 69171u, 8551u)), vec4<u32>(var_0.a, var_0.a, 4294967295u, 14067u))), vec3<f32>(_wgslsmith_f_op_f32(804f * var_0.b.c), var_0.c.c, _wgslsmith_f_op_f32(sign(-796f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1619f)) * 607f)))));
    let var_1 = ~(~(~1u));
    var var_2 = var_0.c.a;
    let var_3 = func_4(~select(abs(vec3<u32>(0u, 14786u, var_0.a)), max(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_1, 1u), vec3<u32>(arg_0, 4294967295u, var_1)), firstLeadingBit(vec3<u32>(12927u, 0u, 1u))), false), Struct_2(~arg_0, var_0.b, var_0.b), _wgslsmith_mod_i32(u_input.a, u_input.a) << (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(min(vec2<u32>(arg_0, 1u), vec2<u32>(arg_0, var_1)), vec2<u32>(var_1, 24061u)), _wgslsmith_div_vec2_u32(~vec2<u32>(49273u, var_0.a), vec2<u32>(var_1, var_1) & vec2<u32>(1u, 4294967295u))) % 32u), Struct_3(_wgslsmith_mod_vec3_u32(vec3<u32>(func_4(vec3<u32>(arg_0, var_1, var_0.a), Struct_2(0u, Struct_1(global0.a, vec3<f32>(var_0.b.c, global0.c, 374f), 183f), Struct_1(true, var_0.b.b, global0.b.x)), u_input.a, Struct_3(vec3<u32>(1493u, var_1, arg_0), vec4<f32>(var_0.b.b.x, 1579f, -336f, 426f), vec2<u32>(80365u, 1u), vec4<bool>(false, var_0.b.a, var_0.b.a, false), global0.c)), ~0u, var_0.a), ~(~vec3<u32>(arg_0, arg_0, var_1))), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c + global0.c) - _wgslsmith_f_op_f32(-global0.c)), -1088f, _wgslsmith_f_op_f32(f32(-1f) * -273f)), select(~(~vec2<u32>(var_1, var_0.a)), (vec2<u32>(0u, 1u) & vec2<u32>(arg_0, var_0.a)) | ~vec2<u32>(6748u, var_0.a), select(select(vec2<bool>(global0.a, var_0.b.a), vec2<bool>(global0.a, global0.a), false), !vec2<bool>(false, var_0.b.a), false)), !select(!vec4<bool>(global0.a, true, false, false), select(vec4<bool>(global0.a, var_0.b.a, false, false), vec4<bool>(global0.a, global0.a, global0.a, global0.a), global0.a), !vec4<bool>(true, true, global0.a, global0.a)), global0.b.x));
    return var_0.c;
}

fn func_1(arg_0: u32) -> vec3<f32> {
    global0 = Struct_1(false, _wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global0.c, -356f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1777f * _wgslsmith_f_op_f32(abs(global0.c))) * 1197f));
    global0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(933f, global0.b.x, -129f), global0.b), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b.x, 150f, 969f))), false)))), global0.b.x);
    let var_0 = func_2(1u);
    let var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - -1155f))));
    global0 = func_2(arg_0);
    return _wgslsmith_f_op_vec3_f32(-global0.b);
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.a, 4294967295u, arg_0), vec3<u32>(~0u, abs(0u), ~(~48926u)) ^ vec3<u32>(0u, arg_2.a, 11476u));
    var var_1 = vec2<u32>(var_0.x, func_4(var_0, Struct_2(arg_0, arg_2.c, arg_3), _wgslsmith_add_i32(-(i32(-1i) * -1i), -1i), Struct_3(min(vec3<u32>(2902u, var_0.x, arg_0), _wgslsmith_div_vec3_u32(var_0, vec3<u32>(0u, arg_2.a, 4294967295u))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c, 1103f, 941f, arg_3.c))), var_0.zx, !(!vec4<bool>(true, global0.a, true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.b.b.x))))));
    var_1 = ~(countOneBits(select(~var_0.yx, min(vec2<u32>(38308u, 0u), vec2<u32>(arg_2.a, var_1.x)), true)) << (_wgslsmith_sub_vec2_u32(firstLeadingBit(~vec2<u32>(26256u, arg_0)), var_0.xy) % vec2<u32>(32u)));
    global0 = Struct_1(-508f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1454f, _wgslsmith_f_op_f32(arg_2.c.c * arg_3.b.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_2.c.b.x, arg_2.b.b.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.b.x, -103f, arg_2.b.c))) + _wgslsmith_f_op_vec3_f32(func_1(122948u)))), _wgslsmith_f_op_vec3_f32(arg_2.b.b * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(global0.c, global0.b.x, arg_2.c.b.x)) * vec3<f32>(arg_3.b.x, 1768f, -1113f))), select(select(vec3<bool>(arg_3.a, arg_1, true), vec3<bool>(arg_1, true, arg_1), select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, arg_1, arg_3.a), arg_3.a)), !select(vec3<bool>(false, arg_2.b.a, arg_1), vec3<bool>(arg_1, arg_3.a, false), vec3<bool>(arg_1, global0.a, arg_3.a)), true || (5651i != u_input.a)))), _wgslsmith_f_op_f32(abs(-693f)));
    let var_2 = _wgslsmith_mod_u32(21469u, var_1.x);
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~5700u), 4294967295u), ~vec2<u32>(~9027u, ~3551u)), false, Struct_2(46017u, Struct_1(!global0.a, global0.b, 369f), Struct_1((global0.a != true) || false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global0.c, global0.c)), _wgslsmith_f_op_f32(f32(-1f) * -665f))), Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(func_1(~(~16314u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-698f + -431f) * global0.c)))));
    var var_0 = reverseBits(~vec4<u32>(1u, 1u, 1u, 1u));
    var var_1 = Struct_2(4294967295u, Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(max(global0.b, global0.b)), 431f), func_2(var_0.x));
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(min(var_0.x, 0u)), abs(_wgslsmith_mod_u32(firstTrailingBit(87063u), min(2691u, 58715u)))), var_0.wz);
    var_1 = Struct_2(0u, Struct_1(all(vec3<bool>(all(vec3<bool>(false, global0.a, false)), !var_1.b.a, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, global0.c, 811f) * global0.b), var_1.c.b)) + _wgslsmith_f_op_vec3_f32(-global0.b)), -752f), var_1.c);
    global0 = func_2(~(~1u));
    var_1 = Struct_2(var_1.a, func_2(reverseBits(firstTrailingBit(max(0u, 4294967295u)))), func_5(_wgslsmith_mult_u32(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.x, var_0.x, var_0.x), vec4<u32>(4294967295u, 4294967295u, var_1.a, 4294967295u))), var_1.b.a | var_1.b.a, Struct_2(var_2.x, Struct_1(var_1.c.a, var_1.c.b, global0.b.x), var_1.b), func_5(~14437u, var_1.b.a, Struct_2(40777u, var_1.c, var_1.b), var_1.b)));
    global0 = func_2(~var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(108056u >> (var_1.a % 32u), var_2, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 8406i), ~vec3<i32>(1i, 0i, u_input.a)) ^ firstLeadingBit(vec3<i32>(u_input.a, -43848i, u_input.a) | vec3<i32>(-1i, u_input.a, u_input.a)), _wgslsmith_mult_vec3_i32(~min(vec3<i32>(0i, 28162i, -35925i), vec3<i32>(76169i, 9629i, 2147483647i)), ~(vec3<i32>(u_input.a, u_input.a, u_input.a) >> (var_0.yyx % vec3<u32>(32u))))));
}

