struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 2>;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    var var_0 = global1.d;
    global1 = Struct_2(vec2<i32>(~_wgslsmith_add_i32(-1i, 37407i), 46284i), Struct_1(arg_1.b.x, ~vec2<u32>(global1.c.x, 4294967295u) >> (max(global1.b.b, _wgslsmith_sub_vec2_u32(arg_1.b, vec2<u32>(0u, 1u))) % vec2<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.d, countOneBits(~u_input.d), _wgslsmith_mult_u32(arg_1.a, arg_0) << ((u_input.d >> (61528u % 32u)) % 32u), _wgslsmith_div_u32(arg_0, select(17713u, arg_0, false))), global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.d - global1.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec3<bool>(!any(!vec2<bool>(global1.e.x, global1.e.x)), all(vec2<bool>(any(vec4<bool>(global1.e.x, false, global1.e.x, global1.e.x)), true)), false));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2395f);
    let var_1 = vec4<i32>(-global1.a.x, ~select(1i, ~abs(global1.a.x), !global1.e.x), -31333i, _wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, ~u_input.a), u_input.c)));
    let var_2 = Struct_2(-_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(-1i, u_input.c)), global1.a, ~(-var_1.wz)), Struct_1(1u, abs(vec2<u32>(1u, _wgslsmith_mod_u32(u_input.d, 4294967295u)))), vec4<u32>(1u, ~arg_0, arg_0, _wgslsmith_mult_u32(global1.b.a, _wgslsmith_dot_vec3_u32(global1.c.wxw, vec3<u32>(u_input.d, global1.b.b.x, u_input.d))) & 1u), -766f, vec3<bool>(true, 71610u > arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) > 478f));
    return select(~global1.b.b.x, 10623u, global1.e.x);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<f32>) -> Struct_2 {
    global0 = array<vec3<i32>, 2>();
    var var_0 = 101758u;
    var_0 = (_wgslsmith_add_u32(_wgslsmith_div_u32(65797u, u_input.d) >> (firstLeadingBit(u_input.d) % 32u), func_3(abs(18414u), Struct_1(46288u, global1.c.zy), arg_2)) >> (0u % 32u)) ^ global1.c.x;
    var_0 = func_3(_wgslsmith_mod_u32(u_input.d, func_3(global1.c.x, Struct_1(global1.c.x, vec2<u32>(4294967295u, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 2033f) * vec2<f32>(global1.d, -1233f))))), global1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_2))) * vec2<f32>(_wgslsmith_f_op_f32(step(818f, -1566f)), arg_1.x)) * vec2<f32>(global1.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(floor(global1.d)))))));
    var var_1 = -1i;
    return Struct_2(vec2<i32>(global1.a.x, _wgslsmith_add_i32(~u_input.b, countOneBits(global1.a.x))), Struct_1(u_input.d ^ firstLeadingBit(0u), global1.b.b), _wgslsmith_mod_vec4_u32(max(~vec4<u32>(global1.b.a, 0u, 90851u, 1u), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(220u, global1.b.a, u_input.d, global1.c.x), vec4<u32>(u_input.d, u_input.d, 19252u, u_input.d), vec4<u32>(u_input.d, 0u, global1.b.b.x, global1.c.x)), vec4<u32>(4294967295u, u_input.d, global1.c.x, u_input.d), vec4<bool>(true, false, false, false))), _wgslsmith_add_vec4_u32(vec4<u32>(95060u, global1.b.a, global1.b.b.x, u_input.d), global1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-535f, _wgslsmith_f_op_f32(abs(173f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1995f + 1761f), 1145f), func_3(u_input.d, global1.b, arg_1.zz) <= ~u_input.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x * -414f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(571f + arg_2.x), _wgslsmith_f_op_f32(select(arg_2.x, 202f, arg_0))))), !vec3<bool>(!global1.e.x, global1.e.x, false));
}

fn func_4(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, -179f, 1307f, global1.d))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.d, arg_0.d, arg_0.d, global1.d), vec4<f32>(1544f, -1172f, 698f, 288f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(987f, -725f, arg_0.d, -1960f))))), vec4<f32>(arg_0.d, 1359f, -1241f, global1.d)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.d)), 1808f, _wgslsmith_f_op_f32(min(-357f, _wgslsmith_f_op_f32(exp2(global1.d)))), arg_0.d)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(898f, func_2(false, vec4<f32>(var_0.x, arg_0.d, -1733f, -1561f), vec2<f32>(1331f, global1.d)).d)) + arg_0.d) + _wgslsmith_f_op_f32(step(380f, _wgslsmith_f_op_f32(f32(-1f) * -1607f)))), 1262f, -195f, _wgslsmith_f_op_f32(f32(-1f) * -1487f));
    global0 = array<vec3<i32>, 2>();
    let var_1 = false;
    var var_2 = max(1u, firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.d, 17787u, 4294967295u), _wgslsmith_mod_u32(4294967295u, 39476u)) | 0u));
    return true;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec4<bool> {
    var var_0 = vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)))));
    var var_1 = global1.a;
    return !select(vec4<bool>(global1.e.x, global1.e.x, all(!vec3<bool>(global1.e.x, global1.e.x, true)), global1.e.x), vec4<bool>(global1.e.x, global1.e.x, false, true), vec4<bool>(all(global1.e), func_4(func_2(global1.e.x, vec4<f32>(arg_3.x, 1000f, arg_3.x, global1.d), arg_3)), all(func_2(global1.e.x, vec4<f32>(global1.d, global1.d, 608f, var_0.x), vec2<f32>(arg_3.x, global1.d)).e), all(!vec4<bool>(global1.e.x, global1.e.x, global1.e.x, global1.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(select(!vec4<bool>(global1.e.x, false, true, true), select(vec4<bool>(global1.e.x, true, false, global1.e.x), vec4<bool>(false, global1.e.x, true, false), vec4<bool>(global1.e.x, global1.e.x, false, true)), vec4<bool>(false, false, global1.e.x, true)), select(vec4<bool>(false, true, global1.e.x, false), select(vec4<bool>(global1.e.x, global1.e.x, global1.e.x, false), vec4<bool>(false, true, true, true), vec4<bool>(global1.e.x, true, global1.e.x, true)), vec4<bool>(global1.e.x, false, global1.e.x, global1.e.x)), global1.e.x), !func_1(_wgslsmith_mod_i32(global1.a.x, u_input.c), firstTrailingBit(0i), Struct_1(global1.c.x, vec2<u32>(57912u, 0u)), vec2<f32>(global1.d, global1.d)), any(vec3<bool>(global1.e.x, false | global1.e.x, any(vec4<bool>(global1.e.x, true, global1.e.x, true)))));
    var var_1 = min(global0[_wgslsmith_index_u32(11036u, 2u)], ~vec3<i32>(global1.a.x & 8087i, global1.a.x, 11509i));
    var_0 = vec4<bool>(global1.e.x, func_2(var_0.x | false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, -859f, global1.d, global1.d) + vec4<f32>(global1.d, -1676f, -927f, global1.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(117f, 810f, global1.d, global1.d)), true)), vec2<f32>(-205f, 1266f)).e.x & var_0.x, _wgslsmith_clamp_i32(u_input.a, min(select(var_1.x, global1.a.x, false), 30759i), reverseBits(func_2(true, vec4<f32>(-568f, -1218f, global1.d, global1.d), vec2<f32>(1084f, global1.d)).a.x)) < 41731i, func_4(Struct_2(vec2<i32>(global1.a.x, _wgslsmith_sub_i32(global1.a.x, 16862i)), func_2(var_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, -146f, global1.d, global1.d) - vec4<f32>(global1.d, 382f, global1.d, global1.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-550f, global1.d) - vec2<f32>(global1.d, global1.d))).b, abs(global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1350f + 108f)), var_0.xzz)));
    let var_2 = global1.b;
    let var_3 = abs(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(global1.a.x, u_input.c, global1.a.x, 25204i) | vec4<i32>(u_input.b, global1.a.x, 1i, global1.a.x)), -(vec4<i32>(var_1.x, 1i, 2147483647i, 2147483647i) >> (global1.c % vec4<u32>(32u))))) ^ ((vec4<i32>(0i, i32(-1i) * -20950i, global1.a.x << (0u % 32u), ~var_1.x) ^ (firstLeadingBit(vec4<i32>(global1.a.x, 30596i, u_input.c, u_input.a)) << (global1.c % vec4<u32>(32u)))) << (global1.c % vec4<u32>(32u)));
    global1 = Struct_2(vec2<i32>(var_3.x, 15746i) | var_3.xw, Struct_1(countOneBits(1u & func_3(u_input.d, Struct_1(4294967295u, vec2<u32>(global1.b.a, 3847u)), vec2<f32>(global1.d, global1.d))), reverseBits(var_2.b)), vec4<u32>(max(global1.c.x, reverseBits(~83863u)), ~(~(~1u)), 1u, _wgslsmith_mult_u32(var_2.b.x, 2291u)), _wgslsmith_f_op_f32(-global1.d), select(!(!func_1(-43805i, var_1.x, Struct_1(4294967295u, vec2<u32>(4294967295u, u_input.d)), vec2<f32>(-885f, 1701f)).xyy), var_0.zzy, !global1.e.x));
    var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, var_1.x), countOneBits(~(~2147483647i)), i32(-1i) * -10389i), var_3.zzx, -vec3<i32>(-13411i, 0i, abs(global1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(global1.c, ~_wgslsmith_add_vec4_u32(global1.c & vec4<u32>(var_2.b.x, 1u, 0u, 41078u), min(global1.c, global1.c))), _wgslsmith_f_op_f32(788f - -1611f));
}

