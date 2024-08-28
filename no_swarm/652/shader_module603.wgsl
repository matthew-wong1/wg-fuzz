struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: array<Struct_4, 28>;

var<private> global2: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(-29511i), Struct_3(5880i), Struct_3(1i), Struct_3(18497i), Struct_3(16810i), Struct_3(0i), Struct_3(2147483647i), Struct_3(-50709i), Struct_3(9685i), Struct_3(i32(-2147483648)), Struct_3(0i), Struct_3(39562i), Struct_3(-4449i));

var<private> global3: Struct_3;

var<private> global4: f32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> vec4<u32> {
    let var_0 = global1[_wgslsmith_index_u32(~32943u << (_wgslsmith_div_u32(max(0u, max(arg_0.a.x >> (u_input.c % 32u), reverseBits(u_input.c))), 1u) % 32u), 28u)];
    let var_1 = select(var_0.c, var_0.c, select(select(var_0.c, select(select(vec4<bool>(arg_1.x, arg_0.c.x, false, true), var_0.c, false), vec4<bool>(true, true, true, false), false), var_0.c), vec4<bool>(true, arg_0.c.x, false, true), any(var_0.c.wy)));
    var var_2 = select(arg_0.c.zy, select(!var_0.a.c.yy, vec2<bool>(true, all(var_0.c)), arg_0.c.x), select(all(!(!vec4<bool>(var_1.x, false, arg_1.x, arg_1.x))), -u_input.a == select(var_0.b.d, max(-2147483647i, 2147483647i), false), false));
    global1 = array<Struct_4, 28>();
    var var_3 = arg_0;
    return vec4<u32>(var_3.a.x, u_input.b.x, ~abs(var_0.a.a.x), arg_0.a.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(func_3(Struct_1(vec2<u32>(u_input.c, 26232u), 42949u, arg_0, 2147483647i), vec3<bool>(arg_0.x, false, arg_0.x)), firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 1u))), ~func_3(Struct_1(u_input.b.yz, u_input.c, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), -3523i), arg_0)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 1u, ~u_input.c, u_input.c), vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.b.xx, vec2<u32>(32871u, 0u)), 30981u >> (u_input.c % 32u), _wgslsmith_sub_u32(~18695u, firstTrailingBit(u_input.c)), 4294967295u)));
    var var_1 = arg_1.xw;
    var var_2 = _wgslsmith_mult_vec4_i32(arg_2, arg_2);
    let var_3 = abs(u_input.b) ^ _wgslsmith_clamp_vec3_u32(func_3(Struct_1(reverseBits(vec2<u32>(var_0.x, u_input.b.x)), countOneBits(u_input.b.x), vec3<bool>(arg_0.x, false, arg_0.x), 4532i), vec3<bool>(select(true, arg_0.x, false), true, true)).zxw, min(_wgslsmith_clamp_vec3_u32(vec3<u32>(69997u, 40067u, u_input.c), vec3<u32>(u_input.b.x, u_input.c, 0u), u_input.b), u_input.b << (u_input.b % vec3<u32>(32u))) ^ (u_input.b & (vec3<u32>(u_input.b.x, 6469u, 1u) ^ vec3<u32>(0u, var_0.x, var_0.x))), vec3<u32>(3288u, 68369u, ~u_input.b.x) | ~firstTrailingBit(vec3<u32>(13595u, var_0.x, u_input.b.x)));
    var var_4 = false;
    return Struct_2(-819f);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> bool {
    global2 = array<Struct_3, 13>();
    global2 = array<Struct_3, 13>();
    let var_0 = Struct_5(0u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~arg_1.x), 150643u) >> (u_input.b.x % 32u), 28u)], 2147483647i, vec2<bool>(true, true));
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.b.a.b, 0u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 0u, var_0.b.b.a.x, 0u), ~vec4<u32>(97466u, 0u, 32779u, 69450u))), 32023u), 13u)];
    global3 = global0[_wgslsmith_index_u32(abs(arg_1.x), 31u)];
    return !all(select(var_0.b.c, var_0.b.c, !select(var_0.b.c, vec4<bool>(var_0.d.x, true, var_0.b.b.c.x, var_0.b.a.c.x), vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.b.a.c.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: bool, arg_3: f32) -> f32 {
    var var_0 = u_input.b.xy;
    var var_1 = Struct_1(u_input.b.xy, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, abs(95449u)), 4294967295u, _wgslsmith_dot_vec2_u32(abs(u_input.b.yy), vec2<u32>(arg_1.b.a.a.x, var_0.x))) | 0u, select(arg_1.b.b.c, vec3<bool>(any(vec4<bool>(arg_2, arg_0.x, arg_1.b.a.c.x, false)), false, func_4(func_2(vec3<bool>(arg_1.d.x, false, arg_0.x), vec4<f32>(-1261f, -356f, -194f, 1000f), vec4<i32>(0i, 2147483647i, 0i, -38925i)), u_input.b.xx)), !(~global3.a > reverseBits(-2147483647i))), _wgslsmith_sub_i32(i32(-1i) * -u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -41391i, arg_1.b.b.d), vec3<i32>(0i, arg_1.b.b.d, global3.a) & -vec3<i32>(2196i, global3.a, -40949i))));
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(select(select(36870u, var_0.x, arg_0.x), ~21630u, false), firstTrailingBit(arg_1.a | var_1.b)), countOneBits(4294967295u)), 143u, select(var_1.c, select(vec3<bool>(false, any(vec3<bool>(arg_0.x, arg_2, false)), arg_1.b.c.x), arg_1.b.c.yxy, arg_1.b.a.c), !select(arg_1.b.c.xzx, var_1.c, false)), i32(-1i) * -2147483647i);
    let var_3 = select(select(arg_1.b.c, arg_1.b.c, vec4<bool>(var_1.c.x, reverseBits(var_1.d) < (u_input.a << (0u % 32u)), (90708i <= arg_1.c) && !arg_1.d.x, any(arg_0))), vec4<bool>(false, true, _wgslsmith_f_op_f32(-arg_3) >= -550f, arg_2), arg_0.x);
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(ceil(-1500f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2576f, -371f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1008f, -849f) + vec2<f32>(arg_3, arg_1.b.d.a)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(653f, 500f)))), _wgslsmith_f_op_f32(step(arg_1.b.d.a, arg_3))), func_4(arg_1.b.d, abs(~vec2<u32>(80817u, var_0.x))))) - vec2<f32>(1812f, arg_1.b.d.a));
    return _wgslsmith_f_op_f32(select(arg_1.b.d.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1812f, -1159f)), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1409f, -1431f), _wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), Struct_5(u_input.b.x, Struct_4(Struct_1(vec2<u32>(4294967295u, u_input.b.x), u_input.b.x, vec3<bool>(true, false, true), u_input.a), Struct_1(u_input.b.yz, u_input.c, vec3<bool>(true, true, true), -1i), vec4<bool>(true, false, true, false), Struct_2(-1132f)), global3.a, vec2<bool>(true, false)), false, -797f))), 895f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-503f, 2519f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(209f, 771f))))));
    let var_1 = vec3<bool>(false, !all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), u_input.a == global3.a);
    global3 = global2[_wgslsmith_index_u32((~(~(~0u)) << (u_input.b.x % 32u)) | func_3(Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(33670u, u_input.c)), u_input.b.x ^ 4444u, var_1, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 39634i, -2147483647i, -29580i), vec4<i32>(u_input.d, global3.a, u_input.a, u_input.d))), select(select(!vec3<bool>(false, var_1.x, true), vec3<bool>(true, var_1.x, true), var_1.x), select(vec3<bool>(false, var_1.x, true), select(var_1, var_1, var_1.x), false), vec3<bool>(global3.a < global3.a, var_1.x, any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))))).x, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_0.x)));
}

