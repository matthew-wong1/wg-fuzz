struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_2(Struct_1(0i, vec3<i32>(0i, 1i, 0i), 25286u, 2147483647i)), vec4<f32>(-1000f, -1496f, -579f, 724f)), Struct_3(Struct_2(Struct_1(-1i, vec3<i32>(20494i, 0i, -21485i), 107312u, -1i)), vec4<f32>(176f, 1000f, -434f, 118f)), Struct_3(Struct_2(Struct_1(-11682i, vec3<i32>(2147483647i, -1i, 30411i), 4294967295u, 0i)), vec4<f32>(-660f, 1994f, 186f, 1016f)), Struct_3(Struct_2(Struct_1(2147483647i, vec3<i32>(-17006i, 0i, -8715i), 55850u, i32(-2147483648))), vec4<f32>(-741f, 916f, -270f, -914f)), Struct_3(Struct_2(Struct_1(19929i, vec3<i32>(i32(-2147483648), 0i, 1i), 4294967295u, 23828i)), vec4<f32>(-900f, 1558f, 1202f, 1454f)), Struct_3(Struct_2(Struct_1(2147483647i, vec3<i32>(40037i, -29549i, -1i), 165596u, 1i)), vec4<f32>(-1000f, -500f, 641f, 236f)));

var<private> global1: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    return select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))), true), !vec3<bool>(!(u_input.b <= u_input.c), (2147483647i > u_input.b) != false, (u_input.a != u_input.c) || all(vec3<bool>(true, false, false))));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec2<bool>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = -1i;
    var var_1 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(62994u, ~arg_0.a.a.c, 1378u), ~(~vec3<u32>(29084u, arg_0.a.a.c, 1u))), 4294967295u >> (0u % 32u), _wgslsmith_mult_u32(abs(arg_0.a.a.c), arg_0.a.a.c));
    let var_2 = all(!(!vec4<bool>(all(vec2<bool>(arg_2.x, arg_2.x)), arg_2.x, arg_2.x, true)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-675f, -939f)))), _wgslsmith_f_op_f32(f32(-1f) * -709f))) + -1134f);
    let var_4 = Struct_4(~select(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.a.c, var_1.x, var_1.x, 102109u), vec4<u32>(41645u, 18077u, 4294967295u, 69097u)), vec4<u32>(4294967295u, arg_0.a.a.c, arg_0.a.a.c, arg_0.a.a.c) | vec4<u32>(1u, var_1.x, 59854u, arg_0.a.a.c), vec4<u32>(arg_0.a.a.c, 1971u, 1u, 13327u) << (vec4<u32>(22536u, 46646u, 1u, arg_0.a.a.c) % vec4<u32>(32u))), vec4<u32>(abs(3895u), ~var_1.x, 47243u, arg_0.a.a.c), var_2), Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, arg_3.x, arg_1), u_input.d.yyz), u_input.d.zxx, _wgslsmith_dot_vec2_u32(vec2<u32>(32963u, var_1.x), var_1.zx), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.a.d, 0i, -39142i), u_input.d.zww))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0.b)))));
    return Struct_1(abs(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-4293i, _wgslsmith_div_i32(arg_1, arg_0.a.a.a), ~u_input.d.x, ~2147483647i))), max(select(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, 0i, -2147483647i), var_4.b.a.a.a, -u_input.d.x), reverseBits(countOneBits(vec3<i32>(arg_0.a.a.b.x, var_0, arg_1))), vec3<bool>(!arg_2.x, var_2, var_2 && true)), vec3<i32>(arg_3.x, var_4.b.a.a.b.x, -(2147483647i ^ arg_3.x))), arg_0.a.a.c, -(i32(-1i) * -17110i));
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(11030u, reverseBits(86419u), _wgslsmith_sub_u32(28031u, 1u)), abs(vec3<u32>(arg_0.c, 35640u, arg_0.c))), ~firstTrailingBit(~vec3<u32>(39407u, arg_0.c, 1u)), vec3<bool>(true, true, true)), ~(~(vec3<u32>(1u, 23963u, 1u) >> (vec3<u32>(arg_0.c, 25416u, arg_0.c) % vec3<u32>(32u)))) >> (reverseBits((vec3<u32>(arg_0.c, 0u, 1u) ^ vec3<u32>(arg_0.c, 27876u, 1u)) ^ (vec3<u32>(arg_0.c, arg_0.c, 71212u) & vec3<u32>(arg_0.c, 67665u, arg_0.c))) % vec3<u32>(32u)));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(arg_0.c >> (max(arg_0.c, arg_0.c) % 32u)), firstTrailingBit(max(countOneBits(0u), _wgslsmith_mult_u32(50290u, 0u))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.c, 0u, arg_0.c), abs(vec3<u32>(arg_0.c, 0u, 1u))), ~vec3<u32>(arg_0.c, 4294967295u, arg_0.c)), _wgslsmith_div_u32(countOneBits(~arg_0.c), (arg_0.c & arg_0.c) >> (~2275u % 32u))), select(~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_0.c, arg_0.c, 76549u, 1u)), countOneBits(vec4<u32>(4294967295u, arg_0.c, 63578u, arg_0.c))), firstLeadingBit(~vec4<u32>(arg_0.c, 77426u, arg_0.c, 7337u) | vec4<u32>(14394u, 0u, 0u, arg_0.c)), select(vec4<bool>(all(vec3<bool>(false, false, false)), u_input.d.x > arg_0.a, false, all(vec4<bool>(true, true, false, true))), vec4<bool>(select(false, false, true), true, true, true), true))), 6u)];
    let var_2 = var_1.a;
    let var_3 = Struct_4(~(~(~vec4<u32>(var_1.a.a.c, 0u, arg_0.c, 54441u))), Struct_3(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.b + var_1.b) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(572f, -343f, -1000f, -2198f), vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), true))))));
    let var_4 = var_3.a.x;
    return var_3;
}

fn func_1(arg_0: Struct_3) -> i32 {
    global1 = i32(-1i) * -53151i;
    let var_0 = func_4(func_3(global0[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_dot_vec4_i32(vec4<i32>(13117i, arg_0.a.a.d, -2147483647i, u_input.a), -u_input.d) ^ 1i, select(vec2<bool>(true, any(vec3<bool>(true, false, true))), vec2<bool>(true, true), all(func_2(vec4<u32>(arg_0.a.a.c, arg_0.a.a.c, 1u, arg_0.a.a.c)))), vec2<i32>(-2147483647i << (arg_0.a.a.c % 32u), -26365i) & u_input.d.zz));
    let var_1 = Struct_3(var_0.b.a, vec4<f32>(_wgslsmith_f_op_f32(-1210f + -709f), var_0.b.b.x, _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.x), var_0.b.b.x))), _wgslsmith_f_op_f32(ceil(-702f))));
    global1 = _wgslsmith_dot_vec3_i32(-(~vec3<i32>(reverseBits(var_1.a.a.a), u_input.a, -u_input.d.x)), vec3<i32>(var_0.b.a.a.b.x, _wgslsmith_mod_i32(firstLeadingBit(-var_1.a.a.b.x), ~u_input.c), _wgslsmith_div_i32(arg_0.a.a.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.a.a.d, var_1.a.a.b.x, 0i) & u_input.d, vec4<i32>(arg_0.a.a.a, -1i, 5034i, u_input.b) & u_input.d))));
    var var_2 = arg_0.b.x;
    return var_1.a.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(func_1(global0[_wgslsmith_index_u32(15898u, 6u)]), ~2147483647i)), min(select(vec2<i32>(u_input.b, u_input.d.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a), u_input.d.xx), true), u_input.d.yz)), select(u_input.d.zy, _wgslsmith_sub_vec2_i32(vec2<i32>(reverseBits(-1i), -u_input.b), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -2147483647i), u_input.d.zy)), vec2<bool>(true, any(vec3<bool>(true, true, true)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1062f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-631f, _wgslsmith_f_op_f32(-469f + 1000f))))) - -163f);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(912f, -301f), vec2<f32>(1914f, 1152f))))))));
    let var_3 = min(var_0.x, firstTrailingBit(-28798i));
    var var_4 = vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(~5795u, _wgslsmith_dot_vec3_u32(vec3<u32>(56175u, 4294967295u, 41320u), vec3<u32>(0u, 91386u, 49524u)), countOneBits(48240u)), vec3<u32>(1u, 1u, 1u)), ~(~(~(~4294967295u))), ~_wgslsmith_sub_u32(1u, abs(1u)), _wgslsmith_mult_u32(_wgslsmith_div_u32(max(0u, 1u), 1u), 0u) << ((func_4(func_4(Struct_1(var_0.x, vec3<i32>(var_3, 2147483647i, var_0.x), 67158u, -1i)).b.a.a).a.x << (1u % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-193f, -1047f, -234f), vec3<f32>(var_2.x, var_2.x, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_2.x, 1568f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-926f, var_2.x, var_2.x), vec3<f32>(554f, var_2.x, -815f)), vec3<f32>(-251f, var_2.x, -988f), vec3<bool>(true, true, true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, var_2.x, var_2.x)))))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 34985u, var_4.x), firstTrailingBit(7717u)), var_4.x) | (1u << ((58540u | max(var_4.x, var_4.x)) % 32u)));
}

