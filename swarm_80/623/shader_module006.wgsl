struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(-170f, -131f, 919f, 1347f, -1000f, 834f, 895f, 984f, -1477f, -851f, -777f, 685f, -299f, -1438f, 1000f, 670f, 579f, -1000f, -597f, 532f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec2<i32>(-58782i, 10399i);
    var var_1 = Struct_1(!vec4<bool>(true, false, true || any(vec2<bool>(true, true)), true), _wgslsmith_clamp_u32(14076u, u_input.d, countOneBits(~(~42766u))), vec4<i32>(reverseBits(firstLeadingBit(-8002i)), max(0i, 1i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_0.x, u_input.a.x, -41786i), u_input.a), vec4<i32>(abs(var_0.x), _wgslsmith_mult_i32(1i, 2147483647i), -37849i, var_0.x << (0u % 32u))), u_input.b.x), ~(~reverseBits(~vec4<u32>(79090u, 1u, u_input.d, u_input.c))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 20u)] - 1119f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 20u)]), global0[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 20u)] * 164f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-374f, -416f, global0[_wgslsmith_index_u32(u_input.c, 20u)], global0[_wgslsmith_index_u32(5722u, 20u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 20u)], 501f, -1000f, global0[_wgslsmith_index_u32(112908u, 20u)]) - vec4<f32>(-633f, global0[_wgslsmith_index_u32(4294967295u, 20u)], 323f, global0[_wgslsmith_index_u32(u_input.c, 20u)]))))))));
    var var_2 = Struct_2(Struct_1(vec4<bool>(!(!var_1.a.x), false, all(var_1.a.xz) | (var_1.b > var_1.d.x), firstTrailingBit(var_0.x) < var_0.x), var_1.d.x, min(vec4<i32>(~u_input.a.x, -2147483647i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-11797i, var_0.x, 7947i, u_input.b.x)), countOneBits(-18469i)), u_input.a), abs(var_1.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1.e * vec4<f32>(global0[_wgslsmith_index_u32(10210u, 20u)], -418f, var_1.e.x, var_1.e.x)), vec4<f32>(global0[_wgslsmith_index_u32(24066u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], 1331f, -605f), !var_1.a)), vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, 19623u, 62448u), var_1.d.zyy), 20u)], var_1.e.x, 1398f, global0[_wgslsmith_index_u32(24374u, 20u)]))));
    let var_3 = Struct_2(var_2.a);
    let var_4 = var_3.a;
    return vec3<bool>(!any(select(var_3.a.a.zww, vec3<bool>(true, var_2.a.a.x, true), var_3.a.a.x & var_3.a.a.x)), var_4.a.x, any(vec2<bool>(-556f >= _wgslsmith_f_op_f32(max(-491f, var_3.a.e.x)), ~(-2147483647i) == var_3.a.c.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = -u_input.a;
    var_0 = firstTrailingBit(_wgslsmith_mult_vec4_i32(select(select(u_input.a, firstTrailingBit(u_input.a), true), vec4<i32>(var_0.x, var_0.x, -20486i, var_0.x) >> (vec4<u32>(1u, 20371u, 134236u, u_input.d) % vec4<u32>(32u)), all(func_3())), _wgslsmith_mod_vec4_i32(u_input.a, select(u_input.a, abs(vec4<i32>(u_input.b.x, 1i, u_input.a.x, u_input.a.x)), any(vec3<bool>(false, true, true))))));
    var_0 = vec4<i32>(-13813i, _wgslsmith_dot_vec3_i32(u_input.a.zyw >> ((select(vec3<u32>(7003u, u_input.c, 9810u), vec3<u32>(u_input.c, 0u, 34376u), true) ^ ~vec3<u32>(1u, 0u, 0u)) % vec3<u32>(32u)), min(vec3<i32>(_wgslsmith_mult_i32(1i, 61771i), u_input.b.x, _wgslsmith_div_i32(2147483647i, u_input.a.x)), vec3<i32>(-20927i, var_0.x, var_0.x) & min(vec3<i32>(var_0.x, -1i, var_0.x), vec3<i32>(var_0.x, u_input.b.x, var_0.x)))), _wgslsmith_div_i32(firstLeadingBit(-36221i), 539i), max(var_0.x, u_input.b.x));
    var var_1 = 1000f;
    let var_2 = Struct_2(Struct_1(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true))), vec4<bool>(select(true, true, true), 4294967295u != u_input.d, false, true)), u_input.d, vec4<i32>(~(1i << (u_input.c % 32u)), ~(~(-18921i)), -var_0.x, _wgslsmith_add_i32(i32(-1i) * -15605i, var_0.x)), ~(vec4<u32>(u_input.d, u_input.c, 59714u, u_input.c) ^ select(vec4<u32>(u_input.c, u_input.d, 0u, 4294967295u), vec4<u32>(15942u, 1u, 1u, u_input.c), vec4<bool>(false, false, true, true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1498f, -171f, global0[_wgslsmith_index_u32(u_input.c, 20u)], global0[_wgslsmith_index_u32(27929u, 20u)]), vec4<f32>(global0[_wgslsmith_index_u32(0u, 20u)], 1419f, 234f, 1391f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 20u)], -137f, 103f, -1000f))))))));
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_0.e.x;
    var_0 = -2258f;
    var var_1 = min(~arg_1.d.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~46848u, 1u, 1u), reverseBits(u_input.c)));
    let var_2 = -((-_wgslsmith_mod_i32(3769i, arg_0.c.x) ^ -23494i) << (13591u % 32u));
    var var_3 = arg_1.c.yy;
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> u32 {
    let var_0 = func_4(Struct_1(vec4<bool>(func_4(func_4(arg_2.a, Struct_1(arg_1.a, u_input.c, vec4<i32>(-30770i, arg_2.a.c.x, arg_0.a.c.x, 0i), vec4<u32>(arg_1.b, 4294967295u, arg_1.b, u_input.d), vec4<f32>(arg_3, 626f, 487f, arg_1.e.x)), arg_2), arg_0.a, arg_2).a.x, arg_1.a.x, !arg_0.a.a.x, func_3().x), arg_2.a.d.x, vec4<i32>(2147483647i, _wgslsmith_mod_i32(abs(-25028i), _wgslsmith_div_i32(arg_2.a.c.x, arg_1.c.x)), _wgslsmith_add_i32(u_input.a.x, -19127i) << (4294967295u % 32u), firstLeadingBit(min(0i, 15851i))), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(26314u, arg_2.a.b, 2518u, 33666u), countOneBits(arg_0.a.d)), vec4<u32>(arg_2.a.d.x, ~50740u, reverseBits(arg_1.d.x), arg_0.a.b | 0u)), arg_2.a.e), Struct_1(func_4(Struct_1(vec4<bool>(false, arg_1.a.x, arg_0.a.a.x, false), 22453u, -vec4<i32>(u_input.b.x, u_input.b.x, arg_2.a.c.x, 778i), select(vec4<u32>(0u, 0u, 36877u, 4294967295u), arg_2.a.d, arg_2.a.a.x), vec4<f32>(arg_2.a.e.x, 1800f, 210f, -229f)), Struct_1(!arg_0.a.a, arg_1.b, arg_1.c, ~arg_0.a.d, arg_1.e), Struct_2(arg_0.a)).a, 50572u, vec4<i32>(arg_0.a.c.x, arg_1.c.x, _wgslsmith_mult_i32(func_4(arg_1, arg_1, Struct_2(Struct_1(vec4<bool>(arg_0.a.a.x, arg_2.a.a.x, arg_0.a.a.x, arg_0.a.a.x), arg_1.b, arg_2.a.c, arg_1.d, arg_2.a.e))).c.x, 1i), -14115i), select(vec4<u32>(1u, u_input.d, ~u_input.d, 55633u), vec4<u32>(func_2().b, 1u, ~38700u, ~arg_1.b), true), vec4<f32>(arg_3, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(478f, arg_3)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~u_input.c), 20u)])), Struct_2(arg_1)).e.x;
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    let var_1 = firstLeadingBit(-1i);
    let var_2 = ~arg_2.a.c;
    return abs(arg_0.a.d.x);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(vec4<bool>(all(vec2<bool>(true, true)), !all(vec4<bool>(false, true, true, false)), true, false), func_5(Struct_2(Struct_1(vec4<bool>(true, false, true, true), 3455u, u_input.a, vec4<u32>(14398u, u_input.c, u_input.d, 71357u), vec4<f32>(-174f, 176f, -1491f, global0[_wgslsmith_index_u32(1u, 20u)]))), func_4(func_2(), Struct_1(vec4<bool>(false, false, true, false), u_input.c, vec4<i32>(-1i, 375i, -2147483647i, u_input.b.x), vec4<u32>(u_input.c, 22462u, u_input.c, u_input.c), vec4<f32>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], 226f, global0[_wgslsmith_index_u32(1u, 20u)])), Struct_2(Struct_1(vec4<bool>(true, true, true, false), u_input.d, u_input.a, vec4<u32>(38253u, u_input.d, u_input.c, 12973u), vec4<f32>(-654f, 426f, global0[_wgslsmith_index_u32(u_input.d, 20u)], -1373f)))), Struct_2(func_2()), -175f), _wgslsmith_mult_vec4_i32(~(-u_input.a), ~abs(u_input.a)), ~abs(~vec4<u32>(43905u, u_input.d, u_input.c, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1296f, -1081f, global0[_wgslsmith_index_u32(u_input.c, 20u)], -1248f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 20u)], global0[_wgslsmith_index_u32(u_input.c, 20u)], global0[_wgslsmith_index_u32(u_input.d, 20u)], -363f), true))) + vec4<f32>(-771f, -1328f, _wgslsmith_div_f32(1229f, global0[_wgslsmith_index_u32(u_input.c, 20u)]), 933f))));
    return Struct_2(Struct_1(vec4<bool>(true, !var_0.a.a.x & var_0.a.a.x, !var_0.a.a.x, select(any(vec2<bool>(false, var_0.a.a.x)), false, var_0.a.a.x)), countOneBits(65790u), firstTrailingBit(vec4<i32>(u_input.b.x, var_0.a.c.x, u_input.b.x, var_0.a.c.x) >> (vec4<u32>(u_input.c, u_input.c, 37781u, var_0.a.d.x) % vec4<u32>(32u))) & vec4<i32>(u_input.b.x << (var_0.a.b % 32u), var_0.a.c.x, max(-11626i, 2147483647i), 0i & u_input.a.x), vec4<u32>(_wgslsmith_add_u32(~99751u, ~4294967295u), 23790u, abs(4294967295u), 0u), var_0.a.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<f32, 20>();
    let var_1 = Struct_2(var_0.a);
    global0 = array<f32, 20>();
    var var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.d.zz, func_1().a.c.wxy, _wgslsmith_mult_i32(min(var_0.a.c.x, ~(-u_input.a.x)), var_1.a.c.x), global0[_wgslsmith_index_u32(~func_5(func_1(), Struct_1(var_1.a.a, var_1.a.d.x, ~vec4<i32>(u_input.a.x, -21623i, -38277i, 24968i), vec4<u32>(0u, 49176u, var_1.a.d.x, 51668u), _wgslsmith_f_op_vec4_f32(-var_0.a.e)), Struct_2(Struct_1(var_2.a, var_1.a.b, var_1.a.c, vec4<u32>(4294967295u, var_0.a.d.x, u_input.d, var_2.d.x), var_0.a.e)), _wgslsmith_f_op_f32(func_2().e.x - _wgslsmith_f_op_f32(abs(var_2.e.x)))), 20u)]);
}

