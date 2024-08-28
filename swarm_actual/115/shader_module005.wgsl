struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    var var_0 = Struct_1(-u_input.c, u_input.a.x, arg_1.c, arg_1.a.x);
    let var_1 = countOneBits(~(~29567u ^ ~arg_1.c.x) & arg_1.c.x);
    let var_2 = Struct_4(Struct_2(Struct_1(vec4<i32>(-var_0.b, -var_0.d, var_0.d ^ 0i, i32(-1i) * -2147483647i), var_0.b, vec4<u32>(max(var_1, var_1), ~arg_1.c.x, var_1, select(58212u, 0u, true)), -2147483647i)), any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(select(arg_0, arg_0, false), false & arg_0), !select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, false)))));
    var_0 = Struct_1(_wgslsmith_mult_vec4_i32(min(arg_1.a, select(~vec4<i32>(-2147483647i, 1i, 41179i, arg_1.b), var_2.a.a.a, true)), abs(firstTrailingBit(-var_0.a))), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-var_2.a.a.b), max(min(var_2.a.a.a.x, arg_1.b), 60182i), _wgslsmith_add_i32(0i, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(var_2.a.a.d, -18992i))), -10799i), _wgslsmith_add_vec4_i32(var_2.a.a.a, var_2.a.a.a ^ var_0.a)), ~var_2.a.a.c, 2147483647i);
    var_0 = Struct_1(vec4<i32>(arg_1.b, var_0.b, ~u_input.c.x, (-u_input.c.x | u_input.a.x) ^ var_2.a.a.b), -u_input.a.x, ~firstLeadingBit(arg_1.c), var_0.b);
    return select(vec2<bool>(arg_0 | (true & (var_1 <= var_2.a.a.c.x)), _wgslsmith_f_op_f32(-arg_2) <= arg_2), select(vec2<bool>(true, !(var_1 != var_1)), !select(vec2<bool>(true, true), !vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, false), vec2<bool>(false, false), vec2<bool>(true, arg_0))), arg_0), vec2<bool>(all(select(select(vec3<bool>(var_2.b, arg_0, arg_0), vec3<bool>(var_2.b, var_2.b, false), false), !vec3<bool>(true, var_2.b, false), !vec3<bool>(true, var_2.b, true))), arg_0));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32) -> vec3<i32> {
    var var_0 = vec2<i32>(min(5067i, -25822i), 1i);
    let var_1 = select(all(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), true)) && true, false, true);
    var_0 = arg_0.a.a.xw;
    var var_2 = func_3(var_1, arg_0.a, arg_1.x);
    let var_3 = ~(u_input.c.zwx ^ arg_0.a.a.zzz);
    return ~(_wgslsmith_div_vec3_i32(firstTrailingBit(var_3), -select(u_input.c.wzw, u_input.a, var_1)) >> (_wgslsmith_mod_vec3_u32(~(arg_0.a.c.yzz ^ arg_0.a.c.zxw), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(u_input.d, 76431u, arg_2)), ~arg_0.a.c.zwz)) % vec3<u32>(32u)));
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = (select(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 0i, 2147483647i), vec3<i32>(u_input.a.x, u_input.b.x, 32684i)), ~vec3<i32>(-8225i, u_input.c.x, u_input.c.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.b.x, u_input.c.x, u_input.c.x, -1i)), u_input.c.x, ~2992i), true) | u_input.a) ^ ~((func_2(Struct_2(Struct_1(u_input.c, u_input.b.x, vec4<u32>(4294967295u, u_input.d, 59749u, 37318u), 2147483647i)), vec2<f32>(-697f, arg_0), u_input.d) & vec3<i32>(33771i, u_input.a.x, -17293i)) >> (firstLeadingBit(vec3<u32>(u_input.d, u_input.d, 0u)) % vec3<u32>(32u)));
    let var_1 = 486f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, 1383f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0))));
    var var_2 = Struct_4(Struct_2(Struct_1(_wgslsmith_add_vec4_i32(-vec4<i32>(-14503i, -6000i, -9648i, -1i), vec4<i32>(var_0.x, -12551i, u_input.a.x, var_0.x)), -var_0.x, ~(~vec4<u32>(26896u, u_input.d, 2455u, u_input.d)), _wgslsmith_clamp_i32(42286i, 2147483647i, 1i) & u_input.b.x)), u_input.d >= ~u_input.d);
    var var_3 = Struct_4(var_2.a, !(!var_2.b));
    let var_4 = ~(~vec4<u32>(~4294967295u, 1u, ~var_2.a.a.c.x, firstLeadingBit(var_2.a.a.c.x)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(40748u, _wgslsmith_sub_u32(40115u, var_3.a.a.c.x), ~76556u, var_2.a.a.c.x), select(select(vec4<u32>(15253u, 15291u, var_2.a.a.c.x, var_3.a.a.c.x), vec4<u32>(1u, 12773u, u_input.d, 4294967295u), false), _wgslsmith_add_vec4_u32(vec4<u32>(44288u, var_3.a.a.c.x, var_3.a.a.c.x, 140u), vec4<u32>(51618u, u_input.d, 0u, 8538u)), arg_0 <= arg_0), firstLeadingBit(var_2.a.a.c) >> (_wgslsmith_mult_vec4_u32(var_3.a.a.c, vec4<u32>(u_input.d, var_2.a.a.c.x, 0u, 60203u)) % vec4<u32>(32u))));
    return ~(-39472i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-287f, -1097f))) * _wgslsmith_f_op_f32(1511f * -498f)) * _wgslsmith_f_op_f32(-224f + _wgslsmith_div_f32(-525f, _wgslsmith_f_op_f32(-508f + 1419f)))));
    let var_1 = any(vec2<bool>(true, false));
    var var_2 = _wgslsmith_div_f32(-596f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1016f + _wgslsmith_f_op_f32(abs(157f))) - 248f), -1244f));
    var var_3 = 0u;
    var var_4 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1460f)))), -538f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1335f, -822f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.zz)) + _wgslsmith_f_op_vec2_f32(sign(var_4.yz))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_4.x, var_4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.x)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-2491f, 1481f)), _wgslsmith_f_op_f32(-var_4.x), u_input.d > u_input.d)), _wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, ~u_input.d & _wgslsmith_mod_u32(42171u, 95481u), _wgslsmith_mult_u32(u_input.d, u_input.d), u_input.d), vec4<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(57896u, u_input.d))), 17706u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, u_input.d, u_input.d), vec3<u32>(4294967295u, u_input.d, u_input.d)), firstLeadingBit(vec3<u32>(u_input.d, 4294967295u, u_input.d))), firstTrailingBit(u_input.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, -1000f, var_4.x, 405f)) - vec4<f32>(1588f, -474f, var_4.x, var_4.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(593f, -1941f, 834f, 984f) * vec4<f32>(-1078f, var_4.x, -269f, -342f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1201f, var_4.x, var_4.x, var_4.x), vec4<f32>(var_4.x, -1138f, var_4.x, -467f))))));
}

