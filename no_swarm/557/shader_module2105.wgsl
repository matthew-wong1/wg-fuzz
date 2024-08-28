struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<bool, 11>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> i32 {
    global0 = vec3<u32>(_wgslsmith_dot_vec3_u32(~u_input.a.wxy, _wgslsmith_mod_vec3_u32(~vec3<u32>(13704u, global0.x, u_input.a.x) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 62996u, arg_1.x), vec3<u32>(arg_1.x, global0.x, global0.x)), u_input.a.yww)), abs(~firstTrailingBit(~u_input.a.x)), global0.x);
    let var_0 = !(!global1[_wgslsmith_index_u32(~min(~1u, arg_1.x), 11u)]);
    let var_1 = all(!vec3<bool>(false, !any(vec3<bool>(var_0, false, false)), true));
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(64349u, u_input.a.x, _wgslsmith_mod_u32(84141u, arg_1.x)), select(u_input.a.xyx, select(firstLeadingBit(u_input.a.zzx), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), u_input.a.yyw), firstTrailingBit(vec3<u32>(0u, u_input.a.x, global0.x)), vec3<u32>(arg_1.x, u_input.a.x, u_input.a.x) >> (u_input.a.zyy % vec3<u32>(32u))), false), global1[_wgslsmith_index_u32(global0.x, 11u)]));
    global0 = _wgslsmith_div_vec3_u32(u_input.a.wzw, _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.zzy, firstTrailingBit(u_input.a.zzx)) & u_input.a.wyx, u_input.a.xxz));
    return arg_0.a.x;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> bool {
    global1 = array<bool, 11>();
    let var_0 = arg_0.d.xxy;
    let var_1 = Struct_3(arg_0.a, arg_0.b, arg_2, vec4<i32>(~_wgslsmith_mod_i32(arg_0.d.x, -arg_0.c), 22180i, -func_3(Struct_2(var_0.xy), u_input.a.zx), var_0.x), !select(vec2<bool>(374f != arg_0.a.a.x, any(vec3<bool>(true, global1[_wgslsmith_index_u32(global0.x, 11u)], arg_0.e.x))), select(!vec2<bool>(arg_0.e.x, true), !arg_0.e, select(vec2<bool>(arg_0.e.x, true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), arg_0.e)), false));
    var var_2 = Struct_5(Struct_2(~arg_0.d.zz), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.a.x)) - arg_0.a.a.x))), arg_0.a.a.x)), _wgslsmith_div_f32(-444f, _wgslsmith_f_op_f32(abs(var_1.a.a.x))));
    let var_3 = var_2.a;
    return !arg_0.e.x;
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> vec3<u32> {
    global0 = arg_0.a.b.b;
    global1 = array<bool, 11>();
    global0 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.wyx, ~vec3<u32>(4294967295u, 5100u, 12210u) ^ vec3<u32>(abs(24859u), 58189u, global0.x)), abs(~(~(~vec3<u32>(62527u, arg_0.a.a.b.x, arg_0.a.a.b.x)))));
    global0 = ~(~_wgslsmith_mult_vec3_u32(max(vec3<u32>(global0.x, global0.x, u_input.a.x), u_input.a.wyw & arg_3.a.a.b), abs(arg_3.a.a.b)));
    let var_0 = ~(~arg_0.a.d ^ vec4<i32>(func_3(arg_3.b, firstTrailingBit(arg_3.a.b.b.yy)), -11683i, _wgslsmith_sub_i32(-arg_0.d.a.x, ~arg_3.d.a.x), min(arg_0.a.c, -2147483647i)));
    return min(~u_input.a.ywz, vec3<u32>(max(firstLeadingBit(select(11619u, global0.x, false)), arg_3.a.b.b.x), 1u, firstTrailingBit(~16541u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: u32) -> Struct_5 {
    let var_0 = -32458i;
    global0 = func_5(Struct_4(Struct_3(Struct_1(vec3<f32>(-215f, -533f, 342f), u_input.a.zwz), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1779f, -353f, -133f), vec3<f32>(-2139f, 738f, -1180f))), abs(u_input.a.zwz)), var_0, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_0, var_0, var_0) << (vec4<u32>(global0.x, u_input.a.x, arg_2, 71129u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, var_0, var_0, 1i)), arg_0), Struct_2(vec2<i32>(2355i, var_0) ^ vec2<i32>(-16052i, var_0)), true, Struct_2(~(~vec2<i32>(2147483647i, 1i)))), -711f, func_4(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-169f, 292f, 297f)), u_input.a.xww), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(467f, 762f, -273f) - vec3<f32>(-925f, -1000f, 115f)), vec3<u32>(55078u, 21532u, 15227u)), func_3(Struct_2(vec2<i32>(var_0, var_0)), vec2<u32>(4294967295u, 4294967295u)), vec4<i32>(min(0i, var_0), abs(23815i), firstLeadingBit(var_0), 13774i), arg_0), ~u_input.a.x, _wgslsmith_clamp_i32(min(-2147483647i, -65605i), 33420i, -1i) ^ var_0), Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-769f, 101f, -840f))), u_input.a.wzw), Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1258f, -470f, -1000f))), vec3<u32>(22793u, arg_1, 1u) ^ vec3<u32>(arg_1, 4294967295u, u_input.a.x)), 12764i, select(vec4<i32>(var_0, var_0, -31674i, 40432i), vec4<i32>(var_0, -19435i, var_0, var_0) | vec4<i32>(var_0, var_0, -1i, 6550i), vec4<bool>(global1[_wgslsmith_index_u32(38655u, 11u)], global1[_wgslsmith_index_u32(arg_1, 11u)], false, global1[_wgslsmith_index_u32(3479u, 11u)])), select(arg_0, vec2<bool>(true, arg_0.x), arg_0)), Struct_2(select(~vec2<i32>(1i, -2147483647i), vec2<i32>(var_0, var_0), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], true))), global1[_wgslsmith_index_u32(countOneBits(global0.x), 11u)], Struct_2(vec2<i32>(_wgslsmith_sub_i32(-2147483647i, var_0), countOneBits(10905i)))));
    let var_1 = (_wgslsmith_mod_u32(4294967295u, global0.x) & func_5(Struct_4(Struct_3(Struct_1(vec3<f32>(1350f, 605f, 1448f), vec3<u32>(global0.x, 0u, arg_2)), Struct_1(vec3<f32>(-1578f, 507f, 1729f), u_input.a.yyy), -903i, vec4<i32>(var_0, -22502i, var_0, var_0), arg_0), Struct_2(vec2<i32>(var_0, var_0)), arg_0.x, Struct_2(vec2<i32>(var_0, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f)), true, Struct_4(Struct_3(Struct_1(vec3<f32>(-227f, 145f, -1766f), vec3<u32>(u_input.a.x, arg_2, 4294967295u)), Struct_1(vec3<f32>(754f, -630f, 1757f), u_input.a.xyw), var_0, vec4<i32>(-1i, var_0, var_0, var_0), arg_0), Struct_2(vec2<i32>(33769i, 15461i)), true, Struct_2(vec2<i32>(var_0, 22499i)))).x) >> (arg_2 % 32u);
    var var_2 = firstTrailingBit(98111u);
    global0 = u_input.a.zww;
    return Struct_5(Struct_2(abs(select(~vec2<i32>(var_0, -1i), -vec2<i32>(var_0, -1i), select(arg_0, arg_0, vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 11u)]))))), _wgslsmith_f_op_f32(step(1000f, -147f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1820f)));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_3, arg_2: bool, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = 33815u;
    var var_1 = Struct_2(-abs(arg_0.a.a));
    var var_2 = Struct_4(Struct_3(Struct_1(vec3<f32>(arg_0.c, 731f, -903f), firstLeadingBit(_wgslsmith_mult_vec3_u32(u_input.a.zxx, vec3<u32>(arg_1.a.b.x, 6172u, 56338u)))), Struct_1(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(arg_0.c - arg_0.b), -664f), arg_1.a.b), -2147483647i, arg_1.d, vec2<bool>(false, select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 11u)], 6208u == var_0, true))), arg_0.a, false, Struct_2(arg_0.a.a & _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a.a.x, 232i), arg_1.d.xx, arg_0.a.a), var_1.a)));
    var var_3 = Struct_4(var_2.a, var_2.d, false, arg_0.a);
    var var_4 = -37403i;
    return Struct_2(-(~var_2.b.a));
}

fn func_7(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    global1 = array<bool, 11>();
    var var_0 = !(arg_0.a.x < -59749i) | global1[_wgslsmith_index_u32(~min(global0.x, ~global0.x & 23155u), 11u)];
    var var_1 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 1841f, arg_1)), (u_input.a.wxx & vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) >> ((u_input.a.yww ^ vec3<u32>(1u, global0.x, 4294967295u)) % vec3<u32>(32u))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1)), arg_2, -249f), _wgslsmith_sub_vec3_u32(u_input.a.xyw, u_input.a.wyz)), arg_3.a.x, _wgslsmith_sub_vec4_i32(max(reverseBits(vec4<i32>(arg_0.a.x, -2147483647i, 61407i, arg_3.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_3.a.x, 37070i, -22731i, -2147483647i), vec4<i32>(arg_0.a.x, -1i, arg_3.a.x, -1i))), vec4<i32>(_wgslsmith_sub_i32(arg_0.a.x, arg_0.a.x), 0i, 1i >> (u_input.a.x % 32u), func_6(Struct_5(arg_3, arg_2, 752f), Struct_3(Struct_1(vec3<f32>(-671f, arg_2, 325f), u_input.a.xwz), Struct_1(vec3<f32>(arg_1, arg_2, -909f), vec3<u32>(35648u, global0.x, 39774u)), -1i, vec4<i32>(arg_0.a.x, -2147483647i, 1i, 23479i), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 11u)])), global1[_wgslsmith_index_u32(u_input.a.x, 11u)], vec2<f32>(920f, arg_1)).a.x)), vec2<bool>(true, true)), arg_0, global1[_wgslsmith_index_u32(reverseBits(13377u), 11u)], func_2(vec2<bool>(true, true), (u_input.a.x | 1u) & global0.x, firstTrailingBit(0u)).a);
    let var_2 = countOneBits(vec4<i32>(-1i, firstLeadingBit(arg_3.a.x), _wgslsmith_add_i32(-8963i, abs(func_3(arg_0, global0.xz))), -func_6(Struct_5(arg_3, -1654f, 1496f), var_1.a, global1[_wgslsmith_index_u32(0u, 11u)], var_1.a.b.a.yz).a.x >> (global0.x % 32u)));
    let var_3 = vec3<bool>(false, !(!func_4(var_1.a, abs(u_input.a.x), arg_0.a.x)), select(var_1.a.e.x, true, !var_1.a.e.x));
    return Struct_1(vec3<f32>(arg_1, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.b.a.x - 1000f), arg_2)))), u_input.a.wwx);
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_4(Struct_3(func_7(func_6(func_2(vec2<bool>(global1[_wgslsmith_index_u32(1u, 11u)], false), 1u, u_input.a.x), Struct_3(Struct_1(vec3<f32>(562f, -700f, -344f), vec3<u32>(70797u, global0.x, global0.x)), Struct_1(vec3<f32>(1022f, 1176f, 1401f), u_input.a.wwy), 1i, vec4<i32>(22056i, -38791i, 2147483647i, -3808i), vec2<bool>(true, true)), all(vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 11u)], true, global1[_wgslsmith_index_u32(global0.x, 11u)])), vec2<f32>(844f, -248f)), _wgslsmith_f_op_f32(-342f + _wgslsmith_f_op_f32(-825f + -814f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_f_op_f32(max(-776f, 164f)))), func_6(func_2(vec2<bool>(true, true), global0.x, global0.x), Struct_3(Struct_1(vec3<f32>(-409f, 314f, 776f), u_input.a.xzz), Struct_1(vec3<f32>(-160f, -1537f, -1187f), u_input.a.yyz), 2147483647i, vec4<i32>(0i, -1i, 33700i, 1i), vec2<bool>(global1[_wgslsmith_index_u32(53156u, 11u)], true)), true, vec2<f32>(-347f, 1481f))), Struct_1(vec3<f32>(1f, 1f, 1f), vec3<u32>(u_input.a.x << (19006u % 32u), 1u, 0u)), min(_wgslsmith_add_i32(-2147483647i, 1i >> (0u % 32u)), 2147483647i), vec4<i32>(firstTrailingBit(1i), 0i, ~(-5048i), ~(-23563i)), select(select(!vec2<bool>(false, global1[_wgslsmith_index_u32(global0.x, 11u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 11u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), global1[_wgslsmith_index_u32(4294967295u, 11u)]), true), vec2<bool>(any(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 11u)])), true), select(!vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 11u)]), vec2<bool>(true, true), false))), Struct_2(min(abs(vec2<i32>(3690i, 53172i)), -vec2<i32>(1i, -2147483647i)) & (vec2<i32>(42339i, -21110i) >> ((vec2<u32>(u_input.a.x, u_input.a.x) & vec2<u32>(u_input.a.x, 10726u)) % vec2<u32>(32u)))), global1[_wgslsmith_index_u32(~(~abs(_wgslsmith_div_u32(12758u, u_input.a.x))), 11u)], func_2(select(select(!vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 11u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(global0.x, 11u)]), !global1[_wgslsmith_index_u32(global0.x, 11u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(0u, 11u)]), true), ~_wgslsmith_clamp_u32(global0.x, 4294967295u, global0.x) >> (4294967295u % 32u), u_input.a.x).a);
    var var_1 = select(~firstLeadingBit(-_wgslsmith_add_i32(var_0.d.a.x, var_0.d.a.x)), var_0.b.a.x, !any(vec4<bool>(var_0.c, global1[_wgslsmith_index_u32(60113u, 11u)], var_0.a.e.x, false)) | any(!select(vec3<bool>(false, false, var_0.c), vec3<bool>(global1[_wgslsmith_index_u32(34699u, 11u)], var_0.a.e.x, global1[_wgslsmith_index_u32(2772u, 11u)]), true)));
    return vec2<bool>((_wgslsmith_clamp_u32(func_5(Struct_4(var_0.a, var_0.d, global1[_wgslsmith_index_u32(22620u, 11u)], var_0.d), var_0.a.a.a.x, var_0.c, var_0).x, 1u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, var_0.a.a.b.x, 0u))) >> (~(~global0.x) % 32u)) > ~_wgslsmith_add_u32(1u, reverseBits(global0.x)), ~(~(~u_input.a.x)) != global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_7(Struct_2(vec2<i32>(0i, -28938i)), _wgslsmith_f_op_f32(abs(205f)), -948f, Struct_2(vec2<i32>(17653i, 1i))).a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(511f, _wgslsmith_f_op_f32(sign(232f)))))), -682f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(464f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -890f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(795f - _wgslsmith_f_op_f32(max(-1370f, -1118f)))))), ~vec3<u32>(~_wgslsmith_add_u32(u_input.a.x, 748u), 58677u, countOneBits(~global0.x)), u_input.a.zxz);
}

