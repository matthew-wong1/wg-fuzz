struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 21>;

var<private> global2: array<vec2<bool>, 28>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: u32) -> f32 {
    let var_0 = vec3<bool>(true, any(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), any(global2[_wgslsmith_index_u32(~(~arg_1), 28u)]));
    global0 = Struct_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(global0.b.a), countOneBits(global0.b.a)), 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, arg_1), u_input.b.zz)) >> (countOneBits(firstTrailingBit(~4294967295u)) % 32u), global0.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1063f, arg_0, arg_0) - vec3<f32>(387f, arg_0, arg_0)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(553f, arg_0, arg_0))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_f32(abs(-1024f)), _wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(296f, -388f)), 1209f, _wgslsmith_f_op_f32(arg_0 * -306f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - 916f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 742f), arg_0))));
    global2 = array<vec2<bool>, 28>();
    let var_2 = ((~_wgslsmith_clamp_u32(7223u, global0.a, 0u) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global0.b.a.x, global0.b.a.x), vec2<u32>(46380u, global0.a)), _wgslsmith_clamp_vec2_u32(global0.b.a.wz, u_input.a.yz, global0.b.a.yz)) % 32u)) ^ ~_wgslsmith_mult_u32(70735u ^ u_input.a.x, arg_1 >> (arg_1 % 32u))) ^ u_input.a.x;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(112f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-596f, _wgslsmith_f_op_f32(-var_1.x))))), arg_0);
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    var var_0 = global0.b;
    let var_1 = global0.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(-1293f, 40u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-505f * 830f) - _wgslsmith_f_op_f32(trunc(103f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(590f, -976f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-462f, -647f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1212f + -659f), _wgslsmith_f_op_f32(f32(-1f) * -644f)))));
    global1 = array<i32, 21>();
    var var_3 = false;
    return var_2.x;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = -198f;
    global1 = array<i32, 21>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2041f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(vec3<bool>(arg_0, arg_0, arg_0))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_f32(ceil(2028f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(var_0, var_0))))));
    let var_2 = Struct_1(global0.b.a, vec2<i32>(8368i, -reverseBits(firstLeadingBit(-2147483647i))));
    var var_3 = Struct_2(u_input.a.x, global0.b);
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 21>();
    var var_0 = func_1(true);
    let var_1 = ~(_wgslsmith_mod_vec2_u32(var_0.a.ww, ~(~global0.b.a.wz)) & vec2<u32>(select(~4294967295u, _wgslsmith_add_u32(4294967295u, global0.a), true), var_0.a.x));
    let var_2 = max(abs(vec3<u32>((u_input.a.x | 1u) & _wgslsmith_add_u32(33660u, global0.b.a.x), global0.b.a.x | 18709u, ~(~10465u))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 70030u), var_0.a.xwx), 1u, var_1.x) << (var_0.a.yww % vec3<u32>(32u)));
    var_0 = func_1(~(-(i32(-1i) * -2147483647i)) > var_0.b.x);
    var var_3 = Struct_2(~13301u, Struct_1(vec4<u32>(var_1.x, max(1u, var_1.x << (1u % 32u)), _wgslsmith_clamp_u32(var_1.x, ~54562u, ~u_input.a.x), ~11562u), vec2<i32>(27065i, -var_0.b.x) ^ var_0.b));
    var var_4 = -984f;
    var_4 = _wgslsmith_f_op_f32(-1227f - 239f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1667f + _wgslsmith_f_op_f32(-480f - 409f)) - 1f))), u_input.a, abs(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, 59103u), var_2.x), var_3.a)));
}

