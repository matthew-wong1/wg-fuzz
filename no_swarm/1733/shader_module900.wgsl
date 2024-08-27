struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(i32(-2147483648), 0i, i32(-2147483648), 23697i, -3093i, 4276i, -56890i, -1i, 0i, i32(-2147483648), 13648i, 8064i, -32468i, -48607i, 1i, -982i, 5862i, -14763i, -73423i, 2147483647i, 17426i, -1i, -73539i, -503i, i32(-2147483648), 49805i, -1i, -19742i, -22077i, 33291i, 2147483647i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<i32, 31>();
    var var_0 = _wgslsmith_mod_u32(u_input.b, ~u_input.b);
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1398f))), _wgslsmith_f_op_f32(f32(-1f) * -404f)), arg_1.a)), arg_0.x);
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: bool) -> i32 {
    global0 = array<i32, 31>();
    let var_0 = arg_1;
    global0 = array<i32, 31>();
    var var_1 = 2147483647i;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-444f, _wgslsmith_div_f32(593f, _wgslsmith_f_op_f32(f32(-1f) * -391f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1279f) * _wgslsmith_f_op_f32(-114f + -152f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1373f - 396f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2307f)) - _wgslsmith_f_op_f32(f32(-1f) * -1047f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2293f))))));
    return global0[_wgslsmith_index_u32(arg_0, 31u)];
}

fn func_4(arg_0: i32, arg_1: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_sub_i32(~min(max(_wgslsmith_mod_i32(72666i, global0[_wgslsmith_index_u32(u_input.c, 31u)]), -1i), u_input.a), ~arg_0);
    global0 = array<i32, 31>();
    let var_1 = Struct_1(-623f, false);
    let var_2 = ~reverseBits(vec4<u32>(u_input.c << (805u % 32u), 77437u, ~69587u, ~max(59265u, u_input.c)));
    global0 = array<i32, 31>();
    return vec2<f32>(-910f, -207f);
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1167f, -626f), vec2<f32>(-202f, 832f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(914f, -476f) - vec2<f32>(160f, 376f))) + _wgslsmith_f_op_vec2_f32(func_4(func_3(u_input.b, vec3<bool>(true, true, false), true), true))) + vec2<f32>(_wgslsmith_f_op_f32(max(1f, -1535f)), func_1(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), func_1(vec2<bool>(false, true), Struct_1(-328f, true))).a))));
    var var_1 = (global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 31u)] >> (_wgslsmith_clamp_u32(~u_input.d, 1u, u_input.b << (~u_input.d % 32u)) % 32u)) ^ _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(reverseBits(u_input.b), 31u)], _wgslsmith_mod_i32(i32(-1i) * -31815i, -29431i >> (u_input.c % 32u)));
    var var_2 = Struct_3(func_1(vec2<bool>(true, true), func_1(vec2<bool>(true, true), Struct_1(1000f, true))));
    var var_3 = 109f;
    var_2 = Struct_3(func_1(select(select(!vec2<bool>(true, var_2.a.b), !vec2<bool>(var_2.a.b, var_2.a.b), var_2.a.b), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), !vec2<bool>(var_2.a.b, false), select(vec2<bool>(true, var_2.a.b), vec2<bool>(var_2.a.b, true), var_2.a.b)), all(vec2<bool>(true, false))), func_1(vec2<bool>(true, func_1(vec2<bool>(var_2.a.b, false), Struct_1(var_0.x, var_2.a.b)).b), Struct_1(_wgslsmith_f_op_f32(ceil(469f)), any(vec4<bool>(var_2.a.b, var_2.a.b, false, var_2.a.b))))));
    return vec2<bool>(~(firstTrailingBit(2496u) >> (4294967295u % 32u)) > firstTrailingBit(30498u), func_1(vec2<bool>(all(vec3<bool>(var_2.a.b, var_2.a.b, var_2.a.b)), !(var_2.a.a != var_2.a.a)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(645f, -492f) * _wgslsmith_f_op_f32(max(993f, var_2.a.a))), all(!vec3<bool>(var_2.a.b, var_2.a.b, false)))).b);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = Struct_2(func_1(vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_vec2_f32(func_4(u_input.a, true)).x), arg_2)), _wgslsmith_mult_u32(11088u, u_input.c), 4294967295u, arg_1);
    let var_1 = select(select(!vec3<bool>(true, arg_2, var_0.b >= var_0.b), vec3<bool>(true, arg_2, any(select(vec4<bool>(false, false, arg_2, false), vec4<bool>(false, var_0.d.b, arg_2, arg_2), var_0.a.b))), (firstTrailingBit(423u) << (_wgslsmith_add_u32(4294967295u, var_0.c) % 32u)) >= _wgslsmith_mult_u32(countOneBits(u_input.d), u_input.b)), vec3<bool>(any(select(vec2<bool>(arg_1.b, arg_0.a.b), !vec2<bool>(arg_1.b, true), vec2<bool>(true, true))), 1822f == arg_1.a, arg_0.a.b), !vec3<bool>(_wgslsmith_f_op_f32(1016f - arg_0.a.a) <= _wgslsmith_f_op_f32(f32(-1f) * -400f), arg_2, true));
    var var_2 = -1i;
    var_0 = Struct_2(Struct_1(func_1(!func_2(), func_1(vec2<bool>(true, false), Struct_1(-142f, false))).a, false), ~_wgslsmith_add_u32(27001u, firstTrailingBit(~u_input.c)), 30822u, arg_0.a);
    var_0 = Struct_2(arg_1, firstLeadingBit(reverseBits(~u_input.b | 4294967295u)), ~var_0.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(735f + func_1(var_1.yy, var_0.d).a)), any(select(select(vec4<bool>(arg_0.a.b, false, var_0.a.b, false), vec4<bool>(var_0.d.b, false, var_1.x, true), vec4<bool>(arg_1.b, true, false, var_0.a.b)), !vec4<bool>(false, var_0.a.b, arg_1.b, true), vec4<bool>(false, arg_1.b, false, false)))));
    return _wgslsmith_div_f32(func_1(select(vec2<bool>(true, true & arg_2), var_1.xy, _wgslsmith_div_f32(arg_0.a.a, arg_0.a.a) > _wgslsmith_f_op_f32(-1632f * arg_0.a.a)), arg_1).a, _wgslsmith_f_op_f32(-1000f * 806f));
}

fn func_6(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = firstTrailingBit(reverseBits(~vec3<u32>(~u_input.b, ~0u, u_input.d)));
    global0 = array<i32, 31>();
    let var_1 = vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.x, select(u_input.d, 0u, true)), ~vec2<u32>(var_0.x, var_0.x)) > var_0.x, false, all(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(439f == arg_1.x, true, true, false), var_0.x > _wgslsmith_mult_u32(3703u, u_input.b))));
    global0 = array<i32, 31>();
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(func_1(vec2<bool>(false, var_1.x), func_1(vec2<bool>(false, var_1.x), Struct_1(-2980f, var_1.x))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(293f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-533f, _wgslsmith_f_op_f32(round(arg_1.x)), false)) * _wgslsmith_f_op_f32(f32(-1f) * -119f)))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_1.x)), any(var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<bool>(true, false || all(vec3<bool>(false, true, false))), Struct_1(-1893f, true));
    let var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-(vec4<i32>(-7130i, u_input.a, 17858i, 0i) | vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) << (min(vec4<u32>(59431u, 53519u, u_input.c, 17952u) << (vec4<u32>(1u, 0u, u_input.c, 18053u) % vec4<u32>(32u)), ~vec4<u32>(47123u, u_input.c, 0u, u_input.d)) % vec4<u32>(32u)), ~(-vec4<i32>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(34820u, 31u)], global0[_wgslsmith_index_u32(u_input.c, 31u)], -1i)) << (vec4<u32>(u_input.d, _wgslsmith_add_u32(u_input.c, 410u), u_input.d & u_input.c, 30930u) % vec4<u32>(32u))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 31u)], global0[_wgslsmith_index_u32(u_input.d, 31u)], u_input.a, -43285i) | vec4<i32>(u_input.a, -2147483647i, global0[_wgslsmith_index_u32(u_input.d, 31u)], u_input.a), vec4<i32>(-10710i, global0[_wgslsmith_index_u32(u_input.b, 31u)], -1i, global0[_wgslsmith_index_u32(u_input.d, 31u)]), vec4<i32>(global0[_wgslsmith_index_u32(0u, 31u)], 15968i, -2147483647i, u_input.a) ^ vec4<i32>(u_input.a, 1i, global0[_wgslsmith_index_u32(u_input.b, 31u)], u_input.a)) ^ -vec4<i32>(9439i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.c, 31u)], global0[_wgslsmith_index_u32(11437u, 31u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 31u)], global0[_wgslsmith_index_u32(u_input.d, 31u)], global0[_wgslsmith_index_u32(u_input.d, 31u)])), -2110i, max(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 31u)])));
    var var_2 = reverseBits(_wgslsmith_mult_vec2_u32(~(~firstLeadingBit(vec2<u32>(u_input.b, 59036u))), ~vec2<u32>(26125u, ~90230u)));
    global0 = array<i32, 31>();
    var_0 = func_6(_wgslsmith_f_op_f32(func_5(Struct_3(func_1(func_2(), Struct_1(1020f, var_0.b))), Struct_1(1f, false), true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 830f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -2451f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-191f, var_0.a), vec2<f32>(var_0.a, -523f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)))))));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-1427f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - var_0.a)), !var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(872f, var_0.a), vec2<f32>(274f, -1269f)))))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(29672i, 12349i, var_1.x, global0[_wgslsmith_index_u32(63097u, 31u)]) << (~vec4<u32>(u_input.b, u_input.d, var_2.x, u_input.d) % vec4<u32>(32u)), -var_1), var_1.x, -(~(global0[_wgslsmith_index_u32(u_input.c, 31u)] << (18622u % 32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -var_1, vec4<i32>(-global0[_wgslsmith_index_u32(0u, 31u)], -8686i, firstTrailingBit(-2147483647i), -var_1.x))));
}

