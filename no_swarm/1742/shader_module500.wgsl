struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = select(~vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.b, arg_0.b), ~arg_0.b, countOneBits(1u)), ~arg_0.b, countOneBits(arg_0.b)), _wgslsmith_mod_vec3_u32(max(~vec3<u32>(36294u, 4294967295u, 0u), vec3<u32>(arg_0.b, arg_0.b, 58309u)) << (~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0.b, arg_0.b), vec3<u32>(arg_0.b, 1u, 41183u)) % vec3<u32>(32u)), vec3<u32>(4294967295u, abs(arg_0.b), abs(_wgslsmith_div_u32(arg_0.b, 1u)))), true);
    let var_1 = firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, arg_0.d), vec3<i32>(1i, u_input.a, arg_0.d))), -arg_0.d)) | _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 21960i), firstTrailingBit(vec2<i32>(19719i << (arg_0.b % 32u), _wgslsmith_add_i32(66610i, arg_0.d))));
    let var_2 = Struct_5(vec4<i32>(31476i, ~u_input.a, u_input.a | 0i, _wgslsmith_div_i32(var_1.x, -var_1.x) ^ arg_0.d), firstLeadingBit(1i), ~(-_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-64065i, 52589i, -1i), vec3<i32>(u_input.a, 1i, arg_0.d), vec3<i32>(arg_0.d, 1i, 35024i)), reverseBits(vec3<i32>(var_1.x, var_1.x, 20940i)))), vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(808f - -246f)))), _wgslsmith_f_op_f32(649f - _wgslsmith_f_op_f32(-arg_0.a)), -1974f, -1092f));
    let var_3 = var_2;
    var var_4 = arg_0;
    return vec4<bool>(false, !arg_0.c, !var_4.c || arg_0.c, all(select(!select(vec3<bool>(true, true, var_4.c), vec3<bool>(arg_0.c, arg_0.c, true), vec3<bool>(arg_0.c, true, var_4.c)), !vec3<bool>(arg_0.c, true, var_4.c), select(select(vec3<bool>(arg_0.c, arg_0.c, true), vec3<bool>(arg_0.c, arg_0.c, arg_0.c), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: vec2<f32>) -> Struct_5 {
    let var_0 = vec3<bool>(false, all(!(!func_3(Struct_1(-688f, 4294967295u, arg_0, arg_1.b)))), arg_0);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.d * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 285f, arg_1.d.x, 1000f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-272f, arg_2.x, arg_2.x, 1627f))))), arg_1.d), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_2.x)))), _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1901f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(261f * 545f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x)))), !(!vec4<bool>(all(vec4<bool>(true, arg_0, var_0.x, true)), false, true, !var_0.x))));
    var var_2 = _wgslsmith_add_vec3_u32(firstLeadingBit(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(34724u, 1u, 4294967295u), vec3<u32>(28580u, 0u, 63784u), vec3<u32>(0u, 4294967295u, 4294967295u)) ^ vec3<u32>(1u, 1u, 1u))), ~(~firstLeadingBit(vec3<u32>(0u, 0u, 6298u))));
    var_2 = vec3<u32>(_wgslsmith_mult_u32(1u, 4294967295u), 92399u, ~(~var_2.x));
    var var_3 = arg_2.x;
    return arg_1;
}

fn func_4(arg_0: Struct_5) -> i32 {
    let var_0 = vec3<i32>(u_input.a, 1i, arg_0.a.x);
    var var_1 = func_2(false, arg_0, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.d.x)) * _wgslsmith_f_op_f32(-2939f * -190f)), _wgslsmith_f_op_f32(-777f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1233f)))));
    var var_2 = ~abs(var_0.x);
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, min(var_1.a.x, ~_wgslsmith_add_i32(arg_0.c.x, var_0.x)), -u_input.a), -_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.c ^ vec3<i32>(-41991i, u_input.a, 0i), func_2(false, arg_0, arg_0.d.yw).c), arg_0.a.yyx, var_0));
    var var_4 = _wgslsmith_f_op_f32(arg_0.d.x + 1035f);
    return var_0.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_5) -> Struct_4 {
    var var_0 = 50114u;
    let var_1 = Struct_2(vec2<bool>(false, true), Struct_1(_wgslsmith_f_op_f32(1736f + _wgslsmith_f_op_f32(f32(-1f) * -262f)), arg_0.b, arg_0.c, abs(i32(-1i) * -16861i)), ~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b, 4294967295u, 1u, 0u), vec4<u32>(4294967295u, arg_0.b, 32470u, arg_0.b), _wgslsmith_mult_vec4_u32(vec4<u32>(46148u, 4294967295u, 24087u, 133618u), vec4<u32>(arg_0.b, 81155u, 13655u, arg_0.b))), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(38901u, 1221u, 1u, arg_0.b)), vec4<u32>(4294967295u, 4294967295u, arg_0.b, arg_0.b) | vec4<u32>(arg_0.b, 48070u, arg_0.b, 0u)), select(!vec4<bool>(true, arg_0.c, false, arg_0.c), select(vec4<bool>(true, arg_0.c, arg_0.c, true), vec4<bool>(arg_0.c, arg_0.c, true, false), vec4<bool>(true, false, arg_0.c, true)), arg_0.c)), 0i);
    var_0 = _wgslsmith_clamp_u32(arg_0.b, 1u, 4294967295u);
    var_0 = 51035u;
    let var_2 = vec3<bool>(any(select(!vec3<bool>(false, var_1.b.c, true), !vec3<bool>(var_1.a.x, false, arg_0.c), all(vec3<bool>(var_1.b.c, true, arg_0.c)))) && true, arg_0.c, arg_0.c);
    return Struct_4(select(select(vec3<bool>(select(false, var_2.x, false), var_1.b.a <= arg_0.a, true), select(select(var_2, vec3<bool>(var_1.b.c, true, var_2.x), arg_0.c), !var_2, select(var_2, var_2, var_2)), var_2), select(var_2, !select(var_2, vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(arg_0.c, false, arg_0.c)), var_1.a.x), true), func_4(Struct_5(arg_2.a, ~1i, vec3<i32>(2147483647i, 7839i, var_1.b.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.d - vec4<f32>(-1431f, var_1.b.a, -1044f, 886f))))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_mod_i32(1i, 2147483647i);
    var var_1 = func_5(Struct_1(-1000f, 68836u, true, var_0 << (11542u % 32u)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1109f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -652f) * _wgslsmith_div_f32(165f, 963f)), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -230f)), Struct_5(vec4<i32>(func_4(func_2(true, Struct_5(vec4<i32>(2147483647i, var_0, u_input.a, var_0), var_0, vec3<i32>(var_0, u_input.a, u_input.a), vec4<f32>(-553f, -957f, -1000f, 686f)), vec2<f32>(903f, -1477f))), -1i, 1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0, u_input.a, u_input.a, 5193i)), vec4<i32>(1i, -10477i, -15376i, var_0))), 1i, ~(reverseBits(vec3<i32>(u_input.a, var_0, var_0)) | -vec3<i32>(var_0, -2147483647i, -2147483647i)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))));
    var_1 = func_5(Struct_1(-1000f, 4294967295u, var_1.a.x, u_input.a), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(var_1.a.x, Struct_5(vec4<i32>(var_1.b, u_input.a, -2147483647i, 1i), u_input.a, vec3<i32>(var_1.b, u_input.a, u_input.a), vec4<f32>(-481f, 879f, -467f, -580f)), vec2<f32>(1435f, -482f)).d.xz), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -763f), -605f)))), func_2(select(u_input.a >= -var_1.b, (1i > u_input.a) | var_1.a.x, all(!vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x))), Struct_5(vec4<i32>(-1i) * -vec4<i32>(var_1.b, u_input.a, 1i, u_input.a), min(_wgslsmith_dot_vec4_i32(vec4<i32>(-31074i, var_1.b, var_1.b, u_input.a), vec4<i32>(-2147483647i, var_1.b, u_input.a, 0i)), func_2(true, Struct_5(vec4<i32>(u_input.a, u_input.a, u_input.a, var_0), -2147483647i, vec3<i32>(var_0, var_1.b, 17066i), vec4<f32>(415f, -923f, -1329f, 395f)), vec2<f32>(491f, -176f)).c.x), ~(-vec3<i32>(var_0, 1046i, var_1.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1678f, 664f, 110f, -1077f), vec4<f32>(-1172f, 1275f, 772f, 1906f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-883f, 734f)))))));
    var_1 = Struct_4(!func_5(Struct_1(_wgslsmith_div_f32(1512f, -1000f), 0u, var_1.a.x && false, -58556i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(693f, 903f), vec2<f32>(206f, -1000f), var_1.a.x))), Struct_5(vec4<i32>(u_input.a, -8333i, 1i, var_0), var_1.b, select(vec3<i32>(var_1.b, 30662i, var_1.b), vec3<i32>(1i, var_1.b, -14208i), vec3<bool>(var_1.a.x, true, var_1.a.x)), vec4<f32>(1000f, -973f, -176f, -405f))).a, var_0);
    var var_2 = _wgslsmith_mod_u32(max(1u, 31667u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(~51684u, ~77333u), ~(~vec2<u32>(44613u, 36912u)), select(func_3(Struct_1(-1409f, 77935u, false, -2147483647i)).xz, vec2<bool>(true, false), !var_1.a.zy)), ~vec2<u32>(~4294967295u, 15462u)));
    return Struct_2(!(!(!func_5(Struct_1(-1000f, 1u, false, -460i), vec2<f32>(1653f, -511f), Struct_5(vec4<i32>(-26283i, var_1.b, 1i, var_1.b), u_input.a, vec3<i32>(50138i, var_1.b, -24020i), vec4<f32>(-783f, -106f, -1382f, -481f))).a.yy)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-230f, _wgslsmith_f_op_f32(max(-413f, 1000f))))), ~(~36283u), countOneBits(15620i) != var_1.b, i32(-1i) * -44977i), vec4<u32>(~(~1u), ~4294967295u, 1031u, ~(~12131u)), u_input.a);
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: Struct_5, arg_3: Struct_2) -> Struct_5 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-660f + _wgslsmith_f_op_f32(-arg_2.d.x))), 1111f);
    var var_1 = func_5(func_1().b, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x - 1157f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(func_1().b.a)) - 268f)), arg_2).a;
    var_0 = arg_2.d.yy;
    var var_2 = Struct_2(arg_0.a.a, func_1().b, _wgslsmith_clamp_vec4_u32(~vec4<u32>(~31903u, 1u, arg_1, ~4294967295u), arg_0.e.c >> (~vec4<u32>(31558u, arg_3.b.b, 4294967295u, arg_1) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(min(reverseBits(arg_3.c), vec4<u32>(25525u, 0u, 32851u, 4294967295u) << (arg_0.a.c % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, arg_3.b.b), arg_0.a.c, arg_0.a.c)), ~(~arg_0.a.c))), arg_3.d);
    var var_3 = func_1();
    return Struct_5(~abs(firstTrailingBit(arg_2.a) | ~vec4<i32>(-2147483647i, arg_2.a.x, -2147483647i, -1i)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_3.b.d, 1602i), u_input.a), abs(_wgslsmith_mod_vec3_i32(-arg_2.c, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, 0i)), _wgslsmith_mult_i32(arg_3.b.d, var_2.b.d), u_input.a ^ arg_2.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.b.a)) + _wgslsmith_f_op_f32(arg_2.d.x + 1911f)), 298f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.d.a - arg_2.d.x))), var_3.b.a) + _wgslsmith_f_op_vec4_f32(abs(arg_2.d))));
}

fn func_7(arg_0: f32, arg_1: u32, arg_2: Struct_5, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_5(vec4<i32>(-5141i, arg_2.c.x, abs(-26526i), ~func_2(29253i < u_input.a, Struct_5(vec4<i32>(0i, u_input.a, -2147483647i, 0i), arg_3.x, arg_2.c, vec4<f32>(arg_0, 632f, -139f, arg_2.d.x)), arg_2.d.yz).b), ~(_wgslsmith_sub_i32(arg_2.b, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 47231i, arg_2.a.x, -21182i), arg_2.a)) & firstTrailingBit(_wgslsmith_mult_i32(u_input.a, 0i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.a.x | ~24572i, arg_3.x, -33529i), vec3<i32>(18140i, abs(2147483647i) | func_4(Struct_5(vec4<i32>(-1i, 2147483647i, 0i, u_input.a), 0i, arg_3, arg_2.d)), -4576i), max(reverseBits(arg_2.c >> (vec3<u32>(4294967295u, 4294967295u, arg_1) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(arg_3, func_6(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(-483f, 39741u, true, 1i), vec4<u32>(4294967295u, 1u, arg_1, 0u), u_input.a), vec4<bool>(false, false, false, false), arg_3.x, Struct_1(arg_2.d.x, 78149u, false, arg_2.b), Struct_2(vec2<bool>(true, true), Struct_1(arg_0, 25197u, true, u_input.a), vec4<u32>(arg_1, arg_1, arg_1, arg_1), u_input.a)), arg_1, Struct_5(vec4<i32>(1i, arg_2.a.x, -19745i, -36718i), -70411i, arg_3, vec4<f32>(-957f, -363f, arg_0, -978f)), Struct_2(vec2<bool>(true, false), Struct_1(arg_0, arg_1, false, -3440i), vec4<u32>(1u, 4294967295u, arg_1, arg_1), -1i)).a.wyw))), vec4<f32>(arg_2.d.x, arg_2.d.x, 1000f, arg_0));
    let var_1 = arg_1 & 4294967295u;
    let var_2 = countOneBits(~_wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(1u, 4294967295u, var_1, arg_1)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, arg_1, arg_1, 1u), vec4<u32>(65184u, var_1, var_1, 51958u)), ~(~vec4<u32>(7755u, var_1, var_1, 49754u))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -333f);
    let var_4 = -479f;
    return Struct_3(Struct_2(func_5(Struct_1(var_4, var_2.x ^ 1u, var_0.c.x >= 32670i, func_6(Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(1419f, var_1, true, arg_2.b), var_2, -43073i), vec4<bool>(false, true, false, false), 1i, Struct_1(var_4, 4294967295u, false, u_input.a), Struct_2(vec2<bool>(true, false), Struct_1(-1771f, 2539u, true, var_0.b), vec4<u32>(40407u, arg_1, 22201u, 33862u), arg_2.c.x)), arg_1, Struct_5(vec4<i32>(30149i, -3860i, var_0.b, var_0.a.x), var_0.a.x, vec3<i32>(-2147483647i, -1i, 52588i), arg_2.d), Struct_2(vec2<bool>(false, false), Struct_1(-1259f, 0u, false, -27286i), vec4<u32>(50490u, var_1, var_2.x, 47651u), u_input.a)).b), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-183f, arg_2.d.x), var_0.d.wy, true)))), arg_2).a.yx, func_1().b, countOneBits(select(var_2, vec4<u32>(arg_1, var_2.x, var_1, 70429u), vec4<bool>(true, true, true, true))) & (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 28550u, var_1), var_2) >> (var_2 % vec4<u32>(32u))), _wgslsmith_mult_i32(u_input.a, var_0.a.x)), vec4<bool>(false, true && func_3(Struct_1(var_3, 66601u, false, 1i)).x, !any(vec4<bool>(false, false, false, true)), any(vec2<bool>(true, true))), 1i, Struct_1(488f, min(~(~var_2.x), abs(~var_1)), !(_wgslsmith_f_op_f32(f32(-1f) * -1000f) == var_4), 1i), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(-252f, ~30813u, func_6(Struct_3(func_1(), select(func_3(Struct_1(-1945f, 1u, false, 2147483647i)), vec4<bool>(true, true, true, true), true), u_input.a, func_1().b, Struct_2(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), func_1().b, vec4<u32>(6315u, 7320u, 0u, 81864u), u_input.a)), 1u, Struct_5(countOneBits(firstLeadingBit(vec4<i32>(-49584i, 2482i, 1i, -2147483647i))), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 11531i), vec2<i32>(u_input.a, 0i))), vec3<i32>(u_input.a, _wgslsmith_mod_i32(11388i, -18827i), u_input.a), vec4<f32>(-1093f, 1f, _wgslsmith_f_op_f32(534f * -1817f), -339f)), func_1()), vec3<i32>(49270i, func_2(false, func_6(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(-348f, 0u, true, 2147483647i), vec4<u32>(20777u, 0u, 4294967295u, 10993u), u_input.a), vec4<bool>(false, false, false, false), u_input.a, Struct_1(-880f, 59739u, false, 8342i), Struct_2(vec2<bool>(false, true), Struct_1(1257f, 47069u, false, 2147483647i), vec4<u32>(2227u, 1u, 68366u, 32921u), 2147483647i)), 2321u, Struct_5(vec4<i32>(6781i, -16677i, 1i, u_input.a), u_input.a, vec3<i32>(u_input.a, u_input.a, 35328i), vec4<f32>(198f, 481f, 539f, -413f)), Struct_2(vec2<bool>(true, true), Struct_1(-275f, 0u, true, u_input.a), vec4<u32>(0u, 32357u, 1910u, 1u), u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1266f, 877f))).c.x ^ u_input.a, u_input.a ^ 38413i));
    var var_1 = !(!(!vec4<bool>(var_0.a.a.x, any(vec3<bool>(false, false, true)), var_0.b.x, !var_0.d.c)));
    var var_2 = min(-4020i, -1i);
    let var_3 = min(var_0.d.d, u_input.a) << (var_0.e.b.b % 32u);
    var_2 = -_wgslsmith_div_i32(reverseBits(~(~u_input.a)), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1578f) - _wgslsmith_f_op_f32(-var_0.a.b.a)) * _wgslsmith_f_op_f32(-var_0.d.a)) + -367f), 1u, func_4(Struct_5(vec4<i32>(var_0.e.b.d, var_0.d.d, 10756i, u_input.a), 0i, vec3<i32>(var_0.d.d, var_3, var_0.c) & vec3<i32>(var_0.e.d, -1i, var_3), vec4<f32>(var_0.a.b.a, var_0.a.b.a, -1136f, 452f))) >> (_wgslsmith_sub_u32(var_0.e.c.x, var_0.e.c.x) % 32u));
}

