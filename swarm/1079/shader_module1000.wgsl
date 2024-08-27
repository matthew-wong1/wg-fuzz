struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec3<f32>,
    d: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 6> = array<bool, 6>(false, false, false, false, true, true);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-943f, -643f), _wgslsmith_f_op_f32(-arg_0)))))), _wgslsmith_f_op_f32(-arg_0), -815f, 1444f);
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 196f, -1000f, -674f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-236f, -875f, -744f, 1032f) + vec4<f32>(-809f, 566f, -278f, -481f)) + _wgslsmith_f_op_vec4_f32(func_3(548f))), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(24659u, 6u)], true), select(vec4<bool>(true, global1[_wgslsmith_index_u32(49896u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), global1[_wgslsmith_index_u32(~4294967295u, 6u)])))));
    var var_1 = !(!select(select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(10479u, 6u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 6u)]), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], true)), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 6u)], true), select(vec2<bool>(global1[_wgslsmith_index_u32(10924u, 6u)], global1[_wgslsmith_index_u32(83095u, 6u)]), vec2<bool>(global1[_wgslsmith_index_u32(47794u, 6u)], true), global1[_wgslsmith_index_u32(4294967295u, 6u)]), select(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 6u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 6u)], true), vec2<bool>(global1[_wgslsmith_index_u32(56711u, 6u)], true))), true));
    var var_2 = Struct_5(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1020f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), 312f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-418f, var_0.x)), 595f, -304f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.zzy) - vec3<f32>(var_0.x, -582f, var_0.x)))), select(!(_wgslsmith_dot_vec3_u32(vec3<u32>(91769u, 0u, 1u), vec3<u32>(43232u, 76831u, 64029u)) < 1u), !(global1[_wgslsmith_index_u32(39105u >> (0u % 32u), 6u)] || any(vec2<bool>(true, false))), var_1.x), select(!vec2<bool>(var_1.x & false, !var_1.x), !select(vec2<bool>(global1[_wgslsmith_index_u32(130049u, 6u)], true), vec2<bool>(true, var_1.x), var_1.x), !vec2<bool>(true, any(vec2<bool>(true, global1[_wgslsmith_index_u32(19994u, 6u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(step(252f, 415f))))));
    var var_3 = ~_wgslsmith_add_vec3_u32(select(min(~vec3<u32>(0u, 0u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(53600u, 5430u, 4294967295u), vec3<u32>(2871u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 18738u, 4294967295u))), vec3<u32>(_wgslsmith_clamp_u32(6733u, 67907u, 16586u), 0u, 1u), true), firstTrailingBit(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), var_2.b)));
    var var_4 = var_2.c;
    return Struct_4(vec2<i32>(u_input.a, u_input.a >> (var_3.x % 32u)), Struct_3(Struct_2(vec3<u32>(~6230u, _wgslsmith_dot_vec4_u32(vec4<u32>(35102u, var_3.x, 4294967295u, var_3.x), vec4<u32>(var_3.x, var_3.x, 4294967295u, 1u)), firstLeadingBit(4294967295u))), true), var_0.xzx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1487f, 1045f, !global1[_wgslsmith_index_u32(var_3.x, 6u)])) * _wgslsmith_f_op_f32(-var_0.x))));
}

fn func_1() -> u32 {
    var var_0 = false;
    var var_1 = func_2();
    global1 = array<bool, 6>();
    let var_2 = Struct_1(var_1.b.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), var_1.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-797f, _wgslsmith_f_op_f32(ceil(-1625f)))))), var_1.c.x);
    var_1 = func_2();
    return var_1.b.a.a.x & ~(~var_1.b.a.a.x);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: i32) -> u32 {
    var var_0 = select(_wgslsmith_mult_vec2_u32(~countOneBits(select(vec2<u32>(arg_0, arg_0), vec2<u32>(69440u, arg_1.x), global1[_wgslsmith_index_u32(arg_1.x, 6u)])), vec2<u32>(4294967295u, min(arg_0, arg_1.x))), firstTrailingBit(_wgslsmith_clamp_vec2_u32(countOneBits(~arg_1.yz), ~vec2<u32>(18212u, arg_0) >> (min(vec2<u32>(1u, 96882u), vec2<u32>(4294967295u, arg_0)) % vec2<u32>(32u)), min(arg_1.zw, vec2<u32>(4294967295u, 1u)))), !vec2<bool>(true, !global1[_wgslsmith_index_u32(select(arg_1.x, 25873u, true), 6u)]));
    let var_1 = Struct_4(_wgslsmith_clamp_vec2_i32(min(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-15704i, arg_2), vec2<i32>(-13930i, u_input.a), vec2<i32>(4089i, -71911i)), -vec2<i32>(-10579i, 1i)), vec2<i32>(arg_2 >> (arg_0 % 32u), -arg_2)), vec2<i32>(-2147483647i & arg_2, ~countOneBits(32304i)), firstTrailingBit(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(u_input.a, arg_2)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_2, 31674i))))), Struct_3(Struct_2(vec3<u32>(~var_0.x, arg_1.x, select(83466u, arg_1.x, false))), global1[_wgslsmith_index_u32(func_2().b.a.a.x, 6u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -716f), 1670f, 974f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1725f + -297f)), -1265f)) + _wgslsmith_f_op_f32(floor(-331f))));
    return _wgslsmith_div_u32(max(31195u, _wgslsmith_mult_u32(~var_0.x, ~(~var_0.x))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_u32(_wgslsmith_clamp_u32(countOneBits(~0u), 1u, ~(~1020u)), 1u), ~vec4<u32>(_wgslsmith_div_u32(countOneBits(0u), ~16697u), ~func_1(), 27186u, min(~1u, 57419u)), abs(u_input.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(171f, 1781f, 677f, 768f)))))))));
    let var_2 = select(select(select(vec2<bool>(u_input.a <= u_input.a, !global1[_wgslsmith_index_u32(var_0, 6u)]), vec2<bool>(false, any(vec2<bool>(true, true))), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_0, var_0), 6u)]), vec2<bool>(false, false), select(vec2<bool>(global1[_wgslsmith_index_u32(~var_0, 6u)], true), vec2<bool>(global1[_wgslsmith_index_u32(5385u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), true)), !select(!select(vec2<bool>(global1[_wgslsmith_index_u32(var_0, 6u)], false), vec2<bool>(global1[_wgslsmith_index_u32(var_0, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(6527u, 6u)])), vec2<bool>(global1[_wgslsmith_index_u32(~1u, 6u)], false), !select(vec2<bool>(global1[_wgslsmith_index_u32(56403u, 6u)], false), vec2<bool>(false, global1[_wgslsmith_index_u32(var_0, 6u)]), vec2<bool>(true, true))), vec2<bool>(all(vec4<bool>(false, false & global1[_wgslsmith_index_u32(var_0, 6u)], all(vec2<bool>(global1[_wgslsmith_index_u32(var_0, 6u)], false)), global1[_wgslsmith_index_u32(var_0 & var_0, 6u)])), global1[_wgslsmith_index_u32(var_0, 6u)] || true));
    var var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(~var_0, (var_0 & _wgslsmith_mod_u32(38638u, var_0)) | ~(1u | var_0)), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, var_0), func_2().b.a.a.xy));
    var var_4 = !select(select(vec3<bool>(true, true, true), !(!vec3<bool>(var_2.x, true, true)), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(1u, 0u)), 6u)]), !vec3<bool>(true, !global1[_wgslsmith_index_u32(var_0, 6u)], all(vec3<bool>(var_2.x, var_2.x, false))), func_2().b.b | (!var_2.x != var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(select(vec3<u32>(var_0, 47648u, var_3.x), _wgslsmith_div_vec3_u32(vec3<u32>(5545u, 2903u, var_3.x), vec3<u32>(var_3.x, 64273u, 4294967295u)), select(vec3<bool>(false, true, var_2.x), vec3<bool>(true, true, var_2.x), var_4.x)), func_2().b.a.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, ~var_0) | (_wgslsmith_mult_vec2_u32(vec2<u32>(29852u, var_3.x), vec2<u32>(var_3.x, var_0)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.x, 0u), vec2<u32>(var_3.x, 1u)) % vec2<u32>(32u))), vec2<u32>(var_3.x, ~50840u), vec2<u32>(~(~var_3.x), _wgslsmith_div_u32(var_0 & var_3.x, 1u))), ~vec4<u32>(~4294967295u, 1u, ~0u, 4294967295u), var_1.xxz, _wgslsmith_sub_vec2_u32(select(reverseBits(vec2<u32>(var_0, var_0)), select(vec2<u32>(0u, var_0), vec2<u32>(var_0, 42084u), vec2<bool>(global1[_wgslsmith_index_u32(26873u, 6u)], false)), vec2<bool>(true, false)), _wgslsmith_sub_vec2_u32(func_2().b.a.a.zx, func_2().b.a.a.yy)) & vec2<u32>(var_3.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 1u), ~var_0)));
}

