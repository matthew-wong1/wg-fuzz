struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-1475i, 0i, i32(-2147483648), 2147483647i));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1137f, 1605f)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1230f, -834f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-548f, -1201f))), any(vec3<bool>(false, false, true))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(390f, 368f), vec2<f32>(1708f, -754f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -549f), vec2<f32>(-2070f, -977f))))))));
    var var_1 = select(vec4<bool>(!all(vec4<bool>(true, true, true, true)), true, true, false), select(!vec4<bool>(all(vec2<bool>(true, false)), true, true, any(vec3<bool>(true, true, false))), vec4<bool>(true, global1.a.x >= -2400i, false, all(vec3<bool>(true, true, true))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, var_0.x > var_0.x, true), true));
    var var_2 = global1.a.x;
    let var_3 = abs(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(true, false, true, false)), ~(vec4<u32>(u_input.a, u_input.a, 17487u, 28014u) << (vec4<u32>(1u, u_input.a, u_input.a, 32562u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(~vec4<u32>(56809u, 55623u, u_input.a, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, 16416u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 1u))) >> (~(~vec4<u32>(u_input.a, 0u, 39414u, 40762u)) % vec4<u32>(32u))));
    let var_4 = ~max(var_3.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 4294967295u, var_3.x), vec4<u32>(18276u, 1u, 6785u, 1u), vec4<bool>(var_1.x, true, true, var_1.x)) ^ ~vec4<u32>(u_input.a, 28977u, u_input.a, 12537u), countOneBits(countOneBits(var_3))));
    return global1.a.x;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<i32>) -> Struct_2 {
    global0 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 14>();
    return Struct_2(Struct_1(vec4<i32>(abs(arg_2.x) << (abs(arg_0) % 32u), ~global1.a.x, -arg_2.x << (u_input.a % 32u), _wgslsmith_mod_i32(global1.a.x, global1.a.x))), Struct_1(vec4<i32>(arg_2.x, 72867i, func_3(), abs(-2147483647i))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = arg_1.xyx;
    global0 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 14>();
    var var_1 = func_2(0u, all(!vec4<bool>(true, true, true, arg_1.x)), global1.a);
    let var_2 = func_2(21244u, !all(!select(vec2<bool>(var_0.x, true), var_0.yy, arg_1.x)), abs(vec4<i32>(var_1.b.a.x & var_1.b.a.x, -global1.a.x, -2147483647i, -var_1.b.a.x) ^ (vec4<i32>(37986i, -6749i, 0i, global1.a.x) & global0[_wgslsmith_index_u32(~4294967295u, 14u)]))).a;
    return func_2(u_input.a, true, ~select(var_2.a, vec4<i32>(_wgslsmith_dot_vec4_i32(var_1.b.a, vec4<i32>(36926i, global1.a.x, global1.a.x, global1.a.x)), max(-1i, var_1.b.a.x), _wgslsmith_mod_i32(74152i, 28862i), -global1.a.x), !vec4<bool>(true, var_0.x, arg_1.x, true)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec3<bool>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(arg_0.a.a.x, 2147483647i), -vec2<i32>(30534i, global1.a.x)), global1.a.zw) > arg_0.b.a.x, true, false);
    var var_1 = firstLeadingBit(-global1.a.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1393f - -1000f) + _wgslsmith_div_f32(-1730f, 728f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -616f)));
    var_0 = !(!vec3<bool>(!var_0.x, all(vec3<bool>(var_0.x, false, var_0.x)), var_0.x));
    let var_3 = true;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1.a.x;
    let var_1 = Struct_2(Struct_1(global1.a), Struct_1(vec4<i32>(select(~global1.a.x, global1.a.x, true), abs(~9001i), ~_wgslsmith_dot_vec3_i32(global1.a.zwz, global1.a.yzy), 2147483647i)));
    var var_2 = func_4(func_1(~firstTrailingBit(select(vec4<u32>(110947u, u_input.a, u_input.a, 59903u), vec4<u32>(20288u, 5070u, 4294967295u, u_input.a), true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)))));
    var_0 = ~2147483647i;
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-892f, -815f)))), _wgslsmith_f_op_f32(ceil(-868f))), max(vec3<u32>(~u_input.a, countOneBits(u_input.a), 24339u), select(vec3<u32>(u_input.a, 123665u, 4294967295u) | vec3<u32>(u_input.a, u_input.a, u_input.a), select(vec3<u32>(72298u, u_input.a, 34063u), vec3<u32>(6442u, u_input.a, u_input.a), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))) >> (vec3<u32>(reverseBits(0u), u_input.a, u_input.a << (~29401u % 32u)) % vec3<u32>(32u)), -vec4<i32>(global1.a.x, var_2.b.a.x, var_1.a.a.x, abs(-20588i)), -23921i, -(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-27681i, var_1.b.a.x), 1i) << (47917u % 32u)));
}

