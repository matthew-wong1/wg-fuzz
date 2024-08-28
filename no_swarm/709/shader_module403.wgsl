struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 0u, 4294967295u);

var<private> global1: Struct_1 = Struct_1(vec4<f32>(1097f, 2153f, -223f, -1178f), vec4<u32>(88564u, 4294967295u, 0u, 35094u), vec4<i32>(i32(-2147483648), 32925i, 1i, -39648i));

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<f32>(2053f, -537f, -395f, 863f), vec4<u32>(42339u, 21497u, 79880u, 4991u), vec4<i32>(-40698i, -1i, i32(-2147483648), 32130i)), Struct_1(vec4<f32>(644f, -464f, -811f, 226f), vec4<u32>(53263u, 1u, 4294967295u, 0u), vec4<i32>(1i, -32971i, 0i, 28621i)), Struct_1(vec4<f32>(-1197f, 1000f, -876f, -1430f), vec4<u32>(0u, 13192u, 62657u, 0u), vec4<i32>(-18581i, 1i, 1i, 2147483647i)), Struct_1(vec4<f32>(-743f, -1859f, -2435f, 187f), vec4<u32>(4294967295u, 12497u, 14726u, 3007u), vec4<i32>(-15258i, 23122i, -3275i, 44545i)), Struct_1(vec4<f32>(-166f, 251f, 712f, -758f), vec4<u32>(1028u, 29454u, 1u, 1u), vec4<i32>(1i, -28853i, i32(-2147483648), -17040i)), Struct_1(vec4<f32>(1217f, -570f, -1465f, -927f), vec4<u32>(23972u, 23095u, 1u, 18028u), vec4<i32>(0i, 30973i, 1i, -1i)), Struct_1(vec4<f32>(1065f, 774f, -1000f, -321f), vec4<u32>(0u, 92429u, 14792u, 50976u), vec4<i32>(-1i, -39008i, -1i, 1i)), Struct_1(vec4<f32>(1221f, -629f, 1493f, 167f), vec4<u32>(10594u, 31354u, 4697u, 33732u), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 2147483647i)), Struct_1(vec4<f32>(1018f, 891f, 1293f, 217f), vec4<u32>(84642u, 0u, 7267u, 4294967295u), vec4<i32>(12119i, 26776i, 62725i, -4932i)), Struct_1(vec4<f32>(937f, -1000f, -319f, 284f), vec4<u32>(0u, 22270u, 1u, 55405u), vec4<i32>(-19310i, 2147483647i, 0i, -1i)), Struct_1(vec4<f32>(-1170f, -1553f, -1246f, 2054f), vec4<u32>(0u, 1u, 1u, 0u), vec4<i32>(-1501i, 2147483647i, 12091i, 0i)), Struct_1(vec4<f32>(-485f, 971f, -762f, -558f), vec4<u32>(0u, 9759u, 21303u, 50502u), vec4<i32>(0i, -33896i, -28275i, 1i)), Struct_1(vec4<f32>(384f, 806f, 959f, -879f), vec4<u32>(10289u, 4294967295u, 1u, 24254u), vec4<i32>(27486i, i32(-2147483648), 1i, -1i)), Struct_1(vec4<f32>(-499f, 437f, -1024f, -1158f), vec4<u32>(1u, 41330u, 4294967295u, 19685u), vec4<i32>(-16922i, -29448i, -7924i, -35411i)), Struct_1(vec4<f32>(1598f, -1437f, -1000f, 305f), vec4<u32>(4903u, 4294967295u, 0u, 62520u), vec4<i32>(1i, i32(-2147483648), 1i, -19691i)), Struct_1(vec4<f32>(435f, 2333f, 585f, 484f), vec4<u32>(4294967295u, 20319u, 4294967295u, 95384u), vec4<i32>(-36558i, 2147483647i, 50609i, 1i)), Struct_1(vec4<f32>(-1333f, 479f, 1078f, -757f), vec4<u32>(37541u, 1u, 14671u, 26844u), vec4<i32>(0i, -32703i, 0i, 2147483647i)), Struct_1(vec4<f32>(-374f, 932f, 1000f, -1195f), vec4<u32>(32167u, 1u, 30821u, 23787u), vec4<i32>(i32(-2147483648), -1i, 5780i, -1i)), Struct_1(vec4<f32>(2704f, 554f, -423f, -1791f), vec4<u32>(0u, 0u, 4294967295u, 81348u), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 7621i)), Struct_1(vec4<f32>(-878f, -212f, 301f, -148f), vec4<u32>(39779u, 46830u, 4294967295u, 4294967295u), vec4<i32>(11593i, -102689i, i32(-2147483648), -1938i)), Struct_1(vec4<f32>(998f, -1839f, 600f, -588f), vec4<u32>(12167u, 4294967295u, 4787u, 49755u), vec4<i32>(2147483647i, 35631i, i32(-2147483648), i32(-2147483648))));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> bool {
    global1 = arg_2;
    var var_0 = arg_2;
    let var_1 = Struct_1(var_0.a, firstTrailingBit(vec4<u32>(79370u, global0.x, 1u, 7575u) & vec4<u32>(arg_2.b.x, global1.b.x, u_input.d, u_input.c)) | ~(~vec4<u32>(global1.b.x, global0.x, 42708u, global1.b.x)), max(~select(arg_2.c, vec4<i32>(6959i, -65155i, 0i, u_input.a.x), false), ~_wgslsmith_clamp_vec4_i32(arg_2.c, vec4<i32>(arg_2.c.x, u_input.b, arg_2.c.x, global1.c.x), vec4<i32>(global1.c.x, 7277i, var_0.c.x, u_input.b))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(~arg_2.b.x, 1u, 1u << (var_0.b.x % 32u), 79606u), ~vec4<u32>(4294967295u, 19046u, 47288u, 4294967295u)) % vec4<u32>(32u)));
    var var_2 = any(vec2<bool>(true, select(~var_1.c.x, 1i, select(false, false, false)) == var_0.c.x));
    global0 = ~arg_2.b.xxz;
    return true;
}

fn func_2() -> f32 {
    global2 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_f_op_f32(-global1.a.x);
    global2 = array<Struct_1, 21>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1637f))));
    let var_1 = select(select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, true)), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), true)), vec3<bool>(func_3(_wgslsmith_f_op_f32(f32(-1f) * -310f), -2024f, Struct_1(global1.a, global1.b, vec4<i32>(-2147483647i, 27418i, global1.c.x, global1.c.x)), global1.a.x), true, func_3(global1.a.x, _wgslsmith_f_op_f32(min(global1.a.x, global1.a.x)), Struct_1(vec4<f32>(global1.a.x, global1.a.x, 2062f, 847f), vec4<u32>(0u, 71323u, 1u, 4028u), vec4<i32>(global1.c.x, global1.c.x, 1815i, global1.c.x)), -1000f)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, 1u == global0.x), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), any(vec3<bool>(true, false, false)))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), vec3<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false)), ~global1.c.x <= (i32(-1i) * -18954i), ~global0.x == firstTrailingBit(global0.x))), select(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), all(vec2<bool>(true, true))), select(vec3<bool>(any(vec3<bool>(true, true, true)), true, global1.a.x >= global1.a.x), vec3<bool>(true, true, any(vec3<bool>(true, false, false))), false), vec3<bool>(any(vec3<bool>(true, true, true)), true, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.x, global1.a.x))) + -591f));
}

fn func_1() -> vec3<i32> {
    let var_0 = ~(_wgslsmith_add_u32(u_input.d, 36734u) | ~max(8541u, abs(4294967295u)));
    global1 = Struct_1(vec4<f32>(global1.a.x, -1864f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -172f)))), vec4<u32>(global1.b.x, ~1390u, 4294967295u, 49452u), vec4<i32>(_wgslsmith_dot_vec2_i32(-firstTrailingBit(vec2<i32>(u_input.a.x, global1.c.x)), _wgslsmith_clamp_vec2_i32(global1.c.yz, abs(vec2<i32>(u_input.a.x, -25234i)), _wgslsmith_mult_vec2_i32(vec2<i32>(global1.c.x, 56254i), vec2<i32>(8696i, -2147483647i)))), _wgslsmith_add_i32(abs(firstTrailingBit(u_input.a.x)), ~u_input.b), u_input.b, _wgslsmith_dot_vec2_i32(reverseBits(min(vec2<i32>(2147483647i, global1.c.x), vec2<i32>(u_input.a.x, global1.c.x))), -_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(u_input.b, 1i)))));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -528f)), global1.a.x, _wgslsmith_f_op_f32(trunc(-862f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - 995f)))), _wgslsmith_mult_vec4_u32(global1.b, firstLeadingBit(global1.b)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b ^ u_input.b, u_input.a.x | 2147483647i, u_input.b, min(~(-28417i), ~u_input.a.x)), vec4<i32>(~abs(global1.c.x), _wgslsmith_clamp_i32(abs(global1.c.x), u_input.b, ~0i), _wgslsmith_mult_i32(abs(global1.c.x), -global1.c.x), reverseBits(global1.c.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(global1.a)), vec4<u32>(~global0.x << (4294967295u % 32u), var_0 & (_wgslsmith_add_u32(var_0, u_input.d) << (u_input.c % 32u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 0u), global1.b.xz), global1.b.yx ^ global0.yz), 14947u), 41283u), -firstLeadingBit(~global1.c));
    var var_2 = true;
    return vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(0i, -1i, u_input.b) >> (global1.b.wyw % vec3<u32>(32u))), global1.c.zxw), ~(~(u_input.a & global1.c.yww))), 0i, ~(abs(global1.c.x) ^ _wgslsmith_div_i32(global1.c.x, select(u_input.b, -1i, false))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = select(-2147483647i, ~(-2147483647i & global1.c.x) << (reverseBits(abs(global1.b.x)) % 32u), !(1i < global1.c.x)) << (~global1.b.x % 32u);
    let var_1 = Struct_1(arg_2.a, _wgslsmith_clamp_vec4_u32(abs(abs(vec4<u32>(global0.x, 1u, u_input.d, global1.b.x)) | (global1.b | vec4<u32>(u_input.d, global0.x, 1u, u_input.d))), ~_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.c, 37217u, 0u, 0u), global1.b), abs(vec4<u32>(1u, global0.x, global1.b.x, 1u))), global1.b), global1.c);
    let var_2 = Struct_1(global1.a, vec4<u32>(4294967295u, 4294967295u, arg_2.b.x, var_1.b.x), _wgslsmith_div_vec4_i32(max(-(~vec4<i32>(-2147483647i, arg_3.x, arg_2.c.x, arg_1)), global1.c), ~(-vec4<i32>(arg_2.c.x, -1i, 2147483647i, 0i))));
    let var_3 = (-max(_wgslsmith_div_i32(arg_3.x, u_input.b), -9198i >> (global0.x % 32u)) >> (abs(arg_0) % 32u)) << (~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, arg_2.b.x, ~arg_2.b.x), ~global1.b.x) % 32u);
    global2 = array<Struct_1, 21>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1232f + var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.a.x)), _wgslsmith_f_op_f32(exp2(var_1.a.x))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-arg_2.a.x))), 2117f)), abs(var_2.b), _wgslsmith_div_vec4_i32(-(firstLeadingBit(var_2.c) << (global1.b % vec4<u32>(32u))), vec4<i32>(min(~var_3, var_3), var_1.c.x, 33580i, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_mod_u32(~(~(~global1.b.x)), ~(~global1.b.x)), _wgslsmith_clamp_i32((u_input.a.x & _wgslsmith_add_i32(global1.c.x, global1.c.x)) ^ -12599i, u_input.b, 1i), global2[_wgslsmith_index_u32(u_input.c, 21u)], func_1() << ((abs(global1.b.xwz ^ global1.b.yxy) ^ vec3<u32>(global0.x, 31163u, _wgslsmith_mult_u32(u_input.d, u_input.c))) % vec3<u32>(32u)));
    var var_1 = ~u_input.b;
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    var var_2 = global2[_wgslsmith_index_u32(21298u, 21u)];
    let var_3 = vec2<u32>(_wgslsmith_mod_u32(27632u | reverseBits(var_0.b.x), 10986u), _wgslsmith_div_u32(select(1u, firstTrailingBit(_wgslsmith_dot_vec3_u32(var_0.b.xwz, var_2.b.xzw)), true), ~countOneBits(~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(32601u, reverseBits(var_2.c.yy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x))))) - _wgslsmith_f_op_f32(-var_0.a.x)));
}

