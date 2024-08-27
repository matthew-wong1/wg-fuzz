struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: f32 = -823f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(max(-1i, -countOneBits(u_input.b.x)), vec4<i32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 24888i), u_input.b, vec2<i32>(u_input.b.x, -54285i)), u_input.b), -2147483647i), vec4<bool>(true, true | all(select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(37543u, 2u)], global0[_wgslsmith_index_u32(10953u, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(41772u, 2u)], false))), global0[_wgslsmith_index_u32(~(~(~42351u)), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1473f, 725f))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1682f, 854f) + _wgslsmith_div_f32(-669f, 281f))));
    let var_1 = _wgslsmith_div_vec3_u32(abs(vec3<u32>(abs(33472u), min(13161u, u_input.a), _wgslsmith_mod_u32(u_input.a, u_input.a))) >> (firstTrailingBit(~(vec3<u32>(u_input.c.x, 0u, u_input.a) | vec3<u32>(u_input.c.x, 1u, u_input.c.x))) % vec3<u32>(32u)), reverseBits(select(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(u_input.c.x, 0u, u_input.c.x)), abs(vec3<u32>(57968u, u_input.c.x, u_input.a)), reverseBits(vec3<u32>(1u, u_input.c.x, u_input.c.x))), abs(vec3<u32>(u_input.a, u_input.c.x, 41892u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(66928u, u_input.c.x, u_input.a), vec3<u32>(83508u, u_input.a, 1u), vec3<u32>(1u, u_input.a, 0u)), true || var_0.c.x)));
    global1 = 271f;
    return vec4<bool>(global0[_wgslsmith_index_u32(~u_input.a, 2u)], select(true, all(select(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(104955u, 2u)]), var_0.c, var_0.c)), !(!global0[_wgslsmith_index_u32(~0u, 2u)])), !(!(!(!global0[_wgslsmith_index_u32(38774u, 2u)]))), false);
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = select(vec4<bool>(!(u_input.c.x == 11091u), true, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], all(select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)]), true), select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], false), true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(77066u, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]), vec2<bool>(true, false))))), func_3(), vec4<bool>(all(vec3<bool>(false | global0[_wgslsmith_index_u32(0u, 2u)], true, global0[_wgslsmith_index_u32(u_input.a, 2u)])), true, global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a, 0u ^ u_input.a), 2u)], true));
    global1 = 1000f;
    let var_1 = Struct_1(-select(_wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0.x, 69041i), -1i), 64789i, true), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(-2147483647i, u_input.b.x, -15486i, arg_0.x) | vec4<i32>(13467i, -2147483647i, u_input.b.x, u_input.b.x)), -countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, 2889i, u_input.b.x)) & select(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, arg_0.x), vec4<i32>(12148i, u_input.b.x, arg_0.x, 2147483647i)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, arg_0.x), false), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, abs(1i), u_input.b.x, arg_0.x >> (u_input.a % 32u)), countOneBits(~vec4<i32>(u_input.b.x, -1i, 24313i, -20426i)))), var_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-972f, -3419f, -566f), vec3<f32>(1000f, 2083f, -1879f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1261f, -1050f, 374f), vec3<f32>(-1009f, 183f, -1109f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-636f, -630f, -1897f))))))));
    global1 = var_2.x;
    return Struct_1(max(firstTrailingBit(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_sub_i32(var_1.a, u_input.b.x))), _wgslsmith_clamp_i32(u_input.b.x, -abs(arg_0.x), 2147483647i)), vec4<i32>(~select(-39548i, arg_0.x, true), 0i, _wgslsmith_mult_i32(-u_input.b.x, abs(-94178i)), -1i) ^ vec4<i32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, var_1.b.x, 299i, -2147483647i), firstLeadingBit(vec4<i32>(var_1.b.x, var_1.a, 58809i, var_1.a))), var_1.a), vec4<bool>(true, !(-18454i < (31610i | u_input.b.x)), var_2.x < 699f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x))) <= var_2.x));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    let var_0 = ~(~(vec4<u32>(_wgslsmith_clamp_u32(5021u, arg_2.d, 88818u), ~42941u, 2881u, ~arg_1.d) & vec4<u32>(~12450u, arg_2.d | u_input.c.x, 1u >> (arg_1.d % 32u), arg_2.d & 81695u)));
    var var_1 = var_0.xyz;
    var var_2 = vec2<f32>(1576f, arg_2.c);
    let var_3 = _wgslsmith_add_u32(~((4294967295u & arg_2.d) ^ 27613u) | 0u, firstTrailingBit(u_input.a));
    var_2 = vec2<f32>(1f, var_2.x);
    return arg_1;
}

fn func_5(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = func_4(Struct_4(func_4(Struct_4(Struct_1(0i, vec4<i32>(arg_1.x, arg_3.a.b, 54583i, arg_3.e.a.b.x), arg_3.e.a.c), Struct_2(arg_3.a.a, 29840i, vec3<bool>(true, false, arg_0.a))), Struct_3(arg_0.b.a, _wgslsmith_f_op_vec2_f32(round(arg_0.b.b)), _wgslsmith_f_op_f32(-1000f + arg_0.d), 53686u, func_4(Struct_4(arg_3.e.a, arg_0.b.a), Struct_3(Struct_2(Struct_1(arg_1.x, vec4<i32>(1459i, 26830i, arg_1.x, 48111i), arg_0.c.c), -19403i, arg_3.a.a.c.yyz), arg_0.b.b, -778f, 49518u, arg_3.e), Struct_3(arg_0.b.e, vec2<f32>(-1003f, -824f), 1074f, 28267u, Struct_2(Struct_1(u_input.b.x, arg_0.b.e.a.b, arg_3.e.a.c), u_input.b.x, arg_0.c.c.ywx))).e), Struct_3(Struct_2(Struct_1(44926i, vec4<i32>(134i, u_input.b.x, arg_0.b.a.b, arg_3.a.b), vec4<bool>(arg_0.b.a.a.c.x, arg_0.a, arg_3.e.c.x, global0[_wgslsmith_index_u32(arg_0.b.d, 2u)])), arg_1.x, arg_3.e.c), vec2<f32>(arg_0.b.c, 724f), _wgslsmith_f_op_f32(max(arg_0.d, arg_0.b.b.x)), ~arg_0.b.d, Struct_2(arg_3.a.a, arg_3.a.b, vec3<bool>(false, true, true)))).a.a, arg_3.e), arg_0.b, Struct_3(arg_3.a, arg_0.b.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(382f - arg_3.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_3.c)))))), arg_0.b.d, Struct_2(func_2(arg_0.b.e.a.b.xyy), reverseBits(min(arg_1.x, 1i)), vec3<bool>(true, false || arg_3.a.a.c.x, true)))).e;
    let var_1 = arg_3.a.a.b.ywz;
    var var_2 = arg_3;
    var_2 = func_4(Struct_4(func_2(~(~vec3<i32>(var_1.x, u_input.b.x, var_1.x))), arg_3.e), Struct_3(func_4(Struct_4(func_2(vec3<i32>(37534i, -2147483647i, 1i)), Struct_2(var_2.e.a, var_2.a.a.b.x, vec3<bool>(global0[_wgslsmith_index_u32(6399u, 2u)], false, true))), arg_0.b, Struct_3(func_4(Struct_4(Struct_1(-24775i, var_2.e.a.b, vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], true, arg_3.a.a.c.x, var_0.a.c.x)), Struct_2(var_2.a.a, 3531i, vec3<bool>(var_0.a.c.x, false, arg_0.b.e.c.x))), Struct_3(Struct_2(arg_3.e.a, -18316i, vec3<bool>(true, arg_3.e.a.c.x, var_0.a.c.x)), arg_0.b.b, arg_0.d, arg_3.d, arg_0.b.a), Struct_3(var_2.e, var_2.b, var_2.c, arg_2.x, arg_0.b.e)).a, arg_0.b.b, arg_0.d, min(13162u, arg_0.b.d), func_4(Struct_4(Struct_1(var_2.e.b, vec4<i32>(21248i, 28544i, var_1.x, -1i), vec4<bool>(true, true, false, arg_0.b.a.c.x)), arg_3.e), arg_3, arg_0.b).e)).a, _wgslsmith_f_op_vec2_f32(-var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d)))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, 76645u, 126318u, 34846u), vec4<u32>(36500u, arg_0.b.d, 0u, 9916u), vec4<u32>(arg_2.x, var_2.d, arg_3.d, 43344u)), vec4<u32>(0u, u_input.c.x, 36584u, var_2.d) & vec4<u32>(arg_2.x, arg_0.b.d, 0u, 88014u)), var_2.e), Struct_3(func_4(Struct_4(func_4(Struct_4(var_0.a, arg_0.b.a), Struct_3(var_2.e, arg_3.b, -1193f, arg_2.x, arg_0.b.e), arg_0.b).a.a, Struct_2(Struct_1(46896i, vec4<i32>(var_2.a.b, arg_0.b.e.a.b.x, -41689i, arg_0.b.a.a.a), var_2.a.a.c), u_input.b.x, vec3<bool>(var_2.e.a.c.x, true, false))), arg_0.b, Struct_3(func_4(Struct_4(Struct_1(var_2.e.a.a, var_0.a.b, vec4<bool>(true, global0[_wgslsmith_index_u32(29110u, 2u)], arg_0.b.e.a.c.x, true)), Struct_2(var_0.a, arg_1.x, arg_0.b.a.a.c.yxw)), arg_0.b, arg_0.b).e, vec2<f32>(arg_0.b.b.x, var_2.b.x), _wgslsmith_f_op_f32(arg_0.b.c * var_2.c), max(5623u, arg_0.b.d), arg_3.e)).e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.b) * _wgslsmith_div_vec2_f32(vec2<f32>(var_2.c, 1669f), _wgslsmith_div_vec2_f32(arg_3.b, var_2.b))), -377f, ~u_input.a, func_4(Struct_4(Struct_1(arg_3.e.b, vec4<i32>(arg_1.x, -1i, -2147483647i, u_input.b.x), var_2.a.a.c), Struct_2(var_2.e.a, -1i, vec3<bool>(true, global0[_wgslsmith_index_u32(2430u, 2u)], false))), arg_0.b, func_4(Struct_4(Struct_1(u_input.b.x, arg_0.b.a.a.b, arg_3.a.a.c), arg_3.e), arg_0.b, func_4(Struct_4(arg_3.a.a, Struct_2(arg_0.b.e.a, u_input.b.x, vec3<bool>(true, false, false))), Struct_3(var_2.e, vec2<f32>(arg_0.b.c, -1190f), -496f, 26134u, arg_0.b.e), arg_0.b))).a));
    var var_3 = Struct_4(arg_3.e.a, Struct_2(func_2(countOneBits(var_0.a.b.yyx >> (vec3<u32>(0u, 22074u, arg_0.b.d) % vec3<u32>(32u)))), _wgslsmith_div_i32(-arg_3.a.a.a, ~var_2.a.a.b.x), vec3<bool>(true, arg_0.a, !var_2.e.a.c.x)));
    return Struct_2(Struct_1(_wgslsmith_div_i32(var_3.a.a, arg_3.e.a.a << (firstLeadingBit(arg_2.x) % 32u)), vec4<i32>(24420i, ~(~arg_3.e.b), -_wgslsmith_mod_i32(var_0.b, 2147483647i), var_1.x >> (arg_3.d % 32u)), !var_3.a.c), ~_wgslsmith_clamp_i32(~arg_3.a.b, _wgslsmith_sub_i32(~(-6605i), var_0.a.b.x), arg_0.b.e.b), !vec3<bool>(select(true, true, !arg_3.e.c.x), true, all(!var_2.e.a.c)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_1, arg_3: u32) -> vec2<f32> {
    let var_0 = func_5(arg_1, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.b.a.a.b.x, -27166i << (_wgslsmith_sub_u32(arg_1.b.d, arg_1.b.d) % 32u)), vec2<i32>(_wgslsmith_mult_i32(arg_2.a ^ -19115i, u_input.b.x), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(arg_1.b.a.a.b, vec4<i32>(-1i, -2147483647i, -2147483647i, 1i)), i32(-1i) * -2147483647i))), u_input.c, func_4(Struct_4(func_2(arg_2.b.xzy), arg_1.b.a), Struct_3(Struct_2(Struct_1(arg_2.b.x, arg_1.c.b, arg_1.c.c), min(-5385i, u_input.b.x), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.b.b, arg_1.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) - _wgslsmith_f_op_f32(-1000f - 681f)), arg_3, arg_1.b.a), arg_1.b));
    let var_1 = Struct_3(var_0, _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_1.d, arg_1.b.c))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.b.x + arg_1.b.c), arg_1.b.c), 1227f)), arg_1.b.b.x, arg_3, func_4(Struct_4(func_2(func_4(Struct_4(Struct_1(u_input.b.x, var_0.a.b, vec4<bool>(true, arg_0.c.x, true, var_0.c.x)), arg_1.b.e), arg_1.b, arg_1.b).e.a.b.ywx), var_0), Struct_3(var_0, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.d, 993f))), -1000f, countOneBits(~97539u), func_5(arg_1, select(vec2<i32>(1i, arg_1.c.a), vec2<i32>(23275i, -1i), global0[_wgslsmith_index_u32(arg_3, 2u)]), firstLeadingBit(u_input.c), Struct_3(Struct_2(Struct_1(-1469i, vec4<i32>(arg_2.b.x, var_0.b, arg_0.a, -1i), vec4<bool>(arg_1.c.c.x, arg_0.c.x, false, true)), 2147483647i, vec3<bool>(true, false, true)), arg_1.b.b, 1405f, 0u, arg_1.b.e))), Struct_3(var_0, vec2<f32>(-1810f, arg_1.b.c), arg_1.d, u_input.c.x, func_4(Struct_4(arg_0, arg_1.b.a), arg_1.b, Struct_3(Struct_2(arg_1.b.a.a, 1i, vec3<bool>(true, global0[_wgslsmith_index_u32(5070u, 2u)], false)), vec2<f32>(arg_1.d, arg_1.b.c), -1000f, 47815u, Struct_2(arg_0, arg_0.a, vec3<bool>(var_0.a.c.x, var_0.a.c.x, arg_1.a)))).e)).a);
    let var_2 = Struct_1(_wgslsmith_mod_i32(arg_2.a, arg_1.b.e.a.b.x), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(arg_0.b.x, -1i, var_1.e.a.b.x, -475i)) | ~vec4<i32>(u_input.b.x, arg_0.b.x, arg_1.b.e.a.b.x, var_0.a.a), vec4<i32>(1i, arg_1.b.a.a.a, countOneBits(42072i), var_1.e.a.b.x)), var_0.a.b), arg_2.c);
    let var_3 = _wgslsmith_f_op_f32(select(arg_1.d, _wgslsmith_div_f32(arg_1.b.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1464f - var_1.c) * -894f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1358f)))))), false));
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -890f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b.c)))), 456f)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.b.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1658f, var_1.b.x))), vec2<f32>(var_1.c, 865f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, 564f) - arg_1.b.b) - vec2<f32>(arg_1.d, var_3)))));
}

fn func_6(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: vec4<bool>) -> Struct_2 {
    return Struct_2(func_4(Struct_4(func_5(arg_0, arg_0.c.b.yw, u_input.c, func_4(Struct_4(arg_0.c, arg_0.b.a), Struct_3(arg_0.b.a, vec2<f32>(-320f, arg_0.d), -1000f, arg_2.x, Struct_2(arg_0.b.a.a, 2147483647i, vec3<bool>(arg_0.c.c.x, global0[_wgslsmith_index_u32(arg_2.x, 2u)], arg_0.a))), arg_0.b)).a, func_5(Struct_5(false, Struct_3(Struct_2(Struct_1(0i, vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, arg_0.c.b.x), arg_0.c.c), u_input.b.x, vec3<bool>(arg_3.x, arg_3.x, global0[_wgslsmith_index_u32(arg_2.x, 2u)])), arg_0.b.b, 638f, 0u, Struct_2(Struct_1(-50545i, vec4<i32>(u_input.b.x, arg_0.b.a.b, arg_0.b.a.a.a, 3537i), arg_3), u_input.b.x, arg_1)), Struct_1(-1i, vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, -21464i), arg_3), arg_0.d), _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(41936i, 2147483647i)), ~vec2<u32>(arg_2.x, u_input.c.x), Struct_3(arg_0.b.e, vec2<f32>(arg_0.b.b.x, arg_0.d), arg_0.b.b.x, arg_0.b.d, arg_0.b.a))), func_4(Struct_4(Struct_1(12014i, vec4<i32>(-67788i, 2147483647i, arg_0.c.a, arg_0.b.e.a.b.x), arg_0.b.e.a.c), Struct_2(Struct_1(2147483647i, arg_0.c.b, vec4<bool>(false, false, arg_0.a, false)), 0i, vec3<bool>(false, global0[_wgslsmith_index_u32(arg_2.x, 2u)], arg_1.x))), func_4(Struct_4(arg_0.b.e.a, Struct_2(arg_0.b.e.a, arg_0.c.a, vec3<bool>(true, false, arg_1.x))), Struct_3(Struct_2(arg_0.b.a.a, -41070i, arg_1), vec2<f32>(arg_0.d, -1004f), arg_0.d, 64069u, Struct_2(arg_0.b.e.a, arg_0.c.b.x, arg_1)), func_4(Struct_4(arg_0.b.a.a, arg_0.b.e), arg_0.b, Struct_3(Struct_2(arg_0.b.e.a, 18552i, arg_0.b.a.a.c.yyz), arg_0.b.b, arg_0.b.b.x, 4294967295u, Struct_2(arg_0.b.e.a, 0i, vec3<bool>(false, arg_0.a, global0[_wgslsmith_index_u32(arg_0.b.d, 2u)]))))), func_4(Struct_4(arg_0.c, arg_0.b.a), func_4(Struct_4(Struct_1(u_input.b.x, vec4<i32>(u_input.b.x, arg_0.b.e.b, 9225i, arg_0.b.a.a.b.x), arg_3), Struct_2(Struct_1(u_input.b.x, arg_0.b.a.a.b, vec4<bool>(true, true, arg_0.b.a.a.c.x, arg_0.c.c.x)), arg_0.b.e.b, vec3<bool>(false, arg_3.x, arg_3.x))), arg_0.b, Struct_3(Struct_2(arg_0.b.e.a, 1i, vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], false, arg_1.x)), vec2<f32>(416f, arg_0.d), -273f, 1u, Struct_2(arg_0.c, 7627i, vec3<bool>(false, false, true)))), arg_0.b)), func_4(Struct_4(arg_0.b.a.a, func_4(Struct_4(arg_0.c, arg_0.b.a), arg_0.b, Struct_3(Struct_2(Struct_1(-2147483647i, arg_0.b.a.a.b, vec4<bool>(false, global0[_wgslsmith_index_u32(129218u, 2u)], arg_1.x, false)), -16780i, vec3<bool>(false, arg_1.x, true)), vec2<f32>(arg_0.d, arg_0.b.c), arg_0.b.c, arg_0.b.d, arg_0.b.a)).a), Struct_3(func_5(arg_0, vec2<i32>(1i, u_input.b.x), arg_2, Struct_3(arg_0.b.e, vec2<f32>(-1151f, arg_0.d), 1480f, arg_0.b.d, Struct_2(Struct_1(arg_0.b.a.b, arg_0.b.a.a.b, arg_0.c.c), 0i, vec3<bool>(arg_1.x, arg_1.x, true)))), arg_0.b.b, arg_0.b.c, arg_0.b.d >> (u_input.a % 32u), Struct_2(Struct_1(u_input.b.x, vec4<i32>(47079i, -1i, u_input.b.x, arg_0.b.a.b), arg_3), u_input.b.x, vec3<bool>(true, arg_0.b.a.c.x, arg_3.x))), func_4(Struct_4(Struct_1(63527i, arg_0.c.b, vec4<bool>(global0[_wgslsmith_index_u32(arg_2.x, 2u)], true, arg_3.x, false)), arg_0.b.a), arg_0.b, Struct_3(Struct_2(arg_0.c, arg_0.b.e.b, vec3<bool>(false, false, arg_3.x)), vec2<f32>(arg_0.d, 754f), arg_0.d, 57025u, Struct_2(arg_0.c, u_input.b.x, arg_1))))).e.a, 2147483647i, !(!arg_1));
}

fn func_7(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_4 {
    global0 = array<bool, 2>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2239f, -659f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2186f, -1599f)))), 140f, -1525f));
    let var_1 = Struct_3(func_6(Struct_5(all(vec2<bool>(arg_1.x, false)), Struct_3(arg_2, _wgslsmith_f_op_vec2_f32(floor(var_0.xz)), _wgslsmith_f_op_f32(f32(-1f) * -840f), 4294967295u & u_input.a, arg_2), Struct_1(-1i, arg_2.a.b, vec4<bool>(arg_1.x, false, false, global0[_wgslsmith_index_u32(arg_0.x, 2u)])), _wgslsmith_f_op_f32(f32(-1f) * -193f)), !arg_2.a.c.yzw, vec2<u32>(1u, u_input.a), func_2(vec3<i32>(u_input.b.x << (4294967295u % 32u), 19790i, ~arg_2.a.a)).c), _wgslsmith_f_op_vec2_f32(vec2<f32>(1013f, -549f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1031f), var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xz))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-645f)), 589f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(337f)) * _wgslsmith_f_op_f32(var_0.x * var_0.x))))), 4294967295u, arg_2);
    global1 = _wgslsmith_f_op_f32(min(var_1.c, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1027f))));
    global0 = array<bool, 2>();
    return Struct_4(var_1.e.a, func_6(Struct_5(true, func_4(Struct_4(arg_2.a, Struct_2(arg_2.a, arg_2.a.b.x, arg_2.a.c.zzy)), Struct_3(Struct_2(Struct_1(arg_2.b, arg_2.a.b, vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.c.x, 2u)])), arg_2.b, var_1.a.c), var_0.zz, -165f, var_1.d, Struct_2(Struct_1(32931i, arg_2.a.b, var_1.a.a.c), -20960i, arg_2.c)), Struct_3(Struct_2(arg_2.a, u_input.b.x, vec3<bool>(false, arg_2.c.x, global0[_wgslsmith_index_u32(706u, 2u)])), vec2<f32>(var_1.b.x, var_0.x), var_0.x, 33262u, Struct_2(var_1.a.a, -30370i, var_1.e.c))), arg_2.a, -1122f), vec3<bool>(false, _wgslsmith_f_op_f32(var_0.x * -473f) > _wgslsmith_f_op_f32(-var_0.x), !arg_1.x), ~(~(~vec2<u32>(11874u, 93418u))), vec4<bool>(var_1.a.a.c.x, all(select(vec3<bool>(arg_2.c.x, false, arg_1.x), vec3<bool>(true, arg_2.c.x, arg_2.a.c.x), false)), true, var_1.e.a.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    global1 = 2702f;
    global0 = array<bool, 2>();
    let var_1 = func_7(_wgslsmith_mod_vec3_u32(~abs(vec3<u32>(1264u, u_input.c.x, u_input.c.x)), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(u_input.c.x, u_input.a, 65711u)), vec3<u32>(u_input.a, 89696u, 39222u))) & firstLeadingBit(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(103199u, u_input.a, u_input.a) ^ vec3<u32>(4294967295u, u_input.c.x, 50375u))), !(!select(select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], true), true), select(vec2<bool>(false, true), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)]), global0[_wgslsmith_index_u32(77214u, 2u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), true))), func_6(Struct_5(true, Struct_3(Struct_2(Struct_1(u_input.b.x, vec4<i32>(31539i, var_0, u_input.b.x, -28389i), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], false, false, true)), u_input.b.x, vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(25129u, 2u)], false)), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(11328i, vec4<i32>(u_input.b.x, u_input.b.x, -20282i, var_0), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], true, false)), Struct_5(false, Struct_3(Struct_2(Struct_1(var_0, vec4<i32>(1364i, var_0, -4062i, 51653i), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], true)), var_0, vec3<bool>(global0[_wgslsmith_index_u32(38535u, 2u)], true, false)), vec2<f32>(710f, 1060f), -614f, u_input.c.x, Struct_2(Struct_1(28772i, vec4<i32>(2147483647i, -63499i, -74400i, 33054i), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], false, false, true)), -1i, vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 2u)]))), Struct_1(4321i, vec4<i32>(var_0, 0i, var_0, -1390i), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(u_input.a, 2u)])), 1437f), Struct_1(2147483647i, vec4<i32>(0i, -6708i, var_0, var_0), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], false, false, true)), u_input.a)), _wgslsmith_f_op_f32(select(-263f, 454f, true)), ~u_input.c.x, Struct_2(Struct_1(-2147483647i, vec4<i32>(var_0, var_0, 0i, 32610i), vec4<bool>(false, false, true, false)), u_input.b.x, vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 2u)], false))), func_4(Struct_4(Struct_1(var_0, vec4<i32>(2147483647i, var_0, var_0, -37647i), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], true, true, false)), Struct_2(Struct_1(-9588i, vec4<i32>(0i, -14924i, -9364i, var_0), vec4<bool>(global0[_wgslsmith_index_u32(1u, 2u)], true, global0[_wgslsmith_index_u32(1u, 2u)], true)), u_input.b.x, vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)]))), func_4(Struct_4(Struct_1(u_input.b.x, vec4<i32>(var_0, var_0, -1i, u_input.b.x), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)], true, global0[_wgslsmith_index_u32(99849u, 2u)])), Struct_2(Struct_1(21463i, vec4<i32>(var_0, 2147483647i, u_input.b.x, 4373i), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], true)), var_0, vec3<bool>(false, global0[_wgslsmith_index_u32(76201u, 2u)], global0[_wgslsmith_index_u32(52059u, 2u)]))), Struct_3(Struct_2(Struct_1(var_0, vec4<i32>(u_input.b.x, 2147483647i, var_0, var_0), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], true, global0[_wgslsmith_index_u32(1u, 2u)], false)), u_input.b.x, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], false, global0[_wgslsmith_index_u32(u_input.a, 2u)])), vec2<f32>(-400f, -1226f), -368f, 1u, Struct_2(Struct_1(u_input.b.x, vec4<i32>(1i, -44138i, u_input.b.x, -8712i), vec4<bool>(global0[_wgslsmith_index_u32(54136u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(20281u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)])), u_input.b.x, vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)]))), Struct_3(Struct_2(Struct_1(-1i, vec4<i32>(u_input.b.x, -1i, 0i, var_0), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(1u, 2u)])), u_input.b.x, vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], true, true)), vec2<f32>(-1000f, 367f), -1000f, u_input.a, Struct_2(Struct_1(u_input.b.x, vec4<i32>(44322i, 13594i, 52273i, 291i), vec4<bool>(true, false, true, false)), 1i, vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 2u)], true)))), Struct_3(Struct_2(Struct_1(u_input.b.x, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(27732u, 2u)], false, global0[_wgslsmith_index_u32(1u, 2u)])), u_input.b.x, vec3<bool>(global0[_wgslsmith_index_u32(69624u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)])), vec2<f32>(-390f, -1000f), 143f, u_input.c.x, Struct_2(Struct_1(0i, vec4<i32>(u_input.b.x, -6341i, -16884i, var_0), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)], false)), 2147483647i, vec3<bool>(global0[_wgslsmith_index_u32(35083u, 2u)], true, global0[_wgslsmith_index_u32(6212u, 2u)])))).e.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(368f - 573f)))), select(vec3<bool>(!global0[_wgslsmith_index_u32(u_input.c.x, 2u)], true, true), !(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 2u)])), true), _wgslsmith_div_vec2_u32(abs(_wgslsmith_div_vec2_u32(u_input.c, u_input.c)), u_input.c), vec4<bool>(true || !global0[_wgslsmith_index_u32(23092u, 2u)], false, true, _wgslsmith_mult_u32(5591u, u_input.c.x) != firstLeadingBit(u_input.a))));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(func_6(Struct_5(false, Struct_3(Struct_2(Struct_1(var_0, var_1.b.a.b, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], true, var_1.b.c.x, false)), -1i, vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], var_1.a.c.x, false)), vec2<f32>(-413f, -1000f), -268f, u_input.a, var_1.b), var_1.b.a, 1564f), vec3<bool>(global0[_wgslsmith_index_u32(67731u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], false), u_input.c, vec4<bool>(global0[_wgslsmith_index_u32(28317u, 2u)], var_1.b.a.c.x, var_1.b.a.c.x, global0[_wgslsmith_index_u32(u_input.a, 2u)])).a, Struct_5(global0[_wgslsmith_index_u32(0u, 2u)], Struct_3(var_1.b, vec2<f32>(1000f, 107f), -512f, u_input.c.x, var_1.b), Struct_1(u_input.b.x, var_1.a.b, vec4<bool>(true, var_1.a.c.x, true, var_1.b.c.x)), -147f), Struct_1(u_input.b.x, vec4<i32>(-1i, -58898i, u_input.b.x, var_1.a.b.x), vec4<bool>(var_1.a.c.x, var_1.b.c.x, var_1.a.c.x, true)), ~0u)).x)), 114f);
    var var_2 = ~vec2<i32>(_wgslsmith_clamp_i32(50556i, abs(-1i), select(reverseBits(var_1.b.a.b.x), var_1.b.a.a, func_6(Struct_5(var_1.a.c.x, Struct_3(var_1.b, vec2<f32>(120f, -2065f), -991f, 44799u, var_1.b), var_1.b.a, -1406f), var_1.a.c.xzy, vec2<u32>(0u, 52556u), vec4<bool>(false, var_1.b.a.c.x, global0[_wgslsmith_index_u32(u_input.a, 2u)], false)).c.x)), 1i);
    var_2 = firstLeadingBit(_wgslsmith_div_vec2_i32(u_input.b, ~u_input.b));
    let var_3 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, _wgslsmith_mod_u32(u_input.c.x, 4294967295u), _wgslsmith_add_u32(u_input.c.x, u_input.a)), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(78950u, 1u, u_input.c.x), vec3<u32>(u_input.c.x, 4294967295u, 9448u) << (vec3<u32>(1u, 4294967295u, 109120u) % vec3<u32>(32u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, 13191u), firstLeadingBit(vec3<u32>(1u, u_input.c.x, u_input.c.x)))));
    global1 = _wgslsmith_f_op_f32(sign(308f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~var_3 ^ (vec3<u32>(0u, u_input.a, u_input.a) ^ _wgslsmith_clamp_vec3_u32(var_3, vec3<u32>(13475u, u_input.c.x, u_input.a), var_3)), countOneBits(var_3 ^ var_3)), -(vec4<i32>(-1i) * -var_1.b.a.b) ^ _wgslsmith_mult_vec4_i32(func_2(var_1.a.b.xyx).b, vec4<i32>(-2147483647i & u_input.b.x, var_0 >> (u_input.c.x % 32u), -u_input.b.x, u_input.b.x)));
}

