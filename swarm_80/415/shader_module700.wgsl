struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(38079i, -6855i));

var<private> global1: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global2: i32 = -25198i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global2 = u_input.b;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-1514f)), -247f, _wgslsmith_f_op_f32(max(1676f, 527f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(736f, -1170f, 161f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1374f, 1440f, -1746f)), select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, true)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(191f)), -258f, _wgslsmith_f_op_f32(f32(-1f) * -1961f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1250f, 383f, 629f)))))))));
    global1 = array<vec2<bool>, 23>();
    var var_1 = _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(-57465i, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), 504i))), _wgslsmith_mod_vec2_i32(vec2<i32>(15398i, i32(-1i) * -10231i), arg_1.a));
    var var_2 = u_input.a.yx;
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1296f + _wgslsmith_f_op_f32(func_3(any(vec4<bool>(false, false, false, true)), arg_1, arg_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-2082f)), _wgslsmith_f_op_f32(step(arg_0, 298f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -1193f)));
    global2 = i32(-1i) * -2147483647i;
    global0 = Struct_1(vec2<i32>(u_input.b, _wgslsmith_sub_i32(abs(-1i), 0i)));
    global2 = -global0.a.x << (_wgslsmith_mod_u32(~(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) & _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), ~_wgslsmith_mod_u32(firstTrailingBit(71911u), _wgslsmith_mod_u32(u_input.a.x, 29479u))) % 32u);
    let var_1 = arg_1;
    return any(vec2<bool>(!select(true, true, true), any(vec3<bool>(any(global1[_wgslsmith_index_u32(52955u, 23u)]), true, any(vec3<bool>(true, true, false))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = vec4<bool>(any(!vec4<bool>(func_2(589f, Struct_1(vec2<i32>(34021i, arg_1.a.x)), vec2<f32>(-1572f, -927f)), true, false, all(vec3<bool>(false, false, false)))), all(vec3<bool>(true, true, true)), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.b), vec3<i32>(52986i, u_input.b, 1i))) >= ~(-(1i ^ u_input.b)), any(select(!(!global1[_wgslsmith_index_u32(4294967295u, 23u)]), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a.x, firstLeadingBit(1u)), 23u)], vec2<bool>(any(vec3<bool>(false, true, false)), true))));
    var var_1 = true;
    var var_2 = all(var_0.zw);
    var var_3 = u_input.a;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-250f)))))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-779f, -545f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(777f * 1175f) - _wgslsmith_f_op_f32(ceil(-168f))))));
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = select(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], vec2<bool>(true || !all(global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), true), !select(true, true & (u_input.b >= u_input.b), any(!global1[_wgslsmith_index_u32(u_input.a.x, 23u)])));
    var_0 = false;
    global2 = -_wgslsmith_sub_i32(~u_input.b, min(~_wgslsmith_dot_vec2_i32(global0.a, global0.a), _wgslsmith_sub_i32(i32(-1i) * -12470i, func_1(Struct_1(global0.a), Struct_1(vec2<i32>(1i, 1i)), Struct_1(vec2<i32>(0i, global0.a.x))))));
    var_0 = true;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-474f, -343f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-715f))), -144f, -268f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(210f, -353f, -1067f, 545f) * vec4<f32>(1664f, 1000f, -782f, 428f)) - vec4<f32>(-734f, -389f, -291f, -933f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(395f + 321f), 1f, _wgslsmith_f_op_f32(698f - -1676f), -916f) + vec4<f32>(-216f, _wgslsmith_f_op_f32(max(1371f, 1036f)), -105f, -1000f)))));
    var_0 = true;
    var var_3 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec3_i32(max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, global0.a.x, -21603i), vec3<i32>(33341i, global0.a.x, 0i)), vec3<i32>(u_input.b, -2658i, 2147483647i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 1i, -2147483647i), vec3<i32>(global0.a.x, u_input.b, 0i))), firstTrailingBit(abs(~vec3<i32>(67388i, -11017i, -29189i))), !select(!vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(true, true, var_1.x), false)));
}

