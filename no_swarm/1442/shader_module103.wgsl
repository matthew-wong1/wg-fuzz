struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    global0 = array<f32, 2>();
    let var_0 = Struct_1(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(~69297u, 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(9146u, 81705u, 4294967295u, 12995u), vec4<u32>(1u, 17240u, 0u, 4294967295u)))), 4294967295u, global0[_wgslsmith_index_u32(19339u, 2u)], !(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    var var_1 = Struct_3(Struct_2(Struct_1(4294967295u, _wgslsmith_div_u32(80218u, ~45186u), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.b, 2u)] - -277f), true && var_0.d), !var_0.d));
    let var_2 = vec4<bool>(!all(!vec4<bool>(var_1.a.b, var_0.d, var_0.d, false)), var_0.d, false, any(select(vec2<bool>(var_0.d | var_0.d, true), select(select(vec2<bool>(false, var_1.a.b), vec2<bool>(var_1.a.b, true), true), !vec2<bool>(var_1.a.a.d, true), !vec2<bool>(var_0.d, true)), true)));
    return var_1.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> i32 {
    global0 = array<f32, 2>();
    let var_0 = Struct_4(arg_1, ~33224i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1880f))))));
    return var_0.b;
}

fn func_4(arg_0: u32, arg_1: i32) -> Struct_2 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_1.a.a, 2u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(13925u, 2u)]))))))));
    var var_3 = firstTrailingBit(var_1.a.b);
    return func_2();
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_4) -> f32 {
    let var_0 = Struct_3(func_4(~arg_1.x, func_3(func_2(), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.x, arg_2.a.x, arg_2.a.x, 36557u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a.x, 12788u, arg_1.x, arg_2.a.x), vec4<u32>(arg_2.a.x, 9948u, arg_1.x, 37455u))))));
    global0 = array<f32, 2>();
    var var_1 = ~abs(36247u);
    let var_2 = arg_2.a.x;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(216f + _wgslsmith_f_op_f32(func_4(91895u, u_input.a.x).a.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1045f + 1345f))))));
    return _wgslsmith_f_op_f32(sign(arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], -2746f, global0[_wgslsmith_index_u32(22214u, 2u)]), vec3<f32>(-1000f, global0[_wgslsmith_index_u32(67302u, 2u)], -551f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 2u)], 199f, global0[_wgslsmith_index_u32(4294967295u, 2u)]) - vec3<f32>(-822f, global0[_wgslsmith_index_u32(1u, 2u)], -923f))), vec3<f32>(_wgslsmith_div_f32(534f, global0[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_f_op_f32(func_1(vec4<f32>(global0[_wgslsmith_index_u32(0u, 2u)], 1164f, -238f, 1000f), vec2<u32>(25602u, 0u), Struct_4(vec4<u32>(0u, 0u, 240u, 21323u), u_input.b, global0[_wgslsmith_index_u32(4294967295u, 2u)]))), _wgslsmith_f_op_f32(min(-278f, -690f))))));
    global0 = array<f32, 2>();
    var var_2 = var_1.x;
    var var_3 = Struct_4(vec4<u32>(0u, min(_wgslsmith_clamp_u32(14715u, 29635u, ~92362u), max(~1u, _wgslsmith_clamp_u32(1u, 4294967295u, 0u))), firstTrailingBit(select(4294967295u, ~1u, true)), ~(countOneBits(16256u) >> (_wgslsmith_div_u32(1u, 9171u) % 32u))), _wgslsmith_div_i32(abs(_wgslsmith_add_i32(u_input.b, _wgslsmith_mult_i32(5988i, 6456i))), ~(-77078i)), -631f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1279f, 1000f, 1253f), vec3<f32>(var_3.c, var_1.x, -600f))))), vec3<f32>(1622f, 113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c - var_1.x) - -1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.a.x, 2u)]) - -257f), var_3.c)));
}

