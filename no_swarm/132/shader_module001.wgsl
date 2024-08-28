struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: u32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: u32,
    d: Struct_3,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 22>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    let var_0 = u_input.a.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(981f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1266f))))));
    global0 = -746f;
    global0 = -199f;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(959f))), _wgslsmith_f_op_f32(1452f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-350f, -1191f))))));
    return vec2<bool>(false, any(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> Struct_5 {
    return Struct_5(vec4<u32>(u_input.c, ~reverseBits(u_input.a.x), u_input.c, 24367u), _wgslsmith_mult_vec2_u32(select(u_input.b.wx, vec2<u32>(30299u, 7719u), !func_3()), ~firstTrailingBit(~vec2<u32>(u_input.a.x, 11069u))), ~36358u, Struct_1(_wgslsmith_f_op_f32(-360f - -388f)));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> f32 {
    global0 = arg_0.c.a;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(157f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.c.a))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0.c.a, 613f)))))) + arg_0.c.a);
    var var_0 = Struct_2(~(~(firstTrailingBit(3929u) ^ (31361u | arg_0.a))), _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(14593i, -2147483647i, arg_0.b))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.b, arg_0.b, arg_0.b), firstLeadingBit(u_input.e)), u_input.d)), Struct_1(_wgslsmith_f_op_f32(step(208f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(517f + 871f), _wgslsmith_f_op_f32(f32(-1f) * -1099f), all(vec3<bool>(false, false, false))))))), _wgslsmith_mult_u32(~arg_0.d, ~arg_0.d), vec2<u32>(1u, ~(~3382u)));
    let var_1 = ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, arg_0.d, u_input.a.x, 1u), firstLeadingBit(u_input.b))));
    var var_2 = func_2(vec4<bool>(any(vec3<bool>(true, true, false)), true, !(true & (u_input.b.x <= 0u)), arg_0.a >= ~0u), u_input.d);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-419f, -1323f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -448f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 22u)];
    let var_1 = _wgslsmith_mult_u32(73437u ^ _wgslsmith_add_u32(23329u, abs(abs(u_input.c))), _wgslsmith_mod_u32(~(~(~9329u)), 31753u));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.d.c, -2155f)))), -171f);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(828f, _wgslsmith_f_op_f32(func_1(Struct_2(4294967295u, 14572i, Struct_1(var_0.d.c), 1u, var_0.d.b.wy), -1000f)))), 983f, var_2.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.e.yyy + vec3<f32>(var_0.d.c, -1000f, var_0.e.x)), var_0.e.wyz) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-323f, var_2.x, 194f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.e.xzz)) + vec3<f32>(var_0.d.a.a, var_0.d.c, _wgslsmith_f_op_f32(sign(-1001f))))));
    let var_4 = countOneBits(u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(abs(-2147483647i) | u_input.e)), var_0.d.b, select(~firstLeadingBit(vec2<i32>(u_input.e, u_input.e)), vec2<i32>(~_wgslsmith_clamp_i32(u_input.d, 2147483647i, u_input.e), 1801i), !func_3().x), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.d, firstLeadingBit(u_input.e), ~u_input.e), -select(max(vec3<i32>(2147483647i, u_input.d, 2147483647i), vec3<i32>(u_input.e, 28123i, -54606i)), firstLeadingBit(vec3<i32>(-1i, 1i, u_input.e)), true)));
}

