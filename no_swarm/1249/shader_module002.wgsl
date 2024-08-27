struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(true, vec2<i32>(1i, -38037i), 4294967295u, vec4<u32>(10730u, 1u, 16432u, 4294967295u), 6232u), vec3<f32>(313f, -715f, -1194f), vec2<u32>(69132u, 0u));

var<private> global1: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(438f, 486f, 610f, 1397f), vec4<f32>(1609f, -413f, 875f, 787f), vec4<f32>(388f, 471f, 681f, 365f), vec4<f32>(-183f, 908f, 807f, 1011f), vec4<f32>(492f, 624f, -1069f, 1000f), vec4<f32>(-1036f, -688f, 1000f, 285f), vec4<f32>(-779f, -1357f, 1277f, 1208f), vec4<f32>(613f, 1386f, 524f, -194f), vec4<f32>(-389f, 272f, 2360f, -1676f), vec4<f32>(1261f, 168f, -1000f, 1000f), vec4<f32>(946f, -1000f, 357f, -1212f));

var<private> global2: bool = false;

var<private> global3: array<Struct_3, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec3<bool> {
    return !select(select(!(!vec3<bool>(false, false, global0.a.a)), vec3<bool>(true, select(false, arg_1.a.a.a, arg_0.a.a.a), arg_1.d.a), global0.a.a), !(!vec3<bool>(false, global0.a.a, arg_0.a.a.a)), vec3<bool>(false, all(vec4<bool>(true, arg_0.a.a.a, false, false)), true));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    global1 = array<vec4<f32>, 11>();
    let var_0 = arg_0;
    var var_1 = vec2<bool>(global0.a.a, any(func_3(global3[_wgslsmith_index_u32(0u, 18u)], Struct_3(Struct_2(Struct_1(arg_0.x, vec2<i32>(-38874i, global0.a.b.x), u_input.a.x, vec4<u32>(4294967295u, global0.a.e, 0u, 1u), global0.a.c), global0.b, vec2<u32>(4294967295u, u_input.c.x)), Struct_2(global0.a, global0.b, vec2<u32>(u_input.c.x, 33820u)), global0.a.d.wyw, global0.a))));
    global2 = false;
    global2 = false;
    return Struct_1(false, u_input.d.xy, _wgslsmith_mod_u32(4294967295u, 4740u) << (0u % 32u), vec4<u32>(countOneBits(global0.a.d.x), _wgslsmith_sub_u32(min(global0.a.c | 44649u, select(global0.c.x, u_input.c.x, var_1.x)), 4294967295u), _wgslsmith_dot_vec3_u32(~global0.a.d.zzy, u_input.a) & ~(4294967295u >> (u_input.c.x % 32u)), 48734u), (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 81714u), global0.c) >> (~_wgslsmith_dot_vec4_u32(global0.a.d, vec4<u32>(4294967295u, 4294967295u, 14708u, 0u)) % 32u)) << (~global0.c.x % 32u));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(1u, 18u)];
    let var_1 = var_0.a;
    let var_2 = _wgslsmith_div_vec2_u32(~vec2<u32>(~(~u_input.a.x), min(global0.a.e, 4294967295u) & ~var_1.c.x), arg_0.c);
    var var_3 = _wgslsmith_f_op_f32(var_1.b.x - var_0.b.b.x);
    let var_4 = Struct_3(Struct_2(func_2(vec2<bool>(var_0.a.a.a, !global0.a.a)), vec3<f32>(-389f, _wgslsmith_f_op_f32(-860f - _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0.b.x))))), ~var_2), Struct_2(func_2(!vec2<bool>(true, var_1.a.a)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(ceil(var_1.b.x)), _wgslsmith_f_op_f32(-701f - var_0.b.b.x)))), ~(~(~var_1.c))), _wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(var_1.a.d.wyz, arg_0.a.d.wzw) << ((var_1.a.d.zyw >> ((global0.a.d.yzx << (global0.a.d.zyz % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), ~reverseBits(vec3<u32>(9616u, 4294967295u, 4294967295u)) ^ vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.a.c, var_2.x), vec3<u32>(0u, arg_0.a.e, var_2.x)), ~var_2.x, ~57246u)), func_2(select(!select(vec2<bool>(arg_0.a.a, global0.a.a), vec2<bool>(global0.a.a, false), vec2<bool>(true, arg_0.a.a)), vec2<bool>(all(vec4<bool>(var_0.b.a.a, var_0.a.a.a, var_1.a.a, true)), true), false)));
    return var_4.b;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    var var_0 = max(~(~(~_wgslsmith_mult_u32(arg_0.b.c.x, 70436u))), global0.a.e);
    let var_1 = min(u_input.d.x, -(global0.a.b.x | ~1i)) & _wgslsmith_div_i32(-2147483647i, -23673i);
    var var_2 = _wgslsmith_f_op_f32(sign(arg_2.a.b.x));
    let var_3 = 4294967295u;
    var var_4 = Struct_4(arg_1.wwy, arg_0.a);
    return func_4(func_4(func_4(arg_2.a)));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> Struct_2 {
    var var_0 = arg_0.b;
    global0 = func_5(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(u_input.c.x, 11u)], Struct_3(func_4(Struct_2(func_2(vec2<bool>(var_0.a.a, global0.a.a)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1166f, 529f, arg_0.b.b.x), vec3<f32>(1426f, 345f, global0.b.x))), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.c.x, 84462u), global0.a.d.xw))), arg_0.a, abs(select(abs(global0.a.d.xxy), firstTrailingBit(u_input.a), func_3(arg_0, arg_0))), arg_0.a.a), u_input.e.x);
    global1 = array<vec4<f32>, 11>();
    let var_1 = Struct_2(Struct_1((i32(-1i) * -arg_0.d.b.x) > _wgslsmith_add_i32(~(-3084i), var_0.a.b.x >> (32410u % 32u)), countOneBits(vec2<i32>(28072i, countOneBits(u_input.e.x))), _wgslsmith_dot_vec4_u32(arg_0.d.d & global0.a.d, select(var_0.a.d, global0.a.d, vec4<bool>(var_0.a.a, arg_0.a.a.a, arg_0.a.a.a, true))), global0.a.d, u_input.a.x), _wgslsmith_f_op_vec3_f32(-var_0.b), min(abs(reverseBits(~vec2<u32>(var_0.c.x, global0.a.e))), ~arg_0.b.c));
    return func_4(func_5(Struct_3(func_5(arg_0, global1[_wgslsmith_index_u32(~0u, 11u)], global3[_wgslsmith_index_u32(56156u << (var_0.a.c % 32u), 18u)], 5879i & u_input.e.x), func_4(func_4(Struct_2(global0.a, vec3<f32>(global0.b.x, -1585f, -751f), vec2<u32>(global0.a.d.x, u_input.a.x)))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.a.a.d.zxz, var_1.a.d.yxx, vec3<u32>(33319u, 0u, global0.c.x)), ~vec3<u32>(var_0.a.c, 0u, 1u)), func_4(func_5(Struct_3(Struct_2(var_1.a, arg_0.b.b, var_0.a.d.zy), Struct_2(var_1.a, global0.b, vec2<u32>(18004u, 16535u)), var_1.a.d.yyz, Struct_1(var_0.a.a, var_0.a.b, var_1.c.x, vec4<u32>(0u, global0.c.x, 0u, 21783u), global0.a.c)), vec4<f32>(var_1.b.x, var_1.b.x, arg_2, arg_0.a.b.x), arg_0, global0.a.b.x)).a), global1[_wgslsmith_index_u32(~4294967295u, 11u)], Struct_3(Struct_2(func_4(var_1).a, _wgslsmith_f_op_vec3_f32(select(arg_0.a.b, vec3<f32>(1170f, -715f, 1645f), true)), vec2<u32>(11681u, var_1.c.x)), func_5(global3[_wgslsmith_index_u32(79382u, 18u)], vec4<f32>(-1571f, 658f, -896f, 1733f), Struct_3(Struct_2(Struct_1(true, var_0.a.b, 7492u, vec4<u32>(100643u, global0.a.c, global0.c.x, var_1.a.c), 28794u), global0.b, var_0.c), Struct_2(Struct_1(var_1.a.a, global0.a.b, 4294967295u, vec4<u32>(var_0.a.e, var_0.a.c, arg_0.d.c, 1u), 26749u), vec3<f32>(1000f, 1338f, var_1.b.x), vec2<u32>(4294967295u, var_0.c.x)), vec3<u32>(26631u, 1u, 4294967295u), Struct_1(false, arg_0.d.b, 0u, var_0.a.d, global0.a.c)), global0.a.b.x), vec3<u32>(1u, 4294967295u, arg_0.a.c.x), Struct_1(!var_0.a.a, abs(vec2<i32>(arg_0.d.b.x, global0.a.b.x)), 62294u, _wgslsmith_sub_vec4_u32(global0.a.d, vec4<u32>(u_input.a.x, 26723u, var_0.c.x, var_0.a.e)), select(var_0.c.x, var_1.c.x, var_1.a.a))), ~func_5(arg_0, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-396f, arg_2, arg_0.b.b.x, var_0.b.x))), Struct_3(var_1, Struct_2(Struct_1(false, var_1.a.b, 69266u, vec4<u32>(var_1.a.e, var_0.c.x, 55279u, var_1.c.x), 4294967295u), vec3<f32>(arg_2, global0.b.x, 867f), arg_0.a.c), var_0.a.d.wwy, var_1.a), -2147483647i).a.b.x));
}

fn func_6(arg_0: Struct_4) -> u32 {
    global3 = array<Struct_3, 18>();
    let var_0 = Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, -1276f, 962f)), select(~vec2<u32>(4294967295u, u_input.c.x), global0.c, select(func_3(Struct_3(arg_0.b, Struct_2(arg_0.b.a, global0.b, vec2<u32>(22131u, 4294967295u)), global0.a.d.xwz, global0.a), Struct_3(arg_0.b, Struct_2(Struct_1(arg_0.b.a.a, vec2<i32>(u_input.e.x, -1i), global0.c.x, global0.a.d, 25103u), global0.b, u_input.c), vec3<u32>(arg_0.b.a.c, 22411u, 0u), global0.a)).yy, vec2<bool>(!global0.a.a, all(vec3<bool>(true, false, false))), false)));
    var var_1 = Struct_4(arg_0.a, var_0);
    let var_2 = Struct_3(func_5(Struct_3(Struct_2(Struct_1(true, global0.a.b, 32187u, vec4<u32>(0u, global0.c.x, u_input.a.x, 0u), 1u), global0.b, vec2<u32>(var_1.b.a.e, var_0.c.x)), func_5(Struct_3(var_1.b, var_0, vec3<u32>(var_1.b.c.x, 4294967295u, u_input.c.x), Struct_1(false, vec2<i32>(-2147483647i, global0.a.b.x), 40523u, vec4<u32>(arg_0.b.a.c, var_0.c.x, arg_0.b.a.e, 61127u), 27531u)), vec4<f32>(206f, 1000f, 337f, arg_0.b.b.x), Struct_3(arg_0.b, Struct_2(Struct_1(true, var_0.a.b, 11917u, arg_0.b.a.d, var_1.b.c.x), var_0.b, global0.a.d.wy), vec3<u32>(4294967295u, arg_0.b.c.x, var_0.c.x), var_0.a), global0.a.b.x & 2147483647i), vec3<u32>(var_0.c.x, u_input.c.x, _wgslsmith_div_u32(7218u, 10028u)), Struct_1(false, global0.a.b, abs(var_1.b.a.d.x), global0.a.d | vec4<u32>(53427u, 0u, var_1.b.a.e, arg_0.b.a.d.x), func_4(var_1.b).c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(arg_0.b.a.e, 11u)] * global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(var_0.a.d.x, 11u)] - global1[_wgslsmith_index_u32(global0.c.x, 11u)]), !vec4<bool>(false, global0.a.a, global0.a.a, var_1.b.a.a))) + _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(func_4(arg_0.b).a.d.x, 11u)])), global3[_wgslsmith_index_u32(~global0.c.x >> (_wgslsmith_mod_u32(~0u, var_0.c.x) % 32u), 18u)], reverseBits(_wgslsmith_clamp_i32(var_1.b.a.b.x, -31440i, -41252i))), func_1(Struct_3(arg_0.b, Struct_2(Struct_1(false, u_input.e, arg_0.b.c.x, vec4<u32>(12885u, 1u, 4294967295u, global0.a.d.x), 4294967295u), arg_0.a, ~arg_0.b.a.d.xy), var_0.a.d.xxz, func_2(!vec2<bool>(global0.a.a, var_0.a.a))), !func_3(Struct_3(var_0, Struct_2(arg_0.b.a, vec3<f32>(844f, var_0.b.x, var_0.b.x), var_0.a.d.wy), var_1.b.a.d.ywx, arg_0.b.a), global3[_wgslsmith_index_u32(~var_1.b.a.d.x, 18u)]).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.x)))), abs(global0.a.d.xyy) & ~global0.a.d.ywx, func_2(select(vec2<bool>(true, var_0.a.a), select(vec2<bool>(true, false), vec2<bool>(var_1.b.a.a, var_0.a.a), vec2<bool>(false, global0.a.a)), vec2<bool>(all(vec4<bool>(var_0.a.a, var_1.b.a.a, var_0.a.a, false)), true))));
    let var_3 = _wgslsmith_f_op_f32(-var_0.b.x);
    return _wgslsmith_sub_u32(46448u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 18>();
    let var_0 = global3[_wgslsmith_index_u32(func_6(Struct_4(_wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-324f, global0.b.x, global0.b.x))))), func_1(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(14208u, 42831u), 18u)], !global0.a.a, -538f))), 18u)];
    let var_1 = false;
    let var_2 = global3[_wgslsmith_index_u32(~(1u >> (var_0.d.e % 32u)), 18u)];
    global0 = func_1(Struct_3(func_4(Struct_2(Struct_1(var_1, var_2.b.a.b, 4294967295u, vec4<u32>(36061u, 1u, 0u, var_0.c.x), u_input.a.x), var_2.b.b, _wgslsmith_div_vec2_u32(vec2<u32>(141036u, 0u), var_2.b.a.d.zz))), Struct_2(var_0.a.a, _wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b.x, var_0.b.b.x, var_0.b.b.x))), _wgslsmith_add_vec2_u32(~global0.a.d.zz, vec2<u32>(var_0.c.x, 4294967295u))), ~_wgslsmith_mod_vec3_u32(select(u_input.a, u_input.a, vec3<bool>(global0.a.a, false, var_2.b.a.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(51834u, 1u, 27125u), var_0.c)), Struct_1(global0.a.a, vec2<i32>(-1i, -7655i) | var_0.b.a.b, _wgslsmith_div_u32(1u, _wgslsmith_add_u32(global0.c.x, var_0.a.a.e)), vec4<u32>(countOneBits(15204u), _wgslsmith_sub_u32(var_0.d.e, var_2.a.c.x), firstLeadingBit(32383u), _wgslsmith_mod_u32(var_0.d.d.x, 39045u)), ~var_0.b.a.c)), true, -606f);
    global1 = array<vec4<f32>, 11>();
    global1 = array<vec4<f32>, 11>();
    var var_3 = var_0.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(global0.b.xx, vec2<f32>(270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + var_0.a.b.x) + global0.b.x)), func_3(Struct_3(var_0.a, var_0.b, ~vec3<u32>(u_input.c.x, var_3.c, 79616u), Struct_1(true, vec2<i32>(u_input.d.x, -13231i), var_2.a.c.x, vec4<u32>(13847u, 4294967295u, 50109u, u_input.a.x), 1u)), global3[_wgslsmith_index_u32(82211u << (var_2.d.d.x % 32u), 18u)]).yy)), abs(firstLeadingBit(_wgslsmith_div_u32(~62456u, ~global0.a.c))));
}

