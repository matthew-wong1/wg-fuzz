struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1827f, 110f)))), -793f, false)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(170f - _wgslsmith_f_op_f32(-731f + -621f)))) && !all(vec3<bool>(true, arg_0.a.x, select(true, arg_0.a.x, true)));
    var var_1 = 2147483647i;
    var var_2 = Struct_1(u_input.a.xz);
    var var_3 = false;
    let var_4 = Struct_3(arg_0.a, true, ~(~(-18210i)) << (u_input.b % 32u), 399f, ~u_input.a);
    return _wgslsmith_f_op_f32(exp2(var_4.d));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = ~select(firstLeadingBit(u_input.a.wx), ~vec2<u32>(1u, 0u), arg_0.a);
    var var_1 = arg_0;
    var var_2 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false | var_1.a.x, true, true, true), arg_0.a.x), select(!(!select(vec4<bool>(var_1.a.x, true, false, var_1.a.x), vec4<bool>(arg_0.a.x, false, true, var_1.a.x), vec4<bool>(false, false, false, arg_0.a.x))), select(!vec4<bool>(false, arg_0.a.x, true, false), !(!vec4<bool>(arg_0.a.x, var_1.a.x, false, var_1.a.x)), arg_0.a.x), select(vec4<bool>(var_1.a.x, arg_0.a.x, !var_1.a.x, all(vec4<bool>(true, false, false, false))), select(vec4<bool>(false, arg_0.a.x, true, true), vec4<bool>(false, true, arg_0.a.x, var_1.a.x), true), false)), true);
    var_1 = arg_0;
    var var_3 = true;
    return Struct_2(arg_1.x, Struct_1(select(vec2<u32>(~var_0.x, ~u_input.a.x), reverseBits(_wgslsmith_sub_vec2_u32(var_0, vec2<u32>(1u, var_0.x))), _wgslsmith_mult_i32(-1i, arg_1.x) < (17731i ^ arg_1.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-336f - _wgslsmith_f_op_f32(f32(-1f) * -1247f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1540f * 1456f), _wgslsmith_f_op_f32(f32(-1f) * -290f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-568f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-502f)) - -1482f)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_5 {
    let var_0 = vec3<bool>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, 0u, arg_3.b.a.x, arg_2.x), u_input.a), firstLeadingBit(u_input.a)), u_input.a >> (u_input.a % vec4<u32>(32u))) != ~(~_wgslsmith_mult_u32(0u, arg_2.x)), true, any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true), true)));
    var var_1 = u_input.a;
    var var_2 = func_2(Struct_4(var_0.zy), ~_wgslsmith_mod_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, arg_0.a, -7858i), vec3<i32>(arg_1, -3584i, -2147483647i))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, arg_0.a, arg_1), vec3<i32>(arg_3.a, 10629i, arg_0.a)), vec3<i32>(arg_0.a, arg_3.a, arg_3.a) ^ vec3<i32>(arg_1, arg_1, 27190i))));
    let var_3 = vec4<i32>(10464i, -4131i | -arg_0.a, var_2.a, arg_1);
    var var_4 = Struct_3(var_0.xz, any(var_0), arg_3.a << (~u_input.b % 32u), var_2.c.x, ~(~u_input.a));
    return Struct_5(select(!(!vec4<bool>(var_4.b, var_0.x, true, var_4.a.x)), vec4<bool>(all(vec4<bool>(false, var_4.a.x, var_0.x, var_0.x)), var_0.x, var_0.x, true), var_4.b), Struct_4(select(select(var_0.zz, var_4.a, var_0.zx), vec2<bool>(true, !var_0.x), !var_0.zx)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, _wgslsmith_div_f32(arg_3.c.x, _wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_3.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_4.d) * _wgslsmith_f_op_f32(step(arg_3.c.x, -545f)))))));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<f32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1129f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f + 726f)), arg_0.c.x)) * arg_0.c.x);
    var var_1 = func_2(func_4(func_2(arg_0.b, vec3<i32>(0i, -2147483647i, -37527i)), countOneBits(0i), vec2<u32>(select(func_2(Struct_4(arg_0.a.zw), vec3<i32>(7535i, -4129i, 1i)).b.a.x, _wgslsmith_dot_vec2_u32(u_input.a.ww, u_input.a.xx), true), 1u), Struct_2(~(~(-54123i)), Struct_1(~u_input.a.zw), vec4<f32>(func_2(arg_0.b, vec3<i32>(51134i, 9160i, 2147483647i)).c.x, _wgslsmith_f_op_f32(arg_1.x * var_0), _wgslsmith_f_op_f32(-170f - arg_0.c.x), 553f))).b, vec3<i32>(2587i, 2147483647i, (i32(-1i) * -4987i) << (1u % 32u)));
    var_1 = func_2(Struct_4(!select(select(arg_0.a.yz, vec2<bool>(arg_0.b.a.x, arg_0.a.x), arg_0.b.a), arg_0.a.zw, true)), firstLeadingBit(firstLeadingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 2147483647i, var_1.a), vec3<i32>(0i, var_1.a, 30502i)))));
    let var_2 = Struct_3(func_4(Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<i32>(var_1.a, -2147483647i, var_1.a, var_1.a)), reverseBits(vec4<i32>(54162i, 2710i, 22452i, var_1.a))), var_1.b, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), var_1.c.x, _wgslsmith_f_op_f32(min(-100f, arg_0.c.x)), _wgslsmith_f_op_f32(func_3(Struct_4(vec2<bool>(arg_0.a.x, arg_0.a.x)))))), 1110i, var_1.b.a, Struct_2(1i, var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, -1000f, -589f, -480f) - arg_1) * _wgslsmith_f_op_vec4_f32(arg_1 + vec4<f32>(var_1.c.x, -1000f, -2839f, -173f))))).a.zz, true, var_1.a, _wgslsmith_f_op_f32(-820f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * 1348f)), u_input.a);
    var var_3 = -_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_2.c, 0i), 1i) >> (~u_input.a.x % 32u);
    return arg_0;
}

fn func_1(arg_0: f32) -> vec4<i32> {
    var var_0 = ~u_input.a;
    var var_1 = func_5(func_4(func_2(Struct_4(vec2<bool>(true, false)), ~vec3<i32>(1i, 1i, 1i)), func_2(Struct_4(vec2<bool>(true, true)), vec3<i32>(abs(8564i), 0i, -23805i)).a, max(reverseBits(_wgslsmith_mult_vec2_u32(u_input.a.zz, vec2<u32>(u_input.b, 4282u))), min(vec2<u32>(u_input.b, u_input.a.x), var_0.wy)), func_2(Struct_4(vec2<bool>(false, true)), vec3<i32>(4517i, 547i >> (0u % 32u), ~(-11598i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(524f)) - -725f), -359f, arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -817f), -1239f))));
    var_0 = u_input.a;
    let var_2 = vec4<i32>(countOneBits(1i), ~_wgslsmith_div_i32(2147483647i << (0u % 32u), abs(-70377i)), _wgslsmith_mult_i32(~func_2(var_1.b, vec3<i32>(6710i, -11697i, -2147483647i)).a, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(2147483647i, -23345i, -13599i, -38001i)) << (var_0.x % 32u)) ^ ~(-abs(-vec4<i32>(53664i, 2147483647i, 5212i, 0i)));
    let var_3 = var_1.c;
    return ~var_2;
}

fn func_6(arg_0: vec2<i32>, arg_1: bool, arg_2: vec4<i32>) -> i32 {
    let var_0 = vec3<u32>(~(_wgslsmith_mult_u32(firstTrailingBit(u_input.b), u_input.a.x) | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 7290u, 60789u, u_input.a.x), u_input.a)), u_input.b, 4294967295u);
    let var_1 = _wgslsmith_add_vec3_u32(u_input.a.zzy ^ vec3<u32>(11881u, ~50822u, ~(~var_0.x)), var_0);
    return ~(~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~u_input.a.x, 5928u, _wgslsmith_sub_u32(countOneBits(u_input.a.x), ~min(select(u_input.a.x, 4294967295u, false), _wgslsmith_mod_u32(1u, 53458u))), ~(~(~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a))));
    var var_1 = countOneBits(_wgslsmith_add_i32(-2147483647i, 26367i << (~var_0.x % 32u))) & firstTrailingBit(1i);
    var_1 = max(max(2147483647i, _wgslsmith_add_i32(~3363i, 0i) >> (u_input.a.x % 32u)), func_6(vec2<i32>(reverseBits(1i), -18642i), true != any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), func_1(-955f)));
    var_1 = func_6(~(-vec2<i32>(0i, 2147483647i) << (_wgslsmith_sub_vec2_u32(var_0.yw, firstLeadingBit(u_input.a.yy)) % vec2<u32>(32u))), false, vec4<i32>(1i, 27088i, 2147483647i, _wgslsmith_mod_i32(-64287i, 2147483647i)));
    var var_2 = true;
    var_0 = firstTrailingBit(vec4<u32>(~var_0.x, min(_wgslsmith_add_u32(u_input.b, u_input.a.x), u_input.a.x) >> (firstLeadingBit(var_0.x) % 32u), _wgslsmith_div_u32(47844u, (u_input.b & 7290u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, 0u, 4294967295u), vec4<u32>(0u, var_0.x, 1u, 17471u))), ~abs(u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(19010i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1294f, 190f, -1042f) * vec3<f32>(511f, 1000f, -613f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(func_5(Struct_5(vec4<bool>(true, true, true, true), Struct_4(vec2<bool>(false, false)), vec4<f32>(705f, 760f, -594f, -1000f)), vec4<f32>(-1000f, 140f, 1585f, -227f)).c.ywy, _wgslsmith_f_op_vec3_f32(vec3<f32>(-752f, -293f, -1461f) + vec3<f32>(-908f, 266f, -2031f))))))), select(vec2<u32>(_wgslsmith_mult_u32(85389u, u_input.a.x), 48908u) << (_wgslsmith_add_vec2_u32(u_input.a.zx, _wgslsmith_sub_vec2_u32(u_input.a.yz, u_input.a.wx)) % vec2<u32>(32u)), vec2<u32>(~4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 47660u, 4294967295u), u_input.a)), !any(vec4<bool>(false, false, true, true)) & false), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b, var_0.x ^ 128002u), u_input.b, ~37245u), func_1(914f).x);
}

