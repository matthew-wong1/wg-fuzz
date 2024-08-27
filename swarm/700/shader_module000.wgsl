struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<f32>(189f, -1053f, 1336f, 788f), vec3<bool>(true, true, false), 2147483647i);

var<private> global1: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<f32>) -> i32 {
    let var_0 = !(!vec3<bool>(global0.c.x, true, !(arg_0.c.x && arg_0.c.x)));
    var var_1 = _wgslsmith_div_i32(select(1i >> (~u_input.a % 32u), global0.d, false) & (i32(-1i) * -8994i), ~_wgslsmith_mult_i32(global0.d, global0.d));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + arg_2.x)), -853f, arg_2.x);
    var var_3 = firstLeadingBit(vec3<u32>(30706u, u_input.a, u_input.b));
    var var_4 = Struct_2(vec2<i32>(-41682i, abs(arg_0.d)));
    return _wgslsmith_div_i32(44916i, abs(min(1i, max(_wgslsmith_dot_vec2_i32(var_4.a, vec2<i32>(global0.d, global0.d)), var_4.a.x))));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec2<u32>) -> f32 {
    var var_0 = abs(~vec3<u32>(arg_0, 57145u, arg_0));
    let var_1 = Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(-(global0.d ^ global0.d), _wgslsmith_add_i32(18727i, func_3(Struct_1(false, vec4<f32>(arg_1.x, 661f, global0.b.x, arg_1.x), global0.c, 175i), vec3<f32>(-175f, -1256f, -1028f), global0.b.xxy))), max(-countOneBits(vec2<i32>(global0.d, global0.d)), min(_wgslsmith_add_vec2_i32(vec2<i32>(global0.d, global0.d), vec2<i32>(global0.d, global0.d)), vec2<i32>(64114i, global0.d) ^ vec2<i32>(global0.d, -54944i)))));
    var var_2 = Struct_2(vec2<i32>(var_1.a.x >> (0u % 32u), abs(_wgslsmith_mult_i32(14341i, var_1.a.x) & _wgslsmith_div_i32(var_1.a.x, var_1.a.x))));
    global0 = Struct_1(arg_2.x, arg_1, select(select(global0.c, select(vec3<bool>(global0.a, false, global0.c.x), !global0.c, !global0.c.x), !global0.c), global0.c, vec3<bool>(all(!global0.c), arg_2.x, false)), -var_2.a.x);
    var var_3 = Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_1))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(global0.b, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1161f, 428f, -1000f, arg_1.x)))))), global0.c, reverseBits(abs(_wgslsmith_add_i32(~var_2.a.x, -1i))));
    return var_3.b.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = Struct_1(arg_3.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.a, arg_2.b, arg_3, vec2<u32>(u_input.a, 0u))), _wgslsmith_f_op_f32(-388f * 573f)), _wgslsmith_f_op_f32(sign(482f)), 200f, _wgslsmith_f_op_f32(func_2(~30704u, vec4<f32>(-1566f, -2492f, -766f, arg_2.b.x), vec2<bool>(arg_3.x, arg_2.a), abs(vec2<u32>(u_input.b, u_input.c))))), global0.b, vec4<bool>(_wgslsmith_f_op_f32(floor(arg_2.b.x)) <= _wgslsmith_div_f32(-1662f, -392f), true, true, all(!vec3<bool>(arg_3.x, false, false))))), select(select(select(vec3<bool>(arg_3.x, arg_0.x, arg_3.x), !global0.c, vec3<bool>(false, arg_3.x, false)), select(!vec3<bool>(true, true, arg_2.c.x), vec3<bool>(false, true, arg_0.x), !global0.a), vec3<bool>(arg_0.x & global0.a, !global0.a, 13935i <= global0.d)), !vec3<bool>(all(vec4<bool>(arg_3.x, true, global0.a, arg_0.x)), global0.a, arg_2.a), select(arg_2.c, vec3<bool>(any(vec4<bool>(false, arg_2.a, false, true)), true, true), all(select(vec2<bool>(true, global0.a), arg_2.c.zy, vec2<bool>(global0.c.x, arg_0.x))))), arg_1);
    var var_1 = Struct_1(2147483647i > countOneBits(~_wgslsmith_add_i32(arg_2.d, -45047i)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(var_0.b)))), vec3<bool>(!arg_3.x, !(!all(var_0.c.yy)), _wgslsmith_f_op_f32(ceil(arg_2.b.x)) >= -1088f), 2147483647i);
    global1 = 2147483647i;
    var_0 = Struct_1(!all(arg_2.c.xx), arg_2.b, vec3<bool>(true, all(select(arg_0, !vec2<bool>(global0.c.x, var_0.a), !vec2<bool>(true, arg_3.x))), !any(vec2<bool>(false, true))), arg_1);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-502f, -273f)) + _wgslsmith_f_op_f32(-var_1.b.x)))) * _wgslsmith_f_op_f32(-452f * 420f))));
    return select(!vec4<bool>(select(false, var_0.a, global0.a | false), all(!var_0.c), select(true, arg_3.x || arg_0.x, global0.c.x), var_0.a), !select(select(vec4<bool>(var_1.c.x, true, arg_2.a, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(any(global0.c), true, any(arg_2.c), true)), !arg_3.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> vec4<bool> {
    var var_0 = select(vec4<bool>(global0.c.x, arg_1, !any(select(vec4<bool>(arg_1, global0.c.x, true, true), vec4<bool>(global0.c.x, arg_1, global0.c.x, true), true)), arg_1), func_4(global0.c.xz, -_wgslsmith_sub_i32(-62003i, i32(-1i) * -36601i), Struct_1(true, vec4<f32>(arg_0.x, 1720f, global0.b.x, _wgslsmith_f_op_f32(func_2(u_input.b, global0.b, vec2<bool>(false, global0.c.x), vec2<u32>(32083u, u_input.b)))), !global0.c, _wgslsmith_div_i32(firstTrailingBit(1038i), ~1i)), select(vec2<bool>(!global0.a, any(vec2<bool>(false, false))), !select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), arg_1), vec2<bool>(true, !arg_1))), vec4<bool>(true, false, any(func_4(select(vec2<bool>(false, true), vec2<bool>(false, global0.a), global0.c.xy), abs(global0.d), Struct_1(false, global0.b, vec3<bool>(global0.c.x, false, global0.a), global0.d), global0.c.yx).wy), !(!select(arg_1, true, true))));
    let var_1 = Struct_1(!var_0.x, vec4<f32>(-713f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1670f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1571f))))), select(var_0.zwz, vec3<bool>(all(vec3<bool>(var_0.x, var_0.x, global0.c.x)) || select(arg_1, true, true), any(!vec3<bool>(true, false, global0.c.x)), select(all(var_0.zw), global0.a, func_4(vec2<bool>(global0.c.x, true), global0.d, Struct_1(global0.a, global0.b, vec3<bool>(false, global0.a, var_0.x), global0.d), global0.c.yy).x)), select(!(var_0.x | true), true, any(global0.c.zx))), global0.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-748f, 731f), vec2<f32>(378f, 174f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0))) + global0.b.yy), false));
    let var_3 = firstTrailingBit(4294967295u);
    global1 = -(~max(-36412i & global0.d, -abs(global0.d)));
    return vec4<bool>(-44488i == _wgslsmith_add_i32(func_3(var_1, _wgslsmith_div_vec3_f32(var_1.b.xxz, global0.b.xyx), global0.b.zww), var_1.d), true, !(~0u < _wgslsmith_mod_u32(var_3 | 18647u, _wgslsmith_div_u32(u_input.b, 0u))), !(firstLeadingBit(7911i) >= var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!any(!vec3<bool>(global0.a, global0.a, global0.a)));
    var var_1 = select(!vec4<bool>(!select(global0.a, global0.a, true), any(select(vec3<bool>(var_0, false, true), global0.c, var_0)), select(!var_0, true, all(vec3<bool>(var_0, var_0, false))), true), select(vec4<bool>(global0.a, 16813i <= global0.d, all(select(global0.c.yz, vec2<bool>(var_0, false), vec2<bool>(global0.a, var_0))), !global0.a), func_1(global0.b.xx, any(vec4<bool>(true, var_0, true, var_0))), true), !(!func_4(global0.c.zz, global0.d, Struct_1(global0.c.x, vec4<f32>(global0.b.x, global0.b.x, 596f, -538f), vec3<bool>(global0.c.x, false, global0.a), -2147483647i), select(global0.c.yx, global0.c.yz, vec2<bool>(var_0, var_0)))));
    let var_2 = Struct_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec4_f32(round(global0.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(774f, 320f, 2230f, 494f), global0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(922f, 209f, -516f, 486f) + global0.b))))), !(!vec3<bool>(var_0, false || var_1.x, var_0)), abs(global0.d));
    let var_3 = ~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c, 21982u), _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(u_input.a, u_input.a, u_input.c, u_input.b)), vec4<u32>(u_input.c, ~u_input.a, ~u_input.c, 4294967295u)));
    let var_4 = Struct_2(_wgslsmith_mult_vec2_i32(-((vec2<i32>(-27746i, 0i) << (vec2<u32>(var_3, 4354u) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_i32(vec2<i32>(-20334i, -71840i), vec2<i32>(var_2.d, global0.d))), vec2<i32>(-(-4633i >> (1u % 32u)), min(-556i, var_2.d | global0.d))));
    let var_5 = Struct_1(any(vec2<bool>(func_4(vec2<bool>(false, var_2.c.x), var_4.a.x, var_2, select(vec2<bool>(false, true), vec2<bool>(var_2.c.x, true), var_1.x)).x, true)), _wgslsmith_f_op_vec4_f32(-global0.b), vec3<bool>(select(!(!global0.c.x), func_4(var_2.c.xy, -30197i ^ var_4.a.x, Struct_1(false, var_2.b, vec3<bool>(var_0, true, false), 41443i), !vec2<bool>(var_2.c.x, global0.c.x)).x, !(var_2.a && true)), !global0.a, var_2.a), var_4.a.x);
    let var_6 = Struct_2(vec2<i32>(firstLeadingBit(select(min(var_2.d, 17902i), ~0i, any(var_5.c.zy))), ~(-var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(1u, 1u, firstLeadingBit(u_input.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_3, var_3, 25042u), abs(vec3<u32>(4294967295u, u_input.c, u_input.a))))), global0.b.x, var_5.d);
}

