struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: vec4<f32> = vec4<f32>(-775f, 239f, -635f, -195f);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> u32 {
    return 0u;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> vec3<bool> {
    let var_0 = func_3(firstLeadingBit(57941i));
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(232f, _wgslsmith_f_op_f32(select(global1.x, -110f, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.x, global1.x))), any(vec3<bool>(true, false, true)))), global1.x, -743f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1584f, 2498f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(397f)), global1.x, 747f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-818f * global1.x))))));
    let var_1 = countOneBits(~min(var_0, u_input.c.x));
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1128f, global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -750f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-645f, 2643f, 163f, global1.x) * vec4<f32>(337f, 1000f, 940f, 912f))))))), any(!vec2<bool>(all(vec2<bool>(true, false)), false))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.yw)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -781f), _wgslsmith_f_op_f32(global1.x - 479f)) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x - 2317f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    return select(vec3<bool>((_wgslsmith_add_i32(22549i, global0[_wgslsmith_index_u32(80738u, 31u)]) ^ -u_input.e) >= 2147483647i, any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(-global1.x) != global1.x), vec3<bool>(true, true, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d, u_input.a, vec3<i32>(u_input.b, u_input.e, 30271i)), vec3<i32>(0i, 0i, u_input.e)) != global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(var_0, 85982u)), 31u)]), var_2.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: u32) -> vec3<bool> {
    var var_0 = arg_1.x;
    global0 = array<i32, 31>();
    var var_1 = arg_0.yx;
    var_1 = countOneBits(arg_0.wy);
    let var_2 = _wgslsmith_f_op_f32(-210f - -183f);
    return func_2(1u, ~reverseBits(u_input.c & vec4<u32>(32920u, 4294967295u, arg_0.x, 15418u)) | ~(vec4<u32>(4294967295u, 0u, arg_0.x, u_input.c.x) << (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, u_input.c.x, 47331u, 84763u), arg_0) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))), 1186f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(295f, -652f)), global1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -823f, _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(-1608f + global1.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x + -1947f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) * global1.x))), global1.x));
    let var_0 = all(select(!func_1(select(vec4<u32>(61667u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 0u, 1u, u_input.c.x), vec4<bool>(true, false, true, false)), vec3<bool>(true, true, true), _wgslsmith_add_u32(u_input.c.x, 1u)), !select(func_2(0u, vec4<u32>(u_input.c.x, 49638u, u_input.c.x, 68814u)), vec3<bool>(false, false, true), 1i == global0[_wgslsmith_index_u32(1u, 31u)]), true));
    var var_1 = Struct_1(!func_2(~_wgslsmith_add_u32(32702u, 81045u), vec4<u32>(~28343u, _wgslsmith_clamp_u32(u_input.c.x, 3473u, 4294967295u), 34031u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c))), -_wgslsmith_mult_i32(1i, global0[_wgslsmith_index_u32(~1u, 31u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 1000f)))), u_input.c.zy, _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(firstTrailingBit(~53831u), 4294967295u, 1u, _wgslsmith_dot_vec4_u32(~u_input.c, select(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x), vec4<u32>(23944u, u_input.c.x, 89162u, u_input.c.x), var_0))), vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(4294967295u, ~u_input.c.x), u_input.c.x, ~(~4294967295u))));
}

