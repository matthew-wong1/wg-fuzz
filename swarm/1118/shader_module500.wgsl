struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> f32 {
    var var_0 = u_input.c;
    var var_1 = true;
    var var_2 = true;
    let var_3 = Struct_2(Struct_1(~countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, u_input.d.x, 1i), vec3<i32>(30063i, -64989i, 0i))), 987f, arg_0, 180f));
    var var_4 = Struct_2(var_3.a);
    return _wgslsmith_f_op_f32(f32(-1f) * -200f);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2, arg_3: vec4<bool>) -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, 2729i | arg_2.a.a.x, -6348i), vec3<i32>(_wgslsmith_mult_i32(1i, 24686i), -u_input.e, -1i)), arg_2.a.d, all(!vec2<bool>(arg_2.a.c, false)), -1000f));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(258f, _wgslsmith_f_op_f32(arg_2.a.d * _wgslsmith_f_op_f32(func_3(arg_3.x, u_input.b))), _wgslsmith_f_op_f32(var_0.a.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.b + var_0.a.d) - _wgslsmith_f_op_f32(max(-1684f, 251f)))), 823f)));
    var var_2 = Struct_1(reverseBits(select(vec3<i32>(arg_2.a.a.x, 25846i, 42300i) ^ _wgslsmith_mult_vec3_i32(arg_2.a.a, arg_2.a.a), ~reverseBits(vec3<i32>(1i, arg_1, u_input.d.x)), !select(arg_3.xxw, arg_3.xww, arg_3.x))), var_1.x, any(select(!vec3<bool>(arg_3.x, false, true), select(select(arg_3.zyw, arg_3.zzy, arg_3.x), arg_3.yxy, true), select(vec3<bool>(true, true, false), !arg_3.ywy, arg_3.x == true))), _wgslsmith_f_op_f32(986f + _wgslsmith_f_op_f32(ceil(arg_2.a.b))));
    var var_3 = select(select(select(!arg_3.wyz, arg_3.yyy, vec3<bool>(var_2.c, !arg_3.x, true)), vec3<bool>(true, false, all(vec3<bool>(var_2.c, false, false))), arg_2.a.c), !select(select(arg_3.xwy, vec3<bool>(true, arg_3.x, var_0.a.c), true), select(vec3<bool>(arg_2.a.c, arg_2.a.c, arg_3.x), select(vec3<bool>(arg_3.x, false, arg_3.x), arg_3.yxy, true), arg_3.zwx), true || select(arg_2.a.c, true, false)), all(select(vec3<bool>(false, var_2.c, arg_0.x < 4294967295u), !(!vec3<bool>(true, arg_3.x, false)), vec3<bool>(all(arg_3.xyz), true, all(vec2<bool>(arg_3.x, false))))));
    return -arg_2.a.a;
}

fn func_1() -> vec3<i32> {
    var var_0 = false;
    return _wgslsmith_clamp_vec3_i32(~firstTrailingBit(func_2(vec4<u32>(29112u, u_input.a, 0u, 33993u), ~7884i, Struct_2(Struct_1(vec3<i32>(0i, u_input.d.x, -30910i), 673f, false, -507f)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false))), func_2(u_input.b, 1i, Struct_2(Struct_1(~vec3<i32>(u_input.d.x, u_input.e, -12414i), _wgslsmith_f_op_f32(ceil(1092f)), true, 961f)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))), vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(u_input.e, abs(u_input.e))), -1i, u_input.d.x));
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = u_input.e;
    let var_1 = ~1u;
    var var_2 = Struct_2(Struct_1(vec3<i32>(arg_0.x, _wgslsmith_add_i32(1i, var_0 >> (u_input.b.x % 32u)), var_0 & ~(-878i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, 1417f), _wgslsmith_f_op_f32(trunc(1212f)), true))), true, _wgslsmith_div_f32(-1880f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-853f + -1267f), _wgslsmith_f_op_f32(f32(-1f) * -540f)))));
    var_2 = Struct_2(var_2.a);
    let var_3 = select(var_0 ^ u_input.d.x, ~(~(~(~57674i))), var_2.a.c);
    return Struct_1(vec3<i32>(-1i) * -(~var_2.a.a), -1316f, false, 1996f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = func_4(~(~reverseBits(vec3<i32>(arg_0.a.x, 18402i, -21436i) | vec3<i32>(-1i, 29209i, 1i))));
    var var_1 = func_4(vec3<i32>(abs(~u_input.d.x) & abs(select(u_input.d.x, u_input.e, false)), 0i, 24268i));
    var var_2 = arg_1;
    var var_3 = Struct_2(var_0);
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.b, arg_0.d, false))))), 925f) + vec2<f32>(var_0.b, var_3.a.d));
    return func_4(vec3<i32>(arg_0.a.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_2.a.a.x, var_3.a.a.x), vec3<i32>(var_0.a.x, u_input.e, 0i)), _wgslsmith_div_i32(func_2(~u_input.b, -2147483647i, Struct_2(Struct_1(arg_1.a.a, var_0.d, var_2.a.c, 1000f)), vec4<bool>(var_1.c, var_0.c, true, arg_2)).x, firstLeadingBit(-1385i))));
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(func_1().x, 1i, 1i, select(-45040i, arg_3.a.x, false & arg_3.c))), ~(-(~(~vec4<i32>(-38167i, -33133i, 2147483647i, arg_3.a.x)))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-24738i, arg_3.a.x) << (min(0u, 18723u) % 32u), _wgslsmith_sub_i32(35651i, arg_3.a.x), _wgslsmith_clamp_i32(23491i, i32(-1i) * -2147483647i, -arg_3.a.x), reverseBits(abs(2147483647i))), _wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.a.x, arg_3.a.x, 1i, u_input.d.x), vec4<i32>(18402i, -49086i, u_input.e, u_input.d.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -2147483647i, 1i, arg_3.a.x), vec4<i32>(24861i, -42287i, arg_3.a.x, u_input.d.x)), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.a.x, -1i, -1278i, 0i), vec4<i32>(arg_3.a.x, 1i, u_input.d.x, 2147483647i))))));
    let var_1 = Struct_1(vec3<i32>(arg_3.a.x, _wgslsmith_add_i32(select(firstLeadingBit(-10472i), 28303i << (arg_0 % 32u), arg_3.c), u_input.d.x), (~u_input.e & arg_3.a.x) & arg_3.a.x), _wgslsmith_f_op_f32(arg_3.b * _wgslsmith_f_op_f32(max(-1223f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, u_input.b)) - _wgslsmith_f_op_f32(-140f + arg_3.b))))), all(!select(vec4<bool>(arg_3.c, arg_3.c, false, false), vec4<bool>(false, arg_3.c, false, arg_3.c), vec4<bool>(false, arg_3.c, arg_3.c, arg_3.c))), arg_3.d);
    let var_2 = Struct_2(var_1);
    var var_3 = ~countOneBits(vec3<u32>(_wgslsmith_mod_u32(35420u, arg_0), u_input.b.x, arg_1));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec3<i32>(2147483647i, -(i32(-1i) * -25148i), u_input.d.x) ^ (vec3<i32>(u_input.e, u_input.e, u_input.d.x) >> (vec3<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.b.x, 34792u), 1u) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_clamp_u32(u_input.a, ~4294967295u, u_input.c);
    var var_2 = func_6(u_input.c, ~u_input.b.x, ~vec4<u32>(~1u, _wgslsmith_sub_u32(u_input.c | u_input.c, u_input.a), ~1u, firstLeadingBit(1u)), func_5(func_4(func_1()), Struct_2(Struct_1(~var_0, _wgslsmith_f_op_f32(select(-733f, 121f, true)), true, _wgslsmith_f_op_f32(602f + 1304f))), false));
    var_2 = func_6(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, u_input.a), 26720u), select(~u_input.c, u_input.c, true)), u_input.a, abs(countOneBits(vec4<u32>(_wgslsmith_sub_u32(118146u, 1u), abs(0u), 4294967295u, 88358u))), Struct_1(~vec3<i32>(14295i, _wgslsmith_mod_i32(var_2.a.x, -7557i), i32(-1i) * -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(222f, 132f, true)) + _wgslsmith_f_op_f32(-var_2.d))), 2147483647i >= reverseBits(_wgslsmith_div_i32(-45251i, var_2.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) * var_2.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b))))));
    var_2 = func_5(Struct_1(var_0, func_4(-(~var_2.a)).b, func_4(-var_2.a).c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -229f))))), Struct_2(Struct_1(~vec3<i32>(12062i, var_0.x, -2147483647i), _wgslsmith_f_op_f32(var_2.b - var_2.b), false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.b + var_2.d))))), !var_2.c);
    var var_3 = Struct_1(vec3<i32>(i32(-1i) * -21678i, i32(-1i) * -52506i, 1i), -1489f, var_2.c, 1366f);
    var var_4 = Struct_1(_wgslsmith_mult_vec3_i32(~(-vec3<i32>(0i, u_input.d.x, -1i)), var_2.a ^ ~var_2.a), -1000f, !(u_input.c > countOneBits(u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)), var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.yy, -1i, _wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 39548u, u_input.c), vec3<u32>(u_input.c, 45790u, u_input.a))), 69089u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(97468u, 25528u, u_input.a) | vec3<u32>(u_input.a, u_input.b.x, u_input.b.x), u_input.b.yyx, ~vec3<u32>(u_input.b.x, u_input.a, 4294967295u)), ~vec3<u32>(u_input.b.x, 27183u, u_input.c))), abs(func_6(u_input.b.x, 21772u, u_input.b, func_6(u_input.b.x >> (38696u % 32u), ~47479u, u_input.b, func_4(var_0))).a), countOneBits(~u_input.b.wz));
}

