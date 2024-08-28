struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(824u, -1775f, 12375i), vec2<i32>(-33105i, 0i)), Struct_2(Struct_1(5118u, 1142f, 37530i), vec2<i32>(26400i, -23084i)), Struct_2(Struct_1(19307u, 384f, -24105i), vec2<i32>(-1i, 12292i)), Struct_2(Struct_1(18569u, -1000f, 1i), vec2<i32>(2147483647i, 7948i)), Struct_2(Struct_1(0u, 127f, 19454i), vec2<i32>(16874i, 1i)), Struct_2(Struct_1(0u, 1514f, 14843i), vec2<i32>(2147483647i, -1i)), Struct_2(Struct_1(62983u, -1166f, 7567i), vec2<i32>(30711i, 1i)), Struct_2(Struct_1(4294967295u, -1000f, i32(-2147483648)), vec2<i32>(9753i, 2147483647i)), Struct_2(Struct_1(100146u, -566f, -24948i), vec2<i32>(1i, -1i)), Struct_2(Struct_1(34357u, 1241f, 35182i), vec2<i32>(40994i, -32674i)), Struct_2(Struct_1(14124u, -285f, 2147483647i), vec2<i32>(-5380i, -44661i)), Struct_2(Struct_1(59056u, -922f, -3253i), vec2<i32>(-1i, -59759i)), Struct_2(Struct_1(0u, 1000f, 727i), vec2<i32>(-1i, -43440i)), Struct_2(Struct_1(55941u, -1168f, 2147483647i), vec2<i32>(2147483647i, 35883i)), Struct_2(Struct_1(0u, -1585f, 22331i), vec2<i32>(22733i, 0i)), Struct_2(Struct_1(0u, 1067f, i32(-2147483648)), vec2<i32>(-27783i, 24393i)), Struct_2(Struct_1(52344u, -666f, -8190i), vec2<i32>(i32(-2147483648), -80072i)), Struct_2(Struct_1(4294967295u, -935f, 320i), vec2<i32>(0i, 2147483647i)), Struct_2(Struct_1(0u, 207f, 1i), vec2<i32>(-40813i, -1i)), Struct_2(Struct_1(42418u, -224f, -48742i), vec2<i32>(1i, -23503i)), Struct_2(Struct_1(4294967295u, 343f, 1i), vec2<i32>(-85636i, 46713i)), Struct_2(Struct_1(54443u, 1211f, 1i), vec2<i32>(1i, 18265i)), Struct_2(Struct_1(2564u, 488f, -87799i), vec2<i32>(2147483647i, -32691i)));

var<private> global1: array<bool, 24>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    global0 = array<Struct_2, 23>();
    var var_0 = global0[_wgslsmith_index_u32(arg_3.a.a, 23u)];
    var var_1 = arg_3;
    let var_2 = select(vec2<bool>(!arg_1.x, true), !arg_1.xx, select(select(vec2<bool>(true, all(vec4<bool>(true, true, arg_1.x, arg_1.x))), select(arg_1.zz, !arg_1.yx, select(vec2<bool>(arg_1.x, global1[_wgslsmith_index_u32(4294967295u, 24u)]), vec2<bool>(arg_1.x, true), arg_1.xy)), !vec2<bool>(false, arg_1.x)), arg_1.xy, select(arg_1.zy, arg_1.yz, vec2<bool>(true, arg_1.x))));
    var var_3 = abs(reverseBits(u_input.d.x));
    return _wgslsmith_f_op_f32(791f + -629f);
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(3548u, 23u)];
    let var_1 = u_input.b;
    global0 = array<Struct_2, 23>();
    global1 = array<bool, 24>();
    var var_2 = global0[_wgslsmith_index_u32(min(~(0u << (~(~arg_0.a.a) % 32u)), arg_0.a.a), 23u)];
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1986f - _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, var_0.a.c, -2147483647i), var_1.www), max(u_input.a, vec3<i32>(0i, u_input.e, 1i))), !vec3<bool>(true, global1[_wgslsmith_index_u32(var_2.a.a, 24u)], true), var_1, Struct_2(var_0.a, vec2<i32>(u_input.b.x, 2147483647i))))), -1433f));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    let var_0 = Struct_1(1u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.d.x >> (arg_0 % 32u), 23u)])))))), -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-3577i, 0i, 2147483647i)), -vec3<i32>(u_input.b.x, u_input.e, u_input.e)), 1i));
    var var_1 = Struct_1(0u, var_0.b, u_input.b.x << (arg_0 % 32u));
    return StorageBuffer(~_wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), -(i32(-1i) * -61141i)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1140f, var_0.b, var_0.b) - vec3<f32>(var_0.b, 883f, var_0.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, 1207f, 641f) - vec3<f32>(var_1.b, -2846f, var_0.b))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(823f, 1000f, var_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-273f, var_0.b, var_1.b) + vec3<f32>(var_1.b, 1581f, -294f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1756f), _wgslsmith_f_op_f32(var_0.b * var_1.b), var_1.b))), reverseBits(vec4<i32>(~2343i, ~0i, min(-1i, min(23938i, var_0.c)), var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 24>();
    global0 = array<Struct_2, 23>();
    let var_0 = vec4<u32>(1u, ~16965u, u_input.c.x, ~35668u);
    var var_1 = Struct_2(Struct_1(firstTrailingBit(firstLeadingBit(~119881u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1276f)), select(_wgslsmith_sub_i32(~u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -5116i, 1i), vec3<i32>(-4379i, 2147483647i, 2147483647i))), -u_input.a.x, true)), ~vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.xz, ~u_input.a.xz), ~_wgslsmith_mult_i32(-12067i, u_input.e)));
    global0 = array<Struct_2, 23>();
    let var_2 = var_1.a;
    let var_3 = vec4<bool>(!(!any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 24u)], true))), global1[_wgslsmith_index_u32(abs(~(~(~var_2.a))), 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)] | ((firstTrailingBit(39321u) | (0u << (u_input.d.x % 32u))) > var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -999f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.b, 1547f, global1[_wgslsmith_index_u32(4294967295u, 24u)]))) - _wgslsmith_f_op_f32(-var_1.a.b)));
    global0 = array<Struct_2, 23>();
    let x = u_input.a;
    s_output = func_1(~max(~(~16447u), 4294967295u));
}

