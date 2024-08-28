struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(-1491f, -1000f), vec2<f32>(-852f, -664f), vec2<f32>(-754f, -1000f), vec2<f32>(1822f, 453f), vec2<f32>(-128f, -1000f), vec2<f32>(-1271f, -1133f), vec2<f32>(-597f, 1995f), vec2<f32>(713f, 1760f), vec2<f32>(-1000f, 759f), vec2<f32>(-2022f, -1000f), vec2<f32>(982f, -535f), vec2<f32>(319f, 410f), vec2<f32>(-1232f, 452f), vec2<f32>(-658f, -398f), vec2<f32>(989f, 373f));

var<private> global1: f32;

var<private> global2: array<bool, 7>;

var<private> global3: vec4<i32> = vec4<i32>(1i, 0i, 20385i, 10825i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: i32) -> f32 {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(379f * -546f))))));
    var var_0 = firstTrailingBit(-52144i);
    var var_1 = _wgslsmith_f_op_f32(ceil(1000f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-230f * _wgslsmith_f_op_f32(floor(1676f)))), _wgslsmith_f_op_f32(-1085f + _wgslsmith_div_f32(1356f, -273f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1426f + -1803f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -933f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1269f)) - _wgslsmith_f_op_f32(floor(var_2)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-431f)), _wgslsmith_f_op_f32(-1000f - 619f), _wgslsmith_f_op_f32(f32(-1f) * -928f), _wgslsmith_f_op_f32(f32(-1f) * -373f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(2027f)), -450f, _wgslsmith_f_op_f32(select(-240f, -527f, global2[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_div_f32(458f, 297f)))));
    var var_1 = Struct_2(vec2<u32>(u_input.a, firstTrailingBit(34295u)));
    var var_2 = !(!select(select(!vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 7u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 7u)]), true), vec2<bool>(true, !global2[_wgslsmith_index_u32(u_input.a, 7u)]), !vec2<bool>(true, global2[_wgslsmith_index_u32(var_1.a.x, 7u)])));
    let var_3 = _wgslsmith_add_i32(-66446i, -4078i);
    var var_4 = vec3<i32>(1i, -39074i, max(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0.x, var_3), arg_0)), firstLeadingBit(global3.x)) & (i32(-1i) * -var_3));
    return _wgslsmith_add_i32(countOneBits(i32(-1i) * -select(var_3, var_4.x, var_2.x)), -select(-2147483647i, 0i, false));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec2<f32> {
    var var_0 = func_3(vec3<i32>(_wgslsmith_add_i32(arg_1.x, arg_1.x), -(~(~2147483647i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.x, -6899i, global3.x), reverseBits(vec3<i32>(13120i, arg_1.x, 27543i)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1242f, _wgslsmith_f_op_f32(ceil(arg_2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - 1000f))), arg_2.x)), 1000f);
    let var_2 = Struct_1(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))) - var_1.x)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, max(37789u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(u_input.a, 30429u, arg_0.a.x, u_input.a))), 15071u) << (~arg_0.a.x % 32u), _wgslsmith_add_u32(arg_0.a.x, arg_0.a.x));
    let var_3 = arg_0;
    let var_4 = !vec3<bool>(!global2[_wgslsmith_index_u32(arg_0.a.x, 7u)], global2[_wgslsmith_index_u32(firstTrailingBit(~arg_0.a.x), 7u)], true);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2 - vec2<f32>(-861f, _wgslsmith_div_f32(arg_2.x, arg_2.x))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(4294967295u, 15u)] - var_2.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, var_2.a.x)))), vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(floor(381f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)), 1713f))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<u32>(~u_input.a, _wgslsmith_mult_u32(14700u, 11526u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1510f, 179f, 904f, 548f) - vec4<f32>(875f, 344f, 236f, -720f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 291f, 975f, 2202f), vec4<f32>(-1778f, 617f, 494f, 838f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1809f, 951f) + _wgslsmith_f_op_f32(-142f + -1357f)), -1596f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1208f + 603f)), _wgslsmith_f_op_f32(func_1(-2147483647i))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(func_2(var_0, -vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(701f, _wgslsmith_f_op_f32(var_1.x - 1f))))));
    let var_3 = global3.zyy ^ firstLeadingBit(vec3<i32>(global3.x, -func_3(vec3<i32>(global3.x, global3.x, -45896i)), _wgslsmith_mod_i32(select(2147483647i, 2147483647i, global2[_wgslsmith_index_u32(14116u, 7u)]), _wgslsmith_mult_i32(-25716i, global3.x))));
    let var_4 = vec3<f32>(2585f, _wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(486f))));
    let x = u_input.a;
    s_output = StorageBuffer(222f, u_input.a);
}

