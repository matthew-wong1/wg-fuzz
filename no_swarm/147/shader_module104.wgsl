struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_3,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-194f, -362f), vec2<f32>(-1662f, 769f), vec2<f32>(-316f, 303f), vec2<f32>(517f, 728f), vec2<f32>(1394f, 440f), vec2<f32>(1590f, -165f), vec2<f32>(-1101f, 320f), vec2<f32>(459f, -442f));

var<private> global2: array<u32, 29>;

var<private> global3: array<vec4<i32>, 31>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = -_wgslsmith_dot_vec4_i32(abs(select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 1615i, -3344i, 2147483647i), vec4<i32>(arg_1.d.x, arg_1.d.x, arg_0.a.d.x, 1i)), global3[_wgslsmith_index_u32(u_input.a, 31u)] & vec4<i32>(arg_2.d.x, -2993i, -7826i, arg_2.d.x), vec4<bool>(arg_1.a.x, arg_1.a.x, false, false))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(global3[_wgslsmith_index_u32(u_input.a, 31u)], u_input.d) << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 29u)], u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33082u, 29u)], 29u)]), vec4<u32>(1u, u_input.a, 10685u, global2[_wgslsmith_index_u32(u_input.a, 29u)])) % vec4<u32>(32u)), -abs(vec4<i32>(u_input.b, -12134i, -31227i, arg_1.d.x))));
    let var_1 = Struct_4(_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)] >> (u_input.a % 32u), 31u)], max(_wgslsmith_mult_vec4_i32(~global3[_wgslsmith_index_u32(9084u, 31u)], countOneBits(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50389u, 29u)], 29u)], 31u)])), select(-global3[_wgslsmith_index_u32(u_input.a, 31u)], u_input.d, select(arg_0.c, arg_0.c, arg_0.c.x)))), arg_0, Struct_3(arg_0.a, -u_input.c, select(arg_0.c, arg_0.c, select(arg_0.c, select(arg_0.c, vec4<bool>(false, true, arg_2.e.x, true), arg_2.a.x), vec4<bool>(arg_2.e.x, arg_2.e.x, arg_1.e.x, false)))), vec3<f32>(arg_0.a.c.x, -951f, _wgslsmith_f_op_f32(f32(-1f) * -1146f)));
    let var_2 = vec2<i32>(~(arg_2.d.x & -19134i), 0i);
    var var_3 = ~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 1u), 29u)];
    let var_4 = Struct_3(Struct_1(!arg_0.a.a, arg_0.a.c.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.c)), vec2<f32>(_wgslsmith_f_op_f32(-500f + -1000f), arg_1.b)), firstLeadingBit(vec2<i32>(~arg_0.b, 40458i << (global2[_wgslsmith_index_u32(18422u, 29u)] % 32u))), select(vec2<bool>(0u != u_input.a, global2[_wgslsmith_index_u32(1u, 29u)] < u_input.a), !select(vec2<bool>(true, arg_2.a.x), vec2<bool>(arg_0.a.e.x, true), true), select(arg_0.a.a.zy, !var_1.c.a.a.zx, vec2<bool>(arg_1.a.x, arg_2.e.x)))), -1i, !vec4<bool>(arg_1.e.x, !(var_1.c.c.x || false), false, !select(arg_0.c.x, true, false)));
    return firstTrailingBit(reverseBits(~(~(~4294967295u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_4) -> vec3<bool> {
    var var_0 = arg_2.b;
    global2 = array<u32, 29>();
    global1 = array<vec2<f32>, 8>();
    global2 = array<u32, 29>();
    global0 = 16076u;
    return !select(select(vec3<bool>(true, all(vec2<bool>(var_0.c.x, false)), true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, var_0.a.e.x && var_0.a.a.x, true), select(vec3<bool>(true, true, true), vec3<bool>(var_0.a.a.x, arg_2.b.a.a.x, var_0.c.x), true), !arg_2.c.a.a), all(select(!vec3<bool>(var_0.a.e.x, var_0.c.x, arg_2.c.a.e.x), !var_0.c.yxz, all(vec4<bool>(var_0.c.x, false, false, false)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    var var_0 = Struct_3(Struct_1(func_4(u_input.d.zxw, ~func_3(Struct_3(arg_1, 1i, vec4<bool>(arg_1.a.x, false, false, true)), arg_1, Struct_1(arg_1.a, -822f, vec2<f32>(230f, arg_1.b), vec2<i32>(-6419i, -39834i), vec2<bool>(true, arg_1.a.x))), Struct_4(arg_1.d.x, Struct_3(arg_1, 0i, vec4<bool>(true, false, true, true)), Struct_3(Struct_1(arg_1.a, arg_1.b, global1[_wgslsmith_index_u32(35502u, 8u)], arg_1.d, arg_1.e), -24094i, vec4<bool>(false, false, true, arg_1.e.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, -529f, 1686f) - vec3<f32>(arg_0.x, 953f, arg_1.b)))), arg_1.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.c.x, -808f))), vec2<f32>(_wgslsmith_div_f32(-1002f, -160f), _wgslsmith_f_op_f32(-arg_1.c.x)), !select(arg_1.a.zz, arg_1.a.yz, arg_1.a.yx))), _wgslsmith_mult_vec2_i32(arg_1.d, ~vec2<i32>(-2147483647i, -21105i)), vec2<bool>(~arg_2.x < u_input.b, true)), -abs(arg_1.d.x) | (i32(-1i) * -40537i), vec4<bool>(1f < arg_0.x, all(vec3<bool>(arg_3 > arg_3, true, arg_1.a.x)), any(vec4<bool>(true, false, 760f <= arg_0.x, arg_1.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(8889u, 2117u, u_input.a), vec3<u32>(0u, 0u, u_input.a)) >= u_input.a));
    var_0 = Struct_3(arg_1, 21915i, var_0.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b), -1013f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.b), 654f))));
    var var_2 = Struct_2(Struct_1(select(vec3<bool>(arg_2.x >= u_input.c, arg_1.a.x, arg_1.e.x), !arg_1.a, vec3<bool>(var_0.c.x, var_0.a.e.x, all(vec3<bool>(arg_1.e.x, true, false)))), 675f, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.c.x, 196f), _wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(48818u, 8u)], vec2<f32>(-212f, var_0.a.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.a.c, global1[_wgslsmith_index_u32(u_input.a, 8u)], vec2<bool>(var_0.c.x, var_0.c.x))))), abs(var_0.a.d), arg_1.a.xx));
    let var_3 = Struct_4(var_0.a.d.x, Struct_3(var_0.a, 2147483647i, select(select(vec4<bool>(arg_1.a.x, true, true, var_0.a.a.x), !vec4<bool>(var_2.a.a.x, false, var_0.c.x, var_0.c.x), select(vec4<bool>(false, arg_1.a.x, arg_1.e.x, arg_1.a.x), vec4<bool>(false, false, var_0.c.x, false), true)), var_0.c, !func_4(u_input.d.yzz, 4294967295u, Struct_4(arg_2.x, Struct_3(Struct_1(vec3<bool>(true, true, false), -984f, vec2<f32>(-1849f, 1508f), vec2<i32>(2147483647i, -1i), arg_1.e), arg_1.d.x, var_0.c), Struct_3(var_0.a, -32424i, vec4<bool>(true, true, var_2.a.e.x, true)), vec3<f32>(-2349f, var_2.a.b, -145f))).x)), Struct_3(Struct_1(vec3<bool>(var_2.a.d.x >= arg_2.x, var_0.c.x, false), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, 173f) + _wgslsmith_f_op_f32(-var_2.a.c.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(global1[_wgslsmith_index_u32(u_input.a, 8u)])))), var_0.a.d, vec2<bool>(false | arg_1.e.x, !var_0.a.a.x)), 2147483647i, vec4<bool>(func_4(vec3<i32>(arg_2.x, 0i, -1i), _wgslsmith_sub_u32(u_input.a, 4294967295u), Struct_4(-9781i, Struct_3(Struct_1(vec3<bool>(false, true, false), 1015f, var_0.a.c, vec2<i32>(-6631i, 1i), vec2<bool>(var_0.a.e.x, true)), var_2.a.d.x, var_0.c), Struct_3(Struct_1(var_2.a.a, arg_0.x, vec2<f32>(965f, arg_0.x), var_0.a.d, vec2<bool>(var_0.c.x, arg_1.e.x)), var_0.b, vec4<bool>(false, arg_1.a.x, arg_1.a.x, true)), vec3<f32>(var_1.x, var_1.x, arg_0.x))).x, arg_1.e.x, any(var_0.c), var_0.a.e.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1178f, -531f, 943f)));
    return _wgslsmith_clamp_u32(~0u, 1u, ~(~u_input.a) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(10708u, arg_3, 85077u) & _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_3, 29u)], 29u)]), vec3<u32>(global2[_wgslsmith_index_u32(32596u, 29u)], u_input.a, 52814u)), vec3<u32>(25736u, arg_3, 4294967295u) >> (~vec3<u32>(arg_3, arg_3, 53081u) % vec3<u32>(32u))) % 32u));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-848f * arg_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1663f, 150f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-561f, -409f, true)), 1001f)))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))) + _wgslsmith_f_op_f32(select(110f, _wgslsmith_f_op_f32(arg_0 - -240f), true)))));
    var var_1 = Struct_3(Struct_1(vec3<bool>(4294967295u > ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], true, !all(vec3<bool>(true, true, false))), -2199f, _wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(func_3(Struct_3(Struct_1(vec3<bool>(false, false, false), arg_0, vec2<f32>(-760f, var_0.x), u_input.d.xz, vec2<bool>(false, true)), arg_2, vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(true, true, true), -451f, vec2<f32>(arg_0, var_0.x), u_input.d.xy, vec2<bool>(true, false)), Struct_1(vec3<bool>(false, true, false), var_0.x, vec2<f32>(-1828f, var_0.x), vec2<i32>(u_input.b, u_input.d.x), vec2<bool>(false, false))), 8u)], _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-225f, var_0.x) - global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27322u, 29u)], 8u)]))), vec2<bool>(true, true))), u_input.d.yw, vec2<bool>((arg_1.x < u_input.a) || (u_input.a <= 4294967295u), false)), ~(-1i), vec4<bool>(select(true, true, ~global2[_wgslsmith_index_u32(1u, 29u)] > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 29u)], 0u, 4294967295u), arg_1)), true, true, any(select(vec3<bool>(true, true, true), func_4(vec3<i32>(u_input.d.x, -28765i, arg_2), arg_1.x, Struct_4(-1i, Struct_3(Struct_1(vec3<bool>(false, true, true), 1019f, var_0.yx, u_input.d.zz, vec2<bool>(false, true)), arg_2, vec4<bool>(true, false, false, false)), Struct_3(Struct_1(vec3<bool>(false, false, false), var_0.x, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.x, 29u)], 8u)], vec2<i32>(23792i, 1i), vec2<bool>(false, true)), u_input.c, vec4<bool>(true, true, true, false)), vec3<f32>(1000f, var_0.x, arg_0))), true))));
    global2 = array<u32, 29>();
    global0 = _wgslsmith_dot_vec2_u32(arg_1.ww, arg_1.xx);
    var var_2 = 0u;
    return var_1.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_2(func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, true)))), vec4<u32>(~14903u, ~54919u, global2[_wgslsmith_index_u32(func_2(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(71155u, 8u)], arg_1.zy), Struct_1(arg_0, -1578f, vec2<f32>(232f, -1421f), vec2<i32>(-1i, -1i), arg_0.zy), u_input.d.yz, global2[_wgslsmith_index_u32(u_input.a, 29u)] | global2[_wgslsmith_index_u32(1u, 29u)]), 29u)], max(69051u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 29u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, -u_input.c, u_input.d.x), abs(u_input.d.yzz))));
    var var_1 = all(select(!select(vec4<bool>(arg_0.x, false, var_0.a.e.x, arg_0.x), !vec4<bool>(false, true, true, arg_0.x), !vec4<bool>(var_0.a.e.x, false, arg_0.x, false)), select(select(vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(true, false, var_0.a.a.x, true), all(arg_0.xz)), vec4<bool>(func_5(760f, vec4<u32>(62771u, u_input.a, 4294967295u, global2[_wgslsmith_index_u32(40438u, 29u)]), 1i).e.x, true, all(vec4<bool>(var_0.a.e.x, false, true, false)), false), vec4<bool>(func_4(vec3<i32>(var_0.a.d.x, 1i, -795i), 74169u, Struct_4(var_0.a.d.x, Struct_3(Struct_1(arg_0, arg_1.x, vec2<f32>(arg_1.x, arg_1.x), vec2<i32>(-2147483647i, -35446i), vec2<bool>(arg_0.x, var_0.a.a.x)), 53468i, vec4<bool>(var_0.a.e.x, true, arg_0.x, arg_0.x)), Struct_3(var_0.a, var_0.a.d.x, vec4<bool>(true, true, false, false)), arg_1.wyx)).x, true, true, func_4(vec3<i32>(u_input.b, -46162i, 2147483647i), global2[_wgslsmith_index_u32(6244u, 29u)], Struct_4(1i, Struct_3(Struct_1(arg_0, arg_1.x, var_0.a.c, vec2<i32>(var_0.a.d.x, -67064i), vec2<bool>(arg_0.x, arg_0.x)), u_input.b, vec4<bool>(arg_0.x, true, arg_0.x, false)), Struct_3(Struct_1(var_0.a.a, var_0.a.c.x, var_0.a.c, u_input.d.ww, vec2<bool>(false, false)), var_0.a.d.x, vec4<bool>(false, false, var_0.a.a.x, false)), vec3<f32>(943f, var_0.a.b, var_0.a.b))).x)), vec4<bool>(true, true, !var_0.a.a.x, false)));
    global2 = array<u32, 29>();
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.d.zzz, -u_input.d.xxy), u_input.d.x);
    var var_3 = u_input.d.xxx;
    return arg_0;
}

fn func_6(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_4 {
    let var_0 = arg_1.yy;
    global1 = array<vec2<f32>, 8>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(abs(229f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_1.x))));
    global2 = array<u32, 29>();
    return Struct_4(_wgslsmith_add_i32(u_input.b, -1i), Struct_3(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(132f))), abs(~vec4<u32>(4294967295u, u_input.a, u_input.a, 8230u)), max(reverseBits(arg_2.d.x), -2147483647i)), 44288i, vec4<bool>(arg_1.x, func_1(arg_1, vec4<f32>(var_1.x, 1802f, var_1.x, arg_2.c.x)).x && !arg_2.a.x, true, _wgslsmith_f_op_f32(-var_1.x) != _wgslsmith_f_op_f32(arg_2.b - 152f))), Struct_3(arg_2, -firstTrailingBit(abs(-2147483647i)), select(select(!vec4<bool>(var_0.x, true, false, true), !vec4<bool>(var_0.x, false, false, true), select(vec4<bool>(arg_1.x, var_0.x, var_0.x, false), vec4<bool>(arg_1.x, var_0.x, true, true), vec4<bool>(var_0.x, arg_2.a.x, true, true))), select(vec4<bool>(arg_2.a.x, true, var_0.x, true), !vec4<bool>(true, true, false, var_0.x), true), !select(vec4<bool>(arg_1.x, arg_1.x, var_0.x, arg_2.e.x), vec4<bool>(false, var_0.x, false, true), vec4<bool>(arg_1.x, var_0.x, true, arg_2.a.x)))), vec3<f32>(-1412f, arg_2.c.x, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(293f - arg_2.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_f32(max(-1318f, -118f)), vec3<bool>(u_input.c == _wgslsmith_sub_i32(2147483647i, u_input.b << (12677u % 32u)), true, all(vec3<bool>(true, true, true))), Struct_1(func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-543f, 563f, -560f, 294f) * vec4<f32>(1713f, 608f, -649f, 549f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(595f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-328f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-453f * -284f))), u_input.d.xw, func_1(func_5(_wgslsmith_f_op_f32(step(-1638f, 574f)), vec4<u32>(u_input.a, 71860u, u_input.a, u_input.a) & vec4<u32>(41167u, u_input.a, u_input.a, 0u), reverseBits(-1i)).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1198f, -540f, 866f, -1308f), vec4<f32>(438f, -698f, 995f, 1808f))))).xz));
    var var_1 = _wgslsmith_f_op_f32(sign(780f));
    var_1 = _wgslsmith_f_op_f32(-func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.d.x)), _wgslsmith_f_op_f32(var_0.d.x - 588f), true)))), firstLeadingBit(reverseBits(vec4<u32>(74315u, 1u, 46361u, 1u))), var_0.a).c.x);
    let var_2 = 24518i;
    let var_3 = vec4<bool>(var_0.b.a.e.x, var_0.b.c.x, select(!((var_0.b.a.a.x & false) != all(vec3<bool>(var_0.c.c.x, var_0.b.c.x, var_0.b.c.x))), var_0.b.c.x, any(var_0.b.a.a.yy)), false);
    global1 = array<vec2<f32>, 8>();
    var var_4 = vec4<bool>(!all(func_1(func_4(u_input.d.xwx, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 29u)], var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.c.a.b, var_0.b.a.b, 1307f))).zx), 2450f > func_5(_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(exp2(var_0.c.a.b))), ~(vec4<u32>(30759u, 20385u, 0u, 17752u) >> (vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], u_input.a, 42284u) % vec4<u32>(32u))), -u_input.d.x | -4396i).c.x, !all(var_3.zy), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~1213u, _wgslsmith_add_u32(_wgslsmith_sub_u32(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a, 29u)]), 3878u), 18701u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)], 29u)] >> (global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(u_input.a, 29u)] ^ 1u), 29u)] % 32u), abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~9605u, 29u)] ^ ~u_input.a, 29u)])));
}

