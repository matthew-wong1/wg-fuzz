struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2>;

var<private> global1: array<Struct_1, 21>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-418f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1398f + -1000f), _wgslsmith_f_op_f32(trunc(-1457f)))), 1402f)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1621f)), _wgslsmith_f_op_f32(-618f + -275f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -174f)) + _wgslsmith_f_op_f32(trunc(-474f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -483f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-643f - -1950f)), _wgslsmith_f_op_f32(-1f))), true));
    var var_1 = Struct_4(true);
    let var_2 = 0u;
    global1 = array<Struct_1, 21>();
    let var_3 = all(select(vec2<bool>(any(!vec3<bool>(var_1.a, var_1.a, var_1.a)), var_1.a), !select(!vec2<bool>(var_1.a, true), vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, var_1.a)), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(var_1.a, true), vec2<bool>(false, false)), true)));
    return _wgslsmith_clamp_i32(u_input.a.x, max(firstLeadingBit(u_input.a.x ^ u_input.a.x), u_input.a.x), (max(u_input.a.x, -1i) & reverseBits(u_input.a.x)) ^ 2732i) != u_input.a.x;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: u32) -> vec4<f32> {
    let var_0 = !select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(func_3(), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_4(false);
    global0 = array<vec3<u32>, 2>();
    global0 = array<vec3<u32>, 2>();
    global0 = array<vec3<u32>, 2>();
    return vec4<f32>(_wgslsmith_f_op_f32(floor(-357f)), _wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -242f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1062f)), _wgslsmith_f_op_f32(-236f + -846f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-423f)))))));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(575f, 522f)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(countOneBits(countOneBits(1u)), 2147483647i ^ u_input.a.x, 6938u)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -475f), var_1, _wgslsmith_f_op_f32(f32(-1f) * -931f), var_1)))));
    let var_3 = u_input.c;
    var var_4 = Struct_2(global1[_wgslsmith_index_u32(var_3, 21u)], countOneBits(arg_0 << (~(~4294967295u) % 32u)), vec3<bool>(true, true & all(vec2<bool>(true, true)), any(vec2<bool>(true, func_3()))), global1[_wgslsmith_index_u32(max(20480u, max(arg_0, ~min(4294967295u, 45805u))), 21u)]);
    return 1003f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_add_u32(abs(u_input.b.x), u_input.b.x));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-372f - -2879f), _wgslsmith_f_op_f32(1831f * 294f), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-495f, 1000f))));
    var var_2 = 440f;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1u)) - _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + var_1.x))))))));
    let var_4 = Struct_5(_wgslsmith_mult_i32(-29707i, -24137i) << (((abs(u_input.c) >> ((var_0 ^ u_input.c) % 32u)) & u_input.c) % 32u), -267f);
    var_2 = _wgslsmith_f_op_f32(-var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1045f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b))), _wgslsmith_sub_vec4_u32(firstLeadingBit(max(vec4<u32>(44494u, 4294967295u, 21285u, u_input.c), vec4<u32>(var_0, var_0, 5416u, u_input.c)) | vec4<u32>(u_input.c, var_0, 0u, 50511u)), vec4<u32>(1u & (34671u ^ var_0), ~(var_0 & 0u), min(_wgslsmith_div_u32(u_input.b.x, u_input.c), var_0), ~0u)), vec4<u32>(var_0 | ~0u, _wgslsmith_dot_vec3_u32(u_input.b, max(countOneBits(vec3<u32>(42407u, 36944u, 36150u)), _wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(var_0, 2u)], vec3<u32>(5333u, 0u, var_0)))), var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(var_0), var_0), ~vec2<u32>(var_0, u_input.b.x))), reverseBits(u_input.a));
}

