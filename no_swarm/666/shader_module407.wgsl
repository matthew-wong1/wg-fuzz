struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(445f, -1006f, -1000f, 514f), vec2<u32>(35497u, 19560u), vec2<bool>(false, false), 1u, vec4<i32>(0i, 0i, -36451i, i32(-2147483648)));

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<f32>) -> i32 {
    return _wgslsmith_add_i32(global0.e.x, _wgslsmith_sub_i32(global1.e.x, 1i));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(~(~_wgslsmith_sub_u32(u_input.a.x, 45139u)) & ~(~1u)), 3u)];
    let var_1 = global2[_wgslsmith_index_u32(var_0.b.x, 3u)];
    var var_2 = firstTrailingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(-10450i, _wgslsmith_sub_i32(22706i, 2147483647i), arg_1.x, abs(var_1.e.x)), ~(-var_1.e)));
    var var_3 = global2[_wgslsmith_index_u32(~(0u << (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(global0.b.x, var_0.d, 4294967295u, 38291u)), _wgslsmith_div_vec4_u32(u_input.a, u_input.a)), var_1.b.x) % 32u)), 3u)];
    let var_4 = !vec4<bool>(var_0.c.x, global1.c.x, all(vec2<bool>(!global0.c.x, true)), select(true || any(vec4<bool>(false, true, global1.c.x, false)), !global0.c.x, true));
    return ~(~(~4294967295u));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: i32) -> i32 {
    let var_0 = Struct_1(global0.a, abs(global0.b), vec2<bool>(true & any(!vec4<bool>(true, false, global1.c.x, global1.c.x)), true | arg_0), max(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(79996u, global0.d, 3111u), vec3<u32>(81847u, arg_2, 23441u)), ~vec3<u32>(105078u, global1.d, 0u)), arg_2)), select(vec4<i32>(-(arg_1 | global1.e.x), _wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, -7066i), -2559i), firstTrailingBit(arg_1), arg_1), _wgslsmith_clamp_vec4_i32(global0.e, global0.e, _wgslsmith_mult_vec4_i32(global0.e, vec4<i32>(global1.e.x, arg_1, global0.e.x, -2147483647i))), !select(vec4<bool>(false, global1.c.x, global0.c.x, arg_0), !vec4<bool>(global1.c.x, false, false, false), arg_1 < 2147483647i)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(global0.a, var_0.a)), max(min(~var_0.b, global1.b), countOneBits(reverseBits(global1.b | global0.b))), select(vec2<bool>(var_0.c.x, true), select(!select(global0.c, global1.c, vec2<bool>(arg_0, false)), vec2<bool>(true, true), select(global1.c, global1.c, all(vec4<bool>(true, true, global1.c.x, true)))), var_0.c), 24853u, _wgslsmith_add_vec4_i32(var_0.e, abs(abs(-global1.e))));
    global1 = global2[_wgslsmith_index_u32(arg_2, 3u)];
    let var_1 = global2[_wgslsmith_index_u32(max(27179u, _wgslsmith_add_u32(~(~0u), _wgslsmith_sub_u32(func_2(-349f, vec3<i32>(global1.e.x, global0.e.x, -32733i)), global1.d))), 3u)];
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(214f * _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-104f)))) - global1.a), ~reverseBits(~vec2<u32>(0u, global1.b.x)), vec2<bool>(!(arg_0 & any(vec4<bool>(false, false, arg_0, var_1.c.x))), !arg_0), global1.b.x, max(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, arg_3, -2147483647i, -2147483647i), global0.e, global0.e) | (vec4<i32>(global0.e.x, global0.e.x, 1i, 1i) << (u_input.a % vec4<u32>(32u)))), max(_wgslsmith_div_vec4_i32(~var_0.e, ~vec4<i32>(arg_1, global1.e.x, arg_1, global1.e.x)), var_1.e)));
    return _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i & global1.e.x, global0.e.x, -13049i), var_2.e.wzw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a))), vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -3688f), _wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_f_op_f32(global0.a.x + global0.a.x)), global0.a.x)), vec2<u32>(global0.b.x, global1.d ^ u_input.a.x), select(global1.c, vec2<bool>(global1.c.x, global1.c.x), select(!(!vec2<bool>(global1.c.x, true)), !vec2<bool>(global1.c.x, true), global0.c)), 26132u, vec4<i32>((global1.e.x & 48670i) ^ -8914i, global0.e.x ^ -global1.e.x, _wgslsmith_sub_i32(-1i, -1i) ^ _wgslsmith_dot_vec2_i32(global1.e.yx & global0.e.yy, -vec2<i32>(global1.e.x, -20915i)), 1370i));
    let var_1 = _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, 1207f)) - -1965f)));
    let var_2 = var_0;
    var var_3 = !(!select(vec3<bool>(false, true, global0.c.x), !select(vec3<bool>(global1.c.x, true, global1.c.x), vec3<bool>(var_0.c.x, false, true), vec3<bool>(global0.c.x, true, true)), global0.e.x != func_1(var_2.a.xxy, -1654f, vec4<f32>(366f, -1000f, 207f, 149f))));
    let var_4 = var_2.d;
    var var_5 = Struct_1(global1.a, global1.b, !var_3.xz, min(1u, func_2(_wgslsmith_div_f32(global0.a.x, var_1), -global1.e.zyx)), max(vec4<i32>(-1260i, global0.e.x, func_3(var_3.x, global1.e.x, _wgslsmith_sub_u32(1u, global1.d), _wgslsmith_div_i32(1i, 1i)), max(global0.e.x, _wgslsmith_mult_i32(global1.e.x, var_0.e.x))), select(select(var_2.e, vec4<i32>(var_0.e.x, -21440i, global0.e.x, var_0.e.x), 680f < var_1), -(~vec4<i32>(var_2.e.x, 1i, 1i, 20467i)), !(!var_2.c.x))));
    var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~_wgslsmith_mod_vec4_u32(u_input.a, u_input.a)), vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(var_4, var_4, 42638u, 1u)), var_5.b.x ^ _wgslsmith_sub_u32(global0.b.x, 4294967295u), _wgslsmith_clamp_u32(global1.d, _wgslsmith_mod_u32(global1.d, global0.d), ~var_5.d), firstLeadingBit(min(48798u, u_input.a.x))), any(vec3<bool>(global0.c.x, !global0.c.x, !var_3.x))), abs(_wgslsmith_div_u32(var_2.b.x, u_input.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * var_5.a.x), false)))), -vec3<i32>(i32(-1i) * -2147483647i, 50337i, -1i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.e.x, 2147483647i), vec2<i32>(-9461i, 0i))));
}

