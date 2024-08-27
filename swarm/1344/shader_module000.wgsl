struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 7>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_dot_vec4_i32(abs(firstTrailingBit(-vec4<i32>(global1[_wgslsmith_index_u32(arg_3.e.x, 7u)], arg_3.b.x, global1[_wgslsmith_index_u32(global0.d.x, 7u)], arg_1.b.x))), u_input.b);
    var var_1 = -561f;
    let var_2 = Struct_1(select(arg_1.a, arg_1.a, true), vec3<i32>(arg_1.b.x, u_input.b.x, global0.b.x), global0.a, ~_wgslsmith_add_vec4_u32(arg_3.d, arg_3.e), u_input.c & global0.e);
    let var_3 = ~_wgslsmith_mult_vec3_u32(~(~var_2.e.ywy), vec3<u32>(select(1u, ~0u, !global0.c), (12754u | global0.e.x) << (_wgslsmith_dot_vec4_u32(arg_3.d, arg_3.d) % 32u), ~(~21698u)));
    let var_4 = Struct_1(global0.a, arg_1.b | var_2.b, !all(vec2<bool>(arg_1.c && global0.a, all(vec2<bool>(false, true)))), max(select(vec4<u32>(97825u, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.e.x, 5587u, global0.e.x), vec3<u32>(var_2.d.x, arg_3.d.x, 36501u)), ~var_2.e.x), ~var_2.e & _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(arg_3.d.x, u_input.d.x, var_3.x, arg_3.d.x)), !any(vec2<bool>(true, arg_1.a))), var_2.d), ~vec4<u32>(~(global0.d.x ^ var_2.d.x), arg_2, _wgslsmith_mod_u32(arg_1.e.x | var_2.d.x, arg_3.e.x), ~1u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(625f, 163f), vec2<f32>(417f, 700f), vec2<bool>(var_4.a, false))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-298f, 1652f) * vec2<f32>(111f, 1191f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-459f, 1000f), vec2<f32>(-1319f, -1830f))), vec2<f32>(-1378f, 1274f), arg_1.a)))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 742f)), vec2<f32>(arg_1, -690f), vec2<bool>(arg_0.a, arg_0.c)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(min(18034i, ~u_input.b.x), Struct_1(true, select(global0.b, vec3<i32>(u_input.b.x, global0.b.x, global0.b.x), vec3<bool>(global0.c, false, global0.a)), arg_0.a, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 14265u, u_input.d.x, 5317u), vec4<u32>(arg_0.d.x, global0.d.x, 73803u, u_input.c.x)), vec4<u32>(arg_0.e.x, global0.e.x, u_input.c.x, u_input.d.x)), ~(52824u >> (global0.e.x % 32u)), arg_0))));
    global0 = arg_0;
    global0 = arg_0;
    let var_1 = false;
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_clamp_i32(-2147483647i, -50504i, global0.b.x), u_input.a), select(u_input.b.xwz, firstTrailingBit(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.e.x, 7u)], global1[_wgslsmith_index_u32(global0.d.x, 7u)])) ^ min(arg_0.b, _wgslsmith_mod_vec3_i32(vec3<i32>(-1169i, 23214i, global0.b.x), arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-128f)) * _wgslsmith_f_op_f32(sign(arg_1))) != arg_1));
    return global1[_wgslsmith_index_u32(1u, 7u)];
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = Struct_1(any(select(vec2<bool>(true, global0.a), vec2<bool>(true, global0.c), select(!vec2<bool>(global0.c, false), select(vec2<bool>(true, false), vec2<bool>(global0.a, false), vec2<bool>(global0.c, global0.c)), all(vec4<bool>(global0.a, global0.c, global0.c, false))))), global0.b, select(true, any(!(!vec3<bool>(true, global0.a, false))), select(true, global0.a != any(vec2<bool>(true, global0.c)), global0.c)), vec4<u32>(1u, max(countOneBits(u_input.e.x) & 8518u, ~u_input.e.x << (firstTrailingBit(18928u) % 32u)), u_input.c.x, global0.e.x), firstLeadingBit(u_input.c));
    var var_1 = _wgslsmith_sub_i32(func_2(Struct_1(!all(vec2<bool>(var_0.c, global0.c)), vec3<i32>(global1[_wgslsmith_index_u32(~16765u, 7u)], 0i, -2206i & arg_2), global0.a, (global0.e & var_0.d) << (max(vec4<u32>(54743u, var_0.d.x, 4294967295u, 4294967295u), u_input.c) % vec4<u32>(32u)), ~var_0.d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1224f * 1099f))))), var_0.b.x);
    var var_2 = Struct_1(any(select(vec3<bool>(var_0.a != false, any(vec2<bool>(true, global0.c)), u_input.a < u_input.b.x), select(!vec3<bool>(global0.c, true, var_0.c), !vec3<bool>(false, false, var_0.a), select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.a, true), false)), !(var_0.a | true))), ~vec3<i32>(global1[_wgslsmith_index_u32(~abs(0u), 7u)], firstLeadingBit(_wgslsmith_sub_i32(-195i, global0.b.x)), -29493i), false, vec4<u32>(~(~(~global0.d.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, 106226u), ~vec2<u32>(0u, 17479u)), ~_wgslsmith_dot_vec2_u32(var_0.e.xx, vec2<u32>(0u, 34512u)), 89541u), abs(reverseBits(~global0.e) | var_0.e));
    var var_3 = any(vec3<bool>(global0.c, select(true, true, true), true));
    let var_4 = Struct_1(all(!select(vec2<bool>(global0.a, false), vec2<bool>(global0.a, false), !global0.a)), -u_input.b.wxw, var_0.c, _wgslsmith_mult_vec4_u32(firstTrailingBit(firstLeadingBit(~u_input.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_2.e.x, 5308u, 10193u) >> (u_input.c % vec4<u32>(32u)), vec4<u32>(4294967295u, u_input.c.x, global0.d.x, global0.d.x) | global0.d) & reverseBits(vec4<u32>(4294967295u, 1u, 49830u, 1u) ^ var_2.e)), vec4<u32>(_wgslsmith_div_u32(0u, _wgslsmith_sub_u32(~30897u, global0.d.x)), 1u, 1u, ~var_2.d.x));
    return _wgslsmith_mult_u32(1u, (4294967295u ^ _wgslsmith_clamp_u32(~var_0.d.x, firstLeadingBit(1u), abs(var_2.d.x))) ^ var_2.e.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = firstTrailingBit(vec2<u32>(arg_0.e.x & countOneBits(abs(global0.e.x)), ~arg_1.e.x));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1180f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1152f - 731f)))))), 1793f);
    let var_2 = -2147483647i;
    var var_3 = arg_0;
    var var_4 = arg_0;
    return arg_1;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-316f, _wgslsmith_f_op_f32(select(258f, 609f, global0.a)), -1334f, 904f), vec4<f32>(_wgslsmith_f_op_f32(572f - -1002f), _wgslsmith_f_op_f32(sign(-710f)), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-1147f + -1377f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1937f, -271f, -277f, -1152f)))))));
    var var_1 = func_5(Struct_1(true, vec3<i32>(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(firstLeadingBit(global0.e.x), 7u)], 81820i, global1[_wgslsmith_index_u32(abs(14503u), 7u)]), -43623i, -u_input.a), false, global0.d, ~u_input.c), Struct_1(_wgslsmith_mod_u32(~u_input.e.x, ~0u) <= 1u, -(vec3<i32>(-13905i, global0.b.x, 11790i) ^ global0.b) ^ firstTrailingBit(~vec3<i32>(0i, u_input.b.x, 59323i)), !(!global0.c), vec4<u32>(1u, ~(0u << (u_input.c.x % 32u)), _wgslsmith_dot_vec4_u32(~u_input.c, u_input.c & vec4<u32>(u_input.e.x, 85613u, 59823u, 0u)), ~30257u), vec4<u32>(u_input.e.x, func_4(i32(-1i) * -2147483647i, -912f, func_2(Struct_1(global0.c, global0.b, global0.a, vec4<u32>(global0.d.x, global0.e.x, 97468u, 0u), global0.e), var_0.x)), u_input.c.x, select(u_input.c.x, u_input.c.x, false) >> (_wgslsmith_mult_u32(u_input.e.x, 13384u) % 32u))));
    var var_2 = vec2<f32>(-456f, var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-701f, var_0.x, -1642f, var_2.x), vec4<f32>(-1636f, var_2.x, -799f, var_0.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(121f, var_0.x, var_0.x, var_2.x) * vec4<f32>(269f, -1000f, -379f, 339f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, var_2.x, var_2.x), vec4<f32>(-897f, -1177f, var_2.x, var_0.x))))), vec4<bool>((var_2.x > 654f) == all(vec4<bool>(var_1.c, global0.a, var_1.a, var_1.c)), var_1.a, !(1i >= global0.b.x), any(vec2<bool>(true, true)))))));
    let var_3 = min(countOneBits(-6000i), _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, -67925i) << (global0.d.x % 32u), u_input.b.x));
    return func_5(Struct_1(max(func_4(u_input.b.x, var_0.x, -2147483647i), _wgslsmith_dot_vec4_u32(vec4<u32>(36151u, global0.d.x, 4294967295u, var_1.e.x), vec4<u32>(u_input.c.x, u_input.e.x, u_input.c.x, u_input.d.x))) >= global0.d.x, vec3<i32>(-1i, -2147483647i, u_input.b.x), any(select(!vec4<bool>(false, var_1.c, global0.c, var_1.c), select(vec4<bool>(global0.a, var_1.a, global0.a, var_1.c), vec4<bool>(var_1.a, global0.a, false, false), true), select(vec4<bool>(false, var_1.c, var_1.c, global0.c), vec4<bool>(false, global0.a, global0.a, false), var_1.c))), select(u_input.c | var_1.e, reverseBits(~vec4<u32>(24669u, 738u, 1u, global0.e.x)), vec4<bool>(all(vec4<bool>(false, true, global0.a, false)), global0.a, !global0.a, true)), vec4<u32>(~min(1u, u_input.d.x), u_input.d.x, ~countOneBits(global0.e.x), 0u)), func_5(Struct_1(any(select(vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, true), global0.c)), global0.b, !var_1.c || !global0.c, vec4<u32>(_wgslsmith_mult_u32(var_1.e.x, global0.d.x), global0.e.x, var_1.d.x, global0.d.x), vec4<u32>(20396u, 60449u, 4294967295u, global0.d.x) | ~vec4<u32>(var_1.e.x, u_input.d.x, 1u, 126830u)), Struct_1(select(global0.c, var_1.c, true), global0.b, !any(vec3<bool>(false, var_1.c, var_1.c)), ~max(u_input.c, global0.e), vec4<u32>(var_1.e.x, 4294967295u, ~var_1.e.x, 1u))));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global1 = array<i32, 7>();
    var var_0 = vec2<f32>(-1249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1551f, 2519f), _wgslsmith_f_op_f32(floor(-713f))))));
    global0 = arg_0;
    let var_1 = Struct_1(global0.c, _wgslsmith_mod_vec3_i32(arg_0.b, arg_0.b | ~abs(vec3<i32>(-25511i, u_input.b.x, global0.b.x))), true, select(firstTrailingBit(arg_0.e), ~vec4<u32>(func_1().e.x, u_input.c.x, arg_0.e.x, arg_0.e.x), any(vec2<bool>(global0.a, true))), ~arg_0.e);
    global0 = func_5(func_5(func_5(arg_0, var_1), func_1()), func_1());
    return func_5(var_1, Struct_1(func_5(Struct_1(true, u_input.b.xxw, !var_1.a, firstTrailingBit(u_input.c), vec4<u32>(arg_0.d.x, var_1.e.x, arg_0.d.x, var_1.d.x)), arg_0).c, reverseBits(global0.b), true, _wgslsmith_clamp_vec4_u32(select(var_1.e, vec4<u32>(var_1.d.x, 17886u, 0u, arg_0.d.x), true), vec4<u32>(63993u, 53980u, 1071u, arg_0.d.x), countOneBits(vec4<u32>(0u, 95736u, arg_0.e.x, u_input.c.x))) >> (u_input.c % vec4<u32>(32u)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.d.x, arg_0.d.x, var_1.d.x, u_input.e.x), vec4<u32>(arg_0.d.x, var_1.e.x, var_1.d.x, 12958u)))));
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = Struct_1(-516f < arg_0.x, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(var_0.b.x, global0.b.x, 0i, 1i)), firstTrailingBit(vec4<i32>(-52i, 1i, global1[_wgslsmith_index_u32(4294967295u, 7u)], 2466i))), u_input.b.x), 1i, ~(-(~u_input.a))), true, countOneBits(max(vec4<u32>(arg_1.e.x, u_input.d.x, _wgslsmith_div_u32(global0.d.x, global0.e.x), 1867u), vec4<u32>(arg_1.e.x, global0.d.x, ~var_0.d.x, arg_1.e.x))), vec4<u32>(global0.e.x, arg_1.e.x, 0u, 99786u) >> (~global0.d % vec4<u32>(32u)));
    var var_2 = Struct_1(true, vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.x, global1[_wgslsmith_index_u32(1u, 7u)], var_1.b.x, 2147483647i) << (vec4<u32>(arg_1.e.x, 1u, arg_1.d.x, 45218u) % vec4<u32>(32u)), select(vec4<i32>(var_0.b.x, global1[_wgslsmith_index_u32(5212u, 7u)], var_1.b.x, arg_1.b.x), vec4<i32>(u_input.b.x, 1i, u_input.b.x, var_0.b.x), vec4<bool>(true, arg_1.a, false, global0.a))), vec4<i32>(global0.b.x, firstLeadingBit(-1i), _wgslsmith_mult_i32(1160i, 1i), u_input.a)), -2147483647i, 1i), func_5(var_1, func_1()).c, vec4<u32>(func_6(func_6(func_1())).e.x, global0.d.x, arg_1.d.x, 74788u), arg_1.d);
    var_0 = arg_1;
    var_0 = var_1;
    return func_5(func_5(Struct_1(select(var_2.c, !var_1.c, 1000f < arg_0.x), vec3<i32>(u_input.b.x, var_2.b.x, 2147483647i), !arg_1.a, _wgslsmith_mod_vec4_u32(var_1.d, arg_1.d) & func_1().d, func_6(Struct_1(arg_1.c, arg_1.b, var_0.c, u_input.c, vec4<u32>(7156u, 10167u, u_input.e.x, 4294967295u))).e), var_1), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(886f, 211f))), func_6(func_1()));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(8219i, Struct_1(var_0.c, global0.b, false, var_0.e, global0.e), var_0.e.x, Struct_1(false, u_input.b.wxy, false, u_input.c, vec4<u32>(4294967295u, 1u, global0.e.x, global0.e.x)))).x * _wgslsmith_f_op_f32(-1000f - 534f)) + _wgslsmith_f_op_f32(trunc(-752f))), _wgslsmith_f_op_f32(2341f * _wgslsmith_f_op_f32(-1574f - _wgslsmith_f_op_f32(step(-1355f, 2042f))))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-826f, -1127f, global0.c)))), _wgslsmith_f_op_f32(269f + _wgslsmith_f_op_f32(min(623f, 869f)))) * 824f);
    var_1 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1872f))), abs(-u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-251f, -235f, -1179f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1360f), -680f, -1169f), vec3<bool>(!var_0.c, global0.c, select(var_0.c, global0.a, global0.a)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1349f, _wgslsmith_f_op_f32(floor(1169f)), _wgslsmith_f_op_vec2_f32(func_3(global0.b.x, Struct_1(true, var_0.b, var_0.c, u_input.c, vec4<u32>(var_0.e.x, 0u, 9034u, 20135u)), var_0.e.x, Struct_1(true, var_0.b, global0.a, global0.d, var_0.e))).x))), vec2<f32>(_wgslsmith_f_op_f32(-1070f * _wgslsmith_div_f32(1242f, 912f)), _wgslsmith_f_op_f32(1f + 1000f)));
}

