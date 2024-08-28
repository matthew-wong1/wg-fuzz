struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1638i, 42807i), false, vec4<i32>(33403i, 47430i, 2147483647i, 0i), vec4<u32>(38987u, 1u, 4294967295u, 4294967295u)), Struct_1(vec4<i32>(-13645i, -1i, -1034i, 1i), false, vec4<i32>(-13875i, -20092i, 6469i, -1i), vec4<u32>(104676u, 4294967295u, 4294967295u, 10482u)), Struct_1(vec4<i32>(-82656i, -29214i, -24019i, -9740i), false, vec4<i32>(51937i, 1i, 4464i, 1i), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u)), Struct_1(vec4<i32>(-2184i, i32(-2147483648), i32(-2147483648), 46722i), true, vec4<i32>(19637i, 1i, 1i, -24628i), vec4<u32>(41160u, 1u, 1u, 18333u)), Struct_1(vec4<i32>(-29941i, 21398i, 14706i, 1i), false, vec4<i32>(28981i, 0i, -18671i, 2147483647i), vec4<u32>(1u, 34293u, 4294967295u, 31797u)), Struct_1(vec4<i32>(1i, -18034i, -1i, 0i), false, vec4<i32>(i32(-2147483648), -28339i, 6220i, 0i), vec4<u32>(0u, 16386u, 0u, 4294967295u)), Struct_1(vec4<i32>(22823i, -1i, i32(-2147483648), 1i), false, vec4<i32>(i32(-2147483648), -1i, -1i, -23458i), vec4<u32>(1u, 59621u, 0u, 0u)), Struct_1(vec4<i32>(2147483647i, 1i, 11314i, 3545i), true, vec4<i32>(1i, -62967i, -53436i, 1i), vec4<u32>(0u, 7695u, 20384u, 32939u)), Struct_1(vec4<i32>(-36222i, 2147483647i, -18201i, 2325i), false, vec4<i32>(2147483647i, -1i, 2147483647i, -16818i), vec4<u32>(1u, 0u, 0u, 22381u)), Struct_1(vec4<i32>(38906i, i32(-2147483648), 25148i, 2150i), true, vec4<i32>(756i, -1i, 5471i, 60983i), vec4<u32>(251u, 141498u, 0u, 13718u)), Struct_1(vec4<i32>(0i, -1i, 11920i, 0i), true, vec4<i32>(5102i, 2147483647i, 1i, 6595i), vec4<u32>(12949u, 0u, 75066u, 6579u)), Struct_1(vec4<i32>(13043i, 44331i, 1i, -12093i), true, vec4<i32>(2147483647i, 1i, 14595i, 1i), vec4<u32>(0u, 0u, 34363u, 4294967295u)), Struct_1(vec4<i32>(0i, 31140i, 2147483647i, -42375i), false, vec4<i32>(4425i, -1i, 1i, -17835i), vec4<u32>(2816u, 477u, 0u, 1u)), Struct_1(vec4<i32>(29840i, 8529i, 1i, i32(-2147483648)), false, vec4<i32>(1845i, 0i, 0i, i32(-2147483648)), vec4<u32>(36663u, 60974u, 104903u, 28231u)), Struct_1(vec4<i32>(0i, -41125i, 37668i, 9442i), false, vec4<i32>(1i, i32(-2147483648), 51224i, -11650i), vec4<u32>(1u, 81672u, 27897u, 36443u)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 1i, i32(-2147483648)), true, vec4<i32>(i32(-2147483648), 7024i, -8612i, -41919i), vec4<u32>(60040u, 46364u, 0u, 0u)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 1i, 22053i), true, vec4<i32>(-39346i, 12048i, 1i, 18839i), vec4<u32>(10428u, 1u, 23626u, 0u)), Struct_1(vec4<i32>(0i, -10053i, 39982i, 0i), false, vec4<i32>(-33949i, 49913i, 16597i, 1i), vec4<u32>(0u, 27648u, 4294967295u, 24324u)), Struct_1(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 0i), true, vec4<i32>(i32(-2147483648), -12058i, -34465i, 1116i), vec4<u32>(65057u, 0u, 0u, 4294967295u)), Struct_1(vec4<i32>(967i, i32(-2147483648), i32(-2147483648), 29402i), false, vec4<i32>(97113i, 4584i, 13109i, -10836i), vec4<u32>(89320u, 9860u, 56795u, 50808u)), Struct_1(vec4<i32>(-50197i, -31011i, 2147483647i, 26939i), true, vec4<i32>(i32(-2147483648), 2277i, 2147483647i, 7791i), vec4<u32>(4294967295u, 3751u, 1u, 1u)), Struct_1(vec4<i32>(-1i, 1i, 0i, 25990i), true, vec4<i32>(48701i, 1i, 70128i, -5107i), vec4<u32>(3664u, 33846u, 0u, 0u)), Struct_1(vec4<i32>(-1i, 1i, -1i, 3214i), true, vec4<i32>(0i, -1i, i32(-2147483648), 1i), vec4<u32>(1u, 0u, 20870u, 12899u)), Struct_1(vec4<i32>(-21598i, 1i, -51717i, 2147483647i), false, vec4<i32>(23612i, 34800i, -14833i, -1i), vec4<u32>(10444u, 9951u, 1628u, 25914u)), Struct_1(vec4<i32>(-30540i, -57830i, 28787i, -57621i), true, vec4<i32>(-31503i, i32(-2147483648), 227i, 2147483647i), vec4<u32>(0u, 1u, 2300u, 1u)), Struct_1(vec4<i32>(1i, -8917i, -1i, -7819i), false, vec4<i32>(-1i, 29996i, 17345i, i32(-2147483648)), vec4<u32>(81187u, 4294967295u, 14016u, 11809u)));

var<private> global2: vec4<f32> = vec4<f32>(-1115f, -1179f, -2702f, -1009f);

var<private> global3: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = vec3<i32>(min(arg_2.a.a.x, u_input.b.x), _wgslsmith_sub_i32(1i, 2147483647i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(arg_2.a.c.zww, vec3<i32>(arg_0.x, 31254i, arg_0.x) | vec3<i32>(-1i, arg_0.x, arg_2.c.x)), -arg_1.x, _wgslsmith_add_i32(_wgslsmith_add_i32(arg_2.c.x, -66289i), -44694i)) ^ u_input.c);
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), select(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_2.a.d.x), arg_2.a.d.wy), arg_2.a.d.xy, global0.x)) << (max(countOneBits(countOneBits(u_input.a)), arg_2.b.d.x) % 32u), 26u)], Struct_1(~_wgslsmith_div_vec4_i32(~vec4<i32>(-23347i, var_0.x, 6925i, arg_1.x), vec4<i32>(var_0.x, -1i, u_input.c, u_input.c)), any(vec4<bool>(arg_2.a.b, all(vec4<bool>(arg_2.b.b, arg_2.b.b, arg_2.b.b, false)), false, global0.x)), abs(u_input.b << (_wgslsmith_mult_vec4_u32(arg_2.a.d, vec4<u32>(0u, 1u, u_input.a, 0u)) % vec4<u32>(32u))), ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(arg_2.b.d, arg_2.a.d), firstLeadingBit(vec4<u32>(44212u, u_input.a, u_input.a, 29174u)))), select(~vec2<i32>(u_input.c, -2147483647i), max(vec2<i32>(u_input.b.x, arg_2.a.a.x) | arg_2.a.a.wz, arg_2.a.a.yw), global0.yy) & -var_0.yy);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -446f);
    let var_3 = _wgslsmith_sub_u32(4250u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(24827u, u_input.a, u_input.a, 40419u), vec4<u32>(7014u, 1618u, 1u, var_1.a.d.x))));
    global1 = array<Struct_1, 26>();
    return select(select(select(select(!vec4<bool>(arg_2.a.b, true, arg_2.b.b, var_1.a.b), vec4<bool>(var_1.b.b, false, true, true), vec4<bool>(global0.x, true, true, arg_2.b.b)), select(select(vec4<bool>(arg_2.b.b, false, true, var_1.a.b), vec4<bool>(arg_2.a.b, var_1.a.b, var_1.b.b, var_1.a.b), vec4<bool>(var_1.a.b, global0.x, false, false)), !vec4<bool>(false, true, false, var_1.a.b), vec4<bool>(true, false, true, arg_2.a.b)), true), vec4<bool>(arg_2.a.b, all(select(vec2<bool>(false, arg_2.a.b), vec2<bool>(var_1.a.b, global0.x), true)), true, var_1.b.b), true), vec4<bool>(var_1.b.b, ~var_3 > (~49691u >> (firstLeadingBit(11549u) % 32u)), !(arg_2.a.b & (global2.x < global3.x)), true), select(vec4<bool>(true, global0.x, true | !var_1.a.b, var_1.b.b), !select(!vec4<bool>(true, false, var_1.b.b, arg_2.a.b), !vec4<bool>(var_1.b.b, true, var_1.b.b, false), vec4<bool>(false, true, true, false)), select(select(select(vec4<bool>(var_1.a.b, false, false, true), vec4<bool>(true, global0.x, var_1.a.b, arg_2.a.b), vec4<bool>(arg_2.b.b, var_1.a.b, false, true)), !vec4<bool>(global0.x, arg_2.b.b, false, true), !vec4<bool>(true, true, false, arg_2.a.b)), select(select(vec4<bool>(global0.x, false, var_1.b.b, var_1.b.b), vec4<bool>(false, global0.x, true, true), false), !vec4<bool>(arg_2.b.b, true, global0.x, global0.x), all(vec2<bool>(false, true))), all(select(vec4<bool>(false, arg_2.b.b, false, true), vec4<bool>(true, true, arg_2.b.b, global0.x), true)))));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(~u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) >= _wgslsmith_f_op_f32(-global3.x), u_input.b, ~vec4<u32>(4294967295u | u_input.a, 4294967295u, u_input.a, ~0u)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(19315u, u_input.a), max(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 8304u) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))), 26u)], ~(-u_input.b.xy | u_input.b.xw));
    let var_1 = !(!select(func_3(vec2<i32>(-22105i, -2147483647i), vec4<i32>(var_0.a.c.x, -2147483647i, 1i, var_0.c.x), Struct_2(Struct_1(u_input.b, global0.x, u_input.b, vec4<u32>(var_0.a.d.x, 75562u, 21194u, var_0.a.d.x)), Struct_1(u_input.b, true, var_0.a.a, var_0.b.d), vec2<i32>(u_input.c, u_input.c))), vec4<bool>(var_0.c.x < u_input.c, all(global0.yyx), var_0.b.c.x >= 13369i, var_0.a.b && true), !var_0.a.b));
    var var_2 = Struct_2(Struct_1(-u_input.b, !(!any(vec2<bool>(false, false))), -max(u_input.b, _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(1i, var_0.b.a.x, -1i, u_input.c))), var_0.a.d << (var_0.a.d % vec4<u32>(32u))), Struct_1(vec4<i32>(u_input.c, _wgslsmith_mod_i32(u_input.c, -8701i), -var_0.a.c.x << (_wgslsmith_mult_u32(1u, 42103u) % 32u), firstLeadingBit(~(-75682i))), (_wgslsmith_clamp_u32(1u, var_0.a.d.x, u_input.a) > ~var_0.a.d.x) != any(var_1), _wgslsmith_div_vec4_i32(-abs(var_0.b.c), var_0.a.a & u_input.b), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_0.a.d.x, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.b.d.x, u_input.a, u_input.a), vec4<u32>(0u, 4294967295u, 14830u, u_input.a))))), min(vec2<i32>(_wgslsmith_div_i32(-1i, u_input.c) ^ -1306i, reverseBits(-u_input.b.x)), u_input.b.zw << (vec2<u32>(reverseBits(3942u), var_0.b.d.x) % vec2<u32>(32u))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.x, _wgslsmith_div_f32(global3.x, global3.x), global3.x))))));
    var var_3 = vec2<bool>(global0.x, var_0.a.b);
    return !select(!var_1, !vec4<bool>(true, false, true, any(vec4<bool>(false, true, true, var_3.x))), all(vec4<bool>(false, all(var_1.zw), var_2.b.b, global0.x)));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    global0 = !select(!(!vec4<bool>(global0.x, false, true, global0.x)), select(select(select(vec4<bool>(global0.x, true, arg_0.b, false), vec4<bool>(arg_0.b, global0.x, arg_0.b, true), vec4<bool>(global0.x, global0.x, true, true)), select(vec4<bool>(true, arg_0.b, true, arg_0.b), vec4<bool>(arg_0.b, global0.x, arg_0.b, global0.x), false), select(vec4<bool>(false, arg_0.b, global0.x, false), vec4<bool>(arg_0.b, true, true, global0.x), vec4<bool>(global0.x, false, true, true))), select(select(vec4<bool>(arg_0.b, false, global0.x, false), vec4<bool>(false, arg_0.b, true, global0.x), true), vec4<bool>(false, arg_0.b, arg_0.b, false), func_2()), func_2().x), select(vec4<bool>(19145u <= u_input.a, false || arg_0.b, any(global0.xx), true), vec4<bool>(true, true, !global0.x, true), func_3(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a.x, u_input.c), vec2<i32>(0i, arg_0.c.x)), vec4<i32>(u_input.c, arg_0.a.x, 1i, arg_0.a.x), Struct_2(arg_0, global1[_wgslsmith_index_u32(u_input.a, 26u)], u_input.b.zx))));
    var var_0 = !vec4<bool>(global3.x >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1711f)))), !(global3.x != _wgslsmith_f_op_f32(global2.x + global3.x)), true, !(!global0.x | (global0.x | global0.x)));
    let var_1 = !(!(select(false, any(vec3<bool>(arg_0.b, true, true)), func_3(vec2<i32>(543i, arg_0.c.x), arg_0.c, Struct_2(global1[_wgslsmith_index_u32(0u, 26u)], Struct_1(arg_0.c, false, vec4<i32>(-1i, arg_0.a.x, 2147483647i, -23825i), arg_0.d), vec2<i32>(1i, -1i))).x) && !arg_0.b));
    var var_2 = arg_0.d;
    var var_3 = !select(!vec2<bool>(!arg_0.b, true), vec2<bool>(arg_0.b, true), !vec2<bool>(arg_0.b, false));
    return _wgslsmith_f_op_vec3_f32(global2.yxx + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.yxw * _wgslsmith_f_op_vec3_f32(global2.zzx * global2.zzz)) - _wgslsmith_f_op_vec3_f32(select(global2.xzy, global2.wwx, vec3<bool>(var_1, var_1, var_1)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global3.x, global2.x), global2.yww), _wgslsmith_f_op_vec3_f32(vec3<f32>(-471f, 274f, global3.x) * vec3<f32>(global3.x, -741f, global3.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(func_1(global1[_wgslsmith_index_u32(u_input.a, 26u)]));
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1060f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(global3.x - 382f))), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.x + -1000f))))));
    var var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(19353u, ~u_input.a), vec2<u32>(_wgslsmith_mult_u32(46551u, u_input.a) ^ ~4294967295u, _wgslsmith_clamp_u32(u_input.a << (0u % 32u), ~4294967295u, u_input.a >> (1u % 32u))));
    var var_1 = ~vec2<u32>(28958u, 32083u);
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-202f, _wgslsmith_f_op_f32(floor(global3.x)), -1419f, _wgslsmith_f_op_f32(-global3.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, global2.x, -106f, global2.x))) + vec4<f32>(637f, 1265f, global2.x, -1194f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.c) >> (abs(24573u) % 32u), ~((_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 4372i, 46296i, -2147483647i), u_input.b, u_input.b) | -vec4<i32>(1i, -2147483647i, 1i, 0i)) ^ (_wgslsmith_mod_vec4_i32(u_input.b, u_input.b) & ~u_input.b)));
}

