struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = vec2<i32>(firstTrailingBit(reverseBits(u_input.a.x)), 2147483647i);
    var var_1 = Struct_1(~((u_input.e.x | _wgslsmith_mult_u32(u_input.c, 19549u)) >> (~countOneBits(u_input.e.x) % 32u)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(abs(2010f)), -2153f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), -1191f, 532f))))), u_input.c, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 91972u, 23667u, 4294967295u), vec4<u32>(u_input.c, 46459u, 1u, u_input.e.x)), firstTrailingBit(~vec4<u32>(2430u, u_input.e.x, 0u, u_input.e.x))));
    var_0 = firstTrailingBit(~u_input.b.xz);
    var_0 = firstTrailingBit(-u_input.a.yz);
    var_0 = u_input.a.yy;
    return var_1.b.x;
}

fn func_2() -> u32 {
    var var_0 = u_input.d;
    let var_1 = Struct_1(10201u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(func_3(true)), -1141f, -1388f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1490f, -1641f, 1000f) + vec3<f32>(1228f, -630f, 1067f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -1176f, -965f), vec3<f32>(-394f, -458f, 541f)))))), 26589u, abs(~u_input.c));
    var var_2 = ~_wgslsmith_div_i32(abs(-1747i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.d, 40047i) & -u_input.a.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.d, -2147483647i, u_input.b.x, u_input.a.x)), vec4<i32>(-2147483647i, -33219i, -1i, 28222i))));
    var var_3 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(~(~vec4<u32>(u_input.c, 2606u, var_1.d, 0u))), select(_wgslsmith_mult_vec4_u32(select(vec4<u32>(33617u, 0u, u_input.e.x, 14798u), vec4<u32>(var_1.a, var_1.a, var_1.c, 4294967295u), true), vec4<u32>(17612u, 11561u, var_1.a, 4294967295u)), vec4<u32>(_wgslsmith_mult_u32(4294967295u, 0u), 21692u, reverseBits(95720u), 4294967295u), true)), _wgslsmith_sub_vec4_u32(vec4<u32>(22117u, firstLeadingBit(14538u), _wgslsmith_add_u32(~54454u, ~u_input.e.x), ~(~u_input.c)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, 17491u, var_1.c), vec3<u32>(var_1.c, 0u, 1u))), ~(~u_input.c), u_input.e.x, 41468u)));
    var_3 = ~(min(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.d, var_1.d, 6494u, 68059u), vec4<u32>(var_1.a, 10431u, u_input.e.x, u_input.e.x)), reverseBits(vec4<u32>(4294967295u, 0u, 57342u, var_1.c))) ^ (vec4<u32>(~1u, var_3.x, var_3.x | var_3.x, 4294967295u) | vec4<u32>(40286u, countOneBits(var_1.d), var_1.d, ~u_input.c)));
    return ~abs(~4294967295u);
}

fn func_1() -> Struct_1 {
    let var_0 = any(vec4<bool>(all(vec2<bool>(true, true)), any(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), ~countOneBits(u_input.e.x) > abs(_wgslsmith_mod_u32(u_input.e.x, u_input.e.x)), any(vec3<bool>(true, true, true))));
    var var_1 = ~(~func_2());
    return Struct_1(u_input.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0)) + 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-583f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false)) - -657f)), _wgslsmith_f_op_f32(f32(-1f) * -1321f)), reverseBits(4294967295u), select(firstTrailingBit(_wgslsmith_add_u32(u_input.c, u_input.e.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(53901u, u_input.c & u_input.c, 1u), vec3<u32>(~16754u, u_input.c, u_input.c)), !(!all(vec2<bool>(false, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = firstTrailingBit(~(vec2<u32>(62511u, u_input.c ^ 59411u) ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.e, u_input.e), _wgslsmith_div_vec2_u32(u_input.e, vec2<u32>(u_input.e.x, 19592u)), firstLeadingBit(vec2<u32>(arg_0.a, 0u)))));
    var var_2 = _wgslsmith_sub_i32(~0i, -u_input.a.x) >= reverseBits(-u_input.b.x);
    var var_3 = select(arg_1.b.yx, arg_1.b.wy, arg_1.a & (true || (arg_0.b.x >= _wgslsmith_f_op_f32(arg_1.c.b.x + 935f))));
    var var_4 = select(vec2<bool>(select(true, all(arg_1.b.zyy), all(vec2<bool>(true, false))), true), select(arg_1.b.xy, arg_1.b.xy, arg_1.a), !select(arg_1.b.wy, !(!arg_1.b.xw), true));
    return Struct_1(8338u, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.b.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1417f - _wgslsmith_f_op_f32(-arg_0.b.x))), -423f), _wgslsmith_dot_vec2_u32(~vec2<u32>(~u_input.e.x, var_1.x), _wgslsmith_sub_vec2_u32(vec2<u32>(~55034u, 14546u), var_1)), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b.yx;
    var var_1 = func_4(func_1(), Struct_2(!all(vec3<bool>(true, true, true)), vec4<bool>(true, true, true, true), Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-334f, -508f, 608f))), select(1u, firstLeadingBit(11199u), all(vec2<bool>(false, false))), _wgslsmith_clamp_u32(~u_input.e.x, 4294967295u, u_input.c | 47625u))));
    var var_2 = Struct_3(Struct_2(all(vec4<bool>(u_input.d <= u_input.b.x, any(vec2<bool>(true, true)), true, select(false, false, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), -4694i < u_input.a.x), func_4(func_1(), Struct_2(u_input.b.x == var_0.x, vec4<bool>(true, false, false, true), func_1()))), Struct_1(u_input.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.x, var_1.b.x, -1000f), var_1.b, vec3<bool>(true, false, u_input.e.x < 39126u))), var_1.d, 4294967295u), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(837f, var_1.b.x, -790f, -1564f)), vec4<f32>(var_2.b.b.x, var_2.a.c.b.x, -1317f, -100f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.b.x, -106f, var_2.a.c.b.x, 193f)))))), _wgslsmith_sub_vec3_u32(select(firstLeadingBit(vec3<u32>(4294967295u, 6243u, u_input.e.x)), _wgslsmith_div_vec3_u32(max(vec3<u32>(50041u, 0u, var_2.b.c), vec3<u32>(var_1.c, 46336u, u_input.c)), vec3<u32>(4294967295u, 0u, var_2.a.c.d) << (vec3<u32>(4294967295u, 1u, var_1.c) % vec3<u32>(32u))), vec3<bool>(var_2.a.a, var_2.a.a, var_2.a.b.x & var_2.a.b.x)), vec3<u32>(~4750u, var_2.a.c.a, _wgslsmith_dot_vec3_u32(vec3<u32>(63342u, var_1.c, 4294967295u), vec3<u32>(1404u, 55426u, 37343u))) | vec3<u32>(2248u, 44016u | var_1.d, 74153u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, _wgslsmith_mod_u32(1u, u_input.e.x) >> (var_2.a.c.a % 32u)), ~min(u_input.e, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(58955u, 2502u)))), vec4<f32>(var_2.a.c.b.x, 1000f, var_2.a.c.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-563f + var_2.a.c.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1233f, var_2.b.b.x)), _wgslsmith_f_op_f32(-var_2.b.b.x))))));
}

