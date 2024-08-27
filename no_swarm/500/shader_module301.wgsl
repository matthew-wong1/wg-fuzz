struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec4<u32>(88753u, 4294967295u, 17193u, 0u), -30368i, vec3<f32>(-1000f, -693f, 109f)), Struct_2(vec4<u32>(45519u, 27132u, 0u, 0u), 0i, vec3<f32>(-441f, -625f, -161f)), Struct_2(vec4<u32>(26581u, 0u, 20113u, 1u), 42452i, vec3<f32>(1013f, -114f, -508f)), Struct_2(vec4<u32>(141208u, 9279u, 1u, 0u), 0i, vec3<f32>(-229f, -2110f, -1000f)), Struct_2(vec4<u32>(0u, 67524u, 1u, 1u), 0i, vec3<f32>(2127f, 1036f, -334f)), Struct_2(vec4<u32>(65777u, 51745u, 23370u, 0u), -10115i, vec3<f32>(-1504f, -137f, 314f)), Struct_2(vec4<u32>(17703u, 13856u, 1u, 41541u), 2147483647i, vec3<f32>(252f, 1363f, 1508f)), Struct_2(vec4<u32>(4294967295u, 20907u, 4294967295u, 1u), 34562i, vec3<f32>(328f, -1229f, -1096f)));

var<private> global1: vec2<i32> = vec2<i32>(-18770i, -1i);

var<private> global2: array<bool, 2> = array<bool, 2>(false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = Struct_4(Struct_2(max(max(_wgslsmith_div_vec4_u32(vec4<u32>(4789u, 4294967295u, 30556u, 4294967295u), vec4<u32>(u_input.c, u_input.b, 3905u, u_input.b)), vec4<u32>(u_input.b, u_input.b, u_input.c, 6377u)), firstTrailingBit(vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.b)) << (~vec4<u32>(5499u, u_input.a, u_input.c, u_input.c) % vec4<u32>(32u))), -1i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(284f, 749f, -1107f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-570f, 265f, -596f), vec3<f32>(-635f, 638f, 158f))))))), 52927u, 1u);
    global2 = array<bool, 2>();
    global2 = array<bool, 2>();
    let var_1 = Struct_3(Struct_1(select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 2u)], global2[_wgslsmith_index_u32(53127u, 2u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.b, 2u)]), vec2<bool>(global2[_wgslsmith_index_u32(var_0.c, 2u)], global2[_wgslsmith_index_u32(var_0.b, 2u)])), !vec2<bool>(true, global2[_wgslsmith_index_u32(var_0.a.a.x, 2u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 2u)], false), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], false), vec2<bool>(global2[_wgslsmith_index_u32(var_0.a.a.x, 2u)], global2[_wgslsmith_index_u32(u_input.c, 2u)]))), vec2<bool>(!global2[_wgslsmith_index_u32(var_0.c, 2u)], global2[_wgslsmith_index_u32(~61640u, 2u)]), select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 2u)], false), !vec2<bool>(global2[_wgslsmith_index_u32(var_0.c, 2u)], true), true)), _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.a.x, 15728u, 57141u), vec3<u32>(12220u, 103648u, u_input.b)), var_0.a.a.yzw)), ~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.c.x, _wgslsmith_div_f32(940f, -438f)))) * _wgslsmith_f_op_f32(-399f * -274f)), ~firstTrailingBit(~select(vec4<i32>(21463i, 0i, -10118i, -1i), vec4<i32>(-2147483647i, u_input.d.x, -50328i, -10093i), global2[_wgslsmith_index_u32(0u, 2u)])), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.a.a.yw, firstLeadingBit(var_0.a.a.xw)), abs(~var_0.a.a.zw)), vec2<u32>(u_input.b, 115582u)), var_0.a.b);
    global0 = array<Struct_2, 8>();
    return _wgslsmith_div_i32(19683i, i32(-1i) * -32234i) << (1u % 32u);
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: i32, arg_3: bool) -> vec4<bool> {
    global0 = array<Struct_2, 8>();
    global1 = _wgslsmith_clamp_vec2_i32(u_input.d, u_input.d, vec2<i32>(firstLeadingBit(u_input.d.x), min(u_input.d.x, _wgslsmith_sub_i32(-1i, 2147483647i))));
    global1 = reverseBits(~vec2<i32>(u_input.d.x, arg_2));
    var var_0 = Struct_3(Struct_1(select(!(!vec2<bool>(arg_3, global2[_wgslsmith_index_u32(0u, 2u)])), !select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 2u)]), vec2<bool>(false, false), false), !select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, true), vec2<bool>(arg_3, true))), _wgslsmith_mod_u32(~(~u_input.b), u_input.b & min(u_input.a, 1u)), _wgslsmith_clamp_u32(abs(23181u), ~0u, ~firstLeadingBit(u_input.b))), -1000f, vec4<i32>(17904i, ~478i, global1.x, ~2147483647i), ~_wgslsmith_clamp_u32(~_wgslsmith_div_u32(1u, 31795u), ~(~5856u), u_input.c), -1i);
    var var_1 = var_0.b;
    return !(!select(select(!vec4<bool>(arg_3, global2[_wgslsmith_index_u32(var_0.a.b, 2u)], false, false), !vec4<bool>(var_0.a.a.x, true, true, var_0.a.a.x), select(vec4<bool>(false, arg_3, false, false), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 2u)], true, true), vec4<bool>(false, var_0.a.a.x, arg_3, global2[_wgslsmith_index_u32(u_input.b, 2u)]))), vec4<bool>(arg_2 >= arg_2, true, var_0.a.b > u_input.a, false), !all(vec3<bool>(false, arg_3, arg_3))));
}

fn func_2(arg_0: i32) -> i32 {
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-500f, -449f), vec2<f32>(-1104f, 2458f), true)))))) + vec2<f32>(_wgslsmith_f_op_f32(floor(2721f)), -1372f))));
    var var_1 = 31954u;
    let var_2 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, global2[_wgslsmith_index_u32(15637u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)])))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, 1582f), vec3<f32>(var_0.x, var_0.x, 565f), vec3<bool>(global2[_wgslsmith_index_u32(62169u, 2u)], global2[_wgslsmith_index_u32(u_input.b, 2u)], global2[_wgslsmith_index_u32(0u, 2u)])))))), ~(-1i), func_3(), !(!(!(true && global2[_wgslsmith_index_u32(u_input.b, 2u)]))));
    return ~arg_0;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global1 = arg_0.xy ^ _wgslsmith_sub_vec2_i32(-countOneBits(~u_input.d), countOneBits(select(_wgslsmith_add_vec2_i32(arg_1.wy, arg_1.zz), -arg_0.xx, !vec2<bool>(arg_2.a.x, arg_2.a.x))));
    var var_0 = Struct_4(Struct_2(vec4<u32>(1u, 23168u, ~u_input.a, 8328u), func_2(~(-2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), 2014f, _wgslsmith_f_op_f32(-arg_3))), 0u, _wgslsmith_sub_u32(_wgslsmith_div_u32(~1u, u_input.a), ~(~_wgslsmith_mult_u32(26942u, arg_2.b))));
    global0 = array<Struct_2, 8>();
    let var_1 = Struct_2(_wgslsmith_clamp_vec4_u32(var_0.a.a, ~var_0.a.a, abs(var_0.a.a)), arg_0.x, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, var_0.a.c.x)), _wgslsmith_f_op_f32(ceil(-729f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.c.x - 1000f)))))));
    var var_2 = arg_2;
    return Struct_1(arg_2.a, ~(~_wgslsmith_add_u32(_wgslsmith_div_u32(var_1.a.x, var_1.a.x), 4294967295u)), _wgslsmith_clamp_u32(~0u, 1u, _wgslsmith_clamp_u32(~arg_2.b, var_1.a.x, var_0.a.a.x)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_3) -> f32 {
    var var_0 = Struct_3(func_5(vec4<i32>(abs(u_input.d.x), -6785i, -4198i, 1i), countOneBits(vec4<i32>(func_2(-18774i), 0i, 22521i, global1.x)), Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(reverseBits(1u), 2u)], true), ~u_input.b, 0u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, -304f), -139f, arg_0 < arg_0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_3.b, arg_3.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-448f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))))), arg_3.c, ~_wgslsmith_sub_u32(~u_input.c, 41934u), global1.x);
    let var_1 = false;
    var_0 = arg_3;
    let var_2 = Struct_3(Struct_1(func_5(min(vec4<i32>(global1.x, -2147483647i, u_input.d.x, u_input.d.x) | vec4<i32>(global1.x, 2147483647i, -76161i, 0i), -arg_3.c), vec4<i32>(0i, global1.x, min(-20114i, -49692i), var_0.e), func_5(arg_3.c, abs(arg_3.c), arg_3.a, 550f), arg_3.b).a, firstTrailingBit(~(~var_0.a.c)), var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - var_0.b), 1f)), -228f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-303f * _wgslsmith_f_op_f32(f32(-1f) * -1754f)) * _wgslsmith_f_op_f32(select(-564f, _wgslsmith_f_op_f32(max(509f, 1005f)), global2[_wgslsmith_index_u32(select(var_0.d, arg_3.d, true), 2u)])))), abs(_wgslsmith_mult_vec4_i32(~arg_3.c, var_0.c)) | ~(~var_0.c ^ _wgslsmith_div_vec4_i32(vec4<i32>(30842i, 36937i, -2147483647i, -1i), arg_3.c)), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.d, _wgslsmith_mod_u32(102805u, arg_3.d)), ~(~min(vec2<u32>(80582u, 6563u), vec2<u32>(var_0.a.b, 0u)))), ~(~(~(-1i))));
    global2 = array<bool, 2>();
    return 517f;
}

fn func_6(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<bool>) -> vec2<u32> {
    var var_0 = ~(~(u_input.c & reverseBits(25011u)));
    global1 = vec2<i32>(-(~(-reverseBits(-19811i))), global1.x);
    var var_1 = arg_2.x;
    var var_2 = global0[_wgslsmith_index_u32(1u | u_input.a, 8u)];
    var var_3 = ~(~((1u << (var_2.a.x % 32u)) ^ ~5760u)) ^ ~firstTrailingBit(_wgslsmith_mult_u32(1u, 4294967295u) & (0u << (u_input.c % 32u)));
    return ~vec2<u32>(~u_input.c, u_input.c);
}

fn func_7(arg_0: bool) -> u32 {
    let var_0 = Struct_4(Struct_2(~vec4<u32>(u_input.a, ~44962u, u_input.a, u_input.b << (u_input.c % 32u)), global1.x ^ 1i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1710f, -605f, -584f))))), 1u, ~(select(1u, 23156u, func_5(vec4<i32>(global1.x, global1.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, global1.x, 0i, -1i), Struct_1(vec2<bool>(true, true), 98215u, u_input.b), 436f).a.x) ^ (_wgslsmith_div_u32(31102u, 4294967295u) | u_input.b)));
    global2 = array<bool, 2>();
    let var_1 = vec2<i32>(global1.x, func_3());
    var var_2 = vec3<bool>(!(!arg_0), !(true || arg_0), true);
    let var_3 = vec3<i32>(1i, abs(1i >> (select(33519u, var_0.c, false) % 32u)) << (abs(1u) % 32u), firstTrailingBit(-3362i << ((u_input.c | ~u_input.c) % 32u)));
    return ~(select(u_input.a, 58456u, !(-20073i >= var_1.x)) ^ (countOneBits(~u_input.c) << (var_0.c % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(select(vec4<bool>(global2[_wgslsmith_index_u32(82521u, 2u)], false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 2u)], false, global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(86665u, 2u)]), !vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 2u)], false, true)), vec4<bool>(true, u_input.a < 30303u, true, global2[_wgslsmith_index_u32(u_input.c, 2u)]), vec4<bool>(global2[_wgslsmith_index_u32(~u_input.c, 2u)], true, true, all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 2u)], global2[_wgslsmith_index_u32(u_input.b, 2u)], true)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1002f) + 1000f));
    var var_2 = ~(vec3<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 0u)), abs(vec2<u32>(4294967295u, u_input.a))), 1u, 1u) << (vec3<u32>(0u, u_input.b, 1u) % vec3<u32>(32u)));
    global2 = array<bool, 2>();
    let var_3 = _wgslsmith_f_op_f32(387f - -822f);
    let x = u_input.a;
    s_output = StorageBuffer(func_7(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~var_2.yz, var_2.xx), func_6(_wgslsmith_f_op_f32(func_1(var_3, true, var_0.xw, Struct_3(Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], false), 1u, u_input.a), 266f, vec4<i32>(global1.x, u_input.d.x, -1125i, -39828i), var_2.x, global1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_3) + vec2<f32>(-365f, var_3)), vec2<bool>(false, global2[_wgslsmith_index_u32(30311u, 2u)]))), 2u)]));
}

