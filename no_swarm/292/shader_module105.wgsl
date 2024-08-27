struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(-1i, -59288i, 2147483647i, 947i, 3611i, i32(-2147483648), 3109i, 1i, 18821i, 2147483647i, 0i);

var<private> global1: array<vec3<u32>, 5>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<f32>) -> bool {
    var var_0 = select(vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(54701u) >> (~arg_0.x % 32u), arg_0.x, _wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(arg_0.x, arg_0.x))), 11u)], ~(~u_input.a.x)), vec2<i32>(_wgslsmith_clamp_i32(~(-371i), u_input.a.x, abs(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(9254u, 11u)], 21986i, u_input.a.x))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, arg_0.x & ~arg_0.x), 11u)]), any(select(!vec3<bool>(true, arg_1, arg_1), !vec3<bool>(arg_1, arg_1, arg_1), !vec3<bool>(true, arg_1, true))) && arg_1);
    return _wgslsmith_div_u32(reverseBits(~(arg_0.x | 18123u)), arg_0.x) > (~(1u >> ((0u ^ arg_0.x) % 32u)) & ~arg_0.x);
}

fn func_4(arg_0: bool) -> i32 {
    var var_0 = countOneBits((~0u << (_wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(92400u, 19522u, 0u), 1u) % 32u)) | 1u);
    var_0 = _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(39402u, 5u)], abs(vec3<u32>(~24246u, 0u, _wgslsmith_clamp_u32(4294967295u, 40521u, 15711u) | firstTrailingBit(1u))));
    var var_1 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 0u, 1u, 1u)), vec4<u32>(0u, 50650u << (0u % 32u), _wgslsmith_mod_u32(8509u, 1u), ~1u)), 4294967295u, ~abs(1u), 1u);
    var var_2 = firstTrailingBit(_wgslsmith_mod_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, 31562u, var_1.x) | vec4<u32>(var_1.x, 11194u, 18719u, 90111u), ~vec4<u32>(var_1.x, var_1.x, var_1.x, 64317u), countOneBits(vec4<u32>(var_1.x, 24323u, 0u, 4294967295u))), vec4<u32>(0u, var_1.x, var_1.x, 8241u) ^ vec4<u32>(var_1.x, var_1.x, var_1.x, 76284u), select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, false, false, arg_0), func_3(var_1.xx, arg_0, vec4<f32>(1614f, -716f, -2487f, 1104f)))), abs(vec4<u32>(_wgslsmith_div_u32(4294967295u, var_1.x), 0u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(var_1.x, 55283u))))));
    var var_3 = 20745i & -_wgslsmith_clamp_i32(1i, min(_wgslsmith_mult_i32(u_input.a.x, 2147483647i), -34407i), global0[_wgslsmith_index_u32(~(~var_2.x), 11u)]);
    return i32(-1i) * -1i;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = vec4<i32>(-2147483647i, select(-81624i, -52000i, true), func_4(func_3(~abs(arg_1.a), all(vec4<bool>(true, true, true, true)), vec4<f32>(_wgslsmith_div_f32(arg_1.b.c, 798f), 810f, _wgslsmith_f_op_f32(f32(-1f) * -1724f), -1000f))), abs(-(arg_1.b.b.x | arg_1.b.b.x)) << (min(_wgslsmith_clamp_u32(arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.a.x) % 32u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.d.x + arg_1.b.d.x))), -(~abs(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(-11511i, global0[_wgslsmith_index_u32(0u, 11u)])))), _wgslsmith_f_op_f32(trunc(arg_0)), vec2<f32>(272f, arg_0));
    var var_2 = 2147483647i;
    let var_3 = -select(_wgslsmith_add_i32(-var_1.b.x, 1i), ~_wgslsmith_sub_i32(_wgslsmith_add_i32(7545i, 0i), -28734i), false);
    let var_4 = Struct_4(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(21918i, 0i, 2147483647i), var_0.yxw), _wgslsmith_dot_vec4_i32(var_0, var_0)), ~(-var_0.zyx)), 2147483647i, global0[_wgslsmith_index_u32(7209u, 11u)]), ~(~firstTrailingBit(1u)));
    return Struct_2(vec2<u32>(var_4.b, ~_wgslsmith_div_u32(53130u, var_4.b)), Struct_1(_wgslsmith_f_op_f32(arg_1.b.a - var_1.c), arg_1.b.b, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_1.b.d.x)), arg_1.b.d), min(countOneBits(func_4(true)), 2147483647i));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    global1 = array<vec3<u32>, 5>();
    var var_0 = abs(vec3<i32>(select(_wgslsmith_dot_vec4_i32(firstLeadingBit(arg_1), arg_1), ~(~(-1i)), true), _wgslsmith_sub_i32(firstLeadingBit(-28301i >> (arg_0.a.x % 32u)), -1i), 19175i));
    var_0 = arg_1.zxw;
    let var_1 = 1u;
    let var_2 = select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, all(vec2<bool>(true, true))), true), all(vec4<bool>(true, false, true, true))), select(!vec3<bool>(true, true, all(vec3<bool>(false, true, true))), vec3<bool>(true, true, true), !(true & select(false, false, false))), all(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))) || func_3(vec2<u32>(arg_0.a.x, _wgslsmith_div_u32(5209u, 93586u)), ~76341u < firstTrailingBit(1u), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 483f, -1000f, arg_0.b.d.x)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-186f - arg_2) - _wgslsmith_f_op_f32(-arg_2)));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = Struct_3(~_wgslsmith_mult_u32(firstTrailingBit(1u), ~1u));
    var_0 = Struct_3(var_0.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(func_5(func_2(_wgslsmith_f_op_f32(1971f + 252f), Struct_2(vec2<u32>(1u, var_0.a), Struct_1(-765f, vec2<i32>(-20564i, global0[_wgslsmith_index_u32(var_0.a, 11u)]), 359f, vec2<f32>(-771f, 1000f)), u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 0i, 18102i, -1i), vec4<i32>(global0[_wgslsmith_index_u32(83779u, 11u)], -333i, 0i, 29996i)) >> (vec4<u32>(var_0.a, 37955u, var_0.a, var_0.a) % vec4<u32>(32u)), _wgslsmith_f_op_f32(1000f * -340f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2053f)) + 1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1129f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1271f)) - 345f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1000f)))))))));
    var var_2 = _wgslsmith_sub_i32(max(_wgslsmith_sub_i32(~(arg_0 >> (4294967295u % 32u)), func_4(false) ^ (global0[_wgslsmith_index_u32(10513u, 11u)] | arg_0)), func_2(_wgslsmith_f_op_f32(round(-834f)), Struct_2(vec2<u32>(var_0.a, 62693u), func_2(-254f, Struct_2(vec2<u32>(4294967295u, var_0.a), Struct_1(386f, vec2<i32>(arg_0, 23328i), var_1.x, var_1.xz), u_input.a.x)).b, _wgslsmith_mod_i32(61232i, global0[_wgslsmith_index_u32(var_0.a, 11u)]))).c), -func_4(false));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-446f, -463f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(-581f))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), var_1.x, _wgslsmith_f_op_f32(sign(-693f)), 676f), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, u_input.a.x < global0[_wgslsmith_index_u32(var_0.a, 11u)], true), true))));
    return _wgslsmith_dot_vec4_i32(countOneBits(reverseBits(-vec4<i32>(global0[_wgslsmith_index_u32(var_0.a, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(1546u, 11u)], global0[_wgslsmith_index_u32(34070u, 11u)]))) | vec4<i32>(reverseBits(~arg_0), firstLeadingBit(-arg_0), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(77787u, var_0.a) >> (abs(var_0.a) % 32u), 11u)], u_input.a.x), -_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-7655i, arg_0, global0[_wgslsmith_index_u32(var_0.a, 11u)], -1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -12771i, -2147483647i, -50533i), vec4<i32>(-20702i, u_input.a.x, 2147483647i, -15027i))) ^ -(~(vec4<i32>(u_input.a.x, 0i, 0i, 2147483647i) ^ vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 0i))));
}

fn func_6(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: vec3<u32>) -> vec3<u32> {
    let var_0 = u_input.a;
    var var_1 = Struct_3(_wgslsmith_add_u32(arg_3.x, 61540u));
    let var_2 = vec4<u32>(~var_1.a >> (38672u % 32u), ~(firstTrailingBit(arg_3.x) << (1u % 32u)), firstLeadingBit(_wgslsmith_add_u32(~33465u ^ select(26350u, var_1.a, arg_0), arg_3.x)), arg_3.x);
    let var_3 = 1157f;
    global0 = array<i32, 11>();
    return firstTrailingBit(~var_2.ywx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(func_6(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2347f + -976f) * _wgslsmith_f_op_f32(-150f + 1000f)), _wgslsmith_add_i32(func_1(-44724i), func_1(u_input.a.x)), vec3<u32>(1u, 1u, 1u)), firstTrailingBit(~vec3<u32>(0u, 1u, 28213u))), global1[_wgslsmith_index_u32(65299u, 5u)]);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-928f - 1f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(311f, 410f)))))));
    global1 = array<vec3<u32>, 5>();
    let var_2 = ~13486u;
    global1 = array<vec3<u32>, 5>();
    global1 = array<vec3<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1350f), var_2, _wgslsmith_sub_vec2_i32(vec2<i32>(max(reverseBits(-2147483647i), 0i), global0[_wgslsmith_index_u32(countOneBits(var_0.x) | ~0u, 11u)]), u_input.a));
}

