struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: Struct_3,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = -14171i;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), true, 62u, vec4<u32>(48060u, 4294967295u, 1u, 4294967295u), 22207u);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32) -> vec3<bool> {
    global2 = Struct_1(!vec4<bool>(global0.b, global2.a.x & false, true, true), true, ~abs(global2.c), _wgslsmith_mult_vec4_u32(min(vec4<u32>(19850u, 4294967295u, global0.e, 1u), global2.d) & reverseBits(vec4<u32>(1u, 107128u, 1442u, 4294967295u)), global0.d) & global2.d, 1u);
    let var_0 = _wgslsmith_div_i32(arg_0, arg_0);
    global1 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0, -_wgslsmith_sub_i32(u_input.a, -10366i)) ^ reverseBits(var_0), i32(-1i) * -2147483647i);
    let var_1 = Struct_5(~vec4<i32>(-arg_0, min(reverseBits(36957i), arg_0), _wgslsmith_sub_i32(select(arg_0, arg_0, global2.b), 1i), var_0), all(global0.a) | !all(vec3<bool>(false, true, true)), Struct_3(Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_0), vec2<i32>(u_input.a, var_0))), ~vec2<u32>(reverseBits(1u), _wgslsmith_add_u32(global2.c, global2.d.x)), Struct_1(global2.a, global0.b, global0.c | (global0.d.x >> (9879u % 32u)), reverseBits(global2.d), firstTrailingBit(global2.c)), vec3<i32>(var_0 ^ arg_0, 34320i, ~u_input.a), Struct_2(~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 6976i), vec2<i32>(-1i, -1i)))), vec4<f32>(_wgslsmith_f_op_f32(sign(-359f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(753f * 244f), _wgslsmith_f_op_f32(abs(343f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-109f, 670f)), 949f)))));
    global1 = -var_1.a.x;
    return !select(select(!global2.a.xzx, vec3<bool>(global2.b, any(global2.a.wx), arg_0 != u_input.a), false), vec3<bool>(!global2.a.x, var_1.b, false & any(vec4<bool>(true, true, global0.a.x, global2.b))), select(select(var_1.c.c.a.ywz, select(var_1.c.c.a.yzy, global0.a.xyz, global0.a.ywx), true), vec3<bool>(var_1.b, all(global2.a.yw), true), select(select(global2.a.xzw, global2.a.xyx, global0.a.x), global0.a.xzx, true)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(898f)), arg_0.x));
    global1 = -u_input.a;
    var var_1 = _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(reverseBits(global0.e), global2.c)) | ~61788u;
    var var_2 = !vec3<bool>(_wgslsmith_f_op_f32(var_0.x * -1000f) == var_0.x, false, global0.b);
    var var_3 = global2.a.x != any(vec3<bool>(any(!var_2.yx), any(func_3(35679i, 0u)), !(!arg_1.x)));
    return _wgslsmith_f_op_vec3_f32(-arg_0);
}

fn func_4(arg_0: f32, arg_1: vec3<f32>) -> u32 {
    var var_0 = true;
    let var_1 = vec4<f32>(1279f, arg_1.x, 816f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1140f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, -287f)))));
    global0 = Struct_1(global0.a, true, global0.d.x, _wgslsmith_clamp_vec4_u32(~global2.d, vec4<u32>(abs(firstLeadingBit(global2.c)), firstTrailingBit(1u), _wgslsmith_mod_u32(global2.d.x, 7302u) | _wgslsmith_add_u32(0u, 69529u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.d.x, 1u, 1u), global2.d) >> (100062u % 32u)), global0.d), global2.c);
    let var_2 = !global0.a.www;
    let var_3 = Struct_3(Struct_2(vec2<i32>(u_input.a, -13506i)), firstTrailingBit(vec2<u32>(global0.d.x, 0u)), Struct_1(select(vec4<bool>(any(global0.a.yz), true, var_2.x, true), global0.a, !(!vec4<bool>(global0.a.x, false, global2.b, true))), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, u_input.a), u_input.a) < (1i << (1u % 32u)), ~_wgslsmith_mod_u32(~0u, global2.e << (58466u % 32u)), vec4<u32>(1u, global2.d.x, global2.c >> (~global0.d.x % 32u), _wgslsmith_sub_u32(global2.e, ~40191u)), 4294967295u), vec3<i32>(-2147483647i, u_input.a, select(firstTrailingBit(2147483647i), max(2147483647i, u_input.a), true) ^ -1i), Struct_2(abs(vec2<i32>(select(u_input.a, u_input.a, false), -1i))));
    return global2.d.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> i32 {
    var var_0 = vec2<i32>(u_input.a | u_input.a, ~u_input.a);
    global2 = Struct_1(global0.a, any(select(select(!vec4<bool>(global2.a.x, global0.a.x, global2.b, global0.a.x), vec4<bool>(global2.a.x, global2.a.x, true, false), select(global2.a, global0.a, vec4<bool>(false, global0.b, global0.b, true))), global0.a, !global0.a)), 4294967295u, vec4<u32>(func_4(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(1246f, arg_0.x, 618f), global2.a.xyz)), !vec4<bool>(global0.b, false, true, global0.b)))), ~(arg_1 >> (~global0.c % 32u)), _wgslsmith_dot_vec4_u32(select(global2.d, global0.d, false), vec4<u32>(global2.e, arg_1, 8638u, arg_1)) | _wgslsmith_clamp_u32(~global2.d.x, 36626u, global2.d.x), global0.c), _wgslsmith_mod_u32(1u, (~5273u & _wgslsmith_mult_u32(1u, global2.d.x)) >> (global0.d.x % 32u)));
    let var_1 = Struct_2(~abs(vec2<i32>(~18328i, u_input.a)));
    let var_2 = Struct_3(var_1, _wgslsmith_mult_vec2_u32(~vec2<u32>(29209u, arg_1), global0.d.wz) >> (~vec2<u32>(10728u, 1u) % vec2<u32>(32u)), Struct_1(vec4<bool>(all(vec2<bool>(global2.a.x, global2.a.x)), true, arg_0.x <= arg_0.x, false), true, (0u << (~global0.d.x % 32u)) | _wgslsmith_sub_u32(global0.c, ~global0.c), vec4<u32>(~_wgslsmith_clamp_u32(29446u, 71493u, 0u), _wgslsmith_add_u32(global2.e, func_4(339f, vec3<f32>(2128f, arg_0.x, arg_0.x))), func_4(-2260f, vec3<f32>(507f, arg_0.x, arg_0.x)), ~(global2.d.x >> (35883u % 32u))), _wgslsmith_sub_u32(global0.c, global2.e)), vec3<i32>(var_1.a.x, -13178i, 2147483647i), var_1);
    let var_3 = Struct_5(countOneBits(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_0.x, var_1.a.x, 2147483647i, var_0.x), ~vec4<i32>(var_1.a.x, -1i, -2147483647i, u_input.a)) << (~(~vec4<u32>(0u, arg_1, 1u, 0u)) % vec4<u32>(32u))), !(!var_2.c.a.x), Struct_3(Struct_2(var_2.e.a >> (min(vec2<u32>(13974u, global0.e), vec2<u32>(global2.d.x, global2.c)) % vec2<u32>(32u))), vec2<u32>(~4294967295u, global2.c), var_2.c, abs(var_2.d), Struct_2(-var_2.d.yy)), arg_0);
    return min(var_2.a.a.x, var_1.a.x);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: u32) -> i32 {
    return max(_wgslsmith_mult_i32(arg_1 << (arg_3 % 32u), min(firstLeadingBit(arg_2), (u_input.a >> (0u % 32u)) | (arg_1 ^ -49618i))), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(0i);
    let var_1 = vec4<u32>(~40397u, ~(_wgslsmith_sub_u32(~75675u, ~global0.d.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global2.d.x, 10418u, global2.d.x), global0.d.yyy) % 32u)), ~33666u, 4294967295u);
    global1 = func_5(-362f, countOneBits(~func_1(vec4<f32>(-349f, -787f, -108f, -651f), ~0u)), 2147483647i, _wgslsmith_mod_u32(1u, global0.c));
    let var_2 = Struct_5(~vec4<i32>(0i & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(var_0, u_input.a, u_input.a)), u_input.a, -u_input.a, u_input.a), true, Struct_3(Struct_2(vec2<i32>(1i, var_0)), ~(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.c, global0.d.x), global0.d.yz) & vec2<u32>(global0.e, 53521u)), Struct_1(global2.a, global2.b, _wgslsmith_add_u32(28883u, global0.c) & 0u, firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(33208u, global2.c, var_1.x, var_1.x), vec4<u32>(global0.e, 64403u, 7702u, global0.d.x))), 4294967295u), abs(vec3<i32>(-var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 10292i), vec2<i32>(var_0, u_input.a)), 0i)), Struct_2(firstLeadingBit(vec2<i32>(2147483647i, 4033i)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(222f * 286f) - _wgslsmith_f_op_f32(246f * 188f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1425f)), _wgslsmith_f_op_f32(1281f - -573f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -605f))) + 712f), -280f));
    global1 = -(2147483647i << (~(var_2.c.b.x | var_2.c.b.x) % 32u));
    global1 = _wgslsmith_mod_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(min(33649i, 2147483647i), _wgslsmith_clamp_i32(-25555i, var_2.c.e.a.x, var_2.a.x), _wgslsmith_sub_i32(u_input.a, var_2.a.x)), vec3<i32>(-25271i, -28546i, -3454i))), firstTrailingBit(_wgslsmith_div_i32((var_2.a.x >> (global2.e % 32u)) << (select(global0.c, 65040u, global2.a.x) % 32u), firstTrailingBit(_wgslsmith_add_i32(var_2.a.x, -26773i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

