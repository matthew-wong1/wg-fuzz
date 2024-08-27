struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<bool>) -> u32 {
    global0 = arg_2;
    global0 = select(select(select(select(arg_2, !arg_2, vec4<bool>(global0.x, false, arg_2.x, global0.x)), vec4<bool>(true, arg_2.x | false, global0.x, any(arg_2)), true), vec4<bool>(_wgslsmith_f_op_f32(ceil(arg_1)) < _wgslsmith_f_op_f32(step(arg_1, arg_1)), !arg_2.x, true, any(arg_2.wwx)), false), vec4<bool>(all(vec4<bool>(!global0.x, true, global0.x, arg_2.x)), arg_2.x, true, true), all(global0.yyz));
    var var_0 = u_input.a;
    global0 = arg_2;
    let var_1 = _wgslsmith_dot_vec3_u32(min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, 1u, u_input.b.x), ~vec3<u32>(u_input.a, u_input.b.x, u_input.a) | ~vec3<u32>(32154u, u_input.a, 4294967295u), vec3<u32>(firstTrailingBit(2636u), reverseBits(0u), firstTrailingBit(0u))), ~vec3<u32>(14030u >> (u_input.b.x % 32u), 21340u << (u_input.b.x % 32u), _wgslsmith_add_u32(0u, 17477u))), min(vec3<u32>(reverseBits(u_input.a), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), firstTrailingBit(vec3<u32>(u_input.b.x, 0u, 20969u)))), vec3<u32>(~27684u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.b), u_input.b.x)));
    return _wgslsmith_clamp_u32(firstLeadingBit(~u_input.b.x), u_input.b.x, var_1);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    global0 = vec4<bool>(false, select(all(vec3<bool>(arg_0 & false, arg_1.a == arg_1.a, arg_0)), false, arg_0), true, any(!vec2<bool>(arg_0, false)));
    var var_0 = Struct_1(1100f, vec4<u32>(_wgslsmith_mult_u32(~u_input.a, arg_1.c.x), abs(func_3(u_input.c >> (26602u % 32u), _wgslsmith_f_op_f32(arg_1.a * arg_1.a), vec4<bool>(false, true, arg_0, arg_0))), 0u, func_3(~_wgslsmith_add_i32(-5734i, 0i), 1f, select(select(vec4<bool>(global0.x, arg_0, false, arg_0), vec4<bool>(true, false, false, arg_0), true), !vec4<bool>(true, true, global0.x, false), any(vec4<bool>(false, arg_0, true, arg_0))))), select(_wgslsmith_mod_vec3_u32(vec3<u32>(8051u, 1u, u_input.a) & (vec3<u32>(36379u, arg_1.c.x, 0u) ^ arg_1.b.xzy), vec3<u32>(arg_1.c.x, 1u, arg_1.c.x >> (u_input.b.x % 32u))), countOneBits(vec3<u32>(4294967295u, 115980u, 8625u)) >> (select(abs(vec3<u32>(u_input.a, 65621u, u_input.b.x)), arg_1.b.zxz, !global0.xxz) % vec3<u32>(32u)), any(select(select(vec4<bool>(true, global0.x, arg_0, global0.x), vec4<bool>(global0.x, arg_0, global0.x, global0.x), vec4<bool>(arg_0, false, global0.x, false)), !vec4<bool>(global0.x, false, arg_0, false), !vec4<bool>(true, false, false, arg_0)))));
    global0 = vec4<bool>(global0.x, true, all(vec4<bool>(true, (u_input.d <= u_input.c) & (-2147483647i < u_input.c), false, all(global0.xx))), countOneBits(_wgslsmith_mod_u32(u_input.b.x, reverseBits(19144u))) <= arg_1.b.x);
    var_0 = arg_1;
    var_0 = Struct_1(var_0.a, vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(arg_1.b, vec4<u32>(arg_1.c.x, var_0.b.x, 7539u, 25108u))), ~0u, reverseBits(0u), 4294967295u), _wgslsmith_sub_vec3_u32(~abs(arg_1.c) | ~arg_1.b.ywx, ~countOneBits(vec3<u32>(var_0.b.x, 9374u, 26585u) >> (var_0.c % vec3<u32>(32u)))));
    return ~arg_1.c.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = vec3<bool>(~(-5900i >> (func_2(global0.x, Struct_1(-1270f, vec4<u32>(1u, 78463u, arg_1.x, arg_1.x), vec3<u32>(arg_1.x, 4294967295u, arg_1.x))) % 32u)) == -36192i, any(global0.yyy), all(global0.xz));
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(firstTrailingBit(arg_1.x), firstTrailingBit(u_input.b.x)), _wgslsmith_mult_vec2_u32(u_input.b << (arg_1.yw % vec2<u32>(32u)), arg_1.wx)), vec2<u32>(~u_input.b.x, 31583u));
    var var_2 = 177f;
    let var_3 = arg_0.x;
    var var_4 = global0.yz;
    return Struct_1(-482f, vec4<u32>(u_input.b.x, _wgslsmith_div_u32(arg_1.x >> (u_input.b.x % 32u), 1u), ~(~func_2(var_4.x, Struct_1(-268f, arg_1, arg_1.xxz))), abs(u_input.b.x)), vec3<u32>(firstTrailingBit(_wgslsmith_mult_u32(arg_1.x, u_input.b.x)), select(~u_input.a, 1u, var_4.x || false) | ~(arg_1.x | 65775u), ~27786u));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>) -> vec4<f32> {
    var var_0 = arg_0.c;
    var var_1 = arg_2 & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, -2147483647i, -abs(1i)), abs(arg_2));
    let var_2 = arg_0.c.x;
    let var_3 = -u_input.d;
    var_0 = abs(((~arg_0.c | reverseBits(arg_0.c)) ^ (vec3<u32>(61915u, 59194u, 4294967295u) << ((vec3<u32>(var_0.x, 90408u, 67216u) & arg_0.b.yxy) % vec3<u32>(32u)))) | (~(arg_0.b.wzx | vec3<u32>(u_input.a, u_input.b.x, u_input.a)) << (vec3<u32>(arg_0.b.x | arg_0.b.x, 47195u, abs(arg_0.b.x)) % vec3<u32>(32u))));
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -600f), _wgslsmith_f_op_f32(f32(-1f) * -838f), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(1655f - _wgslsmith_f_op_f32(trunc(-948f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1662f - arg_0.a)));
}

fn func_5(arg_0: Struct_3) -> vec4<i32> {
    global0 = vec4<bool>(global0.x | global0.x, any(!vec2<bool>(arg_0.a, all(vec3<bool>(global0.x, false, arg_0.a)))), arg_0.a, false);
    global0 = select(vec4<bool>(select(true | global0.x, u_input.a <= ~arg_0.d, global0.x), all(vec3<bool>(true, true, true)) && (select(56697u, 1u, global0.x) < _wgslsmith_sub_u32(u_input.b.x, 1u)), arg_0.a == global0.x, true), vec4<bool>(_wgslsmith_sub_i32(1i & u_input.d, 2147483647i) <= _wgslsmith_add_i32(-u_input.d, -arg_0.b), any(vec4<bool>(arg_0.c.x > 128f, select(true, true, false), any(vec2<bool>(global0.x, global0.x)), all(global0.yyz))), true, global0.x | any(global0.xyw)), !vec4<bool>(arg_0.a | select(arg_0.a, global0.x, global0.x), !global0.x, any(vec4<bool>(arg_0.a, global0.x, global0.x, false)), any(vec4<bool>(false, false, global0.x, false)) || true));
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.c.x)))))), _wgslsmith_f_op_f32(-1359f + arg_0.c.x)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -796f);
    let var_2 = global0.x;
    return reverseBits(~_wgslsmith_clamp_vec4_i32(select(~vec4<i32>(u_input.c, u_input.d, 10835i, arg_0.b), vec4<i32>(arg_0.b, u_input.d, -2147483647i, arg_0.b), vec4<bool>(arg_0.a, false, false, arg_0.a)), -vec4<i32>(15737i, u_input.d, 11718i, arg_0.b), ~(vec4<i32>(2147483647i, -25200i, 0i, 41381i) | vec4<i32>(u_input.d, -12868i, 10077i, u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(true, global0.x, global0.x, global0.x);
    let var_0 = ~func_5(Struct_3(true, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.c, u_input.d), vec4<i32>(29449i, u_input.c, u_input.c, u_input.c)), vec4<i32>(0i, u_input.d, u_input.d, u_input.d)), _wgslsmith_f_op_vec4_f32(func_4(func_1(vec2<i32>(13091i, u_input.d), vec4<u32>(0u, u_input.a, 4294967295u, 3856u)), u_input.c, firstTrailingBit(vec3<i32>(-2147483647i, 15555i, u_input.c)))), u_input.a));
    var var_1 = func_1(-(vec2<i32>(20022i >> (u_input.b.x % 32u), var_0.x) << (u_input.b % vec2<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 73510u, u_input.b.x), vec3<u32>(115u, 1u, u_input.b.x)), 4294967295u)), max(~_wgslsmith_mult_u32(1u, 0u), ~(~u_input.b.x)), u_input.b.x, _wgslsmith_mult_u32(abs(max(u_input.b.x, 4294967295u)), u_input.a))).a;
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(14061u, 72670u, u_input.a) << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.a) % vec3<u32>(32u))), min(func_1(var_0.yx, vec4<u32>(92082u, u_input.b.x, 32234u, u_input.a)).c, ~vec3<u32>(u_input.a, 4294967295u, u_input.b.x))) & (_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, u_input.a), ~45190u) ^ 0u), abs(u_input.a), ~_wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(0u, 4294967295u, u_input.b.x, 128746u))), abs(vec4<u32>(71015u, 0u, u_input.b.x, 4671u)) >> (reverseBits(vec4<u32>(37801u, 1u, 1u, u_input.a)) % vec4<u32>(32u))));
    var var_3 = func_1(vec2<i32>(1i << (u_input.a % 32u), -reverseBits(-47930i)) | countOneBits(_wgslsmith_sub_vec2_i32(var_0.wz, -vec2<i32>(1i, -76018i))), _wgslsmith_add_vec4_u32(firstTrailingBit(func_1(vec2<i32>(u_input.d, 29389i) ^ var_0.zx, vec4<u32>(u_input.a, u_input.b.x, 1u, u_input.a)).b), min(~vec4<u32>(u_input.b.x, 26556u, 81909u, u_input.b.x), ~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.a) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.a), vec4<u32>(26458u, 9353u, 4294967295u, u_input.a)))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * var_3.a)) + -371f))), ~((var_3.b >> (select(var_3.b, var_3.b, vec4<bool>(true, false, false, global0.x)) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_3.b.x, var_3.b.x, u_input.b.x), ~var_3.b)), abs(var_3.b.wxw));
    var_2 = 0u;
    var_2 = 44101u;
    var_2 = _wgslsmith_div_u32(~1385u, _wgslsmith_sub_u32(~var_4.b.x, 36040u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~1u, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(var_3.c.x, 4294967295u), var_3.c.x ^ func_1(var_0.yz, vec4<u32>(2632u, var_3.c.x, 1u, 17531u)).b.x)), var_0.xw, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a, -1330f, var_4.a), vec3<f32>(-931f, 1362f, var_3.a), !global0.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(2389f - var_3.a), var_3.a), vec3<f32>(var_4.a, var_3.a, _wgslsmith_f_op_f32(var_4.a * 632f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a)))));
}

