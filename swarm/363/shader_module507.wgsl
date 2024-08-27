struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(true, false, -149f), Struct_1(true, true, 2446f), Struct_1(false, true, 2505f), Struct_1(true, false, -576f), Struct_1(true, true, -1000f), Struct_1(true, false, -191f), Struct_1(false, false, 1154f), Struct_1(false, false, -1280f));

var<private> global1: vec3<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(~(i32(-1i) * -u_input.b), -37677i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(32503i, 16338i, u_input.b), select(vec3<i32>(u_input.b, 11900i, global1.x), vec3<i32>(0i, global1.x, u_input.b), false)), -vec3<i32>(global1.x, 1i, global1.x) & -vec3<i32>(20881i, -44855i, global1.x))), vec3<i32>(abs(-(global1.x >> (0u % 32u))), u_input.b, _wgslsmith_div_i32(u_input.b, -min(u_input.b, -44298i))));
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -743f), -2832f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-344f, 363f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1335f, 1809f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(ceil(114f)), _wgslsmith_f_op_f32(260f * -756f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) * vec2<f32>(-629f, var_2.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(281f, var_2.x)))))))));
    var var_3 = ~(-1i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * 1375f)) * var_2.x));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1318f, 1747f, false)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1044f))))));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-501f, 1204f) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-443f, 783f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1, arg_1.c), vec2<f32>(100f, var_1))))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: u32) -> vec2<i32> {
    global1 = firstLeadingBit(~vec3<i32>(_wgslsmith_sub_i32(global1.x, 1i), 14495i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 306i, global1.x), vec3<i32>(global1.x, -2147483647i, -1i))));
    global1 = reverseBits((_wgslsmith_div_vec3_i32(vec3<i32>(-11936i, -19430i, 7036i), max(vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(u_input.b, 1i, u_input.b))) | -vec3<i32>(2147483647i, u_input.b, 11778i)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, reverseBits(arg_2), 4294967295u), countOneBits(u_input.a.yxy)) % vec3<u32>(32u)));
    global0 = array<Struct_1, 8>();
    return -select(abs(global1.zz), global1.xy, vec2<bool>(-1000f == _wgslsmith_f_op_f32(round(628f)), true));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<i32>) -> vec3<f32> {
    let var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_u32(43710u, 4294967295u), _wgslsmith_div_u32(19604u, arg_0))), _wgslsmith_f_op_f32(abs(678f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1009f, 578f), vec2<f32>(1249f, -1458f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-362f, -1348f))) - _wgslsmith_f_op_vec2_f32(func_3(19073u, Struct_1(arg_1, arg_1, -1270f)))))), _wgslsmith_add_u32(arg_0, 68937u)) >> (vec2<u32>(arg_0, _wgslsmith_mult_u32(4294967295u >> ((arg_0 << (arg_0 % 32u)) % 32u), ~(25633u & u_input.a.x))) % vec2<u32>(32u));
    let var_1 = -12720i;
    let var_2 = Struct_1((2147483647i ^ _wgslsmith_mult_i32(-20579i, var_0.x)) > global1.x, all(vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0, arg_0, arg_0), u_input.a) >= 81153u, arg_1, !any(vec4<bool>(arg_1, arg_1, true, arg_1)))), 636f);
    let var_3 = ~(~reverseBits(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)) & ~_wgslsmith_mod_u32(arg_0, 3837u));
    global1 = ~(max(vec3<i32>(-4087i, -1i, reverseBits(global1.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, arg_2.x, 2147483647i), vec3<i32>(-1i, 21825i, 52271i), vec3<i32>(u_input.b, -1i, 0i)) << (~u_input.a.xww % vec3<u32>(32u))) << (min(u_input.a.xwz ^ firstTrailingBit(vec3<u32>(31701u, arg_0, u_input.a.x)), u_input.a.xzx) % vec3<u32>(32u)));
    return vec3<f32>(-680f, var_2.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(271f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(52396u, u_input.a.x), 8u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-797f, var_0.c, -622f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.c, var_0.c, 1876f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1873f, var_0.c, -1000f)))))) + _wgslsmith_f_op_vec3_f32(func_1(min(1u, ~u_input.a.x), !(!var_0.b) || (var_0.a | false), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(global1.zy, global1.yz) << (vec2<u32>(u_input.a.x, 70738u) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -5334i), global1.yy)))));
    var var_2 = i32(-1i) * -1i;
    var_2 = ~countOneBits(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, u_input.b), _wgslsmith_mod_i32(global1.x, -39917i)), 52024i, reverseBits(-1i | u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))))), global1.x, 0u, countOneBits(u_input.a), ~vec2<i32>(5266i, (0i >> (u_input.a.x % 32u)) & (u_input.b ^ 12851i)));
}

