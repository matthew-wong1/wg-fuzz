struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    let var_0 = !(!select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, all(vec4<bool>(true, false, false, true)), any(vec2<bool>(false, false)), true), true));
    let var_1 = vec3<bool>(any(!vec3<bool>(var_0.x, true, true)), !(!all(var_0.wx)), false);
    let var_2 = 1f;
    var var_3 = u_input.a;
    var var_4 = _wgslsmith_mod_i32(abs(countOneBits(-_wgslsmith_dot_vec2_i32(var_3.zz, vec2<i32>(1i, u_input.a.x)))), u_input.b.x);
    return ~firstTrailingBit(max(select(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u) >> (vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.c.x) % vec4<u32>(32u)), vec4<u32>(14907u, u_input.c.x, 44463u, 4294967295u) >> (vec4<u32>(27006u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), !var_0), vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.c.x, 4294967295u), u_input.c.x ^ 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 95975u), vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.x)));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-2147483647i, ~_wgslsmith_mult_i32(2147483647i, u_input.b.x)), 16181i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, _wgslsmith_add_i32(-22282i, 41691i)), 0i), 2147483647i), min(_wgslsmith_mod_vec4_i32(-u_input.a, vec4<i32>(u_input.a.x, -1i, 0i, u_input.b.x) | vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) >> (func_3() % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.a.x, -1i, -1i)));
    let var_1 = firstTrailingBit(u_input.b.x);
    return u_input.b.x;
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = Struct_2(Struct_1(u_input.a.xy, ~9215u), vec2<i32>(func_2(), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(364f)) - _wgslsmith_f_op_f32(119f * -2586f)) + _wgslsmith_f_op_f32(abs(-245f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(846f)))), vec2<u32>(4294967295u, ~(~(~13609u))));
    let var_1 = Struct_2(Struct_1(countOneBits(u_input.a.xy), 31416u), vec2<i32>(~arg_0, _wgslsmith_div_i32(_wgslsmith_add_i32(arg_0, u_input.b.x), u_input.b.x << (var_0.a.b % 32u)) ^ (max(u_input.a.x, 0i) << (abs(var_0.a.b) % 32u))), var_0.c, ~(~vec2<u32>(u_input.c.x, ~u_input.c.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, 104f) + vec2<f32>(-1558f, var_1.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.c, var_0.c)))))))));
    var var_3 = var_1.a;
    var var_4 = u_input.b.x << (~var_3.b % 32u);
    return ~_wgslsmith_clamp_u32(reverseBits(~0u) << (~abs(var_1.a.b) % 32u), 1u, ~(~(var_0.d.x & 34276u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(func_1(abs(u_input.a.x))) & 7395u;
    var var_1 = countOneBits(min(u_input.a.yyw, vec3<i32>(~(-17939i), ~u_input.b.x, 9714i)));
    var_1 = u_input.a.wwy;
    let var_2 = Struct_2(Struct_1(countOneBits(_wgslsmith_sub_vec2_i32(var_1.yy, vec2<i32>(var_1.x, u_input.b.x))), 1u), vec2<i32>(var_1.x, _wgslsmith_clamp_i32(var_1.x, _wgslsmith_mult_i32(max(33803i, 1i), -var_1.x), ~_wgslsmith_sub_i32(var_1.x, var_1.x))), 125f, select(~countOneBits(~vec2<u32>(13182u, 1u)), vec2<u32>(u_input.c.x, countOneBits(~1u)), vec2<bool>(true, true)));
    var var_3 = Struct_1(~(u_input.a.xy & min(abs(var_2.b), var_2.a.a)), 62636u);
    var_3 = var_2.a;
    let var_4 = vec2<bool>(-1i < var_3.a.x, all(!vec2<bool>(any(vec4<bool>(true, false, false, false)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2711f, -1903f, var_2.c, var_2.c)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1647f, var_2.c, var_2.c, var_2.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, -505f, 525f, var_2.c))))));
}

