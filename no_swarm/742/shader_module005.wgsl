struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(46778i, -22579i);

var<private> global1: array<i32, 14> = array<i32, 14>(2147483647i, -319i, 1i, 0i, 30503i, -41882i, i32(-2147483648), 20805i, -32255i, 2147483647i, 0i, 0i, 0i, -1i);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    let var_0 = Struct_1(!(!all(vec4<bool>(false, true, false, false))) || true, 0i ^ _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-12263i, -2147483647i, global0[_wgslsmith_index_u32(u_input.d.x, 2u)])) << (select(vec3<u32>(89429u, 1u, 9362u), vec3<u32>(u_input.d.x, 15442u, 73773u), false) % vec3<u32>(32u)), -vec3<i32>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(2586u, 2u)]) << (~vec3<u32>(u_input.d.x, 0u, 1u) % vec3<u32>(32u))), ~(~(~u_input.d.ww)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(max(~vec2<i32>(u_input.a, 2147483647i), vec2<i32>(24315i, u_input.a)), select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(global1[_wgslsmith_index_u32(27570u, 14u)], global1[_wgslsmith_index_u32(103365u, 14u)]), true) & -vec2<i32>(-1i, global0[_wgslsmith_index_u32(u_input.d.x, 2u)])), ~(_wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(8597u, 14u)], u_input.c), vec2<i32>(global1[_wgslsmith_index_u32(12880u, 14u)], global1[_wgslsmith_index_u32(u_input.b.x, 14u)])) | vec2<i32>(41023i, -1i))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(select(-1390f, 352f, false)))) - _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 - arg_0))), 456f));
    var var_2 = Struct_1(all(!vec3<bool>(var_0.c.x <= var_0.c.x, any(vec3<bool>(false, false, false)), var_0.b < 37710i)), -6616i, var_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(min(var_0.d, countOneBits(global1[_wgslsmith_index_u32(var_0.c.x, 14u)])), -31611i, ~(global0[_wgslsmith_index_u32(var_0.c.x, 2u)] | u_input.c), 4865i), select(select(vec4<i32>(0i, -3757i, u_input.c, 2147483647i) >> (vec4<u32>(u_input.d.x, var_0.c.x, 90664u, 5634u) % vec4<u32>(32u)), vec4<i32>(var_0.b, 9974i, 653i, global0[_wgslsmith_index_u32(var_0.c.x, 2u)]), true), vec4<i32>(_wgslsmith_add_i32(u_input.a, 9938i), _wgslsmith_mult_i32(1i, global1[_wgslsmith_index_u32(var_0.c.x, 14u)]), select(-4825i, 1i, true), -12682i), true)));
    var var_3 = _wgslsmith_f_op_f32(-var_1);
    var var_4 = reverseBits(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(38111i, 35564i)), vec2<i32>(2147483647i, var_0.b) >> (vec2<u32>(u_input.b.x, 25434u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], -22744i), min(vec2<i32>(var_0.d, -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(0u, 2u)], -15687i)), abs(vec2<i32>(u_input.a, var_2.d))))) ^ ~(~vec2<i32>(~u_input.a, -2147483647i));
    return ~(u_input.b.zx >> (vec2<u32>(13648u, countOneBits(~732u)) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global1 = array<i32, 14>();
    let var_0 = abs(38267u);
    var var_1 = vec4<u32>(max(var_0, ~_wgslsmith_add_u32(var_0, 55387u)), 4294967295u, ~arg_0.c.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d.x, var_0), vec2<u32>(0u, var_0)), arg_0.c >> (func_3(232f) % vec2<u32>(32u))));
    let var_2 = Struct_1(false, _wgslsmith_mult_i32(-22946i, global1[_wgslsmith_index_u32((min(16479u, 0u) | func_3(307f).x) | ~var_1.x, 14u)]), vec2<u32>(~(u_input.b.x << (~0u % 32u)), arg_0.c.x), arg_0.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1526f, -968f) + -834f), 1f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1431f, 2085f) * vec2<f32>(1000f, -482f))))), var_2.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1352f, _wgslsmith_f_op_f32(-153f * -1674f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -779f) * vec2<f32>(-723f, 749f)))) * vec2<f32>(-109f, _wgslsmith_f_op_f32(f32(-1f) * -676f)))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1017f)), 909f, any(select(vec4<bool>(true, true, arg_0.a, true), !select(vec4<bool>(arg_0.a, arg_0.a, false, false), vec4<bool>(arg_0.a, var_2.a, var_2.a, false), arg_0.a), arg_0.a))));
}

fn func_1() -> f32 {
    global0 = array<i32, 2>();
    let var_0 = Struct_1(select(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true))), (-2147483647i >> (u_input.d.x % 32u)) > u_input.c, !(!any(vec2<bool>(true, false)))), -12149i, ~firstTrailingBit(~reverseBits(vec2<u32>(u_input.b.x, 4294967295u))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(0u, 2u)], -2147483647i)) & select(vec2<i32>(global0[_wgslsmith_index_u32(30585u, 2u)], 54062i), vec2<i32>(u_input.a, 46848i), vec2<bool>(true, false)), vec2<i32>(~global0[_wgslsmith_index_u32(u_input.b.x, 2u)], -global1[_wgslsmith_index_u32(0u, 14u)])), ~vec2<i32>(21486i, -4853i)));
    var var_1 = 15385i;
    let var_2 = false & !(!var_0.a);
    var_1 = ~var_0.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0)));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<i32, 2>();
    var var_0 = _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(arg_3.c.x, 4294967295u >> (u_input.d.x % 32u)), reverseBits(abs(firstTrailingBit(arg_3.c.x)))), 2u)], min(~arg_3.d << (~(~90218u) % 32u), ~u_input.a));
    global0 = array<i32, 2>();
    global1 = array<i32, 14>();
    global0 = array<i32, 2>();
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(max(1441f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) + _wgslsmith_f_op_f32(trunc(1792f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-909f, 606f) - vec2<f32>(-905f, -1184f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(489f, 1599f) * vec2<f32>(-1122f, -1156f)))))), vec2<bool>(true, true), Struct_1(!all(vec2<bool>(false, true)), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c), ~vec2<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 2u)]))), vec2<u32>(max(_wgslsmith_clamp_u32(11159u, 0u, u_input.d.x), u_input.b.x), 0u), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], u_input.c)));
    global1 = array<i32, 14>();
    let var_1 = select(select(select(!(!vec4<bool>(true, var_0.a, true, var_0.a)), vec4<bool>(var_0.a, any(vec4<bool>(var_0.a, var_0.a, false, var_0.a)), all(vec2<bool>(var_0.a, var_0.a)), !var_0.a), vec4<bool>(true, true, false, var_0.a || var_0.a)), !(!(!vec4<bool>(var_0.a, var_0.a, false, true))), true), vec4<bool>(any(vec4<bool>(var_0.a, true, select(var_0.a, true, true), true)), true, true | all(vec3<bool>(var_0.a, true, var_0.a)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_2 = Struct_1(!all(!var_1.yzx) && true, reverseBits(~(i32(-1i) * -global0[_wgslsmith_index_u32(u_input.b.x, 2u)])), vec2<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(min(u_input.b.x, 0u), 0u >> (u_input.d.x % 32u))), ~(~12759u ^ u_input.b.x)), max(_wgslsmith_div_i32(2147483647i, ~(-62437i)), -(~(-5757i))));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(414f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(179f)), 796f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2696f * -345f)))), 156f, var_0.a));
    var var_4 = Struct_1(false, global1[_wgslsmith_index_u32(1u, 14u)], ~_wgslsmith_add_vec2_u32(var_2.c, ~var_0.c), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, ~(~u_input.b.x)), reverseBits(func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(785f, var_3) + 531f)).x), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u ^ var_4.c.x, _wgslsmith_sub_u32(var_4.c.x, var_0.c.x)) << ((~countOneBits(u_input.d.x) >> (4294967295u % 32u)) % 32u), 2u)]);
}

