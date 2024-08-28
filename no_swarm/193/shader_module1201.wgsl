struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(18142i, -1i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1() -> u32 {
    return ~(~0u);
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(745f, -2025f, 825f, 637f) + vec4<f32>(463f, -742f, -994f, 740f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-100f, 288f, 1060f, 897f), vec4<f32>(-457f, 869f, -1000f, -1820f), vec4<bool>(false, false, true, true))))))), select(-31028i, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(global0.x, arg_0, arg_0, -2147483647i)), -vec4<i32>(0i, u_input.d.x, -15077i, 2147483647i)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(912f + 305f) + -1130f)) - 480f), 538f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(227f, -1781f)), _wgslsmith_f_op_f32(-1107f - -587f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1452f * -287f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(3140f, -330f, true))))));
    var var_1 = all(!vec3<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), true));
    var var_2 = u_input.b;
    var_1 = true;
    var_2 = u_input.b ^ func_1();
    return -_wgslsmith_dot_vec4_i32(select(countOneBits(u_input.d), select(vec4<i32>(arg_0, 0i, var_0.b, 0i), abs(u_input.d), true), vec4<bool>(true, true, true, true)), select(countOneBits(firstTrailingBit(vec4<i32>(global0.x, 1i, -1i, u_input.d.x))), countOneBits(vec4<i32>(global0.x, 2147483647i, 3192i, global0.x)), true));
}

fn func_2(arg_0: i32) -> Struct_3 {
    return Struct_3(true, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-178f, -1012f, 2214f, -1717f))), -func_3(global0.x), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-660f + 419f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -468f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(294f, -572f, -450f), vec3<f32>(926f, 1357f, 541f), vec3<bool>(true, true, true))))))));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = func_2(firstTrailingBit(1942i)).b;
    let var_1 = Struct_3(any(!arg_1.xy) || all(select(arg_1, vec4<bool>(false, arg_1.x, arg_2.a, arg_2.a), arg_1)), arg_2.b, var_0.a.a.zxw);
    let var_2 = _wgslsmith_mod_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, 9129u, u_input.a), vec4<u32>(11039u, 1u, u_input.b, u_input.c.x))) & _wgslsmith_div_vec4_u32(~vec4<u32>(100374u, 4639u, 4294967295u, 55511u), abs(vec4<u32>(18133u, 11112u, 31612u, u_input.b))), ~_wgslsmith_sub_vec4_u32(max(vec4<u32>(u_input.c.x, u_input.b, u_input.b, 21907u), vec4<u32>(0u, u_input.a, 104294u, u_input.b)), vec4<u32>(6414u, u_input.b, u_input.a, u_input.c.x))) >> (vec4<u32>((_wgslsmith_mult_u32(u_input.c.x, u_input.a) >> (firstTrailingBit(u_input.c.x) % 32u)) | 0u, u_input.b, u_input.b, _wgslsmith_dot_vec4_u32(reverseBits(countOneBits(vec4<u32>(26908u, u_input.c.x, u_input.b, 0u))), vec4<u32>(u_input.c.x, 0u, u_input.a, 68393u) >> (~vec4<u32>(0u, 78927u, 1u, u_input.c.x) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1606f, var_0.a.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1797f * var_1.c.x), arg_3.x)), arg_1.x)) == _wgslsmith_f_op_f32(max(1436f, _wgslsmith_f_op_f32(-var_0.a.e))), Struct_2(arg_2.b.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.a.a.wwz - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_2.b.a.e, arg_2.b.a.d))), _wgslsmith_div_vec3_f32(arg_2.c, vec3<f32>(1000f, _wgslsmith_f_op_f32(max(-291f, 1416f)), 1f)), any(!select(arg_1.zy, arg_1.xy, arg_1.zw)))));
    var_0 = Struct_2(func_2(~arg_0).b.a);
    return func_2(var_3.b.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(max(~vec2<i32>(u_input.d.x, -40524i), u_input.d.yz), u_input.d.xy), _wgslsmith_mod_vec2_i32(u_input.d.xw & u_input.d.zy, vec2<i32>(_wgslsmith_div_i32(-9413i, -2147483647i), u_input.d.x << (u_input.a % 32u))));
    var var_0 = !select(vec4<bool>(any(vec2<bool>(false, true)) == true, true, true, true), vec4<bool>(!any(vec2<bool>(false, false)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), all(vec2<bool>(false, true)), all(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec3<bool>(true, false, true)), true, any(vec4<bool>(true, false, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(466f * -730f))))));
    let var_2 = func_4(1i, select(vec4<bool>(true, var_0.x, true, any(vec4<bool>(true, true, false, var_0.x))), !select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), any(var_0.wzx)), (1u > func_1()) != false), func_2(38799i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(select(var_1, var_1, var_0.x)), var_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(824f, var_1))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(665f, var_1))))));
    var var_3 = var_2;
    var_0 = !vec4<bool>(!var_0.x, select(all(vec2<bool>(var_2.a, false)), all(!var_0.zyw), true), -u_input.d.x > u_input.d.x, func_2(abs(global0.x | 26339i)).a);
    var_0 = select(select(!select(vec4<bool>(var_3.a, var_3.a, var_0.x, true), select(vec4<bool>(var_0.x, var_3.a, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, false, var_3.a, true)), !vec4<bool>(var_3.a, var_2.a, true, true)), select(!vec4<bool>(var_3.a, true, var_2.a, true), vec4<bool>(2147483647i == u_input.d.x, func_4(1i, vec4<bool>(var_2.a, true, var_2.a, var_2.a), var_2, vec2<f32>(var_1, var_1)).a, select(var_3.a, false, true), var_3.b.a.b != var_3.b.a.b), false), true), vec4<bool>(func_4(_wgslsmith_div_i32(global0.x, u_input.d.x) >> (countOneBits(19887u) % 32u), select(!vec4<bool>(var_2.a, true, var_3.a, var_0.x), !vec4<bool>(var_0.x, var_2.a, false, var_3.a), !var_2.a), func_2(max(-12728i, 2147483647i)), vec2<f32>(var_1, _wgslsmith_f_op_f32(-var_1))).a, var_2.a, false, all(!select(vec4<bool>(true, var_3.a, var_2.a, false), vec4<bool>(true, false, false, false), var_3.a))), !vec4<bool>(var_0.x, var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1854f) > _wgslsmith_f_op_f32(var_1 + -1146f), func_4(global0.x, !vec4<bool>(var_3.a, var_2.a, false, var_0.x), var_2, _wgslsmith_f_op_vec2_f32(var_2.b.a.a.zy + vec2<f32>(1000f, -947f))).a));
    let var_4 = func_4(_wgslsmith_dot_vec3_i32((u_input.d.yxw ^ _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 36441i, u_input.d.x), vec3<i32>(u_input.d.x, global0.x, u_input.d.x))) >> (vec3<u32>(~14159u, u_input.c.x, 0u) % vec3<u32>(32u)), vec3<i32>(~_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(1i, -9590i, 0i, 0i)), u_input.d.x, 1i)), vec4<bool>(((300f < var_3.b.a.d) & (65289u != u_input.c.x)) == ((u_input.c.x << (1u % 32u)) < ~8451u), true, false, any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(var_2.a, false, var_3.a, var_2.a), vec4<bool>(false, false, false, true)), !vec4<bool>(false, var_3.a, var_0.x, false), 1000f == var_2.c.x))), Struct_3(func_2(2147483647i).a, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(var_3.b.a.a)), var_2.b.a.b, 890f, var_2.b.a.d, _wgslsmith_f_op_f32(var_2.b.a.c * -445f))), var_3.c), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1, -2220f), vec2<f32>(var_2.c.x, -101f))) - vec2<f32>(-1343f, -501f)), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.c.x), -435f)))))).b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.a.x)))) + _wgslsmith_f_op_f32(abs(-1413f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x - var_2.c.x) * -436f), _wgslsmith_f_op_f32(max(-750f, _wgslsmith_f_op_f32(round(667f)))), -2113f) - _wgslsmith_f_op_vec4_f32(min(var_2.b.a.a, _wgslsmith_f_op_vec4_f32(var_4.a * vec4<f32>(266f, var_4.e, var_1, 939f))))), (abs(u_input.d.xw) & u_input.d.xz) >> (vec2<u32>(_wgslsmith_mod_u32(u_input.b, 12002u) | firstLeadingBit(u_input.a), u_input.c.x) % vec2<u32>(32u)), firstTrailingBit(func_4(2147483647i, !vec4<bool>(var_3.a, true, var_2.a, var_0.x), func_2(50017i), var_4.a.yy).b.a.b << (1u % 32u)), countOneBits(~u_input.c));
}

