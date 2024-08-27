struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<bool>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    global0 = array<bool, 4>();
    var var_0 = _wgslsmith_add_vec4_u32((~vec4<u32>(4294967295u, 1u, arg_0.b.x, 30950u) ^ ~arg_0.b) >> (_wgslsmith_div_vec4_u32(~(vec4<u32>(1u, u_input.b, 15249u, u_input.a.x) | vec4<u32>(1u, 1u, 45077u, arg_0.b.x)), vec4<u32>(arg_0.d, abs(u_input.c), _wgslsmith_div_u32(30733u, arg_0.d), ~arg_0.b.x)) % vec4<u32>(32u)), abs(arg_0.b));
    var_0 = arg_0.b;
    var var_1 = 2861u;
    return _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(arg_0.e.c, ~vec4<i32>(_wgslsmith_sub_i32(1i, arg_0.e.a.x), arg_0.e.c.x, 2147483647i, -2147483647i)), vec4<i32>(abs(-(-2147483647i | arg_0.e.c.x)), arg_0.a.a.c.x, -(i32(-1i) * -98449i), -(~1i)));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    global0 = array<bool, 4>();
    let var_0 = any(!vec2<bool>(!global0[_wgslsmith_index_u32(u_input.a.x, 4u)], arg_0));
    let var_1 = 1u;
    var var_2 = _wgslsmith_f_op_f32(-2297f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1170f))))), -1606f, !(true && !arg_0))));
    var var_3 = Struct_2(Struct_1(func_3(Struct_3(Struct_2(Struct_1(vec4<i32>(9461i, -22025i, 0i, 1i), vec3<bool>(false, true, true), vec4<i32>(-17481i, 0i, -47203i, -38798i), vec3<bool>(true, true, true))), ~vec4<u32>(1u, var_1, var_1, 5605u), !vec3<bool>(arg_0, false, arg_0), _wgslsmith_mult_u32(0u, 14604u), Struct_1(vec4<i32>(2147483647i, 2147483647i, -2147483647i, 0i), vec3<bool>(var_0, true, false), vec4<i32>(-6247i, 1i, 19231i, -33354i), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], arg_0, var_0)))), select(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 4u)], arg_0), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(1600u, 4u)], var_0), vec3<bool>(global0[_wgslsmith_index_u32(39929u, 4u)], true, false)), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 4u)], false), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 4u)]), vec3<bool>(true, false, true), var_0), select(vec3<bool>(arg_0, global0[_wgslsmith_index_u32(3935u, 4u)], var_0), vec3<bool>(var_0, false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 4u)], true))), false), ~vec4<i32>(firstLeadingBit(-2147483647i), i32(-1i) * -2147483647i, i32(-1i) * -29647i, _wgslsmith_sub_i32(17491i, 2147483647i)), vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, var_0), vec2<bool>(var_0, true))), all(vec2<bool>(true, false)), all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 4u)], arg_0, var_0)) | var_0)));
    return vec3<bool>((any(select(var_3.a.d, var_3.a.d, var_3.a.d.x)) && true) && any(vec3<bool>(var_0 || true, true, arg_0)), true, true && (true == any(!var_3.a.d.xy)));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(Struct_1((vec4<i32>(17316i, -1i, -19131i, 1i) << (vec4<u32>(26491u, 46960u, u_input.a.x, 4294967295u) % vec4<u32>(32u))) >> (max(vec4<u32>(u_input.b, 8445u, 1u, u_input.b), vec4<u32>(1u, 59833u, u_input.b, u_input.c)) % vec4<u32>(32u)), vec3<bool>(u_input.c <= u_input.a.x, select(false, false, false), global0[_wgslsmith_index_u32(54841u, 4u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(-49527i, -1i, -1i, 23264i), -vec4<i32>(-23434i, -5261i, 12426i, -2147483647i)), !(!arg_0.yzy))), ~(~(vec4<u32>(u_input.a.x, 56651u, u_input.b, u_input.c) | ~vec4<u32>(1u, 96530u, u_input.a.x, u_input.c))), select(vec3<bool>(true, global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(13426u, 39040u), 4u)], any(arg_0)), select(arg_0.zxy, select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 4u)]), func_2(global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), select(false, global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(7536u, 4u)])), select(vec3<bool>(true, global0[_wgslsmith_index_u32(45264u, 4u)], false), arg_0.xwz, arg_0.wyw)), arg_0.xxz), _wgslsmith_mult_u32(select(0u, min(17442u, u_input.b ^ u_input.a.x), true), u_input.b), Struct_1(firstTrailingBit(abs(firstLeadingBit(vec4<i32>(-2147483647i, 51206i, -2147483647i, 30442i)))), arg_0.zyz, vec4<i32>(1i, 1i, 1i, 1i), !arg_0.xyz));
    var var_1 = -748f;
    var_1 = 381f;
    global0 = array<bool, 4>();
    let var_2 = Struct_1(~reverseBits(~_wgslsmith_clamp_vec4_i32(var_0.e.c, var_0.e.c, var_0.e.c)), !vec3<bool>(arg_0.x, true, any(vec3<bool>(arg_0.x, false, true))), select(var_0.e.a, var_0.e.c, vec4<bool>(var_0.e.b.x, false, (var_0.e.c.x <= 34801i) || any(arg_0.yy), false)), select(!arg_0.zyx, vec3<bool>(all(arg_0), true, arg_0.x), !arg_0.x));
    return var_0.a;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = ~arg_0.x;
    var_0 = arg_0.x;
    var var_1 = abs(-vec3<i32>(arg_0.x, abs(~0i), 1i));
    let var_2 = func_4(select(vec4<bool>(global0[_wgslsmith_index_u32(~(~u_input.a.x), 4u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 4u)] | true, any(vec4<bool>(true, true, true, true)), all(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]))), vec4<bool>(true, true, true, all(vec4<bool>(global0[_wgslsmith_index_u32(19780u, 4u)], true, global0[_wgslsmith_index_u32(1u, 4u)], true))), all(!func_2(true))), -1459f);
    let var_3 = Struct_3(var_2, select(_wgslsmith_clamp_vec4_u32(~countOneBits(vec4<u32>(4294967295u, u_input.c, 27232u, u_input.a.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 0u, u_input.b, 80001u), reverseBits(vec4<u32>(u_input.c, u_input.c, 1u, 119158u)), _wgslsmith_mult_vec4_u32(vec4<u32>(33934u, 59024u, u_input.b, 4294967295u), vec4<u32>(u_input.c, u_input.b, u_input.a.x, u_input.b))), vec4<u32>(_wgslsmith_mod_u32(u_input.c, u_input.a.x), u_input.b, 1u, 8581u)), ~countOneBits(~vec4<u32>(90667u, u_input.c, 0u, u_input.b)), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 4u)] != (any(var_2.a.d.xx) || var_2.a.b.x)), vec3<bool>((!global0[_wgslsmith_index_u32(18070u, 4u)] == false) || func_4(select(vec4<bool>(true, var_2.a.b.x, var_2.a.b.x, true), vec4<bool>(true, false, false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], var_2.a.b.x)), _wgslsmith_f_op_f32(ceil(384f))).a.b.x, select(true, !select(global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(38071u, 4u)]), any(!vec4<bool>(var_2.a.d.x, global0[_wgslsmith_index_u32(0u, 4u)], var_2.a.d.x, true))), !select(u_input.b == u_input.a.x, 4294967295u > u_input.a.x, all(vec3<bool>(false, false, var_2.a.b.x)))), _wgslsmith_dot_vec3_u32(abs((vec3<u32>(27965u, 41060u, u_input.c) | vec3<u32>(1u, u_input.c, u_input.c)) & reverseBits(vec3<u32>(105710u, u_input.c, u_input.b))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(87711u, u_input.a.x, 28159u), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, u_input.a.x, u_input.c)), vec3<u32>(u_input.b, u_input.c, 0u)), reverseBits(~vec3<u32>(7663u, u_input.a.x, u_input.c)))), func_4(select(!(!vec4<bool>(false, false, var_2.a.b.x, var_2.a.d.x)), vec4<bool>(true, true, var_2.a.b.x, var_2.a.d.x), true), _wgslsmith_f_op_f32(-1751f - -559f)).a);
    return Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_1.x, arg_0.x, var_3.e.c.x, 2147483647i), vec4<i32>(-1i) * -var_2.a.c), var_3.e.d, var_2.a.c, vec3<bool>(true, any(var_3.e.b) && (var_2.a.d.x && false), !var_2.a.d.x)));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = !select(!func_4(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_1, arg_2.d.x, true, global0[_wgslsmith_index_u32(u_input.b, 4u)]), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.a.x, 4u)])), _wgslsmith_f_op_f32(round(-1870f))).a.d.zz, arg_0.a.d.yz, ~(~u_input.a.x) == ~4294967295u);
    var_0 = func_4(select(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 4u)], false, arg_1, true), vec4<bool>(false, true, arg_2.d.x, true), false), select(vec4<bool>(arg_2.d.x, true, arg_2.d.x, global0[_wgslsmith_index_u32(0u, 4u)]), vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.b, 4u)], false, arg_0.a.d.x), vec4<bool>(var_0.x, false, arg_1, true)), !arg_1), select(!vec4<bool>(false, false, true, arg_0.a.b.x), vec4<bool>(arg_2.b.x, arg_0.a.d.x, true, false), false), !arg_1), vec4<bool>(!(!arg_1), global0[_wgslsmith_index_u32(~u_input.a.x, 4u)] & false, true, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-435f, 390f, arg_2.d.x)) - _wgslsmith_f_op_f32(-599f * -1000f)) >= _wgslsmith_f_op_f32(f32(-1f) * -618f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1387f * 1408f)) + _wgslsmith_f_op_f32(1529f * _wgslsmith_f_op_f32(max(159f, 1195f)))), 1f)).a.b.zz;
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(-(~20741i), i32(-1i) * -arg_0.a.c.x, 2147483647i), -(~(-vec3<i32>(1i, arg_2.a.x, -68127i) << (firstLeadingBit(vec3<u32>(u_input.b, 5646u, 259u)) % vec3<u32>(32u)))));
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(30079u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, 1u, 22153u, var_2.x), ~vec4<u32>(u_input.c, 4294967295u, var_2.x, 1u)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(64088u, 32896u, 58780u)), max(vec3<u32>(var_2.x, 8743u, 4294967295u), vec3<u32>(u_input.c, 125004u, 20525u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, firstLeadingBit(var_2.x), var_2.x), ~(vec3<u32>(0u, 14375u, 87782u) << (vec3<u32>(var_2.x, 4294967295u, var_2.x) % vec3<u32>(32u))))) ^ u_input.a.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(-611f, 1000f))) * _wgslsmith_f_op_f32(1205f - _wgslsmith_f_op_f32(floor(-1267f))))), -809f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(816f, _wgslsmith_f_op_f32(func_5(func_1(vec2<i32>(1i, 1i)), all(func_2(true).yy), func_1(vec2<i32>(15931i, 0i)).a))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -475f), -1064f, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]))))));
    global0 = array<bool, 4>();
    var var_1 = select(vec4<u32>(_wgslsmith_clamp_u32(~u_input.b, u_input.c, _wgslsmith_sub_u32(u_input.a.x, 4294967295u)), u_input.b, u_input.c, u_input.b) & ~vec4<u32>(96034u ^ u_input.b, u_input.c, 1u, select(74282u, 4294967295u, false)), vec4<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 93517u), vec3<u32>(4294967295u, u_input.c, u_input.a.x))), _wgslsmith_mult_u32(~u_input.b ^ u_input.c, u_input.a.x), u_input.c, firstLeadingBit(select(~14262u, ~u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]))), var_0.x == _wgslsmith_f_op_f32(func_5(Struct_2(func_4(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(u_input.b, 4u)], true, global0[_wgslsmith_index_u32(0u, 4u)]), var_0.x).a), !(!global0[_wgslsmith_index_u32(0u, 4u)]), Struct_1(-vec4<i32>(19331i, -5952i, -2147483647i, 1i), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 4u)], false), func_3(Struct_3(Struct_2(Struct_1(vec4<i32>(-36313i, -2147483647i, -2147483647i, 10712i), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 4u)], true, true), vec4<i32>(2147483647i, -1i, 0i, -2147483647i), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], true))), vec4<u32>(4294967295u, u_input.c, u_input.b, 1u), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], true, global0[_wgslsmith_index_u32(0u, 4u)]), u_input.c, Struct_1(vec4<i32>(2147483647i, 2147483647i, 2147483647i, 1i), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec4<i32>(-1i, -1i, 41676i, 62569i), vec3<bool>(global0[_wgslsmith_index_u32(72842u, 4u)], false, true)))), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], true)))));
    let var_2 = firstLeadingBit(~min(vec3<i32>(1i, 1i, 1i), ~(~vec3<i32>(-1i, -24376i, -16374i))));
    let var_3 = func_1(var_2.zx).a;
    global0 = array<bool, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(-576f);
}

