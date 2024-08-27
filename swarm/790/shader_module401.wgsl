struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<vec4<i32>, 9>;

var<private> global2: array<vec4<u32>, 7>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = Struct_5(~(_wgslsmith_mult_vec2_u32(~vec2<u32>(74748u, 0u), vec2<u32>(4294967295u, u_input.b) >> (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))) | _wgslsmith_div_vec2_u32(~vec2<u32>(33658u, u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)))), Struct_4(Struct_2(u_input.a, arg_2.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_3.e.b.x)), _wgslsmith_f_op_f32(round(arg_2.b.b.x)))), arg_3.b, Struct_1(abs(-30044i), _wgslsmith_f_op_vec2_f32(floor(arg_2.d.b)))), Struct_1(-firstLeadingBit(arg_3.d.a), vec2<f32>(-884f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x))), arg_3.d, vec2<f32>(-1180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c - 1481f)))));
    let var_1 = select(!(!vec4<bool>(global0.x, var_0.a.x < 4294967295u, var_0.a.x >= u_input.b, false)), !(!select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(true, global0.x, false, false), vec4<bool>(false, global0.x, true, global0.x))), vec4<bool>(true, global0.x, false, global0.x));
    let var_2 = u_input.b;
    global2 = array<vec4<u32>, 7>();
    global1 = array<vec4<i32>, 9>();
    return abs(vec2<i32>(57297i, _wgslsmith_dot_vec2_i32(-max(vec2<i32>(arg_3.a, arg_3.a), vec2<i32>(arg_3.a, 2147483647i)), reverseBits(~vec2<i32>(var_0.b.b.a, 14090i)))));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> i32 {
    let var_0 = 0i;
    var var_1 = vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.b.x, 1088f) * arg_0.e.b), _wgslsmith_f_op_f32(1980f - -175f), Struct_2(1i, arg_0.e, arg_0.e.b.x, arg_0.e, arg_0.d), arg_0), _wgslsmith_add_vec2_i32(select(vec2<i32>(-1i, 0i), vec2<i32>(arg_1, arg_0.e.a), global0.x), firstTrailingBit(vec2<i32>(var_0, 17492i))));
    var var_2 = Struct_4(Struct_2(~58595i, Struct_1(-36321i, _wgslsmith_f_op_vec2_f32(-arg_0.e.b)), _wgslsmith_f_op_f32(856f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.d.b.x)))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(24496i, arg_1, arg_1), vec3<i32>(arg_1, var_1.x, -20241i)) >> (u_input.b % 32u), arg_0.d.b), Struct_1(_wgslsmith_mod_i32(~var_0, 2147483647i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(896f, 251f), arg_0.b.b, global0.x)), arg_0.d.b, all(vec4<bool>(false, true, false, true)))))), arg_0.b, arg_0.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(722f - arg_0.d.b.x), -733f)), 1328f));
    var var_3 = ~0u < u_input.b;
    global0 = vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, !global0.x, global0.x, global0.x), vec4<bool>(false, true, global0.x, all(vec3<bool>(false, global0.x, global0.x))))), true);
    return func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.e.b.x)) - 1703f)) * arg_0.e.b), -1000f, Struct_2(var_1.x, Struct_1(0i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.b.x, arg_0.e.b.x) + vec2<f32>(804f, 2651f)), var_2.b.b, all(vec3<bool>(true, global0.x, true))))), 1f, Struct_1(_wgslsmith_mult_i32(select(var_2.a.b.a, arg_1, false), -1i), var_2.c.b), Struct_1(arg_0.b.a >> (u_input.b % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.b.x, 871f) + vec2<f32>(arg_0.b.b.x, -447f)))), arg_0).x;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec2<i32>(arg_0, -arg_0);
    global1 = array<vec4<i32>, 9>();
    global1 = array<vec4<i32>, 9>();
    var var_1 = 2639u;
    var var_2 = !all(select(vec4<bool>(true, any(vec3<bool>(global0.x, global0.x, false)), !global0.x, true), vec4<bool>(true, !global0.x, true, !global0.x), false));
    return Struct_2(_wgslsmith_mult_i32(~arg_2.a, u_input.a), arg_2.d, 621f, Struct_1(abs(_wgslsmith_sub_i32(-5515i << (u_input.b % 32u), -8357i >> (u_input.b % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_2.e.b)) - _wgslsmith_f_op_vec2_f32(select(arg_2.d.b, vec2<f32>(arg_2.c, arg_2.b.b.x), global0.x))))), arg_2.d);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: bool) -> Struct_2 {
    global2 = array<vec4<u32>, 7>();
    return func_4(abs(abs(func_2(Struct_2(-14626i, Struct_1(u_input.a, vec2<f32>(1305f, 1229f)), 103f, Struct_1(u_input.a, vec2<f32>(231f, -786f)), Struct_1(2147483647i, vec2<f32>(-676f, -472f))), u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-694f * 116f), -662f) * 599f)), Struct_2(22436i, Struct_1(firstTrailingBit(1i), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1926f, 741f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -586f)), Struct_1(1i, vec2<f32>(-1964f, _wgslsmith_f_op_f32(select(-1485f, -1592f, global0.x)))), Struct_1(0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-759f, 490f) - vec2<f32>(-1069f, -1725f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1317f, -1002f), vec2<f32>(-352f, 395f)))))));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = !global0.x;
    var var_1 = Struct_5(_wgslsmith_mult_vec2_u32(abs(~vec2<u32>(u_input.b, arg_1.x)), arg_1.xy) | vec2<u32>(min(_wgslsmith_sub_u32(24608u, arg_1.x), 1u), arg_1.x), arg_0);
    var var_2 = firstLeadingBit(u_input.a >> (_wgslsmith_clamp_u32(20616u, ~1u, ~82482u) % 32u));
    global1 = array<vec4<i32>, 9>();
    var var_3 = (global0.x || !any(!vec3<bool>(true, global0.x, global0.x))) == all(vec2<bool>(select(false, true, all(vec4<bool>(false, global0.x, global0.x, false))), false));
    return var_1.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec2<bool>(!(global0.x & (u_input.b != 1u)), all(select(select(vec4<bool>(global0.x, false, false, true), vec4<bool>(false, global0.x, false, false), vec4<bool>(global0.x, global0.x, true, global0.x)), vec4<bool>(global0.x, false, global0.x, global0.x), global0.x && global0.x)));
    let var_0 = Struct_3(Struct_2(0i, Struct_1(-1i, vec2<f32>(_wgslsmith_f_op_f32(1140f - 315f), -1354f)), -1385f, Struct_1(-20451i, vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), -235f)), func_5(Struct_4(func_1(vec4<u32>(0u, u_input.b, u_input.b, u_input.b), u_input.b, global0.x), Struct_1(u_input.a, vec2<f32>(1107f, -2683f)), Struct_1(51566i, vec2<f32>(-537f, 523f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1119f, -1955f) + vec2<f32>(540f, 190f))), global2[_wgslsmith_index_u32(1u, 7u)], Struct_2(40879i, Struct_1(-2923i, vec2<f32>(-463f, -261f)), _wgslsmith_f_op_f32(floor(-364f)), Struct_1(5881i, vec2<f32>(1000f, -579f)), Struct_1(-3774i, vec2<f32>(1019f, 564f))))), _wgslsmith_dot_vec3_u32(vec3<u32>(62164u, ~u_input.b, u_input.b), vec3<u32>(0u, u_input.b, min(u_input.b, u_input.b))), func_4(-_wgslsmith_mod_i32(u_input.a, u_input.a), -992f, Struct_2(firstTrailingBit(select(36034i, u_input.a, true)), Struct_1(func_4(u_input.a, 238f, Struct_2(1i, Struct_1(u_input.a, vec2<f32>(-633f, 2047f)), -1209f, Struct_1(-27482i, vec2<f32>(337f, 278f)), Struct_1(0i, vec2<f32>(-512f, 502f)))).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -115f))), 281f, Struct_1(min(u_input.a, 1i), vec2<f32>(185f, -823f)), func_4(_wgslsmith_clamp_i32(u_input.a, -39414i, u_input.a), _wgslsmith_f_op_f32(min(268f, 637f)), Struct_2(u_input.a, Struct_1(u_input.a, vec2<f32>(-323f, 281f)), -2026f, Struct_1(u_input.a, vec2<f32>(-382f, -1204f)), Struct_1(4133i, vec2<f32>(-949f, 378f)))).b)), func_1(countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(0u, 7u)], vec4<u32>(30368u, 44176u, 6164u, u_input.b)), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), 37469u, any(vec2<bool>(!global0.x, global0.x))));
    let var_1 = ~(-(~_wgslsmith_div_i32(u_input.a, ~(-25704i))));
    global1 = array<vec4<i32>, 9>();
    global0 = vec2<bool>(true, _wgslsmith_f_op_f32(min(-1000f, var_0.a.d.b.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.e.b.x)));
    let var_2 = vec3<bool>(global0.x, !global0.x, global0.x);
    let var_3 = (countOneBits(min(var_1, var_1) ^ _wgslsmith_div_i32(var_0.c.a, var_1)) == -var_0.d.e.a) | (((firstLeadingBit(u_input.b) >> (_wgslsmith_mult_u32(var_0.b, 25745u) % 32u)) != ~_wgslsmith_mult_u32(u_input.b, 31055u)) || false);
    global0 = select(vec2<bool>(all(var_2), select(true, true || var_2.x, true)), vec2<bool>(false, select(select(var_0.d.e.b.x == var_0.d.c, select(global0.x, false, var_3), true), all(!vec4<bool>(false, true, var_2.x, true)), select(all(var_2.xy), false, !var_3))), !vec2<bool>((i32(-1i) * -2147483647i) < u_input.a, global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec3<i32>(2147483647i, 0i ^ var_0.d.b.a, 1i)), _wgslsmith_dot_vec4_u32(~abs(reverseBits(global2[_wgslsmith_index_u32(0u, 7u)])), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.b, u_input.b, var_0.b), vec4<u32>(u_input.b, var_0.b, 34241u, var_0.b))));
}

