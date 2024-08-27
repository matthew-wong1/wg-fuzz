struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-143f)), _wgslsmith_f_op_f32(-788f * -1169f), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1002f * 510f))))) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -594f), _wgslsmith_f_op_f32(ceil(353f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-356f + 685f))))));
    let var_1 = !select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), select(false, true, false)), select(vec3<bool>(u_input.b == u_input.b, true, any(vec2<bool>(false, false))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), false), vec3<bool>(true, true, false));
    var var_2 = select(true, u_input.a.x < _wgslsmith_dot_vec2_u32(reverseBits(select(u_input.a.zy, vec2<u32>(40587u, 56290u), var_1.x)), select(select(u_input.a.ww, vec2<u32>(u_input.a.x, u_input.a.x), var_1.zz), select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), var_1.yx), !var_1.yz)), !(!var_1.x));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f) - 293f) * -2271f) - _wgslsmith_div_f32(-292f, 289f)));
    global0 = array<Struct_4, 18>();
    return !any(vec2<bool>(!any(vec4<bool>(true, var_1.x, true, false)), true));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: f32) -> bool {
    global0 = array<Struct_4, 18>();
    let var_0 = vec2<bool>(true, true);
    let var_1 = arg_0.a;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -292f)));
    global0 = array<Struct_4, 18>();
    return func_3();
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global0 = array<Struct_4, 18>();
    let var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(1f + arg_0.x) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))), all(vec4<bool>(select(false, false, true), true, select(true, false, false), any(vec3<bool>(true, true, true)))), all(vec2<bool>(true, true)), true), vec4<bool>(true, all(vec4<bool>(true, u_input.b >= u_input.b, 18764u == u_input.a.x, any(vec2<bool>(true, true)))), true && func_2(Struct_3(arg_0.x), global0[_wgslsmith_index_u32(u_input.a.x, 18u)], arg_0.x), true), select(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !all(vec3<bool>(true, false, false))), !vec4<bool>(any(vec3<bool>(true, false, true)), false, false, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(707f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_f_op_f32(-arg_0.x))))));
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    return Struct_1(any(select(var_0.ywx, vec3<bool>(select(true, var_0.x, true), true, var_0.x), false)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = -2936i;
    global0 = array<Struct_4, 18>();
    var_0 = -arg_0.x;
    var var_1 = Struct_2(func_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1745f)), -1327f)));
    let var_2 = arg_0.yyz;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 18>();
    let var_0 = Struct_2(func_4(select(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, -2669i, u_input.b, u_input.b), -vec4<i32>(-1i, -39610i, 1i, 11045i)), min(firstLeadingBit(vec4<i32>(-19672i, 1i, 3870i, u_input.b)), select(vec4<i32>(-1i, 34650i, u_input.b, 0i), vec4<i32>(u_input.b, u_input.b, 8526i, 46411i), vec4<bool>(false, false, true, false))), vec4<bool>(true, true, u_input.b <= 2147483647i, true)), func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -287f), 190f)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true))));
    var var_1 = vec2<u32>(abs(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), u_input.a))), _wgslsmith_div_u32(u_input.a.x << (_wgslsmith_dot_vec2_u32(u_input.a.xw, countOneBits(u_input.a.zz)) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), u_input.a.zz | u_input.a.xw), _wgslsmith_mult_vec2_u32(vec2<u32>(29985u, 33784u), ~u_input.a.wx))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(307f, -1177f) - vec2<f32>(-389f, -772f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-645f, 251f))))), _wgslsmith_f_op_f32(f32(-1f) * -810f), ~_wgslsmith_div_i32(1i, u_input.b) >> ((u_input.a.x >> (~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u)) % 32u), select(2147483647i, u_input.b, false), (u_input.a ^ vec4<u32>(0u, u_input.a.x | 1u, reverseBits(4294967295u), 0u)) | ~_wgslsmith_add_vec4_u32(~u_input.a, ~vec4<u32>(5326u, 4294967295u, var_1.x, 4294967295u)));
}

