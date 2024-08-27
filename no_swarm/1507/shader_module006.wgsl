struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(2147483647i, -38160i, 9690i), vec3<i32>(1095i, 2147483647i, 2147483647i), vec3<i32>(1i, -8506i, -66793i), vec3<i32>(-59689i, -37338i, -1i), vec3<i32>(-19780i, 45943i, 1i), vec3<i32>(34483i, 15775i, 29183i), vec3<i32>(32664i, -28026i, 0i), vec3<i32>(-30656i, i32(-2147483648), 36641i), vec3<i32>(-19931i, 2147483647i, -1i), vec3<i32>(-5602i, 1i, -1i));

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(-178f, vec2<i32>(-1i, -4493i), 2147483647i, vec4<bool>(false, true, false, false)), Struct_2(-1511f, vec2<i32>(15250i, 0i), i32(-2147483648), vec4<bool>(false, false, false, true)), Struct_2(2234f, vec2<i32>(i32(-2147483648), 19766i), 2147483647i, vec4<bool>(false, false, true, true)), Struct_2(1679f, vec2<i32>(49627i, 1i), 28721i, vec4<bool>(true, true, false, true)), Struct_2(2335f, vec2<i32>(2147483647i, -1i), -7758i, vec4<bool>(true, true, true, false)), Struct_2(-1315f, vec2<i32>(i32(-2147483648), 2147483647i), 46498i, vec4<bool>(true, false, true, true)));

var<private> global2: array<f32, 19> = array<f32, 19>(-538f, 1479f, 1405f, 1093f, 1487f, -1429f, 1325f, -567f, 997f, -464f, 2160f, -371f, -1242f, 1573f, 1328f, 371f, 127f, 189f, 1909f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: f32) -> i32 {
    var var_0 = arg_2.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b, -665f, arg_3, global2[_wgslsmith_index_u32(arg_2.b.x, 19u)])))), vec4<f32>(arg_3, arg_3, _wgslsmith_f_op_f32(arg_3 + var_0.b), arg_2.a.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1264f, 513f, var_0.b, 956f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-958f, arg_3, arg_2.c.b, -1000f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -487f, -1625f, -285f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2217f, 397f, 524f, -170f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1573f, var_0.b, arg_3, -616f) * vec4<f32>(-3091f, arg_1.d.b, -668f, arg_2.c.b)))))));
    let var_2 = !arg_1.b;
    global0 = array<vec3<i32>, 10>();
    let var_3 = -2147483647i;
    return arg_1.c.c.d.x;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec4<u32>, arg_3: i32) -> vec4<f32> {
    global2 = array<f32, 19>();
    var var_0 = Struct_1(any(select(!vec4<bool>(true, arg_0, true, arg_0), select(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(false, arg_0, false, arg_0), arg_0), !vec4<bool>(false, arg_0, arg_0, arg_0), arg_0), all(select(vec2<bool>(false, false), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0))))), _wgslsmith_f_op_f32(-794f * _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global2[_wgslsmith_index_u32(arg_1, 19u)]))), 1i, ~u_input.b);
    var_0 = Struct_1(all(vec3<bool>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(74007u, 19u)] - -697f) > _wgslsmith_f_op_f32(f32(-1f) * -1000f), true && arg_0, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(abs(21379u | u_input.a.x), 19u)]))), abs(1i), ~((vec4<i32>(1i, -2147483647i, arg_3, 0i) ^ ~u_input.b) ^ vec4<i32>(~13867i, -u_input.b.x, _wgslsmith_mult_i32(arg_3, var_0.c), ~(-10346i))));
    var var_1 = ~(~44809u);
    global0 = array<vec3<i32>, 10>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, global2[_wgslsmith_index_u32(arg_2.x, 19u)], -1098f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + -851f)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_mult_vec4_i32(u_input.b, select(vec4<i32>(u_input.b.x & -30784i, 19355i, 2147483647i, i32(-1i) * -2147483647i) << (vec4<u32>(u_input.a.x, arg_1.x | arg_1.x, ~u_input.a.x, max(u_input.a.x, 0u)) % vec4<u32>(32u)), min(_wgslsmith_sub_vec4_i32(u_input.b, countOneBits(vec4<i32>(0i, -2147483647i, -1i, u_input.b.x))), u_input.b), true));
    let var_2 = -2147483647i >= var_1.x;
    var var_3 = Struct_4(Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], ~_wgslsmith_add_vec4_u32(~u_input.a, countOneBits(u_input.a)), Struct_1(_wgslsmith_mult_u32(0u, arg_1.x) == ~u_input.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(47008u, 19u)])), _wgslsmith_f_op_f32(f32(-1f) * -882f))), _wgslsmith_clamp_i32(var_1.x << (arg_1.x % 32u), _wgslsmith_mult_i32(15974i, 1i), 2147483647i), var_1)), all(!(!vec4<bool>(var_2, var_2, var_2, var_2))), Struct_3(global1[_wgslsmith_index_u32(arg_1.x, 6u)], abs(vec4<u32>(reverseBits(0u), u_input.a.x, 35183u, ~13173u)), Struct_1(var_2 || var_2, _wgslsmith_f_op_f32(trunc(-1142f)), _wgslsmith_div_i32(-2147483647i, select(-8152i, 37573i, var_2)), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-1i, 11625i, u_input.b.x, 35068i)), vec4<i32>(46117i, 59758i, var_1.x, 12812i), _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, var_1.x, var_1.x))))), Struct_1(!all(!vec3<bool>(true, true, var_2)), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(0u, 8895u)), 19u)], reverseBits(reverseBits(-1i)) ^ reverseBits(_wgslsmith_dot_vec2_i32(var_1.xx, var_1.wx)), countOneBits(select(var_1, vec4<i32>(u_input.b.x, var_1.x, u_input.b.x, -1i), vec4<bool>(var_2, true, var_2, var_2)) & vec4<i32>(-23497i, -71946i, -58039i, var_1.x))));
    var var_4 = vec4<i32>(_wgslsmith_div_i32(1i << (min(var_3.c.b.x, ~4294967295u) % 32u), -var_1.x), 0i, min(max(_wgslsmith_sub_i32(1i, ~13784i), -(u_input.b.x | -1878i)), -16130i), abs(10128i) >> (countOneBits(~arg_1.x) % 32u));
    return ~abs(~(4294967295u & var_3.a.b.x)) >> (1u % 32u);
}

fn func_2(arg_0: vec4<i32>) -> vec4<i32> {
    let var_0 = vec3<f32>(-710f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~u_input.a.x, 19u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(max(u_input.a.x, u_input.a.x), 19u)]))), -946f);
    let var_1 = _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_vec4_f32(func_4(true, ~_wgslsmith_div_u32(u_input.a.x, 4294967295u), vec4<u32>(max(20207u, u_input.a.x), abs(12347u), u_input.a.x, u_input.a.x), func_3(vec3<f32>(2546f, 1505f, 522f), Struct_4(Struct_3(global1[_wgslsmith_index_u32(135079u, 6u)], u_input.a, Struct_1(false, 1000f, arg_0.x, vec4<i32>(arg_0.x, 3995i, u_input.b.x, 1i))), true, Struct_3(global1[_wgslsmith_index_u32(4294967295u, 6u)], u_input.a, Struct_1(false, 1620f, 25452i, arg_0)), Struct_1(true, 108f, 44964i, vec4<i32>(u_input.b.x, 68268i, arg_0.x, -1i))), Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], u_input.a, Struct_1(false, var_0.x, 1i, u_input.b)), 395f) ^ u_input.b.x)), ~min(firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(1u, u_input.a.x))), 19u)]));
    let var_2 = _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.a.x, 0u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 62128u, u_input.a.x, u_input.a.x))), vec4<u32>(u_input.a.x, abs(u_input.a.x), _wgslsmith_div_u32(u_input.a.x & 56732u, min(u_input.a.x, 96045u)), ~u_input.a.x)) | u_input.a;
    var var_3 = Struct_1(all(vec4<bool>(true, true, true, true)), 1414f, ~(-9920i), ~_wgslsmith_div_vec4_i32(~(~vec4<i32>(-1i, u_input.b.x, u_input.b.x, 0i)), firstTrailingBit(vec4<i32>(u_input.b.x, 0i, -56518i, -41108i)) | _wgslsmith_add_vec4_i32(u_input.b, arg_0)));
    var var_4 = Struct_4(Struct_3(global1[_wgslsmith_index_u32(~u_input.a.x, 6u)], var_2, Struct_1(true, -1307f, _wgslsmith_mult_i32(1i, abs(2147483647i)), var_3.d)), !(!(!var_3.a)), Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(var_2.x, 19u)])) + _wgslsmith_f_op_f32(f32(-1f) * -498f)), (u_input.b.wy ^ arg_0.zx) | firstTrailingBit(arg_0.zw), 0i, !vec4<bool>(var_3.a, var_3.a, var_3.a, true)), vec4<u32>(~(~9042u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, u_input.a.x, 36052u, var_2.x), var_2), firstLeadingBit(0u), 1u), Struct_1(var_3.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1 + var_1))), 61198i >> ((14922u & var_2.x) % 32u), max(firstTrailingBit(u_input.b), firstTrailingBit(vec4<i32>(var_3.c, 14725i, u_input.b.x, 1i))))), Struct_1(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1284f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, 230f, var_3.a)) + 1034f))), ~var_3.c, countOneBits(arg_0 | vec4<i32>(var_3.c, var_3.d.x, u_input.b.x, u_input.b.x))));
    return var_3.d;
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(28869u, 6u)], u_input.a, Struct_1(!arg_0.x, -1629f, u_input.b.x, ~(-func_2(vec4<i32>(u_input.b.x, 1i, -1i, -2147483647i)))));
    let var_1 = 638f;
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(4294967295u << ((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, var_0.b.x), var_0.b.yww & vec3<u32>(u_input.a.x, var_0.b.x, var_0.b.x)) & var_0.b.x) % 32u), 6u)], (u_input.a & ~var_0.b) ^ firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(12712u, 1u, 1u, 10959u), var_0.b)), Struct_1(any(!vec3<bool>(false, true, var_0.a.d.x)), var_0.c.b, 0i, vec4<i32>(i32(-1i) * -1i, -var_0.c.c, var_0.a.c, ~min(1i, 0i))));
    global2 = array<f32, 19>();
    let var_3 = var_0.b.x;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1430f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(-var_2.c.b))))) * -290f), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true))), 799f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 19u)] - global2[_wgslsmith_index_u32(123283u, 19u)])))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(12948u, 19u)], global2[_wgslsmith_index_u32(11069u, 19u)], -1460f) + vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], 390f, -1086f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], 133f, -644f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-303f, global2[_wgslsmith_index_u32(44121u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)]))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(2169f, -205f, 383f), vec3<f32>(-2305f, global2[_wgslsmith_index_u32(4294967295u, 19u)], -381f)))))) * vec3<f32>(global2[_wgslsmith_index_u32(0u, 19u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(40496u, 19u)] - -243f), -900f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~96547u, 19u)]))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(max(~1u, countOneBits(u_input.a.x)), 19u)] - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 19u)]))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(firstLeadingBit(1u), 19u)], -812f, 1986f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * var_0.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-607f, 876f, var_0.x, global2[_wgslsmith_index_u32(u_input.a.x, 19u)])) - vec4<f32>(-889f, var_0.x, -842f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1308f, 950f, -717f))))));
    var var_2 = select(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, u_input.b.x), ~_wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(u_input.b.x, -1i)) << (max(7641u, 1717u) % 32u), true) < -u_input.b.x;
    var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 19u)]))), var_1.x), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x | ~_wgslsmith_mult_u32(u_input.a.x, 4294967295u), u_input.a.x, countOneBits(~95139u) ^ _wgslsmith_sub_u32(49575u, func_5(vec4<f32>(var_1.x, var_0.x, global2[_wgslsmith_index_u32(u_input.a.x, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)]), u_input.a.wz))), 19u)], -768f, global2[_wgslsmith_index_u32(u_input.a.x, 19u)]);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(325f, 986f, global2[_wgslsmith_index_u32(1u, 19u)], var_1.x) * vec4<f32>(538f, var_1.x, var_1.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(405f, var_1.x, global2[_wgslsmith_index_u32(u_input.a.x, 19u)], var_0.x) - vec4<f32>(var_1.x, global2[_wgslsmith_index_u32(34979u, 19u)], 1245f, var_1.x)), true)))) - vec4<f32>(_wgslsmith_f_op_vec4_f32(func_4(false, ~0u, vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 1433u << (u_input.a.x % 32u), select(1u, u_input.a.x, false), ~u_input.a.x), countOneBits(143i))).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_1.x)))), 242f), -557f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -2235f))));
    var var_4 = Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], min(u_input.a << (~countOneBits(u_input.a) % vec4<u32>(32u)), vec4<u32>(~u_input.a.x, u_input.a.x, ~4294967295u >> (u_input.a.x % 32u), u_input.a.x)), Struct_1(!any(vec4<bool>(true, true, true, true)), 626f, countOneBits(0i), select(firstLeadingBit(vec4<i32>(u_input.b.x, 1i, u_input.b.x, -1i)), abs(vec4<i32>(u_input.b.x, 60187i, 10607i, u_input.b.x)), true) ^ -(~vec4<i32>(1i, u_input.b.x, 2147483647i, u_input.b.x))));
    var var_5 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_4.a.c, abs(abs(min(var_4.a.c, u_input.b.x))), u_input.b.x, var_4.a.c), _wgslsmith_sub_i32(var_4.a.b.x, 14094i));
}

