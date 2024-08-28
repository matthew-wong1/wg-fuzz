struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-1i, 14245i, -15694i, -30517i), vec4<i32>(12905i, -24857i, 8067i, i32(-2147483648)), vec4<i32>(-6347i, 28353i, 2147483647i, 0i), vec4<i32>(2147483647i, -62819i, 16087i, 1i), vec4<i32>(39831i, 50827i, 10723i, 6123i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1006f, arg_0.a))));
    global0 = array<vec4<i32>, 5>();
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u << (0u % 32u), ~6458u), firstLeadingBit(~vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(1u, 1u, 1u) ^ firstTrailingBit(vec3<u32>(1u, 4294967295u, 4294967295u))), any(select(vec2<bool>(true, -945f < arg_0.a), vec2<bool>(all(vec2<bool>(true, true)), 77948i <= u_input.a), vec2<bool>(true, arg_0.a < arg_0.a))), false);
    var_1 = Struct_1(vec3<u32>(reverseBits(abs(countOneBits(17784u))), var_1.a.x, ~4294967295u), all(vec3<bool>(_wgslsmith_mult_i32(37297i, 39432i) >= ~u_input.b, true, select(var_1.c, var_1.c, false) || var_1.c)), var_1.c);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(613f, -109f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) * _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(var_0.x + var_0.x)))));
    return 651f;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_5) -> vec2<u32> {
    var var_0 = Struct_4(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32((vec4<u32>(674u, arg_1.b.x, arg_0.x, arg_1.b.x) & vec4<u32>(38033u, 0u, 0u, arg_0.x)) & ~vec4<u32>(0u, arg_0.x, 30941u, 12504u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b.x, 1u, 4294967295u, arg_0.x), vec4<u32>(arg_0.x, 31447u, arg_1.b.x, arg_0.x))), 2761u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(-1717f - -482f)), _wgslsmith_div_f32(-2152f, _wgslsmith_f_op_f32(f32(-1f) * -1096f)), _wgslsmith_f_op_f32(func_3(Struct_2(-375f))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1467f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-339f + 386f)), -354f));
    let var_1 = Struct_5(arg_1.a, ~(_wgslsmith_mod_vec2_u32(max(vec2<u32>(0u, var_0.a), arg_1.b), arg_1.b) ^ vec2<u32>(var_0.a, _wgslsmith_add_u32(arg_1.b.x, arg_0.x))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(767f, _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(1573f * -1232f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.c.x, var_0.b.x, true)), _wgslsmith_f_op_f32(func_3(Struct_2(var_0.b.x)))))));
    let var_3 = vec2<i32>(_wgslsmith_add_i32(-2147483647i, 1i), -(~abs(~(-28515i))));
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(var_0.c)), Struct_1(~select(vec3<u32>(var_0.a, var_0.a, arg_0.x), vec3<u32>(64175u, 45696u, 49849u), arg_1.a.x) & ~vec3<u32>(22133u, arg_1.b.x, 50385u), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, 2147483647i), max(vec2<i32>(-44117i, var_3.x), var_3)) != (_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(1u, 5u)], vec4<i32>(-42786i, var_3.x, 43684i, -2147483647i)) & _wgslsmith_mod_i32(u_input.a, 0i)), true), Struct_2(var_0.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_2(-1385f))))), _wgslsmith_f_op_f32(func_3(Struct_2(-423f))), arg_1.a.x == any(!vec4<bool>(true, false, arg_1.a.x, true)))));
    return ~(arg_1.b & _wgslsmith_mult_vec2_u32(var_1.b, select(_wgslsmith_div_vec2_u32(arg_1.b, vec2<u32>(1u, var_0.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.b.x, 1u), vec2<u32>(var_4.b.a.x, 46125u)), vec2<bool>(true, var_4.b.b))));
}

fn func_1() -> vec2<u32> {
    let var_0 = abs(-_wgslsmith_mult_i32(-27883i, 40807i));
    let var_1 = 1203f;
    global0 = array<vec4<i32>, 5>();
    let var_2 = ~(reverseBits(var_0) ^ (-u_input.b << (_wgslsmith_add_u32(0u, 18891u) % 32u))) != var_0;
    let var_3 = Struct_1(vec3<u32>(~5970u, ~abs(1u), ~(~26738u)), true, true);
    return func_2(vec2<u32>(firstTrailingBit(26749u), ~abs(~4245u)), Struct_5(select(vec2<bool>(true, true), vec2<bool>(true, var_3.b), vec2<bool>(!var_3.b, all(vec3<bool>(true, true, var_3.b)))), vec2<u32>(122046u, 6522u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> vec2<bool> {
    var var_0 = !select(!(!select(vec3<bool>(true, arg_0.b.b, arg_0.b.c), vec3<bool>(true, true, true), vec3<bool>(arg_0.b.b, true, arg_0.b.c))), !vec3<bool>(true, false & arg_0.b.b, -2147483647i <= u_input.a), vec3<bool>(any(select(vec3<bool>(true, arg_0.b.c, arg_0.b.c), vec3<bool>(false, false, arg_0.b.c), vec3<bool>(true, true, true))), true, arg_0.b.b));
    global0 = array<vec4<i32>, 5>();
    var var_1 = arg_0;
    let var_2 = vec4<u32>(1u, var_1.b.a.x, firstTrailingBit(var_1.b.a.x), (~func_1().x >> (var_1.b.a.x % 32u)) >> (_wgslsmith_div_u32(max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.a.x, 35574u, arg_0.b.a.x, var_1.b.a.x), vec4<u32>(var_1.b.a.x, arg_0.b.a.x, 4294967295u, 10102u))), firstLeadingBit(min(var_1.b.a.x, 1u))) % 32u));
    var var_3 = arg_0.b.b;
    return vec2<bool>(select(true, all(var_0.xz), !(_wgslsmith_f_op_f32(412f * var_1.d) > _wgslsmith_f_op_f32(exp2(var_1.a.x)))), all(vec2<bool>(true, true)));
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = arg_0;
    return _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1404f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1254f, -312f))))));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_5 {
    var var_0 = arg_1.b.c;
    var_0 = any(!select(vec3<bool>(u_input.a == u_input.a, !arg_1.b.b, select(arg_1.b.c, arg_1.b.b, false)), vec3<bool>(false, select(arg_1.b.b, false, arg_1.b.c), true || arg_1.b.b), true));
    var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - arg_1.d);
    global0 = array<vec4<i32>, 5>();
    return Struct_5(vec2<bool>(true, all(select(select(vec4<bool>(true, true, true, arg_1.b.c), vec4<bool>(false, arg_1.b.c, false, true), false), !vec4<bool>(arg_1.b.b, arg_1.b.b, arg_1.b.c, false), arg_1.b.b))), vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_1.b.a, arg_1.b.a)), arg_1.b.a.x | firstTrailingBit(4294967295u)), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_1.b.a.x, 1u, 14748u), arg_1.b.a.x), select(_wgslsmith_div_u32(arg_1.b.a.x, arg_1.b.a.x), arg_1.b.a.x, arg_1.b.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -784f) - _wgslsmith_f_op_f32(-1353f + 903f)), _wgslsmith_f_op_f32(floor(447f))), _wgslsmith_f_op_vec2_f32(func_5(~reverseBits(0u), func_4(Struct_3(vec3<f32>(-1659f, -1158f, -808f), Struct_1(vec3<u32>(0u, 31536u, 68274u), false, true), Struct_2(-337f), -523f), func_1()), select(countOneBits(u_input.b), -u_input.a, true), Struct_2(621f))), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), func_4(Struct_3(vec3<f32>(371f, 1000f, 1000f), Struct_1(vec3<u32>(22203u, 0u, 24501u), true, true), Struct_2(1875f), 241f), vec2<u32>(46646u, 107415u))))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-594f, -1514f, -1190f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-992f, -647f, 191f) - vec3<f32>(-1394f, -800f, -1391f)))), Struct_1(vec3<u32>(abs(4294967295u), ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(26768u, 44357u), vec2<u32>(0u, 0u))), true, true), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1855f, 145f)))), 1000f));
    var var_1 = (true & any(!select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, false, true), vec3<bool>(true, var_0.a.x, var_0.a.x)))) & any(select(select(var_0.a, !vec2<bool>(false, var_0.a.x), true), select(vec2<bool>(true, var_0.a.x), func_4(Struct_3(vec3<f32>(-127f, 1240f, -151f), Struct_1(vec3<u32>(1600u, 108424u, 1u), var_0.a.x, false), Struct_2(1265f), -503f), vec2<u32>(0u, var_0.b.x)), func_4(Struct_3(vec3<f32>(1000f, 515f, 685f), Struct_1(vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), true, var_0.a.x), Struct_2(-2325f), 697f), vec2<u32>(1u, 0u))), !all(vec3<bool>(true, var_0.a.x, var_0.a.x))));
    var var_2 = ~firstLeadingBit(select(vec4<u32>(~var_0.b.x, 0u, ~var_0.b.x, var_0.b.x & 0u), (vec4<u32>(57056u, 62077u, 16332u, 7572u) | vec4<u32>(4294967295u, var_0.b.x, 36856u, 111955u)) >> (max(vec4<u32>(1u, var_0.b.x, 31857u, var_0.b.x), vec4<u32>(var_0.b.x, 13499u, var_0.b.x, var_0.b.x)) % vec4<u32>(32u)), false));
    let var_3 = Struct_1(~(var_2.zzy >> (var_2.xyw % vec3<u32>(32u))), var_0.a.x, true);
    var var_4 = select(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(32486u, 0u, var_0.b.x, 43888u), vec4<u32>(35331u, 60006u, 34281u, var_2.x), vec4<bool>(false, false, var_0.a.x, true)), vec4<u32>(var_0.b.x, var_3.a.x, 8191u, var_3.a.x)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(45029u, 29029u, var_2.x, var_2.x)), vec4<u32>(1u, 10118u, var_0.b.x, 4294967295u))), vec4<u32>(_wgslsmith_clamp_u32(var_0.b.x | 1u, ~var_0.b.x, var_0.b.x), 0u, 4294967295u, 69451u), firstTrailingBit(abs(vec4<u32>(23062u, 0u, var_2.x, var_3.a.x))) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_2.x, var_3.a.x, 52142u), vec4<u32>(39130u, var_2.x, var_0.b.x, var_3.a.x)) >> (firstLeadingBit(vec4<u32>(14570u, 79450u, var_0.b.x, var_0.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u))), ~abs(vec4<u32>(var_0.b.x, var_2.x, ~var_3.a.x, var_2.x)), select(vec4<bool>(!all(vec4<bool>(var_0.a.x, true, var_0.a.x, false)), var_3.c, false, var_0.b.x < ~var_3.a.x), vec4<bool>(all(select(vec4<bool>(var_3.c, var_0.a.x, true, var_3.c), vec4<bool>(false, true, var_0.a.x, var_3.b), vec4<bool>(var_0.a.x, false, false, true))), !var_0.a.x, all(!vec3<bool>(false, false, var_3.b)), true), func_4(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1028f, 556f, 144f)), Struct_1(vec3<u32>(48266u, 0u, var_3.a.x), true, var_3.c), Struct_2(1101f), _wgslsmith_f_op_f32(f32(-1f) * -941f)), vec2<u32>(9712u, ~var_2.x)).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, u_input.b, u_input.b), vec3<i32>(u_input.a, 0i, u_input.a)), -(-vec3<i32>(u_input.a, u_input.b, 50757i) | (vec3<i32>(u_input.a, -2147483647i, u_input.a) & vec3<i32>(-16472i, -21826i, u_input.b)))));
}

