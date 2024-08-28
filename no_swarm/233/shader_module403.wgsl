struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, 4294967295u, vec3<i32>(0i, -42069i, 1i), -1283f, false);

var<private> global1: array<i32, 4> = array<i32, 4>(-1i, i32(-2147483648), -1i, -11692i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> vec2<u32> {
    global1 = array<i32, 4>();
    var var_0 = arg_1;
    let var_1 = !(!(!(!vec3<bool>(false, global0.e, arg_1.d.e))));
    var var_2 = u_input.a.x;
    let var_3 = arg_0.zz;
    return min(max(var_0.c, vec2<u32>(0u, max(var_0.a.b, var_0.b.b))), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, u_input.a.x, 4294967295u, 22749u), vec4<u32>(global0.a, arg_1.d.a, arg_1.d.a, var_0.b.b)), ~var_0.d.a) & vec2<u32>(abs(var_0.a.a), _wgslsmith_mod_u32(~arg_1.d.b, global0.a ^ u_input.d)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = Struct_1(min(reverseBits(1u), ~(_wgslsmith_clamp_u32(u_input.d, 17033u, 61943u) << (_wgslsmith_mod_u32(16776u, u_input.d) % 32u))), _wgslsmith_mult_u32(global0.a, u_input.a.x), vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(79516u, arg_0.x), 4u)] << (4294967295u % 32u), firstTrailingBit(global0.c.x), ~(-_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(1u, 4u)], u_input.e))), -130f, !arg_1.b.e);
    var var_1 = Struct_1(_wgslsmith_sub_u32(global0.a, func_3(vec4<f32>(-1047f, _wgslsmith_f_op_f32(arg_1.a.d - var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -293f), _wgslsmith_div_f32(arg_1.b.d, 956f)), Struct_2(Struct_1(global0.a, 4294967295u, vec3<i32>(global0.c.x, 2147483647i, -1i), global0.d, true), arg_1.b, ~u_input.a, var_0, vec2<i32>(u_input.b.x, 2147483647i))).x), 31294u, _wgslsmith_clamp_vec3_i32(var_0.c, abs(vec3<i32>(2147483647i, ~(-33141i), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, arg_0.x, 24572u), 4u)])), u_input.b.xyx), -1256f, !all(select(!vec3<bool>(true, global0.e, true), !vec3<bool>(var_0.e, true, false), arg_1.b.e)));
    return vec4<u32>(arg_1.a.b, var_1.b, arg_1.d.b & 20598u, 4294967295u);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0.d, _wgslsmith_f_op_f32(-2008f * _wgslsmith_f_op_f32(round(1889f))), (arg_1.a.e && arg_1.d.e) && true))))));
    let var_1 = true;
    let var_2 = arg_1.d;
    var var_3 = select(abs(vec4<u32>(global0.a, 0u, u_input.d, arg_1.a.b)), func_4(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1223f, 193f, arg_1.b.d, var_2.d)), Struct_2(arg_1.b, arg_1.a, vec2<u32>(u_input.a.x, var_2.a), arg_1.a, vec2<i32>(35642i, -5775i))) >> ((~vec2<u32>(u_input.d, 84594u) ^ ~arg_1.c) % vec2<u32>(32u)), Struct_2(Struct_1(~global0.b, global0.b ^ 1u, global0.c >> (vec3<u32>(50189u, 4294967295u, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-var_2.d), false), var_2, vec2<u32>(1u, u_input.a.x) & arg_1.c, var_2, firstTrailingBit(vec2<i32>(-1i, u_input.b.x)))), true);
    global0 = Struct_1(_wgslsmith_mod_u32(~13465u, var_2.b), 33081u, vec3<i32>(_wgslsmith_add_i32(arg_1.d.c.x, 30907i), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_2.c.x, global0.c.x, arg_1.d.c.x, 0i)) | countOneBits(countOneBits(global0.c.x)), _wgslsmith_div_i32(max(1i, min(2147483647i, var_2.c.x)), -2147483647i)), 1000f, var_1 | all(select(vec4<bool>(var_2.e, var_2.e, true, var_2.e), vec4<bool>(true, true, var_2.e, var_2.e), true)));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    global0 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-arg_0.d)) + vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.d, global0.d, true)), -274f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1678f, -1000f), vec2<f32>(global0.d, 751f))) - _wgslsmith_div_vec2_f32(vec2<f32>(global0.d, 240f), vec2<f32>(-1033f, 144f))) * vec2<f32>(arg_0.d, _wgslsmith_f_op_f32(global0.d + global0.d)))), Struct_2(func_2(vec2<f32>(_wgslsmith_div_f32(-1761f, global0.d), _wgslsmith_f_op_f32(arg_0.d - 1000f)), Struct_2(Struct_1(0u, u_input.d, arg_0.c, 726f, arg_0.e), arg_0, vec2<u32>(arg_0.b, u_input.a.x) >> (vec2<u32>(86713u, 10595u) % vec2<u32>(32u)), func_2(vec2<f32>(global0.d, 1382f), Struct_2(Struct_1(39962u, arg_0.b, global0.c, global0.d, arg_0.e), Struct_1(arg_0.b, 0u, arg_0.c, global0.d, arg_0.e), u_input.a, arg_0, global0.c.zz), global0.b), func_2(vec2<f32>(429f, -1000f), Struct_2(arg_0, Struct_1(global0.a, 5434u, vec3<i32>(-23217i, arg_0.c.x, -1i), arg_0.d, true), vec2<u32>(global0.b, arg_0.b), arg_0, vec2<i32>(global1[_wgslsmith_index_u32(12676u, 4u)], global1[_wgslsmith_index_u32(arg_0.a, 4u)])), global0.b).c.zy), countOneBits(~global0.a)), arg_0, arg_1.zz, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.d, 644f), vec2<f32>(845f, arg_0.d))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1226f, arg_0.d))), Struct_2(func_2(vec2<f32>(1000f, global0.d), Struct_2(arg_0, arg_0, u_input.a, Struct_1(268u, global0.b, global0.c, global0.d, false), global0.c.zy), arg_1.x), func_2(vec2<f32>(2251f, arg_0.d), Struct_2(Struct_1(u_input.d, 91299u, vec3<i32>(global0.c.x, u_input.c, 8287i), 260f, global0.e), arg_0, u_input.a, arg_0, vec2<i32>(global0.c.x, u_input.b.x)), 26432u), u_input.a, Struct_1(u_input.d, 26509u, u_input.b.zyw, -465f, global0.e), arg_0.c.zx), _wgslsmith_div_u32(4294967295u, 54297u) << (~global0.a % 32u)), vec2<i32>(u_input.b.x, i32(-1i) * -global1[_wgslsmith_index_u32(1u, 4u)])), _wgslsmith_add_u32(u_input.d, ~100184u));
    var var_0 = vec4<u32>(45705u, ~(~firstLeadingBit(reverseBits(41668u))), arg_1.x, ~firstTrailingBit(~abs(1796u)));
    let var_1 = -5062i;
    global1 = array<i32, 4>();
    var var_2 = arg_0;
    return firstTrailingBit(-5589i);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = vec4<bool>(false, global0.e, false, true);
    global1 = array<i32, 4>();
    let var_1 = Struct_1(reverseBits(u_input.a.x), global0.a, vec3<i32>(global1[_wgslsmith_index_u32(~78326u, 4u)], _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(15846u, 4u)], 1i), ~(-1i) ^ abs(u_input.b.x)) ^ vec3<i32>(abs(-1i) | (2147483647i >> (global0.b % 32u)), func_5(func_2(vec2<f32>(arg_1.x, -603f), Struct_2(Struct_1(global0.b, global0.a, vec3<i32>(12076i, global0.c.x, 2147483647i), arg_1.x, var_0.x), Struct_1(9241u, 1u, u_input.b.xxy, arg_0.x, var_0.x), u_input.a, Struct_1(25615u, global0.a, vec3<i32>(6178i, global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(global0.a, 4u)]), global0.d, false), vec2<i32>(1i, 0i)), 5338u), countOneBits(vec4<u32>(0u, 34969u, 0u, u_input.d))), ~2147483647i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1294f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.d - -871f)))))), func_2(_wgslsmith_f_op_vec2_f32(arg_1.yz + vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))), Struct_2(Struct_1(_wgslsmith_sub_u32(u_input.a.x, 14639u), ~40514u, -u_input.b.xzy, _wgslsmith_f_op_f32(-global0.d), var_0.x & true), func_2(_wgslsmith_f_op_vec2_f32(-arg_1.xx), Struct_2(Struct_1(global0.a, global0.b, vec3<i32>(u_input.e, -24196i, u_input.b.x), arg_0.x, var_0.x), Struct_1(global0.b, global0.a, u_input.b.xwz, arg_1.x, false), u_input.a, Struct_1(1u, global0.b, vec3<i32>(global0.c.x, 0i, global0.c.x), arg_0.x, true), global0.c.xx), 1u), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.d, global0.a), _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.d, 4294967295u))), Struct_1(select(u_input.d, 4294967295u, false), global0.a, ~vec3<i32>(global1[_wgslsmith_index_u32(u_input.d, 4u)], global1[_wgslsmith_index_u32(0u, 4u)], u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -146f), any(var_0.ww)), -_wgslsmith_sub_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(60799u, 4u)], 2147483647i), vec2<i32>(-7616i, global1[_wgslsmith_index_u32(global0.a, 4u)]))), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, global0.b, 1u), vec3<u32>(global0.a, u_input.d, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(global0.a, u_input.d))))).e);
    let var_2 = ~_wgslsmith_sub_vec2_u32(max(vec2<u32>(var_1.a | 51274u, var_1.b | u_input.d), firstTrailingBit(vec2<u32>(global0.b, 0u))), ~vec2<u32>(global0.b, 14769u));
    global1 = array<i32, 4>();
    return func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1133f), arg_1.x), Struct_2(Struct_1(abs(~var_1.a), 37877u, vec3<i32>(u_input.e, global0.c.x, u_input.c) | select(u_input.b.xxz, vec3<i32>(u_input.e, 2147483647i, 11154i), var_0.xwz), -516f, ~u_input.e != (-35475i | global1[_wgslsmith_index_u32(1u, 4u)])), var_1, vec2<u32>(0u, _wgslsmith_mod_u32(var_1.b, 0u) >> (26824u % 32u)), Struct_1(countOneBits(var_1.a), var_2.x, select(global0.c, vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(global0.b, 4u)], -6566i) >> (vec3<u32>(var_2.x, 39931u, 83343u) % vec3<u32>(32u)), vec3<bool>(true, false, true)), 1571f, false), select(vec2<i32>(2147483647i, 2147483647i), u_input.b.yy, vec2<bool>(true, var_0.x)) >> (u_input.a % vec2<u32>(32u))), 70748u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-316f, global0.d, _wgslsmith_f_op_f32(-744f * -1824f)) - vec3<f32>(891f, _wgslsmith_f_op_f32(global0.d * global0.d), 646f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(771f, global0.d, -727f)), vec3<f32>(169f, -2005f, 447f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global0.d, global0.d), vec3<f32>(global0.d, -1000f, global0.d)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, _wgslsmith_f_op_f32(floor(global0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.d))))));
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_u32(~0u, ~(~global0.a)), _wgslsmith_clamp_u32(global0.a << (firstLeadingBit(global0.a) % 32u), _wgslsmith_add_u32(u_input.a.x, 10296u) >> (func_1(vec3<f32>(global0.d, global0.d, global0.d), vec3<f32>(global0.d, 150f, global0.d)).a % 32u), global0.a), firstLeadingBit(u_input.b.wyz), 115f, global0.e), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-124f, global0.d, -808f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1053f, -885f, -891f) + vec3<f32>(444f, global0.d, -1559f)) + vec3<f32>(global0.d, -192f, global0.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-691f)), _wgslsmith_div_f32(global0.d, -207f), _wgslsmith_f_op_f32(-global0.d)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2133f), _wgslsmith_f_op_f32(-global0.d), global0.d))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(57382u, global0.b), u_input.a ^ vec2<u32>(30170u, u_input.d)) ^ u_input.a, Struct_1(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.d, global0.d, 2572f), vec3<f32>(global0.d, global0.d, 290f), true))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.d, global0.d, global0.d)))).a, firstTrailingBit(61790u), vec3<i32>(abs(abs(1i)), _wgslsmith_mult_i32(1i, 2147483647i & u_input.b.x), 8263i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_2(vec2<f32>(-1488f, -2214f), Struct_2(Struct_1(4294967295u, u_input.a.x, vec3<i32>(u_input.b.x, u_input.e, 0i), -1000f, true), Struct_1(4294967295u, 0u, u_input.b.xzw, -157f, global0.e), vec2<u32>(4294967295u, global0.b), Struct_1(38467u, u_input.a.x, vec3<i32>(75022i, global0.c.x, -48064i), global0.d, true), global0.c.zx), global0.b).d))), global0.e), global0.c.yz);
    let var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.d * _wgslsmith_f_op_f32(floor(var_1.d))))) - var_1.d);
    global0 = Struct_1(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.d, var_2, 205f, var_1.d)))), var_0).x, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, var_1.d, -438f) + vec3<f32>(1000f, global0.d, 1783f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-614f, global0.d, 324f) - vec3<f32>(global0.d, -950f, var_2))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.d, var_2, var_1.d) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-252f, -101f, 1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, var_1.d, -1253f) * vec3<f32>(var_0.a.d, var_2, 265f))))).a, func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-301f, 1461f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.d)), _wgslsmith_f_op_f32(-var_2)), select(vec2<bool>(var_0.b.e, false), vec2<bool>(var_1.e, var_1.e), select(vec2<bool>(var_1.e, var_1.e), vec2<bool>(global0.e, var_1.e), vec2<bool>(true, global0.e))))), Struct_2(var_1, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.d, var_1.d, var_1.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1012f, 124f, -1455f))), u_input.a, Struct_1(_wgslsmith_add_u32(4294967295u, 0u), max(var_0.d.b, 4294967295u), ~var_1.c, global0.d, false), -select(global0.c.zz, vec2<i32>(global0.c.x, var_1.c.x), true)), ~(~func_2(vec2<f32>(var_0.b.d, 540f), var_0, 23814u).a)).c, -1404f, global0.e);
    global0 = Struct_1(var_1.a, ~countOneBits(global0.a), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(307f + var_0.d.d))), all(select(vec4<bool>(func_1(vec3<f32>(-2153f, 952f, var_1.d), vec3<f32>(-209f, var_1.d, 1573f)).e, true, global0.e, !var_1.e), vec4<bool>(global0.a < 0u, any(vec3<bool>(true, false, true)), global0.d != -386f, !global0.e), var_0.b.e)));
    var var_3 = ~countOneBits(vec4<u32>((66550u << (u_input.d % 32u)) | _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_1.b, 10150u), vec3<u32>(global0.b, 2687u, u_input.a.x)), ~_wgslsmith_dot_vec2_u32(var_0.c, var_0.c), ~(~var_0.d.a), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~min(select(0u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_3.x, 54418u)), true), ~func_3(vec4<f32>(global0.d, global0.d, 855f, 1228f), Struct_2(Struct_1(4294967295u, global0.b, vec3<i32>(global1[_wgslsmith_index_u32(53161u, 4u)], 1i, global1[_wgslsmith_index_u32(var_1.a, 4u)]), 1108f, var_0.b.e), Struct_1(var_0.d.b, var_0.d.a, vec3<i32>(-2147483647i, -2147483647i, var_0.d.c.x), -376f, true), var_0.c, Struct_1(0u, global0.a, global0.c, -497f, false), vec2<i32>(global0.c.x, u_input.e))).x), 0i, ~(~19010u));
}

