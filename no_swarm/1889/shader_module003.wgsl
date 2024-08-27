struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-323f, true), Struct_1(-1000f, false), Struct_1(1610f, false), Struct_1(699f, false), Struct_1(-270f, false), Struct_1(-228f, true), Struct_1(767f, false), Struct_1(168f, true), Struct_1(-1584f, false), Struct_1(232f, false), Struct_1(-1000f, true), Struct_1(224f, false), Struct_1(441f, false), Struct_1(514f, false), Struct_1(-2122f, false), Struct_1(703f, false), Struct_1(2223f, true), Struct_1(1200f, false), Struct_1(1104f, true), Struct_1(411f, false), Struct_1(1537f, true), Struct_1(-1000f, false), Struct_1(780f, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1990f, arg_1.a, -574f, 866f)))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(819f, -515f, arg_1.a, -1346f)), vec4<f32>(-396f, arg_1.a, -1346f, arg_1.a), !vec4<bool>(arg_2.x, false, false, false))), vec4<f32>(_wgslsmith_f_op_f32(318f + 116f), _wgslsmith_f_op_f32(abs(arg_1.a)), _wgslsmith_div_f32(-986f, -1613f), _wgslsmith_f_op_f32(floor(831f))), arg_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.a - 234f), 259f, 1204f, _wgslsmith_f_op_f32(589f - -659f))))));
    global0 = array<Struct_1, 23>();
    var var_2 = _wgslsmith_add_vec3_i32(countOneBits(-(~countOneBits(vec3<i32>(7629i, arg_0, u_input.d)))), _wgslsmith_mod_vec3_i32(max(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 21147i, arg_0), vec3<i32>(u_input.a, -30131i, -1i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0, arg_0, u_input.d), -vec3<i32>(arg_0, -36704i, arg_0))), vec3<i32>(u_input.d, arg_0, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0), vec2<i32>(u_input.d, u_input.a)), ~76223i))));
    var_2 = firstTrailingBit(-(~(-vec3<i32>(arg_0, 9969i, 35502i) >> (~u_input.b.zzy % vec3<u32>(32u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(736f * var_1.x))) + var_1.x);
}

fn func_2() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 23u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-22740i, Struct_1(257f, (616f < var_0.a) || false), select(vec3<bool>(true, true, true), vec3<bool>(var_0.b, true, true), !select(vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(var_0.b, var_0.b, true), var_0.b)))));
    var_0 = global0[_wgslsmith_index_u32(~(~(_wgslsmith_add_u32(u_input.c, abs(5247u)) | u_input.c)), 23u)];
    var var_2 = global0[_wgslsmith_index_u32(~u_input.c, 23u)];
    var_1 = var_2.a;
    return Struct_1(_wgslsmith_div_f32(-1615f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -873f) * _wgslsmith_f_op_f32(var_2.a * var_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.a, -493f)), _wgslsmith_f_op_f32(var_0.a - 1010f)))), u_input.b.x <= max(_wgslsmith_clamp_u32(u_input.c, 37871u & u_input.c, 1u), (28071u >> (u_input.c % 32u)) << (u_input.b.x % 32u)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global0 = array<Struct_1, 23>();
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -144f);
    global0 = array<Struct_1, 23>();
    var_1 = var_0.a;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(230f, -1435f) + 1739f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-113f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1430f - 619f), _wgslsmith_f_op_f32(select(-734f, -1222f, true)), true))))));
    var var_1 = 9895u;
    var_0 = -760f;
    var var_2 = -2147483647i;
    let var_3 = func_1(firstTrailingBit(~_wgslsmith_add_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.e, u_input.d, 2147483647i)), -vec4<i32>(25465i, -2147483647i, u_input.d, u_input.e))));
    var var_4 = func_1(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, abs(~u_input.e), _wgslsmith_div_i32(1i, 1i)), -reverseBits(-vec4<i32>(u_input.a, -1i, 0i, u_input.e)))).b;
    var var_5 = select(!select(select(!vec4<bool>(var_3.b, var_3.b, var_3.b, var_3.b), vec4<bool>(false, false, var_3.b, true), !vec4<bool>(var_3.b, true, false, false)), select(!vec4<bool>(var_3.b, false, var_3.b, var_3.b), !vec4<bool>(false, var_3.b, false, true), vec4<bool>(true, true, false, var_3.b)), !select(vec4<bool>(var_3.b, var_3.b, true, var_3.b), vec4<bool>(var_3.b, var_3.b, var_3.b, true), vec4<bool>(true, var_3.b, var_3.b, false))), !select(vec4<bool>(true, false, var_3.b, any(vec3<bool>(var_3.b, var_3.b, var_3.b))), !vec4<bool>(var_3.b, var_3.b, false, var_3.b), vec4<bool>(true, any(vec2<bool>(var_3.b, var_3.b)), true, all(vec2<bool>(var_3.b, false)))), var_3.b & (var_3.b != any(vec4<bool>(true, var_3.b, false, var_3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(abs(~u_input.a), _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(u_input.d, u_input.d, -2147483647i, u_input.d)), select(-vec4<i32>(u_input.d, -4817i, 58251i, u_input.d), vec4<i32>(53821i, 25040i, u_input.d, -1i), select(vec4<bool>(var_5.x, var_5.x, var_3.b, var_5.x), vec4<bool>(var_5.x, false, var_3.b, false), vec4<bool>(false, var_5.x, true, true))))), max(~(~(~43211u)), _wgslsmith_sub_u32(~(~u_input.c), u_input.c)));
}

