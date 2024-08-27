struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(556f, vec3<f32>(-1129f, 101f, 2893f), vec2<f32>(195f, -500f), Struct_1(vec3<i32>(-14201i, i32(-2147483648), -18696i), 1827f, false, vec4<bool>(false, false, false, true)), -1169f);

var<private> global1: vec4<i32> = vec4<i32>(-1i, 6329i, 11027i, 0i);

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(207f, vec3<f32>(1983f, 391f, -895f), vec2<f32>(421f, -345f), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), 675f, true, vec4<bool>(false, true, true, false)), -185f), Struct_2(-1000f, vec3<f32>(374f, -1201f, -1000f), vec2<f32>(566f, 676f), Struct_1(vec3<i32>(-28540i, -7311i, 2501i), -754f, true, vec4<bool>(true, false, false, false)), 399f), Struct_2(-373f, vec3<f32>(-1152f, -890f, 284f), vec2<f32>(-1000f, 397f), Struct_1(vec3<i32>(36547i, 4701i, 1i), 255f, false, vec4<bool>(false, false, true, true)), 408f), Struct_2(-833f, vec3<f32>(817f, 1693f, -2415f), vec2<f32>(-1286f, -235f), Struct_1(vec3<i32>(i32(-2147483648), -1i, 68372i), 1092f, false, vec4<bool>(true, false, false, true)), 1129f));

var<private> global3: vec3<i32> = vec3<i32>(-45611i, i32(-2147483648), 1i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-751f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-713f, -259f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1717f)))));
    let var_1 = global0.b.zy;
    var var_2 = !vec4<bool>(any(vec3<bool>(any(global0.d.d), select(false, global0.d.d.x, global0.d.d.x), false)), false, global0.d.c, !global0.d.c);
    global1 = u_input.a;
    let var_3 = all(var_2.yyx);
    return max(0u, _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(u_input.d.x, 4294967295u, max(u_input.d.x, u_input.d.x)) ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 41655u), vec3<u32>(10791u, 149626u, u_input.d.x)) & 69777u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    var var_0 = (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x >> (u_input.d.x % 32u), 35336u, ~u_input.d.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 0u, 0u) & vec3<u32>(37082u, 4294967295u, 4294967295u), ~vec3<u32>(37065u, u_input.d.x, u_input.d.x), ~vec3<u32>(21527u, 37792u, 14790u))) & ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 104979u, 1u) << (vec3<u32>(1u, u_input.d.x, u_input.d.x) % vec3<u32>(32u)), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), _wgslsmith_add_vec3_u32(vec3<u32>(42243u, 19041u, u_input.d.x), vec3<u32>(u_input.d.x, 4294967295u, 4294967295u)))) | vec3<u32>(u_input.d.x, func_3(), ~firstLeadingBit(~0u));
    var var_1 = false;
    let var_2 = 1u;
    let var_3 = arg_1.b;
    global2 = array<Struct_2, 4>();
    return -440f;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> Struct_2 {
    var var_0 = arg_1.a.d.d.xz;
    let var_1 = arg_1;
    return var_1.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> Struct_2 {
    global0 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(global0.b.x)), _wgslsmith_f_op_f32(func_2(Struct_2(global0.c.x, vec3<f32>(-780f, -822f, arg_1.b), global0.b.xy, Struct_1(vec3<i32>(arg_3.x, 2147483647i, -1i), 1737f, false, vec4<bool>(false, arg_0.d.x, false, arg_0.d.x)), -569f), global0.d, global0.d.d.xy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, global0.d.b) + vec2<f32>(269f, 3387f)) - global0.b.xy)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global0.b.xx - global0.b.xx))), global0.d.d.x)), Struct_3(Struct_2(_wgslsmith_f_op_f32(step(arg_0.b, -852f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(-400f, -1000f, arg_0.b)))), _wgslsmith_f_op_vec2_f32(-global0.b.yx), global0.d, 1153f)), Struct_3(global2[_wgslsmith_index_u32(0u, 4u)]), countOneBits(_wgslsmith_div_u32(1u, ~_wgslsmith_add_u32(u_input.d.x, 1u))));
    global0 = func_4(vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_f_op_f32(trunc(-610f))))), Struct_3(Struct_2(_wgslsmith_f_op_f32(-834f + _wgslsmith_div_f32(global0.a, -346f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0.b, global0.b)), _wgslsmith_f_op_vec3_f32(-global0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-880f, -1746f)), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -155f) + global0.b.zx), Struct_3(Struct_2(global0.e, global0.b, global0.c, Struct_1(vec3<i32>(global1.x, u_input.c.x, -100621i), arg_1.b, false, arg_1.d), -144f)), Struct_3(global2[_wgslsmith_index_u32(arg_2, 4u)]), _wgslsmith_sub_u32(u_input.d.x, 41910u)).d, global0.e)), Struct_3(func_4(global0.c, Struct_3(func_4(vec2<f32>(arg_1.b, arg_1.b), Struct_3(global2[_wgslsmith_index_u32(4294967295u, 4u)]), Struct_3(global2[_wgslsmith_index_u32(74230u, 4u)]), u_input.d.x)), Struct_3(global2[_wgslsmith_index_u32(arg_2, 4u)]), arg_2)), 23588u);
    var var_0 = ~countOneBits(func_3());
    global2 = array<Struct_2, 4>();
    return global2[_wgslsmith_index_u32(~(u_input.d.x ^ (u_input.d.x | ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 59713u, arg_2, 250u), vec4<u32>(2868u, u_input.d.x, u_input.d.x, 1u)))), 4u)];
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec4<bool>) -> Struct_2 {
    global2 = array<Struct_2, 4>();
    let var_0 = func_1(Struct_1(vec3<i32>(-1i, arg_0.a.d.a.x, ~global1.x & global3.x), _wgslsmith_f_op_f32(-549f * -932f), !(!func_1(Struct_1(global0.d.a, 1625f, true, vec4<bool>(false, arg_0.a.d.c, arg_2.x, arg_2.x)), arg_0.a.d, 19108u, vec4<i32>(global0.d.a.x, 0i, arg_0.a.d.a.x, -1i)).d.d.x), vec4<bool>(!global0.d.c, global0.d.c, any(vec2<bool>(false, global0.d.c)), any(!arg_0.a.d.d))), Struct_1(firstTrailingBit(firstTrailingBit(u_input.b)), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(max(global0.b.x, arg_1))), !arg_2.x, vec4<bool>(any(select(global0.d.d.yy, arg_0.a.d.d.wz, true)), -733f == arg_0.a.e, func_4(vec2<f32>(arg_0.a.d.b, -331f), arg_0, arg_0, _wgslsmith_sub_u32(54798u, u_input.d.x)).d.d.x, true)), u_input.d.x, _wgslsmith_add_vec4_i32(vec4<i32>(114i << (u_input.d.x % 32u), (global0.d.a.x ^ -119i) << (abs(u_input.d.x) % 32u), (34163i << (0u % 32u)) & arg_0.a.d.a.x, -49481i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-arg_0.a.d.a.x, u_input.a.x, -1i, 0i), vec4<i32>(3552i, global3.x, countOneBits(global3.x), global1.x), countOneBits(~vec4<i32>(global3.x, global3.x, u_input.b.x, -22479i))))).d;
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(857f * 1089f)), _wgslsmith_div_f32(arg_0.a.a, -558f), arg_0.a.d.d.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-872f, 246f), 389f, _wgslsmith_f_op_f32(min(-2112f, global0.d.b)))), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec3<i32>(-2147483647i, u_input.a.x, -18650i), _wgslsmith_f_op_f32(floor(-266f)), false, !vec4<bool>(global0.d.c, arg_2.x, false, arg_0.a.d.c)), Struct_1(vec3<i32>(arg_0.a.d.a.x, 1i, 45247i), _wgslsmith_div_f32(1094f, 2310f), all(vec3<bool>(var_0.c, arg_2.x, var_0.d.x)), arg_2), _wgslsmith_add_u32(u_input.d.x, 30754u), vec4<i32>(~(-2147483647i), i32(-1i) * -5139i, _wgslsmith_dot_vec4_i32(vec4<i32>(-50552i, -69717i, 7579i, var_0.a.x), vec4<i32>(global1.x, -2147483647i, global0.d.a.x, u_input.b.x)), 15780i)).c + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.a.b.x, -961f)))))), Struct_1(-reverseBits(global0.d.a & u_input.a.xyx), global0.c.x, select(abs(0u) > _wgslsmith_sub_u32(u_input.d.x, 45319u), func_1(Struct_1(u_input.b, arg_1, arg_0.a.d.c, arg_0.a.d.d), arg_0.a.d, 4294967295u, vec4<i32>(global0.d.a.x, global0.d.a.x, 20852i, global1.x)).d.d.x, var_0.b <= var_0.b), vec4<bool>(true, !arg_0.a.d.d.x, !global0.d.d.x, true)), _wgslsmith_f_op_f32(select(global0.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -143f), arg_0.a.c.x, var_0.d.x)))), var_0.d.x)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1593f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.a.c.x, arg_1)), _wgslsmith_f_op_f32(var_0.b - arg_1), global0.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-624f, 737f)), arg_0, arg_0, countOneBits(4294967295u)).c)), func_4(arg_0.a.c, arg_0, arg_0, countOneBits(~1u)).d, var_0.b);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = arg_2.a.a;
    let var_1 = vec3<f32>(-1182f, _wgslsmith_f_op_f32(-2018f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-910f)), arg_1.a.c.x))), -290f);
    var var_2 = arg_1;
    var var_3 = vec2<i32>(reverseBits(func_1(func_1(arg_1.a.d, Struct_1(arg_2.a.d.a, 1675f, true, var_2.a.d.d), _wgslsmith_clamp_u32(7846u, u_input.d.x, u_input.d.x), reverseBits(u_input.a)).d, func_1(func_5(Struct_3(Struct_2(1241f, arg_2.a.b, arg_0.a.b.xx, Struct_1(arg_2.a.d.a, 650f, true, arg_2.a.d.d), var_2.a.c.x)), var_1.x, vec4<bool>(false, false, false, arg_0.a.d.c)).d, func_5(arg_2, -327f, global0.d.d).d, u_input.d.x, u_input.a).d, u_input.d.x, u_input.a).d.a.x), 1i);
    var_2 = Struct_3(Struct_2(var_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_1(global0.d, Struct_1(arg_2.a.d.a, -484f, global0.d.c, global0.d.d), u_input.d.x, arg_3).b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global0.b.yx, arg_0.a.b.zy)))), var_2.a.d, 1000f));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~13839u, _wgslsmith_mod_u32(_wgslsmith_add_u32(abs(~11658u), ~(~u_input.d.x)), abs(u_input.d.x)), ((_wgslsmith_add_u32(u_input.d.x, u_input.d.x) ^ _wgslsmith_div_u32(0u, u_input.d.x)) >> (u_input.d.x % 32u)) != 13993u);
    let var_1 = func_6(Struct_3(global2[_wgslsmith_index_u32(33938u, 4u)]), Struct_3(global2[_wgslsmith_index_u32(select(_wgslsmith_add_u32(1u, countOneBits(0u)), u_input.d.x, all(global0.d.d)), 4u)]), Struct_3(func_5(Struct_3(func_1(global0.d, Struct_1(vec3<i32>(global1.x, -2147483647i, u_input.b.x), -210f, true, global0.d.d), u_input.d.x, u_input.a)), -992f, vec4<bool>(true, global0.d.d.x, global0.d.c, false))), vec4<i32>(select(u_input.b.x, _wgslsmith_sub_i32(-global0.d.a.x, 2147483647i), !global0.d.d.x), ~abs(~(-19767i)), global3.x, u_input.b.x ^ 1i));
    var var_2 = var_1.a;
    var var_3 = ~u_input.d;
    var var_4 = -u_input.a.xyy;
    var var_5 = vec4<bool>(true && !global0.d.d.x, global0.d.c, (abs(func_3()) <= var_0) || var_2.d.c, all(!(!func_4(var_2.c, var_1, Struct_3(Struct_2(-1357f, global0.b, var_1.a.c, var_2.d, var_2.c.x)), var_0).d.d)));
    global1 = abs(_wgslsmith_clamp_vec4_i32(~(u_input.a >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.x, 1u, var_3.x, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec4<u32>(u_input.d.x, 18005u, u_input.d.x, 33568u)) % vec4<u32>(32u))), -select(u_input.a, vec4<i32>(-1i, u_input.b.x, u_input.c.x, global1.x), global0.d.c), u_input.a));
    var_2 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(abs(~11164u), u_input.d.x)) << (~abs(max(~var_3.x, 27845u)) % 32u), 4u)];
    global1 = vec4<i32>(global1.x, firstTrailingBit(global3.x), abs(-1i), -_wgslsmith_sub_i32(-15744i, ~19264i));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(global0.d.a.x, 45050i, -1i, var_1.a.d.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.a.d.a.zz, vec2<i32>(var_2.d.a.x, 29809i)), countOneBits(abs(var_1.a.d.a.x)), firstTrailingBit(2147483647i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 27372u, 57217u, 4294967295u), vec4<u32>(1u, 1u, var_3.x, var_0)) % 32u), countOneBits(var_4.x)), -vec4<i32>(abs(u_input.b.x), global0.d.a.x, abs(global3.x), var_1.a.d.a.x), u_input.a), vec2<i32>(-var_1.a.d.a.x, abs(~(-1i))) ^ -var_2.d.a.xy);
}

