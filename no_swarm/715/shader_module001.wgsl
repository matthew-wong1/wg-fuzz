struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true, 1u, vec2<i32>(1i, i32(-2147483648)), false, 0u), Struct_1(true, 4294967295u, vec2<i32>(-51076i, 2147483647i), false, 4294967295u), Struct_1(true, 0u, vec2<i32>(-8278i, -9355i), true, 0u), Struct_1(true, 2325u, vec2<i32>(1i, 2147483647i), true, 4294967295u), Struct_1(false, 0u, vec2<i32>(-39294i, 1i), false, 17548u), Struct_1(false, 4294967295u, vec2<i32>(i32(-2147483648), 18495i), true, 13191u), Struct_1(false, 0u, vec2<i32>(-1i, 2147483647i), true, 1u), Struct_1(false, 42421u, vec2<i32>(1i, 4750i), true, 0u), Struct_1(false, 37418u, vec2<i32>(22873i, 0i), true, 4294967295u), Struct_1(true, 0u, vec2<i32>(-30200i, 1i), true, 4294967295u), Struct_1(true, 0u, vec2<i32>(0i, 1i), true, 18931u));

var<private> global1: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(165f, -1963f, 102f, 468f), vec4<f32>(-1879f, 1021f, 820f, 1482f), vec4<f32>(754f, 643f, -350f, -116f), vec4<f32>(-2039f, -794f, -3166f, 136f), vec4<f32>(-1543f, -1632f, -280f, 298f), vec4<f32>(-694f, -545f, -1000f, 964f), vec4<f32>(1000f, 216f, 451f, -459f), vec4<f32>(159f, -332f, -860f, 285f), vec4<f32>(229f, -771f, 422f, -810f), vec4<f32>(-814f, 1071f, 2012f, -1000f), vec4<f32>(-1159f, 532f, -642f, 1977f), vec4<f32>(-478f, -362f, -710f, -203f), vec4<f32>(739f, 601f, 2812f, 449f), vec4<f32>(1256f, -1688f, 285f, 2500f), vec4<f32>(-508f, -1000f, 1204f, 527f), vec4<f32>(-1103f, -275f, -1123f, -526f), vec4<f32>(1424f, -1075f, 379f, 1463f), vec4<f32>(198f, -283f, 1518f, 1316f), vec4<f32>(1221f, -318f, -1565f, -1579f), vec4<f32>(-1214f, 1453f, -653f, -953f), vec4<f32>(-132f, -437f, -183f, -219f), vec4<f32>(584f, 1000f, -642f, -382f), vec4<f32>(-582f, 712f, -300f, -1331f), vec4<f32>(152f, -910f, -859f, 878f), vec4<f32>(-340f, 273f, 389f, 457f), vec4<f32>(-528f, 704f, -443f, -918f), vec4<f32>(1423f, -1121f, 672f, -136f), vec4<f32>(1260f, -569f, 622f, 555f));

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = ~vec4<u32>(63735u, _wgslsmith_div_u32(max(0u, _wgslsmith_mult_u32(arg_0.e, 34296u)), _wgslsmith_sub_u32(29641u, 3564u)), _wgslsmith_mod_u32(arg_0.e, 1u) | ~arg_3.b, 0u);
    global1 = array<vec4<f32>, 28>();
    let var_1 = arg_1;
    global0 = array<Struct_1, 11>();
    global1 = array<vec4<f32>, 28>();
    return !vec3<bool>(!(!all(vec2<bool>(arg_3.a, arg_1.d))), abs(firstTrailingBit(-1i)) < countOneBits(-1i), true);
}

fn func_4(arg_0: bool, arg_1: vec3<i32>) -> vec4<i32> {
    let var_0 = Struct_1(select(true, true, true), 1u, _wgslsmith_mod_vec2_i32(-vec2<i32>(_wgslsmith_mult_i32(1i, 1i), arg_1.x), ~vec2<i32>(firstTrailingBit(-25266i), arg_1.x | -56823i)), any(vec3<bool>(any(vec3<bool>(false, false, arg_0)), arg_0, select(any(vec2<bool>(arg_0, false)), !arg_0, false))), ~(~abs(u_input.a)) >> (~(~_wgslsmith_clamp_u32(13126u, 4294967295u, 30645u)) % 32u));
    let var_1 = Struct_1(func_3(Struct_1(arg_0, 67327u, _wgslsmith_add_vec2_i32(~arg_1.zx, vec2<i32>(-1i, -1i)), true, ~u_input.a), global2[_wgslsmith_index_u32(36527u, 9u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1292f, -1613f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2363f, -248f)))), Struct_1(var_0.d & false, 1u >> (u_input.a % 32u), ~vec2<i32>(-15525i, var_0.c.x), !any(vec3<bool>(true, false, false)), 5326u)).x, 115936u, _wgslsmith_mult_vec2_i32(arg_1.xx, _wgslsmith_mult_vec2_i32(-vec2<i32>(-11802i, arg_1.x), countOneBits(vec2<i32>(var_0.c.x, var_0.c.x)))), any(vec2<bool>(func_3(Struct_1(arg_0, 1u, vec2<i32>(2147483647i, 1i), true, 0u), Struct_1(arg_0, 6303u, arg_1.zy, var_0.a, var_0.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(520f, 661f) + vec2<f32>(1299f, 768f)), global0[_wgslsmith_index_u32(var_0.e, 11u)]).x, all(vec4<bool>(true, false, true, false)))), 29347u);
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-851f, -1000f, -943f, -947f) * vec4<f32>(797f, 1236f, -288f, 491f)))) - vec4<f32>(_wgslsmith_f_op_f32(max(-149f, _wgslsmith_f_op_f32(f32(-1f) * -403f))), _wgslsmith_div_f32(-1777f, _wgslsmith_f_op_f32(max(1277f, 1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -103f), _wgslsmith_f_op_f32(f32(-1f) * -1559f), var_1.a && var_0.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(226f)), -834f, -1i < arg_1.x))))));
    var var_3 = Struct_1(arg_0, var_1.b, countOneBits(-(~vec2<i32>(19729i, arg_1.x))), !(_wgslsmith_f_op_f32(select(-111f, 393f, true)) <= var_2.x), abs(var_1.b));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-224f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f)))) * _wgslsmith_f_op_f32(-var_2.x));
    return _wgslsmith_mult_vec4_i32(~(-vec4<i32>(var_0.c.x, var_3.c.x, var_1.c.x, 0i)) >> (_wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(4898u, var_0.e, 44829u, var_3.e)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b, 50293u, var_1.e, 4294967295u) | vec4<u32>(var_0.e, 55132u, var_0.e, var_1.e), vec4<u32>(var_0.b, 4294967295u, 4294967295u, 41499u))) % vec4<u32>(32u)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.c.x, 1i, ~(-1i), var_3.c.x), -firstLeadingBit(vec4<i32>(var_0.c.x, var_1.c.x, arg_1.x, arg_1.x)), -(vec4<i32>(0i, arg_1.x, var_3.c.x, 2147483647i) | vec4<i32>(-41602i, 2147483647i, var_0.c.x, arg_1.x))));
}

fn func_2() -> u32 {
    var var_0 = func_4(any(!func_3(global0[_wgslsmith_index_u32(~u_input.a, 11u)], Struct_1(true, 1u, vec2<i32>(1i, -1i), false, u_input.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(827f, 1947f), vec2<f32>(-410f, -1343f), true)), Struct_1(true, u_input.a, vec2<i32>(43406i, -30398i), true, u_input.a))), firstLeadingBit(-max(vec3<i32>(0i, -32791i, 1i), vec3<i32>(1i, 1i, 1i))));
    var var_1 = _wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a & 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 67444u, 13212u, 31695u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))) << (u_input.a % 32u), 1u), 28u)], _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(~(~(~u_input.a)), 28u)]));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, u_input.a), ~abs(u_input.a), ~1u, ~select(u_input.a, firstTrailingBit(u_input.a), false)), ~abs(~min(vec4<u32>(u_input.a, u_input.a, u_input.a, 40695u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a))));
    let var_3 = _wgslsmith_dot_vec2_u32(min(~(~vec2<u32>(u_input.a, 4294967295u)), ~(~vec2<u32>(u_input.a, u_input.a) | _wgslsmith_div_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(var_2, 1u)))), min(vec2<u32>(~38612u, ~(u_input.a | u_input.a)), ~(~(~vec2<u32>(var_2, u_input.a)))));
    let var_4 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(7037u), firstTrailingBit(1u)), vec2<u32>(select(u_input.a, var_3, false), var_2)) != 15168u, reverseBits(~var_3), select((~vec2<i32>(var_0.x, -35449i) ^ vec2<i32>(-8664i, var_0.x)) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(var_3, 1u)) % vec2<u32>(32u)), firstTrailingBit(var_0.wy), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true), true)), ~(max(u_input.a, var_3) | firstLeadingBit(var_3)) > _wgslsmith_dot_vec2_u32(abs(vec2<u32>(6002u, u_input.a)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2, 1u), vec2<u32>(var_3, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, var_2), vec2<u32>(u_input.a, 1u)), select(vec2<u32>(var_3, 19212u), vec2<u32>(39120u, var_2), vec2<bool>(true, true)))), ~abs(_wgslsmith_add_u32(_wgslsmith_mult_u32(20453u, var_2), ~4294967295u)));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_4.e, var_4.b, var_2, var_3), vec4<u32>(u_input.a, var_3, var_4.b, 0u)) & firstTrailingBit(vec4<u32>(0u, var_2, 49194u, var_2)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2, 84473u, 1u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 28390u, 1u), vec4<u32>(u_input.a, u_input.a, var_2, 48792u)))), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(var_4.e, 4094u, u_input.a, 31991u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(10010u, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, 0u, var_3)), abs(~vec4<u32>(var_4.b, 4294967295u, 4294967295u, 31005u)))) & var_3;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-893f + 120f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1480f, 510f) * -537f), (~arg_0.x & ~33759i) >= _wgslsmith_sub_i32(~(-5373i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(arg_0.x, arg_0.x, arg_0.x))))), _wgslsmith_f_op_f32(f32(-1f) * -904f)));
    var var_1 = u_input.a;
    var var_2 = abs(~u_input.a >> (max(~0u, u_input.a) % 32u)) & 4294967295u;
    let var_3 = -_wgslsmith_mod_i32(arg_0.x >> (_wgslsmith_clamp_u32(u_input.a, func_2(), 4294967295u) % 32u), _wgslsmith_div_i32(i32(-1i) * -17319i, arg_0.x));
    let var_4 = !vec4<bool>(true, true, true, any(vec2<bool>(true, true)));
    return global2[_wgslsmith_index_u32(countOneBits(u_input.a) ^ max(~(~1u), 111734u), 9u)];
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(all(!(!select(vec2<bool>(false, false), vec2<bool>(arg_3.d, arg_3.d), false))), arg_3.d, arg_3.d, (arg_2.a || false) || func_1(arg_2.c ^ vec2<i32>(arg_3.c.x, -3153i), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_2.e, 15886u, 27340u), vec4<u32>(0u, 25108u, 45046u, 1u)))).a);
    global0 = array<Struct_1, 11>();
    var var_1 = func_1(arg_2.c, ~arg_2.b).b;
    global0 = array<Struct_1, 11>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(220f, 1000f) - arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(246f * 798f) + _wgslsmith_f_op_f32(select(-1240f, arg_1.x, true))))) - -1236f), 1625f);
    return func_1(vec2<i32>(reverseBits(arg_2.c.x), arg_3.c.x), _wgslsmith_div_u32(~select(0u, 35928u, true), max(max(arg_3.e, 4294967295u), 1u) | func_2()));
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global0 = array<Struct_1, 11>();
    return global0[_wgslsmith_index_u32(0u, 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_0 = func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-622f, -163f)), -493f)), func_1(select(~vec2<i32>(-27748i, -2147483647i), vec2<i32>(1i, 1i), vec2<bool>(true, false)), countOneBits(1u)), global2[_wgslsmith_index_u32(u_input.a & _wgslsmith_mod_u32(u_input.a, select(u_input.a, 70300u, false)), 9u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(i32(-1i) * -2147483647i, 1i, -5809i, -15672i), ~max(vec4<i32>(2147483647i, 0i, 20596i, 10331i), vec4<i32>(-12063i, 26534i, -28813i, -28690i)), false)));
    global2 = array<Struct_1, 9>();
    var var_1 = -977f;
    global0 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(select(select(_wgslsmith_mod_vec2_i32(abs(var_0.c), vec2<i32>(2147483647i, 31906i)), var_0.c, vec2<bool>(true, var_0.a)), -max(var_0.c, vec2<i32>(var_0.c.x, var_0.c.x) << (vec2<u32>(64924u, u_input.a) % vec2<u32>(32u))), true), ~vec3<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.b, u_input.a)), vec2<u32>(61710u, var_0.e)), (18888u | u_input.a) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 8897u, 38930u, 4294967295u)), 4294967295u), func_1(-var_0.c, ~func_1(_wgslsmith_add_vec2_i32(var_0.c, vec2<i32>(var_0.c.x, 5880i)), ~u_input.a).e).e);
}

