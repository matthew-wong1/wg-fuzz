struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<u32>) -> vec2<u32> {
    var var_0 = Struct_1(1u);
    var_0 = Struct_1(u_input.b.x);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -753f);
    var var_2 = all(vec2<bool>(true, !any(vec4<bool>(false, false, true, true)))) & true;
    let var_3 = Struct_2(vec4<bool>(false, _wgslsmith_dot_vec2_u32(~vec2<u32>(23746u, 42456u), vec2<u32>(28649u, arg_0.x)) != ~(~75585u), any(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), var_0.a == (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 68355u, var_0.a), arg_0.yxw) ^ _wgslsmith_mult_u32(0u, 0u))));
    return _wgslsmith_div_vec2_u32(u_input.b & abs(firstTrailingBit(vec2<u32>(4294967295u, arg_0.x)) ^ (arg_0.zz & u_input.b)), countOneBits(firstLeadingBit(arg_0.wx) << (arg_0.xx % vec2<u32>(32u))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: vec2<i32>) -> bool {
    var var_0 = i32(-1i) * -arg_0;
    var_0 = firstTrailingBit(arg_3.x);
    var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-arg_0, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(39104i, arg_3.x), reverseBits(arg_3))), vec2<i32>(~1i, 1i)), ~min(-35746i, -(-18948i | arg_1)));
    var_0 = u_input.a;
    var var_1 = vec3<u32>(abs(0u), ~4162u, min(_wgslsmith_dot_vec2_u32(func_3(abs(vec4<u32>(1u, 4294967295u, u_input.b.x, 0u))), firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 60084u), u_input.b))), ~u_input.b.x));
    return arg_2;
}

fn func_4(arg_0: bool) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_div_u32(~(~u_input.b.x << (~50101u % 32u)), ~(~3757u)));
    var var_1 = var_0;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1667f + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(-1300f)))), 796f);
    var_1 = var_0;
    var var_3 = Struct_1(~u_input.b.x);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(367f, -1863f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-744f, 454f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(910f, 1000f) + vec2<f32>(1145f, -663f)))))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_f_op_f32(799f + -2403f)));
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-276f, -1183f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1417f, 1465f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(363f, 1196f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 1000f), vec2<f32>(-574f, -1055f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-828f, 1875f), vec2<f32>(1691f, 926f)))))));
    let var_1 = !arg_0.a.wy;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(u_input.a, -2147483647i, u_input.a != 17792i, select(vec2<i32>(-23411i, u_input.a), vec2<i32>(u_input.a, 1i), vec2<bool>(false, true))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(var_0.x - var_0.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1338f) + vec2<f32>(930f, var_0.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-349f, var_0.x) - vec2<f32>(-411f, -315f))))));
    var var_2 = vec2<u32>(firstTrailingBit(func_3(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u)).x), u_input.b.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(470f, _wgslsmith_f_op_f32(f32(-1f) * -198f))))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0.x))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -210f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_2(vec4<bool>(false, true, false, true)))))) - -2252f) - -569f);
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.b, u_input.b), firstTrailingBit(vec2<u32>(u_input.b.x, 0u))), u_input.b.x, 4294967295u) >> (~u_input.b.x % 32u);
    var_1 = u_input.b.x;
    var_1 = _wgslsmith_mod_u32(~(~(~u_input.b.x) << (~(~u_input.b.x) % 32u)), 34604u);
    let var_2 = Struct_2(select(vec4<bool>(true, var_0, _wgslsmith_f_op_f32(f32(-1f) * -635f) < _wgslsmith_f_op_f32(sign(1826f)), !var_0), !(!select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(var_0, false, true, false), vec4<bool>(var_0, var_0, false, var_0))), select(!(!vec4<bool>(false, false, var_0, var_0)), select(select(vec4<bool>(false, var_0, true, var_0), vec4<bool>(true, var_0, var_0, true), var_0), select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(false, var_0, true, false), true), vec4<bool>(var_0, var_0, false, var_0)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(569f, reverseBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b.x, 45672u, 0u), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) >> (vec3<u32>(16664u, u_input.b.x, 16239u) % vec3<u32>(32u)))) | reverseBits(~vec3<u32>(28953u, 4294967295u, 33349u)), _wgslsmith_add_vec3_u32(countOneBits(~vec3<u32>(u_input.b.x, 10493u, 47702u)), vec3<u32>(0u, _wgslsmith_sub_u32(u_input.b.x, countOneBits(u_input.b.x)), 4294967295u)));
}

