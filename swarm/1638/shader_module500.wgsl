struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
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

var<private> global0: f32 = -1597f;

var<private> global1: i32;

var<private> global2: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_mod_i32(arg_0.x, ~(-1986i) << (0u % 32u));
    global1 = -(~1i & arg_0.x) & (var_0 | var_0);
    global1 = -1i;
    let var_1 = vec2<bool>(true, all(vec3<bool>(select(true, select(true, false, true), true), all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, false)))));
    var var_2 = Struct_1(false, ~56481u, -var_0, all(vec2<bool>(var_1.x, true)));
    return any(var_1);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = firstLeadingBit(arg_0.b);
    var var_1 = ~((reverseBits(~u_input.d) & max(_wgslsmith_mult_u32(60964u, 1u), min(63457u, 0u))) << (u_input.d % 32u));
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1454f - _wgslsmith_f_op_f32(f32(-1f) * -416f)), _wgslsmith_f_op_f32(min(-353f, _wgslsmith_f_op_f32(-103f + -142f)))) > _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -488f))), firstTrailingBit(1u), _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(u_input.b.x, u_input.c.x)), vec2<i32>(arg_0.c, 6907i)), ((1i & u_input.c.x) != -17773i) || func_3(u_input.c.zy, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -840f)))));
    let var_3 = arg_0;
    var_1 = firstLeadingBit(select(_wgslsmith_add_u32(firstLeadingBit(u_input.d), abs(var_2.b)), ~var_3.b, !var_2.a) >> (var_2.b % 32u));
    return Struct_1(true, _wgslsmith_div_u32(~(~var_2.b), 13625u), _wgslsmith_sub_i32(-_wgslsmith_sub_i32(var_3.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c, -2147483647i, -2147483647i, u_input.c.x), vec4<i32>(var_3.c, arg_0.c, var_2.c, arg_0.c))), countOneBits(_wgslsmith_mult_i32(8303i, -12635i) << (u_input.a.x % 32u))), true & all(select(select(vec4<bool>(var_3.d, arg_0.a, true, true), vec4<bool>(arg_0.d, true, false, var_3.a), vec4<bool>(false, false, var_3.a, var_3.a)), select(vec4<bool>(var_3.d, arg_1.x, var_3.a, false), vec4<bool>(arg_1.x, arg_0.a, true, var_2.d), arg_0.d), !vec4<bool>(var_3.a, true, var_2.d, arg_0.a))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1;
    var var_1 = u_input.a.wzz;
    var_1 = (_wgslsmith_sub_vec3_u32(u_input.a.xwz, _wgslsmith_mult_vec3_u32(u_input.a.xzy, _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b, 21208u, arg_1.b), vec3<u32>(var_0.b, 1u, 0u)))) & countOneBits(u_input.a.xzy)) >> (~_wgslsmith_clamp_vec3_u32(u_input.a.yzw, firstTrailingBit(vec3<u32>(arg_1.b, 22115u, 21960u)), ~(vec3<u32>(0u, 1u, arg_1.b) & u_input.a.xyz)) % vec3<u32>(32u));
    var var_2 = arg_1;
    var var_3 = arg_1;
    return 2428f;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32) -> Struct_1 {
    let var_0 = false;
    global1 = arg_0.c | 0i;
    global2 = !arg_0.d;
    let var_1 = Struct_1(arg_0.d, ~u_input.d, u_input.c.x >> (firstTrailingBit(_wgslsmith_sub_u32(min(91359u, u_input.a.x), countOneBits(14336u))) % 32u), false);
    var var_2 = true;
    return Struct_1(!select(false, true, false), ~1u, 0i, all(vec4<bool>(_wgslsmith_dot_vec2_i32(u_input.b.xw, vec2<i32>(-1i, arg_0.c)) < arg_0.c, !(var_1.d || false), _wgslsmith_div_u32(u_input.a.x, 1u) != 43219u, var_0)));
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = 1177f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1386f, -711f, -426f), vec3<f32>(-249f, 1349f, -1000f))), vec3<f32>(1f, 1f, 1f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2338f, -1190f, 375f)), vec3<f32>(946f, -2351f, 579f)))));
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.b, 31164u), firstTrailingBit(1u)), 4294967295u), _wgslsmith_mult_u32(firstTrailingBit(23997u), 0u), select(max(~arg_0.b, ~0u), arg_0.b, arg_0.a), _wgslsmith_clamp_u32(arg_0.b, 87353u, firstLeadingBit(20884u))), select(u_input.a, vec4<u32>(u_input.a.x << (~87771u % 32u), 48970u, ~_wgslsmith_clamp_u32(arg_0.b, 0u, arg_0.b), ~102870u & select(arg_0.b, arg_0.b, arg_0.d)), arg_0.d || !(false | arg_0.d)));
    var var_3 = !vec4<bool>(!arg_0.d, true, true, true);
    let var_4 = func_2(func_2(arg_0, var_3.zyx), select(!var_3.wxz, select(select(!var_3.yzz, select(var_3.yyy, vec3<bool>(false, var_3.x, false), true), var_3.zwy), !select(vec3<bool>(var_3.x, false, false), vec3<bool>(var_3.x, false, false), false), select(true, !arg_0.a, true | arg_0.a)), var_3.x));
    return Struct_1(!((select(var_4.b, arg_0.b, false) >> (select(1u, arg_0.b, arg_0.a) % 32u)) <= firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.b, 4294967295u, var_4.b, var_2.x), vec4<u32>(92137u, 32953u, 70552u, var_4.b)))), _wgslsmith_add_u32(select(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_4.b, var_2.x, 39884u, 16223u)), 4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.zzy, vec3<u32>(var_4.b, arg_0.b, var_4.b), u_input.a.wyy), ~vec3<u32>(0u, var_2.x, 9126u)), true), 1u), _wgslsmith_div_i32(abs(-16166i << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 21800u, var_4.b), u_input.a.wyz) % 32u)), _wgslsmith_div_i32(max(-arg_0.c, -65930i), 33233i)), false);
}

fn func_1() -> Struct_1 {
    var var_0 = func_6(func_5(Struct_1(false, 4294967295u, u_input.c.x & u_input.c.x, true), ~vec4<u32>(4294967295u, u_input.a.x, _wgslsmith_clamp_u32(1u, 0u, 41577u), ~41103u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~(-40658i), func_2(Struct_1(true, u_input.a.x, u_input.c.x, false), vec3<bool>(true, true, false)))) - _wgslsmith_f_op_f32(floor(-527f)))), u_input.c.x);
    return func_5(Struct_1(!var_0.a, 1u ^ ~var_0.b, u_input.c.x, var_0.a), u_input.a, -1286f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = _wgslsmith_dot_vec2_i32(u_input.b.xx, u_input.b.ww) & -1i;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -825f))));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, abs(u_input.d) ^ abs(1u), reverseBits(countOneBits(0u))), u_input.a.yxy);
    var var_2 = Struct_1(false || var_0.a, 45151u, 18482i, true);
    var var_3 = func_6(Struct_1(false, ~17675u, -45733i, var_0.d), func_1().c);
    var var_4 = !vec3<bool>(false, false, var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(u_input.c, u_input.b));
}

