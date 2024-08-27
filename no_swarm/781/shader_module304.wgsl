struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11>;

var<private> global1: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> f32 {
    global1 = _wgslsmith_div_f32(140f, 1241f);
    let var_0 = -1488f;
    var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, abs(1u)), ~vec2<u32>(1u, 1u)), ~(~(~vec4<i32>(12650i, -2147483647i, 1i, -18414i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0))))))));
    let var_2 = var_0;
    var_1 = Struct_2(Struct_1(81249u, ~(~select(vec4<i32>(var_1.a.b.x, 81i, u_input.b, 16976i), var_1.a.b, vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) * _wgslsmith_f_op_vec3_f32(-var_1.b)));
    return _wgslsmith_f_op_f32(floor(var_0));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    var var_0 = Struct_3(~abs(countOneBits(arg_0.yzy)), !vec2<bool>(select(true, false, true), false), vec4<u32>(1u, 1u, ~1u >> ((1u >> (firstTrailingBit(4294967295u) % 32u)) % 32u), ~1u), false | !all(vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -407f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(488f, 1135f) * vec2<f32>(-427f, 526f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-367f, 451f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-826f, -752f), vec2<f32>(-2295f, -357f)))), vec2<bool>(true, false))), false)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1078f - var_0.e.x) - var_0.e.x)));
    global1 = _wgslsmith_f_op_f32(min(-807f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(func_3(u_input.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x - var_0.e.x)))));
    var_0 = Struct_3(_wgslsmith_mult_vec3_i32(var_0.a, var_0.a), vec2<bool>(true, var_0.c.x < firstLeadingBit(1u)), var_0.c, any(!(!vec3<bool>(true, var_0.d, var_0.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.e)));
    var var_1 = var_0.c.x;
    return select(var_0.c.x, var_0.c.x, select(var_0.d, var_0.d == !all(vec3<bool>(true, var_0.d, true)), true));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = vec3<bool>(false, func_2(reverseBits(arg_0.b)) == 4294967295u, !((_wgslsmith_mult_i32(arg_0.b.x, arg_0.b.x) <= 30152i) || (false | all(vec3<bool>(false, true, false)))));
    let var_1 = vec2<i32>(-19981i, u_input.b);
    let var_2 = Struct_3(vec3<i32>(reverseBits(~var_1.x), -15991i, 0i), select(select(var_0.zy, !(!vec2<bool>(var_0.x, false)), var_0.zz), select(var_0.zz, select(var_0.zy, vec2<bool>(false, var_0.x), select(var_0.xx, var_0.yy, var_0.x)), !var_0.x | true), any(vec4<bool>(true, true, var_0.x, any(var_0.yx)))), vec4<u32>(func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, arg_0.b.x, u_input.a, -2147483647i), abs(vec4<i32>(arg_0.b.x, -15747i, u_input.c, 11530i)))), 36519u, ~arg_0.a, ~(~arg_0.a)), true, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1962f - -1000f), -2480f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(349f, -310f) * vec2<f32>(-1392f, -1058f))), false)))));
    var_0 = !(!select(vec3<bool>(var_2.b.x && false, var_0.x, !var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(false, false, false), vec3<bool>(var_2.b.x, var_0.x, var_2.b.x), vec3<bool>(false, var_2.b.x, var_2.d)), vec3<bool>(false, var_0.x, false)), true));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32((min(var_2.c.zx, vec2<u32>(22684u, var_2.c.x)) | (var_2.c.yx | vec2<u32>(arg_0.a, arg_0.a))) >> (~select(vec2<u32>(arg_0.a, 0u), vec2<u32>(arg_0.a, 50925u), var_2.b) % vec2<u32>(32u)), ~min(var_2.c.zx, vec2<u32>(var_2.c.x, 10565u))), _wgslsmith_clamp_vec2_u32(~reverseBits(var_2.c.yz << (var_2.c.zz % vec2<u32>(32u))), vec2<u32>(~(~1u), func_2(_wgslsmith_mult_vec4_i32(arg_0.b, arg_0.b))), ~vec2<u32>(arg_0.a << (1u % 32u), var_2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 11>();
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(func_1(Struct_1(82494u, vec4<i32>(u_input.b, -29072i, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, u_input.c, 12200i))), func_2(vec4<i32>(-1i) * -vec4<i32>(-75487i, u_input.a, 46034i, 1i)), _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 4294967295u), 11u)], ~vec3<u32>(1u, 1u, 1u)), _wgslsmith_sub_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 10691u, 7726u, 4699u), vec4<u32>(1u, 13861u, 1u, 0u))), _wgslsmith_clamp_u32(~11654u, countOneBits(81659u), 1u))), vec4<u32>(4294967295u, reverseBits(~(~82809u)), 1u | func_1(Struct_1(39690u, vec4<i32>(u_input.c, u_input.a, u_input.c, 0i))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(30471u, 1u), min(~37531u, firstTrailingBit(1u)), _wgslsmith_sub_u32(~1u, 1u))));
    let var_1 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(firstLeadingBit(11166u), 10725u), firstLeadingBit(1u)), ~1u), firstTrailingBit(~1u), abs(1u));
    global1 = 1524f;
    global1 = -1793f;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-565f * _wgslsmith_f_op_f32(f32(-1f) * -218f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1697f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a)) * _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -355f), -1000f, any(vec3<bool>(false, true, false)))))));
    let var_3 = -8462i;
    let var_4 = var_2.x;
    var var_5 = vec4<bool>(any(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), all(select(vec2<bool>(true, true), vec2<bool>(false, any(vec2<bool>(true, false))), !select(vec2<bool>(false, false), vec2<bool>(true, false), true))), (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)), -432f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) * _wgslsmith_f_op_f32(740f + var_2.x))) | true, func_2(-vec4<i32>(var_3, var_3, var_3, 36685i)) >= 54982u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -652f, -1000f, var_2.x), vec4<f32>(var_2.x, var_2.x, 115f, var_2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(425f, -1366f, 296f, var_2.x)))))), firstLeadingBit(~vec3<u32>(~92352u, 4294967295u, func_1(Struct_1(var_1.x, vec4<i32>(var_3, var_3, 40765i, 10239i))))), _wgslsmith_f_op_f32(ceil(var_2.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3, _wgslsmith_clamp_i32(2162i, 1i, -1106i), var_3 >> (var_1.x % 32u)), -vec3<i32>(0i, 2046i, var_3)), _wgslsmith_add_i32(-6683i, _wgslsmith_add_i32(i32(-1i) * -1i, countOneBits(u_input.b))), ~(-2147483647i), var_3), vec4<i32>(~_wgslsmith_sub_i32(-var_3, u_input.b), -19291i, -(var_3 ^ abs(u_input.c)), var_3));
}

