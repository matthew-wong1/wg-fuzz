struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(21464i, vec2<i32>(1i, 2147483647i), -2514f, true, vec3<bool>(false, true, false)), Struct_1(-16892i, vec2<i32>(32158i, 1i), -745f, false, vec3<bool>(true, true, true)), Struct_1(2147483647i, vec2<i32>(-29527i, 0i), -236f, true, vec3<bool>(false, true, true)));

var<private> global1: array<vec3<u32>, 13>;

var<private> global2: array<vec4<u32>, 32>;

var<private> global3: vec4<f32> = vec4<f32>(-1892f, 1145f, 879f, 344f);

var<private> global4: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_add_vec2_u32(~min(vec2<u32>(u_input.a.x, u_input.a.x ^ 4294967295u), u_input.a), vec2<u32>(u_input.a.x ^ ~reverseBits(u_input.a.x), firstTrailingBit(max(u_input.b, u_input.a.x)) >> (((u_input.a.x ^ u_input.a.x) & 1u) % 32u)));
    let var_1 = abs(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b, 1u, u_input.b, var_0.x) << (~vec4<u32>(14686u, 4294967295u, var_0.x, var_0.x) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 0u), 32u)]), min(vec4<u32>(~u_input.a.x, select(18209u, 78779u, true), _wgslsmith_sub_u32(var_0.x, u_input.b), var_0.x), vec4<u32>(4294967295u, var_0.x, 56743u, var_0.x) & ~global2[_wgslsmith_index_u32(u_input.b, 32u)])));
    let var_2 = Struct_1(_wgslsmith_sub_i32(~select(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(4305i, 43281i, 482i), vec3<i32>(-4874i, 47271i, 23700i)), true), 1i), vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -39611i), vec2<i32>(12843i, -10726i)) ^ firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-25095i, -1i, 22306i), vec3<i32>(1i, -2147483647i, 57102i))), -_wgslsmith_mod_i32(-2147483647i, -39747i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -849f))), true, vec3<bool>(true, true, true));
    global0 = array<Struct_1, 3>();
    var var_3 = -2147483647i;
    return 1000f;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = !vec3<bool>(arg_0.d, 1i > countOneBits(countOneBits(arg_0.a)), any(vec2<bool>(arg_0.e.x, any(vec3<bool>(false, arg_0.d, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(global3.x)), _wgslsmith_f_op_f32(trunc(arg_0.c)), -710f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x * 395f), _wgslsmith_f_op_f32(-arg_1))));
    global0 = array<Struct_1, 3>();
    global1 = array<vec3<u32>, 13>();
    global3 = vec4<f32>(-266f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1844f, arg_0.c) + 1723f), 152f);
    return !(!any(var_0.zz));
}

fn func_1() -> vec3<bool> {
    let var_0 = vec4<bool>(false, false, _wgslsmith_f_op_f32(trunc(183f)) > global3.x, func_2(global0[_wgslsmith_index_u32(1u, 3u)], global3.x));
    let var_1 = Struct_1(firstTrailingBit(i32(-1i) * -38030i), firstLeadingBit(~vec2<i32>(i32(-1i) * -37793i, ~98i)), global3.x, true, select(!var_0.xyy, var_0.yyw, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(global3.x, 546f))) == _wgslsmith_f_op_f32(select(-423f, 864f, true))));
    let var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(var_1.b, ~reverseBits(~vec2<i32>(-1i, 5118i))), vec2<i32>(~max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, -1i, var_1.b.x), vec3<i32>(var_1.b.x, -1i, 0i)), _wgslsmith_sub_i32(1i, var_1.a)), var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(224f + 145f) - var_1.c)), false, var_1.e);
    var var_4 = Struct_1(-2147483647i, _wgslsmith_div_vec2_i32(abs(vec2<i32>(var_3.a, 31906i) | firstTrailingBit(vec2<i32>(-11277i, 1i))), vec2<i32>(-35939i, 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c * _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_sub_i32(abs(abs(-2147483647i)), 1i << (~u_input.b % 32u)) <= reverseBits(2147483647i), vec3<bool>(!(~var_3.b.x == 41985i), var_1.d, ~u_input.a.x >= ~(~34012u)));
    return !vec3<bool>(true, !var_3.e.x, !var_0.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<i32> {
    var var_0 = arg_1.b.x;
    let var_1 = arg_1;
    global0 = array<Struct_1, 3>();
    let var_2 = !select(!vec4<bool>(arg_1.e.x, false, !arg_2.d, all(vec3<bool>(false, false, arg_2.e.x))), vec4<bool>(func_2(var_1, arg_2.c), arg_2.d, func_2(var_1, _wgslsmith_f_op_f32(sign(314f))), arg_1.e.x), false);
    let var_3 = -select(arg_3, select(vec4<i32>(arg_0, -1i, arg_1.b.x, arg_0) ^ arg_3, arg_3, all(vec3<bool>(true, true, false))), !global4[_wgslsmith_index_u32(u_input.a.x, 6u)]) ^ ~(~_wgslsmith_mult_vec4_i32(~vec4<i32>(16213i, -2830i, -1723i, -1i), -arg_3));
    return -_wgslsmith_div_vec2_i32(-countOneBits(~vec2<i32>(arg_1.a, -1i)), vec2<i32>(arg_3.x, (arg_1.b.x | var_3.x) | -arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-7031i, func_4(_wgslsmith_add_i32(_wgslsmith_sub_i32(-13102i, 45388i) >> (u_input.b % 32u), select(21523i, 1i, all(vec4<bool>(true, false, true, true)))), Struct_1(2147483647i, vec2<i32>(-1502i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1817f, global3.x))), u_input.b != 4294967295u, func_1()), global0[_wgslsmith_index_u32(0u, 3u)], firstLeadingBit(vec4<i32>(~2147483647i, _wgslsmith_add_i32(3278i, 18526i), countOneBits(47131i), -1i))), -707f, true, !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)));
    var var_1 = false;
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -197f)))), global3.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(global3.x)))) + _wgslsmith_f_op_f32(-global3.x)), global3.x, var_0.c);
    let var_3 = !all(var_0.e);
    var var_4 = ~(-(abs(83316i) ^ _wgslsmith_mult_i32(43085i, var_0.b.x)) | _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, firstTrailingBit(var_0.a)), -abs(-1i)));
    var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(min(global3.x, -646f))), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.c, global3.x)), -1061f), var_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-468f, var_2.x), _wgslsmith_f_op_f32(var_2.x - -1000f), 349f, _wgslsmith_f_op_f32(-var_0.c))))));
    var var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x + var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(select(-vec3<i32>(var_0.a, -14246i, -1i), abs(vec3<i32>(var_0.a, var_0.a, var_0.b.x)), false)), global3.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.yyy)));
}

