struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32;

var<private> global2: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(267f, 470f, -483f), vec3<f32>(-176f, 151f, -151f), vec3<f32>(233f, -2609f, 546f), vec3<f32>(-305f, 278f, 114f), vec3<f32>(1000f, -3427f, -1495f), vec3<f32>(-246f, 154f, -642f), vec3<f32>(-1193f, -562f, 881f), vec3<f32>(977f, 1191f, -420f), vec3<f32>(-1024f, -578f, 328f), vec3<f32>(-365f, -107f, -1423f), vec3<f32>(-892f, 691f, 137f), vec3<f32>(558f, 1000f, -888f), vec3<f32>(-1081f, 832f, -1251f), vec3<f32>(241f, 144f, -902f));

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = Struct_2(Struct_1(countOneBits(_wgslsmith_sub_i32(19274i, arg_1.a) | (2147483647i >> (1u % 32u)))), arg_1, arg_1, reverseBits(vec4<u32>(u_input.a, _wgslsmith_mod_u32(84116u, u_input.a) & abs(u_input.a), reverseBits(u_input.a), firstLeadingBit(select(u_input.a, 1u, arg_0)))), arg_1);
    global1 = -1102f;
    global0 = 8530u;
    let var_1 = 1i;
    return 1i;
}

fn func_2() -> bool {
    var var_0 = ~(-(~0i));
    var_0 = _wgslsmith_div_i32(0i, func_3(true, Struct_1(-(-15947i >> (u_input.a % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2296f) + -525f)));
    let var_1 = !(!(!(!select(global3.yy, vec2<bool>(global3.x, true), global3.x))));
    var var_2 = Struct_2(Struct_1(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(26596i, 1i, 56718i), vec3<i32>(1i, 1i, 1i)))), Struct_1(_wgslsmith_add_i32(-(~(-57360i)), ~(-3383i))), Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(-60384i, i32(-1i) * -2147483647i), _wgslsmith_add_i32(_wgslsmith_add_i32(0i, 0i), 0i))), select(max(vec4<u32>(~50165u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(74241u, u_input.a, 31614u)), 1u, u_input.a), ~(~vec4<u32>(1u, 14361u, 11644u, 54503u))), _wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(78890u, 0u, u_input.a, 21937u), vec4<u32>(u_input.a, 29553u, u_input.a, u_input.a)), vec4<u32>(_wgslsmith_add_u32(u_input.a, 9594u), 35123u, 4294967295u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(15723u, u_input.a, u_input.a) << (vec3<u32>(44865u, u_input.a, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 56000u, 87015u)) > min(max(9146u, u_input.a), ~u_input.a)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_add_i32(2147483647i, -2147483647i), -30380i), firstTrailingBit(-vec3<i32>(40667i, 37270i, -2147483647i)))));
    let var_3 = vec3<u32>(1u, 1u, firstLeadingBit(62736u));
    return true;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global3 = vec4<bool>(!(-5511i >= arg_0.x), (true || global3.x) & true, any(global3.wy), func_2());
    global1 = _wgslsmith_f_op_f32(max(-905f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(881f, -536f) - _wgslsmith_f_op_f32(1566f * 642f)))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(472f, 414f), vec2<f32>(-1158f, -291f), global3.x))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -733f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(var_0)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -726f), var_0.x)), arg_1)));
    let var_2 = arg_2;
    return Struct_1(~(_wgslsmith_mult_i32(~arg_3.a, 58204i) ^ 15382i));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> i32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -716f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_0 = (1u << (1u % 32u)) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(~35680u, _wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 1u), arg_3.d), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 62112u)), vec4<u32>(arg_3.d.x, _wgslsmith_mult_u32(6789u, u_input.a), _wgslsmith_mult_u32(140911u, 0u), firstLeadingBit(32628u))) % 32u);
    var var_1 = vec3<bool>(abs(arg_3.d.x) <= 46174u, !all(global3.xyz), global3.x);
    let var_2 = -abs(select(firstTrailingBit(vec2<i32>(arg_1.a, 0i)), ~vec2<i32>(arg_1.a, arg_1.a), func_2())) | _wgslsmith_sub_vec2_i32(~reverseBits(-vec2<i32>(arg_2, 2147483647i)), ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2, -63724i), arg_0, vec2<i32>(7780i, arg_1.a)) >> (arg_3.d.yy % vec2<u32>(32u))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_add_i32(~arg_0.x, -firstTrailingBit(arg_2))), func_1(max(abs(-vec4<i32>(1i, arg_3.e.a, arg_1.a, arg_0.x)), vec4<i32>(-var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1.a, arg_0.x), vec3<i32>(arg_2, arg_1.a, -2147483647i)), arg_3.c.a, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_1.a, 15089i), vec3<i32>(arg_2, arg_1.a, var_2.x)))), !var_1.x, arg_3, arg_1), func_1(vec4<i32>(_wgslsmith_sub_i32(1i, -62970i), 1i, 18952i, abs(1i)), !any(!vec4<bool>(var_1.x, var_1.x, false, true)), Struct_2(Struct_1(_wgslsmith_clamp_i32(37616i, -2147483647i, 65097i)), Struct_1(-2147483647i), arg_1, abs(vec4<u32>(u_input.a, 84353u, arg_3.d.x, 1901u)) & ~arg_3.d, Struct_1(~arg_2)), func_1(_wgslsmith_mod_vec4_i32(~vec4<i32>(48861i, 0i, arg_2, arg_1.a), ~vec4<i32>(var_2.x, arg_0.x, -16744i, arg_0.x)), true & any(vec3<bool>(true, false, var_1.x)), arg_3, Struct_1(arg_2))), (~arg_3.d | ~_wgslsmith_clamp_vec4_u32(arg_3.d, arg_3.d, arg_3.d)) << (abs(_wgslsmith_mod_vec4_u32(~arg_3.d, ~vec4<u32>(arg_3.d.x, 50718u, 11434u, arg_3.d.x))) % vec4<u32>(32u)), arg_1);
    return min(countOneBits(arg_1.a) << (_wgslsmith_dot_vec2_u32(~arg_3.d.xz, ~arg_3.d.xy) % 32u), 13512i) | -(-arg_1.a >> (~reverseBits(20181u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(global3.xzw);
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(8036i, ~abs(1i), ~1i, func_4(vec2<i32>(1i, 1i), func_1(vec4<i32>(-36367i, -17205i, -2147483647i, -10833i), global3.x, Struct_2(Struct_1(21253i), Struct_1(8922i), Struct_1(-1i), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(0i)), Struct_1(2147483647i)), 1i, Struct_2(Struct_1(20445i), Struct_1(2147483647i), Struct_1(-20046i), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(-1i)))), vec4<i32>(-firstTrailingBit(9114i), ~(~2147483647i), ~75552i, -1i)));
    global0 = ~21698u;
    let var_2 = _wgslsmith_div_u32(~(~reverseBits(u_input.a)), 0u | u_input.a);
    let var_3 = Struct_1(~(i32(-1i) * -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(select(min(vec2<u32>(u_input.a, ~u_input.a), countOneBits(vec2<u32>(86083u, 11425u))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(var_2, 87260u), _wgslsmith_add_u32(var_2, 30152u)), abs(~var_2)), select(global3.zw, vec2<bool>(!global3.x, true), global3.x)), 4294967295u, 0i, _wgslsmith_sub_vec3_u32(min(vec3<u32>(4294967295u, var_2, 16663u) ^ vec3<u32>(3144u, 0u, 0u), ~vec3<u32>(6624u, u_input.a, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_2, 1u) >> (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(42903u, 1u, 0u))) & (firstTrailingBit(vec3<u32>(var_2, var_2, 1u)) << (~vec3<u32>(var_2, var_2, 1u) % vec3<u32>(32u))));
}

