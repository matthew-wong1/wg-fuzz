struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(-6692i, -33885i, 3651i, -23758i, 2147483647i, 0i, 1i, -31113i, 0i, 1i);

var<private> global1: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(2147483647i, -8290i, 6791i), vec3<i32>(-18824i, -1i, 2147483647i), vec3<i32>(7043i, -46319i, -47727i), vec3<i32>(52346i, 2147483647i, 0i), vec3<i32>(56384i, -4460i, 0i), vec3<i32>(10951i, i32(-2147483648), 1i), vec3<i32>(-74574i, 2953i, 28267i), vec3<i32>(-29869i, -6431i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(i32(-2147483648), 59329i, 14380i), vec3<i32>(1i, 1i, 54192i), vec3<i32>(-1i, 2147483647i, 8833i), vec3<i32>(-6786i, 0i, -264i), vec3<i32>(-1i, i32(-2147483648), 12846i), vec3<i32>(i32(-2147483648), -9738i, 12121i), vec3<i32>(-13327i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, 1471i, -55893i), vec3<i32>(0i, 957i, 19486i), vec3<i32>(-45635i, -42026i, 1i), vec3<i32>(0i, 11868i, 2147483647i), vec3<i32>(-8001i, -23378i, i32(-2147483648)), vec3<i32>(29795i, 0i, 31693i), vec3<i32>(-14052i, 1i, 1i), vec3<i32>(0i, 1i, 0i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>) -> vec3<i32> {
    let var_0 = Struct_1(0u);
    let var_1 = vec2<bool>(true, true);
    let var_2 = !(!var_1);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - arg_1), 2189f);
    var var_4 = var_2;
    return -vec3<i32>(global0[_wgslsmith_index_u32(3639u, 10u)], -1i, u_input.d);
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>) -> vec3<f32> {
    global0 = array<i32, 10>();
    let var_0 = Struct_5(func_3(Struct_1(6687u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1172f)), 1f)), ~(~(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u) >> (vec4<u32>(0u, u_input.b.x, 0u, 24184u) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(420f, -1261f, 1544f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(451f, 1434f, 580f), vec3<f32>(719f, 363f, -360f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(274f, 185f, 929f)))))), i32(-1i) * -8211i, vec4<i32>(33573i, max(-global0[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 20997i, 1i, 1i), vec4<i32>(12667i, 0i, u_input.c.x, global0[_wgslsmith_index_u32(u_input.b.x, 10u)]))), ~0i, min(-13918i, -1i)) | abs(select(reverseBits(vec4<i32>(u_input.c.x, u_input.a, 31258i, 2147483647i)), max(vec4<i32>(1532i, -30490i, global0[_wgslsmith_index_u32(u_input.b.x, 10u)], u_input.e), vec4<i32>(2147483647i, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)])), select(vec4<bool>(arg_1.x, arg_0.a.x, true, arg_0.b), arg_1, arg_0.a.x))));
    global0 = array<i32, 10>();
    let var_1 = _wgslsmith_f_op_vec3_f32(round(var_0.b));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_1.x, var_0.b.x) * vec3<f32>(1721f, var_0.b.x, var_1.x))), var_0.b), var_1)));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32) -> vec4<u32> {
    global0 = array<i32, 10>();
    global1 = array<vec3<i32>, 24>();
    global0 = array<i32, 10>();
    var var_0 = arg_0;
    global0 = array<i32, 10>();
    return vec4<u32>(u_input.b.x | (arg_2 ^ ~_wgslsmith_mult_u32(u_input.b.x, 1u)), 4294967295u, u_input.b.x, 42623u);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = ~abs(vec4<i32>(~global0[_wgslsmith_index_u32(~u_input.b.x, 10u)], 0i, select(44783i, _wgslsmith_dot_vec2_i32(u_input.c, u_input.c), false), -countOneBits(0i)));
    global0 = array<i32, 10>();
    var var_1 = Struct_1(1u << (u_input.b.x % 32u));
    let var_2 = ~((countOneBits(vec4<u32>(0u, 8233u, 6386u, var_1.a) | u_input.b) | (firstTrailingBit(vec4<u32>(u_input.b.x, var_1.a, 4294967295u, 4294967295u)) | ~vec4<u32>(0u, var_1.a, u_input.b.x, u_input.b.x))) & func_4(Struct_2(-var_0.x, arg_0, _wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec3<bool>(true, true, false), true), vec4<bool>(false, false, false, false)))), reverseBits(~vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(1u, 10u)], -6731i, 16221i)), 9577u));
    let var_3 = Struct_2(_wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(var_0, vec4<i32>(global0[_wgslsmith_index_u32(var_2.x, 10u)], u_input.c.x, -2046i, -51902i)), ~vec4<i32>(global0[_wgslsmith_index_u32(var_2.x, 10u)], 1i, u_input.e, 2147483647i)), _wgslsmith_div_i32(min(u_input.c.x, _wgslsmith_add_i32(-23677i, global0[_wgslsmith_index_u32(var_2.x, 10u)])), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.e, var_0.x), u_input.c))), _wgslsmith_f_op_f32(210f - _wgslsmith_f_op_f32(trunc(arg_0))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-611f, arg_0, arg_0)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 229f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(floor(1073f))) * vec3<f32>(arg_0, _wgslsmith_div_f32(arg_0, arg_0), arg_0))));
    return Struct_2(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-529f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b))) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(min(123f, var_3.b))), var_3.c.x))), vec3<f32>(var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec3<bool>(true, true, true), true), vec4<bool>(false, true, false, true))).x, _wgslsmith_f_op_f32(543f - var_3.c.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(378f - -1236f), var_3.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-427f, arg_0)), var_3.c.x != _wgslsmith_f_op_f32(-arg_0)))));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = func_3(Struct_1(u_input.b.x), _wgslsmith_f_op_f32(min(2026f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), func_4(Struct_2(u_input.c.x, _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(255f, arg_0.c.x, -267f), vec3<f32>(arg_0.b, -1821f, arg_0.c.x), vec3<bool>(false, true, arg_1)))), -(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], 32253i, 17756i, -2147483647i) | vec4<i32>(u_input.c.x, 11862i, u_input.d, global0[_wgslsmith_index_u32(u_input.b.x, 10u)])), 98840u)).x ^ arg_0.a;
    let var_1 = all(!vec2<bool>(!arg_1 && true, global0[_wgslsmith_index_u32(u_input.b.x, 10u)] != func_1(-384f).a));
    let var_2 = Struct_2(arg_0.a, 1303f, vec3<f32>(-930f, 1500f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec3<bool>(true, true, arg_1), var_1), !vec4<bool>(var_1, false, arg_1, var_1))).x)));
    let var_3 = ~vec4<i32>(~(-_wgslsmith_div_i32(-1i, -1i)), var_2.a, countOneBits(_wgslsmith_mult_i32(-u_input.c.x, ~var_0)), 2147483647i ^ -reverseBits(var_0));
    var var_4 = vec3<u32>(~abs(u_input.b.x), ~(~u_input.b.x << (_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x)) % 32u)), ~1u);
    return Struct_1(~(~(~var_4.x ^ 0u)));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32, arg_3: vec3<bool>) -> Struct_2 {
    global1 = array<vec3<i32>, 24>();
    global0 = array<i32, 10>();
    let var_0 = vec3<bool>(false, all(!vec4<bool>(all(vec4<bool>(true, arg_3.x, arg_0.a.b, arg_0.a.b)), false, true, arg_0.a.a.x && false)), !all(!select(vec3<bool>(false, arg_0.a.a.x, arg_0.a.b), vec3<bool>(false, arg_3.x, arg_0.a.a.x), vec3<bool>(false, arg_0.a.a.x, false))));
    let var_1 = vec4<u32>(_wgslsmith_div_u32(1u, min(u_input.b.x, 1484u)), 46405u, u_input.b.x, ~(~arg_0.c.a));
    var var_2 = Struct_5(firstLeadingBit(_wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(~10166u, 24u)], min(firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 10u)], arg_0.b, arg_1.a)), abs(global1[_wgslsmith_index_u32(u_input.b.x, 24u)])))), arg_1.c, reverseBits(abs(firstTrailingBit(u_input.e))), ~vec4<i32>(-6755i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -58451i, u_input.c.x) >> (var_1.yww % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -14024i, arg_0.b), global1[_wgslsmith_index_u32(u_input.b.x, 24u)])), -57323i, arg_2));
    return func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.x;
    var var_1 = func_6(Struct_4(Struct_3(vec3<bool>(true, true, true), true), u_input.d, func_5(func_1(_wgslsmith_f_op_f32(max(1609f, 159f))), true)), Struct_2(reverseBits(_wgslsmith_div_i32(-1i, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], -27184i, u_input.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(493f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-498f, _wgslsmith_f_op_f32(round(1001f)), -1000f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1237f, -1618f))))), i32(-1i) * -_wgslsmith_mult_i32(~u_input.a, _wgslsmith_sub_i32(-1i, global0[_wgslsmith_index_u32(u_input.b.x, 10u)])), select(vec3<bool>(abs(-1i) == firstTrailingBit(-52453i), true, true), vec3<bool>(all(vec2<bool>(true, true)), true, true), false));
    var var_2 = 2147483647i;
    let var_3 = Struct_1(1u);
    var_1 = func_6(Struct_4(Struct_3(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), true), global0[_wgslsmith_index_u32(u_input.b.x, 10u)], var_3), Struct_2(-2147483647i, -976f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c - var_1.c)), vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(var_1.b * 1000f), _wgslsmith_f_op_f32(step(var_1.b, -1000f))))), ~2147483647i << (~(~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x)) % 32u), vec3<bool>(any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), true, true | all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(0u, 10u)], 2147483647i), vec2<i32>(2147483647i, var_1.a)) >> (~0u % 32u), -10375i), 363f, var_1.c.yx, vec2<i32>(global0[_wgslsmith_index_u32(var_3.a, 10u)], _wgslsmith_add_i32(u_input.c.x, 1i >> (u_input.b.x % 32u))), 0u);
}

