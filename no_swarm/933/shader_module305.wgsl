struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 32>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 54792u, 99322u, 0u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>) -> i32 {
    global1 = u_input.d;
    global1 = abs(reverseBits(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(5535u, arg_0.d.b, 27124u, 1u) | vec4<u32>(arg_2.x, 4705u, 58257u, arg_1.c.a), vec4<u32>(9638u, arg_0.d.b, 0u, u_input.c.x)))));
    global0 = array<Struct_5, 32>();
    var var_0 = arg_0;
    var var_1 = select(select(select(!select(vec4<bool>(arg_0.b.x, arg_0.b.x, false, false), vec4<bool>(true, var_0.b.x, true, arg_0.b.x), vec4<bool>(arg_0.b.x, false, var_0.b.x, false)), select(select(vec4<bool>(true, true, var_0.b.x, true), vec4<bool>(true, var_0.b.x, false, var_0.b.x), true), !vec4<bool>(false, var_0.b.x, false, var_0.b.x), select(vec4<bool>(false, var_0.b.x, var_0.b.x, arg_0.b.x), vec4<bool>(true, var_0.b.x, arg_0.b.x, true), vec4<bool>(arg_0.b.x, true, true, arg_0.b.x))), select(select(vec4<bool>(var_0.b.x, false, false, var_0.b.x), vec4<bool>(var_0.b.x, arg_0.b.x, true, var_0.b.x), arg_0.b.x), select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, false), vec4<bool>(true, true, var_0.b.x, false), false), !arg_0.b.x)), vec4<bool>(all(!arg_0.b), ~arg_0.a > _wgslsmith_div_i32(u_input.e, 5431i), true, arg_0.b.x), !vec4<bool>(arg_0.b.x, false, true, all(vec4<bool>(true, true, var_0.b.x, true)))), !vec4<bool>(!any(vec4<bool>(var_0.b.x, var_0.b.x, false, true)), !(!arg_0.b.x), false | arg_0.b.x, arg_0.b.x), vec4<bool>(true, all(var_0.b), var_0.b.x, any(vec2<bool>(true & var_0.b.x, all(vec4<bool>(false, true, true, false))))));
    return reverseBits(arg_0.a);
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = vec3<i32>(1i, _wgslsmith_add_i32(18575i, 1i), ~func_3(Struct_3(0i, vec2<bool>(true, true), -1429f, Struct_2(Struct_1(global1.x, -427f, vec2<f32>(642f, -411f)), global1.x, Struct_1(1150u, 1000f, vec2<f32>(264f, 217f)))), Struct_2(Struct_1(global1.x, 471f, vec2<f32>(1835f, 117f)), 4483u, Struct_1(global1.x, 939f, vec2<f32>(1621f, 824f))), ~vec3<u32>(global1.x, u_input.c.x, global1.x))) >> (~vec3<u32>(~_wgslsmith_clamp_u32(0u, global1.x, u_input.d.x), global1.x, countOneBits(global1.x)) % vec3<u32>(32u));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-206f, -599f, _wgslsmith_f_op_f32(-543f * -128f), 547f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(341f, -601f, 1042f, 1670f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-234f, 435f, -118f, -211f), vec4<f32>(530f, -583f, 1801f, -1091f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(221f, 2115f, -324f, -309f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-128f, 469f, -259f, -468f))), select(!vec4<bool>(arg_0, arg_0, arg_0, false), select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(false, false, true, arg_0), vec4<bool>(arg_0, arg_0, true, true)), true))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1627f - -1328f)), 1f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1175f))));
    let var_2 = Struct_1(u_input.d.x, -1797f, var_1.yz);
    var var_3 = 2147483647i & -(~var_0.x >> (_wgslsmith_mult_u32(~global1.x, ~global1.x) % 32u));
    let var_4 = Struct_2(Struct_1(~(~var_2.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f)), var_1.x)), var_2.c), 0u, var_2);
    return Struct_2(Struct_1(~global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1345f, var_1.x))))), 24589u, Struct_1(firstTrailingBit(~50317u), -804f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.c.c.x, -994f)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.c.b, -1614f)), _wgslsmith_f_op_vec2_f32(exp2(var_2.c)))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_3) -> Struct_5 {
    return Struct_5(Struct_4(arg_3, arg_0, !all(vec4<bool>(arg_3.b.x, false, arg_3.b.x, true)) == false, Struct_2(func_2(arg_1.x, min(vec2<i32>(u_input.e, arg_3.a), vec2<i32>(-2416i, 18119i))).c, 4294967295u, func_2(true, -vec2<i32>(u_input.b, 1i)).a), func_2(true, max(abs(vec2<i32>(-20563i, 2147483647i)), reverseBits(vec2<i32>(u_input.a, u_input.e))))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: bool, arg_3: Struct_3) -> Struct_4 {
    let var_0 = ~(arg_1.a.a.a | (i32(-1i) * -(~u_input.b)));
    let var_1 = arg_1.a.c;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.d.c.c.x))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-865f)), 344f))) * -649f), _wgslsmith_f_op_f32(-397f * _wgslsmith_f_op_f32(-arg_1.a.e.a.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + 681f))), arg_1.a.a.c);
    return Struct_4(arg_3, func_2(true, max(vec2<i32>(arg_3.a, -2147483647i | arg_3.a), vec2<i32>(i32(-1i) * -61814i, u_input.a & arg_1.a.a.a))), var_2.x >= arg_1.a.a.c, func_4(Struct_2(func_2(arg_2, _wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_0), vec2<i32>(var_0, u_input.b))).a, ~func_4(Struct_2(Struct_1(4294967295u, -178f, var_2.zw), u_input.c.x, arg_3.d.a), vec3<bool>(false, arg_1.a.a.b.x, true), 99303u, Struct_3(380i, arg_3.b, arg_1.a.a.c, Struct_2(arg_3.d.c, u_input.d.x, Struct_1(1u, var_2.x, arg_3.d.c.c)))).a.d.b, func_2(true, countOneBits(vec2<i32>(u_input.e, 0i))).c), vec3<bool>(all(vec3<bool>(true, false, false)) | true, false, ~arg_1.a.b.b != ~44299u), ~arg_0.x, arg_1.a.a).a.d, arg_3.d);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>) -> vec4<i32> {
    var var_0 = Struct_5(func_5((~vec4<u32>(u_input.d.x, 1u, 46683u, u_input.c.x) | ~u_input.d) ^ vec4<u32>(16198u, 11906u, ~global1.x, global1.x), func_4(func_2(!arg_1.x, _wgslsmith_mult_vec2_i32(vec2<i32>(6345i, -54020i), vec2<i32>(-25805i, 3954i))), !arg_0, global1.x, Struct_3(_wgslsmith_sub_i32(u_input.a, u_input.b), arg_1.yx, _wgslsmith_div_f32(2403f, 893f), Struct_2(Struct_1(748u, -1559f, vec2<f32>(539f, 1317f)), u_input.d.x, Struct_1(global1.x, 1706f, vec2<f32>(-173f, -1159f))))), all(vec2<bool>(true, any(arg_0))), Struct_3(-2147483647i, !func_4(Struct_2(Struct_1(global1.x, 1367f, vec2<f32>(-1146f, -542f)), 1u, Struct_1(global1.x, 414f, vec2<f32>(403f, -1511f))), arg_1, 15452u, Struct_3(1i, vec2<bool>(arg_0.x, true), -574f, Struct_2(Struct_1(0u, -830f, vec2<f32>(-240f, 693f)), global1.x, Struct_1(0u, 950f, vec2<f32>(682f, 391f))))).a.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1234f) * -902f), func_4(func_4(Struct_2(Struct_1(global1.x, 2464f, vec2<f32>(505f, 1000f)), 4294967295u, Struct_1(global1.x, 1000f, vec2<f32>(-1088f, -425f))), arg_1, 34937u, Struct_3(u_input.b, arg_1.xy, -405f, Struct_2(Struct_1(global1.x, 148f, vec2<f32>(-812f, -1532f)), global1.x, Struct_1(68132u, 351f, vec2<f32>(918f, -271f))))).a.a.d, arg_1, min(u_input.c.x, u_input.d.x), func_4(Struct_2(Struct_1(u_input.d.x, 1138f, vec2<f32>(1148f, 324f)), u_input.d.x, Struct_1(81409u, 1000f, vec2<f32>(706f, -614f))), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), 1u, Struct_3(u_input.a, arg_1.yy, -1004f, Struct_2(Struct_1(global1.x, 1000f, vec2<f32>(-337f, 1421f)), u_input.d.x, Struct_1(2746u, -1000f, vec2<f32>(1095f, 983f))))).a.a).a.a.d)));
    var var_1 = abs(-42268i << (func_5(_wgslsmith_add_vec4_u32(u_input.d, u_input.d), Struct_5(Struct_4(Struct_3(-57166i, vec2<bool>(arg_1.x, arg_1.x), 513f, Struct_2(var_0.a.e.a, 0u, Struct_1(1u, -242f, var_0.a.e.c.c))), var_0.a.a.d, true, Struct_2(Struct_1(u_input.d.x, var_0.a.b.c.c.x, var_0.a.b.a.c), var_0.a.b.a.a, Struct_1(17738u, var_0.a.d.c.b, vec2<f32>(185f, var_0.a.d.a.c.x))), Struct_2(var_0.a.a.d.a, global1.x, var_0.a.b.a))), true || arg_0.x, var_0.a.a).e.a.a % 32u));
    let var_2 = Struct_3(_wgslsmith_sub_i32(firstTrailingBit(var_0.a.a.a), _wgslsmith_mod_i32(-_wgslsmith_add_i32(-25960i, -23971i), var_0.a.a.a & countOneBits(-35452i))), select(vec2<bool>(true, true), select(var_0.a.a.b, !select(arg_1.zz, vec2<bool>(var_0.a.a.b.x, true), vec2<bool>(arg_1.x, true)), any(arg_1)), select(arg_1.zx, select(func_4(var_0.a.e, vec3<bool>(var_0.a.a.b.x, arg_1.x, arg_1.x), 72233u, var_0.a.a).a.a.b, !var_0.a.a.b, -7811i < u_input.b), !arg_1.xy)), var_0.a.e.a.c.x, Struct_2(func_2(true, reverseBits(vec2<i32>(var_0.a.a.a, -2147483647i) << (vec2<u32>(0u, 7219u) % vec2<u32>(32u)))).a, _wgslsmith_mod_u32(firstLeadingBit(48953u), firstLeadingBit(var_0.a.d.b ^ var_0.a.d.c.a)), func_5(~u_input.d, Struct_5(var_0.a), arg_1.x, var_0.a.a).e.c));
    var var_3 = func_4(Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(~u_input.d, u_input.d << (vec4<u32>(1u, 63162u, 1u, 57786u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(min(var_2.c, _wgslsmith_f_op_f32(step(1571f, 2104f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(554f, 1004f) + vec2<f32>(var_2.d.c.c.x, var_0.a.d.c.b))), _wgslsmith_dot_vec2_u32(~(~global1.yy), max(~global1.ww, global1.xw | global1.xx)), Struct_1(~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(global1.x, 14527u, u_input.d.x, u_input.d.x)), _wgslsmith_f_op_f32(-107f * _wgslsmith_f_op_f32(f32(-1f) * -518f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.d.c.c) * vec2<f32>(var_2.c, 672f)))), arg_1, _wgslsmith_sub_u32(func_4(Struct_2(Struct_1(72u, var_0.a.a.d.a.b, var_2.d.c.c), ~u_input.d.x, var_2.d.c), arg_0, global1.x, Struct_3(u_input.b & -46537i, arg_1.xy, -155f, var_2.d)).a.a.d.c.a, ~var_0.a.b.a.a), func_4(var_0.a.b, !arg_1, min(var_0.a.a.d.c.a, var_0.a.a.d.c.a), Struct_3(min(0i, -2147483647i), var_2.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(238f, var_0.a.b.a.b) - var_2.c), var_2.d)).a.a);
    var_3 = Struct_5(var_3.a);
    return ~(select(firstLeadingBit(~vec4<i32>(var_3.a.a.a, u_input.e, var_0.a.a.a, var_2.a)), ~abs(vec4<i32>(8063i, var_2.a, var_3.a.a.a, 22481i)), true) << (vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, 5588u), 4294967295u), 4294967295u, global1.x, abs(12723u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global1.xw) % 32u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<bool>(!any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), select(true, any(vec3<bool>(false, false, true)), true) == (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(-1i, 16084i, -6315i)) <= -u_input.b)), !vec3<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-329f - -1000f) > _wgslsmith_f_op_f32(round(-1200f)), all(vec3<bool>(false, true, false))));
    let var_1 = vec4<i32>(0i, -var_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-(~vec3<i32>(11824i, u_input.e, u_input.b)), var_0.xyz), ~_wgslsmith_mod_vec3_i32(-var_0.www, _wgslsmith_mod_vec3_i32(var_0.wzy, vec3<i32>(-31447i, -1i, u_input.a)))), -2147483647i);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -500f))) + -1750f), _wgslsmith_f_op_f32(select(-1276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-673f * 165f)), any(vec2<bool>(true, true)))))));
    var var_3 = func_5(~(~(~(~vec4<u32>(6868u, 20626u, u_input.d.x, 0u)))), func_4(Struct_2(Struct_1(u_input.c.x, -662f, vec2<f32>(var_2, var_2)), ~select(u_input.c.x, 1u, true), Struct_1(5662u, _wgslsmith_f_op_f32(var_2 + var_2), _wgslsmith_f_op_vec2_f32(vec2<f32>(129f, var_2) - vec2<f32>(var_2, -261f)))), vec3<bool>(true, true, true), 4294967295u, func_4(func_5(firstLeadingBit(vec4<u32>(1u, 1u, u_input.c.x, global1.x)), func_4(Struct_2(Struct_1(5033u, 1703f, vec2<f32>(var_2, var_2)), global1.x, Struct_1(u_input.d.x, var_2, vec2<f32>(var_2, var_2))), vec3<bool>(false, false, true), 1u, Struct_3(-1i, vec2<bool>(true, true), 717f, Struct_2(Struct_1(u_input.d.x, 445f, vec2<f32>(-974f, var_2)), 0u, Struct_1(global1.x, var_2, vec2<f32>(1648f, 1230f))))), true, func_5(vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.c.x), global0[_wgslsmith_index_u32(global1.x, 32u)], false, Struct_3(-16418i, vec2<bool>(true, true), var_2, Struct_2(Struct_1(14015u, var_2, vec2<f32>(var_2, var_2)), global1.x, Struct_1(u_input.c.x, var_2, vec2<f32>(718f, var_2))))).a).b, select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), ~139u, func_4(func_5(vec4<u32>(1u, u_input.c.x, 38613u, global1.x), Struct_5(Struct_4(Struct_3(0i, vec2<bool>(true, false), var_2, Struct_2(Struct_1(global1.x, -735f, vec2<f32>(var_2, 361f)), 4294967295u, Struct_1(global1.x, var_2, vec2<f32>(-1288f, var_2)))), Struct_2(Struct_1(u_input.c.x, var_2, vec2<f32>(563f, 130f)), 34956u, Struct_1(global1.x, var_2, vec2<f32>(var_2, var_2))), true, Struct_2(Struct_1(u_input.d.x, var_2, vec2<f32>(var_2, var_2)), u_input.d.x, Struct_1(u_input.c.x, 582f, vec2<f32>(var_2, var_2))), Struct_2(Struct_1(global1.x, var_2, vec2<f32>(var_2, var_2)), 0u, Struct_1(u_input.c.x, var_2, vec2<f32>(var_2, -723f))))), true, Struct_3(var_0.x, vec2<bool>(false, false), -3220f, Struct_2(Struct_1(18510u, var_2, vec2<f32>(var_2, 435f)), 70673u, Struct_1(1u, var_2, vec2<f32>(-324f, -918f))))).a.d, select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), _wgslsmith_mult_u32(u_input.c.x, global1.x), func_4(Struct_2(Struct_1(u_input.d.x, 1107f, vec2<f32>(var_2, -116f)), u_input.d.x, Struct_1(1u, var_2, vec2<f32>(var_2, -1000f))), vec3<bool>(false, true, true), u_input.d.x, Struct_3(-1i, vec2<bool>(true, true), var_2, Struct_2(Struct_1(u_input.d.x, var_2, vec2<f32>(-1000f, var_2)), 26023u, Struct_1(u_input.d.x, -830f, vec2<f32>(var_2, var_2))))).a.a).a.a).a.a), any(vec4<bool>(1563f < var_2, -300f >= _wgslsmith_f_op_f32(sign(1294f)), true, true)), Struct_3(~func_5(vec4<u32>(1u, 1u, u_input.d.x, 10961u), global0[_wgslsmith_index_u32(u_input.c.x, 32u)], false, Struct_3(u_input.b, vec2<bool>(false, false), -224f, Struct_2(Struct_1(u_input.d.x, var_2, vec2<f32>(var_2, var_2)), 4294967295u, Struct_1(4294967295u, var_2, vec2<f32>(var_2, var_2))))).a.a >> (_wgslsmith_sub_u32(u_input.d.x, 52282u) % 32u), select(vec2<bool>(true, true), !func_5(vec4<u32>(global1.x, 16897u, u_input.c.x, global1.x), global0[_wgslsmith_index_u32(22157u, 32u)], true, Struct_3(-44092i, vec2<bool>(true, true), var_2, Struct_2(Struct_1(4294967295u, 120f, vec2<f32>(var_2, var_2)), u_input.c.x, Struct_1(0u, 1894f, vec2<f32>(-833f, var_2))))).a.b, vec2<bool>(true, true)), func_5(vec4<u32>(_wgslsmith_div_u32(53572u, 5139u), global1.x, 4294967295u, ~global1.x), global0[_wgslsmith_index_u32(global1.x, 32u)], true, Struct_3(_wgslsmith_mod_i32(1i, -28889i), vec2<bool>(true, false), _wgslsmith_f_op_f32(floor(-828f)), func_2(false, var_1.ww))).d.a.b, func_5(countOneBits(vec4<u32>(u_input.d.x, 0u, 1u, 32152u)), global0[_wgslsmith_index_u32(~(~global1.x), 32u)], false, func_5(_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(30186u, u_input.c.x, global1.x, 26817u), vec4<u32>(u_input.d.x, global1.x, global1.x, 37263u)), func_4(Struct_2(Struct_1(1u, 1946f, vec2<f32>(var_2, var_2)), 72270u, Struct_1(66158u, 1000f, vec2<f32>(var_2, var_2))), vec3<bool>(true, true, false), global1.x, Struct_3(17077i, vec2<bool>(false, false), var_2, Struct_2(Struct_1(57937u, var_2, vec2<f32>(-141f, var_2)), 10855u, Struct_1(u_input.c.x, -658f, vec2<f32>(var_2, 261f))))), var_2 < var_2, func_4(Struct_2(Struct_1(global1.x, var_2, vec2<f32>(515f, var_2)), u_input.d.x, Struct_1(1u, var_2, vec2<f32>(601f, var_2))), vec3<bool>(true, true, true), 43333u, Struct_3(1i, vec2<bool>(false, true), var_2, Struct_2(Struct_1(u_input.d.x, var_2, vec2<f32>(var_2, 638f)), 2474u, Struct_1(4294967295u, var_2, vec2<f32>(var_2, var_2))))).a.a).a).d)).a;
    global1 = vec4<u32>(global1.x | _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, var_3.d.c.a, u_input.c.x, u_input.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c.x, 42175u, var_3.d.b), u_input.d)), 0u), abs(firstTrailingBit(_wgslsmith_sub_u32(max(u_input.d.x, 0u), select(20942u, var_3.d.b, var_3.b.x)))), u_input.d.x, min(abs(45509u), 4294967295u));
    var var_4 = 2147483647i;
    let var_5 = -var_3.a;
    var_4 = min(var_1.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(var_5 ^ var_1.x, countOneBits(2147483647i)), _wgslsmith_mod_i32(~var_0.x, -1i))) ^ var_0.x;
    var var_6 = func_5(~(~vec4<u32>(4294967295u, select(1u, u_input.c.x, var_3.b.x), ~0u, global1.x)), Struct_5(func_5(u_input.d, func_4(func_5(vec4<u32>(15217u, 4294967295u, global1.x, 1u), global0[_wgslsmith_index_u32(global1.x, 32u)], var_3.b.x, Struct_3(1i, vec2<bool>(true, false), var_2, Struct_2(Struct_1(4294967295u, 619f, var_3.d.a.c), 8445u, var_3.d.a))).b, vec3<bool>(var_3.b.x, true, false), 1u, Struct_3(var_0.x, vec2<bool>(var_3.b.x, true), 1072f, var_3.d)), !(-163f <= var_3.d.a.c.x), func_5(select(u_input.d, u_input.d, var_3.b.x), Struct_5(Struct_4(Struct_3(-22418i, var_3.b, -505f, var_3.d), Struct_2(Struct_1(u_input.d.x, var_2, var_3.d.a.c), var_3.d.b, Struct_1(58643u, var_2, vec2<f32>(258f, -1620f))), false, Struct_2(var_3.d.c, u_input.c.x, var_3.d.a), Struct_2(var_3.d.a, 5724u, var_3.d.c))), !var_3.b.x, func_4(Struct_2(Struct_1(0u, 219f, vec2<f32>(-928f, var_2)), 7823u, var_3.d.a), vec3<bool>(true, false, false), var_3.d.c.a, Struct_3(var_0.x, vec2<bool>(false, var_3.b.x), var_2, Struct_2(var_3.d.c, var_3.d.c.a, Struct_1(95905u, -966f, var_3.d.c.c)))).a.a).a)), 22329u < _wgslsmith_dot_vec2_u32(vec2<u32>(~global1.x, global1.x ^ 64892u), _wgslsmith_mod_vec2_u32(u_input.c.yy, vec2<u32>(var_3.d.c.a, 4279u))), Struct_3(i32(-1i) * -2147483647i, vec2<bool>(false, var_3.b.x), var_2, Struct_2(func_2(true, var_0.zw).a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, var_3.d.c.a), global1.wyx), var_3.d.c))).a;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(Struct_3(var_3.a, var_6.b, _wgslsmith_f_op_f32(step(func_4(var_6.d, vec3<bool>(var_3.b.x, false, var_6.b.x), global1.x, Struct_3(7425i, vec2<bool>(var_6.b.x, false), -946f, Struct_2(var_3.d.c, 1u, var_6.d.c))).a.b.c.c.x, var_3.c)), Struct_2(func_5(vec4<u32>(global1.x, var_3.d.a.a, 43211u, 427u), Struct_5(Struct_4(Struct_3(var_3.a, vec2<bool>(false, var_6.b.x), var_6.c, var_3.d), Struct_2(var_6.d.a, var_3.d.a.a, var_6.d.c), var_3.b.x, Struct_2(Struct_1(56954u, 1054f, vec2<f32>(var_3.c, -525f)), 1u, var_6.d.a), var_3.d)), var_3.b.x, Struct_3(var_6.a, vec2<bool>(var_6.b.x, true), 562f, var_6.d)).b.c, max(var_3.d.b, var_6.d.b), Struct_1(9449u, var_3.d.c.c.x, vec2<f32>(-1736f, -1089f)))), var_3.d, global1.yxw | vec3<u32>(var_3.d.c.a >> (27229u % 32u), _wgslsmith_mod_u32(54430u, u_input.d.x), ~var_3.d.a.a)), var_6.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 651f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_6.c, var_2, -110f) * vec3<f32>(677f, var_6.c, var_3.c)), var_3.b.x)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1732f, var_6.c, 1960f)))))), u_input.c.x, vec2<u32>(firstTrailingBit(0u) | 0u, u_input.c.x));
}

