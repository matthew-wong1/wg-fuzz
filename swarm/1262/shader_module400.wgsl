struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 1u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = -6420i;
    var var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~(~35383u), ~(arg_0.x >> (arg_0.x % 32u)), select(~1u, arg_0.x, any(vec2<bool>(true, true))), arg_0.x), reverseBits(vec4<u32>(global0.x & global0.x, firstTrailingBit(0u), 1u >> (global0.x % 32u), ~0u)));
    var var_2 = ~(-_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-4830i, -1i, 0i, 1i), countOneBits(vec4<i32>(-1i, 5492i, u_input.a, u_input.a)), vec4<i32>(-13867i, u_input.a, u_input.a, 44709i)), -max(vec4<i32>(-51028i, -1i, u_input.a, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i))));
    let var_3 = Struct_1(_wgslsmith_sub_u32(global0.x, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -2085f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(555f, 771f), vec2<f32>(-1691f, -188f), true)))))), true, arg_0.x);
    var var_4 = u_input.a;
    return vec2<bool>(var_3.d, var_3.d);
}

fn func_2() -> vec4<u32> {
    let var_0 = !(-u_input.a == u_input.a) || !any(func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 15022u, global0.x, global0.x), vec4<u32>(1u, global0.x, global0.x, global0.x))));
    let var_1 = !select(func_3(abs(~vec4<u32>(56768u, 4294967295u, global0.x, global0.x))), !func_3(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, global0.x, 29611u, global0.x))), !any(select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), vec2<bool>(true, var_0))));
    let var_2 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(false, var_1.x, var_1.x), all(vec2<bool>(false, false))), !select(vec3<bool>(true, var_0, var_0), !vec3<bool>(true, true, var_0), vec3<bool>(false, var_0, var_1.x)), vec3<bool>(true, true, _wgslsmith_f_op_f32(f32(-1f) * -492f) <= _wgslsmith_f_op_f32(step(239f, -200f))));
    global0 = vec4<u32>(~73116u, 1u, ~firstLeadingBit(0u), 20506u) & _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(global0.x, reverseBits(25524u), 1u, min(global0.x, global0.x))), abs(_wgslsmith_add_vec4_u32(~vec4<u32>(global0.x, 0u, 1992u, 37221u), vec4<u32>(27876u, 4294967295u, 27146u, global0.x))));
    let var_3 = Struct_2(_wgslsmith_add_i32(u_input.a ^ u_input.a, ~max(~16329i, u_input.a)), Struct_1(global0.x, _wgslsmith_f_op_f32(-321f + -152f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1701f, -1000f) * vec2<f32>(-368f, -920f)) - vec2<f32>(1f, 1f))), !var_0, global0.x), !var_2.zz);
    return firstTrailingBit(~vec4<u32>(firstLeadingBit(firstLeadingBit(global0.x)), ~4294967295u, abs(global0.x ^ var_3.b.e), ~41057u));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<bool>) -> i32 {
    global0 = firstLeadingBit(_wgslsmith_mult_vec4_u32(max(firstTrailingBit(vec4<u32>(global0.x, global0.x, global0.x, global0.x)), ~vec4<u32>(global0.x, 31576u, global0.x, global0.x)), ~func_2()) & _wgslsmith_div_vec4_u32(vec4<u32>(global0.x, abs(global0.x), global0.x >> (global0.x % 32u), firstLeadingBit(global0.x)), vec4<u32>(930u, global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 4533u), global0.xyx), reverseBits(global0.x))));
    var var_0 = vec2<bool>(true || select(true, false, arg_2.x), false);
    var var_1 = Struct_2(firstLeadingBit(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a) & vec4<i32>(6397i, u_input.a, -33560i, u_input.a), firstTrailingBit(vec4<i32>(-27155i, -13473i, u_input.a, u_input.a))))), Struct_1(~(~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-501f * -869f))) * -744f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(490f, -1245f) + vec2<f32>(2375f, -690f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-610f, 1338f), vec2<f32>(1821f, 133f), arg_2.x))))), false, global0.x), select(func_3(abs(vec4<u32>(0u, 26003u, 4294967295u, global0.x))), func_3(~min(vec4<u32>(global0.x, global0.x, 4294967295u, global0.x), vec4<u32>(0u, global0.x, 4294967295u, 4294967295u))), arg_2.x != false));
    var_1 = Struct_2(~firstLeadingBit(select(33513i, u_input.a, arg_0.x) & u_input.a), Struct_1(global0.x & func_2().x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_1.b.c.x, _wgslsmith_f_op_f32(1005f - var_1.b.c.x))))), var_1.b.c, var_0.x, abs(_wgslsmith_clamp_u32(global0.x, 53400u, 0u)) << (var_1.b.e % 32u)), select(var_1.c, vec2<bool>(false, var_0.x), all(!(!vec3<bool>(arg_2.x, arg_2.x, true)))));
    var var_2 = _wgslsmith_add_vec2_u32(~global0.xx, abs(vec2<u32>(func_2().x, ~9243u) << (firstTrailingBit(global0.xw) % vec2<u32>(32u))));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(1i, 703i, var_1.a), ~(~vec3<i32>(u_input.a, u_input.a, -1i))) | select(reverseBits(~vec3<i32>(72372i, 1i, var_1.a)), reverseBits(vec3<i32>(u_input.a, -18137i, 1013i) >> (vec3<u32>(4294967295u, var_2.x, 16815u) % vec3<u32>(32u))), !any(vec4<bool>(var_1.c.x, var_0.x, arg_1, true))), vec3<i32>(-_wgslsmith_add_i32(-12009i, ~var_1.a), 0i, 33674i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, 1u), vec4<u32>(1128u, 28040u, 0u, 4294967295u)), vec4<u32>(51979u, 1u, 23332u, global0.x)), min(~vec4<u32>(58941u, global0.x, global0.x, global0.x), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, 0u, global0.x), vec4<u32>(global0.x, 64309u, 28630u, global0.x)))), vec4<u32>(global0.x, _wgslsmith_div_u32(global0.x & 67941u, ~global0.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 0u, global0.x), global0.yzz), ~global0.x), global0.x), ~(vec4<u32>(global0.x, global0.x, global0.x, 0u) | vec4<u32>(24856u, 44331u, global0.x, global0.x)));
    var var_0 = firstLeadingBit(44371i);
    let var_1 = ~_wgslsmith_sub_i32(firstLeadingBit(func_1(vec2<bool>(false, true), true, select(vec2<bool>(true, false), vec2<bool>(false, true), true))), u_input.a);
    var_0 = u_input.a;
    var var_2 = Struct_2(~0i, Struct_1(firstTrailingBit(global0.x), 1582f, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1410f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1442f))), false, _wgslsmith_clamp_u32(26036u, 4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global0.xzx, vec3<u32>(4294967295u, global0.x, global0.x)), global0.x))), func_3(vec4<u32>(global0.x, ~firstTrailingBit(global0.x), reverseBits(3056u), ~75145u)));
    var var_3 = Struct_2(u_input.a, var_2.b, !func_3(vec4<u32>(22603u, countOneBits(var_2.b.e), ~1u, 32298u)));
    let x = u_input.a;
    s_output = StorageBuffer(~12534u);
}

