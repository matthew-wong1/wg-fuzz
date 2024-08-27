struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(20865u, 42122u, 0u);

var<private> global1: vec3<bool>;

var<private> global2: array<i32, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = vec3<bool>(!(any(vec4<bool>(global1.x, global1.x, true, false)) && any(vec4<bool>(false, global1.x, global1.x, global1.x))), false, false);
    global2 = array<i32, 19>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-335f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f) * _wgslsmith_f_op_f32(f32(-1f) * -1341f))))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1), 254f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -907f)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1013f, -1071f, var_1, 701f))) - vec4<f32>(1549f, -793f, 908f, -268f)) * vec4<f32>(_wgslsmith_f_op_f32(var_1 + var_1), -1733f, _wgslsmith_f_op_f32(-655f + 102f), var_1))));
    var var_3 = firstLeadingBit(_wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), 1u << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, global0.x), global0.x) % 32u)));
    return ~vec3<u32>(firstTrailingBit(~(~u_input.b.x)), u_input.b.x, global0.x);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> bool {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1.d.a.x, -294f), _wgslsmith_f_op_f32(-arg_1.b.a.x), _wgslsmith_f_op_f32(round(arg_1.d.a.x)), -110f))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(arg_1.d.a.x - 1072f), _wgslsmith_f_op_f32(-arg_1.a.a.x), arg_1.d.a.x, _wgslsmith_f_op_f32(floor(arg_1.d.a.x)))))), -vec3<i32>(u_input.c.x << (~4294967295u % 32u), ~(-41900i), arg_0), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1545f, arg_1.b.a.x, arg_1.a.a.x, arg_1.b.a.x)))), select(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.e, global0.yx), arg_1.e ^ (vec2<u32>(106989u, u_input.b.x) ^ arg_1.e)), firstLeadingBit(u_input.b), select(global1.xz, vec2<bool>(all(vec4<bool>(global1.x, global1.x, true, global1.x)), true), global1.xz)));
    global1 = select(vec3<bool>(global1.x, false, any(select(global1.zz, select(vec2<bool>(false, global1.x), vec2<bool>(false, global1.x), false), false))), !vec3<bool>(all(vec4<bool>(false, global1.x, global1.x, global1.x)), global1.x, all(global1.zx) | true), global1.x);
    global0 = func_3();
    let var_1 = u_input.b.x;
    global1 = vec3<bool>(arg_0 == -arg_1.c.x, select(true, global1.x, false), global1.x);
    return any(vec2<bool>(global1.x, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> vec2<i32> {
    global1 = vec3<bool>(all(vec4<bool>(all(!vec4<bool>(true, arg_2, arg_2, true)), true, true, true)), true, !global1.x || select(global1.x || false, arg_2, global1.x));
    global1 = select(select(select(select(select(vec3<bool>(false, arg_2, global1.x), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(arg_2, global1.x, arg_2), false), true), select(!vec3<bool>(false, false, arg_2), !vec3<bool>(global1.x, global1.x, false), !vec3<bool>(global1.x, false, false)), select(select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(true, arg_2, false), global1.x), !vec3<bool>(global1.x, true, arg_2), !vec3<bool>(false, global1.x, true))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(!vec3<bool>(arg_2, false, true), select(vec3<bool>(false, arg_2, false), vec3<bool>(false, true, arg_2), vec3<bool>(arg_2, global1.x, false)), vec3<bool>(false, arg_2, arg_2))), !vec3<bool>(arg_2, true, arg_2)), select(vec3<bool>(global1.x, global1.x, all(vec2<bool>(false, global1.x))), select(!(!vec3<bool>(true, true, global1.x)), vec3<bool>(true, arg_2, true), select(vec3<bool>(true, false, arg_2), select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(global1.x, arg_2, global1.x), true), select(vec3<bool>(arg_2, arg_2, global1.x), vec3<bool>(global1.x, arg_2, false), vec3<bool>(true, true, global1.x)))), global1.x), !vec3<bool>(true && !global1.x, (arg_1.b.a.x < -1000f) || !arg_2, global1.x));
    let var_0 = 24481i;
    let var_1 = arg_0;
    let var_2 = arg_1.b;
    return -select(~u_input.c.yz, -vec2<i32>(countOneBits(global2[_wgslsmith_index_u32(2161u, 19u)]), 1i), true);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_3 {
    global2 = array<i32, 19>();
    let var_0 = Struct_1(arg_2.b.a);
    let var_1 = -(~(((arg_2.c.x ^ 2147483647i) | -1i) | _wgslsmith_add_i32(-44042i, _wgslsmith_mod_i32(arg_0.c.x, 33183i))));
    var var_2 = -(~(~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, global2[_wgslsmith_index_u32(global0.x, 19u)], arg_2.c.x), global2[_wgslsmith_index_u32(global0.x ^ 13832u, 19u)])));
    var var_3 = func_4(var_0, Struct_3(Struct_1(arg_0.a.a), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.a.x, -454f, 1436f, -647f) - arg_2.a.a))), !func_2(arg_2.c.x << (7259u % 32u), arg_2), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(-1182f, var_0.a.x, 1144f, arg_2.a.a.x))))), var_0));
    return Struct_3(arg_0.a, arg_2.a);
}

fn func_5(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = !(!vec4<bool>(global1.x, any(vec4<bool>(false, true, global1.x, global1.x)), !(!global1.x), any(vec3<bool>(true, true, true))));
    global0 = vec3<u32>(0u, 22279u, 1u ^ global0.x);
    let var_1 = countOneBits(~firstTrailingBit(vec3<u32>(global0.x, u_input.b.x, 13464u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global0.x, u_input.b.x), vec3<u32>(40604u, 7142u, u_input.b.x)) % vec3<u32>(32u))));
    global0 = ~_wgslsmith_clamp_vec3_u32(~(~var_1), vec3<u32>(global0.x, _wgslsmith_add_u32(u_input.b.x, 1u), global0.x), min(var_1, ~_wgslsmith_add_vec3_u32(vec3<u32>(75710u, global0.x, var_1.x), vec3<u32>(u_input.b.x, 74868u, global0.x))));
    let var_2 = var_0.x;
    return countOneBits(var_1);
}

fn func_6(arg_0: vec3<u32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1135f)), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec4<f32>(2388f, -1000f, -612f, 1067f)), Struct_1(vec4<f32>(634f, 132f, 1000f, -1345f)), u_input.c, Struct_1(vec4<f32>(1725f, 492f, 138f, 275f)), vec2<u32>(53470u, 4294967295u)), global1.yx, Struct_2(Struct_1(vec4<f32>(1184f, -790f, 276f, -1359f)), Struct_1(vec4<f32>(910f, 1042f, 816f, -480f)), vec3<i32>(global2[_wgslsmith_index_u32(arg_0.x, 19u)], u_input.c.x, u_input.a), Struct_1(vec4<f32>(-911f, -1000f, -800f, 668f)), vec2<u32>(22140u, u_input.b.x))).b.a.x * -509f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f), 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(363f + 460f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-260f, -1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1417f * -932f), 1051f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1500f * -1239f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(896f, -399f, 896f, 1812f), vec4<f32>(-1000f, -1298f, -328f, 489f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1723f, 262f, 423f, 584f))))) - _wgslsmith_f_op_vec4_f32(func_6(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(103354u, u_input.b.x, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(43927u, global0.x, u_input.b.x)), func_5(func_1(Struct_2(Struct_1(vec4<f32>(893f, 850f, -862f, -146f)), Struct_1(vec4<f32>(1907f, 1074f, 634f, 160f)), u_input.c, Struct_1(vec4<f32>(-1014f, -429f, -237f, 741f)), vec2<u32>(u_input.b.x, 35899u)), vec2<bool>(global1.x, false), Struct_2(Struct_1(vec4<f32>(-1392f, 563f, -340f, -268f)), Struct_1(vec4<f32>(-1641f, 440f, 885f, -2528f)), vec3<i32>(0i, 1i, 1i), Struct_1(vec4<f32>(-1000f, -1000f, 789f, -252f)), global0.xz)))))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -330f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x))))))));
    let var_2 = abs(~(~countOneBits(vec4<u32>(global0.x, 110800u, global0.x, 0u))));
    let var_3 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(u_input.c.x), -global2[_wgslsmith_index_u32(132559u, 19u)]), u_input.c.zx) >= -44438i;
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1866f, var_0.x, 132f, 937f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-450f, 578f, 574f, var_0.x))))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.x, var_0.x, -926f) + vec4<f32>(var_0.x, var_0.x, 1413f, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-632f, 1526f, var_0.x, -1000f) + vec4<f32>(-412f, var_0.x, var_0.x, -639f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-701f, var_0.x, 578f, var_0.x))), vec4<bool>(var_3, true, false, true)))), vec3<i32>(-(~(~2147483647i)), 2147483647i, _wgslsmith_clamp_i32(abs(~(-2147483647i)), ~global2[_wgslsmith_index_u32(1u, 19u)], 2147483647i)), func_1(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, 370f), vec4<f32>(-997f, -991f, var_0.x, -749f), false))), func_1(Struct_2(Struct_1(vec4<f32>(var_0.x, 1351f, -939f, 990f)), Struct_1(vec4<f32>(-153f, 1139f, 1659f, 491f)), vec3<i32>(-362i, u_input.c.x, 3029i), Struct_1(vec4<f32>(var_0.x, 552f, var_0.x, -151f)), global0.xy), select(vec2<bool>(var_3, var_3), global1.yy, vec2<bool>(true, global1.x)), Struct_2(Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), Struct_1(vec4<f32>(var_0.x, -728f, 1465f, var_0.x)), u_input.c, Struct_1(vec4<f32>(var_0.x, -359f, var_0.x, var_0.x)), var_2.wy)).b, vec3<i32>(u_input.a, ~57074i, global2[_wgslsmith_index_u32(u_input.b.x, 19u)]), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), global0.zz), select(global1.zy, !global1.xz, true), Struct_2(func_1(Struct_2(Struct_1(vec4<f32>(1000f, var_0.x, -663f, var_0.x)), Struct_1(vec4<f32>(-210f, var_0.x, var_0.x, var_0.x)), u_input.c, Struct_1(vec4<f32>(var_0.x, -1000f, -1024f, var_0.x)), u_input.b), vec2<bool>(var_3, global1.x), Struct_2(Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, 644f)), Struct_1(vec4<f32>(var_0.x, var_0.x, 1403f, var_0.x)), u_input.c, Struct_1(vec4<f32>(var_0.x, 1025f, -844f, var_0.x)), global0.zz)).b, func_1(Struct_2(Struct_1(vec4<f32>(-809f, var_0.x, -1929f, 870f)), Struct_1(vec4<f32>(1980f, var_0.x, var_0.x, -1208f)), vec3<i32>(global2[_wgslsmith_index_u32(22079u, 19u)], -2147483647i, 0i), Struct_1(vec4<f32>(-116f, var_0.x, var_0.x, -405f)), u_input.b), select(vec2<bool>(var_3, true), global1.zz, true), Struct_2(Struct_1(vec4<f32>(2266f, -1400f, var_0.x, -550f)), Struct_1(vec4<f32>(var_0.x, var_0.x, -1464f, -2219f)), u_input.c, Struct_1(vec4<f32>(-1408f, var_0.x, var_0.x, var_0.x)), var_2.zw)).b, u_input.c, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1287f, var_0.x, var_0.x, 1478f))), vec2<u32>(_wgslsmith_dot_vec4_u32(var_2, var_2), 14699u))).b, var_2.yy);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(global2[_wgslsmith_index_u32(64321u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(67219u, 19u)])), ~vec3<i32>(var_4.c.x, 30643i, 65684i) & vec3<i32>(-2147483647i, 2147483647i, global2[_wgslsmith_index_u32(var_2.x, 19u)])), u_input.c.x, vec3<i32>(_wgslsmith_add_i32(u_input.a, countOneBits(u_input.c.x) << (var_4.e.x % 32u)), min(-8694i, countOneBits(global2[_wgslsmith_index_u32(global0.x >> (1u % 32u), 19u)])), _wgslsmith_div_i32(-var_4.c.x, -26516i & global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, global0.x), 19u)])), ~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(76795u), ~var_4.e.x), 19u)]);
}

