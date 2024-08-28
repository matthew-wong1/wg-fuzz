struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 41426i;

var<private> global1: array<u32, 31>;

var<private> global2: u32 = 4294967295u;

var<private> global3: vec2<f32> = vec2<f32>(-1000f, 1702f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    let var_0 = firstTrailingBit(1i);
    global0 = 1i;
    let var_1 = !select(false, true, true);
    var var_2 = -(min(arg_1.a, _wgslsmith_div_i32(arg_1.a, arg_1.a | var_0)) ^ arg_2.a);
    let var_3 = Struct_2(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_1.a, 2147483647i), -(~vec3<i32>(43654i, arg_2.a, 2147483647i))), select(vec3<i32>(19228i, i32(-1i) * -26476i, -arg_2.a), (vec3<i32>(-82233i, 16776i, 49707i) << (vec3<u32>(16358u, arg_2.b, 1u) % vec3<u32>(32u))) & vec3<i32>(arg_2.a, arg_2.a, -2147483647i), vec3<bool>(true, true, true))));
    return Struct_1(select(!(!(!vec2<bool>(false, var_1))), !vec2<bool>(global3.x != global3.x, any(vec3<bool>(var_1, false, var_1))), vec2<bool>(!(!var_1), true)), 0u, _wgslsmith_sub_i32(31909i, 22768i), ~arg_2.a);
}

fn func_3() -> vec2<f32> {
    global0 = -1i;
    let var_0 = Struct_1(!func_2(~countOneBits(1u), Struct_3(1i, 4294967295u), Struct_3(_wgslsmith_clamp_i32(14467i, -2147483647i, -236i), u_input.a)).a, _wgslsmith_mult_u32(~firstLeadingBit(u_input.b), countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(14470u, u_input.b, u_input.a), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50063u, 31u)], 31u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 31u)], 31u)], 31u)], 1u)), firstLeadingBit(52910u)))), 22550i, -2147483647i);
    var var_1 = var_0;
    return vec2<f32>(global3.x, global3.x);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> StorageBuffer {
    var var_0 = vec4<u32>(min(~(~(~u_input.b)), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(26849u, ~global1[_wgslsmith_index_u32(u_input.a, 31u)]), 31u)], 4294967295u)), 0u, u_input.b, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, global1[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 71726u, 32292u), vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(22616u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]))) >> (~(~4294967295u) % 32u)));
    let var_1 = 1u;
    let var_2 = func_2(~(~var_0.x), Struct_3(_wgslsmith_sub_i32(32976i, arg_1.x), u_input.a), Struct_3(arg_1.x, 1u));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, global3.x), vec2<f32>(725f, arg_0)) - vec2<f32>(arg_0, 1000f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))));
    var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_2.b, 0u), global1[_wgslsmith_index_u32(var_0.x, 31u)], ~u_input.b, global1[_wgslsmith_index_u32(~var_2.b, 31u)]), vec4<u32>(~(~35937u >> (1u % 32u)), 11757u, 26797u, 4294967295u));
    return StorageBuffer(global3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f)), global3.x)), vec3<u32>(23519u, var_0.x, ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec3_i32(-firstLeadingBit(countOneBits(vec3<i32>(-2147483647i, 34188i, -23194i))), _wgslsmith_div_vec3_i32(abs(min(countOneBits(vec3<i32>(34176i, -35946i, -35054i)), vec3<i32>(-48631i, -2147483647i, 6123i))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, 12585i, -18464i) << (~vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(34923u, 31u)], u_input.b) % vec3<u32>(32u)), -_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 1i, -2147483647i), vec3<i32>(-44383i, -1i, 50173i)), reverseBits(vec3<i32>(-23515i, 13114i, -34863i)))));
    global1 = array<u32, 31>();
    let var_0 = Struct_1(select(vec2<bool>(false, any(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), true), !any(vec3<bool>(false, true, false))), u_input.a & u_input.b, -((i32(-1i) * -53437i) >> (_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.b, 31u)], 1u) % 32u)) | -min(~(-42000i), firstTrailingBit(-27014i)), _wgslsmith_sub_i32(min(1i, firstTrailingBit(-12193i)) & _wgslsmith_sub_i32(1i, -38467i), -2147483647i));
    global1 = array<u32, 31>();
    global0 = reverseBits(var_0.d);
    global3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f)) + _wgslsmith_f_op_f32(step(global3.x, 131f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -993f)))))));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-global3.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1155f, global3.x, false)))), !(!any(vec2<bool>(var_0.a.x, true))))), max(~select(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.d, var_0.d), vec2<i32>(var_0.c, var_0.c), vec2<i32>(var_0.d, var_0.d)), ~vec2<i32>(var_0.c, var_0.d), vec2<bool>(false, var_0.a.x)), firstTrailingBit(~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.d, -30182i), vec2<i32>(1i, -1i), vec2<i32>(var_0.d, var_0.c)))));
}

