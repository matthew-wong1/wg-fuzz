struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(1u, -1i), Struct_1(32398u, -53278i), Struct_1(4990u, 25438i), Struct_1(1u, i32(-2147483648)), Struct_1(0u, -1i), Struct_1(43653u, -50229i), Struct_1(1896u, -1i), Struct_1(1u, 2147483647i), Struct_1(0u, i32(-2147483648)), Struct_1(22965u, 32511i), Struct_1(17590u, -31784i));

var<private> global1: array<f32, 31>;

var<private> global2: Struct_1 = Struct_1(9870u, 21052i);

var<private> global3: vec4<u32> = vec4<u32>(14173u, 3384u, 0u, 12904u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = abs(reverseBits(firstTrailingBit(vec4<i32>(arg_2.x, -1i, -13577i, arg_2.x) | vec4<i32>(arg_0, -2147483647i, 53055i, arg_0)) << (min(_wgslsmith_div_vec4_u32(vec4<u32>(20483u, 53048u, u_input.a, global2.a), vec4<u32>(global2.a, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(24710u, 0u, global3.x, 4294967295u) & vec4<u32>(2410u, global3.x, 58778u, global3.x)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1224f + -1493f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), -1356f, _wgslsmith_f_op_f32(-946f - 342f), global1[_wgslsmith_index_u32(~firstTrailingBit(~18024u), 31u)]));
    var var_2 = Struct_1(global2.a, arg_0 << (select(~1u, _wgslsmith_mult_u32(0u, 15548u), select(false, true, true)) % 32u));
    var var_3 = global0[_wgslsmith_index_u32(25534u, 11u)];
    var var_4 = Struct_1(_wgslsmith_dot_vec3_u32(select(~(~global3.yww), ~vec3<u32>(0u, var_2.a, 4294967295u), vec3<bool>(true, true, true)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(global2.a, global3.x, global3.x)), abs(vec3<u32>(global3.x, var_3.a, u_input.b.x))), vec3<u32>(~1167u, _wgslsmith_sub_u32(u_input.a, var_3.a), 13129u))), -37185i);
    return Struct_1(min(var_2.a, ~1u) << ((0u >> (~_wgslsmith_mult_u32(var_3.a, 4294967295u) % 32u)) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(max(var_3.b, var_3.b), firstLeadingBit(~9137i)), ~arg_2));
}

fn func_3(arg_0: bool) -> bool {
    global0 = array<Struct_1, 11>();
    let var_0 = Struct_1(~func_2(-25784i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], 1000f, global1[_wgslsmith_index_u32(global2.a, 31u)]), vec3<f32>(-1015f, global1[_wgslsmith_index_u32(18452u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]))), firstTrailingBit(vec2<i32>(global2.b, -2147483647i))).a, u_input.c);
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(-736f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(46206u, 31u)] + 1255f), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(global3.x, 31u)]))))), global1[_wgslsmith_index_u32(~var_0.a, 31u)]), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.b.x, 31u)] + _wgslsmith_f_op_f32(trunc(-518f))))), _wgslsmith_f_op_f32(ceil(-831f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -134f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1214f, global1[_wgslsmith_index_u32(u_input.a, 31u)])))))));
    global3 = vec4<u32>(~(~34510u), _wgslsmith_div_u32(select(abs(var_0.a), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 21759u, var_0.a), vec3<u32>(var_0.a, 0u, 1u)), arg_0) << (reverseBits(1u) % 32u), ~1u), abs(_wgslsmith_sub_u32(1u, 0u)), _wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(_wgslsmith_add_u32(1u, global2.a), 1u)));
    var var_2 = Struct_1(reverseBits(_wgslsmith_sub_u32(firstLeadingBit(var_0.a), _wgslsmith_clamp_u32(var_0.a | 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, 20713u, global2.a, u_input.a), vec4<u32>(global3.x, global2.a, 53159u, var_0.a)), ~7447u))), _wgslsmith_mult_i32(1i, ~var_0.b & -global2.b) >> (0u % 32u));
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_1 = func_2(u_input.c << (_wgslsmith_add_u32(~_wgslsmith_mod_u32(arg_2.a, 1893u), ~_wgslsmith_sub_u32(global3.x, 39151u)) % 32u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(300f + 840f) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(15931u, 31u)])) * 256f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(46625u, global3.x), 31u)])) + -803f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1093f)))) * -1390f)), -_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(arg_2.b, var_0.b), ~arg_2.b), -vec2<i32>(arg_2.b, arg_0.b)));
    let var_2 = func_3(true);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) * -2496f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    global0 = array<Struct_1, 11>();
    global3 = _wgslsmith_clamp_vec4_u32(~min(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a, global3.x, u_input.a, 0u), vec4<u32>(arg_2.a, arg_3.a, global3.x, 43989u)), vec4<u32>(1u, arg_1.a, 4294967295u, 1u)), ~vec4<u32>(45658u, 37922u, ~arg_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 59306u, 0u), u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 0u >> (arg_1.a % 32u), 0u), ~vec4<u32>(arg_3.a, 4294967295u, 4294967295u, 5358u))) >> (select(~(~vec4<u32>(8713u, 43090u, global2.a, 3587u) >> (vec4<u32>(4294967295u, global2.a, arg_2.a, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_3.a, 10339u), vec2<u32>(4294967295u, 21658u)), 1u, 0u, _wgslsmith_add_u32(arg_2.a, u_input.b.x) & 1u), true) % vec4<u32>(32u));
    global1 = array<f32, 31>();
    var var_0 = func_2(_wgslsmith_add_i32(min(i32(-1i) * -7929i, -1i), select(reverseBits(-42891i), global2.b, true)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(arg_1.a, 31u)], -370f, arg_0.x), vec3<f32>(-1000f, 486f, global1[_wgslsmith_index_u32(global3.x, 31u)])) + _wgslsmith_div_vec3_f32(vec3<f32>(-605f, global1[_wgslsmith_index_u32(4294967295u, 31u)], 779f), vec3<f32>(-1917f, global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)]))))))), abs(vec2<i32>(18107i, -arg_2.b)));
    let var_1 = arg_0.x;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-714f, arg_0.x, var_1, global1[_wgslsmith_index_u32(4294967295u, 31u)])))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, -1000f, -1211f, 453f), vec4<f32>(var_1, -674f, 1132f, global1[_wgslsmith_index_u32(global3.x, 31u)]), vec4<bool>(false, true, true, true))) - vec4<f32>(arg_0.x, arg_0.x, 935f, 981f))) + vec4<f32>(var_1, _wgslsmith_f_op_f32(-1218f * _wgslsmith_f_op_f32(125f - -610f)), 695f, 1150f)), vec4<f32>(var_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(883f, arg_0.x)), -628f, any(vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), arg_0.x, 775f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global3.x, u_input.b.x), ~u_input.b), 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(38314u, 11u)], vec4<f32>(-986f, 1095f, -1000f, global1[_wgslsmith_index_u32(global3.x, 31u)]), Struct_1(global2.a, u_input.c))))), Struct_1(~0u ^ u_input.a, ~1i), func_2(u_input.c ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global2.b), vec2<i32>(global2.b, -3932i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], -1978f, global1[_wgslsmith_index_u32(0u, 31u)]) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(72816u, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(64354u, 31u)]))), vec2<i32>(38880i, global2.b)), global0[_wgslsmith_index_u32(60518u, 11u)])));
    global0 = array<Struct_1, 11>();
    let var_1 = true;
    var var_2 = _wgslsmith_div_f32(-151f, -285f);
    let var_3 = global0[_wgslsmith_index_u32(1u, 11u)];
    var_0 = vec4<f32>(277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), -864f, 466f);
    let var_4 = func_2(-51675i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(-149f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-877f)), _wgslsmith_f_op_f32(func_1(Struct_1(var_3.a, 36326i), vec4<f32>(-430f, -339f, var_0.x, global1[_wgslsmith_index_u32(27811u, 31u)]), Struct_1(0u, -17534i)))))), vec2<i32>(var_3.b << (global2.a % 32u), _wgslsmith_sub_i32(var_3.b, 2147483647i)) ^ vec2<i32>(-(var_3.b >> (u_input.a % 32u)), 0i));
    global3 = ~(~(~vec4<u32>(global3.x, countOneBits(49237u), abs(global3.x), ~var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(var_4.b, -_wgslsmith_mod_i32(global2.b, var_4.b), 21250i, _wgslsmith_dot_vec2_i32(vec2<i32>(16029i, 2147483647i), vec2<i32>(20856i, u_input.c)) | -var_3.b), vec4<i32>(32378i, var_3.b, global2.b << (var_3.a % 32u), -54375i) << (select(countOneBits(vec4<u32>(var_3.a, 4294967295u, 4294967295u, 9136u)), vec4<u32>(0u, 0u, global2.a, u_input.b.x), !var_1) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, var_0.x))))), _wgslsmith_f_op_vec2_f32(var_0.wz - _wgslsmith_f_op_vec2_f32(-var_0.wy)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(31048u, 31u)]) * _wgslsmith_f_op_f32(select(2273f, var_0.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -540f)))), vec4<i32>(-14785i, _wgslsmith_sub_i32(9078i, var_3.b | -37984i), u_input.c, _wgslsmith_mod_i32(~(i32(-1i) * -1i), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.b, global2.b, var_4.b), vec3<i32>(var_4.b, u_input.c, u_input.c)))), vec4<i32>(~(i32(-1i) * -u_input.c), -23607i, i32(-1i) * -2147483647i, -_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 41362i, var_3.b), vec3<i32>(17509i, var_3.b, var_4.b)), _wgslsmith_div_vec3_i32(vec3<i32>(global2.b, -5084i, 0i), vec3<i32>(-4233i, 1i, -2147483647i)))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(global3.zz, u_input.b.yx), 108406u, 4294967295u, global2.a), _wgslsmith_sub_vec4_u32(vec4<u32>(~1u, _wgslsmith_mod_u32(4294967295u, var_3.a), 10945u & global2.a, ~1199u), vec4<u32>(0u, abs(global3.x), 0u, _wgslsmith_dot_vec3_u32(u_input.b, global3.wzw)))));
}

