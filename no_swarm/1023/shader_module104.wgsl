struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> vec3<u32> {
    return _wgslsmith_clamp_vec3_u32(~arg_0.b.a.b.yyw, vec3<u32>(~_wgslsmith_clamp_u32(arg_0.a, 1u, arg_0.b.a.b.x), arg_0.a, (_wgslsmith_mult_u32(arg_0.b.a.b.x, 0u) & max(arg_0.b.a.b.x, 860u)) & (u_input.c | _wgslsmith_sub_u32(arg_0.a, u_input.c))), select(countOneBits(~arg_0.b.a.b.yxx) ^ arg_0.b.a.b.zxz, ~arg_0.b.a.b.zwx, arg_1));
}

fn func_2(arg_0: u32) -> vec4<i32> {
    let var_0 = max(func_3(Struct_3(~_wgslsmith_div_u32(u_input.c, arg_0), Struct_2(Struct_1(vec3<f32>(1206f, 799f, -184f), vec4<u32>(u_input.c, 1u, 12941u, arg_0), -1481f, vec2<i32>(39438i, 1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(372f, 2552f, -402f, -1000f))), ~u_input.c), true), _wgslsmith_div_vec3_u32(~abs(vec3<u32>(arg_0, arg_0, 4294967295u)), vec3<u32>(~arg_0, countOneBits(1u), arg_0)) << (vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 4062u, 9187u), vec3<u32>(arg_0, u_input.c, 1u))), ~44385u, 4294967295u) % vec3<u32>(32u)));
    let var_1 = vec2<f32>(-326f, _wgslsmith_f_op_f32(1078f + 1f));
    var var_2 = !select(all(vec2<bool>(true, true)) | true, false, true);
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-135f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x, _wgslsmith_div_f32(var_1.x, 846f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(var_1.x, 193f)), _wgslsmith_f_op_f32(min(-448f, var_1.x)), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_div_f32(var_1.x, var_1.x)))), vec4<bool>(all(vec3<bool>(false, true, true)), !(var_1.x <= var_1.x), true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 2792f, -273f, -199f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(584f, -395f, var_1.x, 511f))))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(min(1061f, var_1.x)), _wgslsmith_f_op_f32(-117f * var_1.x), _wgslsmith_f_op_f32(var_1.x + -206f)), vec4<bool>(true, true, false, all(vec4<bool>(true, true, false, true))))), vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), 152f, -211f, var_1.x))));
    let var_4 = vec3<bool>(!(!(!(u_input.c >= 12927u))), all(select(vec3<bool>(var_3.x != var_1.x, any(vec3<bool>(true, false, false)), true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), true), any(vec4<bool>(true, true, false, true)))), true);
    return min(countOneBits(max(vec4<i32>(~8120i, u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, u_input.a.x), vec4<i32>(u_input.b, -30213i, -1i, u_input.b))), -(vec4<i32>(1i, 27574i, -2147483647i, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x)))), ~abs(vec4<i32>(min(u_input.b, -1i), ~u_input.a.x, -28994i, -u_input.a.x)));
}

fn func_1() -> f32 {
    let var_0 = func_2(~u_input.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(242f)), _wgslsmith_f_op_f32(373f + -1024f), _wgslsmith_f_op_f32(select(-1354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-382f, 838f))), true))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_f_op_f32(floor(var_1.x))));
    let var_2 = 566f;
    var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-729f, 276f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -350f, var_1.x)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2)) + _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1928f * -1034f) - var_1.x))), 1025f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec2<bool>(true, true));
    let var_1 = -110f;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1, -282f), 383f, _wgslsmith_f_op_f32(f32(-1f) * -805f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(var_1 + -1051f))) - var_1)));
    let var_3 = _wgslsmith_div_u32(select(u_input.c, _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(38941u, 1u, u_input.c), reverseBits(vec3<u32>(u_input.c, u_input.c, 457u)))), _wgslsmith_sub_i32(reverseBits(u_input.b), _wgslsmith_add_i32(u_input.b, u_input.a.x)) < u_input.a.x), _wgslsmith_sub_u32(abs(min(~0u, firstLeadingBit(u_input.c))), u_input.c));
    let var_4 = countOneBits(vec3<i32>(_wgslsmith_sub_i32(-5166i, u_input.b) ^ u_input.b, u_input.b, u_input.b | 0i));
    var_0 = func_2(_wgslsmith_sub_u32(u_input.c, var_3)).x > _wgslsmith_mult_i32(0i, -u_input.b);
    var var_5 = var_2.yzz;
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-889f - _wgslsmith_f_op_f32(-var_1)))) * _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(step(111f, -2141f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(164f, _wgslsmith_f_op_f32(-206f - var_2.x), false)) - _wgslsmith_f_op_f32(min(var_1, 133f))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~24161i);
}

