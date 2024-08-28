struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    global0 = array<i32, 26>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-584f, _wgslsmith_div_f32(-1802f, _wgslsmith_f_op_f32(step(-1889f, 494f))), -1165f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-535f, -1209f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f * -199f), 1186f, 238f, _wgslsmith_f_op_f32(max(290f, 440f)))), vec4<bool>(false, any(vec2<bool>(true, true)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(656f, -151f, 1000f, 1353f), vec4<f32>(161f, -270f, 1433f, -303f), vec4<bool>(true, false, false, false))))))));
    let var_1 = Struct_2(arg_0, Struct_1(min(~_wgslsmith_clamp_u32(u_input.a.x, 0u, 0u), ~arg_0.a >> (select(u_input.a.x, u_input.a.x, false) % 32u))), ~(~vec4<u32>(~0u, 4294967295u, arg_0.a, ~u_input.a.x)));
    var var_2 = var_0.x;
    let var_3 = var_1;
    return var_1.c & vec4<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(2866u, u_input.a.x), var_3.c.xw), ~vec2<u32>(19377u, 1u)), u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a >> (u_input.a.x % 32u), min(14022u, var_1.a.a), _wgslsmith_sub_u32(var_3.c.x, var_1.a.a), ~4294967295u), (vec4<u32>(u_input.a.x, arg_0.a, 22070u, var_1.c.x) | vec4<u32>(9561u, 4294967295u, 44644u, 4294967295u)) >> (_wgslsmith_clamp_vec4_u32(var_3.c, vec4<u32>(18385u, var_1.b.a, var_3.c.x, arg_0.a), var_1.c) % vec4<u32>(32u))), 3659u);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_3) -> i32 {
    let var_0 = Struct_2(Struct_1(select(_wgslsmith_mult_u32(~1u, u_input.a.x), firstLeadingBit(4294967295u), any(select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(arg_1.x, false, arg_1.x), true)))), Struct_1(abs(_wgslsmith_mult_u32(1u, abs(u_input.a.x)))), func_3(Struct_1(59486u)));
    let var_1 = countOneBits(vec2<i32>(arg_0.x, -(~_wgslsmith_mult_i32(u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)) - _wgslsmith_div_f32(1294f, _wgslsmith_f_op_f32(-arg_2.a)));
    global0 = array<i32, 26>();
    var var_3 = var_0;
    return u_input.b;
}

fn func_4(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f));
    global0 = array<i32, 26>();
    var var_1 = !(any(vec4<bool>(true, true, true, true)) & false) == all(vec3<bool>(true, true, true));
    var_1 = all(vec3<bool>(false, any(vec3<bool>(true, true, true)) && true, u_input.a.x >= ~max(u_input.a.x, u_input.a.x)));
    var var_2 = Struct_1(_wgslsmith_sub_u32(reverseBits(4294967295u), _wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(u_input.a, ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))));
    return Struct_1(23981u);
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = -1174f;
    let var_1 = func_4(u_input.b & _wgslsmith_clamp_i32(func_2(vec4<i32>(-9068i, -2147483647i, 0i, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec2<bool>(true, true), Struct_3(arg_0)), ~firstTrailingBit(u_input.b), 4099i));
    var var_2 = firstLeadingBit(15905u);
    var var_3 = -_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i & u_input.b, max(39171i, 11960i)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, -11494i), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_1.a, 26u)], -9129i), vec2<i32>(8590i, u_input.b)), u_input.b)));
    var var_4 = var_1.a;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~(~1u), ~firstTrailingBit(86079u), u_input.a.x), ~abs(firstTrailingBit(u_input.a))) & u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    var var_0 = reverseBits(func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f), _wgslsmith_f_op_f32(f32(-1f) * -820f)) * _wgslsmith_f_op_f32(min(-578f, _wgslsmith_f_op_f32(335f + 477f))))));
    let var_1 = !vec2<bool>(all(vec2<bool>(true, true)), true | all(vec2<bool>(false, false)));
    var var_2 = vec3<i32>(11972i, 2147483647i, -abs(-_wgslsmith_add_i32(-45878i, 27323i)));
    let var_3 = !select(select(!vec3<bool>(var_1.x, var_1.x, var_1.x), select(select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, var_1.x, true), false), vec3<bool>(true, var_1.x, true), vec3<bool>(true, false, true)), !all(vec4<bool>(var_1.x, false, var_1.x, var_1.x))), vec3<bool>(true, !(var_1.x | false), var_1.x), select(!vec3<bool>(false, false, var_1.x), vec3<bool>(true, any(vec4<bool>(var_1.x, var_1.x, var_1.x, true)), var_1.x), 115175u == u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-576f + -1171f) - _wgslsmith_f_op_f32(-1766f * _wgslsmith_f_op_f32(f32(-1f) * -199f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-364f, _wgslsmith_f_op_f32(f32(-1f) * -1464f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f) - _wgslsmith_f_op_f32(f32(-1f) * -144f)), ~u_input.a.x <= 9692u))), u_input.a);
}

