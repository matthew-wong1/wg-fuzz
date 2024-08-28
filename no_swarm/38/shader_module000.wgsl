struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
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

var<private> global0: array<f32, 22> = array<f32, 22>(831f, -1803f, 501f, -312f, -509f, 583f, 1038f, -464f, 744f, 410f, -1372f, -109f, 1523f, 1073f, -2171f, 2754f, -476f, -1074f, 529f, 507f, -396f, -1359f);

var<private> global1: Struct_2 = Struct_2(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(10358u, 1u, 4376u), vec2<bool>(false, false));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(20331u, vec4<i32>(i32(-2147483648), -18125i, -54i, -12302i), vec2<f32>(588f, -833f), 4294967295u), Struct_1(1u, vec4<i32>(1i, -41753i, 1i, 2147483647i), vec2<f32>(768f, -794f), 1u), Struct_1(4294967295u, vec4<i32>(1i, i32(-2147483648), 2147483647i, 1i), vec2<f32>(125f, -791f), 1u), Struct_1(4294967295u, vec4<i32>(2147483647i, 2147483647i, -1i, -1i), vec2<f32>(1325f, 281f), 21737u), Struct_1(1u, vec4<i32>(-55950i, -1i, 2147483647i, 2189i), vec2<f32>(-407f, -754f), 1u), Struct_1(5683u, vec4<i32>(13343i, i32(-2147483648), 9099i, 2147483647i), vec2<f32>(-337f, 791f), 4294967295u), Struct_1(4294967295u, vec4<i32>(2147483647i, 50239i, 2147483647i, 2147483647i), vec2<f32>(-128f, -540f), 65243u), Struct_1(4294967295u, vec4<i32>(6677i, i32(-2147483648), i32(-2147483648), 32030i), vec2<f32>(-253f, -1589f), 4294967295u), Struct_1(1u, vec4<i32>(0i, 37044i, -32165i, 0i), vec2<f32>(454f, -354f), 0u), Struct_1(0u, vec4<i32>(11406i, 2147483647i, -174i, -34011i), vec2<f32>(-821f, -244f), 4294967295u), Struct_1(24376u, vec4<i32>(0i, -56089i, -49644i, 2008i), vec2<f32>(-1486f, 1268f), 46395u), Struct_1(11681u, vec4<i32>(0i, 26360i, -23915i, 1i), vec2<f32>(-1236f, 1000f), 3340u), Struct_1(66555u, vec4<i32>(5584i, -1i, 6830i, i32(-2147483648)), vec2<f32>(-1222f, 153f), 51942u), Struct_1(27259u, vec4<i32>(-1i, 0i, 24865i, -1i), vec2<f32>(-227f, 1000f), 0u), Struct_1(56340u, vec4<i32>(1i, 13681i, 60401i, -12643i), vec2<f32>(1254f, -116f), 21191u), Struct_1(4294967295u, vec4<i32>(-1i, 6616i, -1i, -2554i), vec2<f32>(-1000f, 361f), 15106u), Struct_1(4294967295u, vec4<i32>(1i, i32(-2147483648), -43906i, 2147483647i), vec2<f32>(-577f, 1090f), 36508u), Struct_1(1u, vec4<i32>(45946i, 0i, 44921i, 2610i), vec2<f32>(-1469f, 1240f), 4294967295u), Struct_1(4294967295u, vec4<i32>(-1i, 535i, 21189i, 34159i), vec2<f32>(900f, -784f), 6153u), Struct_1(1u, vec4<i32>(49620i, 26008i, 0i, 0i), vec2<f32>(253f, -1117f), 29786u), Struct_1(4294967295u, vec4<i32>(21353i, 2147483647i, 16279i, 2147483647i), vec2<f32>(1131f, -117f), 4294967295u), Struct_1(16526u, vec4<i32>(2147483647i, -1i, 21142i, 0i), vec2<f32>(231f, 164f), 109665u), Struct_1(45133u, vec4<i32>(1i, -8008i, 2147483647i, -1i), vec2<f32>(-1160f, 1064f), 9053u));

var<private> global3: u32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(select(abs(global1.a.x), (~21588u >> (0u % 32u)) | firstLeadingBit(global1.b.x), arg_0.c.x) | arg_0.a.x, 23u)];
    global2 = array<Struct_1, 23>();
    let var_1 = global2[_wgslsmith_index_u32(var_0.a, 23u)];
    global0 = array<f32, 22>();
    global2 = array<Struct_1, 23>();
    return 0u;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -821f) + global0[_wgslsmith_index_u32(~(~1u), 22u)]);
    return vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(countOneBits(arg_1.x) << (u_input.e % 32u), 22u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~arg_1.x, 22u)]));
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(u_input.d, u_input.e), 4294967295u << ((u_input.e >> (4294967295u % 32u)) % 32u), global1.a.x, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(59881u), select(3716u, 4294967295u, true), 88902u, 1u), ~vec4<u32>(u_input.e, 37067u, u_input.e, 86443u), vec4<u32>(1834u, u_input.e, 37678u, 35611u) >> (vec4<u32>(1u, 0u, global1.a.x, u_input.d) % vec4<u32>(32u)))), select(~vec4<i32>(1i << (u_input.e % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.b.x, -30610i), vec4<i32>(11213i, -25628i, -7617i, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, -1i, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.b.x, u_input.c)), -38679i), vec4<i32>(~_wgslsmith_div_i32(u_input.b.x, 0i), -_wgslsmith_mod_i32(u_input.c, u_input.c), u_input.c, ~28620i), global1.c.x), _wgslsmith_f_op_vec2_f32(func_4(vec4<i32>(u_input.c, -31107i, firstTrailingBit(u_input.c), u_input.b.x & 1i), select(vec3<u32>(func_3(Struct_2(vec3<u32>(1u, 11866u, global1.b.x), vec3<u32>(4294967295u, 19149u, global1.b.x), vec2<bool>(global1.c.x, global1.c.x)), 1599f), u_input.d, u_input.a.x), ~_wgslsmith_sub_vec3_u32(global1.b, global1.b), !(!vec3<bool>(global1.c.x, true, false))))), _wgslsmith_dot_vec4_u32(vec4<u32>(max(reverseBits(65968u), global1.a.x << (15626u % 32u)), _wgslsmith_dot_vec2_u32(~global1.a.xx, _wgslsmith_div_vec2_u32(vec2<u32>(global1.b.x, u_input.e), vec2<u32>(58404u, global1.b.x))), _wgslsmith_clamp_u32(abs(0u), _wgslsmith_clamp_u32(global1.a.x, global1.a.x, global1.b.x), _wgslsmith_mod_u32(0u, 3030u)), 11601u), min(~(~vec4<u32>(61500u, global1.a.x, global1.b.x, global1.b.x)), vec4<u32>(~global1.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.d), ~40228u, _wgslsmith_div_u32(14753u, 4294967295u)))));
    var var_1 = abs(select(var_0.b.ywx, vec3<i32>((-6158i | var_0.b.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.b.x, var_0.b.x), var_0.b.xww), -(~(-8499i)), countOneBits(22342i & u_input.c)), !(!vec3<bool>(true, global1.c.x, true))));
    global2 = array<Struct_1, 23>();
    let var_2 = _wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(min(vec2<u32>(1u, 0u), abs(global1.a.xz)), ~global1.b.zz));
    global0 = array<f32, 22>();
    return vec4<i32>(0i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-4524i, u_input.b.x, -1i)), var_0.b.yzw & var_0.b.xzy), -50268i), u_input.c, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.b.zzz & var_0.b.zwy, vec3<i32>(14536i, -24075i, -57467i)), _wgslsmith_sub_vec3_i32(var_0.b.wyz, vec3<i32>(var_0.b.x, u_input.c, u_input.c) << (global1.a % vec3<u32>(32u)))), firstLeadingBit(~_wgslsmith_sub_i32(var_0.b.x, var_1.x))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> vec3<u32> {
    var var_0 = true;
    global0 = array<f32, 22>();
    var var_1 = arg_1;
    let var_2 = Struct_2(~global1.a, ~abs(min(arg_2.zxy, arg_2.wyw)), select(vec2<bool>(abs(u_input.a.x) < func_3(Struct_2(global1.a, vec3<u32>(arg_3, global1.b.x, u_input.a.x), global1.c), var_1.c.x), all(vec2<bool>(false, false))), select(!global1.c, !select(vec2<bool>(false, false), vec2<bool>(global1.c.x, global1.c.x), global1.c), vec2<bool>(true, true)), false & !(!global1.c.x)));
    let var_3 = ~vec2<u32>(~firstTrailingBit(u_input.d), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(var_1.a, global1.a.x, 4294967295u), 76215u));
    return select(vec3<u32>(~firstTrailingBit(0u) & reverseBits(4294967295u), func_3(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_2.x, 22u)])) * 1396f)), reverseBits(_wgslsmith_add_u32(~u_input.e, ~arg_1.d))), vec3<u32>(54958u, ~var_2.b.x, ~65452u), true);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<i32>, arg_3: bool) -> f32 {
    global2 = array<Struct_1, 23>();
    var var_0 = Struct_2(func_5(func_2(), global2[_wgslsmith_index_u32(~1u, 23u)], _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(781u, u_input.d, arg_1, 3508u)), ~vec4<u32>(arg_0, arg_1, arg_1, 1u)), vec4<u32>(_wgslsmith_div_u32(20037u, arg_1), 4294967295u, ~u_input.d, 48009u)), u_input.e), ~vec3<u32>(13515u, ~1u, arg_1), vec2<bool>(arg_3, global1.c.x));
    global0 = array<f32, 22>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 22u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 22u)])) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0, 22u)] + global0[_wgslsmith_index_u32(53071u, 22u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(25914u, 22u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1370f, -520f, !var_0.c.x))))));
    var var_2 = vec4<bool>(!(!all(!vec2<bool>(true, global1.c.x))), all(!select(vec3<bool>(true, true, global1.c.x), vec3<bool>(false, arg_3, true), vec3<bool>(false, true, arg_3))) & all(vec2<bool>(true, var_0.b.x == 4294967295u)), select(true, !any(vec2<bool>(var_0.c.x, false)), true) || any(select(!vec2<bool>(arg_3, true), !global1.c, select(var_0.c, var_0.c, global1.c))), arg_3);
    return var_1.x;
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: f32) -> Struct_2 {
    global2 = array<Struct_1, 23>();
    global1 = Struct_2(func_5(~min(~vec4<i32>(arg_1, -2147483647i, u_input.b.x, u_input.c), vec4<i32>(arg_1, -60593i, u_input.c, -14570i)), global2[_wgslsmith_index_u32(~func_3(Struct_2(global1.b, vec3<u32>(arg_2, 45067u, global1.b.x), global1.c), _wgslsmith_f_op_f32(arg_3 + -743f)), 23u)], (~vec4<u32>(u_input.a.x, u_input.a.x, arg_2, global1.a.x) | (vec4<u32>(u_input.d, arg_0, arg_0, 40004u) | vec4<u32>(arg_2, 4294967295u, u_input.d, arg_0))) | _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.x, 1u, u_input.e, arg_0) ^ vec4<u32>(u_input.d, arg_0, 21450u, global1.b.x), abs(vec4<u32>(global1.a.x, 666u, arg_0, 7392u))), _wgslsmith_add_u32(0u, 1u)), vec3<u32>(~1u, ~0u, arg_0) & vec3<u32>(abs(6645u) << (arg_0 % 32u), countOneBits(~arg_0), 4294967295u), select(!(!(!vec2<bool>(true, global1.c.x))), select(global1.c, global1.c, any(vec3<bool>(global1.c.x, global1.c.x, true))), !vec2<bool>(global1.c.x, false)));
    let var_0 = Struct_1(_wgslsmith_add_u32(u_input.a.x, 1u), ~(~vec4<i32>(arg_1, -4678i, -12711i, reverseBits(0i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3, global0[_wgslsmith_index_u32(arg_0, 22u)]), vec2<f32>(-839f, global0[_wgslsmith_index_u32(3468u, 22u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-254f, global0[_wgslsmith_index_u32(76524u, 22u)])) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_3, arg_3), vec2<f32>(203f, global0[_wgslsmith_index_u32(0u, 22u)]))))))), reverseBits(arg_2));
    global2 = array<Struct_1, 23>();
    var var_1 = min(abs(vec2<i32>(0i >> ((56639u >> (u_input.d % 32u)) % 32u), 2147483647i)), firstLeadingBit(u_input.b));
    return Struct_2(~(~global1.a), firstTrailingBit(~min(firstTrailingBit(global1.a), _wgslsmith_div_vec3_u32(global1.a, global1.b))), vec2<bool>(false, ~(~var_1.x) >= (u_input.c | -arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_6(countOneBits(~99245u), -(~max(1i, 5389i)), 17704u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(1u, global1.a.x, ~vec4<i32>(-2147483647i, u_input.b.x, u_input.c, 0i), true))))));
    let var_2 = !vec2<bool>(var_1.c.x, any(func_6(~var_1.b.x, _wgslsmith_mult_i32(u_input.b.x, 24636i), ~global1.b.x, -2700f).c));
    var var_3 = Struct_2(countOneBits(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(var_1.a, global1.a), global1.a)) ^ var_1.b, firstTrailingBit(global1.b), global1.c);
    var var_4 = _wgslsmith_sub_vec3_u32(reverseBits(select(abs(~vec3<u32>(var_3.a.x, u_input.d, global1.a.x)), global1.a, any(select(vec2<bool>(global1.c.x, false), global1.c, vec2<bool>(var_2.x, false))))), max(abs(var_3.b), _wgslsmith_div_vec3_u32(~(global1.b & global1.a), vec3<u32>(max(var_3.a.x, 4294967295u), ~u_input.a.x, _wgslsmith_mult_u32(0u, global1.b.x)))));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-188f, 1485f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(global1.a.x, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], false))))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_4.x, 22u)] + global0[_wgslsmith_index_u32(~min(u_input.d, var_4.x), 22u)]))) * _wgslsmith_f_op_f32(f32(-1f) * -172f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

