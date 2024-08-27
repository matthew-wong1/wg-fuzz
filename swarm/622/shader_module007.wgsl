struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: f32, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = arg_0.d.yyw;
    let var_1 = arg_2;
    let var_2 = false;
    var var_3 = arg_0.a;
    var_3 = Struct_2(Struct_1(arg_0.a.b.a, arg_0.a.b.b), var_3.b);
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-137f, -1378f)))), _wgslsmith_f_op_f32(select(arg_0.c.d.a.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1, -744f)), 1000f, (1387u ^ arg_0.c.c) <= _wgslsmith_mult_u32(arg_1, 41375u))), arg_0.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(true);
    let var_1 = u_input.d;
    var var_2 = ~min(vec3<u32>(~_wgslsmith_div_u32(u_input.d, 4294967295u), _wgslsmith_sub_u32(1u, ~4294967295u), u_input.d), vec3<u32>(u_input.d ^ ~54591u, 4294967295u, var_1));
    var_2 = ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(27776u, var_1, 1u) << (abs(vec3<u32>(18524u, var_1, var_1)) % vec3<u32>(32u)), max(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.x, var_2.x, 0u), vec3<u32>(4294967295u, u_input.d, 1u)), vec3<u32>(1u, 31046u, var_2.x))));
    var_2 = select(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.d, var_2.x, var_2.x), ~vec3<u32>(4787u, var_2.x, var_1) | vec3<u32>(3029u, var_1, var_1)) >> (~(~(~vec3<u32>(u_input.d, var_1, var_2.x))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec2_u32(abs(var_2.zx ^ vec2<u32>(u_input.d, 24744u)), var_2.yx), u_input.d >> (5981u % 32u), firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(42905u, 24966u, var_1), vec3<u32>(12177u, 0u, 0u)))), select(select(select(vec3<bool>(false, var_0.a, true), vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(true, false, var_0.a)), select(!vec3<bool>(var_0.a, var_0.a, var_0.a), select(vec3<bool>(true, false, true), vec3<bool>(false, var_0.a, false), vec3<bool>(var_0.a, var_0.a, false)), var_0.a), true), !vec3<bool>(var_0.a, u_input.b < u_input.e, !var_0.a), !(!(1u == var_1))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-2025f + -428f), 215f, _wgslsmith_f_op_f32(373f - -1142f)))), u_input.a.yzx), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_5(Struct_2(Struct_1(vec3<f32>(377f, -239f, 1268f), u_input.a.xyz), Struct_1(vec3<f32>(1303f, 122f, 169f), u_input.a.yxz)), _wgslsmith_f_op_f32(f32(-1f) * -1384f), Struct_3(false, vec3<bool>(var_0.a, var_0.a, var_0.a), var_1, Struct_2(Struct_1(vec3<f32>(786f, 1746f, -2850f), u_input.a.yxy), Struct_1(vec3<f32>(-231f, -911f, 1476f), vec3<i32>(-54067i, -1i, -1i))), -36498i), select(vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(true, false, var_0.a, var_0.a), true), vec2<bool>(var_0.a, var_0.a)), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(582f - -1000f) - -403f), Struct_4(var_0.a))), select(vec3<i32>(u_input.b, u_input.c.x, _wgslsmith_mod_i32(2147483647i, u_input.a.x)), ~abs(vec3<i32>(-57629i, u_input.b, 18100i)), !any(vec3<bool>(false, var_0.a, true)))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> Struct_3 {
    var var_0 = Struct_5(arg_0.d, _wgslsmith_f_op_f32(arg_0.d.a.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-207f)))), Struct_3(arg_0.a, select(select(select(arg_0.b, vec3<bool>(false, true, arg_0.b.x), arg_0.b), vec3<bool>(arg_2, true, true), any(arg_0.b)), vec3<bool>(true, arg_0.a, any(vec4<bool>(true, arg_2, true, arg_2))), false), countOneBits(u_input.d >> (11989u % 32u)) << (4294967295u % 32u), Struct_2(arg_0.d.b, arg_0.d.a), arg_0.d.b.b.x), select(vec4<bool>(select(all(vec4<bool>(arg_0.a, false, arg_2, arg_0.b.x)), true, true), false, true, false), vec4<bool>(true, arg_2 | (u_input.d > arg_0.c), !all(arg_0.b), true), vec4<bool>(true, all(arg_0.b.xy), !(!arg_2), any(select(arg_0.b.zz, vec2<bool>(arg_0.b.x, arg_2), arg_2)))), vec2<bool>(arg_2 || (4294967295u < _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 18035u, arg_1), vec3<u32>(0u, arg_0.c, u_input.d))), 34797u >= _wgslsmith_mult_u32(56236u, _wgslsmith_div_u32(22545u, u_input.d))));
    let var_1 = 0i;
    let var_2 = arg_0.b.xz;
    var_0 = Struct_5(var_0.c.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.b.a.x, _wgslsmith_f_op_f32(775f + var_0.b)))))), var_0.c, var_0.d, vec2<bool>(arg_0.a, false));
    var_0 = Struct_5(Struct_2(Struct_1(func_2().b.a, vec3<i32>(arg_0.e, var_0.c.d.b.b.x >> (75505u % 32u), 0i)), Struct_1(arg_0.d.b.a, -u_input.a.wzx)), arg_0.d.b.a.x, arg_0, vec4<bool>(true, true, var_0.c.b.x, select(~var_0.c.c, 1u, any(vec3<bool>(var_0.c.b.x, true, false))) != arg_1), vec2<bool>(var_2.x, !var_0.c.b.x));
    return Struct_3(select(var_0.a.b.b.x, max(_wgslsmith_div_i32(1i, arg_0.d.a.b.x), -var_0.a.a.b.x), var_2.x) < u_input.e, vec3<bool>(any(select(vec2<bool>(arg_0.b.x, false), var_0.e, var_0.c.b.zy)), !arg_0.a, arg_0.a), abs(arg_0.c), Struct_2(func_2().b, Struct_1(var_0.a.a.a, ~(~vec3<i32>(2147483647i, -2147483647i, -1i)))), 31796i);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_4 {
    var var_0 = func_4(Struct_3(arg_1.a, func_4(func_4(func_4(Struct_3(arg_1.a, arg_0.b, arg_0.c, Struct_2(Struct_1(vec3<f32>(-539f, -821f, -1204f), arg_0.d.a.b), Struct_1(arg_0.d.b.a, u_input.a.wzy)), 1i), arg_0.c, arg_1.a), u_input.d, true), arg_0.c, !arg_1.a).b, u_input.d, func_2(), _wgslsmith_sub_i32(firstTrailingBit(10912i), ~max(u_input.c.x, 12513i))), 4294967295u, arg_0.b.x).d.a;
    var var_1 = ~_wgslsmith_sub_i32(-u_input.b, ~(~(~7687i)));
    return Struct_4(arg_1.a);
}

fn func_1(arg_0: f32, arg_1: Struct_5) -> bool {
    var var_0 = arg_1.c.d.b.a.zx;
    var var_1 = func_5(func_4(Struct_3(~arg_1.a.b.b.x >= u_input.e, select(arg_1.c.b, !vec3<bool>(arg_1.c.b.x, false, arg_1.c.a), vec3<bool>(false, arg_1.d.x, arg_1.d.x)), ~(~u_input.d), func_2(), firstTrailingBit(arg_1.a.b.b.x) | abs(38560i)), abs(1u), true && (_wgslsmith_mult_i32(u_input.b, u_input.e) == 1i)), Struct_4(true));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(func_4(Struct_3(true, arg_1.d.wyz, u_input.d, arg_1.a, 19665i), 1u, false).d.b.a.x, _wgslsmith_f_op_vec3_f32(func_3(Struct_5(Struct_2(arg_1.c.d.b, arg_1.c.d.b), -416f, arg_1.c, vec4<bool>(true, true, true, false), vec2<bool>(false, true)), _wgslsmith_mod_u32(arg_1.c.c, arg_1.c.c), _wgslsmith_f_op_f32(sign(arg_1.a.b.a.x)), func_5(Struct_3(arg_1.c.b.x, arg_1.c.b, arg_1.c.c, Struct_2(arg_1.a.b, arg_1.a.b), -1i), Struct_4(false)))).x) * 1860f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-855f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -225f))))), _wgslsmith_f_op_f32(abs(-1438f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))));
    var_1 = func_5(func_4(Struct_3(any(vec4<bool>(true, false, true, var_1.a)), select(select(vec3<bool>(true, false, var_1.a), vec3<bool>(false, false, arg_1.c.a), arg_1.c.b), vec3<bool>(true, false, true), var_1.a), arg_1.c.c, Struct_2(arg_1.c.d.a, Struct_1(vec3<f32>(var_0.x, var_0.x, 2153f), vec3<i32>(-2147483647i, u_input.c.x, -6252i))), arg_1.a.a.b.x), 83996u, any(vec2<bool>(var_1.a, select(false, arg_1.e.x, true)))), func_5(Struct_3(~u_input.d < countOneBits(1u), arg_1.d.ywx, 1u, Struct_2(Struct_1(vec3<f32>(arg_1.c.d.b.a.x, 437f, 148f), vec3<i32>(0i, u_input.e, -26000i)), Struct_1(arg_1.c.d.a.a, arg_1.a.b.b)), ~1i), func_5(func_4(func_4(Struct_3(var_1.a, arg_1.c.b, u_input.d, Struct_2(Struct_1(var_2.xzw, u_input.a.wyy), Struct_1(vec3<f32>(arg_1.c.d.a.a.x, -482f, var_2.x), u_input.a.wyw)), 0i), 18719u, arg_1.d.x), ~4294967295u, true), func_5(Struct_3(false, vec3<bool>(var_1.a, true, var_1.a), 83954u, Struct_2(Struct_1(vec3<f32>(410f, arg_1.c.d.a.a.x, arg_1.b), vec3<i32>(0i, u_input.a.x, -20501i)), Struct_1(arg_1.c.d.a.a, arg_1.c.d.a.b)), 43503i), func_5(arg_1.c, Struct_4(true))))));
    let var_3 = Struct_2(Struct_1(arg_1.c.d.a.a, select(firstTrailingBit(func_4(arg_1.c, u_input.d, true).d.b.b), u_input.a.xxy, !(!arg_1.c.b))), arg_1.c.d.b);
    return any(select(vec4<bool>(true, true, arg_1.d.x, arg_1.d.x), vec4<bool>(true, var_1.a, max(1u, arg_1.c.c) <= ~52473u, func_4(Struct_3(true, arg_1.c.b, arg_1.c.c, arg_1.a, 46843i), 4294967295u & u_input.d, true).b.x), true));
}

fn func_6(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(arg_1.d.a.a.zx));
    var var_1 = ~vec4<u32>(arg_1.c, 1u, max(1u, abs(arg_1.c)), 1u);
    var_1 = vec4<u32>(var_1.x, ~(~u_input.d), ~arg_1.c, ~firstTrailingBit(abs(arg_1.c) ^ _wgslsmith_mult_u32(var_1.x, 37509u)));
    var_1 = abs(~vec4<u32>(12518u, _wgslsmith_sub_u32(arg_1.c, 43699u) >> (_wgslsmith_div_u32(17396u, 1u) % 32u), 0u, _wgslsmith_sub_u32(1u, 0u)));
    let var_2 = _wgslsmith_div_vec4_i32(select(u_input.a, ~vec4<i32>(arg_1.e, arg_1.e, i32(-1i) * -48106i, _wgslsmith_mod_i32(1i, u_input.c.x)), u_input.c.x > -_wgslsmith_mult_i32(u_input.b, u_input.a.x)), u_input.a);
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = 1u ^ ~u_input.d;
    let var_2 = 0u != ~(var_1 << (_wgslsmith_clamp_u32(firstLeadingBit(79526u), 4294967295u, 88383u) % 32u));
    let var_3 = Struct_5(Struct_2(func_6(func_1(_wgslsmith_f_op_f32(-443f * 1067f), Struct_5(Struct_2(Struct_1(vec3<f32>(-270f, 1398f, -276f), vec3<i32>(u_input.c.x, u_input.c.x, -61437i)), Struct_1(vec3<f32>(-1126f, 185f, -880f), vec3<i32>(18167i, u_input.e, u_input.b))), -1632f, Struct_3(false, vec3<bool>(false, var_0, var_0), u_input.d, Struct_2(Struct_1(vec3<f32>(-776f, 247f, 288f), vec3<i32>(-11831i, u_input.c.x, -1i)), Struct_1(vec3<f32>(1264f, 129f, 1151f), u_input.a.yyy)), 0i), vec4<bool>(false, false, var_0, false), vec2<bool>(false, var_2))), Struct_3(!var_0, !vec3<bool>(false, false, var_0), u_input.d, Struct_2(Struct_1(vec3<f32>(-117f, 1231f, -634f), u_input.a.yxx), Struct_1(vec3<f32>(-192f, -617f, 647f), u_input.a.xzy)), i32(-1i) * -2147483647i)), Struct_1(vec3<f32>(_wgslsmith_div_f32(279f, -1097f), _wgslsmith_f_op_f32(-1267f - 745f), _wgslsmith_f_op_f32(min(1281f, -402f))), -u_input.a.zzx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1626f * _wgslsmith_f_op_f32(-1595f + -1341f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1956f - -1267f), -2703f, false)))), Struct_3(false, select(select(vec3<bool>(var_2, true, var_0), vec3<bool>(var_2, true, var_2), vec3<bool>(false, var_0, var_0)), !vec3<bool>(true, var_2, false), !var_0), _wgslsmith_add_u32(select(_wgslsmith_clamp_u32(53188u, 888u, u_input.d), _wgslsmith_mod_u32(var_1, 1u), all(vec2<bool>(var_0, var_0))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, var_1, u_input.d), vec3<u32>(u_input.d, 4294967295u, u_input.d)), countOneBits(1u))), Struct_2(func_2().b, Struct_1(vec3<f32>(-1000f, 334f, -1208f), select(u_input.a.zww, u_input.a.wwy, true))), u_input.e), !select(select(vec4<bool>(false, var_2, false, false), !vec4<bool>(var_0, var_2, true, var_2), var_0), !select(vec4<bool>(var_2, var_0, true, false), vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(true, var_0, var_0, var_2)), !select(vec4<bool>(var_2, var_2, true, false), vec4<bool>(false, false, false, var_2), vec4<bool>(var_0, var_0, true, var_2))), vec2<bool>(var_2, select(select(false, false, var_2 && true), var_0 || true, true)));
    let var_4 = var_3.c.d;
    let var_5 = Struct_3(false, var_3.c.b, _wgslsmith_mult_u32(~60647u, u_input.d), var_3.a, abs(-var_4.b.b.x));
    let var_6 = select(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_5.c, u_input.d, 51049u) << (vec3<u32>(var_1, var_3.c.c, 4294967295u) % vec3<u32>(32u)), vec3<u32>(0u, var_5.c, var_3.c.c), select(vec3<u32>(3523u, 41571u, 0u), vec3<u32>(27511u, var_1, u_input.d), vec3<bool>(true, true, false))), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(73946u, 0u, 0u), vec3<u32>(6410u, 4294967295u, 0u)), vec3<u32>(1u, 4294967295u, 1u), firstTrailingBit(vec3<u32>(20042u, 0u, var_3.c.c)))), 41686u, any(vec2<bool>(true, false | var_0))) << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(81997u, 4294967295u, _wgslsmith_div_u32(u_input.d, 74187u)), abs(~vec3<u32>(var_5.c, 42356u, var_1))), vec3<u32>(~firstTrailingBit(var_5.c), 0u << (1u % 32u), ~var_3.c.c)) % 32u);
    var var_7 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(44559i, _wgslsmith_mult_i32(~var_5.d.a.b.x, -var_3.a.b.b.x), vec3<i32>(~53069i, u_input.c.x, 33399i), _wgslsmith_add_i32(-func_4(func_4(Struct_3(true, vec3<bool>(var_2, var_3.d.x, true), var_3.c.c, Struct_2(Struct_1(vec3<f32>(var_4.b.a.x, var_3.c.d.b.a.x, var_5.d.b.a.x), var_4.b.b), Struct_1(var_3.a.a.a, var_3.a.a.b)), -1i), u_input.d, var_3.d.x), _wgslsmith_div_u32(var_3.c.c, 0u), false).d.b.b.x, u_input.b), (vec4<u32>(1u >> (var_6 % 32u), 56646u, var_1 >> (0u % 32u), 4702u) << (vec4<u32>(~var_5.c, var_3.c.c, select(49162u, u_input.d, true), 0u | var_5.c) % vec4<u32>(32u))) >> (vec4<u32>(abs(u_input.d) ^ 0u, ~4294967295u, _wgslsmith_sub_u32(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(98869u, var_5.c, u_input.d), vec3<u32>(37585u, var_3.c.c, var_6))), reverseBits(_wgslsmith_mod_u32(var_6, var_3.c.c))) % vec4<u32>(32u)));
}

