struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(0u, true), Struct_1(65331u, false), Struct_1(14995u, true), Struct_1(19215u, true), Struct_1(0u, true), Struct_1(4294967295u, false), Struct_1(4294967295u, false), Struct_1(4294967295u, true), Struct_1(4294967295u, true), Struct_1(0u, true), Struct_1(0u, true), Struct_1(4294967295u, true), Struct_1(0u, true), Struct_1(42190u, true), Struct_1(1u, true), Struct_1(4294967295u, true), Struct_1(0u, true), Struct_1(0u, true), Struct_1(98218u, false), Struct_1(4294967295u, false), Struct_1(47654u, false), Struct_1(32541u, true), Struct_1(11742u, true), Struct_1(30947u, true), Struct_1(0u, false), Struct_1(4294967295u, false));

var<private> global1: i32 = -44561i;

var<private> global2: array<u32, 12>;

var<private> global3: array<vec4<f32>, 28>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = -u_input.b;
    let var_1 = -_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(-2147483647i, -20613i), vec2<i32>(-55798i, -30907i), vec2<bool>(false, true)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-25498i, u_input.b), vec2<i32>(48285i, u_input.b), vec2<i32>(-2147483647i, u_input.b))) | _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(1i, 2147483647i)), vec2<i32>(u_input.b, u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(-2147483647i, -2147483647i))), -vec2<i32>(firstTrailingBit(u_input.b), -21290i));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(arg_2 * arg_2), arg_2);
    let var_3 = -1338f;
    var var_4 = Struct_1(4294967295u, -_wgslsmith_clamp_i32(u_input.b, -u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_1.x, var_1.x), vec3<i32>(var_1.x, u_input.b, u_input.b))) >= ~_wgslsmith_dot_vec2_i32(select(var_1, var_1, vec2<bool>(arg_1.b, true)), _wgslsmith_div_vec2_i32(var_1, var_1)));
    return _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(var_1.x, u_input.b, var_1.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, var_1.x, 0i), vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, u_input.b, var_1.x), vec3<i32>(1i, -73182i, 50221i), vec3<i32>(u_input.b, u_input.b, -2147483647i)))), u_input.b << (var_4.a % 32u)) ^ -max(i32(-1i) * -19945i, 1605i);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = u_input.c.x;
    var var_1 = _wgslsmith_clamp_vec2_i32(~select(vec2<i32>(abs(u_input.b), firstLeadingBit(u_input.b)), -_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(u_input.b, -9284i)), any(vec4<bool>(false, true, false, true))), abs(-(~vec2<i32>(0i, -2147483647i))) ^ _wgslsmith_sub_vec2_i32(abs(select(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, -2147483647i), vec2<bool>(true, false))), select(-vec2<i32>(18647i, u_input.b), ~vec2<i32>(-1i, u_input.b), all(vec4<bool>(true, false, true, false)))), -_wgslsmith_add_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(5489i, u_input.b), vec2<i32>(-2147483647i, 863i))), vec2<i32>(-41780i, _wgslsmith_mult_i32(-8525i, u_input.b))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(global2[_wgslsmith_index_u32(arg_0, 12u)], 1u), abs(~firstLeadingBit(u_input.d))), 26u)];
    global3 = array<vec4<f32>, 28>();
    var var_3 = reverseBits(u_input.c | firstLeadingBit((vec3<u32>(u_input.c.x, 98240u, 22576u) | vec3<u32>(arg_0, u_input.c.x, 11049u)) & reverseBits(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(var_2.a, 12u)], 0u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2092f - 916f))), 560f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_mult_vec4_i32(-firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, arg_1.x, 1i, -9847i), -vec4<i32>(u_input.b, -50429i, u_input.b, u_input.b))), select(_wgslsmith_add_vec4_i32(arg_1, countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, arg_1.x, arg_1.x, u_input.b), arg_1))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-18958i, u_input.b, 0i, u_input.b), ~arg_1)), vec4<bool>(false, true, all(!vec3<bool>(arg_0.b, true, arg_0.b)), all(select(vec3<bool>(arg_0.b, arg_2.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(arg_2.b, arg_0.b, arg_2.b))))));
    global3 = array<vec4<f32>, 28>();
    let var_1 = _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(~(var_0.wy << (vec2<u32>(arg_2.a, 0u) % vec2<u32>(32u))), var_0.xw), arg_1.xz);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-833f * -646f) - _wgslsmith_f_op_f32(360f * 130f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-352f + 1184f)))), -256f);
    var_0 = arg_1;
    return false || arg_0.b;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> f32 {
    global1 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, (i32(-1i) * -15154i) >> (_wgslsmith_sub_u32(u_input.d, u_input.c.x) % 32u), -2147483647i), -(vec4<i32>(arg_1, arg_1, 2147483647i, 2147483647i) >> (vec4<u32>(arg_0.a, 0u, 5471u, u_input.a) % vec4<u32>(32u))));
    global1 = func_2(Struct_1(29848u, !arg_0.b), Struct_1(u_input.d, any(vec2<bool>(true, arg_0.b))), _wgslsmith_div_f32(-982f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-345f, -1140f)) - -767f)))));
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1359f), _wgslsmith_f_op_f32(-1528f * 403f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-172f, -160f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2024f, 975f), vec2<f32>(1000f, -1348f), arg_0.b)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(887f)), -1364f) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-120f, 610f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1959f, -2001f) * vec2<f32>(-1406f, 1500f))))))));
    let var_1 = Struct_1(_wgslsmith_div_u32(~1u, ~(global2[_wgslsmith_index_u32(arg_0.a, 12u)] | 0u)), func_4(Struct_1(~39608u, _wgslsmith_f_op_f32(var_0.x + -177f) < _wgslsmith_f_op_f32(func_3(1u))), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-14741i, u_input.b, u_input.b, u_input.b) << (vec4<u32>(1u, u_input.c.x, 4294967295u, 1u) % vec4<u32>(32u)), vec4<i32>(arg_1, 2147483647i, arg_1, 2147483647i))), Struct_1(global2[_wgslsmith_index_u32(~0u, 12u)], -336f <= var_0.x), 66330u));
    let var_2 = vec3<u32>(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_div_u32(~global2[_wgslsmith_index_u32(var_1.a, 12u)], 1u), 1u, 1u), 79199u) | u_input.c;
    return _wgslsmith_f_op_f32(-var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-367f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_1(17920u, false), 14153i))))) + -188f);
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(4294967295u, _wgslsmith_div_u32(firstTrailingBit(u_input.c.x), u_input.d), any(vec2<bool>(true, false)) && true), 50980u), 12u)], all(vec2<bool>(true, true)) == (true || (all(vec2<bool>(false, true)) && true)));
    global3 = array<vec4<f32>, 28>();
    global3 = array<vec4<f32>, 28>();
    global2 = array<u32, 12>();
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(650f * -1000f), _wgslsmith_div_f32(1132f, -1042f))), -129f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-183f, 658f))))));
    var var_4 = global0[_wgslsmith_index_u32(var_1.a << (select(u_input.c.x & 12037u, u_input.a, !(global2[_wgslsmith_index_u32(u_input.c.x, 12u)] == global2[_wgslsmith_index_u32(1u, 12u)]) & var_1.b) % 32u), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(-1125f, select(countOneBits(_wgslsmith_sub_vec2_i32(max(vec2<i32>(-1i, 1i), vec2<i32>(-1i, u_input.b)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(u_input.b, 27790i)))), ~(select(vec2<i32>(-35606i, u_input.b), vec2<i32>(-1934i, u_input.b), vec2<bool>(var_4.b, var_4.b)) | select(vec2<i32>(-7667i, u_input.b), vec2<i32>(43155i, 39855i), var_4.b)), select(vec2<bool>(var_1.b, var_4.b && var_4.b), select(select(vec2<bool>(var_4.b, true), vec2<bool>(var_1.b, true), true), !vec2<bool>(var_1.b, true), vec2<bool>(true, true)), var_4.b)), global3[_wgslsmith_index_u32(reverseBits(min(10615u, select(0u, ~var_1.a, var_1.b && var_4.b))), 28u)], -_wgslsmith_mult_i32(54628i, u_input.b), vec2<i32>(-2147483647i, 1i));
}

