struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(1u, 1117f, vec4<f32>(-1000f, 317f, 800f, -165f), vec2<i32>(1i, 13550i), vec2<f32>(-387f, 1000f)), Struct_1(71265u, 634f, vec4<f32>(-1155f, -841f, 160f, -768f), vec2<i32>(3875i, 26896i), vec2<f32>(1000f, 1209f)), Struct_1(8469u, 189f, vec4<f32>(-314f, -1433f, 439f, -496f), vec2<i32>(-14936i, -96526i), vec2<f32>(-404f, 1141f)), Struct_1(55951u, 215f, vec4<f32>(-1490f, -823f, -1610f, 529f), vec2<i32>(-20958i, 0i), vec2<f32>(364f, 1000f)), Struct_1(1u, 202f, vec4<f32>(199f, -1801f, -2075f, -406f), vec2<i32>(5205i, -25465i), vec2<f32>(-592f, -481f)), Struct_1(64152u, 1000f, vec4<f32>(1929f, -100f, -529f, 1119f), vec2<i32>(30703i, 51327i), vec2<f32>(-143f, 376f)), Struct_1(23214u, -133f, vec4<f32>(-1975f, -461f, 1525f, -1135f), vec2<i32>(18299i, -30077i), vec2<f32>(303f, -277f)), Struct_1(0u, 1308f, vec4<f32>(762f, -778f, 972f, 1000f), vec2<i32>(1i, 71778i), vec2<f32>(-911f, -1798f)), Struct_1(1u, -336f, vec4<f32>(-833f, 673f, -263f, 120f), vec2<i32>(-12384i, 10929i), vec2<f32>(-1000f, -696f)), Struct_1(34509u, -678f, vec4<f32>(-591f, 891f, -311f, 1000f), vec2<i32>(-7766i, -86949i), vec2<f32>(464f, 538f)), Struct_1(41589u, 802f, vec4<f32>(236f, 1191f, -356f, -476f), vec2<i32>(i32(-2147483648), -5986i), vec2<f32>(-165f, 1157f)), Struct_1(9047u, -249f, vec4<f32>(-200f, -184f, -775f, 290f), vec2<i32>(2147483647i, 109903i), vec2<f32>(-543f, -2097f)), Struct_1(4294967295u, -879f, vec4<f32>(-894f, -613f, -278f, -526f), vec2<i32>(0i, i32(-2147483648)), vec2<f32>(-1468f, 1710f)), Struct_1(0u, 1488f, vec4<f32>(-129f, -888f, -319f, 131f), vec2<i32>(0i, -1i), vec2<f32>(1557f, 237f)), Struct_1(76786u, -1161f, vec4<f32>(1605f, 380f, -957f, 1214f), vec2<i32>(4015i, i32(-2147483648)), vec2<f32>(-372f, 281f)));

var<private> global2: array<u32, 8>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1190f), true)), arg_1.a, false && !all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-arg_0.e.x), -332f);
    global2 = array<u32, 8>();
    global2 = array<u32, 8>();
    global2 = array<u32, 8>();
    var var_1 = vec3<f32>(-770f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -327f))) * 415f), arg_2.a);
    return firstTrailingBit(~_wgslsmith_mod_vec2_i32(-_wgslsmith_clamp_vec2_i32(arg_0.d, arg_2.b, arg_0.d), arg_2.b));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_2(arg_0.c.x, func_3(Struct_1(_wgslsmith_clamp_u32(0u, u_input.b, arg_0.a), -888f, arg_0.c, reverseBits(vec2<i32>(arg_0.d.x, -1i)), _wgslsmith_div_vec2_f32(vec2<f32>(-733f, arg_0.e.x), vec2<f32>(149f, arg_0.e.x))), Struct_2(_wgslsmith_f_op_f32(exp2(arg_0.c.x)), abs(vec2<i32>(arg_2, arg_2))), global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.a) << (firstLeadingBit(global2[_wgslsmith_index_u32(u_input.c, 8u)]) % 32u), 23u)]) << (reverseBits((vec2<u32>(36137u, u_input.c) | vec2<u32>(47050u, 1u)) << (~vec2<u32>(48370u, global2[_wgslsmith_index_u32(u_input.a, 8u)]) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = vec4<i32>(arg_2, 0i, -arg_2, -6588i);
    global0 = array<Struct_2, 23>();
    global1 = array<Struct_1, 15>();
    let var_2 = vec4<u32>(abs(abs(3684u)), ~(~(~firstLeadingBit(40657u))), global2[_wgslsmith_index_u32(u_input.c, 8u)], arg_0.a);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-124f + var_0.a), _wgslsmith_f_op_f32(min(var_0.a, arg_0.e.x)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b, -123f))), var_0.a, arg_1 & all(vec2<bool>(arg_1, arg_1))))), var_1.xx);
}

fn func_4(arg_0: Struct_2) -> f32 {
    global1 = array<Struct_1, 15>();
    global1 = array<Struct_1, 15>();
    let var_0 = u_input.b;
    var var_1 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, u_input.c, 1u, var_0)), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b, 8u)], var_0, global2[_wgslsmith_index_u32(u_input.a, 8u)], 28312u), vec4<u32>(4294967295u, u_input.b, var_0, global2[_wgslsmith_index_u32(40285u, 8u)]), vec4<bool>(false, false, true, true)), vec4<u32>(1u, var_0, global2[_wgslsmith_index_u32(0u, 8u)], _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(46216u, 1u, 4294967295u))))), ~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(u_input.c, 8u)] << (reverseBits(var_0) % 32u), firstLeadingBit(1u), firstLeadingBit(max(55611u, u_input.b)))), 8u)], 15u)];
    let var_2 = reverseBits(-arg_0.b.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(908f)) + var_1.e.x);
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global2 = array<u32, 8>();
    global0 = array<Struct_2, 23>();
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(517f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1439f + 764f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-206f, -331f)))), -2682f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1117f, _wgslsmith_f_op_f32(sign(-251f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2227f + -1646f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(global1[_wgslsmith_index_u32(4294967295u, 15u)], true, -2147483647i)))), -595f, _wgslsmith_f_op_f32(f32(-1f) * -1272f)));
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) - _wgslsmith_f_op_f32(var_0.x + -1316f)) * var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2205f * -215f), -672f))))), 842f, -624f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.x)))));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), var_0.x);
    return ~(countOneBits(4451u) & global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 4294967295u), _wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(4294967295u, 8u)]), u_input.c) << (max(u_input.a, abs(u_input.b)) % 32u), 8u)]);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = vec2<u32>((_wgslsmith_add_u32(0u, global2[_wgslsmith_index_u32(37433u, 8u)]) ^ 33106u) << ((~u_input.c & 1u) % 32u), ~min(_wgslsmith_clamp_u32(u_input.c, 1u, global2[_wgslsmith_index_u32(0u, 8u)]), ~0u)) & _wgslsmith_clamp_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(30673u, u_input.a), vec2<u32>(17832u, u_input.a)), ~select(vec2<u32>(1u, global2[_wgslsmith_index_u32(u_input.b, 8u)]), vec2<u32>(u_input.b, 0u), arg_3.wx), vec2<bool>(true, true)), ~vec2<u32>(1u, u_input.b), select(reverseBits(vec2<u32>(u_input.c, global2[_wgslsmith_index_u32(u_input.b, 8u)]) ^ vec2<u32>(u_input.c, u_input.c)), abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.c, 112740u))), all(!arg_3)));
    var var_1 = max(24967u, 4294967295u);
    var var_2 = global1[_wgslsmith_index_u32(1u, 15u)];
    var var_3 = !select(!select(vec4<bool>(false, false, arg_1, true), select(vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(arg_1, false, arg_1, true), arg_3.x), arg_3.x != false), select(!select(vec4<bool>(arg_3.x, arg_1, false, arg_1), arg_3, vec4<bool>(arg_1, true, true, arg_3.x)), !(!arg_3), -arg_2.b.x <= _wgslsmith_div_i32(var_2.d.x, arg_2.b.x)), false);
    let var_4 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-(-30877i ^ arg_0.b.x), arg_2.b.x | (-2147483647i | arg_0.b.x), arg_2.b.x), select(~vec3<i32>(arg_2.b.x, arg_2.b.x, 41977i), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, var_2.d.x), abs(vec3<i32>(var_2.d.x, 0i, arg_0.b.x))), select(var_3.ywz, arg_3.xxz, vec3<bool>(true, true, arg_1))), max(abs(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_2.d.x, 3747i), vec3<i32>(arg_2.b.x, var_2.d.x, arg_2.b.x))), vec3<i32>(arg_0.b.x ^ -1i, -arg_2.b.x, var_2.d.x))) ^ -vec3<i32>(-func_3(global1[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(34909u, 23u)], Struct_2(var_2.e.x, vec2<i32>(-6550i, arg_0.b.x))).x, 2147483647i, i32(-1i) * -var_2.d.x);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 8>();
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, 23477u), ~vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 8u)], 1u, 4294967295u)), ~countOneBits(vec3<u32>(0u, 31679u, u_input.b))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(14294u, 1u, u_input.b, 1u) << (vec4<u32>(1u, global2[_wgslsmith_index_u32(u_input.c, 8u)], u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)]) % vec4<u32>(32u)), vec4<u32>(0u, global2[_wgslsmith_index_u32(4294967295u, 8u)], u_input.c, u_input.a), all(vec3<bool>(true, true, true))), ~vec4<u32>(global2[_wgslsmith_index_u32(0u, 8u)], 89698u, 4294967295u, 50856u)));
    let var_1 = func_5(Struct_2(-2246f, ~_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 38011i), vec2<i32>(1i, 1i))), all(vec2<bool>(true, any(vec2<bool>(true, false)))), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1317f)), _wgslsmith_f_op_f32(floor(-1639f)))))), vec2<i32>(1i, 1i)), select(vec4<bool>(!select(true, true, true), true, all(vec3<bool>(true, true, true)), false), vec4<bool>(abs(var_0) != global2[_wgslsmith_index_u32(4294967295u >> (0u % 32u), 8u)], true, true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), false))), vec4<bool>(!select(false, true, false), true, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(func_1(vec4<i32>(0i, -22873i, 1047i, 1i)), 8u)], 8u)] <= (58290u >> (u_input.a % 32u)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)))));
    var var_2 = Struct_1(~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a)))))), vec4<f32>(-1417f, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a, 1511f)) + _wgslsmith_f_op_f32(-824f + 542f)), -2859f, true))), countOneBits(func_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(3340u, global2[_wgslsmith_index_u32(28479u, 8u)], 1u), vec3<u32>(4294967295u, u_input.b, var_0)), _wgslsmith_f_op_f32(select(376f, -1108f, true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a, 897f, 1162f, 130f), vec4<f32>(-632f, -899f, 739f, 876f), true)), var_1.b, vec2<f32>(-250f, var_1.a)), !all(vec4<bool>(true, false, true, true)), 2639i).b), vec2<f32>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.a, var_1.a, true)), _wgslsmith_f_op_f32(1678f - -1068f)))));
    let var_3 = !(!select(vec4<bool>(true, all(vec4<bool>(false, false, true, true)), var_1.b.x == var_1.b.x, var_2.b < var_1.a), vec4<bool>(true, true, true, true), ~9051i <= _wgslsmith_div_i32(var_1.b.x, 1i)));
    let var_4 = !vec4<bool>(false, true, var_3.x & var_3.x, true);
    var var_5 = vec2<bool>(~countOneBits(4294967295u) >= (~1u | ~abs(global2[_wgslsmith_index_u32(u_input.c, 8u)])), !(!var_3.x));
    var var_6 = min(vec3<i32>(_wgslsmith_mod_i32(func_3(Struct_1(u_input.a, -1000f, vec4<f32>(var_2.c.x, -662f, var_2.e.x, -490f), var_1.b, vec2<f32>(1366f, var_2.c.x)), Struct_2(141f, var_2.d), Struct_2(-1206f, vec2<i32>(var_2.d.x, -48790i))).x, _wgslsmith_div_i32(-8083i, 33943i) & var_2.d.x), _wgslsmith_div_i32(-2147483647i, var_2.d.x), var_2.d.x), vec3<i32>(-_wgslsmith_mult_i32(func_5(global0[_wgslsmith_index_u32(4294967295u, 23u)], var_3.x, var_1, var_3).b.x, ~var_2.d.x), var_1.b.x, abs(-1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.b - -424f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, var_1.a, var_2.b, 968f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_2.c)), _wgslsmith_f_op_vec4_f32(var_2.c - vec4<f32>(1167f, -1001f, var_1.a, -1000f))))));
}

