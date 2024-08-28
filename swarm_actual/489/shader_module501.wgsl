struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> u32 {
    let var_0 = ~firstTrailingBit(firstLeadingBit(0u));
    let var_1 = -(vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(34061i, 1i, -2147483647i, 5080i), vec4<i32>(1i, -1i, -1i, -1i)), -1i, reverseBits(-2147483647i), -16285i));
    let var_2 = ~var_0;
    let var_3 = vec4<bool>(true, !any(vec4<bool>(true, true, any(vec3<bool>(true, true, false)), true)), true, true);
    let var_4 = var_2;
    return 1u;
}

fn func_3() -> i32 {
    var var_0 = Struct_1(~(-2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-1370f)), _wgslsmith_div_f32(633f, -2090f)) + vec2<f32>(_wgslsmith_f_op_f32(-578f * -148f), _wgslsmith_f_op_f32(f32(-1f) * -687f)))), false, vec2<i32>(_wgslsmith_sub_i32((0i >> (u_input.a % 32u)) | 1i, 4177i), abs(1i)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-812f)), -1158f)))));
    return ~var_0.a;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_mod_vec2_u32(~(~min(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 58016u)), vec2<u32>(u_input.a, u_input.a) & vec2<u32>(63903u, u_input.a))), ~(~(~(~vec2<u32>(u_input.a, u_input.a)))));
    var_0 = reverseBits(vec2<u32>(func_2(), 9547u));
    var var_1 = Struct_1(-(firstTrailingBit(1i) ^ ~(-24619i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1397f, 105f)) + 451f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1093f), -1447f, true))), false, vec2<i32>(-(i32(-1i) * -1i), -1i) << (_wgslsmith_mult_vec2_u32(~(~vec2<u32>(5359u, var_0.x)), vec2<u32>(52980u, u_input.a)) % vec2<u32>(32u)), vec2<f32>(-1186f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2082f, _wgslsmith_f_op_f32(f32(-1f) * -1747f), true)), -732f)));
    var_1 = Struct_1(firstTrailingBit(-2147483647i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, -797f) + _wgslsmith_div_vec2_f32(var_1.e, vec2<f32>(-1491f, 660f))) * var_1.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b) + var_1.e))), true, min(~(-var_1.d), _wgslsmith_div_vec2_i32(vec2<i32>(-59664i, 1i), ~vec2<i32>(var_1.d.x, var_1.d.x)) ^ var_1.d), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f)), 1269f));
    var var_2 = Struct_1(1i, var_1.b, true, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, abs(16218i)) >> (abs(vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u)), var_1.d), var_1.e);
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-_wgslsmith_sub_i32(28772i, -12858i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, -2147483647i)), -vec2<i32>(-2147483647i, -39328i)), _wgslsmith_mod_i32(i32(-1i) * -44349i, ~2147483647i))), vec3<i32>(~abs(i32(-1i) * -2147483647i), -func_1(), -2147483647i));
    let var_1 = Struct_1(-80668i, vec2<f32>(-1720f, _wgslsmith_f_op_f32(-520f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(209f, 438f) + _wgslsmith_f_op_f32(round(1834f))))), false, vec2<i32>(~func_1(), _wgslsmith_sub_i32(abs(1i), ~0i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-354f, -655f), vec2<f32>(794f, 1152f)))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1000f)))), -739f)));
    let var_2 = var_1;
    var var_3 = var_2;
    var var_4 = firstLeadingBit(abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 9576u, 13354u, 7761u) ^ vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))) << (_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(u_input.a, 20340u, u_input.a, 0u)), ~(~vec4<u32>(0u, u_input.a, u_input.a, 1u))) % vec4<u32>(32u)));
    var_4 = vec4<u32>(1u, 33291u, var_4.x, ~abs(_wgslsmith_mod_u32(select(u_input.a, var_4.x, var_2.c), var_4.x | 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(-26160i, -var_1.d.x, true)), ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_3.d.x, var_3.a, -85775i), vec4<i32>(2147483647i, var_2.a, var_1.a, 2147483647i), abs(vec4<i32>(-66243i, -8608i, 2147483647i, var_1.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) - var_2.e.x), -786f, _wgslsmith_f_op_f32(1000f + var_3.e.x)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e.x, 2371f, 923f) * vec3<f32>(var_3.e.x, var_3.e.x, -355f)), vec3<f32>(-1091f, var_1.e.x, var_1.e.x)))))));
}

