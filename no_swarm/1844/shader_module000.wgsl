struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec4<u32>(21883u, 1u, 0u, 1u), 901f, false, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 93019u));

var<private> global1: Struct_1 = Struct_1(true, vec4<u32>(4294967295u, 24786u, 42563u, 1u), -2009f, false, vec4<u32>(4294967295u, 79245u, 0u, 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(!(arg_0.a || ((2147483647i >= u_input.a) || any(vec2<bool>(false, true)))), _wgslsmith_clamp_vec4_u32(select(global0.e, countOneBits(vec4<u32>(4294967295u, global0.b.x, 4294967295u, arg_0.b.x)) | countOneBits(vec4<u32>(2129u, 0u, 1u, 8360u)), true), global0.e ^ (vec4<u32>(global0.e.x, 1u, global0.e.x, 4294967295u) >> (vec4<u32>(1u, global0.e.x, 29224u, global1.b.x) % vec4<u32>(32u))), global1.b), _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(1036f - _wgslsmith_f_op_f32(select(global0.c, _wgslsmith_div_f32(global0.c, 334f), true)))), true, ~min(arg_0.e, ~(~global1.e)));
    let var_1 = Struct_2(min(vec3<u32>(~(~40387u), var_0.e.x, _wgslsmith_sub_u32(~global1.e.x, arg_0.b.x)), ~(~(global0.e.xyz << (arg_0.e.zzw % vec3<u32>(32u))))), global1.e.zzx);
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1324f)))));
    global0 = arg_0;
    return ~(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(58692u, 0u), firstTrailingBit(vec2<u32>(87708u, 19567u)))) ^ reverseBits(var_2.a.x));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_div_vec3_u32(global0.e.xyw, firstTrailingBit(~firstTrailingBit(vec3<u32>(34815u, arg_1, 4294967295u)))), ~abs(~(~vec3<u32>(43569u, arg_1, 4294967295u))));
    var var_1 = -964f;
    return Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(98108u, 48940u, 49457u), vec3<u32>(~global0.e.x, ~global1.e.x, _wgslsmith_sub_u32(arg_1, arg_1)) << (vec3<u32>(arg_1, ~var_0.b.x, ~4294967295u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(global0.e.yzz, vec3<u32>(_wgslsmith_mult_u32(var_0.a.x & var_0.a.x, countOneBits(global1.b.x)), min(0u, 1u) ^ func_3(Struct_1(arg_3.x, vec4<u32>(1u, 16253u, 37059u, arg_1), global0.c, global1.a, vec4<u32>(2766u, arg_1, global0.e.x, global0.e.x))), _wgslsmith_dot_vec2_u32(global0.b.zy, var_0.a.xx) | (global0.b.x & global0.e.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<bool> {
    let var_0 = func_2(u_input.a | -2147483647i, 4294967295u, false, select(!arg_1, arg_1, arg_1));
    var var_1 = any(vec3<bool>(any(!select(vec4<bool>(arg_1.x, global1.d, global1.d, global0.d), vec4<bool>(true, global1.d, global0.d, arg_0.a), vec4<bool>(false, true, arg_0.a, false))), arg_1.x, false));
    var_1 = global1.a;
    global1 = Struct_1(true, abs(reverseBits(vec4<u32>(0u, 0u, arg_0.b.x, global1.b.x)) ^ (global0.e << (global1.e % vec4<u32>(32u)))) | _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(71361u, global0.e.x, global1.b.x, global1.b.x), ~vec4<u32>(global1.e.x, 4471u, 4294967295u, global0.e.x)), global0.e, _wgslsmith_mod_vec4_u32(global0.b << (global0.e % vec4<u32>(32u)), ~vec4<u32>(43303u, var_0.b.x, 65607u, 1u))), _wgslsmith_div_f32(267f, -442f), !global1.d, vec4<u32>(33235u, global0.b.x, global1.b.x, func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 58068i, u_input.b, 7039i) | vec4<i32>(-23485i, -2147483647i, -18746i, -12601i), select(vec4<i32>(-2147483647i, 0i, -55487i, u_input.a), vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.b), vec4<bool>(global0.d, global1.d, global1.a, false))), ~4294967295u, select(true, 1u > var_0.a.x, global0.a), !arg_1).a.x));
    let var_2 = _wgslsmith_mult_vec2_i32(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, 0i) << (vec2<u32>(global0.e.x, 108334u) % vec2<u32>(32u)))), vec2<i32>(firstLeadingBit(0i), -u_input.a) << ((_wgslsmith_add_vec2_u32(global0.e.yx, arg_0.b.yz) & _wgslsmith_clamp_vec2_u32(global0.e.yw, var_0.b.zy, vec2<u32>(1u, 40873u))) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_mod_u32(~global1.e.x, 1u), ~reverseBits(1u)) % vec2<u32>(32u));
    return arg_1;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    global1 = Struct_1(true, firstTrailingBit(vec4<u32>(global1.e.x & global1.b.x, 1u, 4294967295u >> (global0.e.x % 32u), 49625u)) << (abs(vec4<u32>(8053u, abs(761u), 1u, _wgslsmith_dot_vec3_u32(global0.b.wxz, vec3<u32>(global0.e.x, 37787u, 23456u)))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(933f - global0.c)), !(global0.c < _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.c, global0.c)))), global0.e);
    global1 = Struct_1(true, vec4<u32>(~(~global0.b.x), 1u, global0.b.x, 4294967295u), _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.c - -831f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1476f)), _wgslsmith_div_f32(global0.c, -1942f), true))))), true, _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(33190u, global0.e.x, 17291u, global0.e.x)) | _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1435u, global0.e.x, global1.b.x), vec4<u32>(global0.b.x, global0.e.x, 4294967295u, 1u)), global0.b));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-511f, -1592f))))));
    let var_1 = 33700i;
    let var_2 = select(select(select(!vec4<bool>(false, true, false, global0.a), !select(vec4<bool>(arg_0.x, false, arg_1, arg_1), vec4<bool>(true, global1.d, false, global1.a), vec4<bool>(global1.d, global1.a, true, false)), vec4<bool>(!global0.a, true, arg_1, !global0.a)), select(!vec4<bool>(global0.a, arg_1, global1.d, global1.d), select(select(vec4<bool>(global0.d, global1.d, false, arg_1), vec4<bool>(arg_1, global1.d, false, arg_1), vec4<bool>(false, arg_1, global1.d, global0.d)), select(vec4<bool>(global1.d, false, global0.d, arg_1), vec4<bool>(true, false, true, arg_1), false), arg_0.x), any(select(vec4<bool>(false, global1.d, global1.d, arg_0.x), vec4<bool>(false, false, false, false), vec4<bool>(true, global0.d, false, global1.d)))), true), vec4<bool>(global1.a, arg_0.x, !(!all(vec4<bool>(global0.a, false, false, global1.a))), any(arg_0)), select(vec4<bool>(!(global0.c > 1052f), global0.d, arg_1, arg_1), vec4<bool>(true, select(!global0.a, -1367f > global1.c, false), false, arg_0.x), any(func_1(Struct_1(true, global0.e, -1211f, arg_1, global0.e), !arg_0).zz)));
    return Struct_1(arg_0.x, global1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c))))), (_wgslsmith_div_i32(-var_1, -u_input.b) >= 0i) | func_1(Struct_1(!global1.d, vec4<u32>(0u, global0.e.x, 64885u, 25502u), global0.c, global1.c <= -992f, vec4<u32>(4294967295u, global0.b.x, 51020u, 52588u)), vec3<bool>(true, all(vec2<bool>(global0.d, false)), arg_1)).x, _wgslsmith_add_vec4_u32(~abs(firstTrailingBit(global0.b)), firstLeadingBit(vec4<u32>(global1.e.x, 4294967295u, max(35813u, 75975u), 1u << (global0.b.x % 32u)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = firstLeadingBit(func_4(vec3<bool>(false, all(vec4<bool>(false, global0.a, arg_0.a, global1.a)), func_1(Struct_1(true, global0.b, -447f, false, vec4<u32>(arg_3.b.x, 81054u, 21533u, arg_0.b.x)), vec3<bool>(false, global0.a, global0.a)).x), true).e.wy << (((firstTrailingBit(arg_3.b.yw) << (global0.b.wx % vec2<u32>(32u))) & reverseBits(~global1.e.zw)) % vec2<u32>(32u)));
    var var_1 = firstLeadingBit(~(-(vec2<i32>(799i, u_input.b) >> (vec2<u32>(0u, arg_3.b.x) % vec2<u32>(32u))))) << (_wgslsmith_mod_vec2_u32(func_4(vec3<bool>(true, arg_2, false), !global1.a).b.xz >> (~(~arg_0.e.xy) % vec2<u32>(32u)), vec2<u32>(~(~0u), abs(~56105u))) % vec2<u32>(32u));
    let var_2 = func_3(func_4(vec3<bool>(var_0.x != global1.e.x, true, arg_3.d | arg_3.d), _wgslsmith_f_op_f32(arg_3.c - arg_0.c) < _wgslsmith_f_op_f32(arg_0.c + arg_0.c))) | func_2(-36213i, global1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c - -2404f) * -1000f) >= arg_0.c, func_1(arg_0, !select(vec3<bool>(arg_0.a, arg_2, arg_0.d), vec3<bool>(arg_0.d, global1.d, global1.d), vec3<bool>(true, global0.a, arg_2)))).b.x;
    var var_3 = Struct_2(arg_0.e.wxx, ~vec3<u32>(arg_3.b.x, _wgslsmith_clamp_u32(49148u, 4294967295u, 43466u) | _wgslsmith_mod_u32(0u, 1u), var_0.x));
    let var_4 = arg_0.c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_4(select(!vec3<bool>(true, true, global1.a), vec3<bool>(true, false || global1.a, true), select(!vec3<bool>(global0.a, global0.a, true), vec3<bool>(false, global0.d, global0.d), func_1(Struct_1(false, global1.b, -589f, false, vec4<u32>(17117u, 6057u, global1.b.x, global1.b.x)), vec3<bool>(global1.a, global1.a, false)))), global0.a), ~((u_input.b & u_input.a) | -15685i) & ~5973i, false, func_4(vec3<bool>(true, any(select(vec3<bool>(global1.a, true, true), vec3<bool>(global0.a, true, global1.d), global1.d)), !global1.a), false));
    var var_0 = func_5(Struct_1(any(vec4<bool>(true, global1.d, any(vec2<bool>(false, global0.d)), false)), _wgslsmith_div_vec4_u32(firstLeadingBit(global0.e), select(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.e.x, 3572u, 86383u, global0.b.x), vec4<u32>(42984u, global1.b.x, 4294967295u, global0.b.x)), global0.e, vec4<bool>(global1.d, false, global1.a, global1.d))), _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(f32(-1f) * -147f)), false, ~global0.e), u_input.a, !(!func_4(select(vec3<bool>(false, global1.d, global1.d), vec3<bool>(false, false, global1.a), vec3<bool>(true, global0.a, global1.d)), global0.a).a), func_4(vec3<bool>(global1.d, true, global1.a), global0.d));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c));
    let var_2 = ~(-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, -1000f, global0.c))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2462f, 965f, -1000f), vec3<f32>(-208f, global0.c, -110f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, 1769f, 1075f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1275f, var_0.c))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, 314f, func_5(func_5(Struct_1(true, global0.b, 1000f, true, vec4<u32>(var_0.b.x, global0.e.x, 25746u, global1.b.x)), 1i, true, Struct_1(global1.d, global1.b, -751f, global0.d, var_0.e)), _wgslsmith_div_i32(5281i, 26322i), global0.d, Struct_1(true, global1.e, var_0.c, global0.d, global0.e)).c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~(~func_4(vec3<bool>(false, global0.d, true), global0.a).e.xyw), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x, 21624u, 1u) >> (var_0.e.wyy % vec3<u32>(32u)), ~global1.e.wzy) | vec3<u32>(12809u, ~global0.b.x, ~global0.b.x)), 433f, _wgslsmith_f_op_f32(-862f * var_0.c));
}

