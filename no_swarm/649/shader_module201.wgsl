struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: array<bool, 8> = array<bool, 8>(false, true, true, true, false, true, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_2(arg_0.d, u_input.b.x, select(select(vec4<bool>(1000f <= arg_0.d.b, global1[_wgslsmith_index_u32(arg_0.b, 8u)], any(arg_0.c), arg_0.c.x), !arg_0.c, all(vec3<bool>(global0[_wgslsmith_index_u32(19131u, 30u)], global1[_wgslsmith_index_u32(arg_0.b, 8u)], true))), arg_0.c, vec4<bool>(true, global1[_wgslsmith_index_u32(reverseBits(u_input.a), 8u)], false, true)), Struct_1(_wgslsmith_mod_i32(~(~11776i), 1i), _wgslsmith_f_op_f32(trunc(-792f)), ~arg_0.a.c, _wgslsmith_f_op_f32(-614f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(448f)), -1000f)), 1u));
    let var_1 = Struct_2(arg_0.d, abs(~10074u), select(select(vec4<bool>(true, 1297f >= var_0.d.b, false, !arg_0.c.x), var_0.c, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(max(arg_0.a.e, 0u), arg_0.d.e), 8u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 30u)], var_0.c.x, false, false), vec4<bool>(arg_0.c.x, true, global0[_wgslsmith_index_u32(11216u, 30u)], true), global1[_wgslsmith_index_u32(0u, 8u)] != global0[_wgslsmith_index_u32(u_input.a, 30u)]), var_0.c), arg_0.d);
    var var_2 = Struct_1(-1i, _wgslsmith_f_op_f32(select(806f, arg_0.d.b, any(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(15875u, 30u)], var_0.c.x, true))))), vec4<i32>(-1i) * -vec4<i32>(var_0.a.a, reverseBits(-41046i), ~45142i, u_input.d & 2147483647i), _wgslsmith_f_op_f32(var_0.a.d * 1126f), ~var_1.b);
    var var_3 = arg_0.b;
    var var_4 = var_0.a.e;
    return _wgslsmith_mult_i32(i32(-1i) * -reverseBits(-1i), var_2.c.x);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    global0 = array<bool, 30>();
    global1 = array<bool, 8>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.a.b - -198f))) * arg_1.a.d)));
    global0 = array<bool, 30>();
    let var_1 = 0u >> (~max(_wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(37500u, u_input.e)), arg_1.a.e) % 32u);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(u_input.d, -2147483647i, -57678i, arg_1.a.a)), vec4<i32>(_wgslsmith_add_i32(11862i, -2147483647i), func_3(arg_1), _wgslsmith_add_i32(arg_2.d.c.x, -u_input.c), arg_1.d.c.x)), firstTrailingBit(firstLeadingBit(vec4<i32>(arg_1.d.c.x, _wgslsmith_div_i32(arg_1.d.c.x, 1i), ~2147483647i, 26714i))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    global0 = array<bool, 30>();
    let var_0 = -2147483647i;
    global1 = array<bool, 8>();
    global0 = array<bool, 30>();
    global1 = array<bool, 8>();
    return Struct_2(Struct_1(-15546i, _wgslsmith_f_op_f32(trunc(-1091f)), vec4<i32>(max(u_input.d, -1i) ^ -19701i, _wgslsmith_clamp_i32(-22657i, -1i << (1u % 32u), 0i), _wgslsmith_div_i32(var_0, func_2(false, Struct_2(Struct_1(u_input.c, -1010f, vec4<i32>(var_0, -1i, -2147483647i, 2147483647i), 254f, 90316u), 21029u, vec4<bool>(false, false, global1[_wgslsmith_index_u32(38574u, 8u)], global0[_wgslsmith_index_u32(28382u, 30u)]), Struct_1(6293i, -592f, vec4<i32>(u_input.c, -90556i, var_0, 2147483647i), -1095f, 1u)), Struct_2(Struct_1(-41029i, -1000f, vec4<i32>(var_0, u_input.d, var_0, u_input.c), -286f, 1664u), 1u, vec4<bool>(arg_0.x, true, false, global1[_wgslsmith_index_u32(u_input.b.x, 8u)]), Struct_1(var_0, -1025f, vec4<i32>(u_input.c, -1619i, u_input.d, u_input.d), -996f, u_input.b.x)))), select(-14728i >> (u_input.b.x % 32u), var_0, true)), -255f, ~u_input.b.x ^ 4294967295u), 0u, vec4<bool>(true, global1[_wgslsmith_index_u32(~0u, 8u)] != global1[_wgslsmith_index_u32(max(u_input.e, 0u) | u_input.e, 8u)], false, !any(arg_0.zy)), Struct_1(_wgslsmith_mult_i32(u_input.d, 19412i), 846f, ~(-(vec4<i32>(var_0, u_input.d, 0i, u_input.c) << (vec4<u32>(4294967295u, u_input.e, u_input.a, 7478u) % vec4<u32>(32u)))), 394f, ~1u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = 892f;
    var var_1 = select(!arg_1.c, arg_1.c, select(arg_1.c, arg_0.c, arg_1.c.x));
    var var_2 = func_1(arg_1.c.zyx);
    global1 = array<bool, 8>();
    var var_3 = vec4<f32>(var_2.d.d, 399f, -1680f, func_1(func_1(vec3<bool>(select(arg_1.c.x, global0[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(arg_1.a.e, 8u)]), var_2.c.x == global0[_wgslsmith_index_u32(4294967295u, 30u)], var_2.c.x)).c.xyz).d.d);
    return func_1(!(!select(var_1.zwz, var_2.c.wyx, !vec3<bool>(true, global1[_wgslsmith_index_u32(8998u, 8u)], false)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    var var_0 = -2147483647i;
    let var_1 = Struct_2(Struct_1(u_input.d, _wgslsmith_div_f32(-1303f, 1f), (abs(vec4<i32>(2147483647i, u_input.c, 34286i, u_input.c)) | _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, -2147483647i, 1i), vec4<i32>(u_input.c, u_input.c, -1710i, u_input.d))) & -vec4<i32>(u_input.c, -1i, 0i, u_input.d), -770f, 43109u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~reverseBits(u_input.b), vec2<u32>(_wgslsmith_clamp_u32(0u, u_input.b.x, u_input.e), 4294967295u)), ~func_4(func_1(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], true, global1[_wgslsmith_index_u32(94073u, 8u)])), func_1(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)])))), vec4<bool>(func_1(vec3<bool>(global1[_wgslsmith_index_u32(15650u, 8u)], !global0[_wgslsmith_index_u32(u_input.e, 30u)], true)).c.x, !global0[_wgslsmith_index_u32(~u_input.a, 30u)], global1[_wgslsmith_index_u32(abs(~(~u_input.b.x)), 8u)], true), func_1(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], false, global1[_wgslsmith_index_u32(0u, 8u)]), !vec3<bool>(global0[_wgslsmith_index_u32(966u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], false), select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 8u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(u_input.b.x, 8u)], false), vec3<bool>(false, true, true)))).a);
    var var_2 = !(!var_1.c.zyz);
    var var_3 = ~vec3<u32>(var_1.d.e, 1u, func_4(Struct_2(var_1.d, 12839u, var_1.c, func_1(vec3<bool>(var_2.x, global1[_wgslsmith_index_u32(42285u, 8u)], false)).a), Struct_2(Struct_1(-54744i, var_1.d.d, var_1.d.c, var_1.d.b, var_1.d.e), ~0u, !var_1.c, var_1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-1i)), vec3<f32>(-267f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.d))), func_1(!var_1.c.wzw).d.d, var_2.x)), var_1.d.b));
}

