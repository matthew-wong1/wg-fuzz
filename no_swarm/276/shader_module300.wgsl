struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = vec4<u32>(72112u, global0.x, u_input.b, ~_wgslsmith_add_u32(firstLeadingBit(u_input.a), u_input.a ^ global0.x));
    var var_0 = abs(~(-min(-2147483647i & u_input.c, ~(-42168i))));
    var_0 = 2048i;
    let var_1 = Struct_1(_wgslsmith_mod_i32(min(arg_0.d, ~(-4926i)), countOneBits((u_input.c & 55718i) & -arg_0.b.a)), ~vec4<i32>(~u_input.c, u_input.c, arg_0.d, _wgslsmith_sub_i32(firstLeadingBit(0i), abs(-1i))), 2502u > global0.x, true, u_input.c);
    let var_2 = Struct_1(0i, _wgslsmith_div_vec4_i32(reverseBits(-var_1.b), -var_1.b) ^ (firstTrailingBit(firstTrailingBit(var_1.b)) >> (vec4<u32>(global0.x, firstLeadingBit(0u), abs(u_input.a), ~50066u) % vec4<u32>(32u))), true, any(!vec4<bool>(true, var_1.d, !arg_0.b.c, false)), -2147483647i);
    return _wgslsmith_clamp_i32(u_input.c, 2147483647i ^ _wgslsmith_add_i32(~_wgslsmith_sub_i32(var_1.e, 2147483647i), _wgslsmith_mult_i32(~57610i, min(arg_0.b.e, -23717i))), 37889i);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool) -> vec4<u32> {
    global0 = ~vec4<u32>((arg_1.x | 20812u) ^ global0.x, 1u << ((0u | u_input.b) % 32u), global0.x, ~(~887u)) >> (max(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 34162u, arg_1.x, 53738u), vec4<u32>(u_input.a, 49240u, global0.x, u_input.a))), max(~(vec4<u32>(41393u, global0.x, global0.x, 4294967295u) ^ vec4<u32>(1u, u_input.a, global0.x, 4294967295u)), ~firstTrailingBit(vec4<u32>(32890u, 0u, 14228u, global0.x)))) % vec4<u32>(32u));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c.x, arg_0.a.x)) - arg_0.a.x)));
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(arg_0.d, -81439i), _wgslsmith_mult_i32(-2147483647i, u_input.c), 0i);
    global0 = select(~(_wgslsmith_div_vec4_u32(max(vec4<u32>(arg_1.x, 4294967295u, 6502u, arg_1.x), vec4<u32>(arg_1.x, u_input.b, global0.x, arg_1.x)), abs(vec4<u32>(4294967295u, 1u, arg_1.x, 0u))) << (select(min(vec4<u32>(20298u, arg_1.x, u_input.b, 4294967295u), vec4<u32>(0u, 4294967295u, u_input.a, global0.x)), ~vec4<u32>(u_input.b, 1u, 48422u, 39563u), false) % vec4<u32>(32u))), countOneBits(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(27023u, 39941u, 18632u, 26050u), vec4<u32>(42132u, u_input.a, global0.x, arg_1.x)), vec4<u32>(4294967295u, arg_1.x, u_input.b, arg_1.x))), all(!(!select(vec3<bool>(true, arg_2, arg_0.b.c), vec3<bool>(arg_2, true, true), vec3<bool>(true, false, arg_0.b.d)))));
    var var_2 = 4294967295u;
    return _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(11238u, u_input.b, global0.x, global0.x), vec4<u32>(21623u, global0.x, 67465u, u_input.b)), ~vec4<u32>(6903u, arg_1.x, 4294967295u, 49844u))), _wgslsmith_mult_vec4_u32(vec4<u32>(~global0.x ^ ~u_input.b, _wgslsmith_mult_u32(13884u, abs(1u)), 44903u, _wgslsmith_dot_vec3_u32(arg_1, ~vec3<u32>(global0.x, 0u, 0u))), vec4<u32>(34892u, ~(10674u & u_input.b), 1u, firstTrailingBit(~arg_1.x))));
}

fn func_2() -> bool {
    global0 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-768f, 2131f, _wgslsmith_f_op_f32(-106f + -1000f)))), Struct_1(0i, -_wgslsmith_div_vec4_i32(vec4<i32>(-32711i, u_input.c, u_input.c, u_input.c), vec4<i32>(1i, u_input.c, u_input.c, u_input.c)), _wgslsmith_f_op_f32(step(-825f, -1951f)) < -298f, true, reverseBits(func_3(Struct_2(vec3<f32>(1676f, 2269f, 920f), Struct_1(-59644i, vec4<i32>(0i, u_input.c, u_input.c, -2147483647i), false, true, -6904i), vec2<f32>(-625f, 1111f), u_input.c)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(771f, -513f) * vec2<f32>(-1079f, -2545f)))))), -(~1i)), vec3<u32>(~(~global0.x), 4294967295u, abs(u_input.b)) | max(global0.yzz, vec3<u32>(~u_input.b, ~global0.x, global0.x ^ 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1284f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-364f, -211f, false)))) >= 336f);
    let var_0 = false;
    global0 = vec4<u32>(_wgslsmith_add_u32(firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec2_u32(global0.yx, global0.yw))), global0.x), ~(~((global0.x << (6521u % 32u)) ^ 13438u)), u_input.b << (u_input.b % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, global0.x ^ 0u, global0.x | global0.x) >> (~(vec4<u32>(35072u, 4294967295u, u_input.b, global0.x) & vec4<u32>(global0.x, 1u, u_input.b, global0.x)) % vec4<u32>(32u)), select(~(~vec4<u32>(4067u, 4294967295u, global0.x, u_input.b)), vec4<u32>(~68359u, 1u, ~45649u, u_input.b), _wgslsmith_mult_u32(u_input.a, global0.x) > 14089u)));
    global0 = vec4<u32>(0u, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(90419u, 56505u), vec2<u32>(min(u_input.a, u_input.b), ~3652u), vec2<bool>(var_0, var_0)), (vec2<u32>(1u, global0.x) ^ abs(global0.xx)) << (vec2<u32>(_wgslsmith_mult_u32(u_input.a, global0.x), 20982u) % vec2<u32>(32u))), ~u_input.a & firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, global0.x), abs(global0.wx))), abs(u_input.b));
    global0 = vec4<u32>(~u_input.b, ~_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(global0.wzx, global0.wxy), ~max(global0.zxy, vec3<u32>(global0.x, u_input.a, 52484u))), ~countOneBits(12769u) ^ ~(~global0.x), ~func_4(Struct_2(vec3<f32>(869f, 1072f, 1116f), Struct_1(-3837i, vec4<i32>(-18388i, -65195i, u_input.c, u_input.c), var_0, false, u_input.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(-336f, -1999f) - vec2<f32>(183f, -444f)), -2147483647i), ~firstLeadingBit(vec3<u32>(65959u, 4294967295u, 1u)), true).x);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1492f - 1274f)))))) >= 2188f;
}

fn func_5(arg_0: bool) -> Struct_1 {
    let var_0 = global0.zx;
    let var_1 = ~(i32(-1i) * -2147483647i);
    global0 = ~(vec4<u32>(8585u, ~var_0.x, reverseBits(select(global0.x, global0.x, false)), _wgslsmith_div_u32(~u_input.b, global0.x)) & vec4<u32>(4294967295u, 31655u, 1u, var_0.x));
    return Struct_1(1i & -(-var_1 ^ 2147483647i), -vec4<i32>(~countOneBits(-1i), var_1, countOneBits(u_input.c), ~_wgslsmith_mult_i32(-39653i, 0i)), false, (-2147483647i == u_input.c) & !(!select(arg_0, arg_0, true)), ~_wgslsmith_div_i32((1i << (u_input.b % 32u)) ^ var_1, var_1));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = func_5(func_2());
    var var_1 = -vec3<i32>(-6792i, _wgslsmith_add_i32(var_0.a, min(u_input.c, 0i)) | reverseBits(abs(var_0.e)), arg_0.e);
    var var_2 = ~(firstLeadingBit(_wgslsmith_mult_u32(4294967295u, global0.x | 1u)) ^ _wgslsmith_sub_u32(u_input.b, _wgslsmith_mod_u32(60251u, 6263u)));
    let var_3 = countOneBits(~1i);
    return _wgslsmith_add_u32(countOneBits(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-825f, -1573f, 845f) - vec3<f32>(-1000f, 1000f, 1000f)), Struct_1(2147483647i, vec4<i32>(var_1.x, u_input.c, u_input.c, 24378i), arg_1, arg_1, var_0.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(-922f, -588f) * vec2<f32>(-488f, -203f)), arg_0.b.x & arg_0.e), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(global0.xzx, vec3<u32>(40339u, 37347u, 4294967295u)), vec3<u32>(global0.x, global0.x, global0.x)), true).x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, 0u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 89057u, u_input.a, u_input.b), vec4<u32>(0u, 4294967295u, global0.x, 11857u)) % 32u), min(~global0.x, 0u)), global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(_wgslsmith_sub_u32(~func_1(Struct_1(u_input.c, vec4<i32>(-2147483647i, u_input.c, 49498i, u_input.c), false, true, u_input.c), true), reverseBits(4294967295u)), 4294967295u, global0.x, _wgslsmith_sub_u32(40850u, 0u));
    global0 = abs(select(vec4<u32>(~_wgslsmith_add_u32(u_input.a, global0.x), 4294967295u, 0u, ~global0.x), ~min(vec4<u32>(global0.x, 0u, 85507u, u_input.a), vec4<u32>(global0.x, 0u, 0u, 162597u)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), any(vec4<bool>(false, false, true, false)))));
    var var_0 = _wgslsmith_add_vec3_i32(func_5(any(vec2<bool>(true, true))).b.wwy, vec3<i32>(-1i, -1i, _wgslsmith_div_i32(-u_input.c, ~u_input.c) << (_wgslsmith_clamp_u32(global0.x, firstTrailingBit(15356u), reverseBits(u_input.a)) % 32u)));
    global0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(~_wgslsmith_mod_u32(u_input.b, global0.x), select(firstLeadingBit(0u), 1u, true), ~(~global0.x), u_input.a), ~(~(~vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u)) & ~_wgslsmith_div_vec4_u32(vec4<u32>(57835u, 111298u, 0u, u_input.b), vec4<u32>(u_input.a, 0u, global0.x, global0.x))));
    global0 = ~(countOneBits(vec4<u32>(global0.x, global0.x, u_input.a, 17404u) | _wgslsmith_mult_vec4_u32(vec4<u32>(6190u, 89434u, u_input.b, global0.x), vec4<u32>(global0.x, 3494u, u_input.b, 51209u))) | vec4<u32>(u_input.b, 13659u, 19867u, global0.x));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-611f)), _wgslsmith_f_op_f32(max(-657f, -428f)), _wgslsmith_f_op_f32(step(-1960f, -1669f)), _wgslsmith_div_f32(-1000f, 313f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -109f), _wgslsmith_f_op_f32(f32(-1f) * -1279f), 686f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, -1764f), 855f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1691f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1341f - 284f), -1221f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1108f, -779f, 1629f, 505f))), vec4<f32>(325f, 1108f, -626f, -990f), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(297f, 1503f, 1000f, -556f) * vec4<f32>(1994f, 1000f, -791f, 1033f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-461f)), 1f), 915f, -595f, _wgslsmith_f_op_f32(460f + -163f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(58982u ^ _wgslsmith_mod_u32(u_input.b, u_input.b), global0.x, ~(u_input.b ^ 24649u), ~_wgslsmith_clamp_u32(1u, u_input.b, global0.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(abs(global0.x), _wgslsmith_sub_u32(u_input.b ^ u_input.a, ~global0.x), ~abs(10852u), 4294967295u), vec4<u32>(1u, 118779u, ~11317u, _wgslsmith_sub_u32(max(global0.x, 13856u), _wgslsmith_sub_u32(0u, global0.x)))), 58327u);
}

