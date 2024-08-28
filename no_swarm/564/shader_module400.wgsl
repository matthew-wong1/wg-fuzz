struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

var<private> global2: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = min(~_wgslsmith_sub_u32(reverseBits(min(0u, arg_0.a.c)), reverseBits(arg_0.a.c)), 1u);
    let var_1 = Struct_3(Struct_2(Struct_1(false, arg_0.c.b, arg_0.c.c, arg_0.c.d), arg_0.c.b.x, Struct_1(true, vec2<f32>(498f, _wgslsmith_f_op_f32(-arg_0.c.b.x)), ~_wgslsmith_div_u32(arg_0.c.c, arg_0.a.c), _wgslsmith_add_i32(u_input.b.x | arg_0.a.d, min(1i, arg_0.c.d)))), _wgslsmith_div_i32(_wgslsmith_add_i32(-select(1i, -59206i, true), _wgslsmith_div_i32(2147483647i, i32(-1i) * -12709i)), ~arg_0.a.d), Struct_1(arg_0.c.a, vec2<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(997f))))), ~abs(~u_input.c), abs(1i & reverseBits(arg_0.c.d))));
    let var_2 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(step(-991f, 1000f)), _wgslsmith_f_op_f32(select(-1000f, arg_0.c.b.x, false)))))), var_1.a.c.c, arg_0.c.d);
    let var_3 = arg_0.a.d;
    var var_4 = vec2<i32>(1i, i32(-1i) * -5384i);
    return var_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = select(false, any(vec3<bool>(true, all(vec2<bool>(true, true)), true)), 1i < ~(-u_input.a.x));
    var var_1 = abs(abs(~countOneBits(select(vec3<u32>(4294967295u, 0u, 28279u), vec3<u32>(arg_1.b, 1u, 100550u), vec3<bool>(false, true, false)))));
    let var_2 = _wgslsmith_mod_i32(arg_2.x, -_wgslsmith_clamp_i32(~arg_1.c, ~arg_2.x, -arg_2.x)) <= ~u_input.a.x;
    var var_3 = select(!vec2<bool>(arg_0.x == _wgslsmith_f_op_f32(-1067f + 797f), true), !select(select(select(vec2<bool>(var_2, var_2), vec2<bool>(true, var_2), vec2<bool>(false, false)), vec2<bool>(var_2, false), !var_2), vec2<bool>(false & var_2, all(vec2<bool>(var_2, var_2))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(var_2, true)))), vec2<bool>(true, var_2));
    let var_4 = arg_2 ^ vec3<i32>(firstTrailingBit(0i), arg_1.c, u_input.b.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(564f + _wgslsmith_f_op_f32(f32(-1f) * -1689f))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -967f))))) - _wgslsmith_f_op_f32(abs(154f))) + _wgslsmith_f_op_f32(func_4(vec2<f32>(-114f, _wgslsmith_f_op_f32(-1f)), Struct_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 15325u, u_input.c, 84269u), vec4<u32>(u_input.c, u_input.c, 7259u, u_input.c)), ~u_input.c, 48482i), -(~(u_input.a ^ vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x))), vec2<u32>(~u_input.c, max(u_input.c, u_input.c)) >> (vec2<u32>(u_input.c, func_3(Struct_2(Struct_1(true, vec2<f32>(602f, 294f), 20556u, -1i), -305f, Struct_1(false, vec2<f32>(-173f, 143f), u_input.c, 14670i)))) % vec2<u32>(32u)))));
    global2 = countOneBits(1i >> (0u % 32u)) | _wgslsmith_mod_i32(~u_input.b.x, u_input.b.x);
    global1 = -153f;
    global2 = select(u_input.b.x << (~4294967295u % 32u), -21318i, true || select(any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false))), select(all(vec3<bool>(false, true, true)), all(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, false))), true));
    var var_1 = Struct_2(Struct_1(select(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2300f, -623f))), 55623u, ~u_input.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(633f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1065f))), true)))), Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(260f - 408f) - 1329f), -426f), select(_wgslsmith_mod_u32(1880u, _wgslsmith_add_u32(1u, u_input.c)), 1u, true), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)));
    return u_input.c;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>) -> bool {
    global2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-abs(1i), -32992i, i32(-1i) * -1i), -arg_1.xxx);
    global1 = _wgslsmith_f_op_f32(max(-608f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(step(-209f, _wgslsmith_f_op_f32(-327f + 246f))))));
    global0 = any(select(!vec3<bool>(all(vec4<bool>(false, true, false, false)), true, any(vec3<bool>(false, false, true))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), true));
    let var_0 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1350f, -1316f) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -592f)))))), ~countOneBits(4294967295u) & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(5028u, arg_0.a), vec2<u32>(u_input.c, arg_0.b))), -u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-245f - -1802f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(true, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-558f, 1090f) - vec2<f32>(1279f, -555f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(590f, -529f), vec2<f32>(-257f, 1082f), true)))))), _wgslsmith_clamp_u32(37158u, func_3(Struct_2(Struct_1(true, vec2<f32>(-1110f, 1000f), arg_0.b, arg_1.x), -739f, Struct_1(true, vec2<f32>(570f, 1271f), 20398u, u_input.b.x))), select(reverseBits(82776u), arg_0.b, true)), 45616i));
    var var_1 = Struct_1(!var_0.c.a, _wgslsmith_f_op_vec2_f32(-var_0.a.b), 1u, 0i);
    return true;
}

fn func_1() -> vec3<bool> {
    var var_0 = select(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, true)), true))), true);
    return vec3<bool>(func_5(Struct_4(~_wgslsmith_add_u32(u_input.c, 0u), func_2(), u_input.a.x), vec4<i32>(u_input.a.x, 0i, u_input.a.x, -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, -2948i, -1i)))), all(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(select(func_1(), vec3<bool>(true, true, false), func_5(Struct_4(min(u_input.c, 16556u), u_input.c, u_input.b.x), u_input.b)));
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1264f)))))));
    global2 = -1i;
    global2 = u_input.a.x;
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -376f)))), _wgslsmith_f_op_f32(f32(-1f) * -2029f), -1099f) * vec3<f32>(-516f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-797f, -898f) + -1544f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(136f)))))));
    var var_1 = Struct_2(Struct_1((any(vec3<bool>(true, false, true)) || (var_0.x >= var_0.x)) || func_5(Struct_4(u_input.c, u_input.c, u_input.b.x), vec4<i32>(29361i, u_input.a.x, 2156i, u_input.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.yy, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, -196f), var_0.yz)))) * var_0.xz), u_input.c, 9267i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1262f, _wgslsmith_f_op_f32(abs(-130f))))), Struct_1(false, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zz + var_0.zx) - vec2<f32>(var_0.x, 928f)))), 4294967295u << (_wgslsmith_mod_u32(~u_input.c, _wgslsmith_sub_u32(4294967295u, u_input.c)) % 32u), countOneBits(~(~u_input.b.x))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_1.a.b.x) - vec3<f32>(var_0.x, -982f, var_0.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-481f, -495f, _wgslsmith_f_op_f32(f32(-1f) * -725f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(337f, -1123f, var_2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-524f, var_0.x, -982f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1604f, var_0.x, 1240f))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(sign(1902f))), _wgslsmith_f_op_f32(abs(313f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), vec2<i32>(_wgslsmith_mod_i32(abs(u_input.b.x), -var_1.c.d), _wgslsmith_dot_vec4_i32(select(vec4<i32>(31325i, 1i, 0i, u_input.a.x), u_input.b, false), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -21475i, -6817i, 0i), vec4<i32>(25350i, u_input.a.x, 0i, var_1.c.d)))) << (vec2<u32>(~1u, ~(~var_1.a.c)) % vec2<u32>(32u)));
}

