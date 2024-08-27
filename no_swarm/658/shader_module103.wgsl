struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_4(Struct_3(arg_1, -787f, min(_wgslsmith_mult_i32(u_input.b, -u_input.b), u_input.b)), !select(!select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_2.x), !vec3<bool>(arg_2.x, false, arg_2.x), _wgslsmith_f_op_f32(max(-1338f, arg_1.b)) < arg_1.b), Struct_1(-898f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(277f)))), -1270f)), Struct_3(Struct_2(vec2<u32>(4294967295u, 0u) & ~arg_0, _wgslsmith_f_op_f32(-766f - _wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-718f)) * -151f), ~firstLeadingBit(u_input.b) << (arg_3.x % 32u)));
    var var_1 = arg_3.x;
    var var_2 = Struct_4(var_0.a, select(!var_0.b, vec3<bool>(var_0.b.x, !(var_0.b.x != false), false), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_2.x, arg_2.x, false), select(vec3<bool>(true, var_0.b.x, var_0.b.x), vec3<bool>(arg_2.x, var_0.b.x, var_0.b.x), var_0.b), true), var_0.b)), var_0.c, Struct_3(var_0.a.a, 1000f, 16583i));
    global0 = 20098u;
    global0 = _wgslsmith_clamp_u32(13135u ^ ~arg_0.x, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(23350u, _wgslsmith_sub_u32(1u, 0u)), 1u), ~(~0u));
    return ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(~arg_3.x, _wgslsmith_add_u32(var_0.a.a.a.x, ~var_2.a.a.a.x)), _wgslsmith_mult_u32(~20058u, min(12892u, _wgslsmith_mult_u32(4294967295u, var_0.a.a.a.x))));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(abs(arg_1.d.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_0.a) * arg_0.a))));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(403u, 27694u, func_3(vec2<u32>(4294967295u, arg_1.d.a.a.x), Struct_2(var_1.d.a.a, 1106f), arg_2.yx, u_input.a), min(1u, var_1.a.a.a.x)), ~firstLeadingBit(u_input.a), ~(~u_input.a)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, var_1.d.a.a.x, var_0.a.x, var_0.a.x), vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.c.x), u_input.a), u_input.a) & vec4<u32>(arg_1.d.a.a.x | arg_1.a.a.a.x, countOneBits(u_input.c.x), ~u_input.c.x, _wgslsmith_clamp_u32(var_0.a.x, u_input.a.x, var_0.a.x))), vec4<u32>(u_input.c.x << (38346u % 32u), 10880u, ~((0u ^ u_input.c.x) & (u_input.a.x & u_input.c.x)), ~(~arg_1.d.a.a.x)));
    var var_3 = select(!select(var_2.x != var_1.a.a.a.x, var_1.b.x, true) == (~(~var_1.d.a.a.x) > _wgslsmith_sub_u32(arg_1.a.a.a.x, _wgslsmith_sub_u32(61289u, var_2.x))), select(any(!vec3<bool>(true, true, arg_2.x)), select(true, true, false), true), true);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(round(-1011f)), _wgslsmith_f_op_f32(abs(arg_1.c.a)));
    return var_4;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_4) -> Struct_4 {
    var var_0 = (-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.d.c, arg_2.a.c, u_input.b), vec3<i32>(arg_2.d.c, 6607i, 0i)), -49422i) >> (~_wgslsmith_add_vec2_u32(arg_2.a.a.a, arg_2.d.a.a) % vec2<u32>(32u))) >> (~vec2<u32>(1u, ~(~u_input.c.x)) % vec2<u32>(32u));
    var var_1 = arg_2.d;
    let var_2 = ~arg_2.a.a.a.x;
    global0 = var_2;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1187f);
    return Struct_4(arg_2.d, arg_2.b, Struct_1(_wgslsmith_f_op_f32(883f + var_1.a.b), arg_2.a.b), arg_2.d);
}

fn func_5(arg_0: Struct_4) -> u32 {
    var var_0 = Struct_5(arg_0.a.a.b, ~2147483647i);
    let var_1 = arg_0.a.a.a.x;
    let var_2 = Struct_5(_wgslsmith_f_op_f32(round(-482f)), -1i);
    global0 = 32778u;
    let var_3 = var_2;
    return u_input.c.x;
}

fn func_1() -> u32 {
    global0 = _wgslsmith_mult_u32(max(88729u, reverseBits(u_input.c.x)), ~_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mod_u32(abs(1u), u_input.c.x)));
    var var_0 = 23759u;
    var_0 = func_5(func_4(vec3<u32>(81665u, 4294967295u, u_input.c.x), ~4294967295u, Struct_4(Struct_3(Struct_2(vec2<u32>(61389u, 1u), 1212f), _wgslsmith_f_op_f32(657f + -390f), -2147483647i), vec3<bool>(true, false, true), func_2(Struct_5(2151f, u_input.b), Struct_4(Struct_3(Struct_2(vec2<u32>(2233u, 4141u), -182f), 1076f, u_input.b), vec3<bool>(false, true, true), Struct_1(1139f, 122f), Struct_3(Struct_2(vec2<u32>(u_input.a.x, u_input.c.x), 1547f), 412f, u_input.b)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2000f, 477f, -224f) * vec3<f32>(-1680f, -1000f, -621f))), Struct_3(Struct_2(vec2<u32>(u_input.a.x, u_input.c.x), -517f), _wgslsmith_f_op_f32(select(-135f, -1615f, false)), -u_input.b))));
    let var_1 = func_4(vec3<u32>(u_input.a.x, reverseBits(u_input.c.x), ~_wgslsmith_add_u32(u_input.c.x, ~u_input.c.x)), abs(38783u), func_4(firstTrailingBit(_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.c.x)), vec3<u32>(41754u, 48347u, 54071u))), u_input.a.x, func_4(vec3<u32>(4294967295u ^ u_input.c.x, 73316u, select(u_input.a.x, 30602u, false)), u_input.c.x, Struct_4(func_4(u_input.a.xww, u_input.a.x, Struct_4(Struct_3(Struct_2(u_input.a.ww, -2237f), -757f, -2147483647i), vec3<bool>(true, true, false), Struct_1(599f, -907f), Struct_3(Struct_2(u_input.c.yx, -1797f), 613f, u_input.b))).d, vec3<bool>(true, false, true), Struct_1(1759f, 513f), Struct_3(Struct_2(vec2<u32>(5233u, u_input.c.x), -1000f), -418f, -1i)))));
    let var_2 = all(vec2<bool>(true != all(select(vec4<bool>(var_1.b.x, false, false, false), vec4<bool>(true, var_1.b.x, var_1.b.x, true), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x))), !(false == !var_1.b.x)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global0 = var_0;
    let var_1 = abs(min(u_input.a.x, _wgslsmith_clamp_u32(var_0, var_0, func_1() ^ 9743u)));
    let var_2 = Struct_4(Struct_3(Struct_2(max(vec2<u32>(var_0, var_1) ^ vec2<u32>(55397u, 5391u), func_4(vec3<u32>(u_input.a.x, 0u, 6296u), u_input.c.x, Struct_4(Struct_3(Struct_2(vec2<u32>(var_0, u_input.c.x), 330f), 666f, u_input.b), vec3<bool>(false, true, false), Struct_1(1799f, -505f), Struct_3(Struct_2(u_input.c.zx, -237f), -130f, u_input.b))).d.a.a), -1050f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(936f + 262f))), -12154i), func_4(u_input.c, ~func_4(vec3<u32>(u_input.a.x, u_input.c.x, 34055u) & u_input.c, 79263u, Struct_4(Struct_3(Struct_2(u_input.a.yx, -302f), 1116f, -51565i), vec3<bool>(true, true, false), Struct_1(-637f, 286f), Struct_3(Struct_2(u_input.a.zy, -812f), -428f, u_input.b))).a.a.a.x, Struct_4(Struct_3(Struct_2(vec2<u32>(u_input.a.x, u_input.c.x), -711f), _wgslsmith_f_op_f32(min(-1378f, 383f)), ~18556i), vec3<bool>(true, any(vec2<bool>(true, false)), true), func_4(_wgslsmith_add_vec3_u32(u_input.c, u_input.a.yzx), 1u, func_4(u_input.c, u_input.a.x, Struct_4(Struct_3(Struct_2(u_input.c.xz, 300f), -127f, u_input.b), vec3<bool>(false, true, false), Struct_1(2594f, 465f), Struct_3(Struct_2(u_input.c.xz, 535f), 751f, u_input.b)))).c, Struct_3(func_4(u_input.c, 11318u, Struct_4(Struct_3(Struct_2(u_input.c.xz, 441f), 2030f, u_input.b), vec3<bool>(true, true, false), Struct_1(1635f, 888f), Struct_3(Struct_2(vec2<u32>(var_0, var_0), -241f), 301f, u_input.b))).a.a, 1512f, -u_input.b))).b, func_2(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(770f, -738f))), -u_input.b), func_4(_wgslsmith_div_vec3_u32(~u_input.a.yyy, vec3<u32>(u_input.c.x, u_input.c.x, var_1)), (var_0 ^ 1u) ^ ~var_0, Struct_4(Struct_3(Struct_2(vec2<u32>(var_0, 33705u), -1469f), 833f, u_input.b), vec3<bool>(true, true, false), func_2(Struct_5(-545f, u_input.b), Struct_4(Struct_3(Struct_2(vec2<u32>(var_1, 22164u), -102f), -720f, u_input.b), vec3<bool>(false, false, true), Struct_1(-2365f, -1071f), Struct_3(Struct_2(vec2<u32>(28986u, 5229u), -1563f), -118f, 8725i)), vec4<bool>(true, true, false, false), vec3<f32>(133f, -330f, 120f)), func_4(u_input.a.wxy, 4294967295u, Struct_4(Struct_3(Struct_2(u_input.c.zz, -1883f), -520f, u_input.b), vec3<bool>(true, true, true), Struct_1(-1313f, 314f), Struct_3(Struct_2(u_input.c.zz, 534f), -472f, 1i))).d)), vec4<bool>(func_4(~vec3<u32>(u_input.a.x, 1u, 1u), 1u, Struct_4(Struct_3(Struct_2(u_input.a.xz, 1000f), 194f, 0i), vec3<bool>(true, false, true), Struct_1(1756f, -1175f), Struct_3(Struct_2(vec2<u32>(1u, u_input.a.x), -1602f), 795f, -41537i))).b.x, true, true, !all(vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 213f, 595f))))), Struct_3(func_4(u_input.c, select(u_input.c.x << (1u % 32u), _wgslsmith_mult_u32(var_1, var_0), true), func_4(~vec3<u32>(var_0, 4294967295u, 35134u), var_0, Struct_4(Struct_3(Struct_2(u_input.a.yx, -516f), 1838f, u_input.b), vec3<bool>(false, false, true), Struct_1(806f, -968f), Struct_3(Struct_2(u_input.c.xy, 696f), -580f, u_input.b)))).a.a, -826f, abs(20419i)));
    var var_3 = all(!(!select(!var_2.b.yz, vec2<bool>(true, var_2.b.x), !var_2.b.x)));
    var var_4 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_div_i32(-u_input.b, -28810i));
    var_3 = !var_2.b.x;
    let var_5 = var_2.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<i32>(u_input.b, 2147483647i)));
}

