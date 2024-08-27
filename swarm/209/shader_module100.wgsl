struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, true, true, true, true, true, false, false, false, true, true, true, false, true, true, true, true, true, false, true, false, true, true, false, true, false, false, false, true, false, false, true);

var<private> global1: u32 = 1u;

var<private> global2: u32 = 4568u;

var<private> global3: Struct_3 = Struct_3(Struct_1(i32(-2147483648), vec2<u32>(1u, 0u), 0u, vec2<bool>(true, true), 8928u));

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(157f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -533f)), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1264f - 1071f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-654f - 904f) - _wgslsmith_f_op_f32(sign(869f))), 529f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-339f + -1058f), -824f)))));
    var var_1 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-30672i, global4.x, -2147483647i), ~vec3<i32>(-24972i, global4.x, 2147483647i)), _wgslsmith_div_vec3_i32(~vec3<i32>(-2147483647i, -5201i, global3.a.a), _wgslsmith_div_vec3_i32(vec3<i32>(global3.a.a, 0i, global3.a.a), vec3<i32>(57519i, global4.x, -50830i)))), -14853i, _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(global3.a.a, 10061i, global4.x), vec3<i32>(global3.a.a, -2147483647i, -1i)), (vec3<i32>(1i, global4.x, global3.a.a) << (vec3<u32>(1u, 0u, 4294967295u) % vec3<u32>(32u))) << ((vec3<u32>(u_input.a.x, global3.a.b.x, 0u) >> (vec3<u32>(global3.a.e, global3.a.e, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_add_i32(-2147483647i, global3.a.a)), -1i, abs(_wgslsmith_clamp_i32(2147483647i, global3.a.a, -1i))));
    let var_2 = Struct_2(vec2<u32>(_wgslsmith_sub_u32(global3.a.e & ~u_input.b.x, 1u), max(1u, ~(~global3.a.e))), select(!vec4<bool>(true, global3.a.d.x || global3.a.d.x, global3.a.d.x, any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 32u)], false, false))), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], true, true)), !select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 32u)], false, false, false), vec4<bool>(false, true, true, global3.a.d.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false, true)), _wgslsmith_sub_u32(global3.a.c, 26696u) > reverseBits(4207u)), !global3.a.d.x || any(vec2<bool>(global3.a.d.x, true))), _wgslsmith_sub_i32(~(-46502i), _wgslsmith_div_i32(_wgslsmith_div_i32(1i, min(-19096i, -18429i)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 0i, -1i, var_1.x), vec4<i32>(671i, -18291i, 9165i, -2147483647i)), reverseBits(vec4<i32>(1571i, global4.x, 170i, 0i))))));
    global3 = Struct_3(global3.a);
    global2 = var_2.a.x;
    return select(!select(select(!vec4<bool>(true, global3.a.d.x, true, global0[_wgslsmith_index_u32(1u, 32u)]), select(var_2.b, var_2.b, global0[_wgslsmith_index_u32(12296u, 32u)]), var_2.b.x), !select(var_2.b, var_2.b, vec4<bool>(true, false, var_2.b.x, false)), !vec4<bool>(global3.a.d.x, false, true, global3.a.d.x)), !var_2.b, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]);
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(620f, 834f, 1098f, 1607f) * vec4<f32>(-704f, -488f, 214f, -1390f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(668f, 1042f, -1014f, -1793f)), func_3())) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-595f, 2330f, 595f, -879f) + vec4<f32>(-2170f, 739f, 749f, -654f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1966f, -834f, 665f, -1137f) - vec4<f32>(-368f, -1714f, -211f, 439f)))), vec4<f32>(_wgslsmith_f_op_f32(-1000f + 232f), _wgslsmith_f_op_f32(select(-582f, 781f, global3.a.d.x)), 854f, _wgslsmith_f_op_f32(210f * 675f)), !vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-700f, 655f, -189f, 410f) - vec4<f32>(1000f, 1677f, 1554f, -251f)), vec4<f32>(125f, -1542f, 1339f, -916f), !vec4<bool>(false, global3.a.d.x, true, global3.a.d.x)))), func_3())));
    let var_1 = Struct_2(global3.a.b, vec4<bool>(global3.a.d.x, all(func_3().zxx), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(50712u, 13243u), 32u)], true), -2147483647i ^ ~global3.a.a);
    var var_2 = Struct_2(_wgslsmith_div_vec2_u32(var_1.a, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(10417u, var_1.a.x), global3.a.c << (4294967295u % 32u)), select(4294967295u, 1u, !global3.a.d.x))), !var_1.b, -90194i);
    let var_3 = Struct_3(Struct_1(countOneBits(max(global3.a.a, global4.x)), vec2<u32>(u_input.b.x, ~(~u_input.b.x)), _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u << (global3.a.c % 32u), ~109445u), ~_wgslsmith_mult_u32(u_input.a.x, global3.a.b.x)), var_1.b.yw, _wgslsmith_dot_vec4_u32(u_input.a, min(u_input.a | vec4<u32>(var_2.a.x, 40916u, 22495u, 6835u), _wgslsmith_div_vec4_u32(u_input.a, u_input.a)))));
    global1 = 1u;
    return ~(-1i) ^ var_2.c;
}

fn func_1() -> Struct_4 {
    global4 = -reverseBits(countOneBits(firstTrailingBit(vec2<i32>(1i, global4.x))) << (_wgslsmith_add_vec2_u32(vec2<u32>(3223u, u_input.b.x), ~vec2<u32>(1u, global3.a.b.x)) % vec2<u32>(32u)));
    global1 = global3.a.b.x;
    var var_0 = Struct_3(global3.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1826f), -432f))) * -332f) - _wgslsmith_f_op_f32(-1000f + 676f));
    var var_2 = ~(-vec4<i32>(i32(-1i) * -2147483647i, func_2(), _wgslsmith_mult_i32(reverseBits(var_0.a.a), abs(-1440i)), 1i));
    return Struct_4(u_input.a, Struct_1(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(-42247i, var_0.a.a)), min(vec2<i32>(58182i, 1i), abs(vec2<i32>(global4.x, global3.a.a)))), vec2<u32>(~0u, ~1u), 4629u, !vec2<bool>(!global3.a.d.x, !global0[_wgslsmith_index_u32(1u, 32u)]), global3.a.e), Struct_3(global3.a));
}

fn func_4(arg_0: Struct_4) -> u32 {
    let var_0 = _wgslsmith_mod_i32(func_2(), global3.a.a >> (16678u % 32u));
    var var_1 = !(!vec2<bool>(global0[_wgslsmith_index_u32(53905u, 32u)], arg_0.b.d.x));
    var var_2 = global3.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1164f - _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(444f)), -218f))));
    var var_4 = !select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_f_op_f32(var_3 - var_3) > _wgslsmith_f_op_f32(trunc(var_3)), true), select(func_3().yzw, select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(global3.a.b.x, 32u)], false), vec3<bool>(true, arg_0.c.a.d.x, true), vec3<bool>(true, true, var_1.x)), !vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), var_1.x), all(func_3().xzw)), !(!(!vec3<bool>(global3.a.d.x, true, var_2.d.x))));
    return firstLeadingBit(9999u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a;
    var var_1 = vec4<bool>(!global0[_wgslsmith_index_u32(firstTrailingBit(77880u), 32u)], global3.a.d.x, all(vec3<bool>(false, global3.a.d.x, true)), global0[_wgslsmith_index_u32(global3.a.b.x | ~var_0.e, 32u)]);
    var var_2 = countOneBits(_wgslsmith_clamp_i32(43383i, _wgslsmith_sub_i32(0i, -26386i), -27476i));
    global1 = firstTrailingBit(max(~4294967295u, max(func_4(func_1()), ~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global3.a.a, var_0.a, global3.a.a, 1i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1194f), _wgslsmith_f_op_f32(788f * -343f), -594f, -818f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -395f, -1303f, 124f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-963f, -1028f, -1000f, 1236f) - vec4<f32>(-1000f, -1968f, 911f, -339f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-650f, 839f, -1409f, 1704f))) * vec4<f32>(305f, 730f, 180f, -667f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1112f, -879f, 1149f, 724f)))))));
}

