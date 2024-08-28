struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 69874u);

var<private> global1: vec4<f32> = vec4<f32>(-854f, -1639f, -337f, -1339f);

var<private> global2: bool;

var<private> global3: array<vec2<i32>, 12>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = ~(u_input.b.x >> (global0.x % 32u));
    var var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1442f, global1.x) + -322f), 1163f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 280f, true))), _wgslsmith_f_op_f32(-310f * _wgslsmith_f_op_f32(floor(global1.x)))), firstTrailingBit(u_input.b)), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, all(vec4<bool>(false, false, false, false)), global1.x < global1.x, false), true), Struct_1(vec4<f32>(1000f, _wgslsmith_f_op_f32(872f - _wgslsmith_f_op_f32(trunc(global1.x))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1565f, global1.x))), -_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(23473i, u_input.a.x)), vec2<i32>(-11305i, u_input.b.x))));
    global3 = array<vec2<i32>, 12>();
    var var_2 = ~(select(vec4<i32>(var_1.c.b.x, u_input.d.x, var_1.a.b.x, -2147483647i) ^ vec4<i32>(-34687i, var_0, 13399i, u_input.a.x), ~select(vec4<i32>(var_1.c.b.x, var_0, 12868i, var_1.c.b.x), vec4<i32>(var_0, var_0, u_input.a.x, 24257i), var_1.b), false) & firstLeadingBit(~vec4<i32>(19750i, u_input.a.x, 6574i, u_input.a.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(18093u, global0.x, 1u, 0u), vec4<u32>(global0.x, 1u, 1u, 0u)) % vec4<u32>(32u))));
    return var_1.b.x;
}

fn func_2(arg_0: bool) -> vec2<u32> {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(global0.x, u_input.c.x), ~0u);
    global3 = array<vec2<i32>, 12>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -683f, global1.x, 612f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1010f, 1192f, global1.x, global1.x))))), u_input.b), vec4<bool>(func_3(), arg_0, false, (firstLeadingBit(global0.x) <= var_0.x) & arg_0), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1127f, global1.x, -876f) + vec4<f32>(354f, global1.x, global1.x, global1.x))), ~vec2<i32>(abs(u_input.b.x), 1i)));
    let var_2 = 4294967295u;
    let var_3 = vec3<u32>(_wgslsmith_div_u32(62485u, _wgslsmith_dot_vec3_u32(vec3<u32>(~15040u, 1u, ~global0.x), ~vec3<u32>(u_input.c.x, 80292u, 14833u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 4720u, 46946u), vec3<u32>(global0.x, global0.x, var_0.x)))), countOneBits(0u), 4294967295u);
    return _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~var_3.yy, u_input.c), _wgslsmith_mod_vec2_u32(select(~vec2<u32>(var_0.x, var_2) << (vec2<u32>(var_3.x, 44715u) % vec2<u32>(32u)), select(~var_0, _wgslsmith_add_vec2_u32(var_0, vec2<u32>(u_input.c.x, 1u)), true), all(vec3<bool>(arg_0, true, false))), reverseBits(select(_wgslsmith_div_vec2_u32(var_3.yz, var_3.zx), var_3.xz, true))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    global2 = true;
    global3 = array<vec2<i32>, 12>();
    let var_0 = arg_1;
    global0 = func_2(true);
    var var_1 = Struct_2(arg_1, select(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true))), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), select(!any(vec4<bool>(true, true, true, true)), true, true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), -458f, -997f, _wgslsmith_f_op_f32(round(var_0.a.x))), _wgslsmith_div_vec2_i32(var_0.b, _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.d.x, var_0.b.x), vec2<i32>(arg_0, 0i)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a, global3[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<i32>(~1i, -15041i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.b.x, Struct_1(vec4<f32>(1000f, global1.x, global1.x, global1.x), vec2<i32>(-54945i, u_input.b.x)))) * _wgslsmith_f_op_f32(-global1.x)), 749f, -1000f, global1.x)), global1.x);
}

