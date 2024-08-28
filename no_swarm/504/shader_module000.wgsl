struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: array<u32, 10>;

var<private> global2: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(5200u, 105949u, 1u, 34239u), vec4<u32>(69307u, 0u, 0u, 34852u), vec4<u32>(1u, 0u, 0u, 29125u), vec4<u32>(2583u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 22590u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(1u, 1u, 93757u, 4294967295u), vec4<u32>(1u, 24234u, 0u, 8343u), vec4<u32>(53191u, 1u, 4294967295u, 48116u), vec4<u32>(65121u, 0u, 33567u, 39487u), vec4<u32>(30390u, 4294967295u, 24801u, 78810u), vec4<u32>(37106u, 19784u, 0u, 30919u), vec4<u32>(1u, 10518u, 1u, 51040u), vec4<u32>(16549u, 4294967295u, 5070u, 1u), vec4<u32>(0u, 111958u, 0u, 25408u), vec4<u32>(1u, 33650u, 56695u, 15219u), vec4<u32>(39385u, 4294967295u, 1u, 77299u), vec4<u32>(7205u, 0u, 31382u, 0u), vec4<u32>(22477u, 0u, 4294967295u, 8529u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec3<f32>, arg_3: vec3<i32>) -> bool {
    var var_0 = true;
    global1 = array<u32, 10>();
    var_0 = any(vec3<bool>(false & arg_1, !any(vec3<bool>(arg_1, arg_1, arg_1)), arg_1));
    let var_1 = Struct_1(!select(select(select(global0[_wgslsmith_index_u32(arg_0, 22u)], vec2<bool>(false, false), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 10u)], 22u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, 0u), 22u)], 1i <= u_input.a), global0[_wgslsmith_index_u32(u_input.b.x, 22u)], arg_1));
    var var_2 = _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(u_input.b.x, u_input.b.x, 96963u, 1u))), vec4<u32>(u_input.b.x, 18272u, _wgslsmith_add_u32(~u_input.b.x, 4294967295u), 0u));
    return arg_1;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = vec4<u32>(global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(4294967295u, global1[_wgslsmith_index_u32(57727u, 10u)], 41130u)) >> (global1[_wgslsmith_index_u32(arg_1.x, 10u)] % 32u), 10u)], 50759u, global1[_wgslsmith_index_u32(4294967295u, 10u)], countOneBits(~reverseBits(~arg_1.x)));
    global1 = array<u32, 10>();
    global0 = array<vec2<bool>, 22>();
    let var_1 = Struct_1(vec2<bool>(arg_3, func_3(4124u, !arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(261f, 464f, 632f)) * vec3<f32>(-944f, -313f, -2333f)), -min(vec3<i32>(12204i, -20782i, 18014i), vec3<i32>(-4638i, 0i, 0i)))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-929f, -458f)), 1000f, any(select(global0[_wgslsmith_index_u32(var_0.x, 22u)], var_1.a, global0[_wgslsmith_index_u32(1u, 22u)])))) + _wgslsmith_f_op_f32(f32(-1f) * -185f))));
    return Struct_1(vec2<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, arg_1.x) >> (vec2<u32>(16250u, 4294967295u) % vec2<u32>(32u)), ~vec2<u32>(u_input.b.x, 1u)) > u_input.b.x));
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    global2 = array<vec4<u32>, 19>();
    global1 = array<u32, 10>();
    var var_0 = func_2(arg_0, vec4<u32>(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4168u, 10u)], 10u)], global1[_wgslsmith_index_u32(74353u, 10u)]), _wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(59285u, 19u)], vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], 10u)], 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], 0u, u_input.b.x)))), u_input.b.x, firstLeadingBit(1u), u_input.b.x >> (global1[_wgslsmith_index_u32(13316u, 10u)] % 32u)), false, true);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(340f + -1066f), 1f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-671f, 464f) - _wgslsmith_f_op_f32(floor(-2110f))))) - vec2<f32>(_wgslsmith_f_op_f32(-409f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-414f, -1516f)), _wgslsmith_f_op_f32(f32(-1f) * -752f), var_0.a.x))), _wgslsmith_div_f32(1307f, 1295f)));
    global0 = array<vec2<bool>, 22>();
    return vec2<f32>(-249f, var_1.x);
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = func_2(func_2(Struct_1(vec2<bool>(true, all(vec3<bool>(true, false, true)))), vec4<u32>(~(~4294967295u), u_input.b.x, min(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 111547u, global1[_wgslsmith_index_u32(u_input.b.x, 10u)]), vec3<u32>(u_input.b.x, u_input.b.x, 11362u))), u_input.b.x << ((u_input.b.x >> (21709u % 32u)) % 32u)), ((arg_0 < 174f) && select(true, true, false)) & !any(vec4<bool>(true, true, false, false)), false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 33523u, 20189u), u_input.b), ~u_input.b, u_input.b), ~(~vec3<u32>(0u, 27765u, global1[_wgslsmith_index_u32(1u, 10u)])) << (vec3<u32>(~97401u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 67454u), u_input.b), global1[_wgslsmith_index_u32(select(4294967295u, global1[_wgslsmith_index_u32(u_input.b.x, 10u)], true), 10u)]) % vec3<u32>(32u))), 19u)], all(!vec4<bool>(true, false, true, all(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28481u, 10u)], 22u)]))), true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(814f, arg_2.x)) - arg_0);
    let var_2 = !(!(!(!select(vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(false, false, false), true))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, arg_0, var_2.x))))), -1881f);
    var var_3 = ~u_input.a;
    return func_2(Struct_1(vec2<bool>(false && select(var_2.x, true, var_0.a.x), !var_2.x)), global2[_wgslsmith_index_u32(0u, 19u)], var_2.x, true);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    global0 = array<vec2<bool>, 22>();
    global2 = array<vec4<u32>, 19>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_vec2_f32(func_4(func_2(arg_0, vec4<u32>(0u, 1285u, 1u, u_input.b.x), true, false))).x, 1129f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(223f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-766f, -126f, 635f)) - vec3<f32>(899f, -635f, -1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(487f, -1025f, 1226f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1151f, 187f, 527f)))))))));
    let var_1 = select(_wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(662i, -612i), vec2<i32>(arg_1.x, -50468i)) << (firstLeadingBit(1u) % 32u), arg_1.x)), u_input.a, true);
    let var_2 = vec4<i32>(arg_1.x, firstTrailingBit(~var_1), -2147483647i, 2147483647i);
    return func_5(var_0.x, vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, 155f, var_0.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, 613f, var_0.x, 1101f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -1630f)) + vec4<f32>(var_0.x, var_0.x, -763f, var_0.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = func_6(func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2000f + 298f), -2019f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(983f, -125f)) * _wgslsmith_f_op_f32(sign(1758f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_1(vec2<bool>(false, arg_1.a.x)), global2[_wgslsmith_index_u32(99034u, 19u)], true, true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1921f, 710f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-598f + 435f) * _wgslsmith_div_f32(791f, 2189f)), _wgslsmith_f_op_f32(617f + _wgslsmith_f_op_f32(floor(-1616f))), 123f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(645f, 1017f)) - 247f))), ~(-(~(vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(-1i, -721i, u_input.a)))), u_input.b.x);
    let var_1 = arg_0;
    var var_2 = func_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-871f)) * _wgslsmith_f_op_vec2_f32(func_4(Struct_1(var_1.a))).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(553f)) - 1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1174f + -565f), _wgslsmith_div_f32(253f, 1391f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(-170f)), -539f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(795f, 1000f) - vec2<f32>(-992f, 151f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(754f - 986f), _wgslsmith_f_op_f32(sign(1000f)), 1f, _wgslsmith_f_op_f32(max(278f, -1459f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(523f, 1203f, 348f, -869f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(991f, -1411f, 1741f, 475f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -529f), -904f, 1818f, _wgslsmith_f_op_f32(max(335f, -1894f)))), select(select(vec4<bool>(true, true, false, arg_1.a.x), select(vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_1.a.x), vec4<bool>(true, arg_1.a.x, arg_0.a.x, arg_0.a.x), var_1.a.x), true), select(!vec4<bool>(var_1.a.x, arg_0.a.x, false, true), select(vec4<bool>(arg_0.a.x, false, false, arg_1.a.x), vec4<bool>(false, arg_0.a.x, true, var_1.a.x), arg_0.a.x), select(vec4<bool>(arg_1.a.x, false, true, false), vec4<bool>(false, arg_0.a.x, var_0.a.x, arg_1.a.x), arg_1.a.x)), func_6(func_5(-285f, vec2<f32>(-552f, 199f), vec4<f32>(183f, 953f, 191f, 1000f)), min(vec3<i32>(u_input.a, 2147483647i, 13754i), vec3<i32>(-2147483647i, -2147483647i, -14110i)), u_input.b.x).a.x))));
    var var_3 = _wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(~(~vec4<i32>(u_input.a, u_input.a, u_input.a, -747i)), ~vec4<i32>(0i, u_input.a, u_input.a, u_input.a) & (vec4<i32>(-10097i, 2147483647i, -31426i, u_input.a) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), -(~select(vec4<i32>(-34242i, -865i, -25060i, u_input.a), vec4<i32>(1472i, -2147483647i, 16772i, u_input.a), vec4<bool>(arg_0.a.x, arg_1.a.x, false, var_1.a.x)) & (_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 25360i, -16489i, 0i), vec4<i32>(16643i, u_input.a, u_input.a, 1i)) | vec4<i32>(20559i, 47961i, u_input.a, -33738i))));
    var var_4 = func_2(var_0, vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, 0u), global1[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_dot_vec3_u32(u_input.b, firstLeadingBit(~u_input.b)), 69208u, 1u), !var_1.a.x, true);
    return !select(vec2<bool>(func_2(func_6(var_0, var_3.www, u_input.b.x), vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], 51546u, u_input.b.x, 1u) >> (global2[_wgslsmith_index_u32(u_input.b.x, 19u)] % vec4<u32>(32u)), true, true).a.x, var_1.a.x), !func_6(arg_1, reverseBits(vec3<i32>(u_input.a, var_3.x, 16263i)), _wgslsmith_mod_u32(46524u, 67601u)).a, !func_2(var_0, ~global2[_wgslsmith_index_u32(1u, 19u)], arg_1.a.x, var_2.a.x).a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 10>();
    var var_0 = Struct_1(!(!select(func_1(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true))), func_6(Struct_1(vec2<bool>(false, true)), vec3<i32>(1i, -1i, -3522i), 25711u).a, true)));
    var var_1 = func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<bool>(var_0.a.x, true)))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1815f, 274f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-551f, -244f, -839f, -643f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(395f, -1000f, 1404f, 659f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1279f, -765f, -468f, -977f))), vec4<f32>(924f, 1000f, -690f, -1048f), var_0.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1386f, 1512f, 183f, 939f), vec4<f32>(-700f, -2330f, -1576f, -1879f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-168f, -1138f, -1539f, 841f)))))));
    let var_2 = func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1254f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1293f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(427f)), -207f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-241f, -2273f))), -1000f, 428f)));
    let var_3 = var_2;
    let var_4 = func_5(-767f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-573f, 1423f) + vec2<f32>(649f, -2205f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-208f, 606f, 1117f, -558f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1596f, -1235f, 1000f, 431f))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_i32(~(~u_input.a), _wgslsmith_mod_i32(firstLeadingBit(-19520i), ~u_input.a)), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(-22745i, u_input.a), vec2<i32>(1i, u_input.a) & vec2<i32>(-43655i, u_input.a))), u_input.b.zx, global2[_wgslsmith_index_u32(0u, 19u)], min(46843u, ~(~(~0u))));
}

