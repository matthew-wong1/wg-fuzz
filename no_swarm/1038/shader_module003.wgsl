struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec2<i32>(1i, 0i), vec2<bool>(true, false), false, 1u), Struct_1(vec2<i32>(35413i, i32(-2147483648)), vec2<bool>(false, true), true, 4294967295u)), Struct_2(Struct_1(vec2<i32>(2147483647i, 24792i), vec2<bool>(false, true), false, 0u), Struct_1(vec2<i32>(-54704i, -1i), vec2<bool>(false, false), true, 57213u)), Struct_2(Struct_1(vec2<i32>(-1i, -1i), vec2<bool>(true, true), true, 4322u), Struct_1(vec2<i32>(50836i, -3691i), vec2<bool>(true, false), false, 4294967295u)), Struct_2(Struct_1(vec2<i32>(21485i, 14549i), vec2<bool>(false, false), false, 1u), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<bool>(true, true), true, 0u)), Struct_2(Struct_1(vec2<i32>(-1i, 7386i), vec2<bool>(true, false), false, 61678u), Struct_1(vec2<i32>(1i, 2147483647i), vec2<bool>(false, true), false, 1u)), Struct_2(Struct_1(vec2<i32>(8678i, 2147483647i), vec2<bool>(false, true), false, 7190u), Struct_1(vec2<i32>(-1i, -48524i), vec2<bool>(true, false), false, 0u)), Struct_2(Struct_1(vec2<i32>(-19067i, -7509i), vec2<bool>(true, false), true, 0u), Struct_1(vec2<i32>(-28309i, 13515i), vec2<bool>(true, true), true, 4294967295u)), Struct_2(Struct_1(vec2<i32>(1968i, -3525i), vec2<bool>(false, false), false, 46460u), Struct_1(vec2<i32>(-1i, -32735i), vec2<bool>(true, true), false, 31348u)), Struct_2(Struct_1(vec2<i32>(17320i, 30727i), vec2<bool>(true, true), false, 1u), Struct_1(vec2<i32>(22605i, 0i), vec2<bool>(false, true), true, 9700u)), Struct_2(Struct_1(vec2<i32>(79514i, 23363i), vec2<bool>(true, true), false, 120861u), Struct_1(vec2<i32>(10009i, 0i), vec2<bool>(true, true), false, 1u)), Struct_2(Struct_1(vec2<i32>(18756i, i32(-2147483648)), vec2<bool>(false, false), true, 0u), Struct_1(vec2<i32>(4429i, -1i), vec2<bool>(true, true), true, 16562u)), Struct_2(Struct_1(vec2<i32>(28681i, 0i), vec2<bool>(true, false), true, 1u), Struct_1(vec2<i32>(-42009i, 9377i), vec2<bool>(true, false), false, 27063u)), Struct_2(Struct_1(vec2<i32>(-39194i, i32(-2147483648)), vec2<bool>(false, true), true, 1u), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(true, false), true, 9234u)), Struct_2(Struct_1(vec2<i32>(1i, -1i), vec2<bool>(false, true), true, 4294967295u), Struct_1(vec2<i32>(i32(-2147483648), 10916i), vec2<bool>(true, false), true, 0u)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -11446i), vec2<bool>(false, false), true, 4294967295u), Struct_1(vec2<i32>(26117i, 2147483647i), vec2<bool>(true, false), false, 1u)), Struct_2(Struct_1(vec2<i32>(-1i, -1i), vec2<bool>(true, true), false, 18866u), Struct_1(vec2<i32>(-32162i, 47066i), vec2<bool>(true, false), true, 31465u)));

var<private> global1: Struct_2;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32, arg_3: i32) -> vec2<bool> {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 0u, global1.a.d), vec3<u32>(u_input.a.x, 100085u, u_input.a.x))), ~(~vec3<u32>(u_input.a.x, 0u, 72695u))), firstTrailingBit(~u_input.a.x)), 16u)];
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) + vec2<f32>(arg_2, -358f)), vec2<f32>(-1172f, -556f), vec2<bool>(false, global1.b.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(560f + var_0.x), _wgslsmith_f_op_f32(abs(1104f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-681f, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-175f, var_0.x) + vec2<f32>(arg_2, var_0.x))), vec2<f32>(-501f, _wgslsmith_f_op_f32(-arg_2))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(732f, -1548f) - vec2<f32>(var_0.x, arg_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_2) * vec2<f32>(-1000f, arg_2)), true)))))));
    var var_1 = _wgslsmith_clamp_i32(global1.b.a.x, ~(global1.a.a.x >> (countOneBits(58569u) % 32u)), arg_1.x) & _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(arg_3, 45896i), vec2<i32>(arg_0.a.x, 8511i)), vec2<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(arg_1), vec3<i32>(global1.b.a.x, 1i, u_input.b.x)), i32(-1i) * -13049i));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_2)), -1000f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_2))))))));
    return !arg_0.b;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_div_i32(global1.a.a.x, -arg_1.b.a.x ^ ~(-arg_1.b.a.x)), _wgslsmith_mod_i32(-6060i, ~2147483647i));
    var var_1 = ~vec3<u32>(~arg_1.a.d, _wgslsmith_mod_u32(arg_1.b.d, _wgslsmith_mult_u32(countOneBits(u_input.a.x), global1.b.d & arg_1.b.d)), u_input.a.x);
    var var_2 = _wgslsmith_div_u32(4294967295u, reverseBits(4294967295u));
    let var_3 = firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(u_input.b.x, 7389i, 2147483647i), select(_wgslsmith_div_i32(-68868i, -32482i), firstLeadingBit(u_input.b.x), all(vec4<bool>(true, arg_2.x, false, global1.a.b.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), ~global1.a.a)));
    var var_4 = Struct_1(vec2<i32>(-30542i, -var_3), vec2<bool>(!(!func_3(arg_1.a, vec3<i32>(var_3, u_input.b.x, u_input.b.x), 580f, -57148i).x), all(!vec3<bool>(false, arg_1.b.b.x, true))), global1.a.c, 4294967295u);
    return ~(~u_input.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> vec3<bool> {
    global0 = array<Struct_2, 16>();
    let var_0 = arg_1.a;
    global1 = arg_0;
    global1 = global0[_wgslsmith_index_u32(global1.a.d, 16u)];
    global1 = Struct_2(arg_0.b, arg_1);
    return select(vec3<bool>(true, all(vec4<bool>(global1.b.c, arg_0.b.b.x, arg_1.b.x, global1.a.b.x)) & any(!vec3<bool>(arg_1.c, arg_1.c, false)), ~(u_input.a.x >> (4294967295u % 32u)) != abs(global1.b.d | u_input.a.x)), vec3<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(true, global1.b.c), arg_0.b.c)), any(select(vec3<bool>(global1.b.c, true, true), vec3<bool>(arg_0.a.b.x, arg_0.a.c, global1.b.c), vec3<bool>(false, global1.b.c, true))) == arg_1.c, !global1.a.c), true && all(vec2<bool>(global1.b.c, all(vec4<bool>(true, true, arg_1.c, true)))));
}

fn func_2() -> vec3<u32> {
    let var_0 = ~(~vec3<u32>(~max(u_input.a.x, u_input.a.x), global1.a.d, ~(~global1.b.d)));
    var var_1 = select(vec3<bool>(global1.a.c, global1.a.c, global1.b.c), func_5(global0[_wgslsmith_index_u32(func_4(true, global0[_wgslsmith_index_u32(max(1u, _wgslsmith_mult_u32(4294967295u, global1.b.d)), 16u)], select(func_3(Struct_1(global1.a.a, global1.b.b, global1.a.b.x, 80709u), u_input.b, 1668f, 1i), global1.a.b, vec2<bool>(global1.a.b.x, global1.b.c))), 16u)], Struct_1(-vec2<i32>(u_input.b.x, global1.b.a.x), select(global1.a.b, !global1.b.b, global1.a.b.x), func_3(Struct_1(vec2<i32>(u_input.b.x, -1i), vec2<bool>(global1.b.b.x, global1.b.b.x), false, var_0.x), vec3<i32>(55699i, -9920i, -2147483647i), 1179f, global1.b.a.x).x | true, 1u)), func_5(global0[_wgslsmith_index_u32(~0u, 16u)], global1.b));
    let var_2 = global0[_wgslsmith_index_u32(var_0.x, 16u)];
    var var_3 = max(-vec2<i32>(var_2.a.a.x, var_2.b.a.x), _wgslsmith_mod_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(global1.b.a, vec2<i32>(u_input.b.x, 21955i)), -vec2<i32>(u_input.b.x, var_2.b.a.x))), _wgslsmith_add_vec2_i32(-vec2<i32>(-5076i, -1i), ~var_2.b.a)));
    let var_4 = -2147483647i;
    return var_0;
}

fn func_1() -> StorageBuffer {
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(1i, global1.b.a.x);
    var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(u_input.b.x, max(1i, u_input.b.x)), u_input.b.xz);
    global0 = array<Struct_2, 16>();
    let var_1 = Struct_2(global1.a, Struct_1(~vec2<i32>(2147483647i, u_input.b.x) | vec2<i32>(-2147483647i, _wgslsmith_mult_i32(912i, 4213i)), !global1.a.b, all(!(!vec4<bool>(global1.b.b.x, global1.b.c, false, global1.a.c))), _wgslsmith_dot_vec3_u32(func_2(), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(10750u, 1u, global1.b.d)) << (vec3<u32>(16427u, 1u, u_input.a.x) % vec3<u32>(32u)))));
    var_0 = -var_1.b.a;
    return StorageBuffer(~(~vec4<i32>(global1.b.a.x, var_0.x, u_input.b.x, 1i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b.a.x, i32(-1i) * -1i, -57015i, firstTrailingBit(u_input.b.x)), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b.x, 2147483647i, var_0.x, var_1.a.a.x), -vec4<i32>(-13209i, 1i, -33288i, global1.a.a.x)), vec4<i32>(firstTrailingBit(1i), _wgslsmith_sub_i32(39911i, -23248i), global1.a.a.x & -2147483647i, abs(u_input.b.x))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a), 0u | u_input.a.x), countOneBits(vec3<u32>(u_input.a.x, var_1.b.d, 15926u))), select(-2147483647i, ~((-2147483647i ^ var_0.x) ^ _wgslsmith_mod_i32(-1i, var_0.x)), true | var_1.a.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2002f, 1060f, 2001f, 440f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(782f, -816f, 656f, 1732f), vec4<f32>(-343f, 1000f, 1000f, 1158f), vec4<bool>(true, global1.a.c, global1.a.b.x, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1682f), _wgslsmith_f_op_f32(-574f + 1514f))))) + 820f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = func_1();
}

