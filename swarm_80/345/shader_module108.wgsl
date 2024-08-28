struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: bool = false;

var<private> global2: bool = false;

var<private> global3: array<i32, 27>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(-2420f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -464f) * _wgslsmith_f_op_f32(455f + _wgslsmith_f_op_f32(545f - 1390f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, (19208i <= u_input.a.x) | any(vec3<bool>(true, false, true))))), arg_0.x);
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(134f, arg_0.x, 1508f), vec3<f32>(-634f, -383f, var_0.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 144f, -210f) + vec3<f32>(arg_0.x, 1000f, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1638f, var_0.x, 598f) + vec3<f32>(arg_0.x, var_0.x, arg_0.x))), !all(vec2<bool>(false, true)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(337f, _wgslsmith_f_op_f32(ceil(-942f)), _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(103f, 1021f, 1000f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, var_0.x, arg_0.x), vec3<f32>(-738f, -1184f, arg_0.x), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1333f, -935f, 1940f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, arg_0.x, 427f))))), all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), true)))))));
    global1 = true;
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(461f)) * -1048f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1031f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(ceil(1729f))), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(-451f))), var_0.x)))));
    var_0 = vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1044f))))), var_0.x, _wgslsmith_f_op_f32(trunc(-507f)));
    return any(select(vec2<bool>(any(vec3<bool>(true, false, true)), false), select(select(vec2<bool>(false, false), vec2<bool>(true, true), 6997i > global3[_wgslsmith_index_u32(1u, 27u)]), vec2<bool>(true, true), !all(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(sign(543f)) != arg_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> vec3<i32> {
    let var_0 = 4294967295u;
    var var_1 = global0[_wgslsmith_index_u32(~max(0u, var_0 >> (~_wgslsmith_mod_u32(13596u, var_0) % 32u)), 10u)];
    let var_2 = arg_1.e.e;
    var var_3 = min(-max(_wgslsmith_sub_vec3_i32(arg_0.a, var_1.a), vec3<i32>(arg_0.a.x, arg_1.c.b, -1i)), abs(vec3<i32>(_wgslsmith_add_i32(arg_1.d.a.x, -17764i), _wgslsmith_sub_i32(2147483647i, global3[_wgslsmith_index_u32(52174u, 27u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, arg_1.b.x, arg_0.b, -623i), vec4<i32>(var_1.a.x, arg_0.a.x, var_1.b, arg_1.e.b))) | firstTrailingBit(-vec3<i32>(5841i, u_input.a.x, -7781i))));
    var_1 = Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(~var_1.a, var_1.a, _wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, -43946i, -20741i), _wgslsmith_mult_vec3_i32(arg_1.e.a, var_1.a), -vec3<i32>(8986i, var_3.x, -2714i))), arg_1.d.a), ~(-var_1.b), vec4<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -362f) - _wgslsmith_f_op_f32(-113f + arg_0.e)), 1f)), arg_1.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2))))), 2370f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1654f + 682f))), arg_0.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.c.e, 252f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(991f * 1303f) + _wgslsmith_f_op_f32(-var_1.c.x))))));
    return _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(arg_1.c.a, ~arg_0.a), abs(var_1.a));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = any(select(vec2<bool>(all(vec3<bool>(true, true, true)), !any(vec4<bool>(false, false, false, false))), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), true), all(select(vec2<bool>(true, false), vec2<bool>(false, false), select(false, false, false)))));
    var var_1 = Struct_2(1i, -_wgslsmith_sub_vec2_i32(~u_input.a >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), u_input.b), Struct_1(func_4(global0[_wgslsmith_index_u32(65628u, 10u)], Struct_2(8225i, firstLeadingBit(vec2<i32>(0i, 2147483647i)), global0[_wgslsmith_index_u32(1u, 10u)], Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(38189u, 27u)], u_input.b.x, arg_0), 15195i, vec4<f32>(-1000f, 2628f, -780f, 1603f), vec4<f32>(-504f, 1000f, 1342f, -180f), 554f), Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(5081u, 27u)], 2147483647i, -15589i), -1i, vec4<f32>(559f, 921f, -1142f, 857f), vec4<f32>(1153f, 1132f, 135f, 1205f), -984f)), func_3(vec2<f32>(-949f, 1211f)) & !var_0), -40111i, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(854f)), -317f, _wgslsmith_f_op_f32(abs(-605f)), _wgslsmith_f_op_f32(trunc(1228f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 1263f, 874f, 893f)))), -1558f), global0[_wgslsmith_index_u32(max(4294967295u, ~9870u), 10u)], global0[_wgslsmith_index_u32(~(~min(76923u, 1u)), 10u)]);
    global3 = array<i32, 27>();
    var var_2 = vec4<bool>(true, var_0, true, true);
    var_2 = !(!(!vec4<bool>(false, false, var_2.x, true)));
    return all(vec4<bool>(var_2.x || var_2.x, !var_0, !var_0 & var_0, all(select(var_2.xw, var_2.yx, var_2.wy)) | !(!var_0)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = arg_2.d.zw;
    var var_1 = all(!vec2<bool>(func_2(1i), true));
    var var_2 = !vec2<bool>(!any(vec2<bool>(true, true)), false);
    var_1 = true;
    global2 = true;
    return Struct_2(0i, select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -54297i), vec2<i32>(global3[_wgslsmith_index_u32(arg_3.x, 27u)], arg_1.x)) & _wgslsmith_mult_i32(arg_1.x, -14258i), select(arg_1.x, u_input.b.x, var_2.x) >> (_wgslsmith_add_u32(0u, arg_3.x) % 32u)), func_4(Struct_1(vec3<i32>(-49566i, -1i, 0i) | vec3<i32>(arg_2.a.x, 2147483647i, u_input.a.x), max(22406i, 66592i), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, var_0.x, 985f, arg_0.x))), arg_2.c, 583f), Struct_2(_wgslsmith_sub_i32(-9774i, arg_1.x), select(vec2<i32>(u_input.a.x, -34356i), arg_1, var_2.x), Struct_1(arg_2.a, -47143i, arg_0, vec4<f32>(arg_0.x, var_0.x, arg_2.c.x, -956f), -205f), Struct_1(vec3<i32>(22055i, arg_1.x, 1i), 0i, arg_0, arg_2.d, 322f), global0[_wgslsmith_index_u32(0u, 10u)]), var_2.x).zy, true), global0[_wgslsmith_index_u32(~arg_3.x, 10u)], arg_2, Struct_1(arg_2.a ^ (abs(arg_2.a) & abs(arg_2.a)), -8593i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(arg_2.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.c - vec4<f32>(939f, arg_2.c.x, -1000f, -700f)) - arg_2.d), var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.c)), -880f));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    global0 = array<Struct_1, 10>();
    let var_0 = arg_1;
    global3 = array<i32, 27>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1077f, var_0.x, arg_0.d.c.x, -285f) - arg_1), ~vec2<i32>(arg_2.c.a.x, u_input.b.x), Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], -19033i, arg_3.c.b), global3[_wgslsmith_index_u32(42371u, 27u)], vec4<f32>(arg_1.x, arg_1.x, 1000f, arg_0.c.e), vec4<f32>(991f, -132f, 194f, -1000f), arg_3.d.d.x), vec2<u32>(1u, 1u)).d.c.x, _wgslsmith_f_op_f32(-arg_3.c.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.e)), -1223f, -1163f);
    global0 = array<Struct_1, 10>();
    return _wgslsmith_mult_i32(-50377i, arg_0.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 27>();
    var var_0 = -_wgslsmith_mult_vec3_i32(vec3<i32>(func_5(func_1(vec4<f32>(-742f, 1000f, 903f, -1723f), vec2<i32>(-2147483647i, u_input.a.x), Struct_1(vec3<i32>(26779i, -2147483647i, 51698i), u_input.b.x, vec4<f32>(1034f, 558f, -1598f, -1054f), vec4<f32>(-554f, -515f, -334f, -556f), -570f), vec2<u32>(4294967295u, 39648u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, 157f, 1986f, -1000f)), Struct_2(-31961i, vec2<i32>(u_input.a.x, 38547i), global0[_wgslsmith_index_u32(50528u, 10u)], Struct_1(vec3<i32>(-1i, 12807i, u_input.b.x), u_input.b.x, vec4<f32>(227f, -974f, 2106f, -1503f), vec4<f32>(-670f, -667f, -1029f, 1045f), 1077f), global0[_wgslsmith_index_u32(1u, 10u)]), func_1(vec4<f32>(-595f, -523f, -1807f, -149f), vec2<i32>(2147483647i, 20574i), global0[_wgslsmith_index_u32(32655u, 10u)], vec2<u32>(0u, 23753u))), countOneBits(-38620i), global3[_wgslsmith_index_u32(abs(4294967295u), 27u)] >> (1u % 32u)), vec3<i32>(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(4294967295u, 27u)], u_input.a.x, -2147483647i << (0u % 32u)), -func_1(vec4<f32>(-818f, 378f, 201f, -396f), u_input.b, global0[_wgslsmith_index_u32(53777u, 10u)], vec2<u32>(71433u, 1u)).c.a.x, _wgslsmith_clamp_i32(-33759i, u_input.b.x & -16476i, ~0i)));
    let var_1 = 130309u;
    var var_2 = abs(reverseBits(select(~select(vec2<u32>(var_1, var_1), vec2<u32>(var_1, var_1), false), _wgslsmith_add_vec2_u32(~vec2<u32>(var_1, 4294967295u), vec2<u32>(var_1, 1u) | vec2<u32>(1638u, 1u)), vec2<bool>(true, true))));
    var_0 = -((vec3<i32>(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(1u, 27u)]), var_0.x, -16927i) << (vec3<u32>(~var_1, reverseBits(var_1), 4294967295u) % vec3<u32>(32u))) >> (abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, 0u, 4294967295u) | vec3<u32>(0u, var_1, 4294967295u), vec3<u32>(var_1, 44306u, 1u))) % vec3<u32>(32u)));
    let var_3 = select(select(select(vec3<bool>(true, false, any(vec4<bool>(false, true, false, true))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), true), true), vec3<bool>(true, any(vec3<bool>(false, true, false)), true), false), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), !(u_input.a.x != func_5(Struct_2(17415i, var_0.zz, Struct_1(vec3<i32>(var_0.x, 1i, global3[_wgslsmith_index_u32(46683u, 27u)]), -42158i, vec4<f32>(1199f, 841f, -312f, -322f), vec4<f32>(465f, -1478f, 1068f, 848f), -955f), Struct_1(vec3<i32>(58424i, u_input.a.x, -40782i), -20065i, vec4<f32>(-1000f, -546f, 1638f, -1369f), vec4<f32>(-1716f, 1035f, 1497f, -349f), 1882f), global0[_wgslsmith_index_u32(var_1, 10u)]), vec4<f32>(-574f, -306f, -176f, 1000f), Struct_2(19182i, vec2<i32>(var_0.x, 2147483647i), global0[_wgslsmith_index_u32(35051u, 10u)], Struct_1(vec3<i32>(1i, 1i, 21716i), var_0.x, vec4<f32>(384f, 2178f, 936f, -273f), vec4<f32>(-648f, 1925f, -959f, 404f), -114f), global0[_wgslsmith_index_u32(var_1, 10u)]), Struct_2(-1i, var_0.yx, Struct_1(vec3<i32>(57400i, -36011i, 31885i), global3[_wgslsmith_index_u32(var_2.x, 27u)], vec4<f32>(735f, 276f, 474f, 721f), vec4<f32>(-1109f, 1071f, 1228f, 636f), -1000f), global0[_wgslsmith_index_u32(var_2.x, 10u)], global0[_wgslsmith_index_u32(var_2.x, 10u)]))) != false);
    var var_4 = func_1(vec4<f32>(-295f, -1542f, 2449f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(687f, -2563f) + -393f))), vec2<i32>(29654i, func_4(Struct_1(vec3<i32>(u_input.b.x, 7247i, u_input.b.x), 2147483647i, vec4<f32>(523f, 420f, -533f, -1056f), vec4<f32>(609f, -724f, -1498f, 1207f), 930f), Struct_2(-50641i, u_input.a, global0[_wgslsmith_index_u32(var_1, 10u)], Struct_1(vec3<i32>(-1i, 0i, 47603i), var_0.x, vec4<f32>(367f, 832f, 1825f, -1006f), vec4<f32>(2029f, 529f, -1792f, -240f), 688f), Struct_1(vec3<i32>(21376i, -1i, -8826i), global3[_wgslsmith_index_u32(var_2.x, 27u)], vec4<f32>(-1062f, 1454f, 617f, -1656f), vec4<f32>(-576f, 1000f, -1000f, 1261f), 954f)), true).x) | (select(var_0.xy, var_0.xx | u_input.a, vec2<bool>(false, var_3.x)) | (vec2<i32>(u_input.b.x, 2147483647i) << (~vec2<u32>(4294967295u, var_1) % vec2<u32>(32u)))), Struct_1(-vec3<i32>(52126i, -10097i, 17744i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -2726i, -17278i), vec3<i32>(var_0.x, 22518i, global3[_wgslsmith_index_u32(53815u, 27u)])), 1i, -31290i, -43320i), ~vec4<i32>(u_input.b.x, -42955i, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(948f, -637f, -1000f, 825f) - vec4<f32>(512f, -1000f, 323f, -1233f)), vec4<f32>(427f, 1152f, -1311f, 1702f)), vec4<f32>(_wgslsmith_div_f32(700f, -974f), -281f, _wgslsmith_f_op_f32(trunc(570f)), -681f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-236f, _wgslsmith_f_op_f32(f32(-1f) * -657f), 2189f, -917f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1302f, -1000f, -526f, -316f)), vec4<f32>(934f, -496f, 120f, -534f)), var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-258f, 1143f, var_3.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1210f) + -967f))), vec2<u32>(min(4294967295u, 60014u), var_2.x));
    let var_5 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - var_4.d.e), -357f, _wgslsmith_f_op_f32(floor(-881f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_4.c.e)) * _wgslsmith_f_op_f32(var_4.e.d.x * 1504f)))), var_4.c.a.yz, global0[_wgslsmith_index_u32(46569u, 10u)], abs(min(_wgslsmith_div_vec2_u32(abs(vec2<u32>(var_2.x, 0u)), vec2<u32>(var_2.x, 4294967295u)), ~abs(vec2<u32>(22676u, 17661u))))).d;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(vec4<u32>(var_1, 4294967295u, var_2.x, 1u) | vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.e.c.xz))))), -_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-1i, var_0.x), var_4.a, 1i, var_0.x), vec4<i32>(firstTrailingBit(2147483647i), _wgslsmith_mult_i32(63576i, u_input.b.x), u_input.a.x, _wgslsmith_dot_vec2_i32(var_4.d.a.yx, var_0.xz))), (0u & _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_2.x, var_2.x), 9229u)) & ~var_2.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(var_4.b.x, u_input.a.x), _wgslsmith_sub_i32(-2147483647i, 0i) << (~4294967295u % 32u)), u_input.b.x));
}

