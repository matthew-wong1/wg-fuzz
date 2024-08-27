struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29>;

var<private> global1: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = -1048f;
    global0 = array<vec4<f32>, 29>();
    var var_1 = select(~(-vec4<i32>(u_input.c, u_input.d.x, u_input.c, u_input.c)), vec4<i32>(44127i, _wgslsmith_mult_i32(-u_input.d.x, min(0i, 31489i)), _wgslsmith_div_i32(-u_input.d.x, -11611i), 0i), true) << (vec4<u32>(_wgslsmith_mod_u32(arg_0, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(50279u, 16727u, 57054u), vec3<u32>(arg_0, u_input.e.x, u_input.b.x)), abs(vec3<u32>(65365u, 10128u, u_input.b.x)))), ~_wgslsmith_div_u32(4294967295u >> (0u % 32u), 1u), 31215u, 0u) % vec4<u32>(32u));
    var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -firstTrailingBit(-vec4<i32>(819i, var_1.x, -54158i, u_input.d.x)), vec4<i32>(-20355i, _wgslsmith_mod_i32(var_1.x, _wgslsmith_mult_i32(min(u_input.d.x, -25726i), var_1.x | u_input.c)), 1i, -14967i));
    let var_2 = 2147483647i;
    return true;
}

fn func_2(arg_0: vec4<i32>) -> bool {
    global1 = Struct_1(global1.a, false, select(global1.c, func_3(~u_input.e.x, Struct_1(vec4<bool>(true, global1.c, global1.a.x, false), global1.c, global1.c)) & true, !global1.c));
    let var_0 = vec2<i32>(max(~33356i, reverseBits(u_input.c)), _wgslsmith_div_i32(_wgslsmith_sub_i32(~(u_input.c ^ arg_0.x), -45861i), u_input.d.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(1f * 1119f), -445f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2064f, -122f, 363f) - vec3<f32>(-1506f, 605f, -2235f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-491f, -243f, -1000f)) + vec3<f32>(1286f, 796f, 580f)))));
    let var_2 = Struct_1(!vec4<bool>(any(select(vec4<bool>(global1.c, false, true, global1.c), vec4<bool>(global1.c, false, true, global1.b), false)), false, global1.a.x, _wgslsmith_f_op_f32(550f * 1000f) == _wgslsmith_f_op_f32(var_1.x + var_1.x)), any(global1.a.yz), global1.b);
    return u_input.d.x >= _wgslsmith_mod_i32(u_input.c, _wgslsmith_mod_i32(9846i, _wgslsmith_div_i32(~50873i, _wgslsmith_mod_i32(-23497i, 30446i))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = Struct_1(var_0.a, true, func_2(vec4<i32>(1i, 2147483647i, 9012i, -17169i ^ u_input.c) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(23343u, u_input.b.x, 7191u, u_input.a), vec4<u32>(u_input.e.x, u_input.a, 14917u, 46451u)) % vec4<u32>(32u))));
    global0 = array<vec4<f32>, 29>();
    global1 = var_1;
    let var_2 = abs(min(_wgslsmith_sub_vec3_i32(countOneBits(~vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)), -_wgslsmith_sub_vec3_i32(vec3<i32>(23390i, 48722i, u_input.d.x), vec3<i32>(u_input.d.x, -23338i, u_input.c))), ~vec3<i32>(1i, u_input.d.x, u_input.c)));
    return var_0;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + 239f));
    global1 = func_4(_wgslsmith_f_op_f32(-var_0), Struct_1(select(vec4<bool>(select(false, false, global1.a.x), true || global1.c, select(global1.b, global1.c, true), !global1.c), !global1.a, global1.a.x), any(!vec4<bool>(global1.a.x, global1.a.x, true, false)), true), !vec4<bool>(any(vec4<bool>(false, false, false, global1.a.x)), !(!global1.c), global1.c, !global1.c), !select(global1.a.wy, vec2<bool>(global1.b, func_2(vec4<i32>(0i, -41831i, 7751i, u_input.d.x))), !vec2<bool>(global1.a.x, global1.b)));
    let var_1 = all(vec4<bool>(true || ((u_input.a != 35682u) || true), _wgslsmith_f_op_f32(-var_0) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) - _wgslsmith_f_op_f32(round(var_0))), global1.c, false));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 + var_0)));
    global0 = array<vec4<f32>, 29>();
    return -1472f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.a, false, false);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -2151f) * _wgslsmith_f_op_f32(round(-160f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -680f))))));
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_f32(286f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-843f * -433f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-136f + 1420f) - _wgslsmith_f_op_f32(select(-1000f, -1142f, true)))), _wgslsmith_div_f32(-328f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1209f, 962f))), !(var_0.c || (true && global1.c)))));
    var_1 = 3459f;
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(u_input.e.x >> (32436u % 32u), 29u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(729f, 364f, -1042f, 698f))))))));
    var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_4.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 753f) - 1595f)))));
    global0 = array<vec4<f32>, 29>();
    var var_5 = all(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(countOneBits(vec4<u32>(1u, 0u, u_input.b.x, 0u)) >> (reverseBits(vec4<u32>(1u, u_input.a, 64311u, u_input.e.x)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, -388f)), var_4.x, var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4.x, var_4.x, false))))), ~(i32(-1i) * -9372i), _wgslsmith_f_op_vec4_f32(var_4 + vec4<f32>(_wgslsmith_f_op_f32(-1095f * -3009f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.x, 758f))), 1000f, var_4.x)));
}

