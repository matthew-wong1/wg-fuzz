struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<f32> = vec2<f32>(704f, -1330f);

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(369i, vec4<i32>(59934i, 25839i, 2147483647i, 17404i), false), Struct_2(i32(-2147483648), vec4<i32>(-16560i, 8396i, 2147483647i, i32(-2147483648)), false), Struct_2(-11060i, vec4<i32>(2147483647i, 1089i, -8515i, 0i), true), Struct_2(-5128i, vec4<i32>(i32(-2147483648), i32(-2147483648), -23988i, 1i), false), Struct_2(-1i, vec4<i32>(2147483647i, 15584i, 0i, 13540i), true), Struct_2(i32(-2147483648), vec4<i32>(1i, 15627i, 12702i, 1i), true), Struct_2(-6825i, vec4<i32>(0i, 0i, 2147483647i, i32(-2147483648)), false), Struct_2(45308i, vec4<i32>(1i, 1i, 1i, 30042i), false), Struct_2(14121i, vec4<i32>(i32(-2147483648), -21406i, -1i, 1i), false), Struct_2(2147483647i, vec4<i32>(i32(-2147483648), 2147483647i, 0i, 1i), true), Struct_2(-1i, vec4<i32>(-1i, 1i, 0i, 1i), true), Struct_2(-1i, vec4<i32>(1i, -4417i, -25884i, 0i), false), Struct_2(-17389i, vec4<i32>(-17831i, 59620i, 1i, 2147483647i), true), Struct_2(-1i, vec4<i32>(8852i, 2147483647i, -1i, -1i), false), Struct_2(0i, vec4<i32>(18808i, 1i, -1i, -3778i), true), Struct_2(8209i, vec4<i32>(-1i, -24793i, 1i, -39601i), false), Struct_2(0i, vec4<i32>(-35525i, 30880i, -23998i, 1i), false), Struct_2(-7044i, vec4<i32>(i32(-2147483648), 27137i, 72087i, -1i), true), Struct_2(i32(-2147483648), vec4<i32>(18063i, 22608i, 42363i, 279i), true), Struct_2(-19583i, vec4<i32>(2147483647i, 17673i, 2147483647i, -24417i), false), Struct_2(23726i, vec4<i32>(i32(-2147483648), -16859i, 25069i, i32(-2147483648)), true), Struct_2(i32(-2147483648), vec4<i32>(i32(-2147483648), 0i, -34921i, -76179i), false), Struct_2(-12700i, vec4<i32>(23898i, -22062i, 7441i, i32(-2147483648)), true), Struct_2(-35859i, vec4<i32>(i32(-2147483648), 14314i, -18782i, 19767i), false), Struct_2(-57420i, vec4<i32>(25191i, 1i, 1i, 2147483647i), false), Struct_2(1i, vec4<i32>(-12169i, 60207i, 1i, -48726i), false), Struct_2(i32(-2147483648), vec4<i32>(0i, 2147483647i, 10761i, 2147483647i), false), Struct_2(2147483647i, vec4<i32>(16850i, -1i, 45862i, i32(-2147483648)), false), Struct_2(2147483647i, vec4<i32>(29736i, -36831i, i32(-2147483648), -17825i), true));

var<private> global3: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<bool>) -> bool {
    let var_0 = firstLeadingBit(1u);
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(min(reverseBits(~vec4<u32>(23232u, var_0, 18810u, 72158u)), ~(~vec4<u32>(var_0, 27513u, 73227u, 1u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0, 34590u, var_0, var_0) << (abs(vec4<u32>(62139u, 178u, 78485u, var_0)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0, 2559u, 1u) ^ vec4<u32>(var_0, 82475u, var_0, 1u), vec4<u32>(var_0, 1u, 124720u, 13800u)))), all(arg_2));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1173f + _wgslsmith_div_f32(arg_1, 1324f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)))))));
    global2 = array<Struct_2, 29>();
    let var_3 = ~vec4<u32>(1u, _wgslsmith_sub_u32(~1u, ~reverseBits(14683u)), 3831u, var_0);
    return global0.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1066f, global1.x, global1.x)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, -451f, 349f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-299f, global1.x, -1074f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1334f, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 440f) - vec3<f32>(global1.x, global1.x, -338f)))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1406f, 1000f, -2661f))))));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(~96313u, arg_1.a.x), 15998u);
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(27007u, 1u >> (abs(arg_0.a.x) % 32u)), 29u)];
    let var_2 = arg_0;
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(18511u, reverseBits(arg_0.a.x)), var_2.a.x, ~(~1u)), ~(~_wgslsmith_mult_u32(4294967295u, arg_0.a.x))), 52703u | arg_1.c.a.x), 29u)];
    return _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1.c.a.xw, reverseBits(vec2<u32>(arg_0.a.x, arg_0.a.x))), arg_0.a.x >> (_wgslsmith_sub_u32(0u ^ var_2.a.x, 1u) % 32u), reverseBits(~max(arg_1.d.a.x, arg_1.c.a.x)), abs(var_2.a.x)), min(arg_1.d.a, var_2.a));
}

fn func_2() -> vec4<u32> {
    let var_0 = !vec2<bool>(all(vec4<bool>(false, true, select(global0.c, global0.c, global0.c), !global0.c)), all(vec4<bool>(!global0.c, true, true, true)));
    let var_1 = !(!(-533f == _wgslsmith_f_op_f32(step(-909f, 751f))));
    global3 = _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-588f - global1.x)))));
    global0 = global2[_wgslsmith_index_u32(37213u, 29u)];
    let var_2 = select(var_0, var_0, min(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 1u, 4294967295u, 138051u)), ~vec4<u32>(17047u, 39815u, 34636u, 1u)), ~firstLeadingBit(30844u)) > 17924u);
    return max(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(15475u, ~1u, ~12987u), firstLeadingBit(~10712u), ~1u, 29600u), func_4(Struct_1(reverseBits(vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), func_3(vec4<i32>(u_input.a.x, global0.a, global0.b.x, u_input.a.x), global1.x, vec4<bool>(true, true, var_1, true))), Struct_3(abs(vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 42232u), false), Struct_1(vec4<u32>(0u, 63236u, 57525u, 78287u), global0.c), Struct_1(vec4<u32>(0u, 42811u, 1u, 5461u), false), vec4<bool>(false, true, global0.c, true)))), reverseBits(~reverseBits(vec4<u32>(1u, 1u, 1u, 1u))));
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    var var_0 = select(arg_1.e, !select(!vec4<bool>(global0.c, true, global0.c, arg_1.c.b), !arg_1.e, 17855i < u_input.a.x), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(func_3(vec4<i32>(global0.b.x, 26289i, u_input.a.x, 1i), -1457f, arg_1.e), select(false, arg_1.c.b, true)))));
    let var_1 = select(!(!select(!var_0.xzx, vec3<bool>(global0.c, false, var_0.x), false)), select(vec3<bool>(!(global1.x <= 1098f), true, 30470u < ~arg_1.c.a.x), !select(select(vec3<bool>(true, arg_1.d.b, false), vec3<bool>(arg_1.c.b, false, var_0.x), vec3<bool>(global0.c, global0.c, global0.c)), !vec3<bool>(false, false, arg_0), !var_0.ywy), vec3<bool>(true, true, true)), (262f != _wgslsmith_f_op_f32(sign(global1.x))) & !((global0.a << (arg_1.b.a.x % 32u)) == (0i | u_input.a.x)));
    var var_2 = select(select(!arg_1.e.xxy, !vec3<bool>(all(arg_1.e), false, true), all(select(!arg_1.e.yx, !vec2<bool>(arg_0, arg_0), true))), var_0.xyy, select(select(arg_1.e.zww, vec3<bool>(all(arg_1.e.xxz), var_0.x, arg_1.c.a.x == arg_1.b.a.x), !(global1.x < 478f)), var_0.xwz, !var_0.yzz));
    let var_3 = _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(trunc(global1.x)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 * global1.x) - -1054f)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(864f + 510f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global1.x, -660f)), 1101f)))));
    return arg_1.b;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec2_f32(trunc(arg_3.zy));
    let var_0 = select(select(vec3<bool>(-189f > _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(global1.x * 1000f) > global1.x, global0.c), select(select(!vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(global0.c, global0.c, true), select(vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(true, false, true), false)), vec3<bool>(global0.c & false, any(vec4<bool>(arg_0.b, global0.c, global0.c, false)), false), select(!vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(global0.c, false, global0.c), true)), vec3<bool>(any(!vec2<bool>(global0.c, global0.c)), !(!global0.c), all(select(vec4<bool>(false, arg_0.b, false, global0.c), vec4<bool>(arg_0.b, global0.c, false, false), vec4<bool>(arg_0.b, true, global0.c, global0.c))))), !select(vec3<bool>(!arg_0.b, false, func_5(global0.c, Struct_3(arg_0.a, Struct_1(vec4<u32>(arg_0.a.x, 0u, 5846u, 13227u), false), arg_0, arg_0, vec4<bool>(true, true, true, arg_0.b))).b), !select(vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(arg_0.b, true, arg_0.b), vec3<bool>(false, false, arg_0.b)), false), select(!select(select(vec3<bool>(global0.c, global0.c, true), vec3<bool>(global0.c, true, arg_0.b), global0.c), !vec3<bool>(arg_0.b, arg_0.b, false), true), vec3<bool>(any(select(vec4<bool>(false, true, arg_0.b, false), vec4<bool>(false, global0.c, true, arg_0.b), true)), any(vec4<bool>(true, global0.c, arg_0.b, false)), true), true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-228f, global1.x)));
    let var_2 = select(vec4<bool>(any(var_0), true, arg_0.b, all(select(!var_0, vec3<bool>(false, var_0.x, var_0.x), true))), vec4<bool>(global0.c, func_5((arg_0.a.x << (arg_0.a.x % 32u)) < func_4(Struct_1(vec4<u32>(4294967295u, arg_0.a.x, arg_0.a.x, arg_0.a.x), var_0.x), Struct_3(arg_0.a, Struct_1(arg_0.a, global0.c), Struct_1(arg_0.a, global0.c), Struct_1(arg_0.a, arg_0.b), vec4<bool>(false, global0.c, arg_0.b, false))).x, Struct_3(arg_0.a, Struct_1(arg_0.a, arg_0.b), Struct_1(vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), false), func_5(true, Struct_3(vec4<u32>(0u, arg_0.a.x, arg_0.a.x, arg_0.a.x), Struct_1(arg_0.a, true), arg_0, Struct_1(arg_0.a, true), vec4<bool>(global0.c, false, false, var_0.x))), !vec4<bool>(global0.c, var_0.x, global0.c, var_0.x))).b, !(false && arg_0.b), func_3(global0.b, _wgslsmith_f_op_f32(-arg_3.x), vec4<bool>(true, func_3(vec4<i32>(global0.a, 19442i, arg_1.x, 21933i), 1616f, vec4<bool>(arg_0.b, true, global0.c, global0.c)), true, !var_0.x))), !select(!vec4<bool>(var_0.x, true, global0.c, global0.c), vec4<bool>(true, func_5(true, Struct_3(vec4<u32>(arg_0.a.x, arg_0.a.x, 0u, arg_0.a.x), arg_0, arg_0, arg_0, vec4<bool>(arg_0.b, true, false, true))).b, true, arg_0.b), select(vec4<bool>(true, global0.c, false, false), select(vec4<bool>(false, true, true, global0.c), vec4<bool>(var_0.x, arg_0.b, true, arg_0.b), vec4<bool>(arg_0.b, true, false, var_0.x)), true)));
    let var_3 = Struct_3(reverseBits(vec4<u32>(~arg_0.a.x, arg_0.a.x, max(arg_0.a.x, arg_0.a.x), arg_0.a.x)) << (vec4<u32>(0u, 37166u ^ arg_0.a.x, _wgslsmith_mult_u32(6431u, func_5(arg_0.b, Struct_3(vec4<u32>(arg_0.a.x, 0u, 0u, 39113u), Struct_1(vec4<u32>(arg_0.a.x, 1u, arg_0.a.x, 0u), var_0.x), Struct_1(vec4<u32>(arg_0.a.x, 31009u, 51807u, 143801u), global0.c), Struct_1(arg_0.a, true), var_2)).a.x), ~max(arg_0.a.x, 46059u)) % vec4<u32>(32u)), func_5(any(select(vec4<bool>(var_2.x, false, var_2.x, true), var_2, var_2)), Struct_3(vec4<u32>(arg_0.a.x, arg_0.a.x >> (arg_0.a.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, arg_0.a.x), arg_0.a.yx), 57134u), func_5(select(global0.c, var_0.x, var_0.x), Struct_3(arg_0.a, Struct_1(arg_0.a, true), Struct_1(arg_0.a, false), arg_0, var_2)), arg_0, func_5(true, Struct_3(vec4<u32>(arg_0.a.x, 11659u, arg_0.a.x, 8732u), Struct_1(vec4<u32>(4294967295u, 36248u, arg_0.a.x, arg_0.a.x), true), Struct_1(arg_0.a, var_2.x), Struct_1(arg_0.a, false), var_2)), !var_2)), func_5(arg_0.b, Struct_3(arg_0.a | firstTrailingBit(vec4<u32>(arg_0.a.x, arg_0.a.x, 62330u, 1u)), Struct_1(~arg_0.a, global0.c), func_5(all(vec3<bool>(var_0.x, arg_0.b, var_0.x)), Struct_3(arg_0.a, Struct_1(vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 1u), var_2.x), arg_0, Struct_1(vec4<u32>(19734u, arg_0.a.x, arg_0.a.x, 0u), var_2.x), var_2)), Struct_1(func_5(var_2.x, Struct_3(vec4<u32>(55023u, arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0, Struct_1(vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), false), arg_0, vec4<bool>(false, var_0.x, false, true))).a, !arg_0.b), vec4<bool>(true, false, true & var_0.x, true))), Struct_1(countOneBits(func_4(Struct_1(arg_0.a, true), Struct_3(arg_0.a, Struct_1(vec4<u32>(arg_0.a.x, arg_0.a.x, 4294967295u, arg_0.a.x), global0.c), Struct_1(arg_0.a, true), arg_0, var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1376f)) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -787f)))), var_2);
    return Struct_2(1i, firstLeadingBit(~select(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, global0.b.x), firstTrailingBit(vec4<i32>(2147483647i, arg_1.x, 22756i, -64032i)), any(vec4<bool>(true, global0.c, true, false)))), var_0.x);
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = !global0.c;
    return func_6(func_5(global0.c, Struct_3(~_wgslsmith_mod_vec4_u32(vec4<u32>(9687u, 20582u, 70078u, 0u), vec4<u32>(8607u, 87154u, 1u, 35063u)), Struct_1(vec4<u32>(0u, 17406u, 4294967295u, 5111u), var_0), Struct_1(~vec4<u32>(4404u, 30295u, 4294967295u, 0u), true), Struct_1(func_2(), true), !(!vec4<bool>(global0.c, global0.c, false, false)))), reverseBits(-(~vec3<i32>(global0.a, 21977i, arg_0)) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), vec2<i32>(-min(global0.b.x & arg_0, -2147483647i), global0.b.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -160f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_div_f32(global1.x, global1.x)))), global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(i32(-1i) * -firstTrailingBit(reverseBits(global0.a)));
    global2 = array<Struct_2, 29>();
    var var_0 = global2[_wgslsmith_index_u32(func_4(Struct_1(vec4<u32>(1u, 1u, 1u, 1u), any(!vec2<bool>(global0.c, global0.c))), Struct_3(~countOneBits(vec4<u32>(4294967295u, 5238u, 4294967295u, 4294967295u)), func_5(true, Struct_3(vec4<u32>(1u, 0u, 0u, 4294967295u), func_5(global0.c, Struct_3(vec4<u32>(4294967295u, 1u, 43023u, 1u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 36322u, 4294967295u), true), Struct_1(vec4<u32>(4294967295u, 48099u, 31591u, 110337u), global0.c), Struct_1(vec4<u32>(50427u, 39563u, 1u, 1279u), global0.c), vec4<bool>(false, true, global0.c, true))), func_5(false, Struct_3(vec4<u32>(0u, 17182u, 4294967295u, 4294967295u), Struct_1(vec4<u32>(0u, 23160u, 74917u, 0u), true), Struct_1(vec4<u32>(22578u, 4294967295u, 0u, 0u), true), Struct_1(vec4<u32>(49181u, 20259u, 75176u, 0u), global0.c), vec4<bool>(global0.c, false, global0.c, false))), Struct_1(vec4<u32>(23007u, 24235u, 97632u, 13224u), global0.c), vec4<bool>(global0.c, true, false, global0.c))), func_5(-global0.a == 18053i, Struct_3(~vec4<u32>(1u, 1u, 34955u, 1u), Struct_1(vec4<u32>(7734u, 0u, 39080u, 92752u), global0.c), func_5(false, Struct_3(vec4<u32>(0u, 4294967295u, 45813u, 39225u), Struct_1(vec4<u32>(1u, 29928u, 1u, 9487u), true), Struct_1(vec4<u32>(1u, 0u, 24481u, 5540u), global0.c), Struct_1(vec4<u32>(4294967295u, 34939u, 18268u, 0u), false), vec4<bool>(true, true, global0.c, global0.c))), func_5(false, Struct_3(vec4<u32>(14818u, 0u, 13625u, 4294967295u), Struct_1(vec4<u32>(6876u, 1343u, 10955u, 1u), false), Struct_1(vec4<u32>(16372u, 718u, 0u, 45113u), global0.c), Struct_1(vec4<u32>(3840u, 1u, 4294967295u, 0u), true), vec4<bool>(false, global0.c, false, true))), vec4<bool>(true, true, true, true))), Struct_1(select(vec4<u32>(16356u, 4294967295u, 1u, 15197u), vec4<u32>(1u, 1u, 1u, 1u), false), global0.c), select(!(!vec4<bool>(global0.c, false, global0.c, true)), vec4<bool>(true, true, true, true), false))).x, 29u)];
    global2 = array<Struct_2, 29>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global1.x)))))), 614f, -870f);
    var var_2 = global2[_wgslsmith_index_u32(1u, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(568f, -1i, -(u_input.a.x & global0.a), vec3<u32>(func_2().x & 1u, reverseBits(69969u), _wgslsmith_sub_u32(1u << (1u % 32u), select(52631u, 2490u, global0.c))) ^ _wgslsmith_clamp_vec3_u32(func_2().wxy, min(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(117014u, 14721u, 77927u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(19722u, 62995u, 4294967295u), vec3<u32>(4294967295u, 14340u, 4294967295u)), 33988u, 124785u)));
}

