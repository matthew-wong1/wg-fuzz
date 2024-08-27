struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<u32> = vec3<u32>(58960u, 23561u, 15177u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> vec3<bool> {
    var var_0 = Struct_1(firstTrailingBit(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3, -11366i, arg_3, -2147483647i), firstLeadingBit(vec4<i32>(arg_3, u_input.c, arg_3, arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(3025f)), 860f)))), 1264f, select(!select(select(vec3<bool>(arg_1, true, false), vec3<bool>(true, false, true), false), vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, arg_2.a.x, false)), select(select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_2.a.x, true), u_input.a <= 4294967295u), vec3<bool>(false, true, arg_2.a.x), !(!vec3<bool>(arg_1, true, false))), vec3<bool>(true, arg_2.a.x & (arg_2.a.x && arg_2.a.x), !arg_1)));
    global1 = vec3<u32>(15948u, ~13136u, ~0u);
    var_0 = Struct_1(var_0.a ^ var_0.a, var_0.c, _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.b)))))), !(!var_0.d));
    let var_1 = false;
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-1594f + _wgslsmith_f_op_f32(-var_0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.b))))), select(var_0.d, vec3<bool>(select(true, arg_2.a.x, !var_1), true, arg_1), true));
    return select(var_0.d, !(!(!vec3<bool>(true, var_1, false))), all(!var_0.d.xx));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_1(~vec4<i32>(u_input.b, 4717i, -2147483647i, ~u_input.b), -461f, -509f, select(!vec3<bool>(true || arg_0.a.x, arg_0.a.x, all(vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x))), func_3(min(u_input.c, u_input.c) | _wgslsmith_dot_vec4_i32(vec4<i32>(10814i, 1i, u_input.b, u_input.c), vec4<i32>(u_input.b, u_input.b, 31841i, u_input.b)), arg_0.a.x, Struct_2(vec2<bool>(true, false)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -60567i), reverseBits(vec2<i32>(-1484i, -6979i)))), true));
    global0 = !var_0.d.x;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -863f))), -525f))));
    var var_2 = Struct_2(!func_3(var_0.a.x, false, Struct_2(arg_0.a), ~u_input.b).yz);
    let var_3 = Struct_2(var_2.a);
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, firstTrailingBit(14492u) << (u_input.a % 32u)) >> (~(~(~1u)) % 32u), ~u_input.e | 4294967295u);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> u32 {
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_clamp_i32(arg_1.x, -_wgslsmith_mod_i32(0i, arg_0), ~u_input.b), ~(u_input.b << (func_2(Struct_2(vec2<bool>(false, false))) % 32u)), u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -19427i, arg_0), vec3<i32>(0i, arg_1.x & -47490i, ~35190i))), 526f, 1f, vec3<bool>(2147483647i < _wgslsmith_mod_i32(select(arg_1.x, u_input.c, false), arg_0 & arg_1.x), true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true)))));
    var var_1 = abs(u_input.a);
    let var_2 = Struct_2(var_0.d.zy);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.b))));
    var var_4 = -408f;
    return 19907u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 27632i;
    global1 = vec3<u32>(global1.x, select(_wgslsmith_mult_u32(0u, u_input.a) << (_wgslsmith_add_u32(global1.x | 0u, 34819u) % 32u), 60507u, false), ~0u);
    let var_1 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(20931i, -u_input.b, _wgslsmith_div_i32(u_input.b, 1i), max(u_input.b, u_input.c)) >> (vec4<u32>(4294967295u, ~global1.x, global1.x, u_input.e) % vec4<u32>(32u)), ~vec4<i32>(-4279i, -u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(260i, 2147483647i, u_input.b, 1i), vec4<i32>(u_input.b, u_input.c, u_input.b, u_input.c)), u_input.c));
    global1 = abs(_wgslsmith_sub_vec3_u32(~firstLeadingBit(countOneBits(vec3<u32>(global1.x, 14448u, u_input.d.x))), vec3<u32>(u_input.a, global1.x | func_1(u_input.b, vec2<i32>(u_input.b, u_input.b)), 1u)));
    global1 = min(_wgslsmith_add_vec3_u32(~(~abs(vec3<u32>(45175u, 732u, 72621u))), firstLeadingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(73786u, 4294967295u, u_input.e), vec3<u32>(1u, 18623u, global1.x)))), _wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(global1.x), ~22818u, _wgslsmith_mod_u32(u_input.d.x, 126u)), abs(~vec3<u32>(31245u, u_input.a, 29417u))) << (select(reverseBits(max(vec3<u32>(25285u, u_input.e, 13928u), vec3<u32>(global1.x, global1.x, 0u))), ~vec3<u32>(1u, 0u, 4294967295u), true) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a), _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_div_vec2_u32(global1.xx >> (u_input.d % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(~global1.xx, u_input.d)), 4294967295u, var_1.yww);
}

