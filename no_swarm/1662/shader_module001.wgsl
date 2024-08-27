struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: bool,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec4<u32>(1u, 4294967295u, 80617u, 4294967295u), vec3<i32>(59342i, 11002i, 2169i)), Struct_2(vec4<u32>(1u, 39872u, 36813u, 16096u), vec3<i32>(i32(-2147483648), -1i, 0i)), Struct_2(vec4<u32>(2951u, 20496u, 38127u, 4294967295u), vec3<i32>(23586i, 0i, -13679i)), Struct_2(vec4<u32>(0u, 17319u, 4294967295u, 0u), vec3<i32>(-67730i, 2147483647i, -1i)), Struct_2(vec4<u32>(1689u, 4294967295u, 4294967295u, 13545u), vec3<i32>(-47016i, -27144i, 1i)), Struct_2(vec4<u32>(21340u, 48044u, 20775u, 1u), vec3<i32>(-11378i, 2147483647i, -37937i)), Struct_2(vec4<u32>(4294967295u, 0u, 134116u, 1u), vec3<i32>(-21058i, 9713i, 2147483647i)), Struct_2(vec4<u32>(34287u, 66751u, 14306u, 86131u), vec3<i32>(-25668i, 31563i, -31748i)), Struct_2(vec4<u32>(1u, 30398u, 10931u, 92921u), vec3<i32>(-65493i, 1i, 1i)), Struct_2(vec4<u32>(4294967295u, 10730u, 3052u, 4294967295u), vec3<i32>(2147483647i, 0i, 2147483647i)), Struct_2(vec4<u32>(1u, 1u, 0u, 0u), vec3<i32>(534i, 2147483647i, i32(-2147483648))), Struct_2(vec4<u32>(4294967295u, 44632u, 0u, 37336u), vec3<i32>(-44475i, 28562i, 2147483647i)), Struct_2(vec4<u32>(2417u, 0u, 54440u, 2754u), vec3<i32>(-1i, 0i, 22591i)), Struct_2(vec4<u32>(21983u, 11965u, 16329u, 6065u), vec3<i32>(9298i, 17175i, -14904i)), Struct_2(vec4<u32>(1u, 0u, 12905u, 63519u), vec3<i32>(29759i, 43574i, -6705i)), Struct_2(vec4<u32>(84032u, 1745u, 4294967295u, 1u), vec3<i32>(7330i, 0i, -30417i)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 9403u), vec3<i32>(8959i, 38908i, -34593i)), Struct_2(vec4<u32>(35635u, 6043u, 4294967295u, 21313u), vec3<i32>(0i, 17095i, -39989i)), Struct_2(vec4<u32>(61627u, 4294967295u, 1u, 14087u), vec3<i32>(1i, 2147483647i, -13280i)), Struct_2(vec4<u32>(1u, 1u, 18466u, 38011u), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648))), Struct_2(vec4<u32>(55414u, 1u, 1u, 0u), vec3<i32>(0i, 15869i, i32(-2147483648))), Struct_2(vec4<u32>(55670u, 0u, 17384u, 96623u), vec3<i32>(11089i, -39828i, 30379i)), Struct_2(vec4<u32>(4294967295u, 71025u, 1u, 4294967295u), vec3<i32>(23991i, 33041i, -15344i)), Struct_2(vec4<u32>(0u, 0u, 13010u, 0u), vec3<i32>(-27265i, i32(-2147483648), i32(-2147483648))), Struct_2(vec4<u32>(0u, 10202u, 4294967295u, 63063u), vec3<i32>(27761i, 2147483647i, -1i)));

var<private> global1: array<bool, 1>;

var<private> global2: i32 = -66156i;

var<private> global3: array<i32, 13>;

var<private> global4: array<Struct_1, 32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    global2 = u_input.b.x;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(124f, 1231f, 421f) * vec3<f32>(513f, -1434f, 567f)))))));
    let var_1 = _wgslsmith_mult_u32(~(~4294967295u), ~(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)));
    global2 = ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(~abs(global3[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_clamp_i32(~2147483647i, 7199i, global3[_wgslsmith_index_u32(102090u, 13u)])), _wgslsmith_add_i32(-21013i, ~global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 0u, var_1), 13u)]), firstTrailingBit(-30367i));
    global3 = array<i32, 13>();
    return reverseBits(-min(-31275i, global3[_wgslsmith_index_u32(abs(~var_1), 13u)]));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: bool) -> i32 {
    var var_0 = countOneBits(~(-23176i)) | abs(u_input.b.x);
    global4 = array<Struct_1, 32>();
    global4 = array<Struct_1, 32>();
    global3 = array<i32, 13>();
    var_0 = arg_1;
    return -65325i >> ((61359u >> (u_input.a.x % 32u)) % 32u);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: bool) -> bool {
    var var_0 = vec3<f32>(-1528f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-149f - -1714f), _wgslsmith_div_f32(-498f, 1334f), global1[_wgslsmith_index_u32(65867u, 1u)]))), -897f);
    var var_1 = false;
    let var_2 = Struct_3(Struct_1(var_0.x, false), abs(func_4(arg_0, func_3(), !arg_0.x & global1[_wgslsmith_index_u32(1u, 1u)])), u_input.b);
    global1 = array<bool, 1>();
    var var_3 = select(u_input.b, vec3<i32>(reverseBits(-81902i), -16733i, i32(-1i) * -global3[_wgslsmith_index_u32(u_input.a.x, 13u)]), !vec3<bool>(var_2.a.b, false, var_2.a.b)) & -var_2.c;
    return any(select(select(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], false, true, arg_0.x), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a.x, 1u)], arg_0.x), true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 1u)] | global1[_wgslsmith_index_u32(29647u, 1u)], arg_2), false), !vec4<bool>(select(false, true, arg_2), !arg_0.x, u_input.a.x > u_input.a.x, true), true));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>) -> Struct_3 {
    global4 = array<Struct_1, 32>();
    global3 = array<i32, 13>();
    let var_0 = !global1[_wgslsmith_index_u32(min(~(~u_input.a.x) >> (1u % 32u), reverseBits(1u)), 1u)];
    global1 = array<bool, 1>();
    let var_1 = !any(vec4<bool>(global1[_wgslsmith_index_u32(~(~u_input.a.x), 1u)], true | func_2(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], false, true), u_input.b.xy, var_0), !var_0, true | global1[_wgslsmith_index_u32(1u, 1u)]));
    return Struct_3(global4[_wgslsmith_index_u32(u_input.a.x, 32u)], select(2147483647i, 1i, u_input.a.x > u_input.a.x), -firstTrailingBit(firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.b.x, 0i, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -693f), vec2<f32>(-598f, -936f)))))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1303f, -396f)))), _wgslsmith_add_vec3_i32(u_input.b, u_input.b));
    var var_1 = firstLeadingBit(_wgslsmith_clamp_vec2_u32(u_input.a, max(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a, u_input.a)), select(min(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(14770u, 4294967295u)), vec2<u32>(45033u, u_input.a.x), any(vec4<bool>(true, var_0.a.b, false, var_0.a.b)))), ~vec2<u32>(4294967295u, 0u)));
    var var_2 = reverseBits(firstLeadingBit(abs(vec4<u32>(var_1.x, var_1.x, 50349u, abs(u_input.a.x)))));
    let var_3 = -849f;
    var var_4 = Struct_2(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, u_input.a.x, u_input.a.x, var_2.x), _wgslsmith_add_vec4_u32(vec4<u32>(21507u, 1u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, var_2.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(18225u, var_1.x, 0u, var_1.x), vec4<u32>(1u, var_2.x, var_2.x, var_1.x)))) << ((vec4<u32>(u_input.a.x, _wgslsmith_add_u32(var_2.x, 1u), var_1.x & var_2.x, ~4294967295u) >> (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a.x, 73900u, 4294967295u, u_input.a.x)), select(vec4<u32>(var_1.x, u_input.a.x, 3708u, 49569u), vec4<u32>(var_1.x, u_input.a.x, 10424u, 1u), global1[_wgslsmith_index_u32(var_1.x, 1u)])) % vec4<u32>(32u))) % vec4<u32>(32u)), -_wgslsmith_div_vec3_i32(vec3<i32>(-global3[_wgslsmith_index_u32(1u, 13u)], min(1i, 30696i), ~global3[_wgslsmith_index_u32(var_1.x, 13u)]), vec3<i32>(0i, 35891i, -2147483647i) ^ vec3<i32>(u_input.b.x, global3[_wgslsmith_index_u32(83098u, 13u)], global3[_wgslsmith_index_u32(var_2.x, 13u)])));
    let var_5 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, -431f)) + vec2<f32>(-585f, 776f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(427f, -353f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, var_0.a.a)), global3[_wgslsmith_index_u32(u_input.a.x, 13u)] > global3[_wgslsmith_index_u32(var_1.x, 13u)])) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1656f, -1000f))))), ~(-abs(firstTrailingBit(var_0.c))));
    global4 = array<Struct_1, 32>();
    global3 = array<i32, 13>();
    let var_6 = Struct_5(global0[_wgslsmith_index_u32(max(42748u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_1.x, 22956u), ~vec3<u32>(4294967295u, var_4.a.x, var_4.a.x))), 25u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-max(vec4<i32>(var_4.b.x, var_4.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(4016u, 13u)], -30388i, global3[_wgslsmith_index_u32(38179u, 13u)]), vec3<i32>(0i, var_0.b, u_input.b.x)), firstTrailingBit(u_input.b.x)), vec4<i32>(-23238i, i32(-1i) * -2147483647i, _wgslsmith_add_i32(1i, var_6.a.b.x), -1i)));
}

