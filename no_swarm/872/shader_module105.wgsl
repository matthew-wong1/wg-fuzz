struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: f32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> i32 {
    global0 = array<Struct_1, 31>();
    var var_0 = false;
    global1 = arg_1.x;
    global0 = array<Struct_1, 31>();
    let var_1 = u_input.a;
    return u_input.b;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: u32) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_1)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, arg_0, 1000f, 461f), arg_1))), arg_1))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_0)))), _wgslsmith_f_op_f32(1000f - 431f), _wgslsmith_f_op_f32(f32(-1f) * -860f))));
    let var_2 = vec2<bool>(all(vec2<bool>((i32(-1i) * -36634i) <= u_input.b, all(vec2<bool>(true, true)))), !(func_3(~(-24426i), vec4<f32>(var_0.a.x, 625f, arg_0, arg_0)) <= u_input.b));
    let var_3 = select(vec4<bool>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * _wgslsmith_f_op_f32(769f + var_1.a.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * 817f) * arg_0), select(true, false, 6660u >= arg_2), true), vec4<bool>(!(arg_1.x >= _wgslsmith_f_op_f32(-var_0.a.x)), select(false, select(!var_2.x, any(vec4<bool>(false, var_2.x, true, false)), false), true), true, (1i | firstTrailingBit(1i)) < 8539i), !vec4<bool>(false, _wgslsmith_f_op_f32(trunc(136f)) < _wgslsmith_f_op_f32(select(139f, 1000f, var_2.x)), var_2.x, !var_2.x));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(floor(var_1.a.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-881f * arg_1.x) - _wgslsmith_f_op_f32(-var_1.a.x)))) * -631f);
    return _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(max(0i, u_input.b), ~u_input.b)), vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 12721i), vec2<i32>(u_input.b, 93880i)))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(u_input.b, 12179i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 33618i), vec2<i32>(1i, u_input.b))), ~vec2<i32>(u_input.b, -1i)), vec2<i32>(-2147483647i, _wgslsmith_div_i32(0i, -53244i) & max(0i, u_input.b)), vec2<i32>(44366i, u_input.b)));
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(410f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(round(arg_0.a.x))), 187f, all(vec3<bool>(true, false, true)) & false)), true)));
    var var_0 = vec2<f32>(arg_0.a.x, -970f);
    var var_1 = arg_0;
    return StorageBuffer(~func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(796f - -540f)), vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x - arg_0.a.x), -116f, 1f, var_0.x), ~_wgslsmith_div_u32(31229u, u_input.a)), 1u, vec4<u32>(4294967295u, ~(~u_input.a ^ u_input.a), _wgslsmith_sub_u32(abs(~u_input.a), _wgslsmith_mod_u32(u_input.a, 14824u) & u_input.a), ~55435u), firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(46155i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 1i))), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, u_input.b), vec3<i32>(u_input.b, -17602i, -1i), vec3<i32>(u_input.b, u_input.b, u_input.b)), abs(vec3<i32>(45525i, u_input.b, 31951i))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(18101u, 31u)];
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a));
    var_0 = Struct_1(var_1.a);
    let var_2 = ~46799i;
    var_0 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = func_1(global0[_wgslsmith_index_u32(~(~u_input.a), 31u)]);
}

