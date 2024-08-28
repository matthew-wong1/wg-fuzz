struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, false, true, false, true, true, true, false, false, false, false, true, true, true, false, false, false, false, false, true, false, false, false, false, false);

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<bool>, 13>;

var<private> global3: array<bool, 10> = array<bool, 10>(true, false, false, true, true, false, true, true, false, true);

var<private> global4: array<vec2<i32>, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    let var_0 = u_input.a;
    let var_1 = 2147483647i;
    global1 = !select(vec3<bool>(true, global1.x, global0[_wgslsmith_index_u32(~1u, 25u)]), select(vec3<bool>(true, all(vec3<bool>(false, false, global1.x)), var_0 < 41412u), select(select(vec3<bool>(global3[_wgslsmith_index_u32(var_0, 10u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], true), vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_0, 25u)]), global3[_wgslsmith_index_u32(4294967295u, 10u)]), global2[_wgslsmith_index_u32(var_0, 13u)], false), global3[_wgslsmith_index_u32(var_0, 10u)]), vec3<bool>(!all(global2[_wgslsmith_index_u32(u_input.a, 13u)]), any(!global2[_wgslsmith_index_u32(var_0, 13u)]), true));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(-2064f, 761f, any(select(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 10u)], global1.x, global1.x), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 25u)], global1.x, global1.x), vec4<bool>(false, false, global3[_wgslsmith_index_u32(33552u, 10u)], false), vec4<bool>(true, true, global3[_wgslsmith_index_u32(u_input.a, 10u)], true)), all(global1.xx))))));
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(_wgslsmith_mod_u32(u_input.a, 75745u)), ~4294967295u), 13u)];
    return ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 41718u, 23640u, u_input.a), abs(vec4<u32>(7497u, 0u, var_0, var_0))) << (_wgslsmith_mod_vec4_u32(~max(vec4<u32>(var_0, 0u, var_0, 2192u), vec4<u32>(var_0, 0u, u_input.a, 0u)), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0, u_input.a, u_input.a), vec4<u32>(1874u, var_0, u_input.a, 109685u)))) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    let var_0 = Struct_5(vec3<i32>(reverseBits(abs(2147483647i)), 1i, ~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -2147483647i), vec3<i32>(1i, 8572i, 13238i)), 0i)), Struct_3((~vec2<u32>(64830u, u_input.a) | _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(41363u, 1u))) >> (select(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(u_input.a, 42525u), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 10u)], global1.x)) % vec2<u32>(32u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, global3[_wgslsmith_index_u32(0u, 10u)]))))), func_3(), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-796f, 330f)), global1.xy))))));
    let var_1 = global1.yz;
    global3 = array<bool, 10>();
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>((-var_0.a.x >> (~20773u % 32u)) & -_wgslsmith_add_i32(26035i, -1i), var_0.a.x), var_0.a.zy, _wgslsmith_sub_vec2_i32(global4[_wgslsmith_index_u32(~var_0.c.x, 8u)], -vec2<i32>(~1i, ~(-3757i))));
    global4 = array<vec2<i32>, 8>();
    return Struct_4(Struct_3(vec2<u32>(var_0.c.x, ~u_input.a) >> (var_0.c.ww % vec2<u32>(32u)), var_0.b.b));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_2 {
    return Struct_2(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a, arg_1.a.a, arg_0.a.b.a.a, -1129f) * vec4<f32>(arg_0.a.b.a.a, arg_1.a.a, arg_0.a.b.a.a, -897f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(954f, arg_1.a.a, arg_1.a.a, 1000f), vec4<f32>(arg_0.a.b.a.a, -777f, 174f, arg_0.a.b.a.a))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-475f, 270f, arg_0.a.b.a.a, 338f), vec4<f32>(382f, -558f, arg_1.a.a, arg_1.a.a), global1.x)))))).a.b.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> f32 {
    let var_0 = func_4(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-728f, -420f, 1646f, 682f) - vec4<f32>(-1248f, -559f, -532f, 146f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-312f, 520f, -1603f, 412f) - vec4<f32>(-220f, -1330f, -1605f, 2075f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1090f, 1085f, -1000f, 138f))))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-662f, _wgslsmith_f_op_f32(-196f - 469f), _wgslsmith_div_f32(-1000f, 1967f), _wgslsmith_f_op_f32(abs(-2116f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(916f, 287f, -1093f, 960f), vec4<f32>(700f, 2271f, -167f, 1014f)))))).a.b);
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-164f - _wgslsmith_f_op_f32(exp2(var_0.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a + -375f)), _wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(exp2(var_0.a.a)))))).a;
    let var_2 = 0u;
    var_1 = Struct_3(var_1.a, func_4(func_2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a), -1415f, _wgslsmith_f_op_f32(-var_1.b.a.a), var_0.a.a)), var_1.b));
    let var_3 = var_0.a.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a.a * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_3) + -334f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> i32 {
    global2 = array<vec3<bool>, 13>();
    let var_0 = 50300u;
    var var_1 = var_0;
    global0 = array<bool, 25>();
    let var_2 = Struct_5(_wgslsmith_clamp_vec3_i32(select(firstLeadingBit(vec3<i32>(arg_2, arg_2, arg_2)) | ~vec3<i32>(890i, arg_2, arg_2), ~(~vec3<i32>(arg_2, arg_2, arg_2)), true), (vec3<i32>(arg_2, arg_2, -2147483647i) << (~vec3<u32>(1u, 1u, u_input.a) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(var_0, 78991u, 26894u)) % vec3<u32>(32u)), vec3<i32>(-49855i, arg_2, ~76879i)), func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a)) - _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(max(-1636f, -2014f)), 379f, arg_1.a)).a, vec4<u32>(u_input.a, 6605u, var_0, abs(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 457f, 215f, arg_0))).a.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_1.a), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(500f, arg_1.a)), 213f), vec2<f32>(_wgslsmith_f_op_f32(194f - arg_1.a), _wgslsmith_f_op_f32(-arg_0)))));
    return -select(-2147483647i, arg_2, global3[_wgslsmith_index_u32(abs(~0u), 10u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, u_input.a, u_input.a)), vec3<u32>(u_input.a, 0u >> (u_input.a % 32u), firstTrailingBit(23930u))), _wgslsmith_mod_u32(23968u, u_input.a), global1.x), 13u)], select(!global2[_wgslsmith_index_u32(~u_input.a, 13u)], vec3<bool>(false, true && any(vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(22748u, 25u)], global1.x)), false), !vec3<bool>(false, global1.x, any(vec4<bool>(global1.x, global1.x, global3[_wgslsmith_index_u32(82355u, 10u)], global3[_wgslsmith_index_u32(37786u, 10u)])))), all(global1.zz));
    let var_0 = func_5(_wgslsmith_f_op_f32(func_1(-vec4<i32>(1i, 1i, 1i, 1i) ^ min(vec4<i32>(-1i, -2147483647i, -22957i, -2147483647i) >> (vec4<u32>(55296u, 1u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<i32>(0i, -15242i, -25667i, -1i)), ~u_input.a)), func_2(vec4<f32>(_wgslsmith_f_op_f32(1750f * _wgslsmith_f_op_f32(f32(-1f) * -999f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-173f, 1040f)))), -211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1777f * -627f)))).a.b.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-142354i, -2136i, max(-24094i, firstTrailingBit(33966i)), _wgslsmith_mod_i32(abs(-1i), -17104i)), -vec4<i32>(~1i, _wgslsmith_div_i32(-1i, 1i), abs(22577i), firstTrailingBit(-1i))));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-477f, 1066f, -255f, -206f)))))).a;
    let var_2 = var_1.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(var_2.a.a * 1953f), var_2.a.a, _wgslsmith_f_op_f32(trunc(693f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.a.a, 105f, -605f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(471f, var_1.b.a.a, 767f), vec3<f32>(1303f, var_2.a.a, var_2.a.a)))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(789f, var_2.a.a, -864f) - vec3<f32>(1256f, 663f, -442f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b.a.a, 1946f, var_2.a.a), vec3<f32>(1000f, var_2.a.a, var_1.b.a.a))))))));
    global1 = vec3<bool>(any(select(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, min(14160u, 2972u)), 13u)], !global2[_wgslsmith_index_u32(~66979u, 13u)], global3[_wgslsmith_index_u32(var_1.a.x, 10u)])), -firstLeadingBit(~(-1i)) > ~(~(~var_0)), any(vec3<bool>(global1.x, -1i != var_0, true)) || global1.x);
    let var_4 = max(global4[_wgslsmith_index_u32(var_1.a.x, 8u)], -global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(u_input.a, var_1.a.x)), 8u)] >> (vec2<u32>(4294967295u, max(var_1.a.x, u_input.a)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(var_1.a.x >> (u_input.a % 32u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 128409u, _wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a), ~vec4<u32>(0u, u_input.a, u_input.a, 4294967295u) << (select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, var_1.a.x, 48412u, var_1.a.x), vec4<u32>(u_input.a, var_1.a.x, var_1.a.x, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, var_1.a.x, var_1.a.x, u_input.a), vec4<u32>(var_1.a.x, u_input.a, 1291u, u_input.a)), true) % vec4<u32>(32u))));
}

