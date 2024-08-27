struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec4<i32> {
    return u_input.a;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global0 = array<vec2<bool>, 14>();
    global1 = Struct_1(_wgslsmith_clamp_i32(-28244i, -_wgslsmith_mod_i32(global1.a, -2147483647i) ^ 1548i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-u_input.a, reverseBits(u_input.a)), func_3(_wgslsmith_f_op_f32(-global1.d)))), any(select(vec3<bool>(true, true, true), !select(vec3<bool>(global1.c, false, true), vec3<bool>(true, false, false), false), global1.b)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_f_op_f32(-global1.d)) - _wgslsmith_f_op_f32(-global1.d))));
    var var_0 = Struct_4(-20507i, Struct_1(u_input.a.x, true, global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(global1.d * global1.d)) + _wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(exp2(global1.d))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2129f)), _wgslsmith_f_op_f32(1048f * _wgslsmith_f_op_f32(round(372f)))) + vec2<f32>(_wgslsmith_f_op_f32(step(-366f, _wgslsmith_f_op_f32(510f + -541f))), global1.d)), _wgslsmith_add_vec2_u32((arg_0.zz & arg_0.zw) ^ arg_0.yx, arg_0.zw));
    var_0 = Struct_4(-1662i, Struct_1(var_0.b.a, 0u < (firstTrailingBit(32577u) | 1u), false, -762f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(685f - _wgslsmith_f_op_f32(var_0.b.d * 314f)), _wgslsmith_f_op_f32(f32(-1f) * -1318f)))), vec2<u32>(reverseBits(~arg_0.x), ~var_0.d.x));
    global0 = array<vec2<bool>, 14>();
    return Struct_1(5048i, global1.c, true, _wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c.x))) * var_0.c.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>) -> f32 {
    global1 = func_2(abs(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, 4294967295u, 6552u, 1u)), max(~vec4<u32>(4294967295u, 86907u, 68244u, 43286u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(4133u, 4513u, 0u, 437u), vec4<u32>(4294967295u, 0u, 1u, 9782u), vec4<bool>(true, arg_0.x, global1.c, arg_0.x)), countOneBits(vec4<u32>(58084u, 0u, 0u, 4294967295u))))));
    var var_0 = vec2<bool>(global1.b, true);
    var var_1 = Struct_4(_wgslsmith_mod_i32(u_input.b & func_3(_wgslsmith_div_f32(1095f, global1.d)).x, _wgslsmith_dot_vec2_i32(-min(vec2<i32>(u_input.b, -1i), u_input.a.xx), u_input.c.zy)), Struct_1(_wgslsmith_mod_i32(arg_1.x, -60421i) ^ u_input.b, !all(select(vec3<bool>(global1.c, arg_0.x, global1.c), vec3<bool>(global1.b, true, true), vec3<bool>(false, true, global1.b))), var_0.x, 1000f), vec2<f32>(522f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(func_2(vec4<u32>(46422u, 15058u, 24201u, 0u)).d))))), vec2<u32>(1u, 1u));
    global1 = var_1.b;
    let var_2 = Struct_3(abs(u_input.a), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-454f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) - _wgslsmith_f_op_f32(var_1.c.x + -1509f))), -2027f), Struct_2(4294967295u, firstTrailingBit(~vec2<u32>(12795u, 4550u)), func_2(~_wgslsmith_mult_vec4_u32(vec4<u32>(3488u, var_1.d.x, var_1.d.x, var_1.d.x), vec4<u32>(0u, 0u, var_1.d.x, 31436u)))));
    return global1.d;
}

fn func_4(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_1(global1.a, ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(5826u, 4420u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 19153u), vec2<u32>(1u, 83407u))) < _wgslsmith_div_u32(~4294967295u, 1u), all(select(vec3<bool>(!global1.b, any(vec2<bool>(true, global1.b)), 0i <= u_input.c.x), vec3<bool>(u_input.c.x < -1i, true, true), select(!vec3<bool>(global1.b, global1.b, true), !vec3<bool>(global1.c, true, false), global1.b | global1.c))), var_0.x);
    global0 = array<vec2<bool>, 14>();
    global0 = array<vec2<bool>, 14>();
    var var_2 = -1i;
    return !vec4<bool>(2147483647i >= abs(u_input.b ^ u_input.c.x), _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 53369u, 4294967295u), vec3<u32>(5483u, 1u, 37798u)), 14u)], u_input.a.zyz)) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.x, -277f)), 1000f)), var_1.c, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(!vec2<bool>(global1.c, false), -u_input.a.yzx)), _wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(-global1.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1071f, 885f, global1.d)))))));
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, -124f, -1192f))))))));
    var var_1 = ~_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(global1.a, abs(u_input.b), _wgslsmith_sub_i32(global1.a, global1.a), firstTrailingBit(u_input.a.x))), func_3(1f));
    var var_2 = ((0u & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(52775u, 1u, 62567u, 1u), vec4<u32>(9782u, 1u, 0u, 38147u)))) << (1u % 32u)) >> (~4294967295u % 32u);
    var var_3 = ~_wgslsmith_mod_u32(77661u, 85146u);
    var_1 = -reverseBits(countOneBits(vec4<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_1.x), vec2<i32>(2147483647i, global1.a)), -3736i, global1.a << (1u % 32u))));
    global0 = array<vec2<bool>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.wy, ~u_input.a.wx, vec2<i32>(-20580i, u_input.c.x)), var_1.zx) ^ (u_input.a.yy ^ ~(~var_1.zy)));
}

