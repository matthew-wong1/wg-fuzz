struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-1i);

var<private> global1: Struct_4 = Struct_4(-55612i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = select(vec2<bool>(false, false), !vec2<bool>(!(arg_0.a.x == 46506u), true), vec2<bool>(true, true));
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.x, abs(~arg_0.b) | 0u, arg_0.a.x), vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0.b, 1u, arg_0.a.x, arg_0.b)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.x, 1u, arg_0.b, 0u), vec4<u32>(0u, arg_0.a.x, 85555u, arg_0.a.x), vec4<u32>(arg_0.a.x, arg_0.a.x, 1u, arg_0.b)), vec4<u32>(arg_0.b, 54256u, arg_0.b, arg_0.b))), max(_wgslsmith_clamp_u32(arg_0.a.x ^ arg_0.b, _wgslsmith_mult_u32(1u, 1854u), arg_0.b), _wgslsmith_sub_u32(_wgslsmith_mod_u32(53450u, arg_0.a.x), _wgslsmith_sub_u32(arg_0.a.x, arg_0.a.x))), _wgslsmith_mult_u32(~0u, arg_0.b)));
    var var_2 = arg_0;
    global1 = Struct_4(~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -2147483647i), select(vec2<i32>(-4227i, global0.a), vec2<i32>(global0.a, global1.a), vec2<bool>(var_0.x, false)), max(vec2<i32>(u_input.d, -30257i), vec2<i32>(global0.a, 27638i))), abs(_wgslsmith_div_vec2_i32(vec2<i32>(global1.a, global1.a), vec2<i32>(u_input.d, global1.a)))));
    var var_3 = ~vec3<i32>(2147483647i, 26294i, reverseBits(_wgslsmith_dot_vec4_i32(min(vec4<i32>(global0.a, 13642i, global0.a, 12095i), vec4<i32>(-11066i, -1i, 1i, -55173i)), -vec4<i32>(global0.a, 0i, -15044i, 1i))));
    return arg_0.a.x;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(vec2<u32>(4294967295u, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(4294967295u, 6303u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(28073u, 13004u, 70011u, 31227u)), max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u)), ~65592u))), _wgslsmith_sub_u32(select(func_3(Struct_1(vec2<u32>(21389u, 23477u), 16845u)), func_3(Struct_1(vec2<u32>(99935u, 1u), 1u)), !all(vec4<bool>(false, false, false, false))), 64481u));
    global0 = Struct_4(~(~0i));
    var var_1 = var_0.b;
    global0 = Struct_4(_wgslsmith_div_i32(-2147483647i, ~(global0.a >> (~4294967295u % 32u))));
    global1 = Struct_4(1i);
    return Struct_4(1i);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = func_2();
    var var_0 = Struct_2(~func_3(arg_2), arg_0.a.b);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(480f)) + 489f);
    var_0 = Struct_2(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(29757u, arg_0.a.a, arg_0.a.a)) | countOneBits(reverseBits(arg_0.b.a.x))), vec4<bool>(all(!(!vec3<bool>(false, arg_0.d.x, var_0.b.x))), (select(arg_0.d.x, arg_0.d.x, var_0.b.x) & (var_0.a > arg_3.a.x)) & true, true, arg_0.d.x));
    let var_2 = Struct_4(~(~5450i));
    return _wgslsmith_f_op_f32(-234f + _wgslsmith_f_op_f32(sign(-866f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = Struct_4(2147483647i);
    var var_1 = ~(~reverseBits(vec2<u32>(1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1704f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-789f, -1809f))) - _wgslsmith_f_op_f32(step(-389f, -1272f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -170f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2037f - 699f))))), _wgslsmith_mod_vec4_u32(~((vec4<u32>(var_1.x, 31181u, 1u, 6623u) >> (vec4<u32>(74229u, var_1.x, 62258u, 5690u) % vec4<u32>(32u))) ^ ~vec4<u32>(4294967295u, var_1.x, 20616u, 4294967295u)), reverseBits(vec4<u32>(_wgslsmith_clamp_u32(var_1.x, var_1.x, 4294967295u), _wgslsmith_mod_u32(var_1.x, var_1.x), 13890u, var_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(var_1.x, vec4<bool>(true, true, true, false)), Struct_1(vec2<u32>(var_1.x, 31273u), var_1.x), 30903i, vec4<bool>(false, var_0, false, false)), vec3<i32>(-2147483647i, 0i, u_input.d), Struct_1(vec2<u32>(var_1.x, var_1.x), var_1.x), Struct_1(vec2<u32>(var_1.x, var_1.x), 3630u)))), -302f, -331f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -220f), -494f) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-1241f, 1000f), vec2<f32>(2156f, 404f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-713f, 330f)))))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1095f, -1455f), vec2<f32>(_wgslsmith_f_op_f32(-503f - 774f), _wgslsmith_f_op_f32(457f + 1269f)), !vec2<bool>(true, var_0)))));
}

