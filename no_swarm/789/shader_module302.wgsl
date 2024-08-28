struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    global1 = Struct_1(~global1.a, all(select(select(vec4<bool>(false, global1.b, global1.b, false), vec4<bool>(false, arg_1.b, global1.b, arg_1.b), global1.b), vec4<bool>(true, !global1.b, all(vec3<bool>(global1.b, false, arg_1.b)), true), vec4<bool>(true, global1.b, global1.b, false))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 853f)));
    global1 = arg_1;
    var var_0 = Struct_1(firstTrailingBit(select(~min(vec2<i32>(0i, arg_1.a.x), vec2<i32>(arg_1.a.x, 34866i)), _wgslsmith_mod_vec2_i32(~global1.a, -arg_1.a), any(select(vec4<bool>(false, true, true, false), vec4<bool>(arg_1.b, global1.b, false, arg_1.b), global1.b)))), all(!(!select(vec3<bool>(true, false, global1.b), vec3<bool>(global1.b, false, global1.b), global1.b))));
    var var_1 = ~vec2<u32>(u_input.b, arg_0.x);
    return _wgslsmith_mult_u32(42753u, 0u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = vec4<f32>(1376f, arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(205f + arg_0.x))) * arg_0.x), -331f), -1171f);
    let var_1 = arg_1;
    let var_2 = 1i;
    var var_3 = func_3(~abs(vec3<u32>(~4294967295u, 80069u, _wgslsmith_mod_u32(1u, u_input.a.x))), Struct_1(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(global1.a.x, 35461i), ~global1.a.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, -20571i, 37986i), vec3<i32>(var_2, global1.a.x, -32002i))), !(!(arg_2 != u_input.b))));
    global1 = Struct_1(firstLeadingBit(-(global1.a & vec2<i32>(1i, var_2))) ^ (vec2<i32>(abs(global1.a.x), _wgslsmith_dot_vec2_i32(global1.a, vec2<i32>(2147483647i, global1.a.x))) ^ -vec2<i32>(-2147483647i, global1.a.x)), global1.b);
    return Struct_1(_wgslsmith_mult_vec2_i32(global1.a, vec2<i32>(_wgslsmith_mult_i32(abs(0i), firstTrailingBit(0i)), -2304i)), select(true, true, !all(arg_1.xw)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = (1u | u_input.a.x) & 65095u;
    global1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(489f, -607f))) + vec2<f32>(-1891f, 1000f)))), !vec4<bool>(_wgslsmith_f_op_f32(-1040f + -1466f) <= _wgslsmith_f_op_f32(round(-1033f)), all(select(arg_0, arg_0, arg_2.b)), !arg_0.x, true), u_input.b);
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-912f, _wgslsmith_f_op_f32(1000f - 579f)), 644f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-444f, -446f))))), !(!select(!vec4<bool>(global1.b, arg_0.x, false, true), select(vec4<bool>(global1.b, arg_0.x, true, arg_2.b), vec4<bool>(arg_0.x, true, false, true), vec4<bool>(false, arg_1.b, false, false)), !vec4<bool>(global1.b, false, false, true))), abs(u_input.a.x));
    let var_2 = var_1;
    global1 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(-(i32(-1i) * -6251i), ~arg_3), countOneBits(arg_3)), global1.b);
    return _wgslsmith_f_op_f32(-1f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(~vec3<i32>(global1.a.x, global1.a.x, 2147483647i)), firstLeadingBit(-vec3<i32>(global1.a.x, global1.a.x, global1.a.x))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, global1.a.x), _wgslsmith_mod_i32(global1.a.x, -2147483647i)), global1.a.x, 4847i)) | _wgslsmith_div_vec3_i32(-select(reverseBits(vec3<i32>(28367i, 984i, global1.a.x)), reverseBits(vec3<i32>(-42153i, 1i, -1i)), global1.b & false), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(global1.a.x, 0i, global1.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(global1.a.x, global1.a.x, global1.a.x), vec3<i32>(2147483647i, -1i, 0i))), vec3<i32>(1i, _wgslsmith_div_i32(2147483647i, -35657i), i32(-1i) * -1i)));
    var var_1 = Struct_1(reverseBits(var_0.yz), global1.b);
    var var_2 = firstTrailingBit(vec4<i32>(~(~global1.a.x), _wgslsmith_add_i32(var_1.a.x, abs(global1.a.x)), _wgslsmith_mult_i32(1i, -var_1.a.x), ~reverseBits(1i)) << (vec4<u32>(1u, _wgslsmith_sub_u32(1u, u_input.a.x), ~reverseBits(1u), 26962u) % vec4<u32>(32u)));
    let var_3 = 1000f;
    var var_4 = Struct_1(var_2.wz, !var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(var_3, _wgslsmith_div_f32(526f, _wgslsmith_f_op_f32(func_1(vec3<bool>(global1.b, true, var_1.b), Struct_1(var_1.a, true), Struct_1(global1.a, var_1.b), var_1.a.x)))), _wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(-1000f + var_3))), firstTrailingBit(~(~(~u_input.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1314f * 1261f)), 268f));
}

