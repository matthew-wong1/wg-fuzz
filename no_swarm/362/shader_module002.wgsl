struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(17309u, 1u, 22281u), vec3<u32>(12583u, 372u, 4294967295u), vec3<u32>(0u, 43225u, 19381u), vec3<u32>(39918u, 0u, 1u), vec3<u32>(0u, 89213u, 41592u), vec3<u32>(14825u, 95374u, 14674u), vec3<u32>(4294967295u, 1u, 26140u), vec3<u32>(28939u, 36757u, 4294967295u), vec3<u32>(4294967295u, 1u, 16675u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 13104u, 0u), vec3<u32>(43922u, 1u, 56741u), vec3<u32>(1u, 7443u, 1u), vec3<u32>(60776u, 4294967295u, 6196u), vec3<u32>(1u, 51171u, 12973u), vec3<u32>(4294967295u, 26607u, 14319u), vec3<u32>(27153u, 6034u, 49608u), vec3<u32>(1u, 86267u, 0u), vec3<u32>(26327u, 4294967295u, 3501u), vec3<u32>(0u, 46655u, 15956u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 1u, 129u), vec3<u32>(1u, 977u, 57979u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(14424u, 0u, 77349u));

var<private> global1: array<u32, 22> = array<u32, 22>(18436u, 1u, 21172u, 0u, 12612u, 8920u, 66366u, 0u, 29910u, 4294967295u, 51998u, 11729u, 0u, 33931u, 9599u, 73792u, 0u, 4294967295u, 0u, 4294967295u, 18550u, 44692u);

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global3: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(2147483647i, 1i), vec2<i32>(1i, -27460i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-12943i, 56810i), vec2<i32>(-1i, -73626i), vec2<i32>(2147483647i, 21199i), vec2<i32>(-1i, -8533i), vec2<i32>(2147483647i, 25488i), vec2<i32>(0i, -31225i), vec2<i32>(64169i, 12684i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-26529i, -24687i), vec2<i32>(14994i, -1i), vec2<i32>(1i, 28086i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(1i, 1i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1i, 0i), vec2<i32>(-26118i, 29842i), vec2<i32>(-26213i, -1i));

var<private> global4: array<bool, 23>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> u32 {
    global3 = array<vec2<i32>, 24>();
    let var_0 = select(arg_2.yz, !global2.c, select(arg_0.b, arg_0.b, !any(global2.a) || false));
    global1 = array<u32, 22>();
    let var_1 = arg_0;
    var var_2 = select(!(!global2.b), !vec2<bool>(global2.c.x, !global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 0u), 23u)]), vec2<bool>(!any(var_0), max(_wgslsmith_sub_i32(arg_3, arg_3), -arg_3) != countOneBits(-2147483647i)));
    return _wgslsmith_dot_vec2_u32(~(~(countOneBits(vec2<u32>(0u, 0u)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(46574u, u_input.a), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)))), max(~vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_clamp_u32(abs(27330u), 0u ^ u_input.a, ~21778u), ~(~4294967295u))));
}

fn func_2() -> vec4<f32> {
    global0 = array<vec3<u32>, 25>();
    global4 = array<bool, 23>();
    var var_0 = select(select(all(vec2<bool>(all(vec4<bool>(false, true, false, true)), true)), all(select(!vec4<bool>(global4[_wgslsmith_index_u32(45128u, 23u)], global2.a.x, global4[_wgslsmith_index_u32(0u, 23u)], true), !vec4<bool>(false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 22u)], 22u)], 23u)], global4[_wgslsmith_index_u32(4294967295u, 23u)], global2.a.x), !vec4<bool>(global2.c.x, global4[_wgslsmith_index_u32(11747u, 23u)], true, global4[_wgslsmith_index_u32(u_input.a, 23u)]))), global4[_wgslsmith_index_u32(u_input.a, 23u)]), true | global2.b.x, (~func_3(Struct_1(global2.a, vec2<bool>(false, true), vec2<bool>(global2.c.x, global4[_wgslsmith_index_u32(u_input.a, 23u)])), false, vec3<bool>(true, false, true), 5423i) == ~max(u_input.a, 11955u)) || all(vec4<bool>(global4[_wgslsmith_index_u32(1u, 23u)] || global2.c.x, true, all(global2.a.xz), true)));
    let var_1 = Struct_1(!(!vec3<bool>(!global4[_wgslsmith_index_u32(u_input.a, 23u)], any(vec4<bool>(global4[_wgslsmith_index_u32(41u, 23u)], global4[_wgslsmith_index_u32(37085u, 23u)], false, global4[_wgslsmith_index_u32(0u, 23u)])), select(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 23u)], true, false))), vec2<bool>(select(!global2.c.x, any(select(vec3<bool>(true, true, false), vec3<bool>(global4[_wgslsmith_index_u32(1u, 23u)], true, false), global4[_wgslsmith_index_u32(u_input.a, 23u)])), !all(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 23u)], false, true))), global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(42296u), 22u)], 23u)]), !select(vec2<bool>(all(vec4<bool>(false, false, global2.a.x, true)), select(false, global4[_wgslsmith_index_u32(66056u, 23u)], global2.b.x)), global2.b, all(global2.a.zz)));
    global3 = array<vec2<i32>, 24>();
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-394f, 199f, -1347f, -863f) + vec4<f32>(-945f, -2354f, -870f, 275f)), vec4<f32>(1169f, -247f, 821f, 605f)))))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_2());
    global1 = array<u32, 22>();
    var var_1 = select(!global2.c, !(!vec2<bool>(any(global2.a), !global2.a.x)), !global2.b);
    return Struct_1(select(global2.a, vec3<bool>(select(true, any(vec3<bool>(true, false, true)), var_1.x && global2.a.x), any(!vec3<bool>(true, false, global4[_wgslsmith_index_u32(u_input.a, 23u)])), all(vec4<bool>(global2.a.x, true, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 22u)], 23u)], true))), select(global2.a, global2.a, global4[_wgslsmith_index_u32(28907u, 23u)])), global2.b, global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(-_wgslsmith_div_vec2_i32(vec2<i32>(1i, 35662i), global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 24u)])));
    let var_1 = func_1();
    var var_2 = var_1;
    let var_3 = 27765i;
    let var_4 = countOneBits(_wgslsmith_mod_u32(max(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(25857u, u_input.a), 4294967295u), 22u)], _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(13575u, 22u)]), vec2<u32>(u_input.a, 26439u)), u_input.a)), 4294967295u));
    var var_5 = -2147483647i & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_3, var_3, var_0.x), _wgslsmith_sub_vec3_i32((vec3<i32>(var_0.x, var_3, -7220i) << (vec3<u32>(8463u, 0u, 4294967295u) % vec3<u32>(32u))) & _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, -24806i, 30233i), vec3<i32>(var_0.x, -55415i, var_3)), abs(-vec3<i32>(var_3, -1i, var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(162f - 391f) - _wgslsmith_f_op_f32(-222f * 330f)), 828f), 304f, 1155f, -577f), -2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1628f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-279f)) * _wgslsmith_f_op_f32(abs(-1468f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1647f) * _wgslsmith_f_op_f32(-1032f - 1585f)))), 21084u >> (_wgslsmith_mod_u32(var_4, u_input.a) % 32u));
}

