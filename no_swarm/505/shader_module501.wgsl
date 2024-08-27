struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global2: vec4<u32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec2<i32>) -> vec4<u32> {
    var var_0 = global0.x;
    return vec4<u32>(_wgslsmith_mod_u32(global2.x, global2.x | ~4294967295u), 35097u, select(~global2.x, _wgslsmith_add_u32(_wgslsmith_add_u32(global2.x, global2.x), ~global2.x), !global1.x), _wgslsmith_clamp_u32(global2.x, 1u, abs(10227u))) & _wgslsmith_add_vec4_u32(~vec4<u32>(93157u, 17294u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 1u, global2.x), global2.zyx), ~4294967295u), max(~vec4<u32>(1u, 18611u, global2.x, 20067u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 60515u, 78418u))));
}

fn func_3(arg_0: vec3<bool>) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x * -1313f), global0.x, _wgslsmith_div_f32(global0.x, -2355f), _wgslsmith_f_op_f32(-global0.x)))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(780f)))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -878f), _wgslsmith_f_op_f32(ceil(global0.x))));
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(global2.wx, vec2<u32>(global2.x, global2.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 65150u, 70720u), vec4<u32>(global2.x, global2.x, 101066u, global2.x)))), global2.xx), max(_wgslsmith_sub_u32(~3322u, countOneBits(global2.x)), ~global2.x), !(!arg_0.xz), vec2<f32>(_wgslsmith_f_op_f32(1225f - -2784f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(global0.x * global0.x)))), true);
    global1 = select(!(!(!select(vec4<bool>(true, false, true, arg_0.x), vec4<bool>(true, false, false, var_0.c.x), vec4<bool>(global1.x, arg_0.x, true, false)))), !vec4<bool>(true, all(select(vec4<bool>(false, false, var_0.c.x, global1.x), vec4<bool>(false, true, arg_0.x, true), global1.x)), false, false), u_input.b != _wgslsmith_sub_i32(min(-2147483647i, u_input.a.x), -2147483647i));
    var var_1 = vec2<bool>(~global2.x == _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global2.x, 0u)) ^ global2.zx, _wgslsmith_sub_vec2_u32(global2.zy, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), global2.xx, vec2<u32>(global2.x, 4294967295u)))), true);
    global2 = ~vec4<u32>(~(~(9070u << (0u % 32u))), firstTrailingBit(var_0.a) ^ ~countOneBits(global2.x), ~(var_0.a << (110847u % 32u)), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(1u, 2079u), select(_wgslsmith_mult_u32(var_0.a, 4428u), ~75964u, var_0.c.x)));
    return _wgslsmith_mult_vec4_u32(~(~vec4<u32>(_wgslsmith_clamp_u32(1u, var_0.b, var_0.a), ~global2.x, global2.x, ~50793u)), _wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(select(4294967295u, var_0.a, true)), var_0.a, func_2(vec4<i32>(u_input.b, -1i, 24406i, 20817i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -21718i, u_input.b), vec3<i32>(u_input.a.x, 52258i, u_input.c)), _wgslsmith_sub_vec2_i32(vec2<i32>(-34847i, u_input.a.x), u_input.a.yy)).x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, 1u), vec4<u32>(4247u, 0u, 1u, global2.x))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.a, var_0.a, var_0.b, var_0.a), vec4<u32>(global2.x, 1u, 4294967295u, global2.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(select(global2.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, global2.x, 24538u), global2.yzy & vec3<u32>(global2.x, global2.x, global2.x)), ~vec3<u32>(global2.x, 4294967295u, global2.x)), (global2.x <= abs(62952u)) & global1.x), ~(~(~_wgslsmith_mod_u32(49649u, 68350u))), !select(select(!vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), global2.x != global2.x), select(select(global1.zz, global1.xw, vec2<bool>(global1.x, false)), !vec2<bool>(global1.x, global1.x), true), global1.zz), vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x)), false);
    global2 = _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(func_2(vec4<i32>(-2147483647i, u_input.c, u_input.a.x, u_input.a.x), u_input.a.zzx, u_input.a.zx) << (func_3(global1.zxw) % vec4<u32>(32u)), abs(vec4<u32>(4728u, var_0.b, 4294967295u, global2.x))), ~select(func_3(vec3<bool>(var_0.c.x, global1.x, var_0.e)), ~vec4<u32>(1u, global2.x, 68864u, global2.x), select(vec4<bool>(false, var_0.c.x, true, var_0.e), vec4<bool>(var_0.c.x, global1.x, var_0.e, global1.x), true))), ~countOneBits(func_3(global1.wzy)));
    var_0 = Struct_1(~var_0.a, global2.x, global1.zz, global0.yw, global1.x);
    let var_1 = vec2<bool>(countOneBits(select(~u_input.a.x, u_input.a.x ^ u_input.b, var_0.e)) <= _wgslsmith_clamp_i32(firstTrailingBit(min(0i, u_input.c)), 25180i << (1u % 32u), 35038i), !(u_input.a.x != (firstLeadingBit(-2147483647i) >> (_wgslsmith_mod_u32(1u, global2.x) % 32u))));
    let var_2 = ~firstLeadingBit(global2.xxz);
    return Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(global2.x, var_2.x, var_0.a) & vec3<u32>(global2.x, global2.x, 0u)), ~select(var_2, global2.zyw, global1.wwx)), func_3(select(vec3<bool>(false, true, var_1.x), global1.wzz, vec3<bool>(var_0.c.x, var_1.x, global1.x))).xyz | global2.xyy), global2.x, var_1, global0.wz, !any(vec4<bool>(select(true, false, global1.x), var_0.c.x, var_1.x, true)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    global1 = vec4<bool>(all(vec4<bool>(all(select(global1.xz, arg_1.c, global1.xy)), global1.x, false, ~u_input.c != 1i)), global1.x, true, global1.x);
    let var_0 = arg_1;
    var var_1 = _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 1489u >> (func_1().b % 32u), firstLeadingBit(4294967295u >> (var_0.b % 32u))), _wgslsmith_mult_vec3_u32((reverseBits(vec3<u32>(1u, global2.x, 4294967295u)) | ~vec3<u32>(arg_0.x, arg_0.x, 1u)) | _wgslsmith_add_vec3_u32(arg_0.xyw, arg_0.yyy), ~vec3<u32>(arg_0.x << (arg_0.x % 32u), 53476u, _wgslsmith_clamp_u32(var_0.b, arg_0.x, global2.x))));
    global2 = arg_0;
    global1 = vec4<bool>(!(max(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -8939i, 0i), vec3<i32>(-36799i, u_input.a.x, u_input.b)), u_input.c) == u_input.c), true, !(!(!(global1.x | var_0.c.x))), true);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<u32>(32690u, global2.x, abs(~4294967295u), 10561u | (global2.x ^ ~global2.x)), func_1());
    global1 = select(select(!(!select(vec4<bool>(var_0.e, var_0.e, var_0.e, true), vec4<bool>(false, var_0.c.x, global1.x, var_0.c.x), vec4<bool>(true, global1.x, var_0.e, true))), vec4<bool>(true, global1.x, (2147483647i != u_input.c) && func_4(vec4<u32>(global2.x, var_0.a, global2.x, 1u), var_0).c.x, any(!global1.xy)), global1.x), select(!select(vec4<bool>(false, false, true, true), !vec4<bool>(false, false, var_0.e, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x)), !select(!vec4<bool>(false, global1.x, true, false), !vec4<bool>(var_0.c.x, true, var_0.c.x, true), select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(var_0.e, true, true, true), var_0.c.x)), (var_0.a & 17691u) > ~_wgslsmith_add_u32(var_0.b, global2.x)), select(vec4<bool>(global0.x >= global0.x, false, global1.x, false), !select(vec4<bool>(global1.x, global1.x, global1.x, var_0.e), !vec4<bool>(false, false, var_0.c.x, true), vec4<bool>(true, false, true, var_0.e)), !select(!vec4<bool>(global1.x, false, global1.x, var_0.e), select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(global1.x, true, true, true), var_0.e), !vec4<bool>(global1.x, global1.x, true, true))));
    global2 = _wgslsmith_sub_vec4_u32(~select(~vec4<u32>(var_0.a, 4294967295u, 1u, global2.x), func_2(u_input.a, u_input.a.yyz, vec2<i32>(70006i, u_input.c)), select(vec4<bool>(true, false, true, true), vec4<bool>(global1.x, true, false, true), vec4<bool>(var_0.c.x, false, global1.x, global1.x))) >> (_wgslsmith_mult_vec4_u32(func_2(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -57901i, 0i, u_input.c)), ~vec3<i32>(u_input.b, u_input.c, u_input.b), u_input.a.xw), abs(vec4<u32>(0u, var_0.b, var_0.b, global2.x)) & ~vec4<u32>(4294967295u, var_0.b, var_0.a, 4294967295u)) % vec4<u32>(32u)), func_2(vec4<i32>(u_input.c, ~reverseBits(1i), -1i, u_input.c >> (firstLeadingBit(49045u) % 32u)), max(vec3<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), ~0i, -22933i), min(~vec3<i32>(u_input.b, u_input.c, 28836i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.a.x, u_input.a.x), vec3<i32>(u_input.b, u_input.c, u_input.b), vec3<i32>(1i, -26214i, u_input.a.x)))), max(~(u_input.a.ww | vec2<i32>(-1i, -17190i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -31196i), u_input.a.yy) >> (vec2<u32>(global2.x, 8870u) % vec2<u32>(32u)))));
    global2 = (~vec4<u32>(31864u, 4294967295u ^ global2.x, 4294967295u, _wgslsmith_add_u32(0u, 4294967295u)) | vec4<u32>(var_0.a | global2.x, 1u, _wgslsmith_div_u32(var_0.a << (4294967295u % 32u), countOneBits(71893u)), 1u)) >> (~(vec4<u32>(~105987u, ~0u, 0u, var_0.b) & select(~vec4<u32>(var_0.b, 9538u, 1u, var_0.b), firstTrailingBit(vec4<u32>(4294967295u, 22715u, global2.x, global2.x)), false || var_0.e)) % vec4<u32>(32u));
    global2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 43650u, 0u, global2.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 8791u, 4294967295u, global2.x), vec4<u32>(global2.x, global2.x, 20808u, var_0.a))), _wgslsmith_mod_vec4_u32(select(vec4<u32>(global2.x, 49408u, global2.x, 56536u), vec4<u32>(var_0.a, 0u, 1u, 4294967295u), false), func_3(global1.zzx))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(49128u, global2.x, 66770u, 1u)), _wgslsmith_mod_vec4_u32(func_3(vec3<bool>(true, var_0.c.x, false)), firstTrailingBit(vec4<u32>(4294967295u, var_0.a, global2.x, global2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(global2.ywz, global2.www), global2.xzx), 1455f, vec4<i32>(-1i) * -(~(~vec4<i32>(-1i, u_input.b, 16506i, u_input.a.x))));
}

