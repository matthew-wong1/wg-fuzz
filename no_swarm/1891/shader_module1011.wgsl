struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(33727u), vec3<u32>(52925u, 17778u, 23744u), -704f, 14922i, -455f), Struct_2(Struct_1(23031u), vec3<u32>(45161u, 0u, 4294967295u), -784f, 71171i, 1375f));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<bool, 26> = array<bool, 26>(false, false, false, false, false, true, true, false, true, false, true, true, true, true, false, true, false, false, false, false, true, false, true, false, false, true);

var<private> global3: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> vec2<bool> {
    global2 = array<bool, 26>();
    var var_0 = -2147483647i;
    let var_1 = vec3<u32>(min(abs(9528u), ~(~arg_1.a)), reverseBits(1u), 0u);
    var var_2 = !select(!select(!vec4<bool>(arg_0, global1.x, true, global2[_wgslsmith_index_u32(0u, 26u)]), select(vec4<bool>(global1.x, global1.x, global2[_wgslsmith_index_u32(arg_1.a, 26u)], true), vec4<bool>(true, false, arg_0, false), global2[_wgslsmith_index_u32(23079u, 26u)]), vec4<bool>(false, false, global1.x, global2[_wgslsmith_index_u32(arg_1.a, 26u)])), vec4<bool>(global2[_wgslsmith_index_u32(1u, 26u)], 0u < select(var_1.x, 15223u, global1.x), true, true), all(vec3<bool>(global1.x, global1.x || false, true)));
    global0 = array<Struct_2, 2>();
    return select(vec2<bool>(false, select(arg_0, arg_0, true)), var_2.zw, var_2.yw);
}

fn func_2(arg_0: u32, arg_1: Struct_4) -> Struct_3 {
    let var_0 = !func_3(select(true, false, false), arg_1.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e, arg_1.e, arg_1.e, arg_1.e) + vec4<f32>(-526f, 442f, arg_1.e, arg_1.e)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e, 574f, 818f, arg_1.e) * vec4<f32>(arg_1.e, arg_1.e, 1037f, 224f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1194f, 363f, arg_1.e, arg_1.e) * vec4<f32>(1887f, 591f, 1364f, arg_1.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1827f, arg_1.e, arg_1.e, arg_1.e) * vec4<f32>(arg_1.e, -1000f, 437f, arg_1.e))))), -327f);
    var var_1 = all(select(vec4<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(0u, 26u)], false, var_0.x)), true, arg_1.a.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.d.a, ~84910u), 26u)]), !vec4<bool>(arg_1.c.x & global1.x, all(vec3<bool>(global1.x, false, true)), any(arg_1.c), global2[_wgslsmith_index_u32(arg_1.b.a, 26u)]), vec4<bool>(!(!arg_1.a.x), global1.x, true, true)));
    global1 = vec2<bool>(global1.x, global1.x);
    global0 = array<Struct_2, 2>();
    var var_2 = abs(_wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(21250i, -11570i), countOneBits(vec2<i32>(-1i, 2984i))), ~1i), i32(-1i) * -18345i, 29526i));
    return Struct_3(global0[_wgslsmith_index_u32(4294967295u, 2u)], 75327u, vec4<f32>(1362f, _wgslsmith_f_op_f32(min(-1885f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e * 1101f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(397f, _wgslsmith_f_op_f32(-arg_1.e), all(arg_1.a.yz))), arg_1.e, func_3(true, arg_1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(422f, 1774f, arg_1.e, arg_1.e) + vec4<f32>(-1000f, arg_1.e, arg_1.e, 1037f)), -1962f).x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.e))), 340f, global1.x))), vec4<i32>(~firstLeadingBit(_wgslsmith_mult_i32(17122i, 1i)), abs(0i), _wgslsmith_div_i32(abs(reverseBits(0i)), 1i), _wgslsmith_mod_i32(-2147483647i, 1i)), arg_1.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = Struct_4(!(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 26u)], true))), arg_2.e, func_3(true, arg_1, _wgslsmith_f_op_vec4_f32(arg_2.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.e, arg_2.c.x, arg_2.c.x, arg_2.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x * 945f)) * arg_2.a.e)), func_2(countOneBits(~(~4294967295u)), Struct_4(!(!vec3<bool>(global1.x, global1.x, true)), Struct_1(arg_1.a << (9186u % 32u)), !vec2<bool>(global1.x, global1.x), func_2(_wgslsmith_mod_u32(arg_1.a, 4294967295u), Struct_4(vec3<bool>(global1.x, false, false), arg_2.e, vec2<bool>(false, false), Struct_1(41114u), 456f)).e, _wgslsmith_f_op_f32(arg_2.a.c * -1093f))).a.a, _wgslsmith_f_op_f32(arg_2.a.c - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - arg_2.a.e), arg_2.a.e)))));
    var var_1 = func_2(min(arg_1.a, ~(~var_0.b.a)), Struct_4(vec3<bool>(select(true, var_0.c.x != global1.x, arg_2.a.b.x >= 19427u), true, any(var_0.c) || all(vec3<bool>(global2[_wgslsmith_index_u32(arg_1.a, 26u)], true, true))), Struct_1(firstTrailingBit(1u)), !var_0.a.zz, func_2(firstLeadingBit(_wgslsmith_mult_u32(u_input.a, var_0.b.a)), Struct_4(!var_0.a, Struct_1(37898u), vec2<bool>(global1.x, var_0.c.x), arg_1, _wgslsmith_f_op_f32(max(555f, var_0.e)))).a.a, arg_2.a.e)).d.xw;
    return firstLeadingBit(arg_0.zz);
}

fn func_1() -> u32 {
    let var_0 = 6413i;
    var var_1 = vec2<i32>(~abs(select(~1i, -2147483647i, true)), var_0);
    return ~_wgslsmith_dot_vec2_u32(~(~_wgslsmith_div_vec2_u32(vec2<u32>(40528u, u_input.a), vec2<u32>(u_input.a, 4294967295u))), ~func_4(vec3<u32>(4294967295u, u_input.a, 30755u), Struct_1(u_input.a), func_2(u_input.a, Struct_4(vec3<bool>(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)], global1.x), Struct_1(u_input.a), vec2<bool>(false, false), Struct_1(u_input.a), -1116f))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, abs(firstTrailingBit(func_1()))), 8096u);
    var var_0 = _wgslsmith_f_op_f32(1000f + 272f);
    var_0 = func_2((u_input.a >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 30374u, u_input.a), vec3<u32>(10740u, 43061u, u_input.a)) % 32u)) << (~min(4294967295u, ~u_input.a) % 32u), Struct_4(!select(vec3<bool>(true, false, false), vec3<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.a, 26u)], false), global1.x), Struct_1(countOneBits(~u_input.a)), func_3(true & (global2[_wgslsmith_index_u32(55659u, 26u)] && global1.x), func_2(_wgslsmith_sub_u32(18356u, u_input.a), Struct_4(vec3<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.a, 26u)], global1.x), Struct_1(0u), vec2<bool>(global1.x, global1.x), Struct_1(1u), 220f)).a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-184f, 1300f, -398f, 1589f), vec4<f32>(-1241f, 924f, -1104f, 1762f), vec4<bool>(global1.x, true, true, false))) - vec4<f32>(1417f, 117f, 1000f, -1603f)), 1f), func_2(~(~0u), Struct_4(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], global1.x, false), global1.x), Struct_1(u_input.a), select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), vec2<bool>(global2[_wgslsmith_index_u32(25513u, 26u)], false)), Struct_1(u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -555f))).e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1163f * 1740f))))).c.x;
    var var_1 = -2719f;
    var var_2 = Struct_4(vec3<bool>(global1.x, global1.x, false), Struct_1(~((u_input.a & u_input.a) | _wgslsmith_mod_u32(2810u, 4294967295u))), select(func_3(true, Struct_1(~4294967295u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(198f, -106f, -776f, -1000f)), vec4<f32>(-850f, 1000f, 1739f, 1128f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1010f)))), vec2<bool>(all(vec3<bool>(false, false, false)), true), all(vec3<bool>(!global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(15854u, u_input.a), vec2<u32>(4294967295u, 35948u)), 26u)], global1.x || false))), func_2(firstTrailingBit(u_input.a), Struct_4(select(vec3<bool>(true, global1.x, global2[_wgslsmith_index_u32(0u, 26u)]), select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(40109u, 26u)]), global1.x), select(vec3<bool>(global1.x, false, false), vec3<bool>(true, true, global2[_wgslsmith_index_u32(44188u, 26u)]), global2[_wgslsmith_index_u32(u_input.a, 26u)])), func_2(~4294967295u, Struct_4(vec3<bool>(false, false, global1.x), Struct_1(u_input.a), vec2<bool>(global1.x, false), Struct_1(10242u), -398f)).e, !func_3(global1.x, Struct_1(30856u), vec4<f32>(-1024f, 1000f, -1202f, -215f), 1000f), Struct_1(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-518f))))).e, _wgslsmith_f_op_f32(-1899f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1441f * _wgslsmith_f_op_f32(-1417f + 745f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-1501f)), global1.x)))));
    let var_3 = var_2.e;
    global3 = reverseBits(_wgslsmith_sub_u32(var_2.b.a, reverseBits(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_i32(vec3<i32>(~(-20153i), i32(-1i) * -2147483647i, 1i), vec3<i32>(~(-2147483647i), _wgslsmith_clamp_i32(0i, -2147483647i, -44882i), ~43130i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1169f, var_2.e, var_2.e, var_2.e)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, var_2.e, var_2.e, 1486f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e, 720f, -382f, var_2.e) * vec4<f32>(var_2.e, var_2.e, var_2.e, 592f))))), ~u_input.a, ~56902i, vec3<u32>(u_input.a, 302u, ~u_input.a) << ((select(select(vec3<u32>(var_2.d.a, 15236u, 21778u), vec3<u32>(4294967295u, 1u, var_2.d.a), false), max(vec3<u32>(u_input.a, 4294967295u, var_2.b.a), vec3<u32>(var_2.b.a, 53863u, u_input.a)), select(vec3<bool>(global2[_wgslsmith_index_u32(17966u, 26u)], true, global1.x), var_2.a, true)) << ((firstLeadingBit(vec3<u32>(var_2.b.a, 34719u, 8423u)) | vec3<u32>(4294967295u, u_input.a, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

