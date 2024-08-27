struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1501f) * -1011f))), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2)))), -141f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2 + arg_2)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1200f, -322f, var_0.x))))) + vec4<f32>(-184f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -1153f), _wgslsmith_f_op_f32(189f - -509f)), 1385f, _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(-168f * var_0.x), -450f, _wgslsmith_f_op_f32(-891f - _wgslsmith_f_op_f32(f32(-1f) * -790f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1441f, arg_2, arg_2, -204f)) - vec4<f32>(_wgslsmith_div_f32(-1307f, -598f), var_0.x, var_0.x, -2044f))));
    let var_1 = arg_1;
    var var_2 = !select(vec3<bool>(global0[_wgslsmith_index_u32(~0u, 29u)], any(select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(19608u, 29u)]), global0[_wgslsmith_index_u32(51891u, 29u)])), abs(23188i) >= _wgslsmith_mult_i32(arg_0.x, arg_0.x)), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 29u)], true)), !(!vec3<bool>(global0[_wgslsmith_index_u32(7092u, 29u)], global0[_wgslsmith_index_u32(20748u, 29u)], global0[_wgslsmith_index_u32(40940u, 29u)])));
    let var_3 = vec4<i32>(_wgslsmith_add_i32(0i, ~(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(arg_0.x, 1i)) >> (~88456u % 32u))), abs(arg_0.x), 0i, 0i << (0u % 32u));
    return vec2<i32>(1i, 12162i);
}

fn func_2() -> vec4<f32> {
    global0 = array<bool, 29>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(578f, 763f, -243f, 1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1808f, 2852f, 353f, 1535f))) - vec4<f32>(-1250f, 781f, _wgslsmith_f_op_f32(sign(1168f)), _wgslsmith_f_op_f32(f32(-1f) * -1511f)))), vec4<f32>(1f, 1f, 1f, 1f));
    let var_1 = vec2<bool>(false, false);
    let var_2 = Struct_4(Struct_3(_wgslsmith_div_vec2_i32(vec2<i32>(56824i, 39385i), vec2<i32>(-1i, 53698i) << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u))) ^ func_3(-vec2<i32>(-27543i, 60529i), u_input.a.wzy, 130f)), Struct_3(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-47947i, 1i, -11772i, -5733i), vec4<i32>(1i, 8447i, 26611i, -12052i)), 1i) ^ -vec2<i32>(-21686i, 0i)), Struct_3(~(-vec2<i32>(-2147483647i, -2147483647i) >> (~u_input.a.zy % vec2<u32>(32u)))), Struct_1(603f, _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 0i, 15428i), vec3<i32>(1i, 1i, 1i)), vec3<i32>(select(1i, 0i, var_1.x), -2147483647i, 2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -2453f), _wgslsmith_f_op_f32(f32(-1f) * -321f))), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, 2147483647i, 32556i), vec4<i32>(0i, -22643i, 58724i, 0i)), -930i, abs(firstLeadingBit(7417i))), vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, u_input.b.x, u_input.a.x), vec3<u32>(61706u, u_input.b.x, u_input.b.x)), vec3<u32>(u_input.a.x, 37341u, 66214u) >> (u_input.b % vec3<u32>(32u))), 29u)], var_1.x, var_1.x)), ~abs(_wgslsmith_sub_vec2_i32(func_3(vec2<i32>(-14359i, 2147483647i), u_input.a.yxx, var_0.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -9440i), vec2<i32>(-2147483647i, 15405i)))));
    let var_3 = Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(exp2(var_0.b)));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(var_0.a, var_0.a, true))))));
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-252f, -1000f, 564f, 2019f)), _wgslsmith_div_vec4_f32(vec4<f32>(1966f, 862f, -1920f, -271f), vec4<f32>(-534f, 136f, 493f, -410f)))))));
    var var_1 = firstLeadingBit(1i);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -802f) * _wgslsmith_f_op_f32(var_0.x * -650f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -342f))))) - var_0.yy);
    var var_3 = all(vec3<bool>(true, true, var_0.x != _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, -1639f)))));
    var_3 = false;
    return var_0.zx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1087f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(-2271f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(158f - 1093f) + _wgslsmith_f_op_f32(min(1584f, -1119f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_1()), vec2<f32>(-527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(671f * -1018f)))))));
    var var_1 = -1218i;
    let var_2 = _wgslsmith_div_i32(_wgslsmith_div_i32(~(~1i), -2147483647i), abs(~(~(88184i << (u_input.b.x % 32u)))));
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-5689i, abs(vec3<u32>(u_input.b.x, 37963u, 42323u)), select(~firstLeadingBit(vec4<i32>(var_2, 1i, 28690i, 1i) | vec4<i32>(0i, -2147483647i, var_2, 6789i)), vec4<i32>(7494i, _wgslsmith_sub_i32(var_2, var_2), -(2147483647i ^ var_2), var_2), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~72292u, reverseBits(u_input.a.x)), 29u)]), u_input.a.x);
}

