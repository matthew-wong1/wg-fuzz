struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12>;

var<private> global1: vec2<bool>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    return vec2<bool>(true, global1.x);
}

fn func_3() -> vec2<bool> {
    var var_0 = -1628f;
    let var_1 = func_2(true);
    global1 = !(!func_2(true));
    global1 = select(func_2(false), vec2<bool>(select(any(!vec3<bool>(var_1.x, var_1.x, var_1.x)), var_1.x, true), !(!any(vec4<bool>(var_1.x, true, true, true)))), var_1.x);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1094f, 1452f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-728f, 1000f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1059f, 346f) - vec2<f32>(1565f, -594f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(395f, -1087f) - vec2<f32>(-1248f, -399f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1250f, 681f) - vec2<f32>(-196f, 1176f)))), 1291f, i32(-1i) * -u_input.b.x), _wgslsmith_add_i32(u_input.b.x, u_input.b.x) > (firstTrailingBit(reverseBits(u_input.b.x)) & -19405i), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1957f), -345f), -730f, ~3626i));
    return select(!var_1, var_1, var_2.b.a.x < _wgslsmith_div_f32(173f, var_2.d.b));
}

fn func_1(arg_0: f32) -> i32 {
    global0 = array<vec3<bool>, 12>();
    let var_0 = select(select(!func_2(!global1.x), select(vec2<bool>(false, true), vec2<bool>(global1.x, any(vec2<bool>(global1.x, global1.x))), select(!vec2<bool>(true, global1.x), func_3(), select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), vec2<bool>(true, global1.x)))), select(select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, false), true), vec2<bool>(true, true), false)), vec2<bool>(all(!(!vec4<bool>(true, true, global1.x, global1.x))), !(true | any(vec4<bool>(global1.x, true, false, global1.x)))), all(global0[_wgslsmith_index_u32(countOneBits(~abs(20567u)), 12u)]));
    var var_1 = min(_wgslsmith_add_vec4_i32(~vec4<i32>(-38i, -6318i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -1i ^ u_input.b.x), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -32148i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -6021i, u_input.b.x))), vec4<i32>(select(select(0i, 21632i, var_0.x), i32(-1i) * -5286i, var_0.x), firstTrailingBit(firstTrailingBit(2147483647i)), 1i, 2147483647i) << (_wgslsmith_mult_vec4_u32(u_input.a, min(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 3425u, 4294967295u, u_input.c), u_input.a), u_input.a)) % vec4<u32>(32u)));
    var_1 = countOneBits(~max(-min(vec4<i32>(20825i, var_1.x, -17250i, -2147483647i), vec4<i32>(18800i, -1475i, -1i, -1i)), vec4<i32>(var_1.x, 4380i, var_1.x, _wgslsmith_div_i32(var_1.x, u_input.b.x))));
    global1 = var_0;
    return _wgslsmith_dot_vec3_i32(u_input.b, u_input.b);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, arg_1.a.x), vec2<f32>(arg_1.b, arg_1.a.x))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2454f - 2342f), 2348f))), Struct_1(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1065f), _wgslsmith_add_i32(~(u_input.b.x | arg_1.c), i32(-1i) * -39043i)), func_3().x, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_f32(arg_1.a.x * -1046f))), -880f, max(~39496i, select(arg_1.c, arg_1.c | u_input.b.x, any(vec4<bool>(global1.x, false, false, arg_2))))));
    var var_1 = false;
    let var_2 = -617f;
    var var_3 = select(select(!(!select(vec4<bool>(false, arg_2, true, true), vec4<bool>(false, true, false, false), vec4<bool>(arg_2, false, true, false))), select(!vec4<bool>(global1.x, var_0.c, arg_0.x, true), !(!vec4<bool>(global1.x, true, false, false)), (45321u ^ u_input.a.x) < abs(u_input.d.x)), select(select(vec4<bool>(global1.x, true, true, false), vec4<bool>(global1.x, arg_3, true, global1.x), select(global1.x, var_0.c, true)), vec4<bool>(arg_2, var_0.c, !global1.x, true), var_0.c)), !select(select(vec4<bool>(arg_2, true, global1.x, true), select(vec4<bool>(arg_2, true, arg_2, true), vec4<bool>(arg_2, true, true, true), vec4<bool>(true, false, false, true)), false), vec4<bool>(var_0.c, true, arg_0.x || true, !var_0.c), vec4<bool>(true, all(vec3<bool>(global1.x, false, arg_2)), !global1.x, !arg_3)), true);
    var var_4 = var_0;
    return -_wgslsmith_add_i32(u_input.b.x, 12363i);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    let var_0 = u_input.a.yz;
    global0 = array<vec3<bool>, 12>();
    var var_1 = global1.x;
    let var_2 = vec3<u32>(~(u_input.a.x | ~0u), _wgslsmith_mod_u32(~(1u >> (u_input.c % 32u)), var_0.x), ~28927u);
    var var_3 = Struct_2(vec2<f32>(1000f, _wgslsmith_f_op_f32(sign(arg_1.a.x))), arg_2, false, arg_1);
    return Struct_2(arg_2.a, arg_1, func_3().x, Struct_1(vec2<f32>(1731f, -996f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_div_f32(-1655f, arg_2.b)), _wgslsmith_f_op_f32(-3044f + _wgslsmith_f_op_f32(-arg_2.a.x))), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_div_i32(~1i, reverseBits(u_input.b.x)), Struct_1(vec2<f32>(1f, 1f), -1790f, ~(~0i)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1075f), 1000f), _wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), max(u_input.b.x, firstTrailingBit(2147483647i)))), func_4(!vec2<bool>(true, u_input.c < u_input.a.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-782f - 107f), _wgslsmith_f_op_f32(f32(-1f) * -947f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1009f, 1222f))), func_1(849f)), global1.x, false));
    let var_1 = 12461u;
    var var_2 = func_5(~var_0.b.c, var_0.b, func_5(_wgslsmith_mod_i32(_wgslsmith_sub_i32(54824i, _wgslsmith_sub_i32(u_input.b.x, var_0.b.c)), func_5(-6503i, func_5(u_input.b.x, Struct_1(vec2<f32>(-567f, -209f), var_0.b.a.x, -2147483647i), Struct_1(var_0.a, -1000f, -10157i), -4787i).b, var_0.b, _wgslsmith_add_i32(2870i, 0i)).b.c), Struct_1(var_0.b.a, var_0.a.x, -33013i), func_5(~(~var_0.b.c), var_0.d, func_5(u_input.b.x, Struct_1(var_0.a, -511f, u_input.b.x), var_0.d, var_0.b.c).b, _wgslsmith_sub_i32(~var_0.d.c, ~2147483647i)).b, -39973i).d, ~_wgslsmith_sub_i32(-firstLeadingBit(u_input.b.x), func_1(_wgslsmith_f_op_f32(trunc(var_0.b.a.x))))).d;
    var var_3 = var_0.b.c;
    var_2 = var_0.d;
    var var_4 = -u_input.b;
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, u_input.a.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-848f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + -346f) - var_0.b.b)), -1358f, u_input.d.zy);
}

