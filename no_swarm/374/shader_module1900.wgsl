struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 34347u);

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, true, false, false), 1i, vec2<f32>(651f, -680f), 1i, vec4<bool>(true, true, true, true));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(select(select(!select(global2.a, vec4<bool>(global2.a.x, false, true, global2.e.x), true), vec4<bool>(true, global1.x, global2.a.x, global1.x | global2.a.x), any(vec2<bool>(false, global2.e.x))), !vec4<bool>(!global2.a.x, true, true, any(global2.a.yx)), true), u_input.b.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(global2.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(-global2.c.x)) - vec2<f32>(_wgslsmith_f_op_f32(sign(-166f)), _wgslsmith_f_op_f32(ceil(184f)))))), 1i, vec4<bool>(any(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global2.a.x, global2.e.x, global1.x), vec3<bool>(true, global2.e.x, global2.a.x))) & all(global2.a.xzw), select(global1.x, true, true), !(false || !global1.x), (global2.c.x >= _wgslsmith_div_f32(-593f, global2.c.x)) && false));
    let var_1 = vec4<bool>(all(select(vec3<bool>(global2.e.x, true, 0u >= global0.x), !select(vec3<bool>(global2.a.x, global2.e.x, var_0.a.x), var_0.a.xxz, var_0.a.wzw), select(var_0.a.zzx, !var_0.a.yyz, var_0.e.yyx))), true || global2.a.x, global1.x, global2.a.x);
    global2 = Struct_1(var_1, _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_sub_i32(2147483647i, u_input.b.x), global2.b, 1i, u_input.b.x), vec4<i32>(_wgslsmith_mod_i32(0i, global2.d), countOneBits(u_input.b.x), _wgslsmith_add_i32(15663i << (1u % 32u), u_input.b.x), -2147483647i << (reverseBits(global0.x) % 32u))), _wgslsmith_f_op_vec2_f32(-global2.c), _wgslsmith_mult_i32(-19347i, ~var_0.b), global2.a);
    var var_2 = Struct_1(!global2.a, -16196i, global2.c, 2147483647i, !(!select(global2.e, !var_1, true)));
    global0 = ~select(u_input.c.xx, u_input.a.zx, vec2<bool>(true, true));
    return -_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~countOneBits(vec4<i32>(7894i, -1i, var_0.d, global2.d)), vec4<i32>(var_0.b, var_0.d & global2.d, _wgslsmith_div_i32(0i, u_input.b.x), -u_input.b.x)), abs(~_wgslsmith_div_vec4_i32(vec4<i32>(-24818i, -35705i, -38302i, u_input.b.x), vec4<i32>(global2.b, -2147483647i, 0i, var_2.b))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(-1i) * -func_3();
    return arg_3;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-56623i, -2147483647i, arg_1.b, func_3().x), abs(-(~vec4<i32>(arg_2.d, arg_2.b, 2147483647i, -2147483647i))), vec4<i32>(-23060i, ~(arg_1.b << (arg_0.x % 32u)), -(~arg_1.d), reverseBits(-arg_1.d))), -(-vec4<i32>(u_input.b.x, arg_2.b, -2147483647i, u_input.b.x) << (u_input.a % vec4<u32>(32u))));
    global2 = Struct_1(vec4<bool>(select(global2.c.x > _wgslsmith_f_op_f32(global2.c.x - global2.c.x), all(!arg_1.a.xz), func_2(arg_2.b, Struct_1(global2.e, 35920i, vec2<f32>(-258f, 766f), arg_1.b, global2.a), arg_0.x, arg_2).a.x), 75120u < (7970u << (u_input.c.x % 32u)), !(!all(vec2<bool>(arg_2.a.x, true))), any(vec3<bool>(true, false, true))), -19948i, arg_1.c, (i32(-1i) * -18806i) | global2.d, vec4<bool>(!(arg_0.x != u_input.d) | (-10595i == arg_1.b), any(vec2<bool>(global2.a.x, global1.x)), func_2(select(global2.b, arg_2.b, global2.a.x), func_2(arg_1.b, arg_1, 31357u, arg_2), ~(~u_input.c.x), arg_1).a.x, true));
    global0 = _wgslsmith_mod_vec2_u32(select(~vec2<u32>(121001u, 7242u ^ arg_0.x), _wgslsmith_div_vec2_u32(select(vec2<u32>(4294967295u, arg_0.x), arg_0, all(vec4<bool>(true, global1.x, arg_2.a.x, false))), u_input.c.zx), global2.a.x), u_input.a.wy);
    let var_1 = select(vec4<bool>(global2.e.x, true, true, (arg_3 >= _wgslsmith_div_u32(u_input.d, 0u)) == true), !arg_1.e, all(func_2(u_input.b.x, arg_1, 18743u, Struct_1(select(vec4<bool>(true, false, false, global1.x), vec4<bool>(false, global2.a.x, true, true), vec4<bool>(true, false, global2.e.x, arg_1.e.x)), max(var_0.x, arg_2.d), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(976f, arg_1.c.x))), -2147483647i >> (u_input.c.x % 32u), global2.a)).a));
    global2 = func_2(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(-22528i, -6670i) | _wgslsmith_add_i32(-21299i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 45305i, var_0.x), var_0.zyz)), 1843i), Struct_1(global2.a, var_0.x, _wgslsmith_f_op_vec2_f32(max(arg_2.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(255f, -630f)))), u_input.b.x, func_2((i32(-1i) * -42250i) | ~global2.b, arg_1, 0u, arg_1).a), arg_0.x, arg_1);
    return ~((vec2<u32>(~4294967295u, 1u) << (~arg_0 % vec2<u32>(32u))) << (~abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(1191u, 4156u), u_input.c.zx, vec2<u32>(arg_3, arg_3))) % vec2<u32>(32u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    global0 = max(u_input.c.xy, ~reverseBits(u_input.a.ww));
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_sub_i32((var_0 << (select(~4294967295u, arg_0.x | u_input.d, false) % 32u)) ^ firstLeadingBit(-global2.b), -15152i);
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(166f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.c.x * global2.c.x)))))));
    let var_3 = ~(arg_0 | select(vec2<u32>(func_4(vec2<u32>(1u, arg_0.x), Struct_1(vec4<bool>(global2.e.x, global1.x, true, false), -13316i, vec2<f32>(-1139f, 334f), var_1, vec4<bool>(false, true, true, global1.x)), Struct_1(vec4<bool>(true, global2.e.x, global1.x, false), 34441i, vec2<f32>(global2.c.x, 334f), -1i, vec4<bool>(false, global1.x, true, global2.a.x)), arg_0.x).x, ~global0.x), vec2<u32>(firstLeadingBit(704u), reverseBits(global0.x)), vec2<bool>(any(global1.zx), true)));
    return ~71510u;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, abs(u_input.a), u_input.a << (~(~vec4<u32>(4646u, global0.x, global0.x, 23943u)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, 1u, 15009u, 35219u), u_input.a, global2.e.x), max(vec4<u32>(4294967295u, u_input.c.x, 7288u, arg_1.x), u_input.a)) << (vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, 2254u), ~u_input.d, arg_1.x, arg_1.x) % vec4<u32>(32u)), u_input.a));
    let var_1 = arg_0;
    var var_2 = ~u_input.a;
    let var_3 = global2.e.xy;
    var_2 = u_input.a;
    return _wgslsmith_mod_u32(50103u, func_5(_wgslsmith_add_vec2_u32(func_4(~u_input.a.ww, Struct_1(global2.a, global2.b, vec2<f32>(462f, 279f), -31152i, global2.e), func_2(-2147483647i, Struct_1(vec4<bool>(false, true, global1.x, true), -2147483647i, vec2<f32>(924f, var_1), -1i, global2.a), 45061u, Struct_1(vec4<bool>(var_3.x, global1.x, global2.a.x, global1.x), -9871i, global2.c, u_input.b.x, global2.a)), ~1u), firstTrailingBit(var_0.zx)), global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(32944u) & func_1(-1682f, ~(~vec3<u32>(21570u, 43055u, global0.x)));
    var var_1 = vec2<u32>(56336u, max(1u, _wgslsmith_sub_u32(3138u, countOneBits(~33560u))));
    var var_2 = func_2(_wgslsmith_add_i32(_wgslsmith_add_i32(global2.b, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-1i, u_input.b.x))), 18824i) ^ abs(-33954i), func_2(-countOneBits(u_input.b.x & u_input.b.x), Struct_1(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-9859i, -2147483647i, 1i), vec3<i32>(-1i, -5484i, global2.d)), Struct_1(global2.e, global2.b, global2.c, 43240i, vec4<bool>(false, true, global2.a.x, false)), countOneBits(global0.x), func_2(1i, Struct_1(global2.e, u_input.b.x, vec2<f32>(global2.c.x, 1000f), global2.d, vec4<bool>(true, true, true, false)), 61770u, Struct_1(global2.e, -5764i, global2.c, global2.b, global2.e))).a, ~global2.b, vec2<f32>(-218f, _wgslsmith_f_op_f32(-global2.c.x)), global2.b | 22674i, !func_2(-41225i, Struct_1(global2.e, u_input.b.x, vec2<f32>(global2.c.x, global2.c.x), u_input.b.x, vec4<bool>(false, global1.x, global2.a.x, true)), var_1.x, Struct_1(global2.a, global2.d, vec2<f32>(-1091f, -419f), global2.d, global2.e)).a), 1u, Struct_1(select(!global2.e, func_2(global2.b, Struct_1(vec4<bool>(global2.a.x, true, false, global1.x), -1i, global2.c, global2.d, global2.e), 44399u, Struct_1(vec4<bool>(false, true, global2.a.x, global1.x), 0i, global2.c, 2147483647i, global2.e)).a, global2.e), _wgslsmith_mult_i32(~global2.d, -2147483647i), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1099f), _wgslsmith_f_op_f32(abs(-1000f))), 41022i << (1u % 32u), select(global2.e, vec4<bool>(false, global1.x, global1.x, global1.x), global2.a))), _wgslsmith_dot_vec4_u32(vec4<u32>(func_4(vec2<u32>(0u, 0u), func_2(1i, Struct_1(vec4<bool>(global1.x, global1.x, global2.e.x, global2.a.x), global2.d, vec2<f32>(global2.c.x, -768f), -1i, global2.a), var_0, Struct_1(global2.e, u_input.b.x, global2.c, global2.d, global2.a)), Struct_1(vec4<bool>(global1.x, false, false, global1.x), -1i, global2.c, u_input.b.x, vec4<bool>(global2.a.x, true, false, global1.x)), 104148u).x, func_5(u_input.c.yz, global1.x), ~u_input.a.x, ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(2158u, global0.x, 4294967295u, var_1.x))), vec4<u32>(var_1.x, var_0, ~1339u >> (0u % 32u), ~(var_1.x ^ 32628u))), func_2(u_input.b.x, Struct_1(!vec4<bool>(true, global1.x, global1.x, true), ~global2.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(548f, global2.c.x)), -51855i, func_2(0i, func_2(global2.d, Struct_1(global2.e, 0i, vec2<f32>(global2.c.x, 730f), global2.b, global2.a), 1u, Struct_1(global2.e, global2.b, global2.c, u_input.b.x, global2.a)), _wgslsmith_add_u32(var_1.x, 4294967295u), Struct_1(global2.a, -30971i, vec2<f32>(-839f, -604f), u_input.b.x, global2.e)).e), _wgslsmith_sub_u32(abs(_wgslsmith_add_u32(var_1.x, 4294967295u)), 32201u), Struct_1(vec4<bool>(true, any(global2.e.zy), global1.x, global2.c.x <= -2097f), _wgslsmith_dot_vec2_i32(u_input.b, -u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-349f, global2.c.x) - global2.c), ~(-2147483647i) | _wgslsmith_mult_i32(-7450i, global2.d), func_2(1i, func_2(1i, Struct_1(global2.a, 22935i, vec2<f32>(global2.c.x, global2.c.x), u_input.b.x, global2.a), 4294967295u, Struct_1(global2.e, 48363i, global2.c, -32419i, vec4<bool>(global1.x, global2.a.x, global2.a.x, global1.x))), 105873u, func_2(u_input.b.x, Struct_1(global2.a, u_input.b.x, vec2<f32>(global2.c.x, global2.c.x), u_input.b.x, global2.a), 2063u, Struct_1(vec4<bool>(false, global2.a.x, true, false), u_input.b.x, global2.c, 1i, vec4<bool>(true, true, false, global2.a.x)))).e)));
    global1 = !select(select(var_2.a.zyx, vec3<bool>(true, !global1.x, var_2.c.x > var_2.c.x), !global2.a.x), global2.a.zxz, func_2((-16901i | var_2.b) | _wgslsmith_mult_i32(-1589i, global2.d), Struct_1(global2.e, u_input.b.x << (var_0 % 32u), _wgslsmith_div_vec2_f32(vec2<f32>(-1528f, global2.c.x), vec2<f32>(188f, global2.c.x)), u_input.b.x, vec4<bool>(true, global1.x, false, false)), max(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(45887u, 0u, var_1.x, var_1.x)), var_1.x), Struct_1(select(var_2.a, vec4<bool>(false, var_2.e.x, false, false), vec4<bool>(global1.x, global1.x, false, true)), _wgslsmith_mult_i32(834i, global2.d), vec2<f32>(-569f, global2.c.x), max(u_input.b.x, global2.d), !var_2.e)).a.zxw);
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, ~_wgslsmith_sub_i32(u_input.b.x, global2.b)), ~_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, 23280i)), -(~(global2.d | 21648i)), -2147483647i), vec4<i32>(-(-17283i >> (0u % 32u)) & ~var_2.d, _wgslsmith_mod_i32(2147483647i, 1i), ~2147483647i, -(~(u_input.b.x >> (u_input.d % 32u)))));
    var_2 = func_2(reverseBits(1i), func_2(u_input.b.x, func_2(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_3.x, 1i, 22104i), var_3.x & u_input.b.x), Struct_1(!vec4<bool>(global1.x, global2.e.x, global2.e.x, false), firstTrailingBit(u_input.b.x), _wgslsmith_f_op_vec2_f32(max(var_2.c, var_2.c)), 2147483647i, vec4<bool>(false, global2.a.x, false, global1.x)), ~u_input.d, Struct_1(func_2(u_input.b.x, Struct_1(var_2.a, 4080i, global2.c, 48122i, vec4<bool>(false, global1.x, global2.e.x, global2.a.x)), global0.x, Struct_1(var_2.e, -44891i, vec2<f32>(global2.c.x, global2.c.x), -2147483647i, vec4<bool>(true, true, var_2.e.x, global2.a.x))).e, -11270i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1277f, 579f)), var_2.b, !global2.a)), 1u, Struct_1(!vec4<bool>(true, var_2.a.x, false, global2.a.x), 2147483647i, vec2<f32>(848f, var_2.c.x), abs(var_2.d), !(!vec4<bool>(var_2.a.x, true, var_2.e.x, true)))), 1u, Struct_1(vec4<bool>(global1.x, !global1.x, any(var_2.e.yx), all(global2.a.zwz)), -_wgslsmith_mod_i32(var_3.x >> (0u % 32u), _wgslsmith_clamp_i32(var_3.x, 1i, 5720i)), vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(select(var_2.c.x, _wgslsmith_f_op_f32(step(152f, -1380f)), u_input.b.x > -23351i))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_3.x, -49266i) ^ var_2.d, global2.b, -func_2(var_3.x, Struct_1(vec4<bool>(global1.x, var_2.a.x, true, true), -2147483647i, global2.c, u_input.b.x, global2.e), global0.x, Struct_1(var_2.a, -2147483647i, var_2.c, 30i, global2.e)).d), !var_2.a));
    var_3 = firstTrailingBit(countOneBits(vec4<i32>(u_input.b.x, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-27669i, 2565i, -892i), var_3.ywx)), -57050i, u_input.b.x & _wgslsmith_mult_i32(6868i, global2.d))));
    let var_4 = ~(~func_4(~u_input.c.yx ^ vec2<u32>(56429u, 0u), func_2(-1i, Struct_1(vec4<bool>(var_2.e.x, false, true, global2.e.x), 35406i, global2.c, var_2.b, var_2.e), func_5(u_input.c.zx, false), Struct_1(global2.e, 9139i, vec2<f32>(global2.c.x, -678f), -20904i, vec4<bool>(true, true, true, true))), func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -46605i, -2147483647i, -1i), vec4<i32>(var_2.d, var_3.x, -68863i, var_2.b)), Struct_1(vec4<bool>(global1.x, false, true, false), 18103i, vec2<f32>(687f, var_2.c.x), 1i, global2.e), _wgslsmith_mult_u32(19832u, global0.x), func_2(1i, Struct_1(vec4<bool>(true, global2.a.x, global1.x, true), global2.b, vec2<f32>(var_2.c.x, -1131f), 33957i, global2.a), 497u, Struct_1(var_2.a, 2147483647i, var_2.c, 0i, vec4<bool>(global1.x, true, var_2.e.x, false)))), u_input.d).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(round(990f)))), _wgslsmith_f_op_f32(f32(-1f) * -742f));
}

