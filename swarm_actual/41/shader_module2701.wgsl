struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    return ~_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_0.a.a.zw, arg_1) << (~11290u % 32u), 0u), u_input.e);
}

fn func_3() -> f32 {
    var var_0 = vec3<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(false, !any(vec2<bool>(true, false)), true, true)), all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var_0 = !(!select(select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, false, true), any(vec4<bool>(true, false, true, false))), vec3<bool>(any(vec2<bool>(true, var_0.x)), true, true), false));
    var_0 = !(!(!select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x))));
    let var_1 = -select(-(u_input.c.x & -2147483647i), ~_wgslsmith_dot_vec3_i32(u_input.d, u_input.d), true) <= -1i;
    var var_2 = u_input.d.x;
    return 1348f;
}

fn func_2() -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-105f * _wgslsmith_f_op_f32(select(-835f, -2346f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 508f) + _wgslsmith_f_op_f32(761f * -1071f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(696f + 741f) * _wgslsmith_div_f32(1000f, 1089f)), -775f)), Struct_2(~u_input.b), Struct_1(max(vec4<u32>(~4294967295u, ~u_input.b.x, u_input.b.x, 51882u), u_input.b)), -_wgslsmith_clamp_vec4_i32((vec4<i32>(-22225i, u_input.a, -2147483647i, u_input.a) | vec4<i32>(u_input.a, u_input.c.x, 44608i, u_input.a)) & _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.d.x, 1i), vec4<i32>(56673i, 2147483647i, u_input.c.x, u_input.a)), vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), 0i, 1i, _wgslsmith_sub_i32(-2147483647i, u_input.c.x)), -(~vec4<i32>(u_input.a, -39392i, u_input.c.x, u_input.c.x))));
    let var_1 = var_0.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -735f, _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(var_0.a.zxw)), _wgslsmith_f_op_vec3_f32(-var_0.a.zxy))))), vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -825f) - _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x)))), !select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), false, select(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))));
    var var_3 = 1u;
    let var_4 = _wgslsmith_mult_vec4_u32(u_input.b, ~countOneBits(countOneBits(u_input.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - 274f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = ~(~(76838u | _wgslsmith_mult_u32(1u, u_input.e))) > _wgslsmith_add_u32(u_input.e, ~(~reverseBits(u_input.b.x)));
    var_1 = all(select(select(vec2<bool>(var_0, !var_0), !vec2<bool>(var_0, false), true), !(!(!vec2<bool>(false, var_0))), false));
    var var_2 = ~(u_input.b.zz ^ vec2<u32>(_wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x | u_input.b.x, ~u_input.b.x), func_1(Struct_3(Struct_2(u_input.b), u_input.a), vec2<u32>(26973u, 0u))));
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1092f, 834f, -123f))))))));
    var_1 = _wgslsmith_f_op_f32(-var_3.x) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_3.x)), _wgslsmith_f_op_f32(func_2()));
    let var_4 = _wgslsmith_div_i32(25484i, u_input.a);
    let var_5 = firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.b.yzy, vec3<u32>(0u, var_2.x, u_input.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(22913u, 8473u, var_2.x) >> (vec3<u32>(var_2.x, 0u, 0u) % vec3<u32>(32u)), max(vec3<u32>(var_2.x, 63639u, 55610u), vec3<u32>(u_input.b.x, var_2.x, 1u)))), u_input.b.x << (var_2.x % 32u), var_2.x, 62362u));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.zx, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_3.x))))), _wgslsmith_f_op_f32(-var_3.x), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -2617f)))), _wgslsmith_clamp_u32(var_2.x >> (u_input.b.x % 32u), 4294967295u, var_5.x));
}

