struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    return ~u_input.a;
}

fn func_3(arg_0: bool) -> vec3<f32> {
    var var_0 = max(select(~abs(firstTrailingBit(vec3<i32>(2147483647i, 0i, 15452i))), vec3<i32>(-1i, countOneBits(~20472i), 0i), vec3<bool>(all(vec2<bool>(arg_0, arg_0)), !(u_input.a == u_input.a), true)), reverseBits(-(~countOneBits(vec3<i32>(1i, 35476i, -17283i)))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-121f, -973f), vec2<f32>(-1462f, -597f), arg_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-687f, -153f))))));
    let var_2 = Struct_1(var_0.x, 2147483647i, u_input.a, var_0.x);
    let var_3 = _wgslsmith_dot_vec4_u32(abs(select(~(~vec4<u32>(var_2.c, 27606u, var_2.c, 4294967295u)), ~(vec4<u32>(83479u, u_input.a, u_input.a, u_input.a) << (vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) % vec4<u32>(32u))), select(vec4<bool>(arg_0, arg_0, true, true), !vec4<bool>(arg_0, true, false, true), vec4<bool>(false, true, false, arg_0)))), ~(~(~(vec4<u32>(var_2.c, 1u, 4294967295u, u_input.a) & vec4<u32>(0u, u_input.a, u_input.a, 1u)))));
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.x)));
    return _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_1.a.x, var_1.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(667f, _wgslsmith_f_op_f32(var_4 + _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_div_f32(-268f, _wgslsmith_f_op_f32(trunc(var_4)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-647f, var_1.a.x, -180f))) - vec3<f32>(1422f, -729f, -1000f)))));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec2<u32>) -> i32 {
    let var_0 = select(arg_2, arg_2, true);
    let var_1 = arg_1.x;
    var var_2 = 20595u;
    let var_3 = Struct_3(arg_1.xz);
    var var_4 = Struct_4(min(abs(_wgslsmith_mult_i32(22853i >> (arg_0 % 32u), ~(-25270i))), ~(~_wgslsmith_sub_i32(0i, 0i))));
    return _wgslsmith_div_i32(var_4.a | max(_wgslsmith_add_i32(var_4.a, var_4.a) & -var_4.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.a, var_4.a, var_4.a, 2147483647i), vec4<i32>(1i, var_4.a, var_4.a, 0i)) & -949i), var_4.a);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<bool>) -> vec4<u32> {
    let var_0 = Struct_1(-1i, -(~(~(-1i))) ^ ((26909i >> (firstTrailingBit(u_input.a) % 32u)) | 20670i), ~(~53305u), abs(firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(-2147483647i, -52884i), abs(0i)))));
    var var_1 = vec2<i32>(37778i, func_4((firstLeadingBit(arg_1.x) | func_2(Struct_2(vec4<f32>(-1579f, arg_0, arg_0, 1558f), Struct_1(-1i, var_0.b, var_0.c, var_0.b), 81009u), false, arg_2)) | 97153u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -2672f, arg_0) - vec3<f32>(317f, arg_0, arg_0)))), vec3<bool>(true, arg_2.x, any(select(vec3<bool>(true, true, arg_2.x), vec3<bool>(false, false, false), vec3<bool>(false, arg_2.x, false)))), ~arg_1.zy));
    return vec4<u32>(arg_1.x, var_0.c, var_0.c >> (~1146u % 32u), ~4294967295u);
}

fn func_5(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = arg_2;
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, ~abs(var_0.b), 1i, var_0.a), min(_wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, 339i, arg_2.d, arg_2.d), select(vec4<i32>(36569i, arg_2.d, arg_2.b, 0i), vec4<i32>(var_0.a, arg_2.d, 17045i, 1i), true), vec4<i32>(1i, var_0.a, 54847i, 2147483647i)), vec4<i32>(var_0.d, 0i, var_0.b, arg_2.d) >> (~vec4<u32>(19996u, arg_1, var_0.c, arg_0.x) % vec4<u32>(32u)))), max(i32(-1i) * -2147483647i, arg_2.b), ~(~(~(1u << (arg_2.c % 32u)))), -(~arg_2.d | ((arg_2.b << (67692u % 32u)) | ~2147483647i)));
    let var_1 = ~(vec2<u32>(arg_0.x, _wgslsmith_mod_u32(reverseBits(var_0.c), 11535u & u_input.a)) | arg_0.xx);
    var var_2 = arg_3;
    let var_3 = vec4<i32>(-max(_wgslsmith_clamp_i32(var_0.a, arg_2.d, -1i), 0i), var_0.d << (select(arg_1, ~arg_1, arg_3.x) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, arg_2.a), -max(vec2<i32>(arg_2.b, -51202i), vec2<i32>(arg_2.a, 1i))), -26564i) & vec4<i32>(~(~56671i), 2147483647i, ~_wgslsmith_clamp_i32(firstLeadingBit(-58248i), _wgslsmith_sub_i32(arg_2.a, var_0.d), 0i), 2147483647i);
    return Struct_2(vec4<f32>(-903f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -166f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-111f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-549f)), _wgslsmith_f_op_f32(max(-624f, -683f))))), arg_2, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 16496u, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 19212u, 30221u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_mod_vec4_u32(func_1(1764f, vec4<u32>(4338u, 4294967295u, u_input.a, 40463u), vec2<bool>(false, false)), select(vec4<u32>(u_input.a, 3799u, u_input.a, u_input.a), vec4<u32>(u_input.a, 61304u, 8160u, 4294967295u), vec4<bool>(false, true, true, false)))), ~abs(~vec4<u32>(16204u, u_input.a, u_input.a, u_input.a)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), u_input.a, Struct_1(max(-1i, 1i), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(-3770i, 10020i), min(vec2<i32>(-600i, 19354i), vec2<i32>(-2147483647i, -2147483647i))), 35408u, firstTrailingBit(~(~2147483647i))), vec2<bool>(select(true, select(true, true, true) | true, false), !any(select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    let var_1 = Struct_2(var_0.a, func_5(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, u_input.a, u_input.a, 1u)), min(vec4<u32>(var_0.b.c, 1u, 0u, u_input.a) << (vec4<u32>(var_0.b.c, 3916u, var_0.c, u_input.a) % vec4<u32>(32u)), vec4<u32>(4294967295u, u_input.a, 4294967295u, 50832u)), min(max(vec4<u32>(u_input.a, 4294967295u, 37826u, 4294967295u), vec4<u32>(var_0.b.c, 1u, u_input.a, var_0.c)), ~vec4<u32>(36122u, u_input.a, 4294967295u, var_0.b.c))), u_input.a, Struct_1(var_0.b.b, var_0.b.d, _wgslsmith_dot_vec3_u32(vec3<u32>(35601u, 50778u, 56893u) | vec3<u32>(var_0.c, 0u, 1u), vec3<u32>(37661u, 0u, 3597u)), _wgslsmith_clamp_i32(-5451i, var_0.b.d, var_0.b.b) << ((var_0.c & var_0.b.c) % 32u)), select(vec2<bool>(any(vec3<bool>(false, true, true)), false), vec2<bool>(true, true), false)).b, func_5(vec4<u32>(~1u, 1u, var_0.c, select(var_0.c, u_input.a << (var_0.b.c % 32u), any(vec3<bool>(false, false, true)))), ~var_0.c, func_5(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.c, 0u, u_input.a, u_input.a), max(vec4<u32>(var_0.b.c, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 35465u, 0u, 58385u))), var_0.b.c, var_0.b, vec2<bool>(true, true)).b, vec2<bool>(true, !any(vec2<bool>(false, true)))).b.c);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(var_1.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_1.a - var_1.a))))))), func_5(min(vec4<u32>(var_1.c, 1u, var_1.c, 4294967295u) | vec4<u32>(var_0.b.c, var_1.b.c, 4294967295u, 47970u), vec4<u32>(countOneBits(86888u), reverseBits(var_1.b.c), u_input.a, 0u)), 1u, Struct_1(_wgslsmith_mod_i32(~var_1.b.a, 1i << (var_1.c % 32u)), -(var_0.b.b | 41609i), abs(~var_1.b.c), var_1.b.a), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true)))).b, _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, var_1.b.c) & ~4294967295u, abs(abs(u_input.a))), max(func_5(vec4<u32>(14050u, 104094u, 1u, u_input.a) << (vec4<u32>(var_0.c, var_1.c, var_1.b.c, 50056u) % vec4<u32>(32u)), 97888u, func_5(vec4<u32>(var_1.b.c, var_1.b.c, 43111u, 0u), var_0.c, var_1.b, vec2<bool>(false, true)).b, vec2<bool>(true, true)).b.c, _wgslsmith_add_u32(u_input.a, ~var_1.b.c))));
    let var_2 = ~(max(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, var_0.b.b, var_1.b.d), vec3<i32>(1i, var_1.b.b, -35580i)) >> (func_1(var_0.a.x, vec4<u32>(var_0.b.c, 48962u, 4294967295u, var_1.b.c), vec2<bool>(false, true)).yww % vec3<u32>(32u)), min(~vec3<i32>(2147483647i, var_0.b.d, 0i), -vec3<i32>(var_0.b.b, 0i, var_0.b.a))) >> (select(abs(select(vec3<u32>(var_1.b.c, u_input.a, var_0.b.c), vec3<u32>(u_input.a, 2465u, var_0.c), vec3<bool>(false, true, true))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(u_input.a, 4294967295u, 4294967295u)), vec3<bool>(true, false, var_1.b.a != var_0.b.b)) % vec3<u32>(32u)));
    var_0 = func_5(~firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(6318u, 18520u, 41846u, var_0.c), vec4<u32>(7187u, var_0.b.c, u_input.a, 41028u))), 26382u, Struct_1(max(_wgslsmith_clamp_i32(var_0.b.a, 45585i, var_1.b.a) | 13665i, -2147483647i), 56771i, 60956u, i32(-1i) * -23682i), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, var_0.b.d <= -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.xww * var_1.a.www), var_0.a.zyz) * _wgslsmith_f_op_vec3_f32(var_1.a.zzz * var_1.a.xxw)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, 1000f)) * _wgslsmith_f_op_f32(-140f + 1000f)), 139f, var_0.a.x, 1263f), _wgslsmith_f_op_vec2_f32(ceil(var_1.a.wy)), var_1.a.x);
}

