struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec2<f32>,
    d: u32,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = Struct_5(min(_wgslsmith_mod_i32(reverseBits(-5659i), -1i), 0i), arg_3, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_1.d.a.xz * vec2<f32>(arg_3.a.c.x, 786f)), _wgslsmith_f_op_vec2_f32(-arg_3.d.a.xz))))))), 20180u, Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.a.a.a + arg_1.c.a.a)), arg_1.c, u_input.b.x, ~1i, arg_1));
    return vec4<bool>(arg_3.a.e.x, -963f >= _wgslsmith_f_op_f32(-arg_3.c.c.x), all(select(select(vec3<bool>(arg_3.c.e.x, arg_3.c.b, false), select(vec3<bool>(arg_3.a.e.x, var_0.e.b.e.x, true), vec3<bool>(arg_3.a.e.x, arg_3.a.e.x, false), var_0.b.c.e.x), select(vec3<bool>(false, var_0.e.e.a.e.x, true), vec3<bool>(true, false, true), var_0.e.b.d)), select(vec3<bool>(false, true, true), select(vec3<bool>(true, var_0.b.a.d, arg_3.a.b), vec3<bool>(arg_1.a.b, true, arg_1.c.d), true), arg_3.a.d), false)), all(select(select(vec2<bool>(var_0.b.a.e.x, true), vec2<bool>(false, arg_1.c.b), false), arg_3.c.e, vec2<bool>(false, arg_3.a.b))));
}

fn func_2() -> vec4<f32> {
    var var_0 = true;
    var_0 = all(select(!func_3(~u_input.b, Struct_3(Struct_2(Struct_1(vec3<f32>(373f, -758f, -2081f)), true, vec2<f32>(818f, 1120f), true, vec2<bool>(false, true)), Struct_1(vec3<f32>(-1686f, 434f, -720f)), Struct_2(Struct_1(vec3<f32>(-470f, 580f, -1885f)), false, vec2<f32>(1000f, -408f), true, vec2<bool>(true, true)), Struct_1(vec3<f32>(-1385f, -2211f, 1106f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1241f, 1431f)), Struct_3(Struct_2(Struct_1(vec3<f32>(-1652f, 322f, -136f)), true, vec2<f32>(-232f, -219f), false, vec2<bool>(false, true)), Struct_1(vec3<f32>(-650f, 121f, 1170f)), Struct_2(Struct_1(vec3<f32>(-918f, 162f, -401f)), true, vec2<f32>(-700f, -2198f), true, vec2<bool>(false, false)), Struct_1(vec3<f32>(947f, 420f, -205f)))), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true)), !any(select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    var_0 = !func_3(reverseBits(~(~vec2<u32>(47211u, u_input.c))), Struct_3(Struct_2(Struct_1(vec3<f32>(-2536f, 1870f, -723f)), any(vec4<bool>(false, true, false, true)), vec2<f32>(-476f, 975f), false, vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1153f, -1000f, -1000f) - vec3<f32>(-1229f, 1000f, 1000f))), Struct_2(Struct_1(vec3<f32>(-582f, 1304f, 581f)), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(173f, -1170f) + vec2<f32>(239f, 782f)), false, select(vec2<bool>(true, false), vec2<bool>(false, false), false)), Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-597f, 624f, 148f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1348f, -1000f)) + vec2<f32>(928f, -2060f))), Struct_3(Struct_2(Struct_1(vec3<f32>(362f, 709f, -203f)), true, vec2<f32>(-476f, -1111f), all(vec2<bool>(false, false)), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(231f, 1337f, -632f) * vec3<f32>(-465f, 231f, -1000f))), Struct_2(Struct_1(vec3<f32>(1198f, 851f, -867f)), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-595f, 575f) - vec2<f32>(-454f, -739f)), true, vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1068f, -695f, 1000f) * vec3<f32>(-340f, 2046f, -216f))))).x;
    var_0 = true;
    var_0 = !(!(!(!any(vec3<bool>(false, true, true)))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(751f * 231f) + 739f)), -1000f, 258f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -310f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(101f, -1547f)), _wgslsmith_f_op_f32(min(-1516f, -581f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1147f, 979f, -1133f), vec4<f32>(-246f, 778f, 1142f, 611f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -335f), 1840f, 1f) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-2286f, -1753f, -1000f, 1243f), vec4<f32>(1125f, -1689f, 976f, 1149f)), _wgslsmith_div_vec4_f32(vec4<f32>(-410f, -331f, -789f, 689f), vec4<f32>(-1334f, -530f, 430f, -1299f)))))));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: f32, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = ~vec2<i32>(reverseBits(1i), -1i) & (vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-46580i, -1i)), vec2<i32>(1i, 1i)), 1i) << ((u_input.b ^ vec2<u32>(0u, arg_1.x >> (arg_1.x % 32u))) % vec2<u32>(32u)));
    var var_1 = Struct_2(Struct_1(vec3<f32>(220f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-552f, 250f), _wgslsmith_f_op_f32(max(arg_3.x, arg_3.x)))), 1229f)), func_3(abs(vec2<u32>(4294967295u, u_input.b.x)), Struct_3(Struct_2(Struct_1(vec3<f32>(arg_3.x, arg_2, arg_3.x)), true, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, arg_3.x), arg_3.zz)), true, func_3(vec2<u32>(20616u, u_input.c), Struct_3(Struct_2(Struct_1(vec3<f32>(1098f, arg_2, arg_2)), true, vec2<f32>(-204f, arg_2), false, vec2<bool>(true, true)), Struct_1(arg_3.zwy), Struct_2(Struct_1(vec3<f32>(arg_3.x, -1242f, 758f)), true, vec2<f32>(1102f, -203f), false, vec2<bool>(false, false)), Struct_1(arg_3.xwx)), vec2<f32>(arg_2, arg_2), Struct_3(Struct_2(Struct_1(vec3<f32>(arg_3.x, -404f, arg_3.x)), false, vec2<f32>(arg_3.x, arg_3.x), true, vec2<bool>(true, false)), Struct_1(arg_3.zxx), Struct_2(Struct_1(arg_3.xxx), false, vec2<f32>(arg_2, -1272f), false, vec2<bool>(false, true)), Struct_1(vec3<f32>(arg_3.x, arg_3.x, -545f)))).xz), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, -261f, -584f) * vec3<f32>(arg_3.x, 100f, arg_2))), Struct_2(Struct_1(arg_3.wxw), all(vec3<bool>(false, true, true)), _wgslsmith_f_op_vec4_f32(func_2()).zz, true, select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), Struct_1(vec3<f32>(670f, 526f, 302f))), arg_3.wx, Struct_3(Struct_2(Struct_1(arg_3.zxy), true, _wgslsmith_f_op_vec2_f32(min(arg_3.xy, arg_3.wz)), all(vec3<bool>(false, true, true)), vec2<bool>(false, false)), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.x, arg_2, -484f), arg_3.ywy, vec3<bool>(false, false, true)))), Struct_2(Struct_1(vec3<f32>(944f, arg_3.x, arg_3.x)), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-953f, arg_2)), arg_3.x >= arg_2, vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1576f, 863f, arg_3.x)))))).x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_3.xy + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, arg_3.x) * vec2<f32>(arg_2, 1510f))))), vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2246f)) - _wgslsmith_f_op_f32(arg_3.x + arg_2))), vec2<bool>(all(vec4<bool>(true, true, false, false)), !select(false, false, true)))), !any(vec3<bool>(false, false, all(vec3<bool>(true, false, false)))), vec2<bool>(all(vec2<bool>(true, func_3(arg_1.xy, Struct_3(Struct_2(Struct_1(arg_3.xxy), true, vec2<f32>(arg_2, -510f), true, vec2<bool>(false, true)), Struct_1(arg_3.zyz), Struct_2(Struct_1(vec3<f32>(arg_3.x, arg_3.x, arg_2)), false, arg_3.wx, false, vec2<bool>(true, true)), Struct_1(vec3<f32>(arg_2, arg_2, arg_2))), vec2<f32>(1000f, -1377f), Struct_3(Struct_2(Struct_1(vec3<f32>(1000f, -310f, arg_2)), false, vec2<f32>(arg_3.x, 1389f), true, vec2<bool>(true, false)), Struct_1(arg_3.wzx), Struct_2(Struct_1(arg_3.xxx), true, arg_3.wx, true, vec2<bool>(true, true)), Struct_1(arg_3.yww))).x)), true || all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))));
    var var_2 = arg_1.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(arg_3.zz)), vec2<f32>(435f, -351f))) * vec2<f32>(-294f, _wgslsmith_f_op_f32(trunc(172f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1512f, arg_2))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_3.xx)) + _wgslsmith_f_op_vec2_f32(arg_3.zx - vec2<f32>(arg_3.x, var_1.c.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, 1418f) - vec2<f32>(var_1.a.a.x, -300f)), vec2<f32>(arg_2, arg_3.x))))));
    return Struct_3(Struct_2(Struct_1(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-arg_3.x), -257f)), false, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(-560f, var_1.c.x), _wgslsmith_f_op_f32(-var_1.a.a.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1811f), _wgslsmith_f_op_f32(-var_3.x)))), any(func_3(_wgslsmith_mod_vec2_u32(arg_1.zz, arg_1.yx), Struct_3(Struct_2(var_1.a, var_1.e.x, vec2<f32>(1375f, -1000f), var_1.b, vec2<bool>(var_1.d, var_1.b)), Struct_1(arg_3.wzz), Struct_2(var_1.a, false, vec2<f32>(419f, -796f), var_1.b, var_1.e), Struct_1(arg_3.xww)), vec2<f32>(var_3.x, 2175f), Struct_3(Struct_2(var_1.a, true, vec2<f32>(arg_2, 1701f), true, vec2<bool>(var_1.e.x, var_1.d)), Struct_1(var_1.a.a), Struct_2(Struct_1(var_1.a.a), true, var_3, var_1.d, var_1.e), var_1.a)).yz), select(vec2<bool>(all(var_1.e), false), vec2<bool>(1124f > var_3.x, true), all(select(vec4<bool>(false, var_1.b, var_1.b, true), vec4<bool>(true, var_1.d, false, false), vec4<bool>(false, true, var_1.e.x, true))))), var_1.a, Struct_2(var_1.a, ~_wgslsmith_mod_u32(arg_1.x, 0u) == 1u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a.a.xx, var_1.a.a.zx), var_3), _wgslsmith_f_op_vec2_f32(-var_3))), false, vec2<bool>(-var_0.x < firstTrailingBit(26033i), 45551u < _wgslsmith_div_u32(u_input.b.x, arg_0))), Struct_1(vec3<f32>(-1148f, 705f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_3.x, arg_3.x), _wgslsmith_f_op_f32(-arg_3.x), arg_0 < arg_1.x)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> vec4<bool> {
    let var_0 = Struct_5(-1i, func_4(~(~47032u), select(vec3<u32>(arg_0.x & 43508u, 83881u, ~1u), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(37008u, arg_0.x, arg_0.x))), select(!vec3<bool>(true, arg_1, false), vec3<bool>(false, arg_1, true), vec3<bool>(true, arg_1, arg_1))), 895f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_2()))))), vec2<f32>(941f, -473f), firstTrailingBit(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(47077u, 5499u), _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(1u, 0u))))), Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-695f, -1397f, 1734f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1285f, 2491f, 1766f))))), func_4(4294967295u, abs(~vec3<u32>(29093u, 9161u, u_input.c)), 1469f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1367f, 705f, -150f, -753f))) * vec4<f32>(-618f, 456f, -619f, -1547f))).a, 22870u, countOneBits(~(5561i >> (0u % 32u))), Struct_3(func_4(_wgslsmith_add_u32(u_input.a, u_input.d), abs(vec3<u32>(79582u, 21489u, 21005u)), _wgslsmith_f_op_f32(1380f * -1284f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, 1289f, 418f, 1839f))).c, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -245f, 920f) * vec3<f32>(1582f, -1559f, 984f))), func_4(u_input.c >> (arg_0.x % 32u), vec3<u32>(u_input.d, arg_0.x, arg_0.x) ^ vec3<u32>(0u, 9463u, 35062u), -545f, _wgslsmith_f_op_vec4_f32(vec4<f32>(964f, 1566f, -517f, -591f) * vec4<f32>(-1000f, 1000f, 725f, -689f))).c, Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(759f, 191f, -1420f)))))));
    let var_1 = select(func_3(arg_0, Struct_3(var_0.b.c, func_4(~0u, vec3<u32>(u_input.b.x, u_input.d, var_0.d), var_0.b.d.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c.a.a.x, 1306f, 570f, 1194f))).d, var_0.e.e.a, Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-684f, var_0.e.b.c.x, var_0.c.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.b.a.c.x, var_0.e.b.c.x), var_0.b.a.c.x)), var_0.e.e), vec4<bool>(!arg_1, all(!(!vec3<bool>(false, true, var_0.e.b.d))), true, true), select(!select(select(vec4<bool>(arg_1, var_0.b.c.d, arg_1, false), vec4<bool>(var_0.b.c.d, arg_1, var_0.e.b.b, false), arg_1), func_3(u_input.b, Struct_3(var_0.b.c, Struct_1(vec3<f32>(var_0.b.b.a.x, var_0.e.e.c.c.x, var_0.b.d.a.x)), Struct_2(var_0.e.b.a, arg_1, var_0.b.a.c, arg_1, vec2<bool>(arg_1, arg_1)), Struct_1(var_0.b.d.a)), var_0.b.d.a.yx, var_0.e.e), 39677i < var_0.e.d), select(select(vec4<bool>(arg_1, var_0.e.b.d, arg_1, arg_1), vec4<bool>(true, var_0.e.b.e.x, var_0.b.a.e.x, false), !vec4<bool>(var_0.b.c.d, true, true, false)), vec4<bool>(arg_1, true, -27091i >= var_0.e.d, arg_1), var_0.a != var_0.a), arg_1));
    let var_2 = Struct_5(_wgslsmith_div_i32(-_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -14000i), vec2<i32>(-10566i, 2147483647i))), max(-1i, ~var_0.e.d)), func_4(_wgslsmith_mod_u32(37229u, ~46803u), vec3<u32>(abs(0u), 1u, ~27320u), _wgslsmith_f_op_f32(min(-994f, -1141f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -555f, var_0.c.x, var_0.b.c.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a.a.a.x, 1033f, var_0.b.c.c.x, 395f) - vec4<f32>(141f, var_0.b.d.a.x, -226f, var_0.b.a.c.x)))))), vec2<f32>(var_0.c.x, var_0.b.b.a.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.a, u_input.b.x, 35028u)), ~vec3<u32>(arg_0.x, arg_0.x, var_0.e.c)) << (~var_0.e.c % 32u), ~4294967295u), Struct_4(var_0.e.a, var_0.b.c, abs(~reverseBits(1u)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(20317i, 65751i), select(vec2<i32>(var_0.a, -2147483647i), vec2<i32>(-4576i, -2147483647i), false)), _wgslsmith_div_vec2_i32(vec2<i32>(27463i, 38409i), vec2<i32>(var_0.a, var_0.e.d) & vec2<i32>(var_0.a, var_0.e.d))), func_4(~var_0.e.c, firstLeadingBit(vec3<u32>(arg_0.x, arg_0.x, arg_0.x) | vec3<u32>(u_input.b.x, 1u, u_input.a)), _wgslsmith_f_op_f32(-func_4(u_input.b.x, vec3<u32>(0u, 6473u, 1u), var_0.b.d.a.x, vec4<f32>(-1025f, 400f, var_0.e.e.c.c.x, var_0.c.x)).c.c.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2426f), var_0.b.a.a.a.x, -537f, _wgslsmith_f_op_f32(-var_0.e.b.c.x)))));
    var var_3 = Struct_5(abs(~(~var_0.a)), Struct_3(func_4(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(0u, var_2.d)), reverseBits(~vec3<u32>(var_2.e.c, 0u, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(690f)) - var_0.e.b.a.a.x), vec4<f32>(_wgslsmith_f_op_f32(-1278f - -1966f), _wgslsmith_f_op_f32(round(378f)), _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_div_f32(1240f, 1906f))).c, Struct_1(_wgslsmith_f_op_vec3_f32(min(var_2.e.b.a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.e.e.c.a.a.x, 1491f, 1345f))))), func_4(~(~arg_0.x), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 73402u), vec3<u32>(53062u, 1u, var_0.d)), ~vec3<u32>(var_0.d, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.a.a.x, -560f, 202f, -572f)))).c, var_0.e.e.c.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1916f, -681f) * var_2.b.c.a.a.yy), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 41939u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.e.c, 1u, var_0.e.c, 4294967295u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 0u))), abs(vec4<u32>(1u, arg_0.x, 12432u, 4294967295u)) & ~vec4<u32>(86480u, 83293u, 0u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(70915u, 5365u, var_2.d, var_2.e.c) << ((vec4<u32>(1u, var_0.e.c, u_input.b.x, var_2.d) << (vec4<u32>(var_2.e.c, arg_0.x, u_input.a, var_2.e.c) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(~8650u, var_0.d, var_2.e.c, ~1u))), var_2.e);
    let var_4 = any(vec3<bool>(all(func_3(vec2<u32>(2604u, 4294967295u), Struct_3(var_3.e.b, Struct_1(vec3<f32>(901f, 156f, var_2.b.a.c.x)), Struct_2(Struct_1(var_2.e.e.a.a.a), var_1.x, vec2<f32>(-447f, 980f), true, vec2<bool>(false, var_3.b.a.d)), var_0.b.d), var_3.b.c.a.a.zy, func_4(var_3.e.c, vec3<u32>(var_0.d, u_input.c, 29687u), -989f, vec4<f32>(-877f, var_3.b.c.c.x, var_3.e.b.c.x, var_0.b.d.a.x))).wx), !any(!var_1), arg_1));
    return select(select(var_1, vec4<bool>(arg_1, all(!vec2<bool>(var_1.x, var_3.b.a.d)), var_0.e.d <= min(var_2.a, var_2.a), !(!var_1.x)), vec4<bool>(true, var_2.a < var_3.e.d, _wgslsmith_f_op_f32(f32(-1f) * -1191f) < _wgslsmith_f_op_f32(-var_3.b.c.a.a.x), true)), vec4<bool>(var_2.b.a.d, true, var_1.x, var_1.x != any(var_1)), select(!vec4<bool>(true, true, any(var_1.zxx), var_4 && var_3.e.b.e.x), vec4<bool>(false, var_0.e.e.a.e.x, true, arg_1), all(func_3(vec2<u32>(59444u, 38964u), func_4(arg_0.x, vec3<u32>(u_input.a, 0u, arg_0.x), var_0.c.x, vec4<f32>(-661f, var_3.b.d.a.x, var_0.b.b.a.x, 1174f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-629f, var_2.b.a.a.a.x) * vec2<f32>(674f, var_3.c.x)), Struct_3(Struct_2(Struct_1(vec3<f32>(1515f, -1279f, -1376f)), var_0.b.a.b, vec2<f32>(var_0.e.b.a.a.x, -172f), true, var_3.b.a.e), Struct_1(var_3.b.a.a.a), Struct_2(var_0.b.a.a, var_2.e.b.e.x, vec2<f32>(1054f, var_2.e.e.d.a.x), true, vec2<bool>(false, arg_1)), var_0.e.b.a)).zwz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = !func_1(u_input.b, false);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d), abs(u_input.b)))), -_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -17708i, -1i, 0i), max(vec4<i32>(-2147483647i, 0i, 1i, 41845i), vec4<i32>(21483i, 2147483647i, -88159i, -2147483647i))), firstTrailingBit(vec4<i32>(1i, 1i, 7397i, -15430i)) << (min(vec4<u32>(u_input.b.x, 1u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.a, u_input.d, 1u)) % vec4<u32>(32u)), vec4<i32>(abs(-13711i), -2147483647i, -2147483647i, abs(-24864i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1090f), 998f)), _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_add_i32(78889i, _wgslsmith_div_i32(-31354i, 6536i))), _wgslsmith_sub_i32(abs(1i), -1i)));
}

