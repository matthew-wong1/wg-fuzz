struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, -680f);

var<private> global1: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(1i, 1i), vec2<i32>(-1i, 1i), vec2<i32>(1i, 9374i), vec2<i32>(-11926i, i32(-2147483648)), vec2<i32>(52086i, 22513i), vec2<i32>(-5700i, 0i), vec2<i32>(31556i, 0i), vec2<i32>(-15893i, -3041i));

var<private> global2: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(-1000f, -201f, -2662f, 904f), vec4<f32>(-1505f, -1000f, 2013f, -973f), vec4<f32>(1000f, -483f, 244f, -1033f), vec4<f32>(1703f, -412f, -1462f, -355f), vec4<f32>(-303f, 146f, -198f, 778f), vec4<f32>(1297f, 512f, 901f, 754f), vec4<f32>(-326f, -338f, -1000f, -1000f), vec4<f32>(-974f, 1436f, -806f, 370f), vec4<f32>(-286f, -933f, -619f, -220f), vec4<f32>(560f, -819f, -1243f, -1150f), vec4<f32>(2022f, 838f, -1564f, -390f), vec4<f32>(-433f, 610f, 1321f, 1000f), vec4<f32>(1051f, 327f, 284f, -1224f), vec4<f32>(-866f, 1000f, 766f, -2650f), vec4<f32>(477f, -662f, 510f, 1704f), vec4<f32>(1678f, 1163f, 1521f, 497f), vec4<f32>(110f, -1126f, 1081f, -906f), vec4<f32>(563f, -967f, -206f, -783f), vec4<f32>(194f, 559f, 601f, -615f));

var<private> global3: array<bool, 32> = array<bool, 32>(true, true, false, false, false, false, false, true, true, false, true, true, false, true, true, false, false, false, false, false, true, true, false, true, true, true, true, false, true, false, false, false);

var<private> global4: Struct_2 = Struct_2(Struct_1(-135f, true, vec4<f32>(1217f, 1679f, -207f, 353f), vec3<bool>(false, false, true)), Struct_1(120f, true, vec4<f32>(-1901f, -795f, 302f, 602f), vec3<bool>(false, true, true)), -1i, vec3<i32>(0i, -1i, 9406i), vec4<u32>(68137u, 4656u, 66194u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<i32> {
    var var_0 = global4.b;
    let var_1 = select(global4.b.d, vec3<bool>(all(vec4<bool>(var_0.b | false, true, global3[_wgslsmith_index_u32(1u, 32u)], all(vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(19102u, 32u)])))), any(global4.b.d), all(vec4<bool>(false, all(vec3<bool>(global4.a.d.x, var_0.d.x, var_0.b)), 0i <= global4.d.x, all(global4.a.d)))), any(select(!(!vec4<bool>(false, var_0.b, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(select(global3[_wgslsmith_index_u32(global4.e.x, 32u)], true, global3[_wgslsmith_index_u32(global4.e.x, 32u)]), global4.e.x == global4.e.x, global4.a.d.x, false))));
    var_0 = Struct_1(105f, _wgslsmith_mod_i32(global4.c >> (_wgslsmith_mult_u32(global4.e.x, 4294967295u) % 32u), _wgslsmith_add_i32(1i, -2147483647i)) > 1i, var_0.c, vec3<bool>(var_0.d.x, global3[_wgslsmith_index_u32(abs(~0u), 32u)], var_1.x));
    var var_2 = select(!select(!(!vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 32u)], var_0.b, false, global4.a.d.x)), select(select(vec4<bool>(global4.b.b, false, global4.b.d.x, false), vec4<bool>(global4.b.d.x, global3[_wgslsmith_index_u32(0u, 32u)], false, true), vec4<bool>(false, var_0.d.x, true, false)), vec4<bool>(var_0.d.x, true, true, var_0.d.x), true), (var_0.b != global4.a.b) | true), !vec4<bool>(all(select(var_1.xx, vec2<bool>(true, var_1.x), true)), false, true, true), vec4<bool>(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.b.a))) <= global0.x, select(global4.a.a > 985f, global4.a.b, (u_input.e <= global4.e.x) || !var_1.x), global4.a.d.x));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.a - var_0.a)));
    return ~global4.d;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -923f) * _wgslsmith_f_op_f32(select(global4.a.a, global4.a.a, true))) * -764f), arg_0, _wgslsmith_f_op_vec4_f32(global4.a.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(47384u, 19u)] - global4.a.c))), global4.a.d), global4.b, global4.c, (func_3() << ((~global4.e.wzz & global4.e.wzw) % vec3<u32>(32u))) | vec3<i32>(-2147483647i & abs(global4.c), -(-24034i & global4.c), firstTrailingBit(_wgslsmith_mod_i32(global4.c, global4.d.x))), vec4<u32>(u_input.e << (_wgslsmith_sub_u32(min(1u, 65782u), 0u) % 32u), firstLeadingBit(~4294967295u), 1u, u_input.e));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -119f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.a, -625f, true & var_0.a.b)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)), _wgslsmith_f_op_f32(-global0.x)));
    let var_2 = var_0;
    var var_3 = Struct_2(var_0.a, global4.b, func_3().x, _wgslsmith_clamp_vec3_i32(var_2.d, firstTrailingBit(var_2.d), _wgslsmith_add_vec3_i32(~select(vec3<i32>(-2147483647i, var_2.c, -5974i), vec3<i32>(var_2.c, var_2.d.x, u_input.d), global3[_wgslsmith_index_u32(global4.e.x, 32u)]), -countOneBits(vec3<i32>(global4.c, -24733i, -2147483647i)))), var_0.e);
    return Struct_2(global4.b, var_2.a, 59700i, var_0.d, _wgslsmith_add_vec4_u32(var_0.e, ~vec4<u32>(4294967295u, _wgslsmith_mult_u32(global4.e.x, var_2.e.x), var_3.e.x, 4294967295u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1f, func_2(!arg_0.b.d.x, arg_1.e.zyx).a.c.x)), 1109f), _wgslsmith_f_op_f32(abs(-654f)));
    global4 = func_2(false == (var_0.x > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f + var_0.x)))), arg_1.e.wzy);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(503f, arg_0.a.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-964f)) * func_2(false, arg_1.e.wyz).b.c.x))));
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(~72354u, abs(2469u))), select(vec2<u32>(42154u << (u_input.e % 32u), arg_0.e.x), global4.e.xx, true)), 73801u, 21970u, 51182u);
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-285f, 199f))))), _wgslsmith_f_op_f32(f32(-1f) * -1387f)));
    return global4.a;
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: Struct_1) -> Struct_2 {
    global2 = array<vec4<f32>, 19>();
    global1 = array<vec2<i32>, 8>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.c.x * global0.x), _wgslsmith_f_op_f32(min(arg_0.a.a, 1f)));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_mod_vec2_i32(global1[_wgslsmith_index_u32(func_2(select(false, any(vec4<bool>(false, true, arg_1, false)), true), ~global4.e.yww).e.x, 8u)] << (reverseBits(~(global4.e.ww >> (global4.e.xy % vec2<u32>(32u)))) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(global4.d.zx, abs(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -26567i), global1[_wgslsmith_index_u32(u_input.e, 8u)]))), vec2<i32>(u_input.c, 1i), var_1.xz));
    return Struct_2(Struct_1(-323f, true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.c.x, -214f, 1000f, -201f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.b.c)), vec4<bool>(true, arg_2.a.d.x, false != arg_0.a.d.x, any(arg_0.a.d.xy)))), arg_3.d), Struct_1(-375f, any(select(vec3<bool>(true, arg_0.a.d.x, false), vec3<bool>(arg_3.d.x, global4.a.d.x, false), arg_3.d)), _wgslsmith_f_op_vec4_f32(global4.b.c * vec4<f32>(_wgslsmith_f_op_f32(floor(var_0)), global4.b.c.x, _wgslsmith_f_op_f32(select(-1069f, arg_2.b, arg_3.b)), _wgslsmith_f_op_f32(global4.a.a + arg_0.a.a))), vec3<bool>(arg_0.a.d.x, true, global3[_wgslsmith_index_u32(arg_2.c, 32u)])), -30702i, min(vec3<i32>(func_2(false, min(global4.e.xyy, vec3<u32>(u_input.e, 71780u, 72730u))).d.x, abs(25912i), var_2.x), vec3<i32>(0i, var_1.x, _wgslsmith_add_i32(i32(-1i) * -2147483647i, 0i))), global4.e);
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = false;
    let var_1 = global4.b;
    global3 = array<bool, 32>();
    var var_2 = Struct_3(global4.a, _wgslsmith_f_op_f32(f32(-1f) * -514f), global4.e.x);
    var var_3 = func_5(Struct_3(func_4(func_2(!var_2.a.d.x, global4.e.yzw), Struct_2(Struct_1(-1012f, true, var_1.c, global4.b.d), global4.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -2147483647i, u_input.c), vec3<i32>(2140i, global4.c, u_input.a.x)), vec3<i32>(1i, global4.c, u_input.c), ~global4.e)), global4.b.c.x, ~1u), var_2.a.b, Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b + 752f))), all(select(vec4<bool>(global4.b.b, var_1.b, var_1.b, global3[_wgslsmith_index_u32(24328u, 32u)]), vec4<bool>(true, global4.a.d.x, var_2.a.d.x, global3[_wgslsmith_index_u32(783u, 32u)]), global3[_wgslsmith_index_u32(3107u, 32u)])), var_2.a.c, global4.a.d), var_2.a.a, ~30615u), Struct_1(-1000f, global4.b.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a.c * vec4<f32>(580f, -1961f, global0.x, global0.x))) * var_2.a.c), vec3<bool>(!func_4(Struct_2(Struct_1(global0.x, global3[_wgslsmith_index_u32(arg_0, 32u)], vec4<f32>(-1210f, 737f, var_2.b, 1148f), global4.b.d), global4.a, 0i, vec3<i32>(global4.d.x, u_input.a.x, u_input.c), vec4<u32>(u_input.e, 38220u, global4.e.x, 1u)), Struct_2(Struct_1(global4.b.a, false, var_1.c, vec3<bool>(global3[_wgslsmith_index_u32(global4.e.x, 32u)], var_2.a.b, global4.a.b)), Struct_1(var_2.a.c.x, false, vec4<f32>(-1526f, global0.x, var_2.a.c.x, -142f), global4.b.d), u_input.c, global4.d, vec4<u32>(u_input.e, arg_0, u_input.e, u_input.e))).d.x, all(vec4<bool>(true, true, true, true)), any(func_2(var_2.a.d.x, global4.e.yyy).a.d.yy))));
    return func_5(Struct_3(var_2.a, global0.x, 1u), true, Struct_3(Struct_1(func_5(Struct_3(global4.b, var_1.a, arg_0), false, Struct_3(global4.a, 1000f, 0u), func_4(Struct_2(var_2.a, var_2.a, global4.d.x, vec3<i32>(69420i, var_3.c, 0i), var_3.e), Struct_2(var_2.a, var_3.b, 2147483647i, vec3<i32>(0i, 2147483647i, -1i), global4.e))).a.a, func_5(Struct_3(Struct_1(218f, global4.a.b, global4.a.c, var_3.b.d), var_2.a.a, 18483u), all(vec3<bool>(var_1.d.x, var_1.b, var_3.b.b)), Struct_3(global4.a, var_2.b, var_2.c), Struct_1(283f, global4.a.d.x, var_1.c, var_2.a.d)).a.d.x, vec4<f32>(global4.a.a, _wgslsmith_f_op_f32(-var_1.c.x), -950f, 1000f), func_2(false, global4.e.ywx).b.d), var_2.a.a, 1u), Struct_1(_wgslsmith_f_op_f32(var_1.c.x + global4.a.c.x), !func_2(true, ~vec3<u32>(var_2.c, 1u, var_2.c)).b.d.x, func_4(func_2(!global4.b.d.x, _wgslsmith_clamp_vec3_u32(global4.e.wwz, global4.e.wwx, var_3.e.xxz)), Struct_2(var_3.a, Struct_1(var_3.b.c.x, true, var_3.b.c, var_3.a.d), ~var_3.d.x, vec3<i32>(global4.d.x, u_input.b.x, 27470i), vec4<u32>(var_3.e.x, 44242u, 78230u, 1u))).c, global4.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 32>();
    var var_0 = -global4.d.zy;
    var var_1 = func_1(~_wgslsmith_mod_u32(~(~4294967295u), ~(global4.e.x ^ global4.e.x)));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.b.a)));
    var_1 = func_2(true, global4.e.wxx);
    var var_3 = abs(-(vec2<i32>(var_0.x, u_input.a.x) >> (global4.e.zy % vec2<u32>(32u))));
    var_2 = global4.a.a;
    let var_4 = _wgslsmith_f_op_f32(-global4.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, _wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(33921u, global4.e.x, 4294967295u, 4294967295u)), _wgslsmith_div_vec4_u32(firstLeadingBit(var_1.e), vec4<u32>(var_1.e.x, var_1.e.x, 1u, min(4294967295u, 24132u)))), global4.d.x, 1i, ~_wgslsmith_mod_u32(var_1.e.x, _wgslsmith_add_u32(select(1u, 0u, false), _wgslsmith_mod_u32(var_1.e.x, var_1.e.x))));
}

