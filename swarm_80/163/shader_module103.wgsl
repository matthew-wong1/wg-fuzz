struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = Struct_1(arg_1.b.a, vec3<bool>(true, !(_wgslsmith_f_op_f32(-569f * arg_0.b.a) < _wgslsmith_f_op_f32(f32(-1f) * -2014f)), !arg_3.b.d.x), vec3<u32>(1u, ~1u, ~u_input.c), vec2<bool>(true, true));
    var var_1 = firstTrailingBit(arg_2);
    var var_2 = countOneBits(~arg_3.b.c.zx);
    var var_3 = ~u_input.c;
    let var_4 = arg_0;
    return vec2<bool>(all(arg_0.b.d), true);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_2((u_input.b | _wgslsmith_mod_vec3_i32(vec3<i32>(38120i, -12275i, u_input.a), vec3<i32>(-46933i, arg_1.c.x, 46608i))) << ((~select(vec3<u32>(arg_1.b.c.x, 39709u, u_input.c), arg_2.ywy, arg_1.b.b) ^ ~(~vec3<u32>(arg_1.b.c.x, 32009u, 54371u))) % vec3<u32>(32u)), arg_1.b, ~select(reverseBits(~vec3<i32>(36450i, 2147483647i, arg_1.c.x)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b, arg_1.a, vec3<i32>(-26021i, 2147483647i, arg_1.c.x)), ~vec3<i32>(2147483647i, -38134i, u_input.b.x)), !all(arg_1.b.b)), all(vec3<bool>(!(arg_1.d == false), true, true)));
    var_0 = Struct_2(abs(vec3<i32>(countOneBits(arg_1.a.x & var_0.a.x), -64340i, var_0.a.x)), Struct_1(_wgslsmith_f_op_f32(min(-813f, arg_0.x)), vec3<bool>(false, !any(vec2<bool>(var_0.d, var_0.b.d.x)), true | !var_0.b.b.x), _wgslsmith_div_vec3_u32(u_input.d.wxw, arg_1.b.c), select(select(arg_1.b.b.yy, vec2<bool>(false, false), var_0.b.d.x), var_0.b.b.xx, func_3(Struct_2(vec3<i32>(arg_1.c.x, u_input.b.x, -23547i), Struct_1(var_0.b.a, vec3<bool>(false, var_0.d, false), vec3<u32>(var_0.b.c.x, 4294967295u, arg_1.b.c.x), arg_1.b.b.zz), var_0.a, arg_1.d), Struct_2(var_0.c, Struct_1(arg_1.b.a, vec3<bool>(false, true, var_0.b.d.x), var_0.b.c, vec2<bool>(arg_1.d, arg_1.d)), vec3<i32>(53142i, arg_1.a.x, var_0.c.x), false), _wgslsmith_dot_vec2_i32(var_0.a.xy, vec2<i32>(var_0.c.x, arg_1.c.x)), arg_1))), vec3<i32>(~_wgslsmith_dot_vec2_i32(arg_1.a.yx, var_0.c.yy & vec2<i32>(51657i, 8413i)), -(~select(u_input.b.x, 1536i, true)), var_0.a.x), ~(_wgslsmith_mult_i32(1i, var_0.a.x) & max(4080i, -16201i)) > _wgslsmith_mod_i32(1i & arg_1.a.x, u_input.b.x));
    var_0 = arg_1;
    return var_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = !arg_0.b.b.yx;
    var var_1 = Struct_2(vec3<i32>(_wgslsmith_clamp_i32(~0i, arg_0.a.x, ~(u_input.a | arg_3.x)), -_wgslsmith_add_i32(-28115i, _wgslsmith_add_i32(arg_0.a.x, 7652i)), 1i), func_2(arg_2.wyy, Struct_2(select(vec3<i32>(arg_3.x, arg_0.a.x, u_input.a), arg_3, false) ^ arg_3, Struct_1(-1000f, vec3<bool>(arg_0.b.d.x, false, arg_0.b.b.x), u_input.d.wyz, arg_0.b.b.xy), -_wgslsmith_mod_vec3_i32(arg_0.a, arg_3), !var_0.x), ~reverseBits(~u_input.d)), vec3<i32>(_wgslsmith_mult_i32(select(0i, arg_1, var_0.x), _wgslsmith_clamp_i32(arg_3.x, 0i, arg_1)), _wgslsmith_div_i32(arg_0.c.x >> (arg_0.b.c.x % 32u), -2147483647i), -2147483647i) | select(arg_0.a, u_input.b << (u_input.d.ywy % vec3<u32>(32u)), true), !(false & (all(vec3<bool>(false, arg_0.b.d.x, arg_0.d)) | !var_0.x)));
    var_1 = arg_0;
    return Struct_2(~select(vec3<i32>(-10653i, ~(-12075i), -1i), ~(~u_input.b), arg_0.b.b), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-560f)), -350f), !var_1.b.b, u_input.d.zyx, !vec2<bool>(true, !var_0.x)), vec3<i32>(_wgslsmith_div_i32(-69126i, arg_0.a.x), firstLeadingBit(firstLeadingBit(firstTrailingBit(var_1.a.x))), min(_wgslsmith_mod_i32(arg_1, arg_3.x ^ -27004i), 278i)), true);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a), arg_0.b.a, _wgslsmith_f_op_f32(f32(-1f) * -659f)), Struct_2(vec3<i32>(1i, ~52543i, select(firstLeadingBit(arg_0.c.x), 1i, all(arg_2.d))), arg_2, reverseBits(~vec3<i32>(arg_0.a.x, -2147483647i, u_input.b.x) >> (~arg_1.zzw % vec3<u32>(32u))), !all(!vec2<bool>(arg_2.d.x, arg_2.d.x))), vec4<u32>(0u, func_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_2.a)), arg_2.a, _wgslsmith_f_op_f32(arg_2.a * -534f)), Struct_2(arg_0.a, Struct_1(2409f, arg_2.b, vec3<u32>(1u, u_input.c, 38116u), vec2<bool>(arg_0.d, arg_2.b.x)), vec3<i32>(58691i, u_input.a, 11710i), false), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, arg_2.c.x), ~arg_1)).c.x, countOneBits(_wgslsmith_div_u32(34010u, _wgslsmith_add_u32(0u, arg_1.x))), ~1u));
    var var_1 = func_4(func_4(Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, arg_0.c.x, 1i), u_input.b, u_input.b) & vec3<i32>(2147483647i, u_input.b.x, arg_0.c.x), func_4(func_4(Struct_2(arg_0.c, Struct_1(var_0.a, vec3<bool>(var_0.b.x, false, arg_2.b.x), u_input.d.xzx, vec2<bool>(false, arg_0.b.d.x)), arg_0.a, arg_0.d), 18885i, vec4<f32>(var_0.a, arg_2.a, 2282f, -677f), arg_0.c), -27068i, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.a, var_0.a, arg_0.b.a, var_0.a) - vec4<f32>(arg_0.b.a, arg_2.a, 1000f, var_0.a)), vec3<i32>(-1i, -44428i, arg_0.c.x) & vec3<i32>(-1i, 16868i, arg_0.c.x)).b, vec3<i32>(1i, 7448i, u_input.b.x), var_0.d.x), u_input.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1232f), _wgslsmith_f_op_f32(var_0.a + arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-249f)))), _wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(4024i), select(2147483647i, 47908i, arg_2.b.x), _wgslsmith_add_i32(-73306i, 63375i)), vec3<i32>(u_input.a, 48503i, _wgslsmith_clamp_i32(-11839i, u_input.b.x, 2147483647i)))), -2147483647i, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_0.b.a)), _wgslsmith_f_op_f32(1000f - var_0.a))), 286f, _wgslsmith_f_op_f32(func_4(Struct_2(vec3<i32>(0i, -6244i, -17191i), var_0, vec3<i32>(-52233i, -39525i, -6924i), true), u_input.a, vec4<f32>(var_0.a, arg_0.b.a, arg_0.b.a, -754f), ~vec3<i32>(arg_0.c.x, u_input.a, -1i)).b.a + arg_0.b.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-623f + var_0.a)))), u_input.b).b;
    var var_2 = func_4(Struct_2(vec3<i32>(firstLeadingBit(1i), 55002i, u_input.a), Struct_1(var_1.a, !var_0.b, arg_1.xyx, var_1.d), arg_0.a, true), arg_0.a.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(669f, arg_2.a, var_1.a, var_1.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(323f, 1349f, -1385f, -989f), vec4<f32>(var_1.a, var_0.a, arg_0.b.a, var_1.a))) * vec4<f32>(var_1.a, 551f, arg_2.a, -903f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, arg_0.b.a, arg_2.a)) - vec4<f32>(-640f, var_1.a, var_0.a, var_0.a))))), _wgslsmith_sub_vec3_i32(u_input.b, -u_input.b));
    var_1 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.b.a, var_0.a, 1398f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-463f, arg_0.b.a, -112f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1449f, -181f, var_2.b.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-308f, arg_2.a, 1548f))), var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1183f, -1301f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.a * 1000f)))), arg_0, vec4<u32>(4294967295u ^ arg_2.c.x, _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.c, var_0.c.x)), arg_2.c.x), 4294967295u, arg_1.x));
    var var_3 = func_4(arg_0, arg_0.c.x, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-141f + 593f), var_2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.a, var_2.b.a)), _wgslsmith_f_op_f32(-765f * -767f)))), vec3<i32>(u_input.b.x, var_2.a.x, 3769i ^ (_wgslsmith_add_i32(-2147483647i, 0i) | func_4(arg_0, arg_0.a.x, vec4<f32>(var_2.b.a, var_0.a, -452f, 944f), vec3<i32>(arg_0.a.x, arg_0.c.x, arg_0.c.x)).a.x)));
    return _wgslsmith_f_op_f32(var_3.b.a * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-653f + _wgslsmith_f_op_f32(-400f + 728f)))));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = false | any(vec3<bool>(-u_input.b.x >= 0i, true, any(vec4<bool>(false, true, true, true))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_5(func_4(Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.b.x), u_input.b), func_2(vec3<f32>(1225f, -115f, 549f), Struct_2(u_input.b, Struct_1(-1381f, vec3<bool>(false, true, true), vec3<u32>(u_input.d.x, 1u, u_input.c), vec2<bool>(false, true)), u_input.b, false), vec4<u32>(1u, 61350u, 4294967295u, 45992u)), vec3<i32>(u_input.b.x, -9710i, -1i) ^ vec3<i32>(2147483647i, -2359i, u_input.a), true), abs(_wgslsmith_clamp_i32(1i, 8495i, 1i)), vec4<f32>(_wgslsmith_div_f32(-1271f, 2526f), 1000f, 634f, _wgslsmith_f_op_f32(715f - 296f)), -vec3<i32>(u_input.a, -11602i, -2147483647i) | u_input.b), firstLeadingBit(arg_0), func_4(Struct_2(-u_input.b, func_4(Struct_2(u_input.b, Struct_1(-1000f, vec3<bool>(false, false, false), vec3<u32>(u_input.c, arg_0.x, 12793u), vec2<bool>(false, true)), u_input.b, true), u_input.b.x, vec4<f32>(1818f, -996f, 951f, -1259f), vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)).b, vec3<i32>(u_input.a, -33303i, 31387i), true), u_input.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-510f, 297f, -754f, 568f) - vec4<f32>(-235f, 2486f, 1933f, -151f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(941f, 1249f, 2811f, -379f) - vec4<f32>(1000f, -117f, 1000f, 1000f)))), vec3<i32>(-u_input.a, u_input.a, 0i)).b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-986f - 1158f), _wgslsmith_f_op_f32(f32(-1f) * -1277f)) + -1278f))), func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-654f, 654f, -920f), vec3<f32>(-530f, -2205f, -168f))))))), Struct_2(vec3<i32>(func_4(Struct_2(u_input.b, Struct_1(674f, vec3<bool>(false, false, false), arg_0.wzx, vec2<bool>(false, false)), vec3<i32>(37443i, u_input.a, u_input.b.x), true), -30320i, vec4<f32>(234f, -656f, 119f, 1280f), vec3<i32>(44741i, u_input.b.x, 55975i)).a.x, _wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_add_i32(0i, u_input.b.x)), func_4(func_4(Struct_2(vec3<i32>(2147483647i, 18234i, -2147483647i), Struct_1(-1000f, vec3<bool>(true, false, true), arg_0.yyx, vec2<bool>(false, false)), vec3<i32>(0i, 14787i, 0i), false), -1i, vec4<f32>(-750f, 1129f, 2368f, -610f), u_input.b), u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-627f, 312f, -437f, -184f)), abs(u_input.b)).b, vec3<i32>(_wgslsmith_mod_i32(u_input.a, u_input.b.x), u_input.a ^ 0i, abs(0i)), true | any(vec4<bool>(true, true, false, true))), abs(u_input.d)).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -737f), -1731f));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -414f, -715f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, -756f, -1209f, -1060f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1627f, 200f, var_1.x, 1317f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-890f, 967f, 796f, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-576f, -562f, -930f, 1104f), vec4<f32>(var_1.x, var_1.x, -252f, 148f)))), any(vec2<bool>(true, true)))));
    var var_3 = u_input.d.zz;
    let var_4 = Struct_2(u_input.b, func_4(func_4(Struct_2(u_input.b, func_4(Struct_2(vec3<i32>(-1i, u_input.b.x, -40856i), Struct_1(1253f, vec3<bool>(true, false, true), vec3<u32>(u_input.c, arg_0.x, var_3.x), vec2<bool>(true, true)), u_input.b, true), u_input.b.x, vec4<f32>(var_2.x, var_2.x, -1319f, -1657f), u_input.b).b, -u_input.b, all(vec2<bool>(false, true))), u_input.b.x, _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -1000f, -1000f, 646f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_2.x, var_2.x, -1467f), vec4<f32>(1096f, var_2.x, 1017f, var_2.x), vec4<bool>(false, false, true, true)))), countOneBits(vec3<i32>(u_input.b.x, -1533i, u_input.a))), u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1792f, 1038f, var_2.x, -1272f), vec4<f32>(var_1.x, var_2.x, var_1.x, var_2.x)))), vec3<i32>(1i, u_input.b.x, 1i)).b, _wgslsmith_sub_vec3_i32(~u_input.b, vec3<i32>(-33764i, 9035i, _wgslsmith_clamp_i32(-12642i, countOneBits(1i), u_input.a))), false);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-833f, var_1.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(1765f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(func_1(u_input.d))), all(vec2<bool>(!func_4(Struct_2(vec3<i32>(1i, 0i, -39444i), Struct_1(-1533f, vec3<bool>(true, false, false), u_input.d.yzy, vec2<bool>(false, false)), u_input.b, true), u_input.b.x, vec4<f32>(567f, 1691f, 1032f, 1709f), vec3<i32>(u_input.b.x, -19764i, -12249i)).d, true))));
    var var_1 = true;
    var_1 = !func_3(func_4(func_4(func_4(Struct_2(vec3<i32>(u_input.a, u_input.b.x, 0i), Struct_1(var_0, vec3<bool>(false, true, true), vec3<u32>(u_input.d.x, u_input.c, u_input.c), vec2<bool>(false, true)), vec3<i32>(2147483647i, 0i, -15856i), true), u_input.b.x, vec4<f32>(var_0, -2674f, var_0, -1041f), vec3<i32>(u_input.b.x, u_input.b.x, -32112i)), abs(1i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-153f, var_0, 1243f, -2789f), vec4<f32>(-226f, var_0, var_0, var_0), false)), ~vec3<i32>(-1i, u_input.b.x, u_input.a)), 2147483647i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, var_0, 1573f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1324f, var_0)), all(vec2<bool>(true, false)))), abs(~vec3<i32>(u_input.a, u_input.a, u_input.b.x))), Struct_2(min(reverseBits(vec3<i32>(u_input.a, -9511i, u_input.a)), u_input.b), Struct_1(var_0, vec3<bool>(false, true, false), vec3<u32>(19137u, 41825u, 1u), vec2<bool>(true, true)), ~(vec3<i32>(-2614i, -15356i, 7487i) << (u_input.d.yzy % vec3<u32>(32u))), true), -11767i, Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.a, 1i), vec4<i32>(u_input.a, u_input.b.x, u_input.a, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -56173i, u_input.a, 35621i), vec4<i32>(u_input.a, u_input.a, u_input.b.x, -43743i)), -46560i), Struct_1(_wgslsmith_f_op_f32(round(-465f)), vec3<bool>(true, true, false), ~u_input.d.xxy, func_2(vec3<f32>(var_0, var_0, -319f), Struct_2(u_input.b, Struct_1(var_0, vec3<bool>(true, false, false), u_input.d.wzx, vec2<bool>(true, true)), u_input.b, true), u_input.d).d), u_input.b, true)).x;
    var var_2 = func_4(func_4(Struct_2(u_input.b, Struct_1(func_4(Struct_2(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(-1249f, vec3<bool>(false, true, false), u_input.d.yyy, vec2<bool>(true, true)), u_input.b, true), u_input.a, vec4<f32>(-285f, 1679f, -678f, -1218f), u_input.b).b.a, select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), u_input.d.wyy, vec2<bool>(true, true)), ~select(u_input.b, vec3<i32>(u_input.a, -2147483647i, u_input.b.x), vec3<bool>(true, true, true)), true), firstLeadingBit(-41662i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, var_0, -855f, 121f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1643f, 1116f, var_0, -1705f))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1487f, var_0, -693f) + vec4<f32>(var_0, 1000f, var_0, var_0))))), u_input.b), ~(-u_input.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, -674f, var_0, var_0), vec4<f32>(1125f, 1963f, -1716f, 1000f))) + vec4<f32>(var_0, -277f, var_0, var_0)))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(var_0, 770f), _wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(step(var_0, -882f)), _wgslsmith_f_op_f32(ceil(var_0)))))), vec3<i32>(min(-1i >> ((u_input.c & u_input.d.x) % 32u), u_input.a), _wgslsmith_mod_i32(~firstTrailingBit(1i), -u_input.b.x ^ firstTrailingBit(-14479i)), ~(_wgslsmith_div_i32(0i, -1i) >> (0u % 32u)))).b;
    var_2 = func_4(Struct_2(vec3<i32>(abs(u_input.a), ~u_input.a ^ u_input.a, _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, 0i), u_input.a ^ u_input.b.x)), Struct_1(var_2.a, var_2.b, select(u_input.d.xyy, vec3<u32>(21565u, 1u, 26787u), var_2.d.x) >> (~var_2.c % vec3<u32>(32u)), vec2<bool>(any(vec4<bool>(false, true, false, var_2.d.x)), 4294967295u <= var_2.c.x)), select(u_input.b, vec3<i32>(-51492i, -1i, u_input.a), var_2.b) >> (countOneBits(vec3<u32>(0u, u_input.c, 0u)) % vec3<u32>(32u)), true), _wgslsmith_sub_i32(firstLeadingBit(-(~u_input.a)), ~u_input.b.x), vec4<f32>(var_2.a, var_0, _wgslsmith_f_op_f32(f32(-1f) * -1118f), var_2.a), u_input.b).b;
    let var_3 = Struct_2(vec3<i32>(~u_input.a, abs(_wgslsmith_mult_i32(2147483647i, select(-2147483647i, u_input.a, var_2.b.x))), 1i), func_4(Struct_2(u_input.b, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-383f, var_0, var_2.a)), Struct_2(u_input.b, Struct_1(var_0, var_2.b, var_2.c, vec2<bool>(var_2.d.x, false)), vec3<i32>(1i, u_input.a, -2147483647i), true), u_input.d << (u_input.d % vec4<u32>(32u))), ~u_input.b, !var_2.b.x), -(_wgslsmith_add_i32(-1i, -1i) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -1i, 1i, -2145i), vec4<i32>(u_input.a, u_input.b.x, 13564i, u_input.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -437f), var_0, _wgslsmith_f_op_f32(f32(-1f) * -593f)) + vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, var_0, _wgslsmith_f_op_f32(var_0 * var_0))), ~_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(-36057i, u_input.b.x, u_input.a) ^ vec3<i32>(1718i, 44143i, u_input.b.x))).b, u_input.b, var_2.b.x);
    let var_4 = 42383u;
    var_2 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, var_0, -1491f) * vec3<f32>(-1000f, var_0, -307f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(243f, var_0, var_0))))), vec3<f32>(func_4(func_4(Struct_2(u_input.b, var_3.b, vec3<i32>(2147483647i, u_input.b.x, var_3.a.x), var_2.b.x), -1i, vec4<f32>(var_2.a, var_3.b.a, var_2.a, var_3.b.a), u_input.b), _wgslsmith_add_i32(u_input.a, u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-367f, var_0, var_2.a, 419f)), vec3<i32>(-20052i, var_3.a.x, 16277i)).b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.b.a, var_2.a, false))), _wgslsmith_f_op_f32(trunc(302f))), false)), Struct_2(-func_4(var_3, 1i, vec4<f32>(-302f, -1599f, var_0, var_2.a), var_3.c).c | u_input.b, var_3.b, (-vec3<i32>(u_input.b.x, var_3.c.x, u_input.a) & var_3.c) | u_input.b, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, var_3.b.a, -547f) * vec3<f32>(-127f, -1045f, -1550f)), var_3, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, var_3.b.c.x, var_2.c.x, var_4), vec4<u32>(94062u, 19056u, u_input.d.x, var_3.b.c.x), vec4<u32>(var_3.b.c.x, 0u, u_input.c, 1u))).b.x), u_input.d);
    var var_5 = Struct_2(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.b.x, 0i, var_3.c.x) << (u_input.d % vec4<u32>(32u)), ~vec4<i32>(-37163i, u_input.b.x, 1i, 3684i)), -vec4<i32>(var_3.c.x, var_3.a.x, -2147483647i, 19860i)), -1i), var_3.b, ~(~(~vec3<i32>(u_input.a, 2147483647i, 27478i))), var_3.b.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, max(var_5.c, firstLeadingBit(vec3<i32>(62547i, ~u_input.a, -u_input.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2992f, -1515f, var_0, var_2.a))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.b.a, 708f, var_3.b.a) * vec3<f32>(var_2.a, -757f, var_3.b.a))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(645f, var_2.a, var_3.b.a), vec3<f32>(-317f, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1750f, -114f, var_5.b.a))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1148f, 381f, -418f)))))))), var_5.b.a);
}

