struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: f32,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<i32>(2147483647i, -6660i, 1i, 0i), vec4<u32>(4294967295u, 27356u, 18520u, 1u), Struct_1(true, vec3<bool>(false, false, true), -7434i, true), Struct_1(false, vec3<bool>(false, true, false), 48019i, false), 447f), Struct_2(vec4<i32>(52339i, -1i, -15565i, 1i), vec4<u32>(4294967295u, 1u, 31558u, 31930u), Struct_1(false, vec3<bool>(false, false, true), 14937i, false), Struct_1(false, vec3<bool>(false, true, false), 556i, false), -1220f), Struct_2(vec4<i32>(21529i, 15471i, -32332i, 13297i), vec4<u32>(4294967295u, 61572u, 43453u, 1u), Struct_1(true, vec3<bool>(true, false, true), 0i, true), Struct_1(false, vec3<bool>(true, true, false), i32(-2147483648), false), -1000f), Struct_2(vec4<i32>(1i, -29989i, -32451i, -22226i), vec4<u32>(0u, 53621u, 4294967295u, 20803u), Struct_1(false, vec3<bool>(false, false, false), -1i, false), Struct_1(false, vec3<bool>(true, true, true), 2147483647i, true), -954f), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, -36471i, 17241i), vec4<u32>(23683u, 33561u, 90073u, 0u), Struct_1(true, vec3<bool>(false, false, true), 1i, true), Struct_1(false, vec3<bool>(false, false, true), 0i, false), 389f), Struct_2(vec4<i32>(-35207i, 0i, -1i, i32(-2147483648)), vec4<u32>(0u, 30380u, 2102u, 0u), Struct_1(false, vec3<bool>(false, true, true), -57193i, false), Struct_1(false, vec3<bool>(false, true, false), -17223i, true), -1331f), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -44161i), vec4<u32>(84934u, 0u, 4294967295u, 8129u), Struct_1(true, vec3<bool>(false, true, true), 26956i, true), Struct_1(true, vec3<bool>(false, false, true), -63643i, true), 1869f), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), -1648i, 2147483647i), vec4<u32>(69527u, 0u, 0u, 4294967295u), Struct_1(true, vec3<bool>(true, true, true), 0i, false), Struct_1(false, vec3<bool>(false, true, true), i32(-2147483648), false), -322f), Struct_2(vec4<i32>(-55143i, 2147483647i, -1i, 0i), vec4<u32>(4294967295u, 1u, 38326u, 1u), Struct_1(true, vec3<bool>(false, true, false), 1i, false), Struct_1(false, vec3<bool>(false, true, true), -90318i, true), 908f), Struct_2(vec4<i32>(3890i, -1i, 20347i, 42049i), vec4<u32>(43198u, 39441u, 0u, 0u), Struct_1(false, vec3<bool>(true, false, false), 33274i, true), Struct_1(true, vec3<bool>(false, true, true), 2147483647i, true), -927f), Struct_2(vec4<i32>(28594i, -35775i, 28724i, 30902i), vec4<u32>(2162u, 1u, 26073u, 62491u), Struct_1(false, vec3<bool>(true, false, false), 2147483647i, true), Struct_1(true, vec3<bool>(false, true, false), -34728i, true), 2446f), Struct_2(vec4<i32>(-1i, -35132i, 1i, -1i), vec4<u32>(31941u, 4294967295u, 0u, 1u), Struct_1(false, vec3<bool>(false, true, false), 40648i, false), Struct_1(false, vec3<bool>(false, false, true), i32(-2147483648), true), -823f), Struct_2(vec4<i32>(-1i, -46846i, 1i, 1i), vec4<u32>(4294967295u, 1u, 26562u, 4294967295u), Struct_1(true, vec3<bool>(false, false, false), -15172i, false), Struct_1(true, vec3<bool>(true, true, true), i32(-2147483648), false), 118f), Struct_2(vec4<i32>(17567i, 18411i, 45678i, 1i), vec4<u32>(1u, 82296u, 2528u, 4294967295u), Struct_1(false, vec3<bool>(true, false, false), -44403i, true), Struct_1(true, vec3<bool>(true, false, true), -11830i, true), 1265f), Struct_2(vec4<i32>(2147483647i, 1i, 4258i, 2147483647i), vec4<u32>(16094u, 1u, 1u, 46167u), Struct_1(false, vec3<bool>(false, false, true), 2147483647i, true), Struct_1(false, vec3<bool>(false, true, true), 58438i, true), 1310f));

var<private> global2: Struct_1 = Struct_1(false, vec3<bool>(true, true, false), -11864i, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    var var_0 = ~0u;
    var var_1 = _wgslsmith_f_op_f32(min(1421f, _wgslsmith_f_op_f32(703f * 1000f)));
    var var_2 = -u_input.b;
    global2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1036f, _wgslsmith_f_op_f32(step(-169f, -1508f))))) <= 385f, global2.b, reverseBits(arg_1.x), global2.b.x);
    global1 = array<Struct_2, 15>();
    return ~countOneBits(u_input.a.x);
}

fn func_1(arg_0: Struct_2) -> f32 {
    global1 = array<Struct_2, 15>();
    let var_0 = arg_0.e;
    global2 = arg_0.c;
    let var_1 = countOneBits(~arg_0.a.x);
    let var_2 = vec2<u32>(func_2(vec4<u32>(u_input.a.x, max(~u_input.a.x, reverseBits(u_input.a.x)), ~_wgslsmith_mod_u32(4294967295u, u_input.a.x), 1u), -vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, global2.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-33489i, arg_0.a.x, -45311i), vec3<i32>(global2.c, -64131i, var_1))), ~(0i ^ u_input.b)), u_input.a.x);
    return _wgslsmith_f_op_f32(sign(-911f));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<u32>, arg_3: bool) -> vec3<bool> {
    let var_0 = any(!vec4<bool>(arg_0.d.b.x, true, !(arg_0.e >= arg_0.e), true));
    global2 = Struct_1(select(true, true, true), !select(arg_0.c.b, vec3<bool>(!arg_0.c.d, true, any(vec2<bool>(false, arg_0.c.d))), select(vec3<bool>(false, var_0, arg_3), arg_0.d.b, arg_3 | global2.b.x)), select(arg_1, 0i, false), all(global2.b));
    let var_1 = ~_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_2(arg_0.b, vec2<i32>(24449i, -35959i), global2.c), _wgslsmith_mod_u32(arg_0.b.x, arg_2.x)), 20u)] >> (~4294967295u % 32u), _wgslsmith_dot_vec4_i32(select(arg_0.a, arg_0.a, arg_3) ^ select(vec4<i32>(-1i, u_input.b, -10536i, 2147483647i), arg_0.a, vec4<bool>(global2.d, true, true, arg_0.c.d)), ~arg_0.a));
    global0 = array<i32, 20>();
    var var_2 = arg_0;
    return var_2.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~0u, 0u, _wgslsmith_f_op_f32(func_1(Struct_2(vec4<i32>(u_input.b, 2147483647i, 0i, 47820i), vec4<u32>(23454u, 4294967295u, u_input.a.x, u_input.a.x), Struct_1(true, global2.b, -22835i, true), Struct_1(global2.d, global2.b, global0[_wgslsmith_index_u32(0u, 20u)], true), 1217f))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1567f))))) >> (firstTrailingBit(0u) % 32u);
    let var_1 = Struct_1(false, func_3(global1[_wgslsmith_index_u32(u_input.a.x ^ 1u, 15u)], global2.c, ~u_input.a.wx, false), _wgslsmith_dot_vec4_i32(-abs(max(vec4<i32>(-1i, global2.c, 2147483647i, -54137i), vec4<i32>(global2.c, -1i, 1i, global0[_wgslsmith_index_u32(71755u, 20u)]))), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(var_0, 20u)], u_input.b, global2.c), firstTrailingBit(~vec4<i32>(global2.c, 5449i, -1i, 1i)))), true);
    var var_2 = Struct_1(true, func_3(Struct_2(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(0i, -38185i, u_input.b, global2.c)), ~vec4<i32>(43950i, u_input.b, var_1.c, u_input.b), vec4<i32>(-15083i, 2147483647i, global0[_wgslsmith_index_u32(20700u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]) << (vec4<u32>(97720u, u_input.a.x, var_0, 4294967295u) % vec4<u32>(32u))), select(~vec4<u32>(1u, 327u, var_0, 1u), u_input.a, vec4<bool>(true, true, true, true)), Struct_1(global2.d, !var_1.b, var_1.c & -39769i, false), Struct_1(!global2.d, !vec3<bool>(global2.a, false, true), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(var_0, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)], u_input.b), vec3<i32>(-2147483647i, var_1.c, u_input.b)), var_1.a && global2.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-549f, 1122f, global2.b.x)), _wgslsmith_f_op_f32(select(1366f, 115f, false))))), global2.c, ~vec2<u32>(~var_0, 52335u), var_1.a), -max(~global0[_wgslsmith_index_u32(~14704u, 20u)], reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 5908u), 20u)])), -7286i < u_input.b);
    let var_3 = Struct_2(vec4<i32>(firstTrailingBit(_wgslsmith_div_i32(u_input.b, ~global0[_wgslsmith_index_u32(59844u, 20u)])), -2147483647i, ~var_1.c, _wgslsmith_div_i32(~var_2.c, -26437i)), firstTrailingBit(_wgslsmith_add_vec4_u32(firstTrailingBit(abs(u_input.a)), max(~vec4<u32>(4294967295u, var_0, 1u, 50237u), u_input.a))), Struct_1(true, select(vec3<bool>(any(vec4<bool>(false, var_1.b.x, false, var_2.d)), var_1.b.x, var_0 > 34334u), vec3<bool>(var_2.d, var_2.a, !var_1.b.x), var_2.a), var_2.c, var_1.b.x), Struct_1(false, var_1.b, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.a.x, 7277u), abs(u_input.a.x)), 20u)], !select(true, false, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-728f, 318f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1152f))))));
    var var_4 = ~var_3.d.c;
    global1 = array<Struct_2, 15>();
    let var_5 = reverseBits(select(u_input.b, _wgslsmith_div_i32(var_1.c, 1i), var_1.d));
    global1 = array<Struct_2, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(~firstLeadingBit(u_input.a.x), 1u), countOneBits(countOneBits(var_3.a)) >> ((u_input.a ^ vec4<u32>(50460u, ~10095u, firstLeadingBit(4294967295u), u_input.a.x)) % vec4<u32>(32u)), select(~u_input.a.xz, firstLeadingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.b.x, var_3.b.x), var_3.b.xz)), select(vec2<bool>(true, true), var_3.d.b.yy, vec2<bool>(any(vec4<bool>(true, var_2.d, global2.a, true)), !var_1.a))));
}

