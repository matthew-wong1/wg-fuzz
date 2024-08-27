struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_3,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-1000f, -590f), vec2<f32>(1000f, -1482f), vec2<f32>(1000f, 287f), vec2<f32>(929f, -565f), vec2<f32>(-594f, -1016f), vec2<f32>(153f, -663f), vec2<f32>(-1423f, 360f), vec2<f32>(-1000f, 361f), vec2<f32>(256f, -188f), vec2<f32>(-1215f, -620f), vec2<f32>(-120f, -628f), vec2<f32>(-175f, -1609f), vec2<f32>(287f, 316f), vec2<f32>(607f, 579f), vec2<f32>(766f, -366f), vec2<f32>(2639f, 338f), vec2<f32>(1015f, -443f), vec2<f32>(361f, 1000f), vec2<f32>(585f, -727f), vec2<f32>(-1109f, 605f), vec2<f32>(-1132f, 186f), vec2<f32>(-788f, -2540f), vec2<f32>(504f, 1984f), vec2<f32>(1110f, 733f), vec2<f32>(-728f, 393f), vec2<f32>(1156f, 1310f), vec2<f32>(-537f, 388f), vec2<f32>(-1767f, -475f), vec2<f32>(551f, 1190f), vec2<f32>(-1745f, 271f));

var<private> global1: Struct_5;

var<private> global2: array<vec4<bool>, 8>;

var<private> global3: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_5 {
    let var_0 = false;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1786f, 1f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1005f)) * -979f)))), _wgslsmith_f_op_f32(1f - 1279f));
    global0 = array<vec2<f32>, 30>();
    global3 = 699f;
    var var_2 = select(u_input.b.x, countOneBits(12972u), !(-(~16963i) > abs(u_input.a.x)));
    return Struct_5(-673i);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_5, arg_3: f32) -> bool {
    global0 = array<vec2<f32>, 30>();
    global3 = arg_3;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_1.a, arg_1.a)) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.a.x)))) + -549f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3)) + _wgslsmith_f_op_f32(min(arg_3, arg_1.a.x))))));
    var var_1 = Struct_1(arg_0 != arg_0, max(vec4<u32>(~_wgslsmith_clamp_u32(42078u, arg_0, arg_0), arg_0, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 20747u, arg_0), u_input.b), arg_0), abs(abs(countOneBits(vec4<u32>(1u, arg_0, arg_0, arg_0))))));
    var var_2 = firstLeadingBit(-global1.a);
    return !(arg_3 != -1000f);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_2 {
    let var_0 = !select(vec3<bool>(func_3(countOneBits(arg_1.a.a.b.x), arg_1.e, func_2(), arg_1.e.a.x), true, true), !vec3<bool>(any(global2[_wgslsmith_index_u32(4294967295u, 8u)]), !arg_0.x, arg_1.b.x), true & any(!vec3<bool>(arg_1.a.a.a, true, false)));
    var var_1 = _wgslsmith_mod_u32(~(~(~35090u)), 1u);
    var var_2 = Struct_5(1i);
    let var_3 = _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_sub_i32(arg_1.d ^ -1i, u_input.a.x));
    global1 = Struct_5(_wgslsmith_add_i32(u_input.a.x & var_3, abs(_wgslsmith_add_i32(var_3, 62437i))));
    return Struct_2(Struct_1(select(arg_1.a.c.x, false || all(vec3<bool>(var_0.x, var_0.x, arg_0.x)), true), vec4<u32>(arg_1.a.a.b.x, ~(~1u), ~1u, u_input.b.x & _wgslsmith_dot_vec2_u32(arg_1.a.e.b.yy, vec2<u32>(66875u, u_input.b.x)))), _wgslsmith_div_vec4_i32(-(arg_1.a.d | vec4<i32>(global1.a, global1.a, arg_1.a.d.x, 0i)) & vec4<i32>(1i, u_input.a.x, 26670i, ~(-15949i)), -(-arg_1.a.b ^ vec4<i32>(global1.a, 2147483647i, var_3, arg_1.a.b.x))), vec2<bool>(true, arg_1.a.d.x > _wgslsmith_add_i32(~var_3, var_2.a)), ~(firstTrailingBit(~arg_1.a.d) ^ vec4<i32>(-13964i >> (u_input.b.x % 32u), firstLeadingBit(-1i), var_2.a, reverseBits(-2147483647i))), arg_1.a.a);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>) -> i32 {
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -913f) + _wgslsmith_f_op_f32(343f + arg_0))) - 346f)));
    let var_0 = vec4<f32>(arg_0, -870f, _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-arg_0))))));
    let var_1 = -abs(vec2<i32>(_wgslsmith_add_i32(u_input.a.x, firstLeadingBit(u_input.a.x)), -26605i));
    global1 = Struct_5(~(abs(_wgslsmith_mod_i32(global1.a, 69701i)) >> (reverseBits(arg_1.a.b.x) % 32u)));
    let var_2 = -170f;
    return _wgslsmith_dot_vec4_i32(func_1(select(func_1(arg_1.c, Struct_4(Struct_2(Struct_1(arg_1.a.a, vec4<u32>(59414u, 94723u, 0u, u_input.b.x)), arg_1.b, arg_1.c, arg_1.d, arg_1.a), vec2<bool>(arg_1.c.x, false), Struct_3(var_0), arg_1.b.x, Struct_3(vec4<f32>(815f, -373f, var_2, 1634f)))).c, arg_1.c, true && (var_1.x >= 2147483647i)), Struct_4(arg_1, select(vec2<bool>(arg_1.c.x, arg_1.e.a), func_1(arg_1.c, Struct_4(arg_1, vec2<bool>(true, arg_1.e.a), Struct_3(var_0), 0i, Struct_3(var_0))).c, all(vec3<bool>(true, arg_1.e.a, false))), Struct_3(var_0), -2147483647i >> (arg_2.x % 32u), Struct_3(_wgslsmith_f_op_vec4_f32(-var_0)))).b, ~vec4<i32>(-25680i, -1i, -arg_1.d.x, max(0i, 41326i << (u_input.b.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!(!global2[_wgslsmith_index_u32(_wgslsmith_add_u32(34973u, u_input.b.x), 8u)])));
    var var_1 = 1000f;
    global1 = Struct_5(min(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, u_input.a.x)), reverseBits(u_input.a.yy)), u_input.a.x) ^ min(global1.a, func_4(-683f, func_1(vec2<bool>(var_0, var_0), Struct_4(Struct_2(Struct_1(true, vec4<u32>(54954u, u_input.b.x, 1u, u_input.b.x)), vec4<i32>(-2147483647i, -41594i, u_input.a.x, -1i), vec2<bool>(true, true), vec4<i32>(28021i, 5345i, u_input.a.x, u_input.a.x), Struct_1(var_0, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u))), vec2<bool>(var_0, var_0), Struct_3(vec4<f32>(-874f, 1000f, -561f, -1800f)), global1.a, Struct_3(vec4<f32>(1000f, -424f, -898f, -2339f)))), firstTrailingBit(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1u)))));
    var var_2 = select(vec2<bool>(false, var_0 | var_0), !vec2<bool>(var_0, var_0), select(true, false, true) & true);
    var var_3 = Struct_5(~_wgslsmith_dot_vec2_i32(vec2<i32>(func_1(vec2<bool>(false, true), Struct_4(Struct_2(Struct_1(false, vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<i32>(0i, global1.a, -2147483647i, -21255i), vec2<bool>(var_0, false), vec4<i32>(global1.a, global1.a, -44718i, u_input.a.x), Struct_1(var_2.x, vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x))), vec2<bool>(true, var_2.x), Struct_3(vec4<f32>(-363f, 1478f, -1000f, -235f)), -25874i, Struct_3(vec4<f32>(-2423f, -648f, 1744f, 492f)))).b.x, i32(-1i) * -2147483647i), ~u_input.a.zx));
    let var_4 = ~vec4<u32>(func_1(!vec2<bool>(false, var_2.x), Struct_4(Struct_2(Struct_1(var_0, vec4<u32>(93220u, 1u, 1u, 0u)), vec4<i32>(39050i, 1i, -21232i, -9803i), vec2<bool>(false, var_0), vec4<i32>(0i, 2147483647i, -1i, -2147483647i), Struct_1(false, vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 62157u))), select(vec2<bool>(true, true), vec2<bool>(false, false), true), Struct_3(vec4<f32>(-196f, -1058f, 1006f, 1047f)), _wgslsmith_sub_i32(1i, var_3.a), Struct_3(vec4<f32>(-1440f, 1000f, 1411f, 1070f)))).a.b.x, u_input.b.x, abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(1u, 57733u, 1u, 13075u))), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, -2147483647i, abs(global1.a >> (~4294967295u % 32u)));
}

