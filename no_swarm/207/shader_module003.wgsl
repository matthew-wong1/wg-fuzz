struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1.a.zz;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), arg_0), arg_1.a.zx)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-532f, -2235f))), _wgslsmith_f_op_f32(f32(-1f) * -778f))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(min(-1972f, arg_1.a.x))), var_0.x))));
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i | min(abs(u_input.b.x), 0i), u_input.b.x, -1i, ~u_input.d.x), _wgslsmith_mod_vec4_i32(~vec4<i32>(-372i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), u_input.d.x, -23649i), -select(u_input.b, vec4<i32>(2147483647i, u_input.d.x, -2147483647i, u_input.d.x), vec4<bool>(true, arg_1.b, arg_1.b, arg_1.b))));
    var var_2 = arg_1;
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1012f - _wgslsmith_f_op_f32(min(-2105f, 337f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_2.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(481f + var_0.x) * 1788f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-678f, -763f) + var_2.a.xy), _wgslsmith_f_op_vec2_f32(vec2<f32>(390f, arg_0) + vec2<f32>(1404f, 206f)))))));
    return -46744i;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.wzw), arg_0.ywy) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -428f, 961f)) - _wgslsmith_f_op_vec3_f32(-arg_0.ywx))), arg_0.wzy)), u_input.b.x >= abs(u_input.d.x));
    let var_1 = select(!vec2<bool>(1269f > _wgslsmith_f_op_f32(-arg_0.x), true || (u_input.c > 1u)), !select(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, false)), vec2<bool>(any(vec2<bool>(var_0.b, false)), true), vec2<bool>(all(vec3<bool>(true, var_0.b, true)), arg_0.x <= var_0.a.x)), ~u_input.d.x <= _wgslsmith_mult_i32(func_3(-827f, global0[_wgslsmith_index_u32(~1u, 12u)]), ~reverseBits(u_input.b.x)));
    var var_2 = 822f;
    let var_3 = firstLeadingBit(_wgslsmith_mod_i32(u_input.d.x, 1i));
    global0 = array<Struct_1, 12>();
    return var_0.b;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = vec4<bool>(true, true || func_2(vec4<f32>(_wgslsmith_f_op_f32(-568f + 146f), 1000f, _wgslsmith_f_op_f32(-263f * 1237f), 1226f)), !(false && !all(vec2<bool>(false, true))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1000f, 949f, -413f), vec4<f32>(778f, 1798f, 1380f, 482f)), vec4<f32>(-428f, -110f, 1654f, 405f))))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1126f), -1543f))))));
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    return global0[_wgslsmith_index_u32(u_input.c, 12u)];
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.a, vec3<f32>(arg_0.a.x, -598f, 1000f))) * arg_2.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(424f + 1029f) + _wgslsmith_f_op_f32(step(1000f, arg_0.a.x))))) > _wgslsmith_div_f32(arg_0.a.x, 1178f));
    let var_1 = abs(reverseBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(firstTrailingBit(arg_1), ~arg_3.x), ~(~arg_1))));
    let var_2 = !(!func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(315f, arg_2.a.x, -807f, var_0.a.x))));
    var var_3 = select(vec2<bool>(true, true), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(var_0.b, true), vec2<bool>(arg_2.b, var_0.b)), var_0.b)), !all(vec2<bool>(true, true)));
    let var_4 = global0[_wgslsmith_index_u32(47448u, 12u)];
    return var_4.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~19558u;
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    var var_1 = firstTrailingBit(vec4<u32>(~(~(23077u | var_0)), ~1u, max(reverseBits(_wgslsmith_div_u32(44518u, 4294967295u)), var_0), u_input.c));
    global0 = array<Struct_1, 12>();
    var var_2 = -u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-1938i, u_input.b.x >> (1u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(434f)))) + _wgslsmith_div_f32(1085f, _wgslsmith_f_op_f32(func_4(func_1(46008i), var_0, global0[_wgslsmith_index_u32(~4294967295u, 12u)], ~vec2<u32>(2390u, 44143u))))), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -235f))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, var_0, u_input.a.x), vec4<u32>(4294967295u, 35754u, 103321u, var_1.x) << (u_input.e % vec4<u32>(32u)))));
}

