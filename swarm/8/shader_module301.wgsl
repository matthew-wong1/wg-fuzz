struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: bool;

var<private> global2: array<Struct_3, 8>;

var<private> global3: Struct_2;

var<private> global4: array<vec2<u32>, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: u32) -> f32 {
    return 839f;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: i32) -> vec4<u32> {
    global2 = array<Struct_3, 8>();
    var var_0 = -373f;
    global3 = Struct_2(Struct_1(27034i), -global3.b, global3.a, i32(-1i) * -countOneBits(global3.b.x ^ -1i), _wgslsmith_f_op_f32(func_3(global3.e, ~min(~13318u, 19891u))));
    var var_1 = _wgslsmith_clamp_i32(1i, -62629i, arg_2);
    var var_2 = 421f;
    return ~_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(12078u, 30146u, u_input.b.x, 2075u))), abs(~vec4<u32>(30889u, u_input.b.x, 82129u, 15761u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec4_u32(func_2(global0.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(927f, arg_1.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.x, arg_1.x), vec2<f32>(arg_1.x, -258f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -395f))), 2991i), vec4<u32>(u_input.b.x, 1u, 0u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x | 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(32948u, 0u), vec2<u32>(4294967295u, u_input.b.x)) << (_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) % 32u), u_input.b.x)));
    var var_1 = _wgslsmith_f_op_f32(abs(139f));
    global3 = Struct_2(Struct_1(global3.b.x), vec2<i32>(-reverseBits(-2147483647i), -(~1i)), Struct_1(u_input.a), u_input.a, _wgslsmith_f_op_f32(max(488f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) - arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1995f)), -1623f))))));
    var var_2 = select(~abs(u_input.b.x), var_0.x, select(!all(vec3<bool>(arg_3.a, false, arg_2.a)), true, arg_3.a)) < var_0.x;
    var_2 = !any(select(select(!vec4<bool>(true, global0.x, arg_3.a, arg_2.a), select(vec4<bool>(true, true, global0.x, false), vec4<bool>(arg_3.a, true, false, global0.x), vec4<bool>(false, global0.x, global0.x, arg_2.a)), any(vec3<bool>(true, false, false))), vec4<bool>(-366f == global3.e, 1i == u_input.a, arg_0.a <= global3.d, false), select(false, any(vec3<bool>(false, false, false)), true)));
    return Struct_2(Struct_1(max(6164i, -2147483647i)), vec2<i32>(-1i) * -vec2<i32>(~arg_0.a, -11300i), global3.c, _wgslsmith_sub_i32(-max(1i, u_input.a) >> (1u % 32u), i32(-1i) * -27006i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(trunc(arg_1.x)), 52385u)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<u32>, 30>();
    var var_0 = func_1(Struct_1(u_input.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1001f, global3.e, global3.e)), vec3<f32>(1753f, _wgslsmith_f_op_f32(-337f - global3.e), -686f)))), Struct_3(true), Struct_3(true));
    var var_1 = func_1(global3.a, vec3<f32>(554f, _wgslsmith_f_op_f32(global3.e - var_0.e), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.e - 1936f)))), global2[_wgslsmith_index_u32(30831u, 8u)], Struct_3(global0.x));
    var var_2 = global0.x;
    var var_3 = _wgslsmith_sub_vec2_u32(global4[_wgslsmith_index_u32(~u_input.b.x, 30u)], ~vec2<u32>(min(~u_input.b.x, u_input.b.x), _wgslsmith_sub_u32(~20093u, _wgslsmith_add_u32(21081u, u_input.b.x))));
    var var_4 = !vec4<bool>(any(vec3<bool>(true, global0.x, true)), !global0.x, any(!vec4<bool>(global0.x, true, false, global0.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(select(_wgslsmith_mult_vec4_i32(-vec4<i32>(54408i, global3.d, 0i, u_input.a), abs(vec4<i32>(global3.d, -2147483647i, 2147483647i, global3.d))), ~(vec4<i32>(1i, 1i, 0i, u_input.a) >> (vec4<u32>(var_3.x, 38677u, var_3.x, u_input.b.x) % vec4<u32>(32u))), !select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global0.x, true, false, false))), firstTrailingBit(vec4<i32>(firstTrailingBit(var_0.a.a), 40271i, firstTrailingBit(26540i), -1i << (u_input.b.x % 32u)))));
}

