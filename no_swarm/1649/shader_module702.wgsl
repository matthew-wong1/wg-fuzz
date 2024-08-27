struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(0u, 26538u, 1u, 18918u), vec4<u32>(103857u, 1u, 1u, 0u), vec4<u32>(849u, 4294967295u, 0u, 31724u), vec4<u32>(0u, 148608u, 51007u, 11192u), vec4<u32>(34957u, 1u, 13348u, 23753u), vec4<u32>(25116u, 4294967295u, 34227u, 1u), vec4<u32>(1u, 23484u, 49404u, 0u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(71430u, 1u, 4294967295u, 8952u), vec4<u32>(4294967295u, 84333u, 897u, 0u), vec4<u32>(119868u, 0u, 130265u, 44u), vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<u32>(0u, 4294967295u, 24604u, 10989u), vec4<u32>(4294967295u, 66872u, 43760u, 4294967295u), vec4<u32>(1u, 0u, 44575u, 20750u), vec4<u32>(1u, 1u, 1u, 29894u), vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<u32>(102566u, 1u, 1u, 23592u), vec4<u32>(19411u, 58333u, 1270u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 3328u), vec4<u32>(33993u, 1u, 85704u, 40440u), vec4<u32>(21148u, 4294967295u, 81299u, 107183u), vec4<u32>(39028u, 0u, 70029u, 31803u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 31548u, 19036u));

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<f32>(1282f, -724f, -814f, -432f), 4294967295u), Struct_1(vec4<f32>(1106f, 1569f, -110f, -835f), 1u), Struct_1(vec4<f32>(1911f, 521f, -627f, 653f), 57855u), Struct_1(vec4<f32>(284f, -1458f, -988f, 1144f), 0u), Struct_1(vec4<f32>(-1008f, 229f, 152f, -1259f), 41933u), Struct_1(vec4<f32>(354f, -1129f, -887f, 1687f), 96326u), Struct_1(vec4<f32>(-1000f, 700f, 654f, 1307f), 71660u), Struct_1(vec4<f32>(1452f, 965f, -584f, 1071f), 4294967295u), Struct_1(vec4<f32>(1071f, 2228f, -124f, -603f), 2501u), Struct_1(vec4<f32>(-1042f, 889f, -1415f, 597f), 96712u), Struct_1(vec4<f32>(-233f, 676f, 2037f, 1074f), 0u), Struct_1(vec4<f32>(-2872f, -695f, 1131f, -407f), 19263u), Struct_1(vec4<f32>(-254f, -404f, -173f, 356f), 0u), Struct_1(vec4<f32>(-160f, -276f, -1000f, -630f), 0u), Struct_1(vec4<f32>(1179f, -986f, 774f, -1235f), 0u), Struct_1(vec4<f32>(-490f, -1000f, 111f, 620f), 4294967295u), Struct_1(vec4<f32>(830f, 215f, 507f, -658f), 67011u), Struct_1(vec4<f32>(-990f, -1058f, -1093f, 342f), 4294967295u), Struct_1(vec4<f32>(-610f, 549f, 1145f, -471f), 29526u), Struct_1(vec4<f32>(-790f, 1233f, -406f, 1825f), 4294967295u), Struct_1(vec4<f32>(-615f, -1351f, 699f, -538f), 48267u), Struct_1(vec4<f32>(1931f, 163f, -1229f, -565f), 7612u), Struct_1(vec4<f32>(-978f, -1096f, -616f, 632f), 24388u), Struct_1(vec4<f32>(762f, -806f, 1411f, 427f), 4294967295u), Struct_1(vec4<f32>(1277f, -1684f, -1134f, 799f), 3370u), Struct_1(vec4<f32>(1665f, -920f, 423f, 596f), 57551u), Struct_1(vec4<f32>(265f, 972f, -675f, -466f), 4294967295u), Struct_1(vec4<f32>(2272f, -995f, 360f, 984f), 0u), Struct_1(vec4<f32>(-105f, 514f, -138f, 879f), 1u), Struct_1(vec4<f32>(-1000f, -2511f, -1080f, -319f), 1u), Struct_1(vec4<f32>(1893f, -747f, -1983f, -1156f), 0u), Struct_1(vec4<f32>(-600f, -1174f, 2259f, -878f), 1u));

var<private> global3: array<bool, 11> = array<bool, 11>(true, false, false, false, true, false, false, false, false, true, false);

var<private> global4: i32 = 3342i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = vec3<i32>(u_input.b, u_input.b, ~(-2147483647i));
    global0 = array<vec4<u32>, 26>();
    global0 = array<vec4<u32>, 26>();
    global4 = -1i;
    let var_1 = !(!global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, u_input.c), select(global0[_wgslsmith_index_u32(arg_0.b, 26u)], vec4<u32>(4294967295u, 0u, arg_0.b, arg_0.b), global3[_wgslsmith_index_u32(u_input.a.x, 11u)])), 11u)]) && true;
    return abs(-_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b) | vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, u_input.b)), var_0.x));
}

fn func_3(arg_0: vec3<bool>) -> vec4<f32> {
    global0 = array<vec4<u32>, 26>();
    var var_0 = vec2<bool>(all(arg_0), !(!all(arg_0)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(586f)), 1f, _wgslsmith_f_op_f32(min(-468f, 596f)), -613f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1127f, 110f, -2264f, 103f) - vec4<f32>(288f, -1000f, -285f, 948f)), vec4<f32>(893f, 1164f, 1129f, -1316f)))), _wgslsmith_sub_u32(~u_input.c, ~36261u));
    global4 = func_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, var_1.b), _wgslsmith_dot_vec2_u32(select(u_input.a.zy, vec2<u32>(4294967295u, 59436u), arg_0.yx) & ~vec2<u32>(4294967295u, var_1.b), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(55239u, u_input.a.x), vec2<u32>(0u, 17770u)), 1u)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.b, 0u), ~vec3<u32>(var_1.b, var_1.b, 1u)))), 32u)]);
    global4 = u_input.b ^ min(max(countOneBits(_wgslsmith_mult_i32(u_input.b, u_input.b)), 2147483647i), _wgslsmith_clamp_i32(u_input.b, u_input.b, _wgslsmith_div_i32(u_input.b & u_input.b, 73417i)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(var_1.a, var_1.a, vec4<bool>(true, var_0.x, true, true))), vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 1000f), any(vec4<bool>(true, false, arg_0.x, true)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(var_1.a)), _wgslsmith_f_op_vec4_f32(var_1.a + var_1.a), arg_0.x | arg_0.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.x, -1996f, var_1.a.x, var_1.a.x)))))));
}

fn func_1() -> i32 {
    global0 = array<vec4<u32>, 26>();
    global4 = max(-31303i, _wgslsmith_sub_i32(-1i, -2147483647i));
    var var_0 = _wgslsmith_div_f32(643f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(161f, -220f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-224f, 375f)))), _wgslsmith_f_op_f32(-397f + -1814f), u_input.b <= (i32(-1i) * -26959i))));
    var var_1 = vec4<i32>(~u_input.b, ~2147483647i, -1i, -func_2(global2[_wgslsmith_index_u32(abs(1u), 32u)]) >> (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(46514u, 26u)])), 11u)], global3[_wgslsmith_index_u32(u_input.c, 11u)] && (u_input.a.x == u_input.a.x)))), 0u);
    return _wgslsmith_add_i32(var_1.x, -56464i);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, arg_2.b), 24u)];
    global3 = array<bool, 11>();
    global3 = array<bool, 11>();
    global3 = array<bool, 11>();
    let var_1 = !vec4<bool>(any(select(select(vec4<bool>(false, global3[_wgslsmith_index_u32(arg_2.b, 11u)], true, false), vec4<bool>(false, false, true, arg_1), false), vec4<bool>(arg_0.x, arg_0.x, global3[_wgslsmith_index_u32(u_input.a.x, 11u)], true), vec4<bool>(true, true, true, true))), true, true, global3[_wgslsmith_index_u32(arg_2.b, 11u)]);
    return _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(arg_2.b, 26u)], vec4<u32>(firstLeadingBit(countOneBits(abs(arg_2.b))), _wgslsmith_mult_u32(~_wgslsmith_mod_u32(var_0.b, 15043u), 54671u), abs(countOneBits(u_input.a.x >> (arg_2.b % 32u))), ~(_wgslsmith_div_u32(1u, u_input.a.x) << (47556u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~(u_input.b << (u_input.c % 32u));
    global3 = array<bool, 11>();
    global4 = u_input.b;
    global4 = i32(-1i) * -1i;
    var var_0 = global2[_wgslsmith_index_u32(func_4(!vec3<bool>(all(vec2<bool>(global3[_wgslsmith_index_u32(1u, 11u)], true)), false, !global3[_wgslsmith_index_u32(65171u, 11u)] || any(vec2<bool>(true, true))), -2147483647i > func_1(), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), reverseBits(62313u))), 32u)];
    let var_1 = any(vec4<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(28006u, 11u)], false, global3[_wgslsmith_index_u32(25815u, 11u)], true)), global3[_wgslsmith_index_u32(27270u, 11u)], all(vec4<bool>(global3[_wgslsmith_index_u32(0u, 11u)], global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(23783u, 11u)], true)), true)) != global3[_wgslsmith_index_u32(~(~u_input.c), 11u)];
    global2 = array<Struct_1, 32>();
    var var_2 = !(!vec3<bool>(false, true, var_1 != (u_input.b > u_input.b)));
    global3 = array<bool, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 2232f)))) - vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), var_0.a.x)), -174f)), firstLeadingBit(var_0.b), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~80523u, 0u), ~(~var_0.b)), u_input.a.yx ^ u_input.a.zw), abs(u_input.a), abs(vec2<i32>(u_input.b, 1i)));
}

