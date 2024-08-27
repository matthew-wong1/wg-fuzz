struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: i32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: Struct_3,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), 1i, -1369i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    global1 = ~(-vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global1.x, -4311i, 0i, global1.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, global1.x, global1.x), vec4<i32>(global1.x, -2147483647i, 2147483647i, 2147483647i), vec4<i32>(global1.x, 4022i, global1.x, global1.x))), (global1.x | 1i) & global1.x, ~1i));
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(389f - -477f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1189f)))) + _wgslsmith_f_op_f32(-1828f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1827f, -1146f)))))));
    let var_1 = -vec4<i32>(~max(10385i, global1.x) << ((_wgslsmith_dot_vec2_u32(vec2<u32>(16293u, u_input.a.x), u_input.b.zx) & 77342u) % 32u), 33466i, global1.x, 1i);
    var var_2 = _wgslsmith_f_op_f32(-var_0);
    global1 = firstLeadingBit(-vec3<i32>(65246i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-9383i, var_1.x), vec2<i32>(-2147483647i, 21458i)), _wgslsmith_div_i32(_wgslsmith_sub_i32(global1.x, var_1.x), 48891i)));
    return _wgslsmith_f_op_f32(exp2(var_0));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4) -> Struct_3 {
    var var_0 = ~vec3<i32>(arg_2.b.x, -1i, i32(-1i) * -8111i);
    var var_1 = ~(~0u);
    let var_2 = _wgslsmith_f_op_f32(741f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), 448f));
    var_0 = vec3<i32>(24903i, -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-5640i, arg_1.a), max(var_0.x, arg_2.c), var_0.x & -2147483647i, min(global1.x, -1i)), firstLeadingBit(max(arg_1.c.b, arg_1.c.b))), arg_1.d);
    global0 = array<Struct_1, 14>();
    return arg_1;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: Struct_3) -> u32 {
    var var_0 = _wgslsmith_add_i32(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(-40062i, -1i) & _wgslsmith_dot_vec3_i32(arg_3.c.b.xyy, vec3<i32>(arg_2.x, arg_3.c.b.x, arg_1.c)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_1.c, 18272i), ~arg_1.b.x, arg_2.x)), -1i);
    let var_1 = arg_2.x;
    global1 = vec3<i32>(max(~(-var_1), global1.x), -9460i, arg_1.c);
    var var_2 = arg_1;
    var_0 = -_wgslsmith_add_i32(_wgslsmith_mod_i32(~0i, _wgslsmith_sub_i32(2147483647i, 6096i)), arg_1.b.x);
    return 1u;
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 14>();
    global1 = ~reverseBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, global1.x, 1i), vec3<i32>(2147483647i, global1.x, -27564i))) << ((vec3<u32>(17831u, func_4(vec4<f32>(-1173f, 1063f, -138f, 1652f), Struct_4(27757u, global1.zx, global1.x, vec2<u32>(1u, 4294967295u)), -vec2<i32>(global1.x, -2147483647i), func_2(true, Struct_3(global1.x, u_input.a.x, Struct_2(42146u, vec4<i32>(74289i, 0i, 0i, global1.x), global0[_wgslsmith_index_u32(u_input.b.x, 14u)], vec3<u32>(4294967295u, 54019u, 35013u)), -10992i, vec3<f32>(1853f, -1216f, -538f)), Struct_4(u_input.a.x, vec2<i32>(global1.x, global1.x), global1.x, u_input.b.yy))), firstLeadingBit(~u_input.a.x)) | vec3<u32>(u_input.b.x, u_input.b.x, ~(~u_input.b.x))) % vec3<u32>(32u));
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -180f)));
    var var_1 = Struct_5(true, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(878f * 352f))))), func_2(_wgslsmith_f_op_f32(floor(-195f)) == _wgslsmith_f_op_f32(func_3()), func_2(true, Struct_3(-global1.x, firstLeadingBit(u_input.b.x), Struct_2(u_input.a.x, vec4<i32>(global1.x, global1.x, global1.x, global1.x), Struct_1(609f, -588f, vec3<bool>(true, true, true), vec2<bool>(true, false)), u_input.b), -14642i, vec3<f32>(-872f, -696f, -147f)), Struct_4(u_input.b.x, ~vec2<i32>(global1.x, global1.x), global1.x, reverseBits(u_input.b.yz))), Struct_4(abs(u_input.b.x), -global1.xy, -46006i, vec2<u32>(u_input.a.x, u_input.a.x))), !vec3<bool>(select(true, false, false), false, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, var_0))))));
    var var_2 = true;
    return _wgslsmith_f_op_f32(abs(963f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(1u);
    let var_1 = Struct_4(~17351u, global1.yz, global1.x, _wgslsmith_sub_vec2_u32(firstLeadingBit(abs(vec2<u32>(0u, u_input.a.x)) ^ (u_input.a.zy << (vec2<u32>(41555u, 5156u) % vec2<u32>(32u)))), ~_wgslsmith_mod_vec2_u32(~u_input.a.ww, vec2<u32>(1u, 16487u))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(func_1())) + _wgslsmith_f_op_f32(select(-692f, -836f, all(vec3<bool>(false, false, true))))))) == _wgslsmith_f_op_f32(-347f + _wgslsmith_f_op_f32(func_1()));
    var_0 = u_input.b.x >> (~((4294967295u << (select(1u, u_input.b.x, true) % 32u)) | ~u_input.b.x) % 32u);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(791f, 722f, -825f), vec3<f32>(-399f, -673f, 516f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1060f, -1476f, -1000f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1725f * 1000f), _wgslsmith_f_op_f32(max(2848f, -173f)), _wgslsmith_div_f32(2014f, 283f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-823f, 1000f, -1060f), vec3<f32>(175f, -1000f, -262f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(793f, -1417f, 780f))) + vec3<f32>(_wgslsmith_f_op_f32(round(984f)), _wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_f_op_f32(209f - 314f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1287f, 1758f, 493f)))) - func_2(!var_2, Struct_3(global1.x, var_1.a, Struct_2(u_input.b.x, vec4<i32>(global1.x, var_1.b.x, var_1.b.x, -2147483647i), Struct_1(1538f, 1188f, vec3<bool>(var_2, var_2, var_2), vec2<bool>(false, var_2)), u_input.a.zzy), var_1.b.x, vec3<f32>(969f, -185f, 628f)), Struct_4(u_input.b.x, vec2<i32>(global1.x, 12753i), global1.x, u_input.a.xy)).e)));
    global1 = vec3<i32>(select(abs(1i) | _wgslsmith_mod_i32(global1.x, i32(-1i) * -23487i), var_1.c, func_2(var_2, func_2(any(vec4<bool>(var_2, var_2, var_2, var_2)), func_2(true, Struct_3(2147483647i, var_1.a, Struct_2(var_1.a, vec4<i32>(-1i, var_1.b.x, global1.x, 49771i), Struct_1(1000f, 524f, vec3<bool>(false, true, var_2), vec2<bool>(true, false)), vec3<u32>(var_1.d.x, u_input.a.x, var_1.a)), global1.x, vec3<f32>(var_3.x, -677f, 1952f)), var_1), Struct_4(35961u, global1.zy, -14718i, vec2<u32>(var_1.d.x, 1u))), Struct_4(1u, var_1.b, _wgslsmith_div_i32(global1.x, 21211i), vec2<u32>(var_1.d.x, 30716u))).c.c.d.x), _wgslsmith_mod_i32(-8673i, _wgslsmith_dot_vec3_i32(vec3<i32>(33161i, var_1.b.x, var_1.b.x) | select(vec3<i32>(-15290i, 14758i, 2147483647i), vec3<i32>(var_1.c, var_1.b.x, 8781i), false), ~(-vec3<i32>(-1i, -62565i, -10568i)))), -10959i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_1.a, var_1.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-595f, var_3.x, 2023f))))))));
}

