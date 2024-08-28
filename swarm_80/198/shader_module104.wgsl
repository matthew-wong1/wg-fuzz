struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec4<f32> {
    var var_0 = countOneBits(-22347i);
    var_0 = ~(u_input.d.x ^ _wgslsmith_sub_i32(select(u_input.d.x, min(1i, u_input.d.x), true), reverseBits(_wgslsmith_mod_i32(10568i, -6883i))));
    var var_1 = 1u;
    let var_2 = -683f;
    var_0 = u_input.d.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(532f, -1233f, var_2, var_2)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-586f, -564f, 2362f, -906f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2913f, var_2, 1000f, var_2)))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(747f, var_2, var_2, 675f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, -1494f) * vec4<f32>(829f, 1124f, var_2, -893f))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1454f), 1000f, -376f, -1000f), vec4<f32>(-128f, _wgslsmith_f_op_f32(sign(569f)), _wgslsmith_f_op_f32(-1105f - 457f), -1096f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3()))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), var_0.x, _wgslsmith_div_f32(233f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_0.x) + _wgslsmith_f_op_f32(var_0.x * 855f))), -1015f) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_1)), _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(f32(-1f) * -876f), _wgslsmith_f_op_f32(exp2(var_0.x))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.wwy + vec3<f32>(-429f, var_0.x, _wgslsmith_f_op_f32(select(1921f, 100f, false)))))) + var_0.wzx);
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_0.x, var_1.x, 1909f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.x, -660f, -1790f) * vec4<f32>(971f, -2176f, 1429f, var_1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 177f, -654f, var_1.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(853f, -423f), _wgslsmith_f_op_f32(var_0.x * 1960f), 555f, var_1.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_0.x) * vec4<f32>(-390f, -258f, -839f, var_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1646f, var_1.x, -569f, var_0.x) + vec4<f32>(-2184f, -270f, 1068f, var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3()))))));
    return Struct_2(Struct_1(_wgslsmith_mult_u32(u_input.c.x, 25394u), vec2<i32>(1i | u_input.b, u_input.d.x) | -_wgslsmith_mod_vec2_i32(vec2<i32>(-48683i, -2147483647i), arg_0.wy), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, 26949u), vec4<u32>(1u, 58797u, u_input.a.x, u_input.a.x)))), select(vec4<bool>(true, true, true, any(select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(true, arg_1, arg_1, arg_1), arg_1))), select(vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(arg_1, !arg_1, true, arg_1), all(!vec3<bool>(false, arg_1, false))), true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-513f - 2471f);
    var_0 = -193f;
    return func_2(-(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.a.b.x, 15777i, 0i, -4588i), vec4<i32>(-69038i, arg_2, arg_1.a.b.x, arg_3.a.b.x)))), arg_3.b.x).a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = vec2<i32>(u_input.d.x, 2147483647i);
    var var_1 = Struct_1(~abs(~106967u), vec2<i32>(-var_0.x, u_input.d.x), arg_0.a.c);
    var_1 = func_2(max(vec4<i32>(_wgslsmith_div_i32(u_input.b, _wgslsmith_mod_i32(-42542i, var_1.b.x)), arg_0.a.b.x, i32(-1i) * -18036i, min(-arg_0.a.b.x, arg_0.a.b.x << (u_input.a.x % 32u))), -_wgslsmith_sub_vec4_i32(vec4<i32>(4656i, u_input.b, var_0.x, arg_0.a.b.x), vec4<i32>(21587i, -43609i, 6784i, arg_1.b.x) | vec4<i32>(-44327i, 53920i, arg_0.a.b.x, arg_0.a.b.x))), select(true, _wgslsmith_f_op_f32(1368f - arg_3.x) < arg_3.x, !(!(true != arg_0.b.x)))).a;
    var_1 = arg_1;
    return Struct_2(arg_1, vec4<bool>(any(arg_0.b.zy), ~(arg_0.a.a & 24187u) != _wgslsmith_dot_vec2_u32(arg_0.a.c.zy & arg_1.c.xz, arg_1.c.zz), arg_2, true));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> bool {
    let var_0 = func_5(Struct_2(func_4(func_2(-vec4<i32>(1i, arg_1.a.b.x, arg_3.b.x, arg_1.a.b.x), false), Struct_2(arg_1.a, !arg_1.b), arg_3.b.x, arg_1), vec4<bool>(arg_1.b.x, true, arg_1.b.x, all(!arg_1.b.ww))), Struct_1(7934u, _wgslsmith_mod_vec2_i32(-abs(arg_3.b), arg_1.a.b), vec4<u32>((arg_1.a.a << (15958u % 32u)) & arg_0, arg_1.a.c.x & (4294967295u << (u_input.a.x % 32u)), select(~arg_1.a.c.x, 1u, -2020f >= arg_2), arg_3.a)), !any(select(select(arg_1.b.ww, vec2<bool>(arg_1.b.x, arg_1.b.x), arg_1.b.yy), func_2(vec4<i32>(arg_3.b.x, 34269i, 3278i, 0i), true).b.zw, arg_1.b.zz)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1045f + -1427f)), _wgslsmith_f_op_f32(trunc(1224f)), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(max(114f, arg_2)))))));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_mult_vec2_i32(var_0.a.b & u_input.d.zz, ~select(vec2<i32>(1200i, 2147483647i), vec2<i32>(-2147483647i, 17272i), var_0.b.zy)) & _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, _wgslsmith_add_i32(u_input.d.x, arg_1.a.b.x)), (vec2<i32>(-12878i, -20844i) ^ vec2<i32>(u_input.d.x, 70371i)) ^ abs(vec2<i32>(36142i, 14412i)), ~(arg_1.a.b ^ vec2<i32>(12403i, arg_3.b.x))), func_2(reverseBits(abs(vec4<i32>(25970i, 1i, -2147483647i, u_input.d.x))), all(var_0.b.zzx)).a.b);
    var var_3 = func_2(vec4<i32>(firstTrailingBit(0i | _wgslsmith_mod_i32(arg_1.a.b.x, var_2.x)), _wgslsmith_dot_vec3_i32(u_input.d, reverseBits(u_input.d)), 37019i, select(arg_1.a.b.x | var_0.a.b.x, -arg_1.a.b.x, any(select(var_0.b.yzw, var_0.b.yzw, var_0.b.zwz)))), false).b.wz;
    var_3 = var_0.b.ww;
    return _wgslsmith_div_i32(59000i, ~firstTrailingBit(abs(var_0.a.b.x))) == 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(true, true));
    var var_1 = 46735u;
    var_0 = 0i != u_input.d.x;
    var_0 = !any(vec4<bool>(func_1(u_input.c.x, Struct_2(Struct_1(4294967295u, vec2<i32>(u_input.d.x, -54789i), vec4<u32>(61569u, 0u, 4294967295u, u_input.a.x)), vec4<bool>(false, false, false, true)), -1359f, Struct_1(0u, vec2<i32>(u_input.d.x, u_input.d.x), vec4<u32>(u_input.c.x, 7203u, u_input.a.x, u_input.a.x))), true, true, true)) == all(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), func_5(Struct_2(Struct_1(28086u, vec2<i32>(u_input.d.x, u_input.d.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.c.x)), vec4<bool>(false, true, false, true)), func_5(Struct_2(Struct_1(0u, u_input.d.zy, vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.a.x)), vec4<bool>(true, true, false, false)), Struct_1(u_input.c.x, vec2<i32>(u_input.d.x, 1i), vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, 1u)), true, vec3<f32>(-678f, 1000f, -1399f)).a, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(415f, 124f, 1174f))).b.x));
    var var_2 = func_5(func_2(_wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(u_input.d.x, u_input.b, u_input.b, 0i)), -(vec4<i32>(-61465i, 1i, -2147483647i, -2147483647i) >> (vec4<u32>(u_input.c.x, u_input.a.x, 76618u, u_input.c.x) % vec4<u32>(32u))), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, u_input.b, -10919i), vec4<i32>(-19392i, -33469i, -45231i, 18583i), vec4<i32>(1806i, u_input.d.x, 1i, 2147483647i)), select(vec4<i32>(u_input.d.x, 19789i, -2147483647i, -36797i), vec4<i32>(-25977i, -1i, 0i, -1i), true))), true), Struct_1(1u, func_4(func_5(func_5(Struct_2(Struct_1(0u, u_input.d.zx, vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 31455u)), vec4<bool>(true, true, true, false)), Struct_1(54795u, vec2<i32>(-63276i, -19481i), vec4<u32>(u_input.a.x, 15568u, u_input.a.x, u_input.a.x)), true, vec3<f32>(-1000f, 160f, -520f)), Struct_1(u_input.a.x, u_input.d.yx, vec4<u32>(0u, u_input.c.x, 68533u, 4294967295u)), true, vec3<f32>(528f, -1000f, 683f)), func_2(countOneBits(vec4<i32>(u_input.d.x, -1i, -16016i, -4200i)), func_5(Struct_2(Struct_1(81533u, vec2<i32>(u_input.b, -1i), vec4<u32>(u_input.a.x, 4294967295u, 3813u, u_input.c.x)), vec4<bool>(true, true, true, true)), Struct_1(0u, vec2<i32>(u_input.d.x, 38724i), vec4<u32>(23771u, 71911u, 62084u, u_input.c.x)), false, vec3<f32>(1038f, -999f, 1059f)).b.x), ~2147483647i, Struct_2(func_2(vec4<i32>(u_input.d.x, u_input.d.x, -81516i, u_input.b), true).a, select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false))).b, func_2(select(abs(vec4<i32>(u_input.b, u_input.d.x, 1i, u_input.b)), -vec4<i32>(-2147483647i, -4403i, -29781i, u_input.d.x), true), select(true, 4294967295u <= u_input.c.x, func_5(Struct_2(Struct_1(48129u, vec2<i32>(-21014i, -8340i), vec4<u32>(9768u, u_input.a.x, 12413u, u_input.a.x)), vec4<bool>(false, true, true, false)), Struct_1(u_input.a.x, u_input.d.xz, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 27435u)), false, vec3<f32>(-708f, 886f, -635f)).b.x)).a.c), func_1(41162u, func_2(reverseBits(vec4<i32>(u_input.b, 172i, u_input.b, u_input.b)), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(323f, 702f, true)) - _wgslsmith_f_op_vec4_f32(func_3()).x)), func_2(vec4<i32>(4554i, u_input.d.x >> (u_input.a.x % 32u), ~1i, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, -47950i, u_input.d.x))), ~(-5071i) != u_input.b).a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-1730f, 184f)), -699f, -250f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1127f, -629f, 590f) - vec3<f32>(-693f, 703f, 530f)) - vec3<f32>(1000f, -1000f, -230f))), vec3<f32>(1f, 1f, 1f), vec3<bool>(true, true, true))));
    var_2 = func_2(~((_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.a.b.x, var_2.a.b.x, -12624i, 44330i), vec4<i32>(u_input.d.x, 1i, 2147483647i, u_input.b)) | vec4<i32>(u_input.b, -2147483647i, var_2.a.b.x, var_2.a.b.x)) ^ -(vec4<i32>(var_2.a.b.x, u_input.d.x, 0i, u_input.b) | vec4<i32>(2147483647i, -10132i, var_2.a.b.x, 42351i))), false);
    var var_3 = !func_2(vec4<i32>(0i, u_input.b, i32(-1i) * -1i, firstLeadingBit(2147483647i)) ^ (_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -1i, -2147483647i, var_2.a.b.x), vec4<i32>(u_input.b, var_2.a.b.x, u_input.b, -61309i)) ^ vec4<i32>(-1i, -67687i, var_2.a.b.x, var_2.a.b.x)), true).b;
    let var_4 = u_input.c.x < var_2.a.c.x;
    var var_5 = func_4(func_5(func_5(Struct_2(var_2.a, var_2.b), var_2.a, var_2.a.b.x < 1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(-424f, -364f, -184f) * vec3<f32>(-965f, 1084f, 651f))), var_2.a, _wgslsmith_f_op_vec4_f32(func_3()).x < -313f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1285f, -1000f, 1930f)))), Struct_2(func_5(func_2(vec4<i32>(-48684i, -2147483647i, u_input.d.x, 0i), true), Struct_1(1u, u_input.d.xz, vec4<u32>(var_2.a.c.x, u_input.c.x, 4386u, 9351u)), var_3.x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1492f, -399f, 598f)))).a, var_2.b), ~u_input.b | -2147483647i, func_5(func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 10994i, -2147483647i, -46801i), vec4<i32>(u_input.b, u_input.d.x, 1i, 17100i)), false), func_2(vec4<i32>(var_2.a.b.x, -2147483647i, u_input.d.x, var_2.a.b.x), var_4).a, 1237f != _wgslsmith_f_op_f32(select(-1343f, -671f, true)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-350f, -708f, 394f), vec3<f32>(769f, 359f, -1681f))))))).c >> (_wgslsmith_mod_vec4_u32(vec4<u32>(min(u_input.c.x, func_5(Struct_2(var_2.a, var_2.b), Struct_1(31849u, vec2<i32>(-1i, 26505i), vec4<u32>(u_input.a.x, var_2.a.c.x, 1u, 61846u)), true, vec3<f32>(-1042f, 781f, -1861f)).a.a), func_5(func_2(vec4<i32>(-2147483647i, 22950i, -27329i, u_input.b), var_2.b.x), var_2.a, false, _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1557f, 946f) - vec3<f32>(-285f, 1976f, -629f))).a.a, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(48468u, var_2.a.c.x, var_2.a.a, var_2.a.a), max(var_2.a.c, var_2.a.c))), vec4<u32>(u_input.c.x, ~1u, 0u, func_2(-vec4<i32>(var_2.a.b.x, 2147483647i, 18991i, -2147483647i), false).a.a)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec2<u32>(~1u, ~4294967295u), vec3<i32>(~1i, u_input.d.x, 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x) + -261f));
}

