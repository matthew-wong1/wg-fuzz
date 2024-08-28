struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(399f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0.x, -1426f)))))));
    var var_1 = _wgslsmith_f_op_f32(-var_0);
    var var_2 = vec3<bool>(false, true, 535f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -161f) - _wgslsmith_div_f32(-320f, -1806f)) - _wgslsmith_f_op_f32(max(-741f, _wgslsmith_f_op_f32(-var_0)))));
    let var_3 = ~(~(~select(min(u_input.b.xy, u_input.b.zx), arg_1.c.yw, var_2.xz)));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -136f);
    return arg_1;
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)));
    var var_1 = _wgslsmith_f_op_f32(-952f - var_0);
    var var_2 = min(u_input.b.yy, vec2<u32>(~u_input.b.x, 1u));
    var var_3 = arg_0;
    let var_4 = var_3.a.a;
    return -1i;
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> u32 {
    var var_0 = ~vec3<i32>(arg_0, -1i, 0i);
    let var_1 = -1i > u_input.a.x;
    let var_2 = any(select(!(!vec2<bool>(false, var_1)), vec2<bool>(var_1 && var_1, var_1), select(select(!vec2<bool>(false, var_1), select(vec2<bool>(false, var_1), vec2<bool>(false, false), vec2<bool>(var_1, true)), select(vec2<bool>(true, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_1, false))), !select(vec2<bool>(false, false), vec2<bool>(false, var_1), false), vec2<bool>(select(var_1, var_1, var_1), true))));
    var_0 = _wgslsmith_mult_vec3_i32(max(abs(firstTrailingBit(-vec3<i32>(-1i, -11344i, -37093i))), vec3<i32>(-2147483647i, ~(i32(-1i) * -1184i), max(~15556i, -u_input.d))), vec3<i32>(u_input.a.x, 1i | var_0.x, ~1i));
    var_0 = firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(select(~vec2<i32>(0i, arg_0), vec2<i32>(-2978i, 12319i), var_2), select(var_0.yz << (u_input.b.yy % vec2<u32>(32u)), var_0.zz, arg_0 > -3522i)), -1i & _wgslsmith_add_i32(_wgslsmith_sub_i32(0i, arg_0), _wgslsmith_sub_i32(2147483647i, var_0.x)), -24975i));
    return ~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(14437u, select(4294967295u, u_input.c, var_1) << (~4294967295u % 32u), ~4294967295u));
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: bool) -> vec3<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f) + 1543f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1049f)), -1799f)))), 1085f, _wgslsmith_f_op_f32(988f * 553f));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1056f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-524f, 200f, var_0.x)))), !arg_2)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1149f, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1441f))), any(select(arg_2, vec3<bool>(true, true, false), arg_3)))), vec3<f32>(556f, _wgslsmith_f_op_f32(f32(-1f) * -1320f), -763f))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, -1092f, -963f))))))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(-931f, -1907f, var_0.x)) * vec3<f32>(1051f, var_0.x, -1345f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 276f, -347f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(768f, var_0.x, 1277f), vec3<f32>(var_0.x, var_0.x, var_0.x)))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(704f, var_0.x, 1000f), vec3<f32>(-1000f, var_0.x, var_0.x), arg_2))))))), var_0.x);
    var var_2 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(-var_1.a.zx), func_1(vec2<f32>(-1319f, var_1.b), Struct_1(arg_2.x, u_input.c, arg_1, select(7400i, 34857i, true), 26193u))));
    return vec3<f32>(747f, -561f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -623f), var_1.b))));
}

fn func_2(arg_0: bool, arg_1: bool) -> vec2<f32> {
    let var_0 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-358f, -591f) * vec2<f32>(-360f, 345f))) + vec2<f32>(525f, _wgslsmith_f_op_f32(round(722f)))), Struct_1(any(select(vec2<bool>(false, false), vec2<bool>(true, true), arg_0)), u_input.c, ~(vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.c) & vec4<u32>(u_input.b.x, 96156u, u_input.c, u_input.b.x)), 1i, u_input.c)));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-241f, 880f, 692f) * vec3<f32>(3081f, -1000f, -457f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(257f, 733f, -1000f) + _wgslsmith_div_vec3_f32(vec3<f32>(-1142f, -423f, -1000f), vec3<f32>(688f, -156f, 294f))))), _wgslsmith_f_op_vec3_f32(func_5(45852u, vec4<u32>(func_4(func_3(Struct_2(Struct_1(arg_0, 0u, vec4<u32>(var_0.a.c.x, 5061u, 95976u, 25052u), 1i, 38065u)), true), Struct_3(vec3<f32>(-718f, 170f, -1253f), 936f)), ~1u, ~(~u_input.b.x), 50996u), vec3<bool>(true, true, true), !arg_0))));
    let var_2 = vec4<u32>(var_0.a.e, _wgslsmith_dot_vec3_u32(var_0.a.c.yxw, var_0.a.c.wzw), u_input.c, ~u_input.c);
    let var_3 = var_0;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-309f, 615f, var_1.x), vec3<f32>(1000f, var_1.x, 1196f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(var_3.a.e, vec4<u32>(var_2.x, 4294967295u, 1u, var_3.a.c.x), vec3<bool>(arg_0, var_0.a.a, var_0.a.a), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(-1893f, var_1.x, 399f))))));
    return vec2<f32>(304f, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var_0 = ~(~(~(~countOneBits(u_input.c))));
    let var_1 = func_1(vec2<f32>(_wgslsmith_f_op_f32(505f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-178f + 1329f), -500f)), _wgslsmith_f_op_f32(f32(-1f) * -410f)), Struct_1(any(vec2<bool>(false, all(vec2<bool>(false, false)))), 4294967295u, _wgslsmith_mult_vec4_u32(vec4<u32>(~11967u, u_input.b.x, _wgslsmith_mult_u32(46102u, u_input.c), ~u_input.c), firstTrailingBit(~vec4<u32>(u_input.b.x, u_input.b.x, 79604u, u_input.c))), 1i, 1290u));
    let var_2 = var_1.c;
    var var_3 = func_1(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * -1833f))) == 409f, _wgslsmith_add_u32(var_1.c.x, ~1u) >= 1u)), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-105f, -801f, -736f, 639f), vec4<f32>(305f, 2349f, 532f, -2261f)))))), 5623i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(1f))))), _wgslsmith_dot_vec4_i32(min(~_wgslsmith_add_vec4_i32(vec4<i32>(36229i, 1i, 2147483647i, u_input.a.x), vec4<i32>(var_3.d, var_3.d, -20495i, var_3.d)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, -1i, u_input.a.x, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.d, u_input.d, var_3.d, var_3.d), vec4<i32>(var_3.d, 1i, u_input.d, var_1.d)))), vec4<i32>(var_1.d, u_input.d ^ 33289i, var_1.d, var_1.d ^ (var_1.d ^ 0i))), ~_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_3.d, var_3.d, u_input.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 2147483647i, var_1.d), _wgslsmith_div_vec3_i32(vec3<i32>(0i, var_3.d, -52718i), vec3<i32>(u_input.a.x, 0i, -2384i))), vec3<i32>(1i, 1967i, var_3.d) | (vec3<i32>(var_3.d, 2147483647i, u_input.d) << (vec3<u32>(9078u, 1u, 33341u) % vec3<u32>(32u)))));
}

