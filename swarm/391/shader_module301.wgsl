struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(46592u, 4294967295u, 42603u, 28056u, 13327u, 23106u);

var<private> global1: vec2<f32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = vec3<bool>(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(25977i, u_input.e.x), u_input.e.x), _wgslsmith_add_i32(min(-1i, -45661i), 2147483647i)) >= ~u_input.e.x, false, u_input.e.x <= u_input.e.x);
    let var_1 = all(var_0.xx);
    var var_2 = vec2<u32>(0u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.d), abs(global0[_wgslsmith_index_u32(u_input.c, 6u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(4294967295u, 6u)], ~abs(global0[_wgslsmith_index_u32(1u, 6u)])), 6u)]));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1428f, global1.x)), vec2<f32>(global1.x, global1.x)))))));
    var var_4 = !(u_input.e.x != 25704i);
    return ~4308u;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: vec3<u32>) -> vec2<f32> {
    global0 = array<u32, 6>();
    var var_0 = Struct_2(Struct_1(~u_input.d.x, u_input.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1036f, -205f, 890f, arg_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1637f, arg_1, -1000f, arg_1) * vec4<f32>(arg_1, -493f, -540f, global1.x))) * vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-601f - global1.x), _wgslsmith_f_op_f32(min(2220f, arg_2)), _wgslsmith_f_op_f32(global1.x - arg_1))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 1119f, 207f, arg_1), vec4<f32>(global1.x, arg_1, arg_2, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_2, arg_2, -604f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-517f, arg_1, arg_2, arg_1), vec4<f32>(-1055f, arg_1, -861f, global1.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, arg_1, global1.x), vec4<f32>(global1.x, -625f, -290f, arg_2), vec4<bool>(false, true, false, true)))))), !select(all(vec3<bool>(arg_0, arg_0, arg_0)), arg_0, any(vec2<bool>(true, true))) && true);
    let var_1 = Struct_3(var_0.a.c.x, _wgslsmith_div_vec4_i32(-_wgslsmith_mult_vec4_i32(select(vec4<i32>(-5472i, -38891i, 2147483647i, u_input.e.x), vec4<i32>(23147i, var_0.a.b, 2147483647i, u_input.e.x), vec4<bool>(false, false, arg_0, var_0.a.d)), abs(vec4<i32>(29059i, -15567i, u_input.e.x, 0i))), -firstLeadingBit(vec4<i32>(0i, 2147483647i, 1i, u_input.e.x)) | (vec4<i32>(-1i) * -vec4<i32>(u_input.e.x, -23875i, -1i, 11931i))));
    global1 = _wgslsmith_f_op_vec2_f32(trunc(var_0.a.c.xy));
    var var_2 = firstLeadingBit(arg_3);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-619f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, var_1.a)) + arg_2))));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(func_4(59327i <= u_input.e.x, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 2888f)), min(~vec3<u32>(global0[_wgslsmith_index_u32(~4513u, 6u)], func_3(), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, u_input.a.x), 6u)]), ~min(~vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 0u), u_input.a.xxz))));
    var var_0 = reverseBits(max(~vec3<i32>(-1i, 1i, 42315i), _wgslsmith_mult_vec3_i32(-arg_1.b.wwy, vec3<i32>(arg_1.b.x, arg_0, 30174i)))) ^ vec3<i32>(min(33593i, arg_0), ~2147483647i, i32(-1i) * -_wgslsmith_mod_i32(arg_0, 1089i));
    let var_1 = select(select(vec4<bool>(1u > _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(40700u, 6u)], 8353u, u_input.b.x), true, true, false | (76699u <= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25915u, 6u)], 6u)], 6u)])), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, true, false)), vec4<bool>(true, select(false, true, false), any(vec4<bool>(true, true, true, true)), true)), select(vec4<bool>(true, true, true, all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false))), !vec4<bool>(select(true, true, true), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))), false, any(vec3<bool>(true, true, true))), select(vec4<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), any(vec3<bool>(true, true, false)), true & (680f <= global1.x)), vec4<bool>(true, true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), false), -575f != _wgslsmith_f_op_f32(arg_1.a * global1.x)));
    var_0 = arg_1.b.yxz;
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - -1191f)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a), 1803f));
    return global1.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    var var_0 = Struct_3(global1.x, firstLeadingBit(_wgslsmith_div_vec4_i32(abs(vec4<i32>(2147483647i, -13142i, -50363i, -1i)), firstLeadingBit(vec4<i32>(u_input.e.x, 28153i, 19874i, u_input.e.x)))) | vec4<i32>(i32(-1i) * -14149i, ~u_input.e.x, countOneBits(-34763i), ~(-2147483647i)));
    global1 = vec2<f32>(897f, 166f);
    let var_1 = false;
    var_0 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(reverseBits(max(var_0.b.x, u_input.e.x)), Struct_3(var_0.a, vec4<i32>(20666i, 8231i, 77313i, 1i)))), -1027f)), ~(~_wgslsmith_mult_vec4_i32(var_0.b, vec4<i32>(32517i, var_0.b.x, var_0.b.x, var_0.b.x)) | countOneBits(vec4<i32>(var_0.b.x, u_input.e.x, -2147483647i, 5265i))));
    let var_2 = !(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], 1u, _wgslsmith_div_u32(select(0u, u_input.b.x, var_1), ~arg_1)) == u_input.a.x);
    return 0u;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.c.x);
    var var_1 = Struct_4(_wgslsmith_div_vec3_u32(vec3<u32>(~arg_0.a, firstTrailingBit(global0[_wgslsmith_index_u32(~1u, 6u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.c & 38u, 6u)], 6u)]), ~firstTrailingBit(vec3<u32>(arg_2.a, 16561u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)]))), arg_3, Struct_1(56821u, _wgslsmith_dot_vec3_i32(arg_3.b.zxy ^ arg_3.b.xwy, _wgslsmith_add_vec3_i32(vec3<i32>(1i, 14321i, 2147483647i), arg_3.b.yxw) >> (abs(vec3<u32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(arg_0.a, 6u)], arg_2.a)) % vec3<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.e + arg_2.c) * vec4<f32>(arg_2.c.x, arg_3.a, 352f, -845f)), arg_2.c), true, vec4<f32>(-817f, arg_3.a, 1351f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)))), select(select(!vec3<bool>(arg_0.d, arg_2.d, arg_0.d), select(!vec3<bool>(arg_2.d, true, true), vec3<bool>(arg_2.d, arg_2.d, true), !vec3<bool>(true, arg_2.d, arg_0.d)), !select(vec3<bool>(false, arg_2.d, arg_0.d), vec3<bool>(false, true, true), vec3<bool>(arg_2.d, false, true))), select(vec3<bool>(all(vec2<bool>(arg_2.d, false)), !arg_0.d, any(vec2<bool>(false, arg_2.d))), !select(vec3<bool>(arg_0.d, arg_0.d, arg_2.d), vec3<bool>(arg_0.d, true, arg_2.d), vec3<bool>(true, false, arg_0.d)), select(select(vec3<bool>(arg_2.d, arg_0.d, arg_2.d), vec3<bool>(arg_2.d, false, arg_0.d), arg_0.d), vec3<bool>(true, true, arg_0.d), vec3<bool>(true, arg_2.d, true))), arg_0.d));
    let var_2 = _wgslsmith_div_u32(~44924u, _wgslsmith_add_u32(29919u, 14745u));
    var var_3 = var_1.c;
    var var_4 = vec2<u32>(max(~u_input.a.x, (var_2 & (var_2 & var_1.a.x)) | arg_2.a), 1u);
    return StorageBuffer(~u_input.a.ywy, ~(~(vec3<i32>(-1i) * -var_1.b.b.yzw)), ~u_input.a.wwx, -39374i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_1(~func_1(vec3<bool>(true, true, true), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(12718u, 6u)], 20780u)), 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1512f, global1.x, 108f, global1.x)))), ~firstLeadingBit(-1i) > ((u_input.e.x | -8029i) << (~u_input.a.x % 32u)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-311f, _wgslsmith_f_op_f32(global1.x - global1.x), global1.x, -1803f)))), 1i, Struct_1(~u_input.c, 1i, vec4<f32>(-780f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 789f) - _wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_f_op_f32(exp2(global1.x)), global1.x), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, 1000f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, global1.x, -952f, 242f)))))), Struct_3(-109f, reverseBits(vec4<i32>(53517i, u_input.e.x, u_input.e.x, u_input.e.x) >> ((u_input.a & vec4<u32>(u_input.b.x, 70412u, 65756u, 85314u)) % vec4<u32>(32u)))));
}

