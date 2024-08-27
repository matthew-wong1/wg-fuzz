struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: array<Struct_1, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(0i, arg_0.x, ~(-arg_0.x ^ arg_0.x)), select(firstTrailingBit(~(-vec3<i32>(8297i, arg_0.x, arg_0.x))), _wgslsmith_sub_vec3_i32((vec3<i32>(29046i, 41265i, arg_0.x) << (vec3<u32>(u_input.a.x, 11485u, arg_2.b.x) % vec3<u32>(32u))) & (vec3<i32>(1i, 33140i, 1i) | vec3<i32>(-1i, arg_0.x, -19615i)), ~(-vec3<i32>(arg_0.x, 2147483647i, -1i))), select(global0.xzz, vec3<bool>(arg_2.a.x, arg_2.a.x, true), all(vec3<bool>(arg_2.a.x, true, false)))));
    global1 = array<Struct_1, 8>();
    let var_1 = -34892i;
    var_0 = (vec3<i32>(0i, 2147483647i, -1i) << (vec3<u32>(_wgslsmith_sub_u32(4294967295u, arg_2.b.x) & _wgslsmith_mult_u32(u_input.a.x, 0u), ~_wgslsmith_sub_u32(arg_2.b.x, 38055u), arg_2.b.x) % vec3<u32>(32u))) | -min(~(~vec3<i32>(var_1, var_1, var_1)), -_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, var_1, arg_0.x), vec3<i32>(2147483647i, 0i, 2147483647i)));
    let var_2 = Struct_1(arg_2.a, vec3<u32>(~_wgslsmith_sub_u32(u_input.a.x, 23423u), _wgslsmith_mult_u32(73863u, abs(u_input.a.x)), arg_2.b.x) | min(~u_input.a.yzx, arg_2.b), vec2<f32>(arg_1.x, _wgslsmith_div_f32(arg_2.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(201f + arg_2.c.x), 745f, global0.x | false)))));
    return vec4<u32>(abs(136340u), ~select(select(0u, 4294967295u & u_input.a.x, arg_2.a.x & false), ~_wgslsmith_dot_vec2_u32(vec2<u32>(39688u, 5110u), u_input.a.yx), all(global0.wwz)), 26342u, max(_wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec3_u32(u_input.a.yzy, vec3<u32>(1u, var_2.b.x, arg_2.b.x))), 49493u));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<i32>) -> f32 {
    global0 = select(vec4<bool>(global0.x, true, !select(!global0.x, !global0.x, !global0.x), all(global0.wxw)), select(select(vec4<bool>(false | global0.x, !global0.x, !global0.x, true), select(vec4<bool>(global0.x, false, global0.x, true), select(vec4<bool>(true, global0.x, false, true), vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, false, false, true)), true), _wgslsmith_add_u32(u_input.a.x, u_input.a.x) >= 6788u), !select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), true), any(!global0.xy)), any(vec3<bool>(true, !(!global0.x), true)));
    let var_0 = 4294967295u | countOneBits(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~arg_1.x, 1u), arg_1.x));
    global1 = array<Struct_1, 8>();
    var var_1 = vec4<bool>(any(!select(!vec4<bool>(global0.x, false, true, global0.x), !vec4<bool>(global0.x, global0.x, false, true), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(true, false, global0.x, global0.x)))), true, any(select(select(vec3<bool>(false, global0.x, global0.x), !global0.yxz, !global0.x), !(!global0.xzz), true)), u_input.a.x <= ~_wgslsmith_mult_u32(1u, arg_1.x << (arg_1.x % 32u)));
    var var_2 = global1[_wgslsmith_index_u32(countOneBits(var_0), 8u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.c.x), -232f, false)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> vec3<f32> {
    global1 = array<Struct_1, 8>();
    global0 = vec4<bool>(any(vec2<bool>(true, true)), global0.x, true, global0.x);
    let var_0 = Struct_1(global0.wz, arg_0.wxw, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-441f))), _wgslsmith_f_op_f32(f32(-1f) * -882f)), vec2<f32>(452f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1918f + -1190f))))));
    global0 = select(vec4<bool>(global0.x, true, !global0.x, any(global0.zyz)), vec4<bool>(global0.x, global0.x, global0.x, false), true);
    var var_1 = var_0;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * var_1.c.x)) + -1099f), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(401f)) - _wgslsmith_f_op_f32(f32(-1f) * -1316f)), func_3(~vec2<i32>(-1879i, 14524i), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c.x, var_1.c.x, var_0.c.x, var_0.c.x))), Struct_1(var_1.a, vec3<u32>(u_input.a.x, 24613u, 19649u), var_0.c)), min(firstTrailingBit(vec2<i32>(15622i, 57260i)), countOneBits(vec2<i32>(18058i, -1i)))))));
}

fn func_1() -> vec4<u32> {
    global1 = array<Struct_1, 8>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u), u_input.a.zw))))));
    let var_1 = vec2<bool>(true, true);
    var var_2 = u_input.a.xzx;
    let var_3 = true;
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - 1000f))), _wgslsmith_f_op_f32(-899f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1005f, 256f, global0.x)) + -1217f))));
    global1 = array<Struct_1, 8>();
    let var_1 = global0.x;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~82506u, ~(~33689u) << (u_input.a.x % 32u), min(countOneBits(u_input.a.x), u_input.a.x), ~u_input.a.x << (~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u)), min(u_input.a, _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(func_1(), vec4<u32>(4294967295u, 30327u, u_input.a.x, 81500u)), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x), u_input.a)), ~vec4<u32>(u_input.a.x, 40251u, u_input.a.x, 60219u) << (reverseBits(vec4<u32>(34584u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))))), 8u)];
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(62615u, 1i, 1u, var_0.x);
}

