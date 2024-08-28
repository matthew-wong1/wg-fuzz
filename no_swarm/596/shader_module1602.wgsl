struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<i32> {
    let var_0 = abs(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(min(u_input.a, u_input.c), 2147483647i & u_input.c, -1i, ~0i)), vec4<i32>(~(-1i), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), countOneBits(15456i), u_input.b.x) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    let var_1 = ~(-19182i);
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 36741u, firstTrailingBit(2107u) << (0u % 32u), 0u), ~vec4<u32>(~0u, _wgslsmith_add_u32(62992u, 36531u), 4294967295u, _wgslsmith_mod_u32(5040u, 720u))), _wgslsmith_clamp_i32(2147483647i, var_1, 1i), 1i, true);
    var_2 = Struct_1(var_2.a | ~countOneBits(var_2.a), var_1 & firstTrailingBit(reverseBits(max(var_0.x, var_0.x))), _wgslsmith_div_i32(var_0.x, var_1), false);
    let var_3 = select(select(!(!vec3<bool>(true, var_2.d, true)), !(!select(vec3<bool>(var_2.d, false, false), vec3<bool>(var_2.d, true, var_2.d), vec3<bool>(var_2.d, var_2.d, var_2.d))), true), vec3<bool>(false, var_2.d, select(true, !any(vec2<bool>(false, var_2.d)), var_2.d)), false);
    return _wgslsmith_div_vec3_i32(u_input.b.xzw, u_input.b.yxx);
}

fn func_2() -> f32 {
    var var_0 = ~1u;
    let var_1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_add_u32(max(1u, 5682u), _wgslsmith_clamp_u32(0u, 27708u, 0u)) | 22800u, _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(33471u << (0u % 32u), ~0u))), countOneBits(u_input.c) | ~(~_wgslsmith_sub_i32(-2147483647i, -2147483647i)), _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(u_input.b.xxz, vec3<i32>(u_input.c, u_input.c, u_input.c)), func_3()) | u_input.b.x, (any(vec2<bool>(true, true)) | all(vec2<bool>(false, true))) && false);
    var var_2 = var_1;
    var var_3 = _wgslsmith_sub_vec4_u32((countOneBits(firstTrailingBit(vec4<u32>(var_2.a, var_1.a, 71700u, var_1.a))) << ((~vec4<u32>(var_2.a, var_2.a, var_1.a, 0u) ^ (vec4<u32>(var_1.a, var_2.a, 0u, var_1.a) >> (vec4<u32>(var_2.a, 0u, 1u, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u))) >> (~countOneBits(firstLeadingBit(vec4<u32>(var_2.a, 0u, 1u, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, ~(var_2.a << (var_2.a % 32u)), ~abs(var_2.a), countOneBits(var_2.a)), _wgslsmith_add_vec4_u32(vec4<u32>(62910u << (var_2.a % 32u), 0u, var_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(28514u, var_1.a), vec2<u32>(var_1.a, var_2.a))), firstTrailingBit(vec4<u32>(18784u, var_2.a, var_2.a, var_2.a)))));
    var_0 = 1199u & var_2.a;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2109f - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(631f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3211f)), ~var_2.a <= var_1.a)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, 357f)), _wgslsmith_f_op_f32(2335f + 1463f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-232f, _wgslsmith_f_op_f32(f32(-1f) * -234f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -534f))))), false));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -1242f);
    var_0 = _wgslsmith_f_op_f32(step(-2017f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-944f, -1000f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(202f * 1000f) - -367f), arg_0.d)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1945f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2983f, -1914f) + _wgslsmith_div_f32(483f, -651f)) + _wgslsmith_f_op_f32(-1975f * _wgslsmith_f_op_f32(f32(-1f) * -2240f))), -1266f)), _wgslsmith_f_op_f32(-592f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -1965f) + -1000f)));
    var var_2 = arg_0.b;
    return 1i;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_mod_u32(~67370u, 1u), countOneBits(~1u), 1u >> (1u % 32u), ~(~40505u))), 0i, ~(i32(-1i) * -1i), _wgslsmith_f_op_f32(func_4(firstLeadingBit(func_1(Struct_1(4294967295u, u_input.d, u_input.d, true), u_input.d, 0i)), Struct_1(1u, -2147483647i, u_input.b.x & 0i, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1063f * -204f)), Struct_1(~63886u, 0i, firstTrailingBit(u_input.a), true))) < _wgslsmith_f_op_f32(1583f - 474f));
    let var_1 = !select(!select(vec2<bool>(true, true), select(vec2<bool>(false, var_0.d), vec2<bool>(var_0.d, false), vec2<bool>(var_0.d, var_0.d)), false || var_0.d), !select(vec2<bool>(true, var_0.d), vec2<bool>(true, true), var_0.d), !(!select(vec2<bool>(true, false), vec2<bool>(true, var_0.d), vec2<bool>(false, var_0.d))));
    var var_2 = Struct_1(~42400u, -u_input.c, u_input.a, all(!vec4<bool>(true, var_1.x, any(var_1), !var_1.x)));
    let var_3 = Struct_1(var_2.a, var_2.b, -1i, false);
    var_0 = Struct_1(abs(countOneBits(max(4294967295u, _wgslsmith_div_u32(var_2.a, var_3.a)))), -_wgslsmith_add_i32(max(_wgslsmith_div_i32(var_3.c, -3512i), u_input.c), 21285i), 0i, var_2.d);
    var_0 = Struct_1(firstLeadingBit(~_wgslsmith_mult_u32(min(var_2.a, var_3.a), ~var_2.a)), var_2.b, var_2.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~select(-vec4<i32>(var_3.b, var_3.b, var_3.b, var_2.b), u_input.b, vec4<bool>(false, var_2.d, var_3.d, var_3.d))), -(var_0.b ^ u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(1096f, -754f)) + vec2<f32>(_wgslsmith_f_op_f32(-793f * -707f), _wgslsmith_f_op_f32(1172f - -1356f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(168f, 395f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(484f, 567f)))))), _wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(-13897i, 0i) << (~vec2<u32>(7873u, var_0.a) % vec2<u32>(32u))), -vec2<i32>(_wgslsmith_sub_i32(u_input.d, var_2.c), var_0.b)));
}

