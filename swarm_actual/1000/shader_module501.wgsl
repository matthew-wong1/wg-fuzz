struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(41795u, 30996u), 2147483647i, vec3<u32>(13661u, 2028u, 1u), 1411f);

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 2>;

var<private> global3: u32;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec4<i32>) -> u32 {
    global1 = Struct_2(Struct_1(u_input.b.zx ^ abs(u_input.c.xx), ~_wgslsmith_dot_vec2_i32(~arg_3.yx, select(vec2<i32>(global0.b, 87134i), arg_3.zx, global1.b)), max(abs(vec3<u32>(1u, 13141u, arg_1.c.x)) & select(vec3<u32>(global1.a.c.x, 1u, 37537u), vec3<u32>(4294967295u, global1.a.c.x, u_input.e), false), vec3<u32>(firstLeadingBit(global1.a.c.x), _wgslsmith_clamp_u32(9279u, 12246u, 60315u), global1.a.a.x << (2727u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))))), global1.b);
    return u_input.c.x | _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~2253u, firstTrailingBit(arg_1.c.x)), _wgslsmith_sub_u32(global1.a.c.x << (1u % 32u), 4294967295u >> (global0.c.x % 32u))), abs(abs(vec2<u32>(u_input.c.x, 33759u))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>) -> f32 {
    let var_0 = vec3<bool>(false & ((arg_0.a.d > global1.a.d) == (~851u <= ~arg_0.a.a.x)), arg_0.b, !global1.b);
    global3 = arg_1;
    global3 = ~min(67119u, global0.c.x) ^ func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2613f, -387f, global0.d, global1.a.d))), arg_0.a, abs(~global1.a.b), ~_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(global1.a.b, global1.a.b, arg_2.x, u_input.a)), ~vec4<i32>(2147483647i, arg_0.a.b, u_input.a, -1i), ~vec4<i32>(global1.a.b, arg_0.a.b, -2147483647i, -1i)));
    var var_1 = Struct_1(min(~(~countOneBits(global1.a.c.yy)), select(min(_wgslsmith_clamp_vec2_u32(u_input.c.yx, vec2<u32>(16074u, global1.a.a.x), arg_0.a.a), ~vec2<u32>(4294967295u, global1.a.a.x)), select(vec2<u32>(1u, arg_1), global1.a.a, arg_0.b), !var_0.xz)), arg_2.x, firstTrailingBit(min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, global0.a.x, global0.a.x), ~vec3<u32>(arg_1, 80824u, 0u)), arg_0.a.c)), 3781f);
    let var_2 = any(vec2<bool>(select(-3846i > u_input.a, !all(var_0), global1.b), any(vec2<bool>(var_0.x, all(vec3<bool>(true, var_0.x, false))))));
    return global1.a.d;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.d - _wgslsmith_f_op_f32(476f - global1.a.d)), -195f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(arg_2, true), func_3(vec4<f32>(-193f, arg_2.d, global1.a.d, -932f), global1.a, u_input.a, vec4<i32>(u_input.a, -1i, global0.b, global0.b)), vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec2<u32>(global1.a.a.x, 4294967295u), 0i, vec3<u32>(global1.a.c.x, u_input.d.x, global1.a.c.x), 216f), global1.b), 76177u, vec2<i32>(2164i, global0.b))), -777f), !arg_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-921f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) + 2489f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.d + global1.a.d), -545f)))));
    let var_1 = ~u_input.a;
    global0 = Struct_1(firstLeadingBit(vec2<u32>(global0.a.x, 4294967295u)), -2820i, _wgslsmith_clamp_vec3_u32(~((vec3<u32>(global1.a.a.x, global1.a.a.x, 0u) | global0.c) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(45700u, 0u, global1.a.a.x), vec3<u32>(global1.a.a.x, 99025u, global0.c.x)) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(57026u, arg_2.c.x, 108231u) << (global0.c % vec3<u32>(32u)), u_input.b), arg_2.c), 1042f);
    let var_2 = arg_0.x;
    var var_3 = min(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_clamp_i32(abs(5701i), 1i, -11769i), arg_2.b, 3998i), vec4<i32>(_wgslsmith_clamp_i32(-3245i, -62615i, u_input.a), min(-1i, countOneBits(global1.a.b)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1, 4344i, var_1), vec3<i32>(global1.a.b, global0.b, u_input.a)), firstLeadingBit(vec3<i32>(global1.a.b, -10179i, global0.b))), ~global0.b)), -vec4<i32>(arg_2.b, abs(_wgslsmith_mod_i32(u_input.a, u_input.a)), 21627i, -2147483647i | _wgslsmith_div_i32(global0.b, global1.a.b)));
    return Struct_1(min(vec2<u32>(1629u, countOneBits(u_input.e)), select(vec2<u32>(17974u, global0.c.x), vec2<u32>(128189u, 1u), !vec2<bool>(arg_1.x, false))) | abs(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, global1.a.a.x), vec2<u32>(11820u, arg_2.c.x)), ~vec2<u32>(arg_2.c.x, 1u))), u_input.a, vec3<u32>(~(~reverseBits(global0.a.x)), _wgslsmith_sub_u32(0u, ~(~0u)), 18739u | u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(426f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1007f)) + -2707f)) - 176f));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(abs(~(~global0.a)), ~(-arg_1.a.b), ~(~global0.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = arg_0;
    var_1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * var_1.d), arg_3.d), !select(vec2<bool>(all(vec3<bool>(true, false, arg_2.x)), true), select(select(arg_2, arg_2, global1.b), vec2<bool>(false, false), vec2<bool>(true, arg_2.x)), arg_2), arg_0);
    var var_2 = arg_3;
    let var_3 = func_2(vec2<f32>(144f, _wgslsmith_f_op_f32(-var_2.d)), vec2<bool>(arg_2.x, all(select(vec2<bool>(global1.b, false), select(vec2<bool>(arg_2.x, arg_1.b), arg_2, global1.b), vec2<bool>(arg_2.x, arg_1.b)))), Struct_1(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-825f, arg_1.a.d))), !vec2<bool>(arg_2.x, false), arg_1.a).a, min(firstLeadingBit(countOneBits(global0.b)), _wgslsmith_mod_i32(var_2.b, global1.a.b)), var_2.c, _wgslsmith_f_op_f32(trunc(-450f))));
    return _wgslsmith_dot_vec2_i32(firstLeadingBit(select(vec2<i32>(reverseBits(-6087i), _wgslsmith_add_i32(u_input.a, arg_1.a.b)), -vec2<i32>(var_3.b, 32581i), arg_2.x)), _wgslsmith_add_vec2_i32(firstLeadingBit(max(vec2<i32>(37514i, arg_1.a.b), vec2<i32>(-1i, arg_1.a.b)) | (vec2<i32>(global1.a.b, arg_0.b) & vec2<i32>(-44395i, global1.a.b))), _wgslsmith_div_vec2_i32(vec2<i32>(var_3.b ^ arg_0.b, _wgslsmith_div_i32(34606i, -2147483647i)), vec2<i32>(_wgslsmith_mult_i32(-234i, -18412i), _wgslsmith_add_i32(-2147483647i, var_2.b)))));
}

fn func_1(arg_0: vec3<i32>) -> bool {
    let var_0 = func_5(Struct_1(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(global0.a.x, u_input.d.x)), ~(global0.a ^ global1.a.a)), -6217i, _wgslsmith_sub_vec3_u32(global0.c, u_input.b), -470f), Struct_2(func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(417f, -609f)), !(!vec2<bool>(global1.b, false)), global1.a), _wgslsmith_f_op_f32(-343f * global0.d) != -752f), !select(vec2<bool>(global1.b, !global1.b), !vec2<bool>(global1.b, global1.b), !vec2<bool>(global1.b, false)), global1.a);
    var var_1 = !select(vec4<bool>(false, false, global1.b, any(vec3<bool>(false, global1.b, false))), vec4<bool>(all(vec4<bool>(global1.b, true, true, false)) & global1.b, true, select(global1.b, true, global1.b || false), any(select(vec3<bool>(true, global1.b, global1.b), vec3<bool>(global1.b, global1.b, global1.b), true))), any(select(select(vec2<bool>(global1.b, global1.b), vec2<bool>(true, global1.b), global1.b), vec2<bool>(false, global1.b), true)));
    global3 = _wgslsmith_div_u32(global0.c.x, reverseBits(global1.a.c.x));
    let var_2 = vec3<u32>(countOneBits(_wgslsmith_clamp_u32(global1.a.c.x, _wgslsmith_sub_u32(global0.a.x, global1.a.a.x), select(29994u, 4676u, false))), u_input.c.x, ~_wgslsmith_mult_u32(global1.a.a.x, 88459u)) & vec3<u32>(global1.a.c.x, u_input.e, ~8311u);
    global2 = array<vec3<f32>, 2>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(any(vec2<bool>(global1.b, false)), func_1(vec3<i32>(2147483647i, global0.b, global0.b) >> (vec3<u32>(global1.a.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)))));
    let var_1 = select(!(!select(!vec2<bool>(var_0.x, false), select(vec2<bool>(global1.b, true), vec2<bool>(false, var_0.x), vec2<bool>(true, global1.b)), true)), !(!(!(!vec2<bool>(var_0.x, global1.b)))), vec2<bool>(false, u_input.b.x >= global0.c.x));
    let var_2 = _wgslsmith_div_vec3_u32(~global1.a.c, vec3<u32>(112136u, global0.c.x, func_3(vec4<f32>(808f, 342f, 1000f, global1.a.d), Struct_1(global0.a, 1i, global1.a.c, global0.d), -global0.b, -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))) ^ firstLeadingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, global1.a.a.x, 4294967295u), u_input.c.xyz));
    let var_3 = Struct_2(func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f) - -1210f), -1608f), vec2<bool>(var_0.x || any(vec4<bool>(true, true, false, var_1.x)), global1.b), Struct_1(~vec2<u32>(25046u, 8553u) ^ ~vec2<u32>(35978u, global0.a.x), 2147483647i, ~global1.a.c, _wgslsmith_f_op_f32(trunc(global0.d)))), 1i < (countOneBits(global1.a.b | 0i) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, global1.a.b, -2147483647i, global1.a.b), vec4<i32>(57662i, 0i, 2147483647i, 42792i)), ~vec4<i32>(u_input.a, 37655i, global0.b, global0.b))));
    let var_4 = 197f;
    global1 = var_3;
    let var_5 = ~vec3<i32>(func_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-223f, -1295f))))), select(!vec2<bool>(var_3.b, var_1.x), !vec2<bool>(global1.b, var_3.b), select(vec2<bool>(false, true), vec2<bool>(var_1.x, var_0.x), false)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1155f)), !vec2<bool>(var_3.b, true), func_2(vec2<f32>(-1796f, 799f), var_1, Struct_1(u_input.c.yw, u_input.a, global1.a.c, 106f)))).b, _wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, -1i), _wgslsmith_clamp_i32(global1.a.b, -58503i, global0.b))), func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.d, var_4))), select(!vec2<bool>(true, var_1.x), vec2<bool>(true, true), !var_1), global1.a).b);
    global0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.d, -1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, global0.d))) * vec2<f32>(395f, _wgslsmith_f_op_f32(186f - global1.a.d)))), select(!select(select(vec2<bool>(var_3.b, false), vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(false, var_0.x), 1u <= global0.a.x), vec2<bool>(global1.a.c.x >= 16558u, true && (global0.b == -1i)), true), global1.a);
    let var_6 = abs(-var_5);
    let x = u_input.a;
    s_output = StorageBuffer(~var_5);
}

