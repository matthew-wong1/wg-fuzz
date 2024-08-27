struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7>;

var<private> global1: vec2<f32> = vec2<f32>(2536f, 1183f);

var<private> global2: bool;

var<private> global3: vec3<u32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(-u_input.b, u_input.e);
    global2 = !any(!(!(!vec2<bool>(arg_1, arg_0))));
    global1 = _wgslsmith_f_op_vec2_f32(-arg_2.xw);
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, -65097i ^ max(u_input.e, 1i), 1i), vec3<i32>(-(~(-1i)), max(_wgslsmith_div_i32(-3347i, u_input.e), u_input.b), u_input.b | u_input.e)), _wgslsmith_mult_i32(~(47613i | u_input.e), min(abs(u_input.e), -u_input.b)) >> (4294967295u % 32u));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global3.x), 7u)];
    return Struct_1(-u_input.e);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + 275f), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(global1.x, 231f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(594f, 663f)) + _wgslsmith_f_op_f32(trunc(global1.x))))))));
    var var_1 = u_input.a ^ firstLeadingBit(~u_input.a);
    var var_2 = ~(~vec2<i32>(~_wgslsmith_add_i32(29456i, arg_0.a), 2147483647i));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * global1.x))))), -1069f);
    let var_3 = select(!(!vec3<bool>(all(vec2<bool>(false, true)), false, true)), select(vec3<bool>(any(vec4<bool>(true, false, true, true)) || any(vec3<bool>(true, false, true)), false, all(vec4<bool>(true, true, true, true))), vec3<bool>((24151i & arg_0.a) == arg_0.a, true, true == (var_1.x < 1u)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true)))), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))));
    return u_input.a;
}

fn func_1(arg_0: u32, arg_1: bool) -> vec3<u32> {
    var var_0 = func_2(true, false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, -817f, -1564f), vec4<f32>(global1.x, global1.x, global1.x, -369f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1482f, global1.x, global1.x, 402f))))));
    return func_3(func_2(true, !all(select(vec3<bool>(arg_1, false, false), vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, false, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, -792f, global1.x, global1.x), vec4<f32>(-1000f, global1.x, global1.x, global1.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(938f, -1545f, global1.x, 752f))))), Struct_1(2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-(~u_input.b), -1i), vec2<i32>(-1i, firstLeadingBit(u_input.e) & 0i)));
    var var_1 = func_1(1u, false);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -875f)))), _wgslsmith_f_op_f32(global1.x - _wgslsmith_div_f32(-733f, _wgslsmith_f_op_f32(-1000f * global1.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-113f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - -825f) - global1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(abs(global1.x))))));
    var var_3 = ((~(-1i) >> (~func_1(0u, false).x % 32u)) > (-firstLeadingBit(u_input.b) >> (0u % 32u))) | false;
    var var_4 = _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_1.x, 1u)), vec2<u32>(global3.x, 22396u)));
    var var_5 = var_2.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-2130f, _wgslsmith_f_op_f32(f32(-1f) * -486f), !all(vec3<bool>(false, false, false)))), vec4<u32>(var_1.x >> (_wgslsmith_div_u32(global3.x, min(1u, u_input.d.x)) % 32u), var_1.x, reverseBits(_wgslsmith_div_u32(u_input.c.x, ~0u)), var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-293f, 667f, 557f, var_2.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(254f, 499f, var_5.x, 1010f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -428f, global1.x, 843f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -145f)), var_5.x, 2204f, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(min(-1575f, 520f))))), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -35395i, u_input.e, u_input.e), vec4<i32>(var_0.a, -17147i, var_0.a, var_0.a)) ^ -var_0.a) & var_0.a, abs(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, 1i), 58366i, -1i, _wgslsmith_clamp_i32(u_input.e, 0i, 0i)), vec4<i32>(~var_0.a, -21285i, u_input.e, _wgslsmith_mult_i32(u_input.e, -56963i)))));
}

