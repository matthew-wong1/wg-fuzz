struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 40612i;

var<private> global1: array<vec2<f32>, 17>;

var<private> global2: vec3<u32>;

var<private> global3: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: vec2<i32>) -> vec4<u32> {
    var var_0 = vec2<i32>(~(_wgslsmith_dot_vec2_i32(vec2<i32>(-4618i, arg_2), u_input.b.yy) | -7573i), u_input.b.x);
    let var_1 = (firstTrailingBit(vec4<u32>(34285u, global2.x, select(global2.x, global2.x, arg_0.a), max(1u, 15354u))) | (vec4<u32>(0u, u_input.d, 66567u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, 1u), vec3<u32>(u_input.d, global2.x, 0u))) & vec4<u32>(~10618u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global2.x, global2.x, 49155u), vec4<u32>(global2.x, 0u, 0u, u_input.d)), global2.x))) << (firstLeadingBit(~reverseBits(vec4<u32>(4294967295u, global2.x, 0u, 56978u))) % vec4<u32>(32u));
    var var_2 = vec2<i32>(-1i) * -u_input.c.yz;
    global2 = vec3<u32>(firstLeadingBit(u_input.d), 4294967295u, ~countOneBits(select(u_input.d, 0u, global3.a))) | (~vec3<u32>(28325u | global2.x, var_1.x, ~0u) << (firstLeadingBit(~var_1.wyz) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-568f))));
    return (~((vec4<u32>(23760u, u_input.d, 0u, 4294967295u) & var_1) << (vec4<u32>(u_input.d, u_input.d, 6285u, var_1.x) % vec4<u32>(32u))) ^ ~_wgslsmith_div_vec4_u32(var_1, var_1)) ^ ~(~vec4<u32>(var_1.x << (26992u % 32u), var_1.x, var_1.x, _wgslsmith_div_u32(1u, 42665u)));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    return _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 17167u, global2.x, 4294967295u), vec4<u32>(0u, 4294967295u, 0u, 111237u)), 0u, 31521u, 0u) >> (vec4<u32>(global2.x, 1u, 1u, u_input.d) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.d, global2.x, 13827u, u_input.d)), select(vec4<u32>(u_input.d, 4294967295u, 0u, u_input.d) ^ vec4<u32>(63586u, u_input.d, 34271u, 29346u), firstTrailingBit(vec4<u32>(global2.x, 14985u, 16705u, 39829u)), select(vec4<bool>(global3.a, global3.a, global3.a, global3.a), vec4<bool>(global3.a, global3.a, true, global3.a), vec4<bool>(true, false, global3.a, true))))) >> (~_wgslsmith_mult_vec4_u32(func_3(Struct_2(global3.a), Struct_2(false), abs(2147483647i), vec2<i32>(u_input.c.x, 11381i)), ~countOneBits(vec4<u32>(33978u, 38785u, u_input.d, 19743u))) % vec4<u32>(32u));
}

fn func_1(arg_0: vec2<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec4_u32(abs(func_2(Struct_1(u_input.b.yxx, -451f))) << (vec4<u32>(4294967295u, 1u, 4294967295u ^ firstTrailingBit(4294967295u), 15601u) % vec4<u32>(32u)), abs(vec4<u32>(8831u, global2.x, _wgslsmith_sub_u32(~u_input.d, global2.x | 36051u), ~abs(1u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-405f, 1f)), _wgslsmith_f_op_f32(-1581f * -1537f), _wgslsmith_f_op_f32(215f + _wgslsmith_f_op_f32(sign(1567f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-979f - _wgslsmith_f_op_f32(select(315f, -513f, global3.a))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(round(-1000f)))))));
    global3 = Struct_2(all(!(!(!vec3<bool>(global3.a, true, true)))));
    global0 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, arg_0.x, 2147483647i), vec4<i32>(arg_0.x, -1i, arg_0.x, arg_0.x)))), -_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.c.x, u_input.b.x), u_input.b.xz));
    global0 = _wgslsmith_clamp_i32(min(~(-2147483647i), u_input.a), reverseBits(arg_0.x >> (_wgslsmith_mult_u32(countOneBits(0u), firstTrailingBit(0u)) % 32u)), arg_0.x);
    return !(!(!select(vec3<bool>(false, false, global3.a), vec3<bool>(global3.a, false, global3.a), -16655i >= arg_0.x)));
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = select(!(!vec4<bool>(true, global3.a, true, true)), vec4<bool>(all(select(select(vec4<bool>(arg_0.x, true, true, true), vec4<bool>(global3.a, false, global3.a, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, true, arg_0.x, true), vec4<bool>(false, true, arg_0.x, global3.a), vec4<bool>(global3.a, arg_0.x, arg_0.x, global3.a)), !global3.a)), false, !global3.a, !(!arg_0.x & (u_input.c.x > -53418i))), !select(select(select(vec4<bool>(false, false, true, global3.a), vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, global3.a, arg_0.x, false)), vec4<bool>(global3.a, true, arg_0.x, false), !vec4<bool>(arg_0.x, arg_0.x, true, true)), !(!vec4<bool>(false, arg_0.x, true, true)), select(vec4<bool>(false, true, arg_0.x, global3.a), !vec4<bool>(true, global3.a, global3.a, arg_0.x), global3.a)));
    global3 = Struct_2(all(vec3<bool>(!(!global3.a), all(select(vec2<bool>(true, true), arg_0.zy, false)), true)));
    let var_1 = all(func_1(-vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -1i, u_input.c.x, u_input.b.x)), 0i)));
    global1 = array<vec2<f32>, 17>();
    var_0 = select(select(vec4<bool>(any(vec4<bool>(arg_0.x, false, arg_0.x, var_1)), var_1, 1i <= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -1i, 176i, -99464i), u_input.b), true), !select(!vec4<bool>(var_0.x, true, false, global3.a), select(vec4<bool>(true, true, var_1, false), vec4<bool>(true, true, false, arg_0.x), vec4<bool>(global3.a, var_1, arg_0.x, var_1)), vec4<bool>(global3.a, true, var_1, var_0.x)), select(!select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(var_1, false, arg_0.x, true), vec4<bool>(var_0.x, false, true, false)), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.x, false, true, global3.a), select(vec4<bool>(true, global3.a, true, var_1), vec4<bool>(global3.a, var_0.x, true, global3.a), true)), select(!vec4<bool>(true, arg_0.x, true, global3.a), select(vec4<bool>(var_1, true, false, true), vec4<bool>(false, true, global3.a, var_1), vec4<bool>(global3.a, true, var_1, arg_0.x)), vec4<bool>(var_0.x, true, false, true)))), !vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(28341i, -34828i, u_input.b.x, -71246i), u_input.b) >= _wgslsmith_mult_i32(u_input.b.x, 0i), (u_input.b.x > -1i) & false, var_1, var_1), false);
    return Struct_1(min(-firstTrailingBit(vec3<i32>(1i, -55866i, 2147483647i)) & vec3<i32>(u_input.e, -27496i, u_input.a), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-928f)), _wgslsmith_div_f32(-584f, -381f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-756f * 1616f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 17>();
    let var_0 = func_4(select(!vec3<bool>(true, global3.a, true), !(!select(vec3<bool>(false, global3.a, global3.a), vec3<bool>(global3.a, global3.a, false), false)), !func_1(~vec2<i32>(-40241i, u_input.e))));
    let var_1 = _wgslsmith_f_op_f32(select(-1197f, var_0.b, !global3.a));
    let var_2 = Struct_2(any(vec2<bool>(global3.a, false)));
    let var_3 = !(!(func_3(var_2, Struct_2(var_2.a), 2147483647i, ~vec2<i32>(var_0.a.x, -38813i)).x >= firstTrailingBit(4294967295u)));
    let var_4 = func_4(!select(!(!vec3<bool>(true, global3.a, true)), vec3<bool>(4294967295u >= u_input.d, var_2.a, var_3), select(func_1(u_input.c.xz), select(vec3<bool>(global3.a, global3.a, true), vec3<bool>(var_3, global3.a, var_2.a), false), any(vec3<bool>(var_3, var_3, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.d, u_input.d), min(vec2<u32>(u_input.d, u_input.d), vec2<u32>(18987u, u_input.d)), global2.zx), global2.xz, !vec2<bool>(var_2.a, var_2.a))), 27191u, u_input.b.x);
}

