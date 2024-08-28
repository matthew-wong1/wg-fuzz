struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(false, vec3<bool>(true, false, false), -7990i, 53039u);

var<private> global2: Struct_2 = Struct_2(Struct_1(true, vec3<bool>(true, true, true), -1i, 88471u), 174f, vec3<f32>(301f, 486f, 1278f), vec4<u32>(10052u, 10728u, 0u, 1u));

var<private> global3: bool = false;

var<private> global4: vec4<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = Struct_2(Struct_1(false, vec3<bool>(false, !global2.a.b.x, any(vec3<bool>(false, true, false))), global1.c, _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(0u, u_input.a)), global2.d.yw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + 1432f) - _wgslsmith_f_op_f32(f32(-1f) * -941f)), _wgslsmith_f_op_f32(global2.b * -371f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(f32(-1f) * -436f)))), vec3<f32>(-152f, _wgslsmith_f_op_f32(f32(-1f) * -1042f), -373f), _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a, ~1u, 11688u, ~u_input.b.x), ~reverseBits(vec4<u32>(1u, global2.a.d, arg_0, u_input.a))));
    var var_1 = Struct_3(var_0.a, var_0, var_0.a, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global2.a.d, u_input.a), ~18993u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(var_0.d, vec4<u32>(global1.d, 4294967295u, global1.d, 7153u)), abs(vec4<u32>(var_0.d.x, u_input.b.x, u_input.b.x, 0u)))), ~(~(~(~global2.d.x))));
    var var_2 = ~u_input.a;
    var var_3 = Struct_3(var_0.a, var_0, var_1.a, firstLeadingBit(~(global2.d.x | arg_0) | ~33384u), ~40197u);
    var var_4 = Struct_3(Struct_1(!any(!vec4<bool>(global1.a, true, var_0.a.b.x, false)), select(var_1.c.b, var_0.a.b, select(vec3<bool>(false, false, true), !vec3<bool>(true, var_1.c.a, global1.b.x), true)), select(_wgslsmith_sub_i32(_wgslsmith_div_i32(var_3.b.a.c, -33304i), -global4.x), min(1i, global4.x), true), (global2.a.d & 10247u) | ~var_3.e), Struct_2(Struct_1(false, !var_0.a.b, _wgslsmith_sub_i32(var_1.a.c, reverseBits(global1.c)), ~(var_3.a.d | 12685u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.b.c.x * -1428f), -2007f))), vec3<f32>(var_0.c.x, global2.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-650f, var_0.c.x)), -359f))), var_1.b.d), global2.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, arg_0), firstLeadingBit(global2.d.zx)), min(~var_3.b.d.x, ~0u)) | var_1.c.d, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(max(var_0.d.xww, u_input.b), u_input.b), (firstLeadingBit(var_3.b.a.d) & countOneBits(global2.a.d)) << ((_wgslsmith_sub_u32(var_3.b.d.x, 8191u) << (u_input.a % 32u)) % 32u)));
    return _wgslsmith_sub_i32(_wgslsmith_mult_i32(select(_wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, -2147483647i), _wgslsmith_sub_i32(global4.x, var_4.a.c)), global2.a.c, true), -14081i >> (arg_0 % 32u)), -15651i);
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = global2.a;
    var var_1 = Struct_1(global2.a.a, select(!select(!global2.a.b, vec3<bool>(global1.a, global1.a, true), true), vec3<bool>(!all(vec2<bool>(false, var_0.b.x)), true, var_0.b.x), global1.a), _wgslsmith_add_i32(-reverseBits(_wgslsmith_mod_i32(0i, global1.c)), ~(~(-2147483647i))), 4294967295u);
    global1 = global2.a;
    let var_2 = u_input.b.zx;
    var var_3 = firstLeadingBit(1i);
    return Struct_3(Struct_1(global1.c != ~global2.a.c, var_1.b, _wgslsmith_add_i32(func_3(2842u), _wgslsmith_dot_vec3_i32(global4.yyw, global4.zwy)) ^ 29332i, ~(abs(1u) >> (0u % 32u))), Struct_2(global2.a, _wgslsmith_f_op_f32(f32(-1f) * -383f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global2.c, vec3<f32>(-1996f, -859f, global2.b)))), global2.c), ~(~global2.d) ^ global2.d), Struct_1(var_0.a, vec3<bool>(true, true, global1.a), var_0.c, abs(1u)), arg_0, ~u_input.b.x);
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    global4 = -_wgslsmith_sub_vec4_i32(select(vec4<i32>(global1.c ^ 2147483647i, global1.c | global4.x, 0i, firstTrailingBit(-1i)), (vec4<i32>(-1i, global1.c, global1.c, global2.a.c) ^ vec4<i32>(global1.c, -3915i, global1.c, arg_0.c)) & -vec4<i32>(-2147483647i, -1i, global4.x, global2.a.c), select(select(vec4<bool>(global1.b.x, arg_0.a, global2.a.a, global1.a), vec4<bool>(global2.a.a, false, global1.a, global2.a.a), false), vec4<bool>(global1.b.x, global2.a.b.x, false, true), vec4<bool>(arg_0.a, true, true, false))), select(~vec4<i32>(arg_0.c, global2.a.c, 1i, 1i) << (~global2.d % vec4<u32>(32u)), -select(vec4<i32>(global4.x, -35349i, arg_0.c, -1i), vec4<i32>(-78249i, arg_0.c, global2.a.c, arg_0.c), false), select(select(vec4<bool>(true, false, arg_0.b.x, true), vec4<bool>(global2.a.b.x, arg_0.a, true, true), vec4<bool>(true, global1.a, false, arg_0.b.x)), vec4<bool>(arg_0.b.x, true, false, false), true)));
    let var_0 = func_2(~(~40958u));
    var var_1 = 32706u;
    let var_2 = func_2(arg_0.d);
    var var_3 = global4.xwx;
    return vec3<bool>(true, select(all(select(!vec4<bool>(false, true, global2.a.a, var_0.a.a), vec4<bool>(var_0.b.a.a, global1.a, false, var_0.c.a), !vec4<bool>(false, var_0.a.a, global2.a.a, var_2.a.b.x))), var_0.b.a.a, any(!vec3<bool>(global1.a, global1.a, true))), all(vec3<bool>(false, !(!global2.a.a), !any(vec4<bool>(var_0.b.a.b.x, true, var_2.a.b.x, true)))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec4_i32(-reverseBits(min(firstTrailingBit(vec4<i32>(8798i, global1.c, arg_0, global1.c)), vec4<i32>(40899i, -9503i, 18695i, arg_1.a.c))), _wgslsmith_mult_vec4_i32(select(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(13378i, global1.c, 2147483647i, 767i), vec4<i32>(1i, arg_0, global2.a.c, -60411i)), firstTrailingBit(vec4<i32>(0i, global2.a.c, arg_0, global1.c))), vec4<i32>(arg_1.b.a.c, arg_1.b.a.c, i32(-1i) * -2147483647i, select(global2.a.c, 2147483647i, false)), false), vec4<i32>(global1.c, -1i, -26051i, 2542i)), vec4<i32>(-2147483647i, -2147483647i, max(~8027i, _wgslsmith_div_i32(global2.a.c, global4.x)) >> (global1.d % 32u), countOneBits(-_wgslsmith_add_i32(0i, global2.a.c))));
    let var_1 = _wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(global4.zyz, min(vec3<i32>(-1i, 25687i, 0i), global4.yzx)), ~(-vec3<i32>(var_0.x, 18713i, 42826i)))), vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_clamp_i32(arg_0, arg_0, global1.c), arg_0, 1784i), ~global4.zwz >> (~(~(vec3<u32>(54314u, 4294967295u, 0u) | vec3<u32>(arg_1.e, 12312u, u_input.b.x))) % vec3<u32>(32u)));
    global0 = global2.a.d;
    global4 = vec4<i32>(~global1.c ^ _wgslsmith_div_i32(-2147483647i, func_3(4294967295u >> (global1.d % 32u))), 1i & _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(-54073i, -1i, arg_0, global4.x) & -var_0), global2.a.c | _wgslsmith_mult_i32(-(~67699i), (var_0.x & -33317i) << (~u_input.a % 32u)), _wgslsmith_div_i32(~var_0.x & arg_0, arg_1.c.c));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -685f)) - 220f) + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -314f), _wgslsmith_f_op_f32(trunc(arg_1.b.c.x)));
    return Struct_3(Struct_1(true, arg_1.c.b, var_0.x, ~(~global1.d)), func_2(arg_1.c.d | _wgslsmith_mult_u32(~global1.d, ~global2.a.d)).b, Struct_1(((true & global2.a.b.x) != true) && true, !vec3<bool>(global1.d > global2.a.d, all(vec3<bool>(false, false, false)), true), 14280i, 4294967295u), ~_wgslsmith_div_u32(global2.d.x, 12925u), reverseBits(arg_1.e) << (abs(arg_1.a.d) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(-44474i << (_wgslsmith_clamp_u32(60461u, u_input.a, 1u) % 32u), Struct_3(global2.a, Struct_2(Struct_1(true, func_1(global2.a), 2147483647i, 57041u & u_input.a), 146f, vec3<f32>(global2.b, _wgslsmith_f_op_f32(ceil(-2638f)), _wgslsmith_f_op_f32(sign(global2.b))), global2.d), global2.a, 15132u, global1.d), -463f, _wgslsmith_f_op_f32(ceil(1912f)));
    var var_1 = Struct_3(Struct_1(true, !(!var_0.b.a.b), firstTrailingBit(-_wgslsmith_add_i32(global1.c, 2147483647i)), u_input.b.x), Struct_2(global2.a, global2.c.x, vec3<f32>(-1815f, _wgslsmith_f_op_f32(sign(1113f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global2.c.x))))), global2.d), func_4(global4.x, Struct_3(Struct_1(true, func_1(Struct_1(global1.a, global1.b, global1.c, global2.d.x)), global2.a.c, 1u), Struct_2(func_4(var_0.a.c, Struct_3(Struct_1(true, global2.a.b, global2.a.c, global1.d), var_0.b, Struct_1(false, var_0.c.b, var_0.b.a.c, u_input.a), var_0.a.d, u_input.a), var_0.b.b, global2.b).a, _wgslsmith_f_op_f32(f32(-1f) * -2142f), func_2(18166u).b.c, func_2(14728u).b.d), func_4(-2147483647i << (u_input.b.x % 32u), func_4(var_0.a.c, Struct_3(global2.a, Struct_2(global2.a, var_0.b.b, global2.c, vec4<u32>(39747u, 33938u, 52944u, u_input.b.x)), var_0.c, var_0.d, global2.a.d), var_0.b.c.x, 1000f), _wgslsmith_div_f32(global2.c.x, 1000f), 349f).a, global1.d, 58421u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1056f * _wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-797f, var_0.b.c.x), _wgslsmith_f_op_f32(sign(global2.c.x)), true))).c, 37955u, func_2(1u).c.d);
    let var_2 = var_0.c;
    var_0 = func_4(abs(abs(var_1.b.a.c)) | var_0.a.c, Struct_3(Struct_1(~18622u <= (var_2.d ^ var_1.b.a.d), !(!vec3<bool>(false, false, var_1.b.a.a)), (var_0.b.a.c ^ -22315i) & var_1.c.c, _wgslsmith_clamp_u32(u_input.b.x, 66021u, countOneBits(u_input.a))), Struct_2(var_1.c, global2.b, global2.c, ~_wgslsmith_div_vec4_u32(global2.d, var_0.b.d)), global2.a, ~_wgslsmith_sub_u32(~0u, 1u), ~1u), var_0.b.b, var_1.b.c.x);
    global0 = max(abs(_wgslsmith_div_u32(0u, 86153u)), ~34126u);
    var_1 = func_2(_wgslsmith_add_u32(global2.a.d, _wgslsmith_sub_u32(abs(func_4(var_2.c, Struct_3(var_0.c, Struct_2(Struct_1(var_1.c.b.x, vec3<bool>(var_1.c.a, var_2.a, var_0.b.a.b.x), -40408i, var_1.e), var_0.b.b, vec3<f32>(var_0.b.c.x, -574f, 1846f), vec4<u32>(4294967295u, u_input.b.x, 98789u, global2.d.x)), var_1.b.a, u_input.b.x, 32268u), 345f, var_0.b.b).a.d), 0u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b.b)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(global1.c, Struct_3(var_1.a, var_1.b, Struct_1(var_0.b.a.b.x, var_2.b, 0i, 133106u), 1u, u_input.b.x), 691f, 354f).b.b - _wgslsmith_div_f32(-454f, 699f)), -1245f))) - _wgslsmith_f_op_f32(var_0.b.c.x - _wgslsmith_f_op_f32(f32(-1f) * -1706f)));
    let var_4 = func_4(8303i, func_2(~(~4294967295u)), _wgslsmith_f_op_f32(step(-991f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1306f + -251f) + -893f)))), -327f);
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3, _wgslsmith_f_op_f32(-var_4.b.b), _wgslsmith_f_op_f32(f32(-1f) * -1124f), 1f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(356f, -1738f, var_1.b.b, global2.c.x) + vec4<f32>(-1841f, global2.c.x, global2.c.x, global2.c.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(812f, var_4.b.b, -3190f, var_0.b.b), vec4<f32>(721f, 1102f, var_0.b.c.x, -504f))), vec4<bool>(var_0.c.a, true, true, var_0.a.a))), !vec4<bool>(false, var_0.a.b.x, var_1.a.a, true))))), vec3<i32>(firstLeadingBit(abs(var_0.c.c & global2.a.c)), -var_0.a.c, -countOneBits(global1.c << (4294967295u % 32u))), 828f, _wgslsmith_sub_vec4_i32(min(-vec4<i32>(var_2.c, -6102i, var_1.b.a.c, -2147483647i), select(vec4<i32>(var_2.c, -23407i, -13043i, var_2.c), ~vec4<i32>(-2147483647i, global2.a.c, global1.c, var_0.c.c), vec4<bool>(true, true, true, true))), firstTrailingBit(countOneBits(-vec4<i32>(var_0.b.a.c, global2.a.c, var_2.c, -1i)))));
}

