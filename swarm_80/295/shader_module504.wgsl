struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1;

var<private> global2: array<vec4<i32>, 31>;

var<private> global3: Struct_2;

var<private> global4: array<f32, 32> = array<f32, 32>(-732f, -450f, 1501f, -909f, 1317f, 130f, 915f, 726f, -1000f, 609f, 1164f, -962f, 324f, -755f, 435f, 1187f, -281f, -196f, -515f, 254f, -1100f, -1111f, -440f, 280f, 280f, 238f, -640f, 704f, 1364f, -797f, 813f, -825f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(max(arg_0.c, 63665u), 32u)])), global0.a)));
    global0 = Struct_3(376f);
    var var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-709f, global4[_wgslsmith_index_u32(1u, 32u)]), vec2<f32>(var_0.a, global0.a), var_1.x)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, global4[_wgslsmith_index_u32(global3.c, 32u)]), vec2<f32>(global0.a, 1804f)))) * vec2<f32>(_wgslsmith_f_op_f32(var_0.a * global4[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_f_op_f32(step(-326f, -1369f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a, var_0.a)))))));
    var var_3 = Struct_1(!vec3<bool>(arg_1.a.x, true, true && !global1.a.x), abs(vec3<i32>(_wgslsmith_mult_i32(arg_0.d.x << (27308u % 32u), -global1.b.x), ~(~17477i), -1i)));
    return all(vec4<bool>(false, !(any(global1.a.yy) || true), !all(select(arg_0.a.a, arg_1.a, arg_0.b.a)), arg_1.a.x));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    return firstTrailingBit(vec3<u32>(~global3.c | ~_wgslsmith_add_u32(114709u, 1u), _wgslsmith_clamp_u32(1u, 1u, global3.c), _wgslsmith_mod_u32(0u, firstLeadingBit(298u))));
}

fn func_1() -> Struct_2 {
    global2 = array<vec4<i32>, 31>();
    var var_0 = -2147483647i;
    let var_1 = u_input.a.x;
    var var_2 = 23450u;
    var var_3 = !(!vec4<bool>(any(select(vec4<bool>(global3.b.a.x, true, false, true), vec4<bool>(global1.a.x, global1.a.x, global3.b.a.x, true), vec4<bool>(global3.b.a.x, false, true, global3.a.a.x))), global3.a.a.x, func_2(Struct_2(global3.a, Struct_1(global3.a.a, vec3<i32>(23315i, -20689i, u_input.a.x)), global3.c, global3.d), Struct_1(vec3<bool>(true, global3.b.a.x, global1.a.x), global1.b)), all(!global3.b.a.zx)));
    return Struct_2(global3.a, Struct_1(vec3<bool>(!(!global3.b.a.x), max(u_input.a.x, var_1) < global1.b.x, global3.a.a.x), countOneBits(~vec3<i32>(u_input.a.x, -1i, 1i))), _wgslsmith_dot_vec3_u32(firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(65215u, 15572u, global3.c), vec3<u32>(global3.c, 38369u, global3.c))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1501f - -980f) * -523f))), ~(~global3.d ^ global1.b));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = arg_0;
    global1 = Struct_1(select(vec3<bool>(arg_1.a.a.x, select(global3.a.a.x, true, arg_1.a.a.x | true), !select(global1.a.x, true, true)), select(!func_1().a.a, select(arg_0.b.a, arg_1.b.a, select(arg_0.a.a, vec3<bool>(false, true, true), global3.b.a.x)), vec3<bool>(func_2(arg_1, arg_0.b), any(vec4<bool>(true, true, false, false)), true)), ((17931i <= global1.b.x) && var_0.b.a.x) | all(vec4<bool>(true, true, true, false))), arg_2.b);
    var var_1 = vec3<i32>(10207i, abs(u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -35426i, global1.b.x), ~vec3<i32>(u_input.a.x, global1.b.x, global1.b.x)), -19309i));
    let var_2 = global0.a;
    global4 = array<f32, 32>();
    return Struct_1(vec3<bool>(any(vec2<bool>(true, false)), false | global3.b.a.x, true), _wgslsmith_mod_vec3_i32(select(vec3<i32>(var_0.b.b.x, select(-35027i, 20573i, false), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(arg_0.b.b.x, arg_1.d.x))), (vec3<i32>(var_0.d.x, arg_2.b.x, var_1.x) | arg_1.a.b) ^ firstTrailingBit(arg_1.b.b), any(vec3<bool>(var_0.b.a.x, true, false))), ~(-select(vec3<i32>(var_0.d.x, arg_1.d.x, var_0.d.x), vec3<i32>(arg_0.d.x, global3.a.b.x, u_input.a.x), global1.a))));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(func_3(_wgslsmith_f_op_f32(-1474f + 165f)).xy, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39041u), vec2<u32>(arg_1.c, 29063u)), _wgslsmith_mod_u32(5489u, 33015u))) ^ ~_wgslsmith_sub_vec2_u32(vec2<u32>(46054u, 6119u), ~vec2<u32>(arg_2, 1u)), vec2<u32>(arg_0, ~(arg_2 >> (36788u % 32u))) ^ ~(~(~vec2<u32>(0u, 5626u))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-global0.a));
    var var_2 = -2147483647i;
    let var_3 = -41002i;
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2067f, -312f)))));
    return Struct_2(func_4(arg_1, Struct_2(Struct_1(func_1().b.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_3, 2147483647i, -33637i), arg_1.d, arg_1.a.b)), global3.a, arg_1.c ^ ~arg_2, reverseBits(vec3<i32>(var_3, 2147483647i, -33107i))), arg_1.b, abs(~(~global3.a.b.x))), func_1().b, _wgslsmith_sub_u32(0u, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-305f * -209f))).x), reverseBits(countOneBits(vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1.b.b, global3.a.b), _wgslsmith_dot_vec3_i32(global1.b, vec3<i32>(arg_1.b.b.x, arg_1.b.b.x, 1i)), ~2147483647i))));
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(1u, 32u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global0.a)), global4[_wgslsmith_index_u32(73255u, 32u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - -1444f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(106058u, 32u)] * 795f)))), global4[_wgslsmith_index_u32(global3.c, 32u)]) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-339f, global4[_wgslsmith_index_u32(59538u, 32u)], 114f, -1091f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4[_wgslsmith_index_u32(0u, 32u)], global4[_wgslsmith_index_u32(28990u, 32u)], -274f, global0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(516f, global4[_wgslsmith_index_u32(9535u, 32u)], 775f, global4[_wgslsmith_index_u32(59433u, 32u)])))))));
    var var_1 = arg_1;
    var var_2 = -(max(vec3<i32>(var_1.a.b.x, arg_2.b.x, 1i), abs(vec3<i32>(arg_2.b.x, 0i, 2147483647i))) >> (vec3<u32>(arg_0, ~var_1.c, 5857u) % vec3<u32>(32u))) << ((vec3<u32>(arg_0, 61788u, ~abs(global3.c)) >> (vec3<u32>(1u, 4294967295u, _wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(1u, arg_0), arg_0)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = Struct_3(-879f);
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_1.c, 32u)] + 432f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(8113u, 32u)] - 277f), _wgslsmith_f_op_f32(-var_3.a))), var_0.x, global0.a, -119f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-918f, global4[_wgslsmith_index_u32(arg_0, 32u)], 1816f, var_3.a) - vec4<f32>(global4[_wgslsmith_index_u32(20005u, 32u)], -712f, 676f, global0.a)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, global0.a, global0.a, 621f))), vec4<f32>(_wgslsmith_f_op_f32(-var_3.a), global4[_wgslsmith_index_u32(0u << (select(0u, arg_0, false) % 32u), 32u)], global0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_3.a))))), !(!(!vec4<bool>(arg_2.a.x, false, true, false))))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(global3.c, func_5(~_wgslsmith_sub_u32(reverseBits(55216u), global3.c), Struct_2(func_4(func_1(), Struct_2(global3.a, Struct_1(vec3<bool>(global3.a.a.x, global1.a.x, global1.a.x), vec3<i32>(-12089i, global3.d.x, global1.b.x)), global3.c, global1.b), global3.a, ~(-1i)), global3.b, ~(~1u), global3.b.b), ~(60569u << (func_1().c % 32u))), Struct_1(func_1().a.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.b.x, global1.b.x, -2147483647i), func_5(~global3.c, Struct_2(global3.a, Struct_1(vec3<bool>(global1.a.x, global1.a.x, global3.a.a.x), vec3<i32>(global1.b.x, global1.b.x, 31682i)), 4294967295u, global3.a.b), _wgslsmith_mult_u32(global3.c, global3.c)).b.b, -global1.b)), vec3<bool>(!all(vec2<bool>(true, global3.b.a.x)), !(all(global1.a) == true), !any(global1.a.zz)));
    var var_0 = firstTrailingBit(~((vec3<u32>(9441u, 0u, global3.c) & countOneBits(vec3<u32>(51550u, 4294967295u, 1u))) & vec3<u32>(~global3.c, firstLeadingBit(62661u), firstTrailingBit(51691u))));
    let var_1 = reverseBits(u_input.a.x);
    var var_2 = global3.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.xz, vec2<u32>(var_0.x, var_0.x)), vec2<u32>(43151u, 24730u) & vec2<u32>(global3.c, 0u))), 32u)]));
    var var_4 = global3.b;
    global3 = Struct_2(func_5(1u, Struct_2(global3.b, Struct_1(!vec3<bool>(var_2.a.x, var_4.a.x, true), firstLeadingBit(var_2.b)), 6825u, ~reverseBits(vec3<i32>(var_1, var_2.b.x, var_4.b.x))), ~func_3(-812f).x & ~(global3.c | 10459u)).a, global3.a, 1u, _wgslsmith_mult_vec3_i32(vec3<i32>(-21122i, ~(~(-2147483647i)), i32(-1i) * -1i), select(~vec3<i32>(global1.b.x, -9938i, var_4.b.x), global1.b, vec3<bool>(any(vec4<bool>(global3.b.a.x, true, var_2.a.x, false)), var_2.a.x || false, !global3.b.a.x))));
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 1u, global3.c) ^ ~vec3<u32>(global3.c, 0u, 0u))), ~(~_wgslsmith_clamp_vec3_u32(func_3(2957f), ~vec3<u32>(var_0.x, var_0.x, global3.c), min(vec3<u32>(4294967295u, 14148u, 1u), vec3<u32>(global3.c, 4294967295u, global3.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(global3.c, var_0.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(ceil(-1000f)))), -498f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2402f + -190f), _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(36553u, 32u)])))), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -598f)), 227f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(157f, global0.a, global0.a)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1233f, global0.a, 744f)))))), ~(~(vec3<i32>(-1i) * -var_2.b)), 775f);
}

