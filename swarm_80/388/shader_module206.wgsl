struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(-1031f, Struct_1(vec4<i32>(-3313i, -44129i, i32(-2147483648), 98005i), 7045u, false, vec4<i32>(0i, -25701i, 0i, i32(-2147483648)))), Struct_3(1090f, Struct_1(vec4<i32>(3424i, -1i, -2740i, 16275i), 45001u, false, vec4<i32>(63340i, 2147483647i, -23710i, -20301i))), Struct_3(-2127f, Struct_1(vec4<i32>(4230i, 0i, -34757i, 2147483647i), 1u, true, vec4<i32>(-1i, -6780i, -5558i, i32(-2147483648)))), Struct_3(-424f, Struct_1(vec4<i32>(-1i, 0i, 40879i, 22394i), 4294967295u, true, vec4<i32>(0i, 0i, -33259i, 33848i))), Struct_3(838f, Struct_1(vec4<i32>(-9707i, 44354i, 1i, i32(-2147483648)), 4294967295u, false, vec4<i32>(-26864i, -1i, 0i, 8789i))), Struct_3(-819f, Struct_1(vec4<i32>(-1i, 27513i, 1i, i32(-2147483648)), 4294967295u, false, vec4<i32>(5855i, 15831i, i32(-2147483648), -27316i))), Struct_3(-632f, Struct_1(vec4<i32>(12683i, 1i, 0i, 2147483647i), 58847u, true, vec4<i32>(-18621i, -6330i, 11399i, 18018i))), Struct_3(154f, Struct_1(vec4<i32>(46752i, 44531i, 1i, 56435i), 0u, true, vec4<i32>(7567i, 54812i, 32075i, -1771i))), Struct_3(1000f, Struct_1(vec4<i32>(2147483647i, -9056i, -1i, i32(-2147483648)), 4294967295u, true, vec4<i32>(-1i, i32(-2147483648), -1i, 470i))), Struct_3(895f, Struct_1(vec4<i32>(-40667i, -20685i, i32(-2147483648), 33492i), 4294967295u, true, vec4<i32>(0i, 1i, 10742i, -17853i))), Struct_3(-1501f, Struct_1(vec4<i32>(2147483647i, 2381i, 1i, 0i), 70503u, false, vec4<i32>(35120i, 0i, 2147483647i, 2147483647i))), Struct_3(291f, Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -1i), 0u, true, vec4<i32>(19878i, -16474i, 1i, -8024i))), Struct_3(1044f, Struct_1(vec4<i32>(-2808i, i32(-2147483648), 2147483647i, -18522i), 1u, true, vec4<i32>(25185i, 6721i, 1i, 2147483647i))), Struct_3(-965f, Struct_1(vec4<i32>(2147483647i, 11634i, 35342i, 11339i), 0u, false, vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 1i))), Struct_3(-936f, Struct_1(vec4<i32>(1i, 1i, i32(-2147483648), -42575i), 1401u, true, vec4<i32>(-1i, -1i, -2706i, 28206i))), Struct_3(988f, Struct_1(vec4<i32>(11966i, 2147483647i, 1i, 25078i), 4294967295u, false, vec4<i32>(2147483647i, 16472i, 0i, i32(-2147483648)))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(209f, _wgslsmith_f_op_f32(-922f * 778f))));
    global0 = array<Struct_3, 16>();
    global0 = array<Struct_3, 16>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_0, var_0, true)), var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -835f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, arg_1.a)))), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(f32(-1f) * -638f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(867f, var_0, arg_0.a, var_0)))))))));
    global0 = array<Struct_3, 16>();
    return -1486f;
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> u32 {
    global0 = array<Struct_3, 16>();
    let var_0 = !(!(true || (any(vec2<bool>(true, true)) && true)));
    global0 = array<Struct_3, 16>();
    var var_1 = Struct_1(select(select(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -40739i), vec4<i32>(u_input.a, 39697i, u_input.a, u_input.a))), -vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), false), ~vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -1i)), _wgslsmith_clamp_i32(0i, -1i, u_input.a), 0i), vec4<bool>(var_0 && true, all(!vec2<bool>(true, var_0)), all(vec2<bool>(true, true)), var_0)), arg_0, any(select(select(vec2<bool>(false, var_0), select(vec2<bool>(true, var_0), vec2<bool>(false, var_0), var_0), true | var_0), !(!vec2<bool>(true, var_0)), !(!vec2<bool>(var_0, var_0)))), vec4<i32>(53818i, select(-select(2147483647i, 2147483647i, var_0), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(56038i, u_input.a, u_input.a), -14955i), var_0), -2147483647i, _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(66105i, 2147483647i, 1i), vec3<i32>(u_input.a, 2147483647i, u_input.a)), vec3<i32>(-1i, -2147483647i, u_input.a) ^ vec3<i32>(u_input.a, -5616i, -5117i)))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1257f);
    return var_1.b;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(arg_1.b, vec2<f32>(arg_1.a, 917f), vec3<bool>(true, arg_1.b.c, arg_2.c));
    global0 = array<Struct_3, 16>();
    var var_1 = Struct_1(abs(arg_2.d), 0u, var_0.a.c || arg_1.b.c, vec4<i32>(u_input.a, countOneBits(_wgslsmith_dot_vec3_i32(arg_2.a.wwz, vec3<i32>(-522i, arg_2.a.x, u_input.a))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 22776i, -63155i, 1i), vec4<i32>(-2147483647i, u_input.a, 2147483647i, -1037i)), vec4<i32>(-6291i, 24663i, arg_1.b.d.x, -43031i)), 1i) << ((min(vec4<u32>(0u, arg_0, arg_0, 4294967295u), ~vec4<u32>(arg_0, 84942u, var_0.a.b, arg_2.b)) | max(vec4<u32>(arg_1.b.b, arg_2.b, 4294967295u, 61547u) << (vec4<u32>(arg_0, 4294967295u, 1536u, 26927u) % vec4<u32>(32u)), vec4<u32>(arg_2.b, 1u, arg_2.b, arg_0))) % vec4<u32>(32u)));
    var_1 = Struct_1(vec4<i32>(arg_2.d.x, var_1.a.x, _wgslsmith_clamp_i32(-20571i, 2147483647i, i32(-1i) * -2147483647i), _wgslsmith_add_i32(arg_2.d.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(arg_1.b.a, vec4<i32>(arg_1.b.d.x, arg_2.a.x, var_0.a.d.x, 2147483647i)), 1i))), ~_wgslsmith_div_u32(0u, ~0u), !(!((true || var_1.c) & !arg_2.c)), ~(~vec4<i32>(firstLeadingBit(-46949i), _wgslsmith_mod_i32(u_input.a, 2147483647i), 1i, ~2147483647i)));
    global0 = array<Struct_3, 16>();
    return vec4<bool>(all(var_0.c), _wgslsmith_f_op_f32(exp2(var_0.b.x)) <= -1000f, true, var_1.c);
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    let var_0 = select(vec4<bool>(arg_0.x, true, true, false), select(select(func_4(func_3(29854u, vec4<u32>(1u, 8355u, 10731u, 0u)), Struct_3(160f, Struct_1(vec4<i32>(-53752i, 8269i, 0i, -2147483647i), 1276u, arg_0.x, vec4<i32>(2147483647i, 2912i, 0i, u_input.a))), Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), 4294967295u, arg_0.x, vec4<i32>(-4557i, u_input.a, -1i, 36107i))), vec4<bool>(true, true, -9790i <= u_input.a, !arg_0.x), select(select(arg_0, arg_0, arg_0), !vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))), vec4<bool>(_wgslsmith_f_op_f32(-874f + -1000f) >= _wgslsmith_f_op_f32(ceil(1374f)), !any(vec3<bool>(arg_0.x, arg_0.x, true)), all(func_4(67071u, global0[_wgslsmith_index_u32(55155u, 16u)], Struct_1(vec4<i32>(u_input.a, 2147483647i, -2147483647i, u_input.a), 7300u, arg_0.x, vec4<i32>(u_input.a, u_input.a, -6412i, u_input.a))).wz), true), arg_0), arg_0);
    let var_1 = select(~1u, reverseBits(_wgslsmith_add_u32(countOneBits(0u), func_3(~69140u, ~vec4<u32>(2558u, 4294967295u, 4311u, 4294967295u)))), !var_0.x);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1781f + -225f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-251f + 530f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1826f))))));
    global0 = array<Struct_3, 16>();
    let var_3 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(~(~vec4<i32>(u_input.a, -1i, 20016i, u_input.a)), -max(vec4<i32>(17863i, u_input.a, 0i, u_input.a), vec4<i32>(-11655i, u_input.a, 1i, 72000i))), select(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 52393i, -17396i), vec4<i32>(-2088i, u_input.a, 1i, u_input.a))), -(~vec4<i32>(7596i, 23879i, -95064i, u_input.a)), select(select(arg_0, vec4<bool>(true, arg_0.x, false, true), arg_0), vec4<bool>(true, true, true, var_0.x), !vec4<bool>(true, false, arg_0.x, true))), vec4<i32>(-1i) * -(vec4<i32>(1i, 1i, u_input.a, -5507i) & vec4<i32>(-2147483647i, u_input.a, -38017i, u_input.a))), select(_wgslsmith_mult_u32(max(13172u, ~1u), firstTrailingBit(var_1 | 18500u)), min(~(~83856u), 654u | ~var_1), all(arg_0.zwz)), !var_0.x, vec4<i32>(~(~max(-1i, u_input.a)), reverseBits(28225i), _wgslsmith_mod_i32(-(~u_input.a), u_input.a), min(1i, u_input.a) << (_wgslsmith_mod_u32(var_1 >> (47426u % 32u), ~var_1) % 32u)));
    return min(_wgslsmith_mult_u32(min(0u, 1u), abs(_wgslsmith_mult_u32(~var_1, ~var_3.b))), var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 16564u, 50120u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(72922u, 0u, 4294967295u), vec3<u32>(12216u, 0u, 41121u), vec3<u32>(0u, 12940u, 20903u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), ~min(155147u, select(1u, 4294967295u, true))) ^ 0u;
    var var_1 = -1601f;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1196f, -1574f, _wgslsmith_f_op_f32(-527f - -856f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(184f, 582f, -992f)))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(546f, -525f, -344f)))))), vec3<f32>(275f, _wgslsmith_f_op_f32(f32(-1f) * -1708f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(var_0, 16u)], Struct_3(-994f, Struct_1(vec4<i32>(u_input.a, u_input.a, 7926i, u_input.a), 74317u, true, vec4<i32>(u_input.a, 8207i, u_input.a, -5073i))))) + _wgslsmith_f_op_f32(-836f + -805f))))));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(37930u, ~(~_wgslsmith_mod_u32(4294967295u | var_0, 0u))), 16u)];
    let var_4 = var_3.b.a.x >> (func_2(select(!(!vec4<bool>(true, var_3.b.c, true, var_3.b.c)), vec4<bool>(false, !var_3.b.c, !var_3.b.c, true), !vec4<bool>(true, true, var_3.b.c, true))) % 32u);
    var var_5 = vec2<f32>(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.a))));
    let var_6 = false;
    let var_7 = func_4(abs(func_2(!vec4<bool>(var_3.b.c, var_3.b.c, var_3.b.c, var_6))) ^ _wgslsmith_mod_u32(firstTrailingBit(1u), 63107u << (min(59178u, var_0) % 32u)), Struct_3(-1691f, Struct_1(vec4<i32>(2147483647i, ~(-51289i), abs(-36596i), _wgslsmith_mod_i32(54691i, u_input.a)), 1u << (func_2(vec4<bool>(false, false, var_6, false)) % 32u), var_3.b.c, ~vec4<i32>(var_4, var_3.b.a.x, -53713i, var_4))), Struct_1(vec4<i32>(u_input.a, _wgslsmith_add_i32(-5771i, var_4), 0i, _wgslsmith_dot_vec4_i32(var_3.b.d, var_3.b.d)) ^ var_3.b.d, 90855u, all(vec2<bool>(true, false)), ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_4, 22688i, var_3.b.d.x), var_3.b.d))));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1852f, -790f)))), 671f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(721f, -502f) - _wgslsmith_f_op_f32(f32(-1f) * -995f)))));
}

