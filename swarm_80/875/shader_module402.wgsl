struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = abs(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1353u), ~vec2<u32>(u_input.b, 5162u), vec2<u32>(u_input.b, u_input.b)), abs(vec2<u32>(47212u, u_input.b) >> (vec2<u32>(6499u, u_input.b) % vec2<u32>(32u))))) << (~(~countOneBits(vec2<u32>(u_input.b, u_input.b)) ^ (_wgslsmith_sub_vec2_u32(vec2<u32>(48478u, u_input.b), vec2<u32>(u_input.b, 34560u)) << (~vec2<u32>(u_input.b, 33009u) % vec2<u32>(32u)))) % vec2<u32>(32u));
    var var_1 = vec2<u32>(countOneBits(~(~4294967295u << (var_0.x % 32u))), select(41150u, ~_wgslsmith_add_u32(~var_0.x, var_0.x), true));
    var var_2 = Struct_1(select(select(vec2<bool>(select(true, true, true), all(vec2<bool>(false, false))), vec2<bool>(true, any(vec2<bool>(true, true))), !select(vec2<bool>(true, false), vec2<bool>(false, true), false)), vec2<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))), -1376f <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1717f)), -704f, select(false, false, false)))), -u_input.a ^ u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(455f, -124f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(850f, 1806f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1257f, 1175f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -184f)))))), select(!vec3<bool>(all(vec3<bool>(true, false, true)), true, true), vec3<bool>(false, !all(vec2<bool>(false, false)), true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), !any(vec4<bool>(false, true, true, false)))));
    var var_3 = firstLeadingBit(abs(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, var_1.x), vec3<u32>(u_input.b, 15521u, u_input.b)), 1u), 1u, 43735u, ~var_1.x & var_0.x)));
    global0 = array<Struct_1, 4>();
    return ~20607u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    var var_0 = 5311u;
    var_0 = 0u;
    var var_1 = arg_0.d.x != false;
    let var_2 = _wgslsmith_f_op_f32(-arg_0.c.x);
    var var_3 = Struct_2(_wgslsmith_mult_u32(~1u, 1u));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(35166u, 4294967295u, 40433u, 4294967295u), arg_1), _wgslsmith_mult_u32(func_3(), firstTrailingBit(arg_1.x))), select(~(~arg_1.zxw), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, var_3.a), vec3<u32>(0u, 22124u, 21748u)), !(!arg_0.d))) >> (22158u % 32u);
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = vec3<bool>(all(vec3<bool>(false, 4294967295u == u_input.b, true)), all(!select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec4<bool>(false, false, false, false)))), !any(vec2<bool>(true, true)));
    var var_1 = vec4<i32>(u_input.a, u_input.a, u_input.a, ~max(1i, ~1i));
    var_1 = _wgslsmith_clamp_vec4_i32(min(-(min(vec4<i32>(1i, var_1.x, var_1.x, 1i), vec4<i32>(-16698i, var_1.x, 0i, var_1.x)) | -vec4<i32>(-2147483647i, 10595i, 0i, 67279i)), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(644i, 60498i, var_1.x, 7991i) >> (vec4<u32>(958u, u_input.b, 6131u, 0u) % vec4<u32>(32u))), -reverseBits(vec4<i32>(-2147483647i, -1i, -1i, u_input.a)), -vec4<i32>(102212i, 38485i, -17983i, var_1.x))), vec4<i32>(firstTrailingBit(max(-1i, -33812i)), _wgslsmith_div_i32(u_input.a, -u_input.a), 1i, ~(-var_1.x)) ^ vec4<i32>(u_input.a, min(u_input.a, i32(-1i) * -25268i), var_1.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(3043u, 4294967295u, arg_0.a, arg_0.a), vec4<u32>(1u, 30938u, u_input.b, arg_0.a)) % 32u), max(var_1.x, var_1.x) | u_input.a), vec4<i32>(min(min(_wgslsmith_div_i32(var_1.x, u_input.a), u_input.a ^ -7232i), ~_wgslsmith_clamp_i32(u_input.a, u_input.a, var_1.x)), -27146i, u_input.a, var_1.x));
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    return firstLeadingBit(countOneBits(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(26307u, u_input.b, u_input.b), vec3<u32>(0u, 11383u, arg_0.a), var_0.x), _wgslsmith_add_vec3_u32(vec3<u32>(29371u, 55491u, u_input.b), vec3<u32>(1u, arg_0.a, u_input.b))), min(u_input.b, u_input.b), _wgslsmith_mult_u32(abs(u_input.b), arg_0.a))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<i32> {
    global0 = array<Struct_1, 4>();
    let var_0 = ~(~(~vec4<u32>(4294967295u, 1u, u_input.b, 0u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), vec4<u32>(u_input.b, 68579u, 1u, u_input.b)) % vec4<u32>(32u)))) << (vec4<u32>(u_input.b, 46488u, 0u, 16207u) % vec4<u32>(32u));
    global0 = array<Struct_1, 4>();
    let var_1 = ~arg_1.b;
    global0 = array<Struct_1, 4>();
    return (vec4<i32>(_wgslsmith_mod_i32(-16870i, select(u_input.a, u_input.a, arg_1.d.x)), 2147483647i, abs(-32574i), 1906i) ^ _wgslsmith_sub_vec4_i32(-vec4<i32>(arg_1.b, -16261i, -1i, arg_1.b), vec4<i32>(var_1, countOneBits(22316i), var_1, arg_1.b))) << (func_4(Struct_2(func_2(Struct_1(vec2<bool>(false, arg_1.a.x), 0i, vec2<f32>(-1514f, arg_1.c.x), vec3<bool>(arg_1.a.x, false, arg_1.a.x)), vec4<u32>(119063u, 11046u, 39157u, 4294967295u)))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1700f - -102f), _wgslsmith_f_op_f32(select(1421f, 332f, false)), 229f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -747f)), _wgslsmith_f_op_f32(step(470f, 379f)), 1f)), Struct_1(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(103f * -1446f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-489f, -401f)))), vec3<bool>(true, 0u < ~u_input.b, true)));
    var var_1 = firstTrailingBit(-2147483647i);
    var_1 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-931f, -1383f, -991f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 711f, 1559f))) - vec3<f32>(1000f, -191f, -802f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1663f, 1848f) - vec3<f32>(-504f, -516f, -882f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(680f, -247f, 1000f))))), global0[_wgslsmith_index_u32(u_input.b, 4u)]).x;
    let var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(min(16285u, ~u_input.b), _wgslsmith_sub_u32(select(u_input.b, 6100u, true), _wgslsmith_mod_u32(4294967295u, u_input.b))), vec2<u32>(firstLeadingBit(42896u), ~(~u_input.b))), reverseBits(vec2<u32>(1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(5677u, 6178u, u_input.b, u_input.b), vec4<u32>(0u, 0u, 54559u, u_input.b)) % 32u), ~35933u >> (max(u_input.b, u_input.b) % 32u))));
    var var_3 = ~_wgslsmith_mult_i32(countOneBits(~countOneBits(25822i)), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), var_0.xxz), select(vec3<i32>(u_input.a, -2503i, -49621i), vec3<i32>(3215i, u_input.a, u_input.a), false)));
    var var_4 = !vec4<bool>(true, any(vec3<bool>(true, true, true)), true, _wgslsmith_div_u32(countOneBits(u_input.b), var_2.x) >= ~(u_input.b << (29670u % 32u)));
    var var_5 = global0[_wgslsmith_index_u32(~21785u << (0u % 32u), 4u)];
    var var_6 = -vec2<i32>(~(-u_input.a ^ abs(var_0.x)), var_5.b);
    var var_7 = global0[_wgslsmith_index_u32(func_3() << (reverseBits(_wgslsmith_div_u32(_wgslsmith_add_u32(65036u << (var_2.x % 32u), ~20995u), func_2(global0[_wgslsmith_index_u32(u_input.b, 4u)], vec4<u32>(0u, var_2.x, 4294967295u, 0u)) & u_input.b)) % 32u), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~vec3<u32>(u_input.b & 1u, ~max(u_input.b, 56263u), u_input.b), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, var_2.x, 20826u, var_2.x), vec4<u32>(0u, u_input.b, u_input.b, var_2.x)) << (~vec4<u32>(0u, 12243u, 0u, u_input.b) % vec4<u32>(32u))));
}

