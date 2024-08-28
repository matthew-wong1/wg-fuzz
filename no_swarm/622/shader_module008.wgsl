struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_5) -> u32 {
    var var_0 = Struct_1(arg_1.b.a, vec2<i32>(arg_2.b.c, ~_wgslsmith_dot_vec3_i32(~u_input.b.wyy, -u_input.c)), ~vec4<u32>(arg_3.d.a.b.c.x, ~1u, arg_1.b.c.x, countOneBits(42203u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-119f, 1000f, 672f)), _wgslsmith_div_vec3_f32(vec3<f32>(1044f, -1027f, -1000f), vec3<f32>(-1000f, -1009f, -206f)), vec3<bool>(var_0.a, arg_3.b.a, true))), vec3<f32>(850f, _wgslsmith_f_op_f32(step(384f, -735f)), _wgslsmith_f_op_f32(1714f * -2825f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1208f, 1018f, 1227f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-726f, -1401f, 1717f)), !vec3<bool>(arg_3.d.a.b.a, arg_3.d.a.b.a, true))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1680f, -533f, 845f))))))));
    let var_2 = arg_3.d;
    let var_3 = !select(vec4<bool>(any(vec2<bool>(true, false)), arg_2.a.a, any(select(vec4<bool>(false, true, true, var_2.a.b.a), vec4<bool>(false, false, true, false), arg_3.c.a)), _wgslsmith_f_op_f32(var_1.x * var_1.x) <= _wgslsmith_f_op_f32(var_1.x + 354f)), !select(vec4<bool>(false, var_2.a.b.a, true, true), vec4<bool>(false, false, arg_3.a.a, arg_3.d.a.b.a), all(vec3<bool>(true, true, arg_1.b.a))), select(all(vec4<bool>(true, true, true, arg_3.a.a)), !var_0.a, any(select(vec2<bool>(arg_3.b.a, arg_2.b.b.a), vec2<bool>(true, false), vec2<bool>(var_2.a.b.a, false)))));
    var_0 = Struct_1(all(var_3), vec2<i32>(73735i, -64965i), select(arg_2.b.b.c, _wgslsmith_clamp_vec4_u32(var_0.c, arg_1.b.c | vec4<u32>(arg_2.b.b.c.x, arg_3.d.a.a, arg_3.b.c.x, arg_1.a), var_2.a.b.c), true) & (firstLeadingBit(vec4<u32>(arg_2.a.c.x, var_2.a.a, var_2.a.a, var_0.c.x)) ^ _wgslsmith_clamp_vec4_u32(arg_3.b.c, arg_0, ~vec4<u32>(0u, arg_0.x, 23425u, arg_2.b.a))));
    return _wgslsmith_mult_u32(17636u, ~4667u ^ _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.a, arg_0.x, 61502u, var_0.c.x), arg_2.a.c)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1.c.x;
    var_0 = min(func_3(select(_wgslsmith_mod_vec4_u32(vec4<u32>(6708u, u_input.a, u_input.a, arg_0.a.b.c.x), arg_1.c), arg_0.a.b.c, vec4<bool>(true, true, arg_1.a & arg_0.a.b.a, any(vec2<bool>(arg_0.a.b.a, arg_1.a)))), arg_0.a, Struct_4(arg_1, Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(21329u, 0u, arg_1.c.x, 12620u), vec4<u32>(51986u, 4294967295u, arg_0.a.b.c.x, 113199u)), Struct_1(false, arg_1.b, arg_0.a.b.c), 0i)), Struct_5(Struct_1(all(vec4<bool>(true, true, arg_1.a, false)), vec2<i32>(u_input.c.x, arg_1.b.x), ~arg_0.a.b.c), arg_0.a.b, Struct_1(any(vec2<bool>(true, arg_1.a)), -arg_0.a.b.b, arg_0.a.b.c), arg_0)), firstTrailingBit(_wgslsmith_sub_u32(~arg_1.c.x, u_input.a)));
    var_0 = arg_0.a.a;
    var_0 = arg_0.a.b.c.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(418f + _wgslsmith_f_op_f32(-1000f * -582f)) + _wgslsmith_f_op_f32(-1432f - 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-659f * _wgslsmith_f_op_f32(round(-103f)))))));
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5, arg_2: u32) -> Struct_2 {
    let var_0 = !arg_0.a;
    var var_1 = 56189u;
    var var_2 = func_2(Struct_3(arg_1.d.a), arg_0);
    var var_3 = ~(~(~vec4<u32>(13020u, arg_2, 0u, 62733u))) ^ min(_wgslsmith_add_vec4_u32(arg_1.c.c ^ ~arg_1.b.c, ~reverseBits(vec4<u32>(24012u, 3034u, arg_2, 100257u))), vec4<u32>(~arg_2, 4294967295u, 1u, _wgslsmith_div_u32(4294967295u, arg_0.c.x)) >> (arg_1.c.c % vec4<u32>(32u)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(480f)))))) + 1000f);
    return arg_1.d.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_4) -> Struct_2 {
    var var_0 = Struct_1(~11147u != abs(_wgslsmith_div_u32(arg_2.b.c.x, u_input.a) | arg_2.a), arg_0, abs(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(26202u, arg_3.b.a, arg_2.b.c.x, arg_1), vec4<u32>(1u, arg_2.a, 0u, 51967u)), arg_2.b.c)));
    let var_1 = ~_wgslsmith_add_u32(arg_1 >> (18019u % 32u), ~arg_1);
    var_0 = Struct_1(false, _wgslsmith_mult_vec2_i32(-reverseBits(_wgslsmith_div_vec2_i32(arg_2.b.b, vec2<i32>(-31980i, arg_3.b.b.b.x))), vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(64891i, -22386i)), min(vec2<i32>(-22142i, arg_0.x), vec2<i32>(-13541i, u_input.b.x))), func_1(arg_3.a, Struct_5(Struct_1(arg_2.b.a, u_input.b.xw, var_0.c), Struct_1(arg_3.b.b.a, arg_0, vec4<u32>(19141u, u_input.a, var_0.c.x, u_input.a)), Struct_1(false, vec2<i32>(arg_0.x, 17728i), vec4<u32>(0u, arg_1, 40850u, u_input.a)), Struct_3(Struct_2(arg_1, arg_2.b, var_0.b.x))), abs(12766u)).c)), max(var_0.c >> (arg_3.b.b.c % vec4<u32>(32u)), countOneBits(~(vec4<u32>(56786u, 14441u, arg_2.b.c.x, 88691u) << (arg_2.b.c % vec4<u32>(32u))))));
    var_0 = arg_2.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(151f, _wgslsmith_f_op_f32(-1000f + -246f)))))));
    return arg_2;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: vec3<bool>) -> i32 {
    var var_0 = -_wgslsmith_dot_vec2_i32(func_1(arg_1.b.b, Struct_5(func_1(arg_1.b.b, Struct_5(Struct_1(false, arg_1.a.b, arg_1.a.c), Struct_1(arg_3.x, arg_1.a.b, arg_1.b.b.c), Struct_1(arg_1.b.b.a, arg_1.b.b.b, vec4<u32>(u_input.a, 6107u, arg_0.x, arg_0.x)), Struct_3(arg_1.b)), arg_1.b.a).b, func_2(Struct_3(arg_1.b), arg_1.a), func_2(Struct_3(arg_1.b), arg_1.a), Struct_3(Struct_2(arg_1.a.c.x, Struct_1(true, arg_1.b.b.b, arg_1.b.b.c), arg_1.a.b.x))), func_1(Struct_1(arg_3.x, u_input.b.wz, arg_1.b.b.c), Struct_5(Struct_1(arg_1.a.a, vec2<i32>(-2147483647i, 1i), vec4<u32>(32232u, 1u, 4294967295u, arg_1.a.c.x)), arg_1.b.b, Struct_1(arg_1.a.a, vec2<i32>(u_input.c.x, arg_1.a.b.x), vec4<u32>(u_input.a, arg_0.x, u_input.a, arg_0.x)), Struct_3(Struct_2(4294967295u, Struct_1(arg_1.b.b.a, vec2<i32>(arg_1.b.b.b.x, -24034i), vec4<u32>(0u, 1u, 3118u, 1u)), 2147483647i))), 1u).a).b.b, ~_wgslsmith_mult_vec2_i32(u_input.b.xw, arg_1.b.b.b));
    var_0 = abs(arg_1.b.b.b.x);
    let var_1 = u_input.a;
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(func_5(vec2<u32>(min(1u, 78508u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u) | vec3<u32>(4294967295u, u_input.a, 44168u), ~vec3<u32>(34233u, u_input.a, u_input.a))), Struct_4(Struct_1(false, vec2<i32>(u_input.b.x, 0i), vec4<u32>(0u, 38783u, 82488u, 1u) ^ vec4<u32>(30776u, 39739u, u_input.a, 33928u)), func_4(~vec2<i32>(u_input.c.x, u_input.c.x), 24731u, func_1(Struct_1(false, vec2<i32>(0i, u_input.c.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), Struct_5(Struct_1(true, u_input.c.xz, vec4<u32>(u_input.a, 4294967295u, 1u, 64848u)), Struct_1(true, u_input.b.wx, vec4<u32>(11456u, 0u, u_input.a, 7722u)), Struct_1(true, u_input.c.zy, vec4<u32>(0u, u_input.a, 40073u, u_input.a)), Struct_3(Struct_2(1u, Struct_1(true, u_input.b.yx, vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), u_input.c.x))), 1u), Struct_4(Struct_1(false, vec2<i32>(u_input.c.x, 31398i), vec4<u32>(1u, u_input.a, u_input.a, 1u)), Struct_2(u_input.a, Struct_1(true, vec2<i32>(u_input.c.x, -1i), vec4<u32>(1u, u_input.a, u_input.a, 1u)), u_input.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-761f, 202f, -862f, 950f))))), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(false, true, any(vec3<bool>(true, false, false))), true)), _wgslsmith_mult_i32(u_input.b.x, -1i) >> (~_wgslsmith_mult_u32(u_input.a, ~4294967295u) % 32u), 48419i, _wgslsmith_clamp_i32(2806i, 36055i, _wgslsmith_clamp_i32(u_input.b.x, abs(0i), 94297i)));
    var var_1 = max(vec3<i32>(reverseBits(-_wgslsmith_sub_i32(27375i, u_input.b.x)), u_input.c.x << ((_wgslsmith_dot_vec2_u32(vec2<u32>(7151u, u_input.a), vec2<u32>(1u, 0u)) ^ 1u) % 32u), u_input.b.x & 0i), var_0.xyw);
    let var_2 = u_input.a;
    let var_3 = u_input.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-503f, 484f, 1275f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -156f, -173f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1059f, 1167f, 1000f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1598f, 379f, -1823f) + vec3<f32>(1494f, 493f, -845f)))))), vec3<bool>(func_1(func_4(var_1.zz, u_input.a, Struct_2(var_2, Struct_1(true, vec2<i32>(u_input.b.x, var_1.x), vec4<u32>(var_3, 1u, u_input.a, u_input.a)), -2147483647i), Struct_4(Struct_1(true, vec2<i32>(u_input.b.x, u_input.b.x), vec4<u32>(63627u, 38468u, u_input.a, var_2)), Struct_2(0u, Struct_1(true, vec2<i32>(10746i, -9493i), vec4<u32>(1u, var_3, u_input.a, var_3)), var_1.x))).b, Struct_5(Struct_1(true, var_0.yx, vec4<u32>(0u, var_2, var_2, var_2)), Struct_1(true, vec2<i32>(var_1.x, u_input.b.x), vec4<u32>(var_2, 0u, u_input.a, 12162u)), Struct_1(false, vec2<i32>(-1i, var_0.x), vec4<u32>(var_3, u_input.a, var_3, 1u)), Struct_3(Struct_2(4030u, Struct_1(false, vec2<i32>(1i, 0i), vec4<u32>(var_2, 17717u, 1u, u_input.a)), u_input.b.x))), ~var_2).b.a, u_input.a >= _wgslsmith_mod_u32(12389u, 1u), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_f_op_f32(round(217f)), _wgslsmith_div_f32(819f, -851f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1104f, -552f, 548f), vec3<f32>(1222f, 662f, 368f), true)))))));
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1583f, 237f, var_4.x, -886f)))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(496f, -211f, var_4.x, -517f) - vec4<f32>(var_4.x, var_4.x, 565f, -678f)), vec4<f32>(var_4.x, var_4.x, -604f, 532f)))))));
    var var_6 = abs(~var_2);
    var_1 = u_input.b.zxz;
    var var_7 = ~var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(1i, -u_input.c.xz, -33962i, ~countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(13614u, 0u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 8016u, 59462u), vec3<u32>(var_3, var_2, 1656u)))));
}

