struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(52698u, 10769u);

var<private> global1: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global2: array<i32, 10>;

var<private> global3: array<f32, 10> = array<f32, 10>(-1000f, -678f, 1388f, 685f, -471f, 303f, 1000f, -292f, 310f, 535f);

var<private> global4: array<vec2<i32>, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    global1 = array<vec2<bool>, 6>();
    global2 = array<i32, 10>();
    global1 = array<vec2<bool>, 6>();
    let var_0 = Struct_1(_wgslsmith_add_u32(0u, 0u << (~(~u_input.b) % 32u)), 59683u, vec4<bool>(_wgslsmith_f_op_f32(round(-1374f)) >= global3[_wgslsmith_index_u32(0u, 10u)], true, any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), select(true, true, true))), any(vec4<bool>(true, true, true, true))), 1686f, global1[_wgslsmith_index_u32(14988u, 6u)]);
    global3 = array<f32, 10>();
    return -firstLeadingBit(-8351i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<f32>) -> u32 {
    global4 = array<vec2<i32>, 16>();
    var var_0 = Struct_3(Struct_2(arg_2, ~4294967295u), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1.a, 10u)] * arg_2.x) + _wgslsmith_div_f32(-485f, arg_1.d)), arg_3.x, arg_1.d, 496f), firstTrailingBit(~(~global0.x))), arg_1);
    var var_1 = var_0.b;
    global2 = array<i32, 10>();
    global1 = array<vec2<bool>, 6>();
    return ~1u;
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(~(~(u_input.b ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, global0.x)))), func_4(vec4<i32>(3118i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(global0.x, 10u)], u_input.d.x) ^ 1i, func_3(), -_wgslsmith_div_i32(-20681i, u_input.d.x)), Struct_1(global0.x, ~u_input.b ^ 46356u, vec4<bool>(true, true, global0.x >= u_input.b, true), global3[_wgslsmith_index_u32(4294967295u, 10u)], vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1759f, global3[_wgslsmith_index_u32(12428u, 10u)], global3[_wgslsmith_index_u32(2721u, 10u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global0.x, 10u)], 1000f, -1693f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(64669u, 10u)], -1000f, 1000f, -1282f))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(global0.x, 10u)], global3[_wgslsmith_index_u32(u_input.b, 10u)])), vec2<f32>(_wgslsmith_f_op_f32(trunc(-499f)), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(4294967295u, 10u)])))))), vec4<bool>(all(vec3<bool>(any(vec4<bool>(false, true, true, false)), true, 1i <= global2[_wgslsmith_index_u32(42961u, 10u)])), !any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), false, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))) | any(vec3<bool>(true, false, false))), global3[_wgslsmith_index_u32(4294967295u, 10u)], select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(false, false), global1[_wgslsmith_index_u32(55250u, 6u)], true))), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.x, 10u)]), _wgslsmith_f_op_f32(1483f - 1319f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 10u)], -232f))))));
    global3 = array<f32, 10>();
    global2 = array<i32, 10>();
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1616f, 189f, var_1.x)), 0u), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2754f, -581f, var_0.d, var_0.d) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d, 1433f, global3[_wgslsmith_index_u32(0u, 10u)], 954f), vec4<f32>(1837f, var_1.x, 467f, -310f), vec4<bool>(var_0.c.x, false, false, true)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, global3[_wgslsmith_index_u32(u_input.b, 10u)], 201f, global3[_wgslsmith_index_u32(global0.x, 10u)])), vec4<f32>(var_1.x, var_0.d, 660f, var_1.x)))), ~min(~u_input.b, 3550u | u_input.b)), Struct_1(24533u, reverseBits(global0.x << (~4294967295u % 32u)), !vec4<bool>(all(vec4<bool>(false, true, var_0.e.x, var_0.e.x)), any(var_0.c), all(vec4<bool>(false, var_0.c.x, false, true)), 2147483647i <= u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -615f)), vec2<bool>(false, u_input.e >= _wgslsmith_clamp_i32(-24721i, global2[_wgslsmith_index_u32(u_input.b, 10u)], global2[_wgslsmith_index_u32(19057u, 10u)]))));
    return !vec4<bool>(any(vec3<bool>(any(var_0.e), var_2.c.e.x, var_0.e.x)), var_2.c.c.x, -global2[_wgslsmith_index_u32(27906u, 10u)] > _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(var_0.a, 10u)], global2[_wgslsmith_index_u32(0u, 10u)], u_input.e, -1i), u_input.d), false);
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    global1 = array<vec2<bool>, 6>();
    var var_0 = ~_wgslsmith_clamp_i32(-(~2147483647i | _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(37787u, 10u)], 16513i)), u_input.c, _wgslsmith_sub_i32(countOneBits(34743i ^ u_input.a), -abs(0i)));
    global2 = array<i32, 10>();
    var var_1 = any(func_2());
    var_1 = true;
    return Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 10u)], -1915f, -982f, -203f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2036f, global3[_wgslsmith_index_u32(u_input.b, 10u)], arg_0.a.x, arg_0.a.x))))))), 4294967295u), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(610f)) + global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 10u)]), -2095f, -239f, _wgslsmith_f_op_f32(-arg_0.a.x)), ~arg_0.b), Struct_1(u_input.b >> (u_input.b % 32u), ~_wgslsmith_mult_u32(select(arg_0.b, global0.x, false), 7695u), vec4<bool>(false, true, func_2().x != true, (4294967295u < u_input.b) | true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(535f - arg_0.a.x) * _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(u_input.b, 10u)]))) * -744f), vec2<bool>(true, !(u_input.c >= global2[_wgslsmith_index_u32(arg_0.b, 10u)]))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = arg_0.c.c.x;
    var var_1 = arg_2.a.ywx;
    var var_2 = func_1(Struct_2(arg_0.a.a, u_input.b)).c.c;
    var var_3 = select(arg_0.c.c.wxy, var_2.zxy, func_2().x);
    var var_4 = ~vec4<u32>(21512u | (~arg_0.a.b >> ((arg_2.b ^ arg_2.b) % 32u)), arg_0.a.b >> ((~50921u | ~u_input.b) % 32u), firstTrailingBit(arg_2.b), _wgslsmith_sub_u32(~27569u, _wgslsmith_sub_u32(~global0.x, 1u)));
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> vec4<u32> {
    let var_0 = Struct_1(max(1u, 40977u), 1u, select(!func_5(Struct_3(arg_1.a, arg_1.b, Struct_1(0u, 0u, arg_0.c, global3[_wgslsmith_index_u32(1u, 10u)], vec2<bool>(false, true))), vec4<f32>(arg_0.d, -457f, 849f, -950f), func_1(Struct_2(vec4<f32>(arg_1.a.a.x, arg_0.d, arg_1.b.a.x, 1299f), arg_2)).b).c.c, vec4<bool>(-1i <= global2[_wgslsmith_index_u32(arg_1.b.b, 10u)], func_2().x, arg_0.e.x, any(arg_1.c.c.ywz) & (arg_0.e.x & false)), ~75726u > ~(~arg_1.a.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_5(arg_1, arg_1.b.a, func_5(arg_1, vec4<f32>(arg_1.c.d, -397f, 2826f, global3[_wgslsmith_index_u32(u_input.b, 10u)]), arg_1.a).a).a.a.x), arg_1.a.a.x)), func_1(func_1(Struct_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3[_wgslsmith_index_u32(arg_0.b, 10u)], global3[_wgslsmith_index_u32(arg_0.a, 10u)], arg_0.d, -1292f))), arg_1.b.b)).a).c.c.xz);
    global4 = array<vec2<i32>, 16>();
    let var_1 = arg_1;
    let var_2 = arg_1.c;
    global2 = array<i32, 10>();
    return _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(18948u, var_1.b.b, global0.x, arg_2), abs(vec4<u32>(var_1.c.a, arg_1.c.b, u_input.b, arg_0.b)))), vec4<u32>(~(arg_2 >> (1u % 32u)), ~(28456u << (1u % 32u)), _wgslsmith_add_u32(var_2.a, 0u) ^ var_1.b.b, 4294967295u)), vec4<u32>(~min(arg_2, 17768u), ~0u, select(_wgslsmith_add_u32(0u, 1u), select(global0.x, 9021u, var_2.c.x), true), global0.x) >> (min(~vec4<u32>(47855u, 37935u, 3340u, 1u), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(10026u, arg_0.b, var_2.a, 4294967295u), vec4<u32>(global0.x, global0.x, 1u, 114906u)), vec4<u32>(41124u, 1u, 3851u, 5718u) >> (vec4<u32>(43119u, var_2.b, 4294967295u, 20400u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 10>();
    var var_0 = global2[_wgslsmith_index_u32(36783u, 10u)];
    let var_1 = reverseBits(~func_6(Struct_1(global0.x ^ 23589u, 1u, select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), false), global3[_wgslsmith_index_u32(92909u, 10u)], global1[_wgslsmith_index_u32(51373u, 6u)]), func_5(func_1(Struct_2(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 10u)], -1235f, -454f, global3[_wgslsmith_index_u32(u_input.b, 10u)]), 0u)), vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(2759u, 10u)], global3[_wgslsmith_index_u32(36986u, 10u)], global3[_wgslsmith_index_u32(15962u, 10u)]), func_1(Struct_2(vec4<f32>(global3[_wgslsmith_index_u32(global0.x, 10u)], global3[_wgslsmith_index_u32(global0.x, 10u)], global3[_wgslsmith_index_u32(1u, 10u)], global3[_wgslsmith_index_u32(u_input.b, 10u)]), 5301u)).b), ~global0.x | (u_input.b >> (global0.x % 32u))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(342f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-485f, func_1(Struct_2(vec4<f32>(647f, global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(19145u, 10u)], 643f), 77911u)).b.a.x) * 2432f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1422f, -1387f)) + _wgslsmith_f_op_f32(step(1645f, func_5(func_5(Struct_3(Struct_2(vec4<f32>(-2045f, global3[_wgslsmith_index_u32(21228u, 10u)], -315f, -1000f), 17954u), Struct_2(vec4<f32>(global3[_wgslsmith_index_u32(35393u, 10u)], global3[_wgslsmith_index_u32(global0.x, 10u)], -1341f, 506f), 51163u), Struct_1(0u, var_1.x, vec4<bool>(true, false, true, true), 292f, global1[_wgslsmith_index_u32(global0.x, 6u)])), vec4<f32>(-1000f, -824f, 1218f, -1274f), Struct_2(vec4<f32>(global3[_wgslsmith_index_u32(2885u, 10u)], -1374f, -1283f, -255f), u_input.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(var_1.x, 10u)], -1068f, -694f, 117f)), Struct_2(vec4<f32>(1919f, 1000f, global3[_wgslsmith_index_u32(var_1.x, 10u)], global3[_wgslsmith_index_u32(global0.x, 10u)]), global0.x)).c.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1303f + _wgslsmith_f_op_f32(max(692f, 1282f))) * global3[_wgslsmith_index_u32(global0.x ^ reverseBits(1u), 10u)])));
    var var_3 = 3871i;
    var var_4 = Struct_1(firstLeadingBit(1u) << (global0.x % 32u), var_1.x, select(vec4<bool>(true, select(false, true, false) || false, true, !any(vec4<bool>(false, true, true, true))), vec4<bool>(true, !(1u >= u_input.b), true, true), false), _wgslsmith_f_op_f32(min(-1852f, _wgslsmith_f_op_f32(-1231f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x)))))), vec2<bool>(!(abs(global2[_wgslsmith_index_u32(0u, 10u)]) <= abs(global2[_wgslsmith_index_u32(u_input.b, 10u)])), false));
    let var_5 = func_1(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(327f, var_2.x, var_4.c.x)) + _wgslsmith_f_op_f32(-var_2.x)), -2280f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * -694f) + _wgslsmith_f_op_f32(sign(-1111f))), var_4.d), 9113u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-621f + _wgslsmith_f_op_f32(-1740f * _wgslsmith_f_op_f32(f32(-1f) * -443f))), _wgslsmith_f_op_f32(max(110f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 10u)] - var_2.x) * func_5(var_5, var_5.b.a, var_5.a).b.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1839f)), ~vec4<u32>(81007u, ~16325u, var_4.a, 4294967295u), vec4<i32>(33527i, firstLeadingBit(firstTrailingBit(_wgslsmith_sub_i32(u_input.c, global2[_wgslsmith_index_u32(4294967295u, 10u)]))), global2[_wgslsmith_index_u32(var_5.a.b, 10u)], 2147483647i));
}

