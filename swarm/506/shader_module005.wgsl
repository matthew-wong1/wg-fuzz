struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>) -> i32 {
    return ~(-12500i);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(u_input.a, ~firstTrailingBit(_wgslsmith_sub_vec3_i32(select(vec3<i32>(0i, u_input.a, u_input.c), vec3<i32>(0i, 0i, u_input.c), false), vec3<i32>(-2147483647i, 47287i, u_input.c))), u_input.d);
    var var_1 = select(select(vec2<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))), vec2<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true)), firstLeadingBit(var_0.b.x) >= -u_input.e), var_0.c == _wgslsmith_sub_u32(u_input.b >> (u_input.b % 32u), var_0.c)), !vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), true), select(true, false, select(any(vec4<bool>(false, false, true, false)) | true, true, true)));
    var_0 = Struct_1(max(-(~(-u_input.a)), -1i), firstLeadingBit(var_0.b), ~_wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.b, u_input.d, u_input.b, 4294967295u), firstLeadingBit(vec4<u32>(4294967295u, 16631u, 1u, u_input.d))), vec4<u32>(u_input.b, 26895u, ~20762u, ~1951u)));
    var_0 = Struct_1(-2147483647i, _wgslsmith_mult_vec3_i32(abs(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, var_0.a, 1i), var_0.b)), var_0.b), var_0.c);
    var var_2 = _wgslsmith_f_op_f32(round(1284f));
    return _wgslsmith_mult_u32((14898u ^ ~reverseBits(u_input.b)) & u_input.d, 4294967295u << ((6216u >> (~(~var_0.c) % 32u)) % 32u));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = -348f;
    var_0 = 899f;
    var var_1 = vec2<f32>(arg_0.d, arg_0.d);
    var_1 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_1.d));
    var var_2 = arg_0.b;
    return vec4<u32>(53741u, _wgslsmith_add_u32(~24917u, ~u_input.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.e, 60147u, 0u), arg_0.c) % 32u)), 4294967295u, 4294967295u);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: bool) -> bool {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, select(u_input.b, u_input.b, true), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, u_input.d, u_input.d), firstLeadingBit(vec4<u32>(u_input.d, 4294967295u, u_input.b, u_input.d)))), func_4(Struct_3(false, Struct_1(u_input.c, vec3<i32>(arg_1, 0i, u_input.e), u_input.b), abs(vec3<u32>(0u, u_input.d, 1u)), _wgslsmith_f_op_f32(select(-1486f, -693f, true)), func_3()), Struct_3(true, Struct_1(u_input.c, vec3<i32>(0i, arg_1, arg_1), 4294967295u), countOneBits(vec3<u32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_f_op_f32(abs(1396f)), _wgslsmith_mod_u32(u_input.b, 1u)), Struct_1(u_input.e, vec3<i32>(arg_1, 0i, -2147483647i), ~36118u)) << (~func_4(Struct_3(arg_2, Struct_1(u_input.e, vec3<i32>(10456i, 8124i, arg_1), u_input.d), vec3<u32>(0u, 4294967295u, 4294967295u), -1681f, u_input.b), Struct_3(false, Struct_1(-2147483647i, vec3<i32>(u_input.a, arg_1, arg_1), u_input.d), vec3<u32>(u_input.b, 130927u, u_input.b), 202f, u_input.b), Struct_1(-2147483647i, vec3<i32>(-2147483647i, 11758i, -1i), u_input.d)) % vec4<u32>(32u)));
    var var_1 = Struct_2(select(select(vec2<bool>(true, true), arg_0.ww, vec2<bool>(arg_0.x, true)), select(select(select(arg_0.yx, vec2<bool>(arg_2, arg_0.x), arg_0.xw), select(arg_0.xx, arg_0.zx, vec2<bool>(arg_2, false)), vec2<bool>(true, false)), select(vec2<bool>(arg_0.x, true), select(arg_0.xz, vec2<bool>(false, arg_0.x), vec2<bool>(true, arg_0.x)), arg_0.x), true), arg_0.yw), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-753f)) * _wgslsmith_f_op_f32(-161f - -184f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2501f + 559f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-770f, -1262f)), _wgslsmith_f_op_f32(step(-1142f, _wgslsmith_f_op_f32(-179f - 1000f))))), 315f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-294f, -1496f)) - _wgslsmith_f_op_f32(ceil(-1250f))))));
    let var_2 = ~(~(vec3<u32>(u_input.b, var_0.x, _wgslsmith_sub_u32(var_0.x, u_input.d)) & max(func_4(Struct_3(true, Struct_1(u_input.e, vec3<i32>(-2504i, arg_1, -8964i), 0u), var_0.wxx, 1000f, 1u), Struct_3(var_1.a.x, Struct_1(arg_1, vec3<i32>(-2147483647i, -13522i, u_input.a), 0u), vec3<u32>(4294967295u, u_input.d, u_input.b), -1837f, var_0.x), Struct_1(arg_1, vec3<i32>(-1291i, arg_1, u_input.e), var_0.x)).wyz, var_0.wyy)));
    let var_3 = var_0.wx;
    let var_4 = (u_input.c > u_input.a) && all(select(select(arg_0.wzz, select(arg_0.xxy, vec3<bool>(arg_0.x, false, false), arg_0.zzy), arg_1 >= -39411i), !arg_0.zxw, false));
    return var_1.a.x;
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(round(207f));
    let var_1 = Struct_1(~min(arg_2.b.x, arg_1), vec3<i32>(_wgslsmith_dot_vec3_i32(arg_2.b >> ((vec3<u32>(4294967295u, arg_2.c, u_input.b) & vec3<u32>(363u, u_input.d, 68438u)) % vec3<u32>(32u)), select(vec3<i32>(-1i, arg_1, 110461i), abs(vec3<i32>(arg_2.b.x, arg_1, arg_1)), arg_0.xzz)), arg_2.a, 1i), 11848u << (func_4(Struct_3(arg_0.x, arg_2, vec3<u32>(arg_2.c, 29183u, 21190u) & vec3<u32>(u_input.d, arg_2.c, arg_2.c), _wgslsmith_f_op_f32(floor(var_0)), min(0u, u_input.d)), Struct_3(!arg_0.x, arg_2, vec3<u32>(arg_2.c, 2230u, 1u), _wgslsmith_f_op_f32(ceil(arg_3.x)), arg_2.c), Struct_1(_wgslsmith_sub_i32(-1i, -1i), arg_2.b, ~u_input.d)).x % 32u));
    let var_2 = arg_1;
    var var_3 = Struct_2(vec2<bool>(all(select(select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), arg_0, arg_0), arg_0, select(arg_0, vec4<bool>(true, false, false, false), true))), true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, var_0, -1027f, arg_3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1559f, arg_3.x, 1072f) - vec4<f32>(-160f, 1000f, arg_3.x, arg_3.x)))))))));
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_3.b.x, 209f))));
    return Struct_2(select(vec2<bool>(any(!arg_0), true), vec2<bool>(any(!arg_0), false), !vec2<bool>(!var_3.a.x, all(arg_0.yz))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(arg_3.x - var_3.b.x), _wgslsmith_div_f32(arg_3.x, var_4)) + var_3.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<bool>(func_2(vec4<bool>(any(vec4<bool>(true, true, true, false)), true, true, all(vec2<bool>(true, false))), func_1(vec2<u32>(u_input.d, u_input.d) >> (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u)), firstLeadingBit(vec4<i32>(u_input.a, -65821i, -6148i, -1i))), true), true, all(vec4<bool>(true, true, true, true)) || all(vec2<bool>(true, true)), 4294967295u > ~u_input.d), u_input.a, Struct_1(u_input.a, ~firstLeadingBit(vec3<i32>(u_input.c, 2147483647i, u_input.a)), ~u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(524f, -1057f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-332f, 314f), vec2<f32>(334f, 323f))), true)), vec2<f32>(-449f, _wgslsmith_f_op_f32(select(1017f, -174f, false))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1126f), _wgslsmith_f_op_f32(step(-1044f, -1389f))))));
    var_0 = func_5(!vec4<bool>(true, false, ~u_input.b == 16571u, (-1i <= u_input.a) && (var_0.a.x & var_0.a.x)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a, firstTrailingBit(u_input.e), ~u_input.a), max(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.e)), vec3<i32>(-1i, -13344i, u_input.a)))), Struct_1(2147483647i, ~(-vec3<i32>(2147483647i, u_input.e, u_input.c)), _wgslsmith_mult_u32(4294967295u, u_input.d)), vec2<f32>(1334f, var_0.b.x));
    var_0 = Struct_2(!var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(-var_0.b))));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.c, u_input.c, u_input.a, -1i) | (vec4<i32>(u_input.c, u_input.e, u_input.a, 2147483647i) >> (vec4<u32>(u_input.b, u_input.d, u_input.b, 48185u) % vec4<u32>(32u))), ~abs(vec4<i32>(-49468i, -1i, u_input.a, u_input.e))), -(~vec4<i32>(7377i, 2572i, 15819i, u_input.a))), -abs(u_input.e));
    let var_2 = abs(vec4<i32>(-(~u_input.c), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, 1i, 2147483647i), abs(vec3<i32>(var_1.x, u_input.e, u_input.e))), vec3<i32>(~11321i, -u_input.a, u_input.a)), -_wgslsmith_add_i32(~u_input.a, 24550i | var_1.x), var_1.x));
    let var_3 = Struct_1(-u_input.a, var_2.yxz, ~u_input.b);
    var var_4 = _wgslsmith_mult_i32(var_2.x, firstTrailingBit(~_wgslsmith_dot_vec2_i32(-vec2<i32>(-14086i, var_3.a), vec2<i32>(var_3.a, var_3.b.x))));
    var_4 = 0i;
    var var_5 = Struct_1(var_1.x, ~vec3<i32>(23970i, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_2.x, u_input.e), reverseBits(vec2<i32>(u_input.e, var_2.x))), ~var_1.x), reverseBits(26450u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~(~vec3<u32>(18589u, 1u, u_input.b)), ~(~vec3<u32>(var_5.c, 0u, 39436u))) << (vec3<u32>(2717u, ~(~var_3.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_5.c, var_3.c, var_3.c, 40159u), vec4<u32>(62148u, 41710u, u_input.b, 73651u))) % vec3<u32>(32u)));
}

