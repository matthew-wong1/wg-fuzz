struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: vec2<bool>) -> vec4<i32> {
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var var_0 = 33451i;
    var_0 = _wgslsmith_div_i32(-2147483647i, u_input.d.x);
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.c.x, -9181i), -1i, u_input.c.x), firstLeadingBit(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.d.x, arg_0.a, 28469i) | vec3<i32>(7205i, u_input.c.x, 0i)), ~vec3<i32>(arg_1, arg_0.a, 51210i), vec3<i32>(arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -18033i, arg_1, arg_1), vec4<i32>(arg_1, 13893i, arg_1, arg_0.a)), -2147483647i))));
    return _wgslsmith_div_vec4_i32(abs(vec4<i32>(19153i, 3804i, _wgslsmith_sub_i32(-2147483647i, -u_input.c.x), -1i)), -vec4<i32>(u_input.d.x, var_1.x, abs(~u_input.c.x), select(2811i, -70101i, true)));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = arg_2;
    var var_1 = vec2<i32>(arg_2.a, _wgslsmith_dot_vec4_i32(-firstLeadingBit(~vec4<i32>(7693i, 1i, var_0.a, arg_2.a)), firstLeadingBit(min(vec4<i32>(1786i, arg_2.a, arg_2.a, 10869i) & vec4<i32>(u_input.e.x, -7444i, 96048i, u_input.d.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, var_0.a, arg_2.a, 1i), vec4<i32>(var_0.a, 0i, var_0.a, 2147483647i), vec4<i32>(-1i, arg_2.a, arg_2.a, arg_2.a))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(arg_0.x, arg_0.x, -682f))))), vec3<f32>(-1341f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -517f) * 136f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)))))), ~firstLeadingBit(~1i) > _wgslsmith_dot_vec4_i32(func_2(arg_2, -u_input.d.x, select(vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), vec2<bool>(arg_1, arg_1)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_1.x, var_1.x, u_input.d.x), select(vec4<i32>(var_1.x, 17234i, var_0.a, 2840i), vec4<i32>(var_0.a, u_input.c.x, var_0.a, arg_2.a), vec4<bool>(false, arg_1, arg_1, false)))), vec4<u32>(~_wgslsmith_clamp_u32(var_0.b & 4294967295u, ~arg_3, _wgslsmith_add_u32(0u, u_input.b)), arg_2.b, abs(var_0.b), 4294967295u));
    let var_3 = u_input.e;
    let var_4 = global0[_wgslsmith_index_u32(~(~4294967295u), 24u)];
    return _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1785f)))))));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = u_input.e.x;
    global0 = array<Struct_1, 24>();
    let var_1 = select(select(select(vec2<bool>(true, true), vec2<bool>(u_input.a.x >= 1833u, true), true), vec2<bool>(false, false), true), vec2<bool>(false, u_input.b != select(1u, ~0u, all(vec2<bool>(false, false)))), select(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true))), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), any(vec3<bool>(true, true, true))))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-arg_0), reverseBits(1u) != reverseBits(min(u_input.a.x, 0u)), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(u_input.a.x, 38872u, u_input.a.x, 30290u)), ~vec4<u32>(59958u, 71730u, 0u, u_input.a.x)), u_input.b, u_input.b));
    var var_3 = vec4<i32>(var_0, _wgslsmith_div_i32(i32(-1i) * -u_input.c.x, -(~reverseBits(15185i))), u_input.d.x, -2147483647i);
    return _wgslsmith_f_op_f32(var_2.a.x - -1792f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x ^ u_input.c.x;
    var var_1 = u_input.d.x;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(809f, 695f, 430f), vec3<f32>(-305f, -475f, -765f)))), false, Struct_1(firstTrailingBit(0i), countOneBits(9598u)), firstLeadingBit(u_input.b))))), 778f);
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), var_2.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.x, var_2.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 578f) * vec2<f32>(var_2.x, var_2.x)))))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(var_2.x + 1000f)) - var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1742f + var_2.x)), _wgslsmith_f_op_f32(func_3(vec3<f32>(-1000f, 134f, -1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-767f + _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-868f))))), vec4<u32>(abs(~(~65587u)), 29142u, 18307u, ~u_input.a.x), ~u_input.b);
}

