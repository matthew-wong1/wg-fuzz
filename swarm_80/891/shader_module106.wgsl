struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(0u, 1u, 47012u, 11564u), vec4<u32>(1u, 7314u, 29338u, 1u), vec4<u32>(71734u, 1u, 1223u, 54179u), vec4<u32>(35284u, 1515u, 1u, 24191u), vec4<u32>(4715u, 20065u, 50018u, 4294967295u));

var<private> global2: f32 = 632f;

var<private> global3: array<Struct_2, 3>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec2<f32> {
    global2 = arg_1.e.x;
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-682f, arg_1.e.x, -152f)) + vec3<f32>(-803f, -1000f, _wgslsmith_f_op_f32(-arg_1.e.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-363f, -1278f)) * _wgslsmith_div_f32(269f, -1059f)), _wgslsmith_f_op_f32(select(406f, -598f, all(arg_1.d))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(arg_1.e.x, 133f)))) * vec3<f32>(-371f, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(min(286f, arg_1.e.x)), arg_0.c.c)), arg_1.e.x)));
    let var_1 = arg_0;
    var var_2 = ~(~select(u_input.d, arg_1.b.xz, _wgslsmith_f_op_f32(126f - -2219f) <= _wgslsmith_f_op_f32(-var_0.x)));
    global0 = array<bool, 10>();
    return vec2<f32>(var_0.x, arg_1.e.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_1(~_wgslsmith_sub_vec4_i32(~(-vec4<i32>(u_input.b, u_input.b, u_input.d.x, u_input.b)), ~vec4<i32>(u_input.d.x, 68213i, -7962i, u_input.b)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i ^ u_input.d.x, _wgslsmith_clamp_i32(u_input.b, u_input.b, -8087i) | u_input.d.x, _wgslsmith_div_i32(min(u_input.d.x, 56437i), u_input.d.x)), -_wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.b, u_input.b, u_input.b, -26699i), vec4<i32>(1629i, u_input.d.x, 2147483647i, 32919i)), ~vec4<i32>(-1i, 1i, u_input.b, 2147483647i))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, arg_1), vec3<u32>(u_input.c, 57851u, arg_1)), max(u_input.a, vec3<u32>(arg_1, 42046u, arg_1))), ~4294967295u), u_input.a.x, 12404u), arg_0.zx, _wgslsmith_f_op_vec2_f32(func_3(Struct_3(abs(~vec4<u32>(u_input.a.x, u_input.c, 1u, 0u)), 1085i, Struct_2(-u_input.b, abs(u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 10u)] | true, u_input.b)), Struct_1(-(~vec4<i32>(-20075i, u_input.b, u_input.d.x, u_input.d.x)), vec4<i32>(_wgslsmith_add_i32(u_input.b, u_input.d.x), countOneBits(u_input.d.x), _wgslsmith_mod_i32(u_input.d.x, -14176i), 1i << (u_input.c % 32u)), reverseBits(u_input.a) >> (vec3<u32>(arg_1, 48657u, 0u) % vec3<u32>(32u)), vec2<bool>(false & arg_0.x, !arg_0.x), vec2<f32>(-964f, _wgslsmith_f_op_f32(-1519f - -1836f))))));
    var var_1 = Struct_1(~(~var_0.b), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(var_0.a, var_0.b), var_0.b), vec3<u32>(~min(u_input.c >> (97024u % 32u), u_input.a.x ^ 99015u), 66557u, arg_1), vec2<bool>(true, true), var_0.e);
    global1 = array<vec4<u32>, 5>();
    global2 = 698f;
    global2 = var_0.e.x;
    return Struct_3(vec4<u32>(1u, ~var_1.c.x, ~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(~var_1.c.x, 5u)], global1[_wgslsmith_index_u32(u_input.c, 5u)]), var_1.c.x | ~(0u & var_1.c.x)), 1i, Struct_2(_wgslsmith_mult_i32(87830i >> (~4294967295u % 32u), _wgslsmith_mod_i32(var_0.a.x, 36029i)), arg_1, !(!any(vec4<bool>(global0[_wgslsmith_index_u32(14674u, 10u)], false, arg_0.x, var_1.d.x))), -1i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    global1 = array<vec4<u32>, 5>();
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_add_i32(~firstLeadingBit(6650i), -(i32(-1i) * -1i)), arg_1.c.d, 11470i, ~(arg_1.c.d | u_input.d.x) & 0i), -(~(~(-vec4<i32>(arg_0.a, u_input.b, u_input.b, u_input.d.x)))), vec3<u32>(~(u_input.a.x >> (arg_2 % 32u)), 1u, select(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b, 79760u, arg_1.a.x, 1u), global1[_wgslsmith_index_u32(arg_0.b, 5u)]), _wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(17806u, 5u)], vec4<u32>(0u, 1u, 4294967295u, arg_0.b))), 35148u, 4294967295u >= (arg_1.a.x | 0u))), select(select(vec2<bool>(true, true), select(!vec2<bool>(true, arg_1.c.c), !vec2<bool>(arg_1.c.c, arg_1.c.c), !vec2<bool>(arg_1.c.c, arg_0.c)), select(vec2<bool>(false, false), vec2<bool>(arg_1.c.c, false), !vec2<bool>(arg_0.c, arg_0.c))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(arg_1.c.c, arg_0.c), vec2<bool>(false, global0[_wgslsmith_index_u32(8482u, 10u)]), vec2<bool>(arg_1.c.c, global0[_wgslsmith_index_u32(0u, 10u)])), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], arg_0.c))), any(!vec4<bool>(arg_0.c, arg_1.c.c, global0[_wgslsmith_index_u32(arg_0.b, 10u)], false))), true), vec2<f32>(876f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(975f + 262f))))));
    let var_1 = Struct_2(-arg_1.b, ~(~14883u), arg_1.c.c, _wgslsmith_dot_vec3_i32(~(~select(vec3<i32>(0i, 47834i, u_input.d.x), vec3<i32>(arg_0.a, 37668i, 2147483647i), var_0.d.x)), select(vec3<i32>(firstLeadingBit(arg_0.a), -1i, _wgslsmith_sub_i32(2147483647i, arg_0.a)), vec3<i32>(_wgslsmith_add_i32(arg_0.d, 1i), var_0.a.x, -arg_0.a), !(!vec3<bool>(arg_1.c.c, arg_1.c.c, true)))));
    return arg_1.c;
}

fn func_5(arg_0: i32, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    return Struct_1(-min(arg_1, abs(abs(arg_1))), ~_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-arg_1, vec4<i32>(-1i, -25626i, 7009i, arg_0) ^ arg_1, vec4<i32>(arg_3.a, 1i, 2147483647i, -19535i)), firstTrailingBit(vec4<i32>(arg_2, u_input.d.x, arg_2, -2147483647i))), vec3<u32>(func_4(Struct_2(_wgslsmith_clamp_i32(arg_1.x, arg_0, arg_3.d), arg_3.b, !arg_3.c, -arg_2), func_2(select(vec4<bool>(true, global0[_wgslsmith_index_u32(39747u, 10u)], global0[_wgslsmith_index_u32(arg_3.b, 10u)], false), vec4<bool>(true, true, arg_3.c, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 10u)], false)), func_2(vec4<bool>(false, false, false, arg_3.c), arg_3.b).c.b), u_input.a.x).b, 1u, 1u), !vec2<bool>(true && func_4(Struct_2(arg_2, arg_3.b, global0[_wgslsmith_index_u32(arg_3.b, 10u)], 2147483647i), Struct_3(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], 9077i, Struct_2(u_input.b, 2839u, true, -2147483647i)), arg_3.b).c, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, 1u, 15828u) ^ ~1u, 10u)]), vec2<f32>(570f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec4<u32>(9869u, 1u, arg_3.b, u_input.c), arg_2, arg_3), Struct_1(vec4<i32>(arg_1.x, 33682i, 9123i, -47362i), vec4<i32>(4194i, 24306i, 12501i, u_input.b), vec3<u32>(4294967295u, 0u, 0u), vec2<bool>(arg_3.c, arg_3.c), vec2<f32>(795f, 557f)))).x)));
}

fn func_1() -> Struct_3 {
    global3 = array<Struct_2, 3>();
    var var_0 = u_input.c;
    var var_1 = false;
    let var_2 = 1123f;
    let var_3 = func_5(-74588i, vec4<i32>(_wgslsmith_sub_i32(15094i, countOneBits(-78591i)), ~(-1i), u_input.d.x, _wgslsmith_mod_i32(~u_input.b, 0i)), _wgslsmith_mod_i32(~u_input.d.x, ~1i), func_4(global3[_wgslsmith_index_u32(~4294967295u, 3u)], func_2(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 10u)], true, false, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), select(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.c, 10u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 10u)], true, false, global0[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)])), true), _wgslsmith_add_u32(u_input.a.x, abs(u_input.c))), _wgslsmith_div_u32(firstTrailingBit(1u ^ u_input.c), select(u_input.a.x ^ u_input.c, u_input.c, all(vec3<bool>(global0[_wgslsmith_index_u32(40874u, 10u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]))))));
    return Struct_3(global1[_wgslsmith_index_u32(u_input.c, 5u)], -func_5(var_3.b.x, select(countOneBits(var_3.a), vec4<i32>(47058i, -61622i, var_3.b.x, var_3.b.x), !vec4<bool>(false, var_3.d.x, true, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_3.a.x), -u_input.d), global3[_wgslsmith_index_u32(min(71234u, 91995u), 3u)]).b.x, global3[_wgslsmith_index_u32(77787u << ((0u << (var_3.c.x % 32u)) % 32u), 3u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    global3 = array<Struct_2, 3>();
    let var_1 = ~vec4<u32>(~min(select(4294967295u, u_input.c, global0[_wgslsmith_index_u32(u_input.c, 10u)]), ~u_input.c), 0u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.zx)), u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(sign(1331f));
    global0 = array<bool, 10>();
    let var_3 = func_1();
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2)));
    let var_5 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(1f, 58218u, abs(~46879i));
}

