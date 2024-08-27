struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_sub_vec2_i32(-vec2<i32>(1i, 1i), ~_wgslsmith_mod_vec2_i32(~(vec2<i32>(-57225i, 11950i) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), vec2<i32>(1i, 1i) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))));
    var var_1 = !(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-769f, 1031f))))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(542f, var_2, 1319f, 174f) + vec4<f32>(-122f, var_2, 972f, 134f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 567f, var_2, var_2)), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_2, 295f, var_2, var_2), vec4<f32>(var_2, -460f, var_2, var_2)))), any(!vec2<bool>(var_1.x, false)))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(1480f * -327f)), var_2, var_2)), -var_0.x, Struct_1(vec2<bool>(!var_1.x || var_1.x, false), any(vec4<bool>(true, true, true, true))), Struct_1(!(!select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true))), true));
    var_1 = select(!select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, false), false), vec2<bool>(var_3.d.a.x, var_3.a.x >= var_2), !var_3.d.b), var_3.c.a, vec2<bool>(var_3.c.a.x, false));
    return ~_wgslsmith_sub_u32(abs(1u) ^ countOneBits(u_input.a), 32439u) | ~(u_input.a & ~(u_input.a << (1u % 32u)));
}

fn func_2(arg_0: vec2<i32>) -> StorageBuffer {
    var var_0 = ~reverseBits(vec4<u32>(185746u, select(abs(u_input.a), u_input.a, false), _wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(4294967295u, 64269u, u_input.a))), ~0u));
    var var_1 = -10664i;
    var_0 = reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, func_3(), 49676u | ~u_input.a, var_0.x), _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, u_input.a, var_0.x, var_0.x), vec4<u32>(var_0.x, u_input.a, u_input.a, 0u)), firstLeadingBit(vec4<u32>(var_0.x, 92995u, u_input.a, 0u)) & ~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))));
    var_0 = ~vec4<u32>(u_input.a ^ (42558u ^ (1u & var_0.x)), 4294967295u, ~(~0u), ~u_input.a);
    var var_2 = false;
    return StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1367f, 763f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-467f, 670f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-700f, 1000f), vec2<f32>(425f, 2246f)))), vec2<bool>(true, true)))), var_0.xwy, 612f, vec3<u32>(54141u, 124166u, _wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(70371u, var_0.x, var_0.x, 4294967295u), vec4<u32>(u_input.a, var_0.x, 29020u, u_input.a) | vec4<u32>(var_0.x, 3733u, 15631u, u_input.a)), _wgslsmith_clamp_u32(var_0.x, 1u, 1u))));
}

fn func_1() -> StorageBuffer {
    let var_0 = u_input.a;
    let var_1 = !(!vec4<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true)), true, true, true));
    var var_2 = vec3<bool>(var_1.x, var_1.x, var_1.x);
    var var_3 = 10752i;
    let var_4 = !(!(!vec2<bool>(!var_1.x, true)));
    return func_2(vec2<i32>(min(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 1i, 63639i), vec4<i32>(14900i, 42034i, -29048i, 2147483647i))), abs(2147483647i)), _wgslsmith_mult_i32(-35110i, -_wgslsmith_add_i32(2653i, -34889i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

