struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

var<private> global1: u32 = 0u;

var<private> global2: f32 = 1162f;

var<private> global3: array<f32, 12>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = all(!vec3<bool>(false, arg_2.a, -1443f < arg_1.b));
    var var_1 = !vec3<bool>(true == (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -41861i, u_input.b.x, arg_0.x), vec4<i32>(-1i, u_input.a, 1i, arg_0.x)) > _wgslsmith_mult_i32(-31328i, arg_0.x)), arg_2.a, u_input.a >= _wgslsmith_sub_i32(abs(arg_0.x), _wgslsmith_mod_i32(1i, u_input.b.x)));
    let var_2 = Struct_2(select(!var_1.x && false, (u_input.d.x <= 1u) | true, arg_1.d.x) & true, 906f);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-640f * -290f) * global3[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_f_op_f32(ceil(var_2.b)), _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(13808u, 12u)], global3[_wgslsmith_index_u32(arg_1.a.x, 12u)])))))) + vec3<f32>(arg_1.b, -494f, _wgslsmith_f_op_f32(364f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1000f)), var_2.b)))));
    var_0 = any(select(vec2<bool>(true, var_3.x >= -1286f), var_1.xx, vec2<bool>(var_2.a & !arg_2.a, all(vec4<bool>(arg_1.d.x, true, false, arg_2.a)))));
    return !select(!select(vec3<bool>(true, arg_1.d.x, true), !vec3<bool>(false, var_1.x, var_1.x), var_1.x), vec3<bool>(any(!vec3<bool>(arg_1.d.x, true, true)), !(arg_1.b < -903f), true), false);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = max(-vec4<i32>(2275i, i32(-1i) * -1i, u_input.b.x, ~(-31056i)), _wgslsmith_mult_vec4_i32(countOneBits(abs(vec4<i32>(u_input.a, u_input.a, -8709i, 51019i))), -countOneBits(vec4<i32>(-1i, u_input.b.x, u_input.b.x, -2147483647i)))) ^ abs(~(-vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x)));
    var var_1 = vec3<bool>(arg_2, true, !any(!vec2<bool>(true, arg_3.a)));
    var_1 = !func_3(var_0.www, Struct_4(vec2<u32>(abs(0u), abs(9368u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(324f - 262f)), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, u_input.c.x), vec3<u32>(arg_1.x, u_input.c.x, u_input.c.x))), var_1.yy), arg_3);
    let var_2 = ~global0[_wgslsmith_index_u32(~(1u ^ _wgslsmith_mod_u32(countOneBits(arg_1.x), 1u)), 13u)];
    let var_3 = Struct_5(Struct_3(vec4<i32>(_wgslsmith_div_i32(var_0.x, firstLeadingBit(var_0.x)), -_wgslsmith_dot_vec2_i32(u_input.b, var_0.yw), -2147483647i, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-170f + 680f), _wgslsmith_f_op_f32(arg_3.b - global3[_wgslsmith_index_u32(57755u, 12u)]), 1000f, _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(35819u, 12u)])))), _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(20582i, var_0.x, u_input.e, -4050i)) < 2147483647i, _wgslsmith_mult_u32(_wgslsmith_div_u32(abs(var_2.x), 43161u), 1u), Struct_1(-56990i, _wgslsmith_div_vec2_f32(vec2<f32>(arg_3.b, 217f), vec2<f32>(-273f, -320f)), -1i, _wgslsmith_f_op_f32(f32(-1f) * -345f))), Struct_4(u_input.c, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_2.x, 1u << (0u % 32u)), 12u)]), abs(vec3<u32>(1u, arg_1.x, arg_1.x)), vec2<bool>(_wgslsmith_f_op_f32(trunc(-517f)) > -1000f, var_1.x)));
    return vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(select(arg_1.yx, vec2<u32>(7983u, var_3.b.c.x), var_3.b.d.x), ~vec2<u32>(var_2.x, u_input.d.x)), ~1u), var_2.x);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = true;
    var var_1 = Struct_5(Struct_3(~vec4<i32>(reverseBits(u_input.b.x), 1i, u_input.a >> (u_input.c.x % 32u), u_input.a), arg_3.b, false, ~(6384u << (arg_3.d % 32u)), Struct_1(-arg_3.e.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_3.e.b, arg_3.b.xx)), 1i, arg_3.e.d)), Struct_4(reverseBits(vec2<u32>(4294967295u, arg_0)), -230f, u_input.d.wzz, vec2<bool>(global3[_wgslsmith_index_u32(min(arg_1, 36751u), 12u)] > _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(arg_3.d, 12u)])), var_0)));
    var var_2 = var_1.a.b;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_2.x))))) - _wgslsmith_f_op_f32(2295f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x)))), global3[_wgslsmith_index_u32(~1u, 12u)]);
    var var_4 = Struct_1(u_input.b.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(1000f, -1118f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_2.x, 12u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.e.d, 169f), vec2<f32>(arg_3.e.b.x, var_1.a.e.b.x)) - arg_3.e.b))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(var_2.x * 1262f), var_1.b.b)))), select(arg_3.e.a, arg_3.e.c, true | any(!vec3<bool>(var_1.b.d.x, arg_3.c, arg_3.c))), -1424f);
    return abs(vec2<i32>(countOneBits(var_4.a), ~var_4.a));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: u32) -> Struct_4 {
    global2 = 2170f;
    global3 = array<f32, 12>();
    let var_0 = Struct_1(_wgslsmith_div_i32(2147483647i, firstTrailingBit(_wgslsmith_add_i32(u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(select(arg_1.zz, vec2<f32>(463f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 12u)] + arg_1.x), 292f))), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(true, true))), vec2<bool>(all(vec4<bool>(true, true, true, false)), false)))), u_input.e & u_input.b.x, arg_1.x);
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_0.a, ~u_input.e) << (50374u % 32u), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(~0i, i32(-1i) * -67925i, _wgslsmith_div_i32(1i, -42582i)), ~abs(-2147483647i))), func_4(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.zx, arg_2) ^ ~u_input.d.zw, u_input.d.yx), _wgslsmith_mult_u32(~u_input.c.x, u_input.d.x), ~_wgslsmith_mult_vec2_u32(vec2<u32>(64803u, u_input.c.x), func_2(true, vec3<u32>(u_input.c.x, 0u, 90806u), false, Struct_2(true, 1042f))), Struct_3(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, 1i, u_input.a, -1i), vec4<i32>(var_0.c, 43510i, var_0.a, u_input.a)), select(vec4<i32>(2147483647i, var_0.a, 36090i, u_input.b.x), vec4<i32>(var_0.a, var_0.c, -64435i, -2147483647i), false)), vec4<f32>(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(19512u, 12u)])), -1000f, var_0.b.x, 1089f), 0u < (arg_3 ^ arg_2.x), ~3342u, var_0)));
    global1 = arg_3;
    return Struct_4(~countOneBits(arg_2), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-440f + -1300f))))), global0[_wgslsmith_index_u32(~(~arg_0 & 1u), 13u)], func_3(vec3<i32>(func_4(2715u, arg_2.x, vec2<u32>(arg_2.x, arg_0), Struct_3(vec4<i32>(var_1.x, -40819i, 45303i, var_1.x), vec4<f32>(arg_1.x, var_0.d, arg_1.x, 1417f), false, arg_2.x, var_0)).x, 21135i, ~1i), Struct_4(arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_2.x, 12u)] + 1491f))), vec3<u32>(35647u, arg_3, min(0u, u_input.c.x)), !func_3(vec3<i32>(2147483647i, 9038i, 0i), Struct_4(vec2<u32>(35730u, arg_3), 1000f, u_input.d.yxz, vec2<bool>(true, true)), Struct_2(true, var_0.d)).yz), Struct_2(select(true, any(vec3<bool>(false, false, true)), true), 1f)).xy);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_5 {
    var var_0 = func_1(~arg_1.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2286f))), global3[_wgslsmith_index_u32(firstTrailingBit(arg_2.x), 12u)])), arg_0.a, ~_wgslsmith_div_u32(~firstLeadingBit(arg_1.d), max(_wgslsmith_clamp_u32(1u, 4294967295u, 18858u), ~21545u)));
    var var_1 = _wgslsmith_clamp_i32(max(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -36490i, u_input.e), arg_1.a.wxw), arg_1.a.xxx) | -49615i, -1i), ~26817i, -43134i);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -243f);
    let var_3 = Struct_3(~firstLeadingBit(arg_1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.b, _wgslsmith_f_op_vec4_f32(select(arg_1.b, vec4<f32>(arg_1.e.b.x, arg_0.b, global3[_wgslsmith_index_u32(4294967295u, 12u)], var_2), vec4<bool>(arg_1.c, false, arg_0.d.x, arg_1.c)))), vec4<f32>(-1658f, _wgslsmith_f_op_f32(-arg_1.b.x), 846f, _wgslsmith_f_op_f32(-arg_1.b.x))) + vec4<f32>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~103740u, 105133u, ~0u), 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2, arg_0.b, false))), 1054f, -652f)), false, arg_2.x, Struct_1(arg_1.e.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2, global3[_wgslsmith_index_u32(u_input.c.x, 12u)]), arg_1.e.b)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(504f, 265f)) + vec2<f32>(-180f, global3[_wgslsmith_index_u32(arg_0.c.x, 12u)]))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -arg_1.a.wz, ~vec2<i32>(u_input.b.x, -6178i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_2))))));
    var var_4 = u_input.d.x;
    return Struct_5(arg_1, Struct_4(_wgslsmith_div_vec2_u32((u_input.c >> (u_input.c % vec2<u32>(32u))) ^ _wgslsmith_add_vec2_u32(var_0.c.yz, arg_0.a), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 16433u), vec2<u32>(var_0.a.x, 0u))), arg_0.b, vec3<u32>(0u, ~(~arg_0.c.x), 4294967295u), func_3(arg_1.a.wwy, func_1(abs(var_0.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(852f, 147f, global3[_wgslsmith_index_u32(arg_0.a.x, 12u)]) * vec3<f32>(-712f, var_0.b, -224f)), arg_0.a, ~4294967295u), Struct_2(arg_0.d.x, 651f)).zz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1359f, 417f, global3[_wgslsmith_index_u32(4294967295u, 12u)]) + vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 12u)], global3[_wgslsmith_index_u32(u_input.d.x, 12u)], -319f))), u_input.c, 4294967295u << (max(u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.d.x))) % 32u)), Struct_3(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 0i, -2147483647i, u_input.e), vec4<i32>(1i, -71359i, u_input.b.x, u_input.b.x))) ^ countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 84325i, u_input.e, u_input.e), vec4<i32>(u_input.e, u_input.e, 1i, -2147483647i), vec4<i32>(u_input.e, 2147483647i, 2147483647i, u_input.a))), vec4<f32>(global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.d.x), global0[_wgslsmith_index_u32(u_input.c.x, 13u)])), 12u)], -2036f, -1000f, _wgslsmith_f_op_f32(select(func_1(u_input.d.x, vec3<f32>(global3[_wgslsmith_index_u32(6434u, 12u)], global3[_wgslsmith_index_u32(u_input.c.x, 12u)], -3232f), u_input.c, u_input.c.x).b, _wgslsmith_f_op_f32(select(894f, global3[_wgslsmith_index_u32(u_input.c.x, 12u)], true)), all(vec4<bool>(false, true, true, false))))), true, ~abs(u_input.d.x), Struct_1(~(~(-1i)), vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 12u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(48561u, 12u)])), 1i, _wgslsmith_div_f32(-1162f, -782f))), countOneBits(vec3<u32>(u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(50594u, 90950u, u_input.c.x, u_input.d.x))), u_input.d.x)));
    let var_1 = !vec3<bool>(false, func_5(Struct_4(_wgslsmith_mod_vec2_u32(vec2<u32>(52566u, 1086u), var_0.b.a), -1125f, countOneBits(var_0.b.c), func_3(var_0.a.a.wwx, Struct_4(u_input.c, global3[_wgslsmith_index_u32(var_0.b.c.x, 12u)], var_0.b.c, vec2<bool>(true, var_0.a.c)), Struct_2(var_0.b.d.x, var_0.b.b)).xx), var_0.a, var_0.b.c).a.c, func_5(Struct_4(vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(811f - var_0.a.e.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, var_0.b.c.x), var_0.b.c), select(vec2<bool>(var_0.b.d.x, true), vec2<bool>(var_0.b.d.x, var_0.b.d.x), vec2<bool>(var_0.a.c, var_0.a.c))), var_0.a, vec3<u32>(3474u, select(76615u, u_input.d.x, var_0.b.d.x), var_0.b.a.x)).a.c);
    var var_2 = Struct_2(var_1.x, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(9656u, firstTrailingBit(0u))), 12u)]));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b * var_0.b.b) - -392f))))), var_0.b.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-801f, global3[_wgslsmith_index_u32(1u, 12u)])))));
    let var_4 = -10594i;
    global3 = array<f32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec3<u32>(17753u, 34791u, 0u)))), 2102f, -vec2<i32>(u_input.a, (19000i << (u_input.d.x % 32u)) & func_4(var_0.a.d, var_0.b.a.x, vec2<u32>(4294967295u, 218u), Struct_3(vec4<i32>(0i, 2147483647i, var_0.a.e.a, -1i), vec4<f32>(1000f, var_0.b.b, 151f, -334f), true, var_0.a.d, Struct_1(1i, vec2<f32>(665f, -933f), var_0.a.a.x, var_0.b.b))).x));
}

