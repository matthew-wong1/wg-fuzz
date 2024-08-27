struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(145f, 888f);

var<private> global1: array<f32, 10>;

var<private> global2: f32;

var<private> global3: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(global0.x, global1[_wgslsmith_index_u32(arg_0.a.a.x, 10u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(1047f, 451f) + vec2<f32>(523f, 1201f)), arg_0.a.b && arg_0.a.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) + vec2<f32>(1036f, 1200f)))) - vec2<f32>(_wgslsmith_f_op_f32(sign(-223f)), 1816f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1024f, global1[_wgslsmith_index_u32(arg_0.a.a.x, 10u)]), vec2<f32>(global0.x, -945f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-193f, 684f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(1130f, 3066f)))));
    var var_1 = arg_0.a.b;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1443f));
    let var_3 = 894f;
    let var_4 = !select(vec4<bool>(arg_0.a.b, true, true, true), !vec4<bool>(arg_0.a.b, false || arg_0.a.b, true, !arg_0.a.b), true);
    return 78243u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>) -> i32 {
    let var_0 = Struct_1((_wgslsmith_mod_vec4_u32(abs(vec4<u32>(25901u, u_input.a.x, 21027u, u_input.a.x)), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) & (select(vec4<u32>(25407u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(76028u, 75903u, 1u, 454u), true) | (vec4<u32>(u_input.a.x, 4294967295u, 72353u, 40557u) & vec4<u32>(3513u, u_input.a.x, 0u, u_input.a.x)))) ^ abs(abs(~vec4<u32>(u_input.a.x, u_input.a.x, 46239u, 1u))), true);
    let var_1 = var_0.b;
    global1 = array<f32, 10>();
    var var_2 = Struct_2(vec4<u32>(_wgslsmith_add_u32(abs(u_input.a.x), 0u), 0u, 38299u, func_3(Struct_4(var_0))), i32(-1i) * -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, u_input.b, arg_1.x), vec4<i32>(arg_0.x, u_input.b, arg_1.x, arg_0.x)), _wgslsmith_sub_i32(u_input.b, -23520i)), 1i, !any(vec3<bool>(all(vec4<bool>(var_0.b, var_1, false, true)), true, true)));
    var var_3 = !var_0.b;
    return arg_0.x;
}

fn func_1(arg_0: u32) -> vec2<u32> {
    var var_0 = global0.x;
    let var_1 = vec4<i32>(_wgslsmith_div_i32(~(-21431i), -_wgslsmith_add_i32(u_input.b, func_2(vec2<i32>(u_input.b, u_input.b), vec3<i32>(u_input.b, -9375i, -2147483647i)))), 7555i, u_input.b, -20218i);
    var var_2 = select(vec3<bool>(!(true | (arg_0 > 3834u)), select(true, all(vec2<bool>(true, true)), all(vec2<bool>(true, true))), false), vec3<bool>(any(vec2<bool>(false, all(vec2<bool>(true, true)))), false, all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))), vec3<bool>(true, true, true));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 10u)] + global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1502f)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, 296f)))))) - _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 10u)]))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, -1098f), vec2<f32>(2546f, global0.x)))), vec2<f32>(global0.x, 1434f), !select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, true), var_2.x)))));
    var var_3 = ~vec3<i32>(_wgslsmith_mod_i32(-(var_1.x ^ var_1.x), _wgslsmith_clamp_i32(18223i >> (u_input.a.x % 32u), abs(var_1.x), abs(2147483647i))), -countOneBits(-39977i), var_1.x);
    return vec2<u32>(~31714u, 2006u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 10>();
    var var_0 = _wgslsmith_sub_vec2_u32(select(u_input.a | reverseBits(vec2<u32>(4294967295u, u_input.a.x)), func_1(8233u), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))) | ~(~vec2<u32>(4294967295u, u_input.a.x)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a.x) ^ (u_input.a | firstLeadingBit(vec2<u32>(u_input.a.x, u_input.a.x))), min(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 53224u), vec2<u32>(u_input.a.x, 40345u)) | vec2<u32>(u_input.a.x, 4294967295u), u_input.a)));
    global1 = array<f32, 10>();
    let var_1 = vec2<f32>(global1[_wgslsmith_index_u32(abs(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 49164u, u_input.a.x), vec4<u32>(var_0.x, 44158u, var_0.x, 1713u)))), 10u)], global1[_wgslsmith_index_u32(21991u, 10u)]);
    var_0 = ~(countOneBits(countOneBits(select(u_input.a, u_input.a, true))) | u_input.a);
    var var_2 = Struct_1(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(~0u, var_0.x, firstTrailingBit(var_0.x), firstLeadingBit(var_0.x))), _wgslsmith_clamp_vec4_u32(min(~vec4<u32>(var_0.x, var_0.x, 31857u, u_input.a.x), ~vec4<u32>(41998u, 0u, 15974u, 80501u)), vec4<u32>(_wgslsmith_clamp_u32(8394u, 61857u, u_input.a.x), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(u_input.a.x, 4294967295u, 1u)), _wgslsmith_sub_u32(4294967295u, u_input.a.x)), ~min(vec4<u32>(var_0.x, 21833u, 4294967295u, var_0.x), vec4<u32>(4294967295u, u_input.a.x, 17205u, 0u)))), (false || any(vec2<bool>(true, true))) | true);
    var var_3 = 250f;
    global3 = func_2(vec2<i32>(17220i, -u_input.b), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(~(~vec3<i32>(u_input.b, -2147483647i, u_input.b)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b, -1i), vec3<i32>(-2147483647i, -1i, u_input.b)), ~vec3<i32>(u_input.b, u_input.b, 1i))), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -2147483647i, -2147483647i), vec3<i32>(-24259i, u_input.b, u_input.b)) & vec3<i32>(-2147483647i, -32863i, u_input.b)), ~reverseBits(vec3<i32>(-42384i, -1i, 2147483647i))));
    var var_4 = Struct_3(firstTrailingBit(var_2.a.xyz), select(!select(!vec4<bool>(var_2.b, var_2.b, var_2.b, false), select(vec4<bool>(var_2.b, var_2.b, true, false), vec4<bool>(true, var_2.b, var_2.b, true), vec4<bool>(var_2.b, var_2.b, var_2.b, true)), select(vec4<bool>(true, true, var_2.b, false), vec4<bool>(false, var_2.b, var_2.b, true), vec4<bool>(var_2.b, var_2.b, true, var_2.b))), !select(vec4<bool>(var_2.b, false, false, false), !vec4<bool>(var_2.b, var_2.b, true, var_2.b), !vec4<bool>(true, false, true, var_2.b)), select(!(!vec4<bool>(var_2.b, true, false, true)), select(select(vec4<bool>(var_2.b, var_2.b, true, false), vec4<bool>(true, var_2.b, false, var_2.b), var_2.b), !vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b), true), any(!vec2<bool>(var_2.b, false)))), vec3<bool>(all(!vec2<bool>(var_2.b, var_2.b)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -152f)) < var_1.x), select(vec4<bool>(any(!vec3<bool>(false, false, var_2.b)), true | any(vec3<bool>(false, true, var_2.b)), false, any(select(vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b), vec4<bool>(false, false, false, var_2.b), vec4<bool>(var_2.b, true, false, var_2.b)))), select(select(!vec4<bool>(var_2.b, true, var_2.b, true), vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b), select(vec4<bool>(false, var_2.b, var_2.b, false), vec4<bool>(true, var_2.b, var_2.b, var_2.b), vec4<bool>(true, var_2.b, var_2.b, var_2.b))), !select(vec4<bool>(true, var_2.b, var_2.b, var_2.b), vec4<bool>(var_2.b, var_2.b, true, var_2.b), var_2.b), var_2.b), true), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) | _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 57235i, -42972i, 1i), vec4<i32>(u_input.b, u_input.b, u_input.b, -1i)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(0i, -2147483647i, u_input.b, 0i), vec4<i32>(0i, 0i, u_input.b, u_input.b)), -vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b))) >> (var_0.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 10u)]));
}

