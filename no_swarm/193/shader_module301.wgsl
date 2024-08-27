struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec2<f32>(-200f, -228f), vec4<u32>(4294967295u, 10141u, 30906u, 56930u), 1u, 0i, -25512i), vec3<bool>(false, true, true), Struct_1(vec2<f32>(549f, 1000f), vec4<u32>(0u, 4294967295u, 39788u, 29504u), 22495u, 2147483647i, 1i), vec3<f32>(-665f, 1311f, 206f)), Struct_2(Struct_1(vec2<f32>(550f, -1063f), vec4<u32>(1u, 0u, 4294967295u, 4294967295u), 7542u, 90927i, -2227i), vec3<bool>(true, true, false), Struct_1(vec2<f32>(-359f, 393f), vec4<u32>(4294967295u, 3331u, 1u, 1u), 75466u, 51217i, 0i), vec3<f32>(227f, 201f, 1111f)), Struct_2(Struct_1(vec2<f32>(-951f, 138f), vec4<u32>(25164u, 9881u, 4294967295u, 26989u), 1u, -35351i, 6512i), vec3<bool>(false, true, false), Struct_1(vec2<f32>(-1304f, -631f), vec4<u32>(4294967295u, 3406u, 4294967295u, 0u), 1u, -54194i, -1i), vec3<f32>(-291f, -1235f, 1000f)), Struct_2(Struct_1(vec2<f32>(-1016f, -755f), vec4<u32>(71477u, 22447u, 18746u, 49459u), 140043u, 2147483647i, i32(-2147483648)), vec3<bool>(false, true, true), Struct_1(vec2<f32>(-152f, 1223f), vec4<u32>(84010u, 47129u, 10814u, 1u), 57680u, -19181i, i32(-2147483648)), vec3<f32>(1103f, -656f, -268f)), Struct_2(Struct_1(vec2<f32>(-188f, -556f), vec4<u32>(8971u, 37782u, 24343u, 44803u), 381u, i32(-2147483648), -7348i), vec3<bool>(false, false, true), Struct_1(vec2<f32>(324f, 1272f), vec4<u32>(23672u, 24669u, 20470u, 123605u), 34916u, -1i, 0i), vec3<f32>(-354f, 1878f, 1081f)), Struct_2(Struct_1(vec2<f32>(-1340f, 630f), vec4<u32>(1u, 4294967295u, 4294967295u, 22562u), 23962u, -28282i, 1i), vec3<bool>(true, false, true), Struct_1(vec2<f32>(1569f, -296f), vec4<u32>(30296u, 0u, 0u, 1u), 75394u, 0i, 14220i), vec3<f32>(-1603f, -428f, -976f)), Struct_2(Struct_1(vec2<f32>(262f, -207f), vec4<u32>(4294967295u, 0u, 12321u, 0u), 4294967295u, -1i, -56519i), vec3<bool>(false, false, true), Struct_1(vec2<f32>(1762f, -113f), vec4<u32>(4294967295u, 30541u, 35556u, 20512u), 4294967295u, 1i, 1i), vec3<f32>(761f, 145f, 580f)), Struct_2(Struct_1(vec2<f32>(2751f, -1072f), vec4<u32>(34808u, 1u, 0u, 84404u), 14944u, 0i, 38839i), vec3<bool>(false, true, false), Struct_1(vec2<f32>(1040f, 1587f), vec4<u32>(79340u, 4294967295u, 24927u, 1u), 5121u, i32(-2147483648), -36927i), vec3<f32>(921f, -649f, 748f)), Struct_2(Struct_1(vec2<f32>(-701f, 547f), vec4<u32>(4294967295u, 4294967295u, 0u, 29073u), 4294967295u, i32(-2147483648), -33511i), vec3<bool>(true, false, false), Struct_1(vec2<f32>(373f, -1000f), vec4<u32>(70674u, 4294967295u, 37014u, 1u), 1u, -10702i, i32(-2147483648)), vec3<f32>(1208f, -390f, 600f)), Struct_2(Struct_1(vec2<f32>(-1226f, 3076f), vec4<u32>(9866u, 24285u, 4294967295u, 0u), 27921u, 1986i, 6483i), vec3<bool>(false, false, true), Struct_1(vec2<f32>(-149f, -1091f), vec4<u32>(0u, 1u, 0u, 36067u), 1u, -67810i, -3704i), vec3<f32>(-1265f, -1568f, 152f)), Struct_2(Struct_1(vec2<f32>(-658f, 199f), vec4<u32>(0u, 1u, 3775u, 1u), 17309u, i32(-2147483648), i32(-2147483648)), vec3<bool>(true, true, false), Struct_1(vec2<f32>(832f, -277f), vec4<u32>(6793u, 0u, 59411u, 1u), 4294967295u, i32(-2147483648), 0i), vec3<f32>(-1439f, -1270f, -683f)), Struct_2(Struct_1(vec2<f32>(919f, 654f), vec4<u32>(0u, 4294967295u, 1u, 0u), 1u, 0i, -4981i), vec3<bool>(true, false, false), Struct_1(vec2<f32>(-1520f, 2017f), vec4<u32>(104475u, 0u, 68910u, 84702u), 0u, -13128i, -22124i), vec3<f32>(2157f, 1686f, -972f)), Struct_2(Struct_1(vec2<f32>(324f, 407f), vec4<u32>(0u, 0u, 59112u, 0u), 92194u, 2694i, -34345i), vec3<bool>(true, false, false), Struct_1(vec2<f32>(-1455f, -591f), vec4<u32>(1u, 47278u, 9472u, 4294967295u), 4294967295u, 0i, 12289i), vec3<f32>(178f, -398f, -1632f)));

var<private> global2: array<f32, 32>;

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = vec4<bool>(all(vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true, true)), true != !(_wgslsmith_f_op_f32(-global4.a.x) == 667f), any(vec2<bool>(true, true)) != true, false);
    global4 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.a * vec2<f32>(_wgslsmith_f_op_f32(-1810f - -1613f), _wgslsmith_f_op_f32(ceil(arg_0.a.x)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global4.a * arg_0.a)))), arg_0.b, 1u, ~global3.d, ~_wgslsmith_add_i32(1i, i32(-1i) * -16058i));
    global3 = arg_0;
    var var_2 = ~global3.b.yxy;
    return _wgslsmith_f_op_f32(-944f * global4.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(-1792f, _wgslsmith_f_op_f32(func_2(arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -1579f), 1071f, _wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_0.a.x))))));
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.xy * vec2<f32>(1000f, -813f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.x, 600f))))), arg_1.a), ~max(~global3.b, reverseBits(max(vec4<u32>(0u, arg_1.b.x, global4.b.x, arg_0.c), global3.b))), ~countOneBits(~56847u), min(_wgslsmith_mult_i32(-(34038i & global0[_wgslsmith_index_u32(5916u, 31u)]), arg_0.d), -_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-1i, global3.e, 0i)), ~vec3<i32>(17757i, global4.e, global4.e))), global3.e);
    var var_2 = Struct_1(arg_1.a, _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(arg_1.b.x, global4.b.x, 149984u, global3.c) ^ vec4<u32>(global3.c, 4294967295u, global3.b.x, 98592u)), ~_wgslsmith_add_vec4_u32(~global3.b, ~arg_0.b), vec4<u32>(global4.b.x, global4.b.x, firstTrailingBit(select(10092u, 1u, false)), ~(1u << (1u % 32u)))), arg_0.c, global4.e, abs(_wgslsmith_mult_i32(1i, ~var_1.e)) >> (_wgslsmith_add_u32(6808u, firstLeadingBit(~20912u)) % 32u));
    var_2 = arg_0;
    var var_3 = (4294967295u ^ _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, ~arg_1.b.x), 1u)) ^ ~(52997u ^ var_1.b.x);
    return 7717u << (_wgslsmith_div_u32(14741u, ~reverseBits(_wgslsmith_div_u32(16766u, arg_0.b.x))) % 32u);
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = select(!(any(arg_0.b.yx) & true), !arg_0.b.x, arg_0.c.a.x >= _wgslsmith_f_op_f32(arg_0.a.a.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(35204u, 32u)] - 297f), -222f))));
    global0 = array<i32, 31>();
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_0.d.xy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(global4.c, 32u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 32u)])))));
    let var_2 = -1i;
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(811f, -1141f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-817f, -1020f) - global4.a) + vec2<f32>(1064f, global2[_wgslsmith_index_u32(arg_0.c.b.x, 32u)]))), vec2<f32>(813f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1554f + global4.a.x))))))));
    return reverseBits(_wgslsmith_dot_vec3_i32(select(-vec3<i32>(2147483647i, 101078i, var_2), ~vec3<i32>(0i, -21981i, u_input.a), arg_0.b), (vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(31429u, 31u)], global4.e) ^ vec3<i32>(2147483647i, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 31u)])) | (vec3<i32>(68438i, global3.e, global0[_wgslsmith_index_u32(arg_0.a.c, 31u)]) ^ vec3<i32>(global4.e, -2147483647i, -25169i))) >> (global3.c % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, global4.a.x))), vec2<f32>(_wgslsmith_div_f32(global4.a.x, 177f), _wgslsmith_f_op_f32(abs(1351f)))))), ~(~vec4<u32>(global4.b.x | global3.c, func_1(Struct_1(vec2<f32>(-1054f, 853f), vec4<u32>(4294967295u, 0u, 81726u, global3.c), global4.c, global3.d, global3.d), Struct_1(vec2<f32>(1657f, 726f), global4.b, global4.c, 0i, global3.d)), global4.b.x, reverseBits(global3.c))), ~(global4.b.x | global3.b.x), firstLeadingBit(-(~func_3(Struct_2(Struct_1(global4.a, global3.b, global4.b.x, global4.d, u_input.a), vec3<bool>(false, false, false), Struct_1(global4.a, vec4<u32>(87520u, 12354u, global3.b.x, global3.c), global3.c, global4.e, 2147483647i), vec3<f32>(global4.a.x, -529f, global2[_wgslsmith_index_u32(global4.c, 32u)]))))), u_input.a);
    let var_0 = vec2<bool>(true, true);
    global2 = array<f32, 32>();
    let var_1 = vec2<f32>(-941f, global3.a.x);
    var var_2 = ~(~4294967295u);
    let var_3 = global3.b.xwy;
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~vec3<u32>(4294967295u, 4294967295u, global4.c) | vec3<u32>(var_3.x, 29888u, var_3.x)), _wgslsmith_clamp_vec3_u32(select(~vec3<u32>(1u, 1u, global4.c), global3.b.wzy, select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.x)), _wgslsmith_mod_vec3_u32(global3.b.zxz, global4.b.wxz), ~vec3<u32>(global4.c, global4.b.x, 17601u)), vec3<bool>(true, var_0.x, all(vec4<bool>(false, var_0.x, false, var_0.x)))), u_input.a);
}

