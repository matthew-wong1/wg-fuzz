struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<i32> = vec4<i32>(27413i, 2147483647i, i32(-2147483648), 11038i);

var<private> global2: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    var var_0 = -1i;
    var var_1 = _wgslsmith_clamp_vec4_i32(-(min(vec4<i32>(2147483647i, global0.a.c.x, global0.a.c.x, 0i) ^ vec4<i32>(0i, -1i, global1.x, 0i), vec4<i32>(global1.x, global2.c.x, global0.a.c.x, u_input.a) << (vec4<u32>(global0.a.b.x, 0u, 38641u, 108063u) % vec4<u32>(32u))) & -abs(vec4<i32>(9413i, 0i, u_input.a, u_input.a))), vec4<i32>(global1.x ^ _wgslsmith_mod_i32(2147483647i, -1479i), _wgslsmith_mod_i32(-u_input.a, firstTrailingBit(i32(-1i) * -1i)), 1i, 2147483647i >> (~global0.a.b.x % 32u)), -abs(vec4<i32>(-1i, -global2.c.x, abs(-44850i), u_input.a)));
    let var_2 = ~vec4<i32>(u_input.a, _wgslsmith_mod_i32(min(0i, -1i), global1.x), u_input.a, -1i);
    var var_3 = min(firstTrailingBit(vec4<u32>(0u, _wgslsmith_mult_u32(~10209u, 1u), _wgslsmith_sub_u32(4294967295u, global0.c.x) | 4294967295u, ~(94094u >> (0u % 32u)))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(56760u, 1u, global0.a.b.x, 4294967295u), vec4<u32>(4294967295u, 45109u, global0.c.x, global0.a.b.x) | vec4<u32>(4294967295u, global0.c.x, global0.a.b.x, 4294967295u), min(vec4<u32>(global2.b.x, global2.b.x, 11171u, global0.a.b.x), vec4<u32>(global0.c.x, 4294967295u, 27023u, global2.b.x))) << (~_wgslsmith_div_vec4_u32(vec4<u32>(global2.b.x, global2.b.x, global0.c.x, 28732u), vec4<u32>(4294967295u, 89123u, global0.c.x, global2.b.x)) % vec4<u32>(32u)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(26747u, 0u, global2.b.x, global0.c.x), vec4<u32>(global2.b.x, 52681u, global0.c.x, 4294967295u))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    global0 = Struct_3(Struct_2(global2.a, global2.b, vec3<i32>(-1i, global0.a.c.x | ~(-11953i), -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.d * vec3<f32>(-538f, global2.d.x, global2.a.a))))), global2.a, select(max(vec3<u32>(~3105u, ~var_3.x, 0u), _wgslsmith_clamp_vec3_u32(var_3.yxy, ~vec3<u32>(global2.b.x, 1u, 68484u), vec3<u32>(35183u, global2.b.x, 25471u))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_3.x, 11399u), vec3<u32>(30078u, 11897u, global0.a.b.x) << (global0.c % vec3<u32>(32u))), ~_wgslsmith_dot_vec2_u32(var_3.xx, vec2<u32>(var_3.x, 4294967295u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(776u, 0u, 4294967295u, var_3.x), vec4<u32>(global0.c.x, 59453u, global0.a.b.x, global2.b.x))), !vec3<bool>(any(vec3<bool>(true, true, false)), true, true)));
    return true;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> vec4<bool> {
    let var_0 = true;
    global2 = Struct_2(global0.b, vec2<u32>(14673u, abs(abs(global0.a.b.x))), vec3<i32>((_wgslsmith_mod_i32(1i, global1.x) ^ u_input.a) << (((arg_1.x ^ global2.b.x) << (1u % 32u)) % 32u), 1i, -57475i), vec3<f32>(global0.a.a.a, arg_0, global0.a.d.x));
    var var_1 = (~vec4<i32>(_wgslsmith_div_i32(2147483647i, global1.x), 1i, countOneBits(-65990i), select(global2.c.x, global0.a.c.x, var_0)) << (vec4<u32>(firstTrailingBit(4294967295u), ~4294967295u & ~global0.a.b.x, ~global0.a.b.x, 1u) % vec4<u32>(32u))) >> (vec4<u32>(global0.a.b.x, global0.a.b.x, 0u ^ (0u | arg_1.x), arg_1.x) % vec4<u32>(32u));
    let var_2 = !(!(!var_0));
    var var_3 = ~global2.c.x;
    return !vec4<bool>(true, !(func_3() | true), var_2, func_3());
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: u32, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = max(vec2<i32>(global1.x, global1.x), vec2<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 7306i, 4223i, global1.x), vec4<i32>(arg_1.b.x, -2147483647i, -1i, 24258i))) >> (~37655u % 32u), _wgslsmith_add_i32(~arg_3.x, ~countOneBits(global2.c.x))));
    let var_1 = ~(~(~min(1u, 1u)));
    global2 = global0.a;
    let var_2 = _wgslsmith_f_op_f32(abs(global2.d.x));
    var var_3 = arg_3.x;
    return Struct_3(global0.a, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.b.a - global0.b.a), -157f, arg_0.x))))), vec3<u32>(abs(global2.b.x), _wgslsmith_mult_u32(~reverseBits(global0.a.b.x), 22446u ^ ~global0.c.x), _wgslsmith_dot_vec4_u32(firstTrailingBit(countOneBits(vec4<u32>(var_1, 3741u, 1012u, 1u))), (vec4<u32>(var_1, global0.a.b.x, arg_1.a.x, 4294967295u) | vec4<u32>(global0.c.x, 1u, 40607u, 13795u)) | ~vec4<u32>(global0.c.x, 1u, var_1, 1u))));
}

fn func_1(arg_0: vec4<f32>) -> vec2<u32> {
    global0 = func_4(vec2<bool>(!(all(vec3<bool>(true, false, false)) || true), select(all(vec2<bool>(true, true)), true, any(func_2(global0.a.a.a, vec4<u32>(4294967295u, global0.a.b.x, 1u, global0.c.x))))), Struct_4(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.b.x, ~global0.c.x), abs(global2.b)), min(vec2<i32>(_wgslsmith_sub_i32(global1.x, 0i), -2147483647i), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global1.x, -2147483647i), global2.c.zx), vec2<i32>(global0.a.c.x, global1.x), countOneBits(vec2<i32>(global1.x, -1i))))), 1u, -select(global2.c.zz, _wgslsmith_sub_vec2_i32(global2.c.yy, vec2<i32>(global1.x, -2147483647i)), true));
    var var_0 = global2.a.a;
    var var_1 = !select(vec2<bool>(true, true), func_2(global2.d.x, vec4<u32>(global2.b.x | global0.a.b.x, _wgslsmith_mod_u32(46993u, global0.a.b.x), ~global0.c.x, _wgslsmith_div_u32(global2.b.x, 0u))).xw, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3())));
    var var_2 = vec2<u32>(reverseBits(1u), _wgslsmith_sub_u32(global2.b.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, global2.b.x, 0u, 4294967295u)), reverseBits(vec4<u32>(global2.b.x, 1u, global0.a.b.x, global0.c.x))) | max(global2.b.x, ~global2.b.x)));
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4098u, ~(~global0.c.x)), countOneBits(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global0.a.b.x, var_2.x, 4294967295u, 0u)), vec4<u32>(global0.c.x, var_2.x, global0.a.b.x, 31962u))), 1u), vec3<u32>(1u, (global0.a.b.x & 27709u) & global0.c.x, func_4(select(vec2<bool>(false, var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x)), Struct_4(vec2<u32>(51015u, global2.b.x), global2.c.yz), ~24351u, vec2<i32>(49508i, global0.a.c.x)).c.x) | _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.x, global0.a.b.x, 0u) >> (global0.c % vec3<u32>(32u)), min(global0.c, global0.c)), global0.c));
    return ~max(abs(_wgslsmith_sub_vec2_u32(~global2.b, ~vec2<u32>(5449u, 4294967295u))), vec2<u32>(83735u, 13801u));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1459f * _wgslsmith_f_op_f32(sign(arg_2.d.x))), _wgslsmith_f_op_f32(-arg_2.d.x), -288f, global2.a.a);
    global2 = global0.a;
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_add_i32(0i, global0.a.c.x), -52320i);
    var var_2 = vec4<u32>(~global0.c.x, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, global2.b.x, 0u), vec3<u32>(global2.b.x, arg_2.b.x, global2.b.x) & vec3<u32>(arg_2.b.x, 1u, 4997u)), _wgslsmith_sub_u32(0u, global2.b.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(~arg_2.b.x, 1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.b.x, 73908u), vec2<u32>(4294967295u, 1u)))), 4294967295u, 319u);
    var_2 = vec4<u32>(~(27649u >> (_wgslsmith_clamp_u32(global2.b.x, 28816u, ~arg_2.b.x) % 32u)), arg_2.b.x, ~func_4(select(select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)), func_2(1096f, vec4<u32>(var_2.x, 48491u, 0u, arg_2.b.x)).xx), Struct_4(vec2<u32>(1u, 23504u), firstTrailingBit(vec2<i32>(12880i, -16323i))), 4294967295u, global0.a.c.yx).a.b.x, 1u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_u32((1u << (0u % 32u)) << (~global2.b.x % 32u), global2.b.x) ^ ~1u;
    let var_1 = ~(var_0 << (72211u % 32u));
    let var_2 = global0.a;
    var var_3 = !(!func_5(_wgslsmith_sub_u32(0u, var_0) > ~6154u, min(-2147483647i, ~(-23174i)), Struct_2(global2.a, func_1(vec4<f32>(-1176f, 2382f, -723f, global0.a.d.x)), vec3<i32>(-2147483647i, var_2.c.x, -2147483647i), global2.d), -(global0.a.c.x & 1i)));
    var var_4 = Struct_4(func_1(vec4<f32>(var_2.a.a, global2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1735f, 2180f)), var_2.a.a)), _wgslsmith_mod_vec2_i32(global2.c.xy, ~firstTrailingBit(~vec2<i32>(-924i, 12619i))));
    var_3 = !all(vec4<bool>(true, true, true, true));
    var var_5 = select(!(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true)), !(!func_2(_wgslsmith_f_op_f32(exp2(global0.b.a)), max(vec4<u32>(var_0, var_2.b.x, var_2.b.x, 4294967295u), vec4<u32>(var_4.a.x, 1u, global0.a.b.x, var_2.b.x)))), func_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(582f, global0.a.d.x)), _wgslsmith_f_op_f32(round(-1909f))))), vec4<u32>(global2.b.x, ~(~2974u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global0.c, global0.c), vec3<u32>(35854u, 2277u, 4294967295u)), ~_wgslsmith_mod_u32(var_0, 35612u))));
    var_5 = select(!(!vec4<bool>(any(vec2<bool>(true, var_5.x)), true, -1i > global2.c.x, func_2(-1593f, vec4<u32>(1u, var_2.b.x, global2.b.x, 1u)).x)), !(!func_2(-1000f, abs(vec4<u32>(4294967295u, var_2.b.x, global2.b.x, var_0)))), select(select(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1642f), select(vec4<u32>(var_2.b.x, var_0, var_4.a.x, 4294967295u), vec4<u32>(var_4.a.x, 22443u, var_2.b.x, var_1), var_5.x)), !select(vec4<bool>(true, var_5.x, false, true), vec4<bool>(true, var_5.x, true, false), vec4<bool>(true, var_5.x, true, false)), select(!vec4<bool>(false, true, var_5.x, var_5.x), select(vec4<bool>(true, var_5.x, var_5.x, true), vec4<bool>(false, var_5.x, var_5.x, var_5.x), var_5.x), any(vec3<bool>(false, var_5.x, true)))), select(!vec4<bool>(true, var_5.x, var_5.x, var_5.x), vec4<bool>(var_5.x, func_5(var_5.x, global2.c.x, global0.a, global2.c.x), true, true), true), vec4<bool>(true, true, true, true)));
    var_5 = !(!(!(!select(vec4<bool>(false, false, var_5.x, var_5.x), vec4<bool>(var_5.x, var_5.x, true, var_5.x), false))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(_wgslsmith_clamp_u32(var_0, var_2.b.x | var_0, global2.b.x)));
}

