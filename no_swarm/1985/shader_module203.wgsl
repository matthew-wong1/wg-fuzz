struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 21>;

var<private> global2: array<vec4<bool>, 1>;

var<private> global3: array<Struct_2, 31>;

var<private> global4: array<Struct_5, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = countOneBits(_wgslsmith_add_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 21u)], 0i, -2147483647i, 0i), ~_wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], -1i, 1i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 21u)], 1i, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)])))) | ~countOneBits(vec4<i32>(~global1[_wgslsmith_index_u32(11697u, 21u)], -global1[_wgslsmith_index_u32(972u, 21u)], _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(98260u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], -84976i), 1i));
    global1 = array<i32, 21>();
    let var_1 = !all(vec2<bool>(true, true)) || all(!vec2<bool>(any(vec2<bool>(false, true)), true));
    global4 = array<Struct_5, 29>();
    global0 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(~(-57859i), firstTrailingBit(var_0.x) | -1i, 0i)), _wgslsmith_mod_vec3_i32(firstLeadingBit(var_0.zxy), vec3<i32>(firstLeadingBit(global1[_wgslsmith_index_u32(1u, 21u)]), ~global1[_wgslsmith_index_u32(u_input.a, 21u)], (var_0.x & 40390i) >> (0u % 32u))));
    return u_input.a;
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = arg_0;
    var var_1 = Struct_5(-33941i, Struct_2(~(-var_0.a), ~(~u_input.a) == func_3()), _wgslsmith_div_u32(u_input.a & u_input.a, u_input.a));
    let var_2 = _wgslsmith_div_vec3_i32(select(vec3<i32>(_wgslsmith_clamp_i32(~global1[_wgslsmith_index_u32(52201u, 21u)], var_0.a << (var_1.c % 32u), 1i), 0i, 1i), max(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a, var_0.a, 34740i), vec3<i32>(var_1.a, 2147483647i, 2147483647i)), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 21u)], var_0.a, global1[_wgslsmith_index_u32(u_input.a, 21u)]) ^ vec3<i32>(arg_0.a, var_0.a, arg_0.a)) | ~abs(vec3<i32>(var_0.a, 1i, -2147483647i)), arg_0.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1.b.a), _wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(21818u, 21u)], var_0.a), vec2<i32>(var_0.a, global1[_wgslsmith_index_u32(var_1.c, 21u)]))), -196i, -53995i), -_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a, -7109i, 38387i), vec3<i32>(arg_0.a, 2147483647i, 2147483647i)), select(vec3<i32>(0i, 0i, 2147483647i) << (vec3<u32>(var_1.c, var_1.c, u_input.a) % vec3<u32>(32u)), abs(vec3<i32>(1i, 0i, -1i)), vec3<bool>(false, arg_0.b, true)) << ((vec3<u32>(16290u, 18833u, u_input.a) & (vec3<u32>(44216u, var_1.c, 4294967295u) & vec3<u32>(15199u, var_1.c, 42046u))) % vec3<u32>(32u))));
    var var_3 = vec2<bool>(var_0.b, ~countOneBits(countOneBits(var_1.c)) <= 39944u);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1206f + -560f), _wgslsmith_f_op_f32(f32(-1f) * -1307f), _wgslsmith_f_op_f32(sign(428f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2306f, -1183f, 2369f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-149f, -237f, 1161f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) - vec3<f32>(-983f, _wgslsmith_f_op_f32(f32(-1f) * -758f), _wgslsmith_f_op_f32(1493f - 1398f)))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(-306f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-208f * 1000f)), 1453f))));
    return u_input.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> u32 {
    global2 = array<vec4<bool>, 1>();
    global3 = array<Struct_2, 31>();
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(51127i, -64365i, global1[_wgslsmith_index_u32(~(u_input.a & ~u_input.a), 21u)], global1[_wgslsmith_index_u32(func_2(Struct_2(global1[_wgslsmith_index_u32(1u, 21u)], arg_1)), 21u)]), firstLeadingBit(~vec4<i32>(-1i, max(30595i, global1[_wgslsmith_index_u32(u_input.a, 21u)]), 0i, _wgslsmith_clamp_i32(-1i, global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]))), min((_wgslsmith_sub_vec4_i32(vec4<i32>(33647i, global1[_wgslsmith_index_u32(arg_0.x, 21u)], -22157i, global1[_wgslsmith_index_u32(arg_0.x, 21u)]), vec4<i32>(1i, 0i, 63946i, global1[_wgslsmith_index_u32(4294967295u, 21u)])) | ~vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 21u)], 24561i, global1[_wgslsmith_index_u32(arg_0.x, 21u)], global1[_wgslsmith_index_u32(0u, 21u)])) & ~select(vec4<i32>(global1[_wgslsmith_index_u32(0u, 21u)], 8921i, global1[_wgslsmith_index_u32(1u, 21u)], 1i), vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_0.x, 21u)], -12803i, 962i), false), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(-8438i, -56783i, -1i, -2147483647i), min(vec4<i32>(global1[_wgslsmith_index_u32(80623u, 21u)], 37667i, global1[_wgslsmith_index_u32(0u, 21u)], 17154i), vec4<i32>(global1[_wgslsmith_index_u32(129u, 21u)], -2147483647i, global1[_wgslsmith_index_u32(arg_0.x, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)])))));
    var var_1 = Struct_4(global3[_wgslsmith_index_u32(4048u, 31u)], Struct_1(~1i), Struct_3(Struct_1(-(var_0.x | var_0.x))), Struct_2(-(~global1[_wgslsmith_index_u32(arg_0.x, 21u)]), arg_1), vec3<i32>(min(_wgslsmith_mod_i32(max(var_0.x, global1[_wgslsmith_index_u32(arg_0.x, 21u)]), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(arg_0.x, 21u)], 36690i)), _wgslsmith_dot_vec2_i32(reverseBits(var_0.zz), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 21u)], -18670i))), ~2147483647i, ~(~2147483647i) >> (~_wgslsmith_clamp_u32(0u, 19412u, 53453u) % 32u)));
    let var_2 = global4[_wgslsmith_index_u32(34080u, 29u)];
    return 27423u;
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = any(vec2<bool>(all(!select(vec4<bool>(false, true, false, true), global2[_wgslsmith_index_u32(u_input.a, 1u)], global2[_wgslsmith_index_u32(u_input.a, 1u)])), true));
    let var_1 = max(countOneBits(vec4<i32>(i32(-1i) * -2147483647i, -1967i ^ global1[_wgslsmith_index_u32(u_input.a, 21u)], -global1[_wgslsmith_index_u32(2561u, 21u)], 22372i) & vec4<i32>(firstTrailingBit(-4997i), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(arg_0.x, 21u)]), global1[_wgslsmith_index_u32(arg_0.x ^ u_input.a, 21u)], ~3235i)), select(~select(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global1[_wgslsmith_index_u32(arg_0.x, 21u)], 30591i, global1[_wgslsmith_index_u32(36956u, 21u)]), vec4<i32>(2147483647i, 4792i, global1[_wgslsmith_index_u32(7788u, 21u)], 11186i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], -2147483647i, global1[_wgslsmith_index_u32(23913u, 21u)]), vec4<i32>(80144i, global1[_wgslsmith_index_u32(0u, 21u)], -30086i, -2147483647i), vec4<i32>(-7255i, 51742i, 2147483647i, global1[_wgslsmith_index_u32(arg_0.x, 21u)])), var_0), firstTrailingBit(firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(15513u, 21u)], -18206i, 2147483647i, 3439i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(304u, arg_0.x, arg_0.x, u_input.a), vec4<u32>(u_input.a, u_input.a, arg_0.x, arg_0.x)) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(u_input.a, 1u)]));
    let var_2 = ~u_input.a;
    var var_3 = ~(~(~vec3<u32>(~arg_0.x, arg_0.x, u_input.a >> (8199u % 32u))));
    let var_4 = ~(~(reverseBits(countOneBits(var_3.xz)) << (vec2<u32>(1u, ~43584u) % vec2<u32>(32u))));
    return Struct_1(-27128i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_5, arg_3: vec2<i32>) -> Struct_5 {
    var var_0 = 115f;
    global4 = array<Struct_5, 29>();
    let var_1 = func_4(~vec2<u32>(~abs(arg_2.c), 56683u)).a;
    let var_2 = Struct_4(Struct_2(i32(-1i) * -1i, arg_1.d.b), func_4(min(vec2<u32>(u_input.a, u_input.a), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.c, 4294967295u), vec2<u32>(34512u, 4105u), vec2<u32>(u_input.a, 5424u)), ~vec2<u32>(arg_2.c, u_input.a)))), Struct_3(Struct_1(_wgslsmith_mod_i32(2147483647i, var_1) & -arg_1.c.a.a)), arg_1.d, -vec3<i32>(-1i, 2147483647i, firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a, 21u)])));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(-952f, _wgslsmith_f_op_f32(trunc(-696f)))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 21>();
    let var_0 = _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(0u, 21u)], 1i);
    let var_1 = func_5(func_4(vec2<u32>(u_input.a, _wgslsmith_mod_u32(func_1(vec4<u32>(1u, 0u, u_input.a, 58800u), true), ~1u))), Struct_4(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(18198u, u_input.a)), _wgslsmith_sub_vec2_u32(~vec2<u32>(42089u, u_input.a), vec2<u32>(112811u, u_input.a))), 31u)], func_4(vec2<u32>(_wgslsmith_mult_u32(u_input.a, 4294967295u), _wgslsmith_sub_u32(4294967295u, u_input.a))), Struct_3(func_4(select(vec2<u32>(0u, u_input.a), vec2<u32>(0u, 0u), false))), Struct_2(abs(0i >> (u_input.a % 32u)), true), vec3<i32>(reverseBits(abs(1i)), var_0, 17805i << (1u % 32u))), Struct_5(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(~1994u, 0u), 21u)], global3[_wgslsmith_index_u32(14869u, 31u)], reverseBits(4788u)), -firstLeadingBit(_wgslsmith_mult_vec2_i32(~vec2<i32>(0i, var_0), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0, 15844i), vec2<i32>(-47414i, global1[_wgslsmith_index_u32(u_input.a, 21u)])))));
    global1 = array<i32, 21>();
    let var_2 = var_1;
    let var_3 = func_5(Struct_1(2147483647i), Struct_4(func_5(func_4(abs(vec2<u32>(var_2.c, var_1.c))), Struct_4(global3[_wgslsmith_index_u32(~var_2.c, 31u)], func_4(vec2<u32>(u_input.a, 96904u)), Struct_3(Struct_1(var_1.b.a)), Struct_2(var_0, false), _wgslsmith_sub_vec3_i32(vec3<i32>(-12703i, 0i, var_1.b.a), vec3<i32>(2147483647i, var_2.b.a, global1[_wgslsmith_index_u32(37021u, 21u)]))), Struct_5(func_4(vec2<u32>(var_1.c, 1u)).a, Struct_2(0i, true), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0, 0i) >> (vec2<u32>(u_input.a, 30822u) % vec2<u32>(32u)), -vec2<i32>(1i, -1i))).b, Struct_1(_wgslsmith_sub_i32(var_1.a, ~global1[_wgslsmith_index_u32(1u, 21u)])), Struct_3(Struct_1(var_2.a)), Struct_2(1i, var_2.b.b || true), firstTrailingBit(vec3<i32>(~var_0, 0i, -40001i))), func_5(Struct_1(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(var_2.c, 21u)], var_0) << (1u % 32u)), Struct_4(func_5(func_4(vec2<u32>(var_1.c, 78479u)), Struct_4(global3[_wgslsmith_index_u32(4294967295u, 31u)], Struct_1(var_2.b.a), Struct_3(Struct_1(global1[_wgslsmith_index_u32(1u, 21u)])), var_1.b, vec3<i32>(var_1.b.a, 31374i, 16012i)), Struct_5(-1i, var_2.b, 4294967295u), vec2<i32>(0i, 18324i)).b, Struct_1(-2147483647i), Struct_3(Struct_1(29472i)), func_5(func_4(vec2<u32>(var_2.c, 29290u)), Struct_4(global3[_wgslsmith_index_u32(u_input.a, 31u)], Struct_1(var_2.a), Struct_3(Struct_1(15303i)), Struct_2(global1[_wgslsmith_index_u32(19033u, 21u)], false), vec3<i32>(1i, 0i, global1[_wgslsmith_index_u32(82223u, 21u)])), func_5(Struct_1(12686i), Struct_4(global3[_wgslsmith_index_u32(u_input.a, 31u)], Struct_1(-2147483647i), Struct_3(Struct_1(0i)), Struct_2(0i, true), vec3<i32>(-11915i, var_2.b.a, -1i)), var_1, vec2<i32>(global1[_wgslsmith_index_u32(123835u, 21u)], var_1.b.a)), select(vec2<i32>(1i, global1[_wgslsmith_index_u32(var_1.c, 21u)]), vec2<i32>(var_0, 1i), vec2<bool>(false, false))).b, vec3<i32>(_wgslsmith_clamp_i32(54391i, var_1.b.a, 24902i), 11810i, i32(-1i) * -9320i)), Struct_5(2147483647i, global3[_wgslsmith_index_u32(~firstLeadingBit(u_input.a), 31u)], ~(~0u)), vec2<i32>(firstTrailingBit(0i), ~_wgslsmith_add_i32(var_2.a, global1[_wgslsmith_index_u32(39778u, 21u)]))), vec2<i32>(-1i) * -reverseBits(abs(vec2<i32>(54163i, var_2.b.a)))).b.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1708f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -231f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1915f * 1176f), 1155f)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(-628f)))));
}

