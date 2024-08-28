struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = !(arg_0.b.a.a.x & true);
    let var_1 = arg_0.b.b.a.x;
    let var_2 = max(u_input.a.x, min(50647u, 4294967295u));
    var var_3 = 1u;
    var var_4 = 1i;
    return vec3<i32>(~_wgslsmith_mod_i32(arg_0.b.a.c, -2147483647i), _wgslsmith_mod_i32(9380i, -arg_0.b.a.c), _wgslsmith_dot_vec4_i32(~vec4<i32>(-39907i, arg_0.b.a.c, -2147483647i, i32(-1i) * -62366i), vec4<i32>(18415i, ~arg_0.b.a.c << ((49740u << (arg_0.b.b.b % 32u)) % 32u), arg_0.b.a.c, -1i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = vec4<bool>(!arg_0.x, false, false, false);
    var_0 = !select(!(!select(vec4<bool>(var_0.x, arg_0.x, false, var_0.x), vec4<bool>(true, true, arg_0.x, false), true)), !vec4<bool>(false, arg_1.x <= arg_1.x, !arg_0.x, true), vec4<bool>(true, !any(vec3<bool>(arg_0.x, true, var_0.x)), var_0.x, !var_0.x));
    let var_1 = arg_1.x;
    var var_2 = firstLeadingBit(func_3(Struct_3(791f, Struct_2(Struct_1(var_0.xxw, 31100u, -53682i), Struct_1(var_0.xzy, u_input.a.x, 25863i)))));
    var_2 = ~_wgslsmith_mult_vec3_i32(-(abs(vec3<i32>(-1i, 2147483647i, var_2.x)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), u_input.a.xyy) % vec3<u32>(32u))), select(vec3<i32>(select(-41093i, var_2.x, true), ~0i, abs(-3195i)), vec3<i32>(-var_2.x, _wgslsmith_mult_i32(var_2.x, var_2.x), _wgslsmith_add_i32(var_2.x, 2147483647i)), all(var_0.yx)));
    return Struct_2(Struct_1(!var_0.ywy, u_input.a.x, abs(var_2.x)), Struct_1(vec3<bool>((-1033f >= arg_1.x) || (u_input.a.x != u_input.a.x), all(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), 4294967295u <= _wgslsmith_sub_u32(48487u, u_input.a.x)), u_input.a.x << (~3275u % 32u), var_2.x));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = arg_0;
    let var_1 = Struct_2(var_0.b.b, func_2(!(!arg_3.b.a.xy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.zy * arg_2.yx)))).b);
    var_0 = arg_0;
    var_0 = arg_0;
    var var_2 = func_2(!vec2<bool>(!func_2(var_1.a.a.yx, vec2<f32>(var_0.a, arg_2.x)).b.a.x, arg_3.b.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(min(arg_0.a, -753f)))))));
    return vec2<u32>(~(~(~2568u ^ (var_0.b.a.b >> (0u % 32u)))), (1u << (min(~var_1.a.b, 24656u | u_input.a.x) % 32u)) ^ 35080u);
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.a;
    var_0 = ~u_input.a;
    var var_1 = func_4(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -426f), func_2(vec2<bool>(select(true, false, false), all(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(758f, -814f))))), -(vec3<i32>(~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-63157i, 2147483647i), vec2<i32>(9046i, 1i)), _wgslsmith_mult_i32(-6235i, 57734i)) >> (~(~u_input.a.wyy) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1670f, _wgslsmith_f_op_f32(min(1000f, -742f)), 650f, -1103f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 484f, 179f, 299f)))))), func_2(select(func_2(vec2<bool>(false, false), vec2<f32>(518f, 1000f)).b.a.xx, select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(872f, _wgslsmith_div_f32(379f, -585f))))));
    var_1 = vec2<u32>(~select(71152u, ~(~var_1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(15713i, -19011i)) == ~(-12601i)), ~_wgslsmith_mult_u32(4294967295u, select(reverseBits(0u), ~1u, true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1415f, 1157f, -1126f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1049f, 1000f, -1000f, 1396f) * vec4<f32>(-1000f, -449f, 998f, -1000f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-636f, -1008f, -759f, -524f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1363f, -137f, -787f, -199f) + vec4<f32>(851f, 332f, -751f, -158f)))))));
    return Struct_2(Struct_1(vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1281f) <= _wgslsmith_f_op_f32(abs(var_2.x)), true), _wgslsmith_sub_u32(~(~18361u), func_4(Struct_3(var_2.x, Struct_2(Struct_1(vec3<bool>(true, false, true), 15508u, 25701i), Struct_1(vec3<bool>(true, true, true), 50362u, 18551i))), ~vec3<i32>(-66919i, 2147483647i, 32522i), var_2, func_2(vec2<bool>(true, false), var_2.zy)).x), _wgslsmith_div_i32(~1i, select(0i << (var_0.x % 32u), min(0i, -6554i), true))), func_2(!func_2(select(vec2<bool>(false, false), vec2<bool>(true, true), false), _wgslsmith_f_op_vec2_f32(-var_2.yx)).b.a.yz, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1501f, var_2.x)), var_2.zy, all(vec4<bool>(false, true, false, true)))), _wgslsmith_div_vec2_f32(var_2.zw, _wgslsmith_f_op_vec2_f32(floor(var_2.zy)))))).b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = select(vec4<bool>(!all(arg_1.b.b.a.zx) && any(!arg_1.b.a.a), true == (700f > _wgslsmith_f_op_f32(133f - arg_1.a)), func_1().b.a.x, arg_0.a.x), select(!vec4<bool>(true, arg_1.b.b.a.x & arg_1.b.a.a.x, true, false), select(select(vec4<bool>(false, true, arg_0.a.x, arg_0.a.x), !vec4<bool>(arg_0.a.x, false, arg_0.a.x, false), !vec4<bool>(true, true, true, arg_1.b.b.a.x)), select(vec4<bool>(true, false, false, arg_1.b.b.a.x), !vec4<bool>(arg_0.a.x, arg_0.a.x, true, true), arg_1.b.b.a.x), true), arg_0.a.x), arg_1.b.b.a.x);
    let var_1 = true;
    let var_2 = 14183u;
    var_0 = !(!(!select(vec4<bool>(arg_0.a.x, var_1, var_0.x, arg_0.a.x), vec4<bool>(arg_1.b.b.a.x, arg_0.a.x, arg_0.a.x, var_1), select(vec4<bool>(false, false, arg_0.a.x, arg_0.a.x), vec4<bool>(true, arg_0.a.x, false, true), vec4<bool>(false, false, false, var_1)))));
    var var_3 = Struct_2(func_2(func_2(select(func_1().a.a.yy, vec2<bool>(false, var_0.x), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-640f, -1968f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(644f, 814f))))).a.a.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.a, arg_1.a))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.a, 1242f), vec2<f32>(-972f, arg_1.a)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(328f, arg_1.a) + vec2<f32>(arg_1.a, arg_1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_1.a) - vec2<f32>(arg_1.a, arg_1.a)))))).a, func_1().a);
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(select(1956f, 1518f, true)), arg_1.a, _wgslsmith_f_op_f32(floor(166f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(23405i);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), ~_wgslsmith_sub_u32(u_input.a.x, 1u), var_0), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -463f), func_1()))) + vec4<f32>(1f, 1f, -1000f, _wgslsmith_f_op_vec4_f32(func_5(Struct_1(vec3<bool>(true, true, true), ~24289u, 1i), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -196f), Struct_2(Struct_1(vec3<bool>(false, false, false), 0u, var_0), Struct_1(vec3<bool>(false, false, false), u_input.a.x, -3540i))))).x));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1570f * 621f)), func_1());
    var var_3 = u_input.a.yz;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(1300f * 1000f), _wgslsmith_f_op_f32(var_1.x * -895f), var_1.x, _wgslsmith_f_op_f32(-490f * 163f)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 762f, 2324f, var_1.x) - vec4<f32>(var_1.x, -1000f, 266f, var_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_1.x, var_2.a, var_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(select(178f, 1370f, !var_2.b.a.a.x)), _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(f32(-1f) * -1319f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))))));
    var var_4 = var_1.zyw;
    var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -133f, _wgslsmith_f_op_f32(1580f - var_1.x)) * _wgslsmith_f_op_vec3_f32(floor(var_1.xyy)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(max(~0u, firstLeadingBit(var_3.x)), _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_div_u32(var_2.b.a.b, 4294967295u)), countOneBits(~var_3.x)), 3511u, var_3.x), -1000f, ~(-1i), u_input.a);
}

