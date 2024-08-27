struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global1: array<bool, 26>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec4<bool> {
    global0 = array<vec3<bool>, 19>();
    global1 = array<bool, 26>();
    let var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(-865f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f))))), -21541i, true, !(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(arg_2.x, 26u)], true, true), global0[_wgslsmith_index_u32(16507u, 19u)], true), !vec3<bool>(global1[_wgslsmith_index_u32(arg_2.x, 26u)], true, global1[_wgslsmith_index_u32(arg_2.x, 26u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(61817u, 26u)]))));
    let var_2 = Struct_4(var_1.c, arg_1, vec2<u32>(select(abs(arg_2.x), 1u, (u_input.a.x >> (4294967295u % 32u)) > arg_3.x), arg_2.x));
    return select(!vec4<bool>(false, false && (2325f != arg_1), true != (global1[_wgslsmith_index_u32(u_input.a.x, 26u)] & var_2.a), !all(vec4<bool>(true, false, global1[_wgslsmith_index_u32(11051u, 26u)], var_2.a))), vec4<bool>(false, (select(4737u, var_2.c.x, true) >= ~arg_2.x) | false, false, true), select(!(!vec4<bool>(true, var_2.a, false, global1[_wgslsmith_index_u32(arg_3.x, 26u)])), !select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.c, false, var_2.a, false), true), var_1.d.x));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !all(!func_3(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a, arg_0.a, 927f))), -1000f, ~u_input.a, ~u_input.a));
    var var_1 = arg_0;
    let var_2 = ~51582u;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a, 1235f, var_1.a, _wgslsmith_f_op_f32(abs(-1000f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -830f)), 234f, _wgslsmith_f_op_f32(-1362f * var_1.a), _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(f32(-1f) * -1461f)))));
    var var_4 = 13419u;
    return Struct_1(501f, ~83353i, global1[_wgslsmith_index_u32(firstLeadingBit(abs(~4294967295u)), 26u)], !select(vec3<bool>(true, true, any(vec2<bool>(false, false))), global0[_wgslsmith_index_u32(firstLeadingBit(var_2) >> (4294967295u % 32u), 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)] != true));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(arg_0.a));
    var var_1 = vec2<i32>(-3284i, -1i);
    var var_2 = arg_0.d;
    let var_3 = ~(~(~_wgslsmith_mod_u32(u_input.a.x, 1u)) >> (u_input.a.x % 32u));
    var var_4 = Struct_3(~125918u);
    return func_2(Struct_1(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_sub_i32((2778i >> (u_input.a.x % 32u)) | -37464i, ~abs(arg_0.b)), !any(global0[_wgslsmith_index_u32(~23978u, 19u)]), !vec3<bool>(false, -1i >= var_1.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 1u), vec3<u32>(1u, 3835u, 1u)), 26u)]))).d;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_2 {
    global1 = array<bool, 26>();
    let var_0 = -2147483647i;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(arg_3)));
    var var_2 = arg_1;
    global1 = array<bool, 26>();
    return Struct_2(arg_3);
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: bool) -> Struct_2 {
    return func_5(u_input.a.x, Struct_1(_wgslsmith_f_op_f32(-arg_0.x), -_wgslsmith_clamp_i32(1i, 1i, 1i), all(vec2<bool>(true, false)), func_4(func_2(Struct_1(arg_0.x, -2147483647i, false, global0[_wgslsmith_index_u32(u_input.a.x, 19u)])), arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) * _wgslsmith_f_op_f32(abs(arg_1))), 775f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-704f, arg_0.x, arg_0.x) + vec3<f32>(257f, -2028f, arg_0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 656f, 1000f) * vec3<f32>(1216f, arg_1, arg_0.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(426f)), arg_0.x)));
}

fn func_6(arg_0: Struct_2) -> u32 {
    global0 = array<vec3<bool>, 19>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(687f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(Struct_1(arg_0.a.x, 0i, true, vec3<bool>(global1[_wgslsmith_index_u32(66212u, 26u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 26u)]))).a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x)))), true && global1[_wgslsmith_index_u32(u_input.a.x >> (~u_input.a.x % 32u), 26u)])), ~(i32(-1i) * -1i), true, select(!vec3<bool>(false, global1[_wgslsmith_index_u32(~26968u, 26u)], true), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a.x, arg_0.a.x, 792f), vec3<f32>(arg_0.a.x, arg_0.a.x, -1850f))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-522f, arg_0.a.x, 1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), -922f), vec2<u32>(abs(u_input.a.x), ~45804u), u_input.a | vec2<u32>(29072u, u_input.a.x)).zyw, global1[_wgslsmith_index_u32(firstTrailingBit(17395u), 26u)]));
    let var_1 = Struct_4(true, -1000f, _wgslsmith_clamp_vec2_u32(~(select(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a, var_0.c) >> (firstLeadingBit(vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u))), ~select(vec2<u32>(u_input.a.x, 60162u) | vec2<u32>(u_input.a.x, 40201u), u_input.a << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), select(var_0.d.yy, vec2<bool>(false, global1[_wgslsmith_index_u32(47925u, 26u)]), false)), abs(_wgslsmith_div_vec2_u32(~u_input.a, vec2<u32>(21090u, 0u)))));
    return u_input.a.x;
}

fn func_7(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<i32>) -> Struct_3 {
    global0 = array<vec3<bool>, 19>();
    var var_0 = true;
    global1 = array<bool, 26>();
    let var_1 = Struct_4(!func_4(Struct_1(arg_1, arg_2.x, true, global0[_wgslsmith_index_u32(arg_0.x ^ 112000u, 19u)]), -559f).x, -972f, abs(max(min(u_input.a, abs(u_input.a)), vec2<u32>(arg_0.x ^ 0u, 72593u))));
    var_0 = true;
    return Struct_3(var_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 26>();
    var var_0 = u_input.a.x;
    var var_1 = func_7(vec3<u32>(_wgslsmith_sub_u32(24891u, func_6(func_1(vec2<f32>(643f, -294f), -268f, false))), countOneBits(u_input.a.x), ~12284u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-156f * -123f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -719f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-481f * -1936f)))))), abs((abs(vec3<i32>(-1i, 28708i, -2147483647i)) >> (firstLeadingBit(vec3<u32>(u_input.a.x, 1u, u_input.a.x)) % vec3<u32>(32u))) ^ vec3<i32>(2147483647i, 1i, -20604i)));
    let var_2 = _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(~2147483647i, -50079i, 0i, -2147483647i)) >> ((min(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), select(vec4<u32>(u_input.a.x, 1u, var_1.a, u_input.a.x), vec4<u32>(u_input.a.x, 1u, var_1.a, u_input.a.x), global1[_wgslsmith_index_u32(1u, 26u)])) | countOneBits(vec4<u32>(var_1.a, 38128u, var_1.a, var_1.a) | vec4<u32>(4294967295u, u_input.a.x, 31508u, var_1.a))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(countOneBits(abs(vec4<i32>(1i, 1i, -9805i, -63710i))), vec4<i32>(func_2(func_2(Struct_1(1000f, 2147483647i, true, vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 26u)], global1[_wgslsmith_index_u32(1u, 26u)])))).b, i32(-1i) * -1i, ~0i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -1i, -2147483647i), vec4<i32>(53341i, -46068i, -2147483647i, 0i)), 2147483647i))));
    var_0 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(-var_2, select(vec2<i32>(var_2, var_2) << (firstTrailingBit(u_input.a) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(~vec2<i32>(-4714i, var_2), vec2<i32>(var_2, -1i) | vec2<i32>(-1i, var_2)), vec2<bool>(global1[_wgslsmith_index_u32(42966u, 26u)], false)) ^ firstTrailingBit(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(var_2, -52330i), vec2<i32>(-2791i, 27969i)))), _wgslsmith_clamp_vec3_i32(((vec3<i32>(var_2, 1i, var_2) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, var_1.a, 60002u), vec3<u32>(u_input.a.x, 4294967295u, 13220u), vec3<u32>(var_1.a, 1u, 20733u)) % vec3<u32>(32u))) | firstTrailingBit(~vec3<i32>(var_2, -1i, var_2)), firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(-78811i, -57753i, var_2), countOneBits(var_2), -1095i)), vec3<i32>(~max(24187i, var_2), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-9442i, var_2, -1i, 12127i), vec4<i32>(var_2, -2147483647i, -17015i, var_2)), ~vec4<i32>(var_2, var_2, var_2, -11433i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_2, -2147483647i), select(vec2<i32>(var_2, 0i), vec2<i32>(-2147483647i, var_2), global1[_wgslsmith_index_u32(var_1.a, 26u)])))));
}

