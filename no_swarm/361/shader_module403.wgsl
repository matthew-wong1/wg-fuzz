struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(-1i, 72403u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global1 = ~25802u;
    var var_0 = select(!vec4<bool>(true, all(vec3<bool>(true, true, true)), true, select(true, all(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, true, false)))), vec4<bool>(true, true, true, true), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false))));
    var var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(~vec4<i32>(u_input.b.x, 34294i, 0i, -32230i)), vec4<i32>(_wgslsmith_mult_i32(9624i, global2.a), 13094i, -335i, _wgslsmith_clamp_i32(2147483647i, -2147483647i, 9916i))), ~abs(firstTrailingBit(vec4<i32>(global0.a, u_input.c, u_input.b.x, global0.a)))), ~abs(-_wgslsmith_div_vec4_i32(vec4<i32>(1i, 4044i, -36906i, global0.a), vec4<i32>(11078i, u_input.b.x, 1i, u_input.c))));
    var_1 = -_wgslsmith_add_vec4_i32(select(~vec4<i32>(global0.a, global2.a, 0i, global0.a) >> (vec4<u32>(global0.b, global0.b, u_input.d, 0u) % vec4<u32>(32u)), -_wgslsmith_sub_vec4_i32(vec4<i32>(global2.a, u_input.c, var_1.x, 48454i), vec4<i32>(u_input.b.x, var_1.x, var_1.x, 12013i)), vec4<bool>(any(var_0.wx), true, var_0.x, any(vec3<bool>(false, var_0.x, false)))), vec4<i32>(-1i, ~(-7762i), max(global0.a, 2147483647i), min(-56706i, u_input.b.x)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(global2.b, 4294967295u, 4294967295u, u_input.a) ^ vec4<u32>(4294967295u, 27200u, global2.b, global2.b), ~vec4<u32>(49950u, 0u, u_input.a, global2.b)) % vec4<u32>(32u)));
    var_1 = vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(countOneBits(var_1.x) | 1i), select(~global0.a, global2.a, var_0.x), ~(~global2.a)), _wgslsmith_dot_vec2_i32(u_input.b.zz, _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, global0.a, -2147483647i), vec4<i32>(-51371i, var_1.x, 22323i, -2147483647i))), firstTrailingBit(countOneBits(var_1.yz)), select(max(var_1.yw, vec2<i32>(global2.a, 14645i)), var_1.xz, vec2<bool>(var_0.x, true)))), -global2.a, reverseBits(var_1.x));
    return 4294967295u;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    global1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(global0.b, select(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(15954u, global2.b), vec2<u32>(global2.b, u_input.d)), 0u), global0.b, !arg_3)), ~(~_wgslsmith_div_u32(_wgslsmith_div_u32(global0.b, arg_2.x), func_3(vec4<f32>(arg_0.x, -1025f, -649f, 751f)))));
    var var_0 = true;
    global2 = Struct_1(arg_1.x, _wgslsmith_dot_vec2_u32(countOneBits(min(arg_2.zx, _wgslsmith_mod_vec2_u32(vec2<u32>(global2.b, global0.b), arg_2.zy))), _wgslsmith_mult_vec2_u32(arg_2.yx, vec2<u32>(global2.b, 1u) & vec2<u32>(global2.b, 59074u)) << (~_wgslsmith_add_vec2_u32(arg_2.xz, vec2<u32>(72044u, arg_2.x)) % vec2<u32>(32u))));
    var var_1 = vec4<bool>(true, true, all(select(vec3<bool>(!arg_3, select(arg_3, true, true), !arg_3), !vec3<bool>(arg_3, true, arg_3), all(!vec2<bool>(arg_3, arg_3)))), !(!(!all(vec3<bool>(true, false, true)))));
    global0 = Struct_1(-2147483647i, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(12332u, arg_2.x, u_input.d), ~vec3<u32>(global2.b, u_input.a, 0u)), _wgslsmith_mult_vec3_u32(arg_2.xyy & arg_2.xxz, _wgslsmith_mod_vec3_u32(arg_2.yzy ^ arg_2.xyx, vec3<u32>(104198u, arg_2.x, u_input.d)))));
    return Struct_1(max(min(abs(global2.a) & countOneBits(-53548i), global0.a), ~1i), ~arg_2.x >> (arg_2.x % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(589f)), arg_1.x, -593f, _wgslsmith_f_op_f32(arg_1.x + 232f));
    var var_1 = arg_0;
    let var_2 = !select(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true)), true), true);
    let var_3 = func_2(_wgslsmith_f_op_vec2_f32(-var_0.xy), vec3<i32>(countOneBits(-1i), firstTrailingBit(u_input.b.x), ~u_input.b.x), select(select(_wgslsmith_mod_vec4_u32(vec4<u32>(62781u, u_input.a, 16039u, global2.b), vec4<u32>(global2.b, 64599u, u_input.d, arg_0.b)) ^ max(vec4<u32>(12405u, 35076u, 766u, var_1.b), vec4<u32>(global2.b, global0.b, global2.b, 1u)), vec4<u32>(1u, global0.b, arg_0.b, 37443u), vec4<bool>(var_2.x, select(false, true, var_2.x), !var_2.x, false)), vec4<u32>(var_1.b, _wgslsmith_sub_u32(func_3(vec4<f32>(var_0.x, 652f, arg_1.x, 954f)), abs(64486u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 0u, global0.b, arg_0.b), vec4<u32>(1u, 14839u, 0u, 93515u)), _wgslsmith_mult_u32(0u, 0u)), global0.a < arg_0.a), var_2.x);
    let var_4 = !vec2<bool>(false, select(!var_2.x, !(arg_2.a > 18255i), true));
    return arg_2;
}

fn func_5(arg_0: Struct_1) -> vec2<u32> {
    global2 = arg_0;
    let var_0 = u_input.d;
    let var_1 = func_4(arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 732f, 508f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-292f, -431f, 2050f) - vec3<f32>(1292f, 204f, 629f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(952f, 899f, 504f))))) * vec3<f32>(1f, -820f, -1059f))), arg_0);
    global2 = var_1;
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(global0.a), global2.a, global2.a), u_input.b);
    return ~_wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.b, arg_0.b), vec2<u32>(1u, global0.b)), min(~(~vec2<u32>(arg_0.b, 0u)), ~vec2<u32>(var_0, var_1.b)));
}

fn func_1(arg_0: f32) -> vec2<u32> {
    global1 = 0u;
    var var_0 = Struct_1(u_input.b.x, global0.b);
    return func_5(func_4(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1472f, -626f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), vec3<i32>(-1i) * -u_input.b, vec4<u32>(global2.b, 0u, max(global2.b, u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global2.b, 4294967295u), vec3<u32>(28173u, global2.b, 84244u))), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2146f, arg_0, arg_0) * vec3<f32>(arg_0, -1159f, arg_0))))), func_2(vec2<f32>(arg_0, 1999f), u_input.b, vec4<u32>(17380u, global2.b, var_0.b << (44990u % 32u), var_0.b), select(true, true, select(true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.a, global0.b), func_1(-1612f), vec2<bool>(true, true)) & ~vec2<u32>(u_input.d, func_4(Struct_1(-2147483647i, 68050u), vec3<f32>(-337f, -840f, 509f), Struct_1(-9446i, 43631u)).b), select(~func_5(Struct_1(global2.a, global0.b)), _wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(global2.b, 0u), vec2<u32>(u_input.a, global2.b)), min(~vec2<u32>(u_input.d, u_input.a), ~vec2<u32>(global0.b, u_input.d))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, true, false)))));
    var var_0 = u_input.d;
    let var_1 = Struct_1(-2147483647i, ~4294967295u & global2.b);
    global2 = Struct_1(-24581i, ~global0.b);
    let var_2 = var_1;
    global0 = var_1;
    var var_3 = vec2<i32>(max(~(-firstTrailingBit(u_input.b.x)), global0.a), _wgslsmith_mult_i32(~(-u_input.b.x), -24810i));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, 0i, ~((vec4<u32>(1u, var_2.b, var_2.b, global0.b) & vec4<u32>(u_input.a, 0u, var_1.b, 77318u)) | _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, var_2.b, 1u), max(vec4<u32>(global2.b, 0u, 16574u, 5259u), vec4<u32>(var_1.b, 4294967295u, var_1.b, 1u)))));
}

