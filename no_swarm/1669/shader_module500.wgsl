struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32> = vec2<u32>(11894u, 23963u);

var<private> global2: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> i32 {
    let var_0 = select(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(global1.x, arg_1.c, global1.x)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_1.c, arg_1.c, 1u)), vec3<u32>(global1.x, arg_1.c, 1u))) | vec3<u32>(global1.x, 39297u, max(arg_1.c, global1.x)), abs(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_1.c, arg_1.c), vec3<u32>(56088u, 42471u, 0u), vec3<u32>(arg_1.c, arg_1.c, 1u)) ^ ~vec3<u32>(45372u, global1.x, 1u))), !select(vec3<bool>(true, true, true), vec3<bool>(arg_0, false, false || arg_3), !(!vec3<bool>(arg_0, true, arg_0))));
    global2 = _wgslsmith_add_u32(min(~28618u, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c, global1.x), var_0.xz) << (arg_1.c % 32u))), ~_wgslsmith_mod_u32(~0u, 38158u));
    var var_1 = select(select(vec2<bool>(!any(vec3<bool>(arg_0, arg_3, true)), select(arg_0 || true, arg_0, false)), select(select(select(vec2<bool>(arg_3, arg_3), vec2<bool>(false, arg_0), arg_0), vec2<bool>(true, true), vec2<bool>(arg_3, arg_3)), vec2<bool>(true, select(false, true, arg_0)), arg_0), vec2<bool>(true || arg_3, !(arg_2.x <= arg_2.x))), !(!(!(!vec2<bool>(arg_3, arg_3)))), select(select(vec2<bool>(arg_0, select(true, arg_3, true)), !(!vec2<bool>(false, arg_3)), all(select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_3, true, true), arg_0))), vec2<bool>(any(vec3<bool>(false, arg_0, arg_0)), true), any(!vec4<bool>(arg_0, arg_3, arg_0, arg_3))));
    var var_2 = vec2<bool>(true, all(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(arg_3, true), vec2<bool>(arg_3, arg_3)), select(vec2<bool>(arg_0, arg_3), !vec2<bool>(var_1.x, var_1.x), arg_3 && false))));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a, -939f, -1391f), vec3<f32>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(false, arg_3, arg_3))) - vec3<f32>(arg_1.a, -298f, 177f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.a + arg_1.a))), arg_1.a, _wgslsmith_f_op_f32(abs(-749f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a, -836f, _wgslsmith_f_op_f32(f32(-1f) * -581f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-331f, -2063f, arg_1.a)))))));
    return 0i;
}

fn func_2() -> Struct_2 {
    let var_0 = vec2<i32>(u_input.a.x, -func_3(select(false, false, true), Struct_1(387f, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), u_input.a), global1.x), (u_input.a << (vec2<u32>(1u, global1.x) % vec2<u32>(32u))) ^ ~u_input.a, all(vec3<bool>(false, true, true)) && true));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-823f * _wgslsmith_f_op_f32(round(638f))))), vec2<i32>(36154i, _wgslsmith_add_i32(1i, var_0.x | 2147483647i)), 1u), ~(_wgslsmith_add_i32(~1i, -var_0.x) | _wgslsmith_sub_i32(~var_0.x, 9215i)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -486f), 352f)), vec2<i32>(~_wgslsmith_clamp_i32(var_0.x, u_input.a.x, var_0.x), i32(-1i) * -61606i), global1.x >> (global1.x % 32u)));
    let var_2 = func_3(true, var_1.c, var_0, true);
    global2 = 1u;
    var var_3 = abs(-16746i);
    return Struct_2(var_1.a, -1i, var_1.a);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> vec4<u32> {
    global2 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.c, firstTrailingBit(_wgslsmith_sub_u32(18581u << (arg_2.a.c % 32u), 0u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, arg_1) | _wgslsmith_clamp_u32(1u, arg_1, arg_1), select(arg_2.c.c, arg_1, select(false, false, false))), ~global1.x), _wgslsmith_add_vec4_u32(vec4<u32>(~select(global1.x, 52572u, false), ~arg_1, ~65745u, ~4294967295u << (func_2().c.c % 32u)), ~(~vec4<u32>(arg_1, 22988u, 18247u, 55170u))));
    global1 = select(~(~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, 82574u), vec2<u32>(44007u, global1.x)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1, 4294967295u), vec2<u32>(4294967295u, global1.x)))), vec2<u32>(~arg_1, arg_2.c.c), !any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_0 = 0i;
    let var_1 = true;
    let var_2 = _wgslsmith_mult_i32(-select(var_0, -13155i, var_1), reverseBits(~arg_0));
    return max(_wgslsmith_sub_vec4_u32(firstLeadingBit(~(~vec4<u32>(1u, 0u, arg_1, 4294967295u))), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(arg_1, 0u, arg_1, arg_1)), ~vec4<u32>(arg_1, 683u, arg_1, arg_2.a.c) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1325u, arg_1, 0u), vec4<u32>(global1.x, arg_2.a.c, global1.x, global1.x)) % vec4<u32>(32u)))), ~reverseBits(abs(vec4<u32>(arg_2.a.c, 47890u, 4294967295u, arg_1))));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(183f)), arg_0.a, arg_0.a, _wgslsmith_f_op_f32(round(arg_0.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, -121f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a, 177f, 2674f, arg_0.a))))))) + vec4<f32>(-272f, -138f, -480f, 351f));
    let var_1 = ~firstLeadingBit(arg_0.c);
    global2 = 1u;
    var var_2 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(~9345u, 8822u, 38574u, var_1 | 17660u)), min(~func_4(u_input.b, ~6838u, func_2()), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 5345u, 1u, arg_0.c) >> (vec4<u32>(var_1, 38823u, arg_0.c, 4294967295u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(var_1, var_1, arg_0.c, arg_0.c))))));
    var var_3 = !select(vec3<bool>(true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false))), true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(false, true, true)), false, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return vec4<u32>((1u >> (_wgslsmith_dot_vec3_u32(var_2.yyw << (var_2.yyz % vec3<u32>(32u)), var_2.wxx << (var_2.yxy % vec3<u32>(32u))) % 32u)) & arg_0.c, arg_0.c, firstLeadingBit(35964u), _wgslsmith_clamp_u32(arg_0.c, func_2().a.c, 5371u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(_wgslsmith_add_vec2_u32(~vec2<u32>(global1.x, global1.x), ~vec2<u32>(global1.x, 42062u)) << (vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(global1.x, 1u)), 4294967295u) % vec2<u32>(32u)));
    var var_0 = u_input.b;
    var_0 = _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(u_input.a.x >> (27817u % 32u), u_input.b, u_input.b << (global1.x % 32u))), countOneBits(vec3<i32>(u_input.a.x, 2147483647i, 1i)));
    var_0 = 15536i;
    var var_1 = _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, global1.x, 103166u, 22299u), ~vec4<u32>(global1.x, 0u, 0u, 44335u), abs(vec4<u32>(0u, 4294967295u, global1.x, 3473u))) & ~vec4<u32>(4294967295u, global1.x, 11292u, 1u)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(60124u, global1.x, global1.x, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 61992u, global1.x, 1u), func_1(Struct_1(-1000f, u_input.a, 32894u)))), ~vec4<u32>(_wgslsmith_mult_u32(1u, global1.x), _wgslsmith_mult_u32(11050u, global1.x), 1u, 736u << (global1.x % 32u))));
    var var_2 = vec3<i32>(u_input.b, 26765i, _wgslsmith_add_i32(~3821i, func_3(true, func_2().a, u_input.a, true))) << (firstTrailingBit(func_4(u_input.a.x, _wgslsmith_mod_u32(global1.x, var_1.x), func_2()).xxz) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-866f, 1149f), _wgslsmith_f_op_f32(select(1987f, 1063f, false))))));
}

