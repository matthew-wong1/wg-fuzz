struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(false, 58322u), Struct_1(true, 11149u), Struct_1(false, 4294967295u), Struct_1(true, 1u), Struct_1(false, 4294967295u), Struct_1(false, 39548u), Struct_1(true, 38047u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_1(!(u_input.a >= 1i) & (~(~(-2147483647i)) != _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.a, 2147483647i, u_input.a)))), abs(~(u_input.c.x ^ 4294967295u)) << ((_wgslsmith_mult_u32(max(u_input.c.x, u_input.c.x), reverseBits(0u)) | ~(~u_input.c.x)) % 32u));
    global1 = array<Struct_1, 7>();
    let var_1 = !select(vec4<bool>(var_0.a, var_0.a, var_0.a, (true || var_0.a) | (u_input.a >= -20051i)), select(vec4<bool>(all(vec2<bool>(false, true)), false, var_0.a || var_0.a, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(var_0.a, false, var_0.a, var_0.a), true), select(vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, true, false), false), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), select(!vec4<bool>(var_0.a, true, false, var_0.a), !vec4<bool>(false, true, var_0.a, var_0.a), vec4<bool>(true, true, false, var_0.a))), !(!select(vec4<bool>(var_0.a, var_0.a, true, true), vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(true, var_0.a, var_0.a, true))));
    let var_2 = vec2<bool>(all(vec3<bool>(true, select(var_1.x, true, select(false, var_0.a, false)), all(var_1.zx))), any(vec3<bool>(true, false, true)));
    let var_3 = vec4<u32>(~(~4294967295u) >> ((var_0.b | 1u) % 32u), ~var_0.b, _wgslsmith_add_u32(0u, countOneBits(2084u)) >> (var_0.b % 32u), _wgslsmith_clamp_u32(countOneBits(min(0u, var_0.b)), var_0.b, u_input.c.x)) ^ abs(abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, 62380u, 0u, 4294967295u), vec4<u32>(1u, 0u, var_0.b, u_input.c.x))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -1551f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-211f)), _wgslsmith_f_op_f32(select(-1000f, -889f, var_2.x)), var_1.x && false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_f_op_f32(abs(853f)))))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = 1i;
    let var_0 = -12658i < u_input.b;
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1812f, -1132f, arg_0, 647f) - vec4<f32>(-817f, arg_0, arg_0, arg_0)), vec4<f32>(-313f, arg_0, 585f, arg_0)) * _wgslsmith_f_op_vec4_f32(func_3()))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), arg_0, arg_0, 163f))));
    return Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, 29479u), 7u)], vec3<i32>(~(~firstTrailingBit(0i)), -u_input.b, u_input.b));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> StorageBuffer {
    global0 = 1i;
    var var_0 = func_2(-1000f);
    var_0 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1504f, 1240f)))).a, vec3<i32>(-23462i, _wgslsmith_dot_vec4_i32(arg_1, arg_1), arg_1.x));
    return StorageBuffer(-714f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(581f, 1506f, -1000f) * vec3<f32>(598f, -1484f, 647f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(101f, 208f, -695f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1268f, -148f, 815f))), all(vec4<bool>(var_0.a.a, true, true, true)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-185f, 389f, 772f), vec3<f32>(-1000f, -833f, -837f), var_0.a.a)), _wgslsmith_f_op_vec4_f32(func_3()).xxz)))), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 34435u), u_input.c.x)) << (u_input.c.x % 32u), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_0.b, 9894u) ^ vec3<u32>(var_0.a.b, 1u, var_0.a.b), vec3<u32>(arg_0.b, u_input.c.x, 70947u)), ~(4294967295u ^ arg_0.b), _wgslsmith_div_u32(var_0.a.b, 97178u), _wgslsmith_div_u32(6187u, 1u)), firstTrailingBit(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2510f)))).b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var_0 = u_input.c.x;
    let var_1 = 6228u <= ~u_input.c.x;
    global1 = array<Struct_1, 7>();
    var var_2 = global1[_wgslsmith_index_u32(~u_input.c.x, 7u)];
    global0 = u_input.a;
    let x = u_input.a;
    s_output = func_1(global1[_wgslsmith_index_u32(~1u, 7u)], vec4<i32>(~32561i, -(~(~(-1i))), _wgslsmith_mult_i32(36306i, -select(u_input.b, u_input.b, var_1)), -1i >> (var_2.b % 32u)));
}

