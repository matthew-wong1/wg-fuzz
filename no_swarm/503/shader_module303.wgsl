struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(1760f, -1456f, 643f));

var<private> global1: vec3<f32>;

var<private> global2: vec2<u32> = vec2<u32>(58505u, 81856u);

var<private> global3: array<u32, 16> = array<u32, 16>(10938u, 18884u, 12438u, 26128u, 11793u, 0u, 23461u, 15849u, 4294967295u, 1u, 23464u, 0u, 62728u, 122770u, 0u, 74227u);

var<private> global4: array<f32, 1> = array<f32, 1>(1000f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global0.a)) + global0.a)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-725f, 318f, global0.a.x)), global0.a)));
    global3 = array<u32, 16>();
    let var_1 = firstLeadingBit(u_input.b) ^ -u_input.b;
    let var_2 = !(global2.x <= global2.x);
    let var_3 = var_0;
    return global0.a.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<f32>) -> f32 {
    let var_0 = arg_1;
    global4 = array<f32, 1>();
    var var_1 = _wgslsmith_f_op_f32(-2149f - _wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2120f)) + global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(851f)), _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(u_input.a.x, 1u)])))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_1.a)));
    global3 = array<u32, 16>();
    return _wgslsmith_f_op_f32(select(-1702f, _wgslsmith_f_op_f32(-var_2.x), false));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>) -> Struct_1 {
    global3 = array<u32, 16>();
    global4 = array<f32, 1>();
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))))), _wgslsmith_f_op_f32(func_3(abs(u_input.b.zy), Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 1u)], 640f, 775f))) * _wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(985f, global1.x, -1103f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, -566f, arg_0.x, -795f))))), 408f));
    return Struct_1(global0.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(global0.a.x, global0.a.x, global0.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, -402f)))))), !select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false)), vec4<bool>(u_input.a.x >= 1u, true, all(vec3<bool>(false, false, true)), select(false, true, false))));
    global3 = array<u32, 16>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) * _wgslsmith_f_op_f32(-arg_0.a.x)) * 2515f))), global1.x);
    var var_2 = func_1(arg_0.a, vec4<bool>(!(false && all(vec4<bool>(true, false, true, true))), !any(vec2<bool>(true, true)), true, !any(vec2<bool>(true, true)) & true));
    let var_3 = 582u;
    return _wgslsmith_sub_i32(select(countOneBits(u_input.b.x), i32(-1i) * -8696i, false), -59700i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(2147483647i, func_4(func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4[_wgslsmith_index_u32(41465u, 1u)], 234f, -345f))), vec4<bool>(false, true, false, false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(27415u, u_input.a.x, 40227u, 19564u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global2.x, 4294967295u, global3[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec4<u32>(global2.x, 16295u, 20561u, 110669u), vec4<u32>(global3[_wgslsmith_index_u32(global2.x, 16u)], global2.x, u_input.a.x, u_input.a.x)), vec4<u32>(0u, u_input.c, 4294967295u, 31186u) ^ vec4<u32>(0u, 35144u, global2.x, 24729u)), vec4<f32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 44793u, global2.x), vec4<u32>(u_input.c, global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(global2.x, 16u)], global3[_wgslsmith_index_u32(36298u, 16u)])), 1u)], _wgslsmith_f_op_f32(-global0.a.x), global0.a.x, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(41489u, 1u)])), func_1(global0.a, vec4<bool>(false, true, true, true)))) | u_input.b.xy;
    global4 = array<f32, 1>();
    global4 = array<f32, 1>();
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(global0.a + _wgslsmith_div_vec3_f32(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.a, global0.a))))), !vec4<bool>(1u >= ~u_input.c, false, any(vec3<bool>(true, true, false)), true));
    var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b.yxx, vec3<i32>(~(u_input.b.x | var_0.x), 32741i, min(max(-2147483647i, 2147483647i), select(-1i, u_input.b.x, true)))), _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(1i), u_input.b.x, var_0.x, u_input.b.x), _wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 9421i, -2147483647i, var_0.x), u_input.b)), -vec4<i32>(1i, 2147483647i, -2147483647i, u_input.b.x))));
    var var_2 = select(vec2<bool>(u_input.c >= _wgslsmith_clamp_u32(countOneBits(1u), 44397u, global2.x), abs(_wgslsmith_sub_u32(u_input.a.x, u_input.c)) > ~global2.x), vec2<bool>(!(~1u >= _wgslsmith_sub_u32(138329u, u_input.c)), true), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 16u)], 16u)], 1u)])))), _wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(4294967295u), ~global2.x, ~4294967295u, ~u_input.a.x), ~(~vec4<u32>(0u, 1u, u_input.c, 1138u))) << (~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 76901u, 71178u, global2.x), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(1u, 16u)], u_input.c, u_input.a.x), vec4<u32>(34706u, global3[_wgslsmith_index_u32(global2.x, 16u)], 32830u, u_input.c))) % vec4<u32>(32u)), vec4<i32>(-1i) * -u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(55227u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 16u)], global2.x, 0u, global2.x), vec4<u32>(4294967295u, u_input.c, global2.x, u_input.a.x))), u_input.c, abs(0u)), vec4<u32>(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 4294967295u), ~0u, 9124u, global2.x)));
}

