struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(true, true, false, true, true, false, true, false, false, false, false, true, true, true, false, true, false, true, false, false, false, true, false, true, false, true, true, true, false, true, true);

var<private> global1: i32 = 2147483647i;

var<private> global2: array<Struct_1, 25>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: vec2<u32>) -> f32 {
    var var_0 = Struct_2(Struct_1(arg_3.x, -512f), arg_1.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.c.x, arg_1.d.b)), _wgslsmith_f_op_f32(select(arg_1.c.x, 1000f, false))) + _wgslsmith_div_f32(1650f, arg_1.c.x)), -517f), arg_1.d, !arg_1.e);
    let var_1 = arg_1.d;
    var var_2 = var_0.a;
    var var_3 = arg_1;
    var_0 = arg_1;
    return _wgslsmith_f_op_f32(select(var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * 561f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - var_2.b)) + _wgslsmith_f_op_f32(-1091f * _wgslsmith_f_op_f32(arg_1.c.x * 321f)))), true));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_2(arg_2, arg_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-874f, arg_3.b)))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, arg_1.b) * vec2<f32>(1000f, -1731f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1934f, -354f) * vec2<f32>(arg_2.b, 341f)))))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 1u), 25u)], select(vec3<bool>(!global0[_wgslsmith_index_u32(reverseBits(arg_3.a), 31u)], global0[_wgslsmith_index_u32(arg_3.a, 31u)], !(!arg_0.x)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, any(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.a, 31u)], false, arg_0.x))), true), !any(vec4<bool>(arg_0.x, arg_0.x, true, true))));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(23474u, 1u, arg_2.a), vec3<u32>(arg_2.a, 13041u, var_0.d.a)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a, arg_3.a, 39955u) | vec3<u32>(arg_1.a, var_0.b.a, var_0.a.a), firstTrailingBit(vec3<u32>(var_0.b.a, arg_1.a, arg_1.a))), ~vec3<u32>(0u, ~arg_2.a, 8426u)), 128919u, 1u, arg_2.a);
    var var_2 = _wgslsmith_add_vec3_i32(~((_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, 0i)) << (var_1.yxz % vec3<u32>(32u))) >> (~_wgslsmith_clamp_vec3_u32(var_1.yzx, var_1.xzx, vec3<u32>(arg_1.a, 95931u, arg_2.a)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(52848i, -1i, u_input.a) | vec3<i32>(u_input.a, 11065i, -2147483647i), firstTrailingBit(vec3<i32>(42999i, u_input.a, 16909i)), -vec3<i32>(-1i, u_input.a, 30981i)), ~vec3<i32>(-34079i, -1i, u_input.a)), _wgslsmith_mod_vec3_i32(-vec3<i32>(68214i, u_input.a, u_input.a), reverseBits(select(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(-1i, u_input.a, -7969i), arg_0)))));
    global1 = 0i;
    let var_3 = Struct_1(~14805u, 716f);
    return -246f;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: bool) -> Struct_2 {
    global2 = array<Struct_1, 25>();
    var var_0 = Struct_2(Struct_1(arg_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.c.x))))), arg_1.d, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_1.a.b), vec2<f32>(_wgslsmith_div_f32(1000f, arg_2.x), _wgslsmith_div_f32(arg_0.x, 1066f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.b, arg_0.x) * arg_2)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b, arg_0.x)))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(arg_1.a.a), arg_1.d.a, arg_1.a.a), abs(select(vec3<u32>(48475u, arg_1.d.a, 1u), vec3<u32>(9377u, 16416u, 14107u), vec3<bool>(arg_1.e.x, true, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1411f)), vec3<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(~countOneBits(4294967295u)), 31u)], (arg_1.d.a | _wgslsmith_sub_u32(arg_1.a.a, 4800u)) != (_wgslsmith_div_u32(arg_1.d.a, 4294967295u) & reverseBits(arg_1.d.a)), true));
    global1 = 2147483647i;
    var var_1 = arg_1;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1400f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(var_0.e.x, true, true), Struct_1(3611u, 639f), arg_1.d, Struct_1(var_1.d.a, 132f))) - arg_2.x)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(arg_1.b.b, arg_2.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.b.b, 370f))), _wgslsmith_f_op_vec2_f32(floor(arg_0.yy))), !select(arg_1.e.yx, var_0.e.zz, var_1.e.zz)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) - arg_1.c) * arg_2));
    return arg_1;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = !(!select(!(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(53366u, 31u)], false)), !vec4<bool>(global0[_wgslsmith_index_u32(14497u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], false), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], true, global0[_wgslsmith_index_u32(4490u, 31u)], false), true), false)));
    global2 = array<Struct_1, 25>();
    var var_1 = vec3<bool>(var_0.x, (firstTrailingBit(_wgslsmith_clamp_u32(0u, 0u, 1u)) << (firstLeadingBit(~35686u) % 32u)) != ~4294967295u, true);
    let var_2 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -189f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(func_2(u_input.a & u_input.a, Struct_2(Struct_1(38582u, arg_0), global2[_wgslsmith_index_u32(18887u, 25u)], vec2<f32>(195f, arg_0), global2[_wgslsmith_index_u32(4294967295u, 25u)], var_0.zzz), var_1.x, ~vec2<u32>(45465u, 10692u))))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, false), global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(abs(21421u), 25u)], global2[_wgslsmith_index_u32(1u, 25u)])), _wgslsmith_f_op_f32(-arg_0))), Struct_2(Struct_1(min(min(19770u, 14183u), _wgslsmith_div_u32(9987u, 42985u)), _wgslsmith_f_op_f32(-915f + _wgslsmith_f_op_f32(arg_0 + arg_0))), Struct_1(~(~4730u), _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(526f * -1144f)))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0, -353f)), _wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), global2[_wgslsmith_index_u32(1u, 25u)], select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 31u)], true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 31u)], true, false), true), !vec3<bool>(var_0.x, true, global0[_wgslsmith_index_u32(5045u, 31u)]), var_0.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-193f, arg_0))))))), arg_0 < _wgslsmith_f_op_f32(arg_0 - -989f));
    var var_3 = -1116f;
    return func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, var_2.d.b, arg_0, 319f), vec4<f32>(243f, var_2.a.b, -992f, 916f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(789f, 304f, -477f, arg_0) - vec4<f32>(arg_0, var_2.c.x, -1696f, arg_0)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(863f, 885f, var_2.c.x, -507f), vec4<f32>(arg_0, var_2.c.x, 1059f, -268f), !vec4<bool>(var_2.e.x, var_1.x, false, global0[_wgslsmith_index_u32(55690u, 31u)]))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, -856f, -573f, -778f)))), func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.c.x, var_2.d.b, -1384f, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(133f, var_2.a.b, 388f, -1447f) - vec4<f32>(-629f, -237f, 1254f, arg_0))))), Struct_2(func_4(vec4<f32>(var_2.d.b, var_2.a.b, -839f, arg_0), var_2, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.b.b, var_2.a.b))), all(var_0)).a, func_4(vec4<f32>(arg_0, -634f, -1702f, var_2.c.x), var_2, vec2<f32>(-1094f, var_2.a.b), true).b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(160f, 1438f) + vec2<f32>(var_2.a.b, 990f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-568f, arg_0), vec2<f32>(var_2.c.x, 1000f)))), func_4(vec4<f32>(var_2.b.b, var_2.b.b, arg_0, 682f), Struct_2(Struct_1(var_2.b.a, 961f), var_2.a, vec2<f32>(-1480f, arg_0), global2[_wgslsmith_index_u32(14401u, 25u)], vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 31u)])), _wgslsmith_f_op_vec2_f32(var_2.c - vec2<f32>(var_2.b.b, -573f)), false && var_0.x).a, !vec3<bool>(var_1.x, var_0.x, var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_3(vec3<bool>(var_0.x, false, global0[_wgslsmith_index_u32(var_2.a.a, 31u)]), func_4(vec4<f32>(-820f, 1036f, arg_0, 225f), Struct_2(Struct_1(32614u, var_2.c.x), Struct_1(4294967295u, var_2.a.b), var_2.c, var_2.a, var_2.e), var_2.c, var_2.e.x).a, func_4(vec4<f32>(-1098f, arg_0, arg_0, arg_0), var_2, vec2<f32>(320f, var_2.a.b), true).b, func_4(vec4<f32>(var_2.b.b, 602f, arg_0, 169f), Struct_2(var_2.a, Struct_1(26013u, 1341f), var_2.c, global2[_wgslsmith_index_u32(var_2.d.a, 25u)], var_2.e), vec2<f32>(243f, 655f), true).d))), true), vec2<f32>(func_4(vec4<f32>(var_2.c.x, -588f, _wgslsmith_f_op_f32(abs(arg_0)), arg_0), func_4(vec4<f32>(var_2.c.x, arg_0, 190f, arg_0), var_2, _wgslsmith_f_op_vec2_f32(floor(var_2.c)), !var_1.x), vec2<f32>(486f, _wgslsmith_f_op_f32(func_2(u_input.a, Struct_2(var_2.b, global2[_wgslsmith_index_u32(1u, 25u)], vec2<f32>(383f, 258f), var_2.a, var_2.e), false, vec2<u32>(var_2.a.a, var_2.b.a)))), var_0.x).c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))) + -983f)), true | any(vec3<bool>(!var_2.e.x, global0[_wgslsmith_index_u32(var_2.a.a, 31u)] & true, var_1.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> Struct_1 {
    global2 = array<Struct_1, 25>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -538f);
    let var_1 = Struct_1(20125u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_0.b.b)));
    var_0 = _wgslsmith_f_op_f32(arg_1.a.b * _wgslsmith_f_op_f32(-arg_0.c.x));
    var var_2 = ~(~arg_1.b.a);
    return func_1(var_1.b).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 29212i;
    var var_1 = func_5(func_1(-1207f), func_4(vec4<f32>(_wgslsmith_f_op_f32(select(-862f, _wgslsmith_f_op_f32(-612f - 730f), all(vec3<bool>(false, false, global0[_wgslsmith_index_u32(48580u, 31u)])))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(233f, 1385f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1481f)) + _wgslsmith_f_op_f32(171f * -963f)), -806f), Struct_2(global2[_wgslsmith_index_u32(1u, 25u)], Struct_1(9796u, _wgslsmith_f_op_f32(func_2(2147483647i, Struct_2(global2[_wgslsmith_index_u32(34739u, 25u)], Struct_1(10258u, 172f), vec2<f32>(579f, -833f), global2[_wgslsmith_index_u32(1u, 25u)], vec3<bool>(global0[_wgslsmith_index_u32(48636u, 31u)], global0[_wgslsmith_index_u32(47566u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)])), true, vec2<u32>(21808u, 43507u)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -741f), _wgslsmith_f_op_f32(ceil(-122f))), func_1(_wgslsmith_f_op_f32(trunc(233f))).d, func_4(vec4<f32>(-1103f, -917f, 1000f, -1626f), func_1(329f), _wgslsmith_div_vec2_f32(vec2<f32>(294f, 1000f), vec2<f32>(-1669f, 1000f)), true).e), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-855f, -726f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(110f, 368f) + vec2<f32>(-1337f, -1290f)))), true)), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_1(-917f).d.b))), _wgslsmith_f_op_f32(floor(func_1(-313f).a.b)))), any(vec4<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(0u)), 31u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 1u), 31u)], false && global0[_wgslsmith_index_u32(33936u, 31u)], true && global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 8971u, 1u), vec4<u32>(16702u, 4294967295u, 40812u, 55329u)), 31u)])));
    var var_2 = ~max(~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a) | vec3<i32>(u_input.a, 32924i, 1i), select(vec3<i32>(19166i, -2147483647i, -2147483647i), vec3<i32>(-1i, var_0, u_input.a), vec3<bool>(true, false, global0[_wgslsmith_index_u32(30226u, 31u)]))), vec3<i32>(max(abs(1i), u_input.a), i32(-1i) * -u_input.a, var_0 | ~48087i));
    let var_3 = false;
    var var_4 = 1481f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -177f), 1956f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(var_3, var_3, false), global2[_wgslsmith_index_u32(var_1.a, 25u)], global2[_wgslsmith_index_u32(var_1.a, 25u)], Struct_1(0u, 620f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b + var_1.b), var_1.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(525f, -183f, -593f, 233f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, var_1.b, var_1.b))), vec4<bool>(true, var_3, any(vec3<bool>(global0[_wgslsmith_index_u32(var_1.a, 31u)], true, global0[_wgslsmith_index_u32(var_1.a, 31u)])), false))), !select(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_1.a, 31u)], var_3), !vec4<bool>(global0[_wgslsmith_index_u32(var_1.a, 31u)], false, true, false), any(vec2<bool>(global0[_wgslsmith_index_u32(35740u, 31u)], false))))), vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(countOneBits(28096u), var_1.a)), abs(~max(1u, var_1.a)), 0u), _wgslsmith_sub_u32(_wgslsmith_div_u32(abs(var_1.a), var_1.a), var_1.a), 1i, _wgslsmith_mult_i32(-1i, ~var_2.x));
}

