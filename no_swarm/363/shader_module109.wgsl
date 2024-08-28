struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 28> = array<i32, 28>(0i, 0i, 2147483647i, -1i, 1i, -12393i, 1i, i32(-2147483648), 2147483647i, -57579i, -1i, -4781i, -4861i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 31098i, -17049i, 13897i, 2147483647i, -28485i, 2147483647i, -1i, 2147483647i, 2147483647i, 18444i, 1i, -1i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.d, u_input.d, arg_1.a.x)), global1[_wgslsmith_index_u32(0u, 28u)]), arg_1.a), arg_1.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_1.c + vec2<f32>(429f, arg_0)), arg_1.c)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1145f, -246f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.c.x, -1000f))))))), Struct_1(!select(select(vec2<bool>(true, false), vec2<bool>(true, arg_1.d.a.x), arg_1.b.a), arg_1.b.a, true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.c.x, 325f), _wgslsmith_f_op_f32(var_0.c.x + arg_0))))));
    global1 = array<i32, 28>();
    var var_2 = arg_2;
    let var_3 = min(~min(~vec3<u32>(24282u, 4294967295u, 0u) << ((vec3<u32>(arg_2, 89624u, u_input.a) >> (vec3<u32>(63471u, u_input.a, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), max(vec3<u32>(1u, u_input.a, 0u) & vec3<u32>(arg_2, 4294967295u, 44959u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 7756u), vec3<u32>(arg_2, 1u, arg_2)))), ~(~abs(firstTrailingBit(vec3<u32>(u_input.a, 39639u, 4294967295u)))));
    return select(select(vec2<bool>(true, !(-491f >= arg_1.c.x)), var_0.b.a, var_0.b.a.x), var_0.d.a, select(!(!(!vec2<bool>(arg_1.b.a.x, false))), !var_0.b.a, all(!select(vec3<bool>(arg_1.d.a.x, arg_1.b.a.x, var_0.d.a.x), vec3<bool>(arg_1.b.a.x, var_0.d.a.x, true), vec3<bool>(true, true, var_0.b.a.x)))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> u32 {
    let var_0 = vec3<i32>(-abs(_wgslsmith_mult_i32(-21796i, global1[_wgslsmith_index_u32(u_input.a, 28u)]) | (arg_1.a.x & global1[_wgslsmith_index_u32(58147u, 28u)])), abs(59296i), ~_wgslsmith_mult_i32(arg_1.a.x, _wgslsmith_mult_i32(-37871i, _wgslsmith_mod_i32(-1i, u_input.d))));
    let var_1 = all(!(!vec3<bool>(any(vec3<bool>(true, arg_1.b.a.x, arg_1.d.a.x)), false, arg_1.d.a.x || arg_1.d.a.x)));
    global1 = array<i32, 28>();
    let var_2 = var_0.x;
    global0 = all(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(978f)) - _wgslsmith_f_op_f32(-1435f + _wgslsmith_f_op_f32(ceil(arg_0)))), Struct_2(vec2<i32>(arg_1.a.x, -global1[_wgslsmith_index_u32(u_input.a, 28u)]), arg_1.d, arg_1.c, Struct_1(!arg_1.b.a)), abs(~(u_input.a ^ 10075u))));
    return u_input.a;
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(-311f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-458f, 176f))))), Struct_2(u_input.c.yy, Struct_1(vec2<bool>(true, any(vec3<bool>(true, false, true)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-243f)), -270f), -1719f), Struct_1(!func_3(-859f, Struct_2(u_input.c.zx, Struct_1(vec2<bool>(true, true)), vec2<f32>(-300f, 193f), Struct_1(vec2<bool>(false, false))), 6717u))), min(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], global1[_wgslsmith_index_u32(arg_0, 28u)]), u_input.b.xy), u_input.c.yx))), 28u)];
    var var_1 = vec3<u32>(~(arg_1 >> (u_input.a % 32u)), _wgslsmith_mult_u32(~(~4294967295u) << (abs(arg_0 | arg_0) % 32u), 70391u & arg_1), u_input.a);
    let var_2 = Struct_3(~(abs(global1[_wgslsmith_index_u32(arg_0, 28u)]) << (firstLeadingBit(~arg_1) % 32u)), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, false), 0u <= u_input.a)), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), false), !func_3(316f, Struct_2(u_input.b.xy, Struct_1(vec2<bool>(false, true)), vec2<f32>(-409f, 1135f), Struct_1(vec2<bool>(false, false))), arg_1))), u_input.c);
    var var_3 = u_input.a;
    var var_4 = vec2<f32>(352f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1182f, _wgslsmith_f_op_f32(round(1221f))) * _wgslsmith_f_op_f32(floor(502f))));
    return Struct_1(vec2<bool>(var_2.b.a.x, var_2.c.a.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f), _wgslsmith_f_op_f32(-arg_3)));
    let var_1 = ~63112u;
    let var_2 = i32(-1i) * -arg_2;
    var var_3 = select(!select(select(select(vec4<bool>(true, true, arg_1.b.a.x, true), vec4<bool>(arg_1.c.a.x, false, arg_1.b.a.x, arg_0.d.a.x), false), select(vec4<bool>(arg_1.b.a.x, arg_0.d.a.x, arg_1.b.a.x, true), vec4<bool>(arg_1.c.a.x, true, true, arg_0.b.a.x), arg_1.c.a.x), !vec4<bool>(false, false, arg_1.c.a.x, arg_0.d.a.x)), !vec4<bool>(arg_1.c.a.x, arg_0.d.a.x, arg_0.b.a.x, false), true), !select(!select(vec4<bool>(arg_1.b.a.x, arg_0.b.a.x, arg_0.d.a.x, true), vec4<bool>(arg_0.b.a.x, arg_1.b.a.x, false, true), arg_1.b.a.x), vec4<bool>(all(vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, false, false)), arg_0.b.a.x, arg_3 > arg_0.c.x, arg_1.c.a.x), true), all(vec4<bool>(arg_0.d.a.x, arg_3 > 1589f, func_2(80931u, u_input.a).a.x, !arg_1.b.a.x)) | true);
    global1 = array<i32, 28>();
    return Struct_3(~var_2, Struct_1(arg_0.d.a), Struct_1(select(select(var_3.yx, arg_0.d.a, false), func_3(arg_3, arg_0, ~1u), !(!vec2<bool>(true, arg_0.d.a.x)))), (firstLeadingBit(vec3<i32>(arg_2, 1i, -2147483647i)) | vec3<i32>(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-10381i, u_input.c.x, 1i), u_input.c), -1i)) >> (~vec3<u32>(~61495u, u_input.a & 0u, 84676u) % vec3<u32>(32u)));
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    global1 = array<i32, 28>();
    let var_0 = Struct_2(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], u_input.d), _wgslsmith_clamp_vec2_i32(arg_1.d.xz, vec2<i32>(0i, u_input.b.x), arg_1.d.yx), countOneBits(u_input.b.zy)) | (vec2<i32>(-28628i, 8367i) | (u_input.b.xx ^ vec2<i32>(771i, arg_1.a))), func_5(Struct_2(-u_input.c.xx, arg_1.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-519f, 1917f) + vec2<f32>(-942f, arg_3)), func_5(Struct_2(vec2<i32>(arg_1.a, 4378i), Struct_1(arg_2.a), vec2<f32>(-1524f, 208f), arg_2), arg_1, u_input.d, arg_3).b), Struct_3(func_5(Struct_2(vec2<i32>(45372i, 2147483647i), arg_2, vec2<f32>(151f, 627f), Struct_1(vec2<bool>(false, false))), Struct_3(u_input.b.x, arg_2, arg_2, arg_1.d), global1[_wgslsmith_index_u32(0u, 28u)], arg_3).d.x, func_5(Struct_2(vec2<i32>(9150i, -21798i), arg_2, vec2<f32>(-193f, -1231f), Struct_1(vec2<bool>(arg_2.a.x, true))), Struct_3(-2147483647i, Struct_1(vec2<bool>(arg_2.a.x, false)), Struct_1(vec2<bool>(arg_1.b.a.x, arg_2.a.x)), u_input.c), -38116i, arg_3).c, arg_1.c, vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], u_input.b.x, u_input.c.x) << (vec3<u32>(4294967295u, arg_0, u_input.a) % vec3<u32>(32u))), ~(-8674i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_3, -101f)), arg_3))).d.zx), func_2(countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 43600u, 1u), vec4<u32>(91169u, 1u, arg_0, arg_0))), (min(arg_0, 88872u) & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, arg_0), vec3<u32>(1u, u_input.a, 4294967295u))) & arg_0), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3)))))), func_2(arg_0, max(arg_0, 84524u)));
    global0 = true;
    global0 = arg_2.a.x;
    return var_0.b.a;
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = Struct_1(func_6(1u, func_5(Struct_2(vec2<i32>(u_input.d, u_input.c.x), func_2(u_input.a, 18036u), _wgslsmith_div_vec2_f32(vec2<f32>(-325f, 141f), vec2<f32>(-207f, -834f)), Struct_1(vec2<bool>(false, true))), Struct_3(max(1i, arg_0), Struct_1(vec2<bool>(false, true)), func_2(38334u, 15146u), vec3<i32>(12735i, u_input.c.x, 2147483647i) << (vec3<u32>(4216u, 75614u, 19068u) % vec3<u32>(32u))), min(2147483647i, global1[_wgslsmith_index_u32(4294967295u, 28u)]), -1877f), Struct_1(func_2(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a)).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1392f, _wgslsmith_f_op_f32(abs(1000f)))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!func_1(~firstLeadingBit(0i)));
    global0 = true;
    var var_0 = Struct_2(vec2<i32>(-13045i >> ((~u_input.a << (1u % 32u)) % 32u), (i32(-1i) * -1i) >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), _wgslsmith_sub_u32(93420u, u_input.a)) % 32u)), func_5(Struct_2(u_input.c.zx, Struct_1(vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1010f, 1184f)) * _wgslsmith_div_vec2_f32(vec2<f32>(206f, 139f), vec2<f32>(-263f, 502f))), Struct_1(vec2<bool>(true, true))), func_5(Struct_2(vec2<i32>(-21268i, 0i), func_5(Struct_2(u_input.c.zx, Struct_1(vec2<bool>(false, false)), vec2<f32>(-1012f, 819f), Struct_1(vec2<bool>(true, true))), Struct_3(global1[_wgslsmith_index_u32(4294967295u, 28u)], Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), vec3<i32>(global1[_wgslsmith_index_u32(79827u, 28u)], global1[_wgslsmith_index_u32(u_input.a, 28u)], global1[_wgslsmith_index_u32(u_input.a, 28u)])), u_input.c.x, 603f).b, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(376f, -842f), vec2<f32>(1135f, 1295f))), Struct_1(vec2<bool>(false, true))), Struct_3(1i | u_input.b.x, func_2(u_input.a, u_input.a), Struct_1(vec2<bool>(true, true)), u_input.b), i32(-1i) * -32886i, 334f), 66962i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -816f)))).b, vec2<f32>(-1534f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1206f * _wgslsmith_f_op_f32(floor(-837f))) + _wgslsmith_f_op_f32(-1556f - -127f))), func_2(u_input.a, u_input.a));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -480f);
    var var_2 = !vec3<bool>(var_0.d.a.x, !all(!vec4<bool>(true, false, var_0.d.a.x, false)), true);
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(var_0.c))));
    var var_4 = func_5(Struct_2(~vec2<i32>(~global1[_wgslsmith_index_u32(33540u, 28u)], 70239i | u_input.c.x), Struct_1(vec2<bool>(select(false, false, var_0.b.a.x), var_2.x)), vec2<f32>(476f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), func_2(min(~1u, select(34080u, u_input.a, var_2.x)), u_input.a)), Struct_3(~u_input.b.x | firstLeadingBit(-1i), Struct_1(vec2<bool>(var_0.b.a.x, var_2.x)), Struct_1(vec2<bool>(!var_0.b.a.x, all(vec3<bool>(var_0.b.a.x, var_0.b.a.x, true)))), abs(u_input.c)), var_0.a.x, _wgslsmith_f_op_f32(var_3.x - -969f));
    let var_5 = Struct_2(var_0.a, Struct_1(!func_5(Struct_2(u_input.c.yz, Struct_1(vec2<bool>(var_0.d.a.x, var_0.b.a.x)), var_0.c, Struct_1(var_0.d.a)), Struct_3(var_4.d.x, var_4.c, Struct_1(vec2<bool>(true, false)), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a, 28u)], u_input.b.x)), var_4.d.x, var_3.x).c.a), vec2<f32>(-827f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1080f, var_3.x))))), func_5(Struct_2(-(~var_4.d.yy), var_4.c, var_0.c, Struct_1(!var_4.b.a)), Struct_3(_wgslsmith_div_i32(var_0.a.x, -39527i), func_2(_wgslsmith_sub_u32(u_input.a, 42297u), 4294967295u), var_0.b, vec3<i32>(var_4.d.x, _wgslsmith_add_i32(2147483647i, var_4.a), 1i)), var_4.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, var_0.c.x)) - _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(var_3.x * var_0.c.x)))).c);
    global1 = array<i32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(countOneBits(u_input.a), reverseBits(u_input.a)), vec2<i32>(~_wgslsmith_dot_vec3_i32(u_input.c ^ vec3<i32>(var_0.a.x, 21981i, u_input.b.x), u_input.b), var_5.a.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1077f + var_5.c.x), var_5.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(980f, var_3.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1462f))))));
}

