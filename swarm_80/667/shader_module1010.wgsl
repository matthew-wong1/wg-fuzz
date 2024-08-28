struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec3<i32> {
    global0 = Struct_1(-vec3<i32>(u_input.c, -arg_0, u_input.c), ~(~u_input.b), _wgslsmith_mult_vec2_i32(u_input.d.wx, _wgslsmith_mult_vec2_i32(global0.c, _wgslsmith_sub_vec2_i32(u_input.d.wx, _wgslsmith_mod_vec2_i32(global0.c, u_input.d.xw)))), ~_wgslsmith_dot_vec2_i32(max(vec2<i32>(1i, 1i), ~vec2<i32>(2147483647i, u_input.a)), -(vec2<i32>(global0.b, arg_0) | u_input.d.xz)));
    let var_0 = Struct_1(vec3<i32>(countOneBits(_wgslsmith_mult_i32(25085i, ~(-46881i))), abs(1i), -12357i), 1i, vec2<i32>(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_mod_i32(arg_0, arg_0), max(arg_0, arg_0)), abs(-u_input.b)) >> (~vec2<u32>(~82015u, 27261u) % vec2<u32>(32u)), 13134i);
    global0 = var_0;
    var var_1 = Struct_1(vec3<i32>(-2147483647i, _wgslsmith_sub_i32(u_input.a & ~1i, u_input.c << ((87438u >> (1u % 32u)) % 32u)), countOneBits(var_0.d)), global0.a.x, u_input.d.yz, global0.c.x);
    let var_2 = var_0;
    return ~_wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(global0.b), ~select(var_1.b, -2147483647i, true), abs(firstLeadingBit(var_1.a.x))), abs(-_wgslsmith_add_vec3_i32(var_2.a, var_2.a)));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = Struct_1(~select(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 24012i, -14690i), func_3(global0.a.x, false)), -(~global0.a), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.d, -25506i, -2147483647i), u_input.d.wzz) >= 11759i), ~_wgslsmith_mult_i32(19052i, -global0.b), select(vec2<i32>(min(_wgslsmith_dot_vec2_i32(vec2<i32>(-49185i, global0.b), vec2<i32>(u_input.b, u_input.d.x)), i32(-1i) * -13421i), -6429i), vec2<i32>(firstTrailingBit(i32(-1i) * -2147483647i), u_input.d.x), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true)), firstLeadingBit(~global0.a.x));
    let var_1 = ~reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, ~u_input.a, -global0.c.x), ~(-var_0.a)));
    let var_2 = Struct_1(_wgslsmith_div_vec3_i32(max(var_0.a, -firstLeadingBit(global0.a)), select(vec3<i32>(var_0.c.x, -2147483647i, -2147483647i), ~vec3<i32>(1i, 1i, 0i), vec3<bool>(true, true, true)) >> (vec3<u32>(1u, 56026u, ~4294967295u) % vec3<u32>(32u))), 2055i, global0.c, var_0.a.x);
    var var_3 = _wgslsmith_f_op_f32(-arg_0);
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1323f)))));
    return select(vec2<bool>(true, true), vec2<bool>(select(global0.a.x >= _wgslsmith_add_i32(68081i, 1i), all(vec4<bool>(false, true, false, true)), all(vec2<bool>(false, true))), !(true & (u_input.c != global0.d))), vec2<bool>(true || ((i32(-1i) * -2147483647i) <= _wgslsmith_add_i32(var_0.d, -13874i)), true));
}

fn func_1(arg_0: vec3<bool>) -> vec4<u32> {
    var var_0 = select(!vec2<bool>(arg_0.x, arg_0.x), select(vec2<bool>(false, true), func_2(-1589f), all(select(select(arg_0, arg_0, vec3<bool>(true, arg_0.x, arg_0.x)), arg_0, arg_0))), any(vec3<bool>((u_input.c >> (0u % 32u)) > u_input.d.x, all(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), all(vec4<bool>(true, false, false, arg_0.x)))));
    var var_1 = Struct_1(vec3<i32>(u_input.c | -1i, i32(-1i) * -_wgslsmith_div_i32(u_input.a, 1i), (u_input.d.x | 31053i) | u_input.d.x), u_input.b, ~_wgslsmith_mod_vec2_i32(firstTrailingBit(~global0.a.xx), vec2<i32>(global0.b, global0.d)), 2147483647i);
    var_0 = !vec2<bool>(arg_0.x, true);
    let var_2 = Struct_1(u_input.d.yzw, abs(_wgslsmith_sub_i32(func_3(1i, var_0.x || var_0.x).x, -8965i)), global0.c, i32(-1i) * -_wgslsmith_mod_i32(reverseBits(u_input.c), _wgslsmith_dot_vec3_i32(global0.a, vec3<i32>(global0.b, -2147483647i, -2147483647i))));
    var var_3 = 1u;
    return vec4<u32>(4294967295u, max(9489u, ~(~4294967295u)) << ((_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(23930u, 0u)), ~1u) | ~_wgslsmith_mod_u32(97203u, 1u)) % 32u), _wgslsmith_sub_u32(0u << (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7366u, 48194u), vec3<u32>(1u, 76980u, 0u)) % 32u), firstLeadingBit(_wgslsmith_mod_u32(abs(8621u), 1u))), 1u >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(0u), ~(~(~53690u))), _wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(~51262u, 1u, ~22024u) | _wgslsmith_mult_u32(~1u, _wgslsmith_add_u32(0u, 1u))), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~23944u), ~_wgslsmith_mult_u32(40567u, 24214u), firstLeadingBit(64305u), max(8578u, firstLeadingBit(4294967295u))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~func_1(vec3<bool>(true, false, false)))), firstLeadingBit(0u));
    let var_1 = select(select(!func_2(1000f), select(vec2<bool>(true, all(vec3<bool>(false, true, true))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true), true), vec2<bool>(!(47752u == var_0.x), true)), select(vec2<bool>(true, !func_2(812f).x), !vec2<bool>(true, all(vec3<bool>(true, true, false))), true), any(vec2<bool>(true, true)));
    var var_2 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-select(u_input.c, u_input.d.x, var_1.x), abs(global0.c.x), 0i), u_input.d.yyx), -54185i, -vec2<i32>(global0.a.x, _wgslsmith_mod_i32(u_input.c, 20608i) & countOneBits(-2147483647i)), global0.d);
    let var_3 = 0i;
    var var_4 = Struct_1(u_input.d.zyy, u_input.a, global0.c, _wgslsmith_dot_vec2_i32(~(u_input.d.zz >> (select(var_0.zx, vec2<u32>(63253u, 1u), false) % vec2<u32>(32u))), -select(u_input.d.yx, u_input.d.zz, var_1) | -_wgslsmith_div_vec2_i32(vec2<i32>(16726i, -1i), global0.a.yz)));
    var_0 = countOneBits(~(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.x, 0u, var_0.x), vec4<u32>(0u, var_0.x, 21535u, 0u)) & vec4<u32>(var_0.x, var_0.x, var_0.x, 18174u)) | ~(~firstTrailingBit(vec4<u32>(var_0.x, var_0.x, 0u, 1u))));
    var var_5 = select(vec2<bool>(all(vec2<bool>(func_2(244f).x, any(vec3<bool>(var_1.x, var_1.x, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -272f))) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1011f, -747f))), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, any(select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, false, true), var_1.x), !vec3<bool>(var_1.x, false, false), !vec3<bool>(var_1.x, var_1.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(265f * 199f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-701f, 257f))))), vec4<i32>(-2147483647i, 0i, 4783i, abs(firstLeadingBit(var_2.a.x) ^ 1i)));
}

