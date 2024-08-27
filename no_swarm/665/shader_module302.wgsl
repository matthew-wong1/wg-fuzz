struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<u32> = vec3<u32>(0u, 0u, 27436u);

var<private> global2: vec2<u32>;

var<private> global3: Struct_1 = Struct_1(1i, 71712u, vec2<i32>(40638i, 9583i));

var<private> global4: array<vec4<f32>, 16>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_2(countOneBits(u_input.b), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<i32>(42532i, _wgslsmith_dot_vec3_i32(~select(vec3<i32>(u_input.e.x, arg_0.x, -2147483647i), u_input.b.zxx, false), vec3<i32>(~(-2147483647i), u_input.e.x, select(2133i, u_input.e.x, true)))), global3.c.x, Struct_1(2147483647i, _wgslsmith_mod_u32(u_input.a.x, ~global1.x) << (4294967295u % 32u), ~vec2<i32>(-1i, reverseBits(u_input.b.x))));
    var var_1 = 1u;
    let var_2 = !(!select(vec3<bool>(true, var_0.b, false && var_0.b), vec3<bool>(!var_0.b, all(vec4<bool>(false, var_0.b, true, false)), select(var_0.b, false, false)), true));
    let var_3 = -2147483647i;
    var var_4 = abs(vec4<i32>(-11673i, ~(-1i), abs(max(arg_0.x, arg_0.x)), ~(-arg_0.x >> (u_input.a.x % 32u))));
    return ~0i;
}

fn func_2(arg_0: vec3<bool>) -> vec3<bool> {
    let var_0 = Struct_1(u_input.b.x, 21763u, ~vec2<i32>(func_3(~vec4<i32>(global3.c.x, u_input.b.x, global3.a, 50347i)), abs(1i)));
    var var_1 = Struct_1(~(~(-select(25164i, 2147483647i, arg_0.x))), abs(82404u), ~vec2<i32>(var_0.c.x, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(8876i, 0i, -11145i)), vec3<i32>(u_input.d, -1i, 8324i) >> (vec3<u32>(75388u, 42699u, u_input.c.x) % vec3<u32>(32u)))));
    global2 = u_input.a;
    let var_2 = firstTrailingBit(abs(~(~1i)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-159f - -151f) + _wgslsmith_div_f32(-166f, -334f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2132f)))));
    return !(!arg_0);
}

fn func_4(arg_0: i32, arg_1: vec3<bool>) -> Struct_2 {
    global3 = Struct_1(-49675i, select(31037u, 16030u, !arg_1.x | all(select(vec2<bool>(false, true), vec2<bool>(arg_1.x, false), vec2<bool>(false, true)))), u_input.e);
    var var_0 = vec4<i32>(func_3(u_input.b), -arg_0, ~(global3.a ^ _wgslsmith_div_i32(arg_0, func_3(vec4<i32>(u_input.d, 0i, u_input.d, arg_0)))), select(-2572i, 0i, arg_1.x));
    let var_1 = Struct_1(-_wgslsmith_sub_i32(_wgslsmith_div_i32(-arg_0, _wgslsmith_mult_i32(u_input.d, u_input.e.x)), u_input.b.x), _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.b, global3.b, global2.x), vec3<u32>(4294967295u, u_input.a.x, 68216u)) & global1.x, 38377u), vec2<i32>(countOneBits(-8274i), u_input.b.x) ^ vec2<i32>(global3.c.x, ~(global3.a & 9502i)));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(floor(-119f));
    return Struct_2(((select(vec4<i32>(-8453i, global3.a, 1i, var_2.a), vec4<i32>(28960i, 1i, var_0.x, -2395i), vec4<bool>(arg_1.x, arg_1.x, false, false)) << (vec4<u32>(global3.b, global3.b, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) >> (vec4<u32>(0u, var_1.b, 1u, ~var_2.b) % vec4<u32>(32u))) >> ((~vec4<u32>(var_2.b, 82915u, 1u, 31831u) ^ _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(0u, var_2.b, var_2.b, u_input.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, var_1.b, var_2.b), vec4<u32>(u_input.a.x, 4294967295u, var_1.b, 40662u)), vec4<u32>(global3.b, 61566u, var_1.b, global1.x))) % vec4<u32>(32u)), !arg_1.x, firstLeadingBit(var_1.c), var_2.c.x, Struct_1(~2147483647i, global1.x, select(vec2<i32>(-1i, ~14861i), ~abs(var_2.c), arg_1.xx)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    return func_4(u_input.b.x, select(!select(vec3<bool>(true, arg_1, arg_1), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, false, arg_1), arg_1), func_2(vec3<bool>(false, arg_1, true))), vec3<bool>(false, true, arg_1), vec3<bool>(true, true, arg_1)));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_2(-vec4<i32>(-10698i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_1, 30008i), func_1(-1079f, arg_0.b, arg_0.e).a.zyy), -1i), true, global3.c, -reverseBits(abs(0i >> (global3.b % 32u))), Struct_1(-firstLeadingBit(arg_0.e.a), global3.b, global3.c));
    var var_1 = func_1(1f, arg_0.b, Struct_1(select(_wgslsmith_clamp_i32(1i, arg_1, global3.a), 1i, func_1(-698f, any(vec3<bool>(var_0.b, arg_0.b, arg_0.b)), arg_0.e).b), _wgslsmith_mod_u32(global1.x, _wgslsmith_mod_u32(0u, global3.b)) ^ func_1(_wgslsmith_f_op_f32(select(-1000f, -1578f, arg_0.b)), !arg_0.b, func_4(var_0.a.x, vec3<bool>(true, arg_0.b, true)).e).e.b, firstLeadingBit(-(vec2<i32>(-6381i, arg_2.x) ^ var_0.c)))).d;
    var_1 = 1i;
    global2 = vec2<u32>(~global3.b, ~global3.b & select(~53746u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.e.b, 0u), vec3<u32>(79718u, 4294967295u, 4294967295u)), 12054u ^ _wgslsmith_clamp_u32(arg_0.e.b, global1.x, arg_3), false));
    global1 = vec3<u32>(_wgslsmith_sub_u32(func_1(-387f, true, func_4(_wgslsmith_sub_i32(arg_0.c.x, global3.a), vec3<bool>(true, var_0.b, arg_0.b)).e).e.b, 1u), 72096u, 0u);
    return func_4(-arg_0.d, func_2(vec3<bool>(func_4(1i, select(vec3<bool>(true, false, true), vec3<bool>(arg_0.b, var_0.b, true), arg_0.b)).b, true, global1.x != func_4(u_input.b.x, vec3<bool>(arg_0.b, true, false)).e.b))).e;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(vec4<i32>(0i, 23308i, -arg_0.a, 26664i), true, vec2<i32>(-1i, _wgslsmith_mult_i32(u_input.e.x, _wgslsmith_sub_i32(u_input.b.x, -50153i)) | -reverseBits(arg_0.c.x)), -global3.a, arg_0);
    global1 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(42112u, ~_wgslsmith_sub_u32(global1.x, 6840u), 4294967295u | global2.x), vec3<u32>(_wgslsmith_sub_u32(5733u, func_1(-1000f, true, Struct_1(u_input.b.x, u_input.a.x, vec2<i32>(global3.a, -1i))).e.b), _wgslsmith_add_u32(46166u >> (arg_0.b % 32u), 1u >> (global2.x % 32u)) | 1u, ~11890u), vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 59178u, select(reverseBits(~u_input.a.x), 0u, var_0.b)));
    global1 = vec3<u32>(~var_0.e.b, ~(~global1.x), _wgslsmith_div_u32(global1.x, _wgslsmith_div_u32(~(u_input.a.x >> (global2.x % 32u)), global3.b)));
    global3 = func_5(func_1(-1769f, select(var_0.b, _wgslsmith_f_op_f32(step(-2285f, -1819f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.b), func_4(0i, vec3<bool>(false, false, true)).e), 0i, var_0.a.zzx, firstTrailingBit(4294967295u) << (_wgslsmith_mod_u32(max(1u, ~7472u), 56155u) % 32u));
    return Struct_1(-var_0.e.a, func_4(429i, select(select(select(vec3<bool>(true, false, var_0.b), vec3<bool>(false, var_0.b, false), vec3<bool>(false, var_0.b, var_0.b)), vec3<bool>(var_0.b, var_0.b, var_0.b), !vec3<bool>(true, var_0.b, var_0.b)), select(!vec3<bool>(var_0.b, false, false), vec3<bool>(var_0.b, true, var_0.b), true), !select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(true, var_0.b, var_0.b)))).e.b, -vec2<i32>(10680i, 1i) >> (~u_input.a % vec2<u32>(32u)));
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>) -> StorageBuffer {
    global1 = vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_sub_u32(global3.b << (global3.b % 32u), global1.x | 17105u), 11946u), select(~(~_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(global1.x, 31779u))), select(_wgslsmith_mult_u32(_wgslsmith_div_u32(64982u, global1.x), ~u_input.a.x), global2.x, true), func_4(-arg_0.a << (_wgslsmith_dot_vec2_u32(arg_2, global1.yy) % 32u), func_2(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true))).b), 50370u);
    let var_0 = Struct_2(u_input.b, true, (arg_0.c << (vec2<u32>(11789u, 71389u) % vec2<u32>(32u))) << (~arg_2 % vec2<u32>(32u)), _wgslsmith_mod_i32(-u_input.b.x, min(u_input.e.x, _wgslsmith_sub_i32(arg_0.a, -2147483647i)) >> (0u % 32u)), Struct_1(u_input.d, select(~_wgslsmith_add_u32(global3.b, 12944u), global3.b, false), -(-global3.c >> (_wgslsmith_mod_vec2_u32(arg_2, vec2<u32>(arg_2.x, 1u)) % vec2<u32>(32u)))));
    global2 = ~vec2<u32>(abs(56718u), 0u);
    var var_1 = i32(-1i) * -5518i;
    global3 = arg_0;
    return StorageBuffer(func_6(Struct_1(var_0.d, global3.b, abs(firstLeadingBit(u_input.e)))).c.x, 0u, -(~vec2<i32>(-1i | global3.c.x, _wgslsmith_dot_vec2_i32(arg_0.c, u_input.b.zy))), global4[_wgslsmith_index_u32(~1u, 16u)], vec2<u32>(19706u << (abs(_wgslsmith_sub_u32(u_input.a.x, 46131u)) % 32u), ~(~global2.x) | firstTrailingBit(45206u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global2 = _wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, ~global3.b), ~_wgslsmith_sub_vec2_u32(global1.yy, ~u_input.a ^ ~u_input.c));
    let var_1 = Struct_1(~_wgslsmith_sub_i32(-1i, -18822i), 98772u, ~global3.c & (-global3.c & ~(~vec2<i32>(-47444i, 34232i))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-2025f)), -355f, 2006f))));
    var var_3 = -12980i;
    let x = u_input.a;
    s_output = func_7(func_6(func_5(func_1(_wgslsmith_f_op_f32(abs(147f)), true, Struct_1(u_input.d, 4294967295u, vec2<i32>(var_1.a, u_input.b.x))), 0i, min(-u_input.b.zxw, vec3<i32>(2147483647i, var_1.a, 0i)), ~1u)), countOneBits(1u), vec2<u32>(_wgslsmith_sub_u32(~1u >> (global3.b % 32u), global1.x), abs(~global2.x)));
}

