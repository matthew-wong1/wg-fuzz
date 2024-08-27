struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(0i, 1i, 4191i, -5713i), vec4<i32>(-27534i, -25100i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -9670i, 47533i, -1i), vec4<i32>(28759i, i32(-2147483648), -30822i, 21339i), vec4<i32>(-33952i, 1i, -91950i, 36834i), vec4<i32>(30616i, 1i, i32(-2147483648), 34374i), vec4<i32>(-51776i, 2147483647i, -40340i, 12750i), vec4<i32>(1i, 1i, i32(-2147483648), 78322i), vec4<i32>(-4709i, 1i, -41440i, 8803i), vec4<i32>(32788i, 55307i, -1602i, -40672i), vec4<i32>(2147483647i, -1i, 1i, -37389i), vec4<i32>(i32(-2147483648), 14155i, -68220i, 24035i), vec4<i32>(-7064i, 1i, 32727i, 0i), vec4<i32>(-1i, 27207i, 3102i, -83072i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), 26986i), vec4<i32>(2147483647i, -1i, -35893i, 0i), vec4<i32>(-10844i, 46646i, 2147483647i, -17671i), vec4<i32>(1i, -15352i, -21616i, -54053i), vec4<i32>(0i, 1i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 18445i, -12441i, 24082i), vec4<i32>(1i, 220i, i32(-2147483648), -22378i), vec4<i32>(4137i, 2147483647i, 2147483647i, -27421i), vec4<i32>(22506i, -1533i, i32(-2147483648), -1i));

var<private> global1: Struct_2;

var<private> global2: array<i32, 32>;

var<private> global3: array<vec3<u32>, 12>;

var<private> global4: Struct_3 = Struct_3(vec3<bool>(true, false, false), false, vec4<f32>(305f, 1086f, 580f, 104f), vec3<f32>(1239f, 520f, -1666f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> vec4<i32> {
    global2 = array<i32, 32>();
    var var_0 = Struct_1(global1.c.a, true, global1.c.c);
    let var_1 = Struct_5(arg_1);
    global0 = array<vec4<i32>, 23>();
    let var_2 = global4.a.x;
    return u_input.e;
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = false & global1.a;
    let var_1 = -max(u_input.c, vec3<i32>(-(u_input.a & 16287i), abs(-global1.d), _wgslsmith_div_i32(global1.d, 1i)));
    var var_2 = Struct_4(vec4<u32>(66766u, ~_wgslsmith_clamp_u32(abs(u_input.b), firstTrailingBit(u_input.b), 1u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(19268u, 40433u), 18367u), reverseBits(select(4294967295u, 4294967295u, global1.c.b))), 4294967295u), 541u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -214f)))), _wgslsmith_mod_vec4_i32((~vec4<i32>(var_1.x, u_input.e.x, 51686i, u_input.e.x) ^ vec4<i32>(-9139i, -2147483647i, -9837i, 2147483647i)) & ~vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 29156i), func_3(Struct_3(vec3<bool>(true, global1.c.b, false), global1.c.b, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.c.c.x, -604f, 226f, global4.c.x))), vec3<f32>(-546f, 1638f, 587f)), Struct_2(true, ~0i, Struct_1(global1.c.a, false, global4.d), 0i, 1u), global4.d.x)));
    let var_3 = Struct_2(global1.a, var_2.d.x, global1.c, global2[_wgslsmith_index_u32(~(~u_input.b), 32u)], ~51188u);
    var var_4 = Struct_3(select(vec3<bool>(any(!global4.a), any(select(vec4<bool>(true, false, var_3.c.b, false), vec4<bool>(true, global1.c.b, global1.a, global4.a.x), vec4<bool>(false, false, global1.c.b, global4.a.x))), true), select(!(!global4.a), vec3<bool>(-31774i < var_1.x, global1.c.c.x < 167f, all(vec4<bool>(global4.a.x, true, var_3.c.b, true))), global4.a), !var_3.c.b), all(select(!select(global4.a, global4.a, global4.a.x), vec3<bool>(global1.c.b, select(var_3.c.b, false, false), true), select(select(global4.a, global4.a, global4.a), select(vec3<bool>(false, global1.a, true), vec3<bool>(var_3.a, true, var_3.a), true), true))), global4.c, vec3<f32>(_wgslsmith_f_op_f32(select(335f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.c.c.x, 178f, true))), !var_3.a)), var_2.c, _wgslsmith_f_op_f32(-1461f - _wgslsmith_f_op_f32(1449f * -1000f))));
    return Struct_4(vec4<u32>(52044u, min(global1.c.a.x, global1.e), _wgslsmith_mult_u32(~(665u | global1.c.a.x), firstLeadingBit(max(var_3.e, 20529u))), _wgslsmith_dot_vec2_u32(~(global1.c.a << (var_3.c.a % vec2<u32>(32u))), vec2<u32>(1u, u_input.b << (var_3.c.a.x % 32u)))), global1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) * var_3.c.c.x), func_3(Struct_3(!vec3<bool>(true, var_3.a, global4.b), var_4.b, vec4<f32>(global4.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1144f), 871f, 2319f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(314f, var_4.c.x, 1476f))), var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-197f + 1406f))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> i32 {
    let var_0 = min(27205u, firstTrailingBit(4294967295u));
    let var_1 = 0i;
    var var_2 = vec3<f32>(global4.d.x, -1610f, arg_1.c);
    let var_3 = Struct_3(select(global4.a, !vec3<bool>(arg_0.a, !global4.a.x, true), !all(vec3<bool>(true, false, true)) & global1.c.b), global1.c.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.c.c.x, 847f, -1511f, global1.c.c.x), vec4<f32>(368f, 1245f, 969f, 484f))), vec4<f32>(-453f, 674f, -496f, 720f))))), _wgslsmith_f_op_vec3_f32(global1.c.c * vec3<f32>(-168f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -147f)))));
    let var_4 = Struct_2(reverseBits(4294967295u) == countOneBits(u_input.b), (-1i | ~(-arg_0.b)) >> (1u % 32u), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(18338u, u_input.b ^ 1u), firstLeadingBit(vec2<u32>(4294967295u, arg_1.a.x)) ^ arg_0.c.a), _wgslsmith_f_op_f32(step(global4.d.x, arg_1.c)) <= _wgslsmith_f_op_f32(arg_1.c - -146f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(362f, -1000f, _wgslsmith_f_op_f32(-var_3.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1282f, -512f, -1655f))))), var_1, global1.c.a.x);
    return arg_0.d;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec3<i32>, arg_3: f32) -> Struct_3 {
    var var_0 = Struct_2(true, global1.d, global1.c, func_4(Struct_2(false, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 26431u), 32u)], _wgslsmith_mod_i32(-1i, -18012i)), global1.c, _wgslsmith_dot_vec2_i32(max(u_input.c.yy, u_input.c.yz), vec2<i32>(53964i, -2147483647i) << (vec2<u32>(u_input.b, global1.c.a.x) % vec2<u32>(32u))), countOneBits(~0u)), func_2(1i << (firstTrailingBit(22666u) % 32u))), arg_0);
    var var_1 = var_0.c;
    global2 = array<i32, 32>();
    let var_2 = countOneBits(min(0u, ~(~(~arg_0))));
    var var_3 = ~global3[_wgslsmith_index_u32(~global1.c.a.x, 12u)];
    return Struct_3(global4.a, -5730i > (_wgslsmith_clamp_i32(-46706i, _wgslsmith_sub_i32(2147483647i, global2[_wgslsmith_index_u32(1u, 32u)]), firstTrailingBit(1i)) & u_input.e.x), global4.c, vec3<f32>(global4.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-431f, -563f)), arg_3)), global4.d.x));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_5(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u), vec4<u32>(4294967295u, 0u, 37393u, 4294967295u), vec4<u32>(u_input.b, global1.c.a.x, 5758u, global1.c.a.x)), min(vec4<u32>(21042u, 0u, 40045u, 43817u), vec4<u32>(global1.e, global1.e, 1u, 4294967295u))), ~(~u_input.b)), _wgslsmith_f_op_f32(abs(2220f)), vec3<i32>(~2147483647i, _wgslsmith_mult_i32(~2147483647i, global2[_wgslsmith_index_u32(~min(26461u, 3115u), 32u)]), ~func_4(Struct_2(false, global1.d, global1.c, global2[_wgslsmith_index_u32(1u, 32u)], global1.c.a.x), func_2(global1.d))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), global1.c.c.x)));
    var var_1 = ~(-(firstTrailingBit(u_input.a) & (-u_input.c.x >> (u_input.b % 32u))));
    global4 = Struct_3(var_0.a, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, -944f)), -536f, global1.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.c.x * var_0.d.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global4.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1037f, -1622f, _wgslsmith_f_op_f32(floor(arg_0))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.d.x, global4.c.x, var_0.c.x))))));
    var var_2 = true;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -659f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2085f + 777f) + _wgslsmith_f_op_f32(floor(1463f))))) < func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global1.c.a.x ^ u_input.b), ~vec2<u32>(global1.c.a.x, u_input.b)), -298f, _wgslsmith_mod_vec3_i32(firstTrailingBit(-vec3<i32>(-20746i, 6538i, global2[_wgslsmith_index_u32(u_input.b, 32u)])), u_input.e.wxy), 3054f).c.x;
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.b;
    global0 = array<vec4<i32>, 23>();
    let var_1 = 1u;
    let var_2 = true;
    global3 = array<vec3<u32>, 12>();
    let var_3 = any(select(select(global4.a.yy, vec2<bool>(global1.c.b, false), !(!vec2<bool>(global1.a, false))), vec2<bool>(true, true), global4.a.zz));
    global0 = array<vec4<i32>, 23>();
    var var_4 = Struct_5(Struct_2(false, global1.d, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) - _wgslsmith_f_op_f32(1151f * global4.d.x))), global1.b, max(u_input.b, _wgslsmith_clamp_u32(4294967295u, ~4294967295u, select(0u, 8724u, global1.a)))));
    global1 = Struct_2(any(select(!select(vec4<bool>(true, var_3, false, var_2), vec4<bool>(var_3, global4.a.x, var_4.a.c.b, false), true), select(!vec4<bool>(var_2, var_2, global1.c.b, var_2), select(vec4<bool>(var_3, true, true, true), vec4<bool>(true, var_2, global4.b, var_3), var_4.a.a), vec4<bool>(false, var_2, var_2, true)), vec4<bool>(any(global4.a.yz), var_4.a.c.b, func_1(global4.c.x).b, !var_3))), 2147483647i | _wgslsmith_add_i32(~_wgslsmith_div_i32(1i, 2147483647i), -global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(var_4.a.c.a.x, 12u)], vec3<u32>(0u, 0u, var_4.a.c.a.x)), 32u)]), func_1(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-func_2(u_input.e.x).c))), _wgslsmith_sub_i32(u_input.d, 1i), ~_wgslsmith_mult_u32(u_input.b, _wgslsmith_div_u32(33439u, var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_2(-11754i).b, u_input.b), -1i);
}

