struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(1u, vec4<f32>(-491f, 327f, 900f, 813f), 2147483647i, vec3<u32>(1u, 65489u, 4294967295u), vec4<i32>(23574i, 1i, 2147483647i, 44560i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, true, false, false)), ~28068u < (global1.a | 0u), all(vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true)), vec4<bool>(!any(vec4<bool>(false, true, true, false)), true, !any(vec4<bool>(true, true, true, true)), false), true);
    global1 = Struct_1(_wgslsmith_div_u32(~(~global1.d.x), reverseBits(0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b * global3.b) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.b.x, global1.b.x, -1153f, global2.b.x)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.b - vec4<f32>(882f, -1000f, global3.b.x, global3.b.x)), vec4<f32>(global2.b.x, -692f, -318f, 556f), true)))), _wgslsmith_mod_i32(~global2.e.x, global1.e.x), select(global2.d ^ countOneBits(reverseBits(global1.d)), global2.d, true), (_wgslsmith_mult_vec4_i32(~vec4<i32>(12617i, -14169i, global1.c, global1.c), select(global2.e, global3.e, vec4<bool>(true, true, false, true))) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(global2.d.x, global2.d.x, global3.d.x, global1.a), vec4<u32>(21305u, global2.d.x, global1.d.x, 0u)) % vec4<u32>(32u))) << ((~vec4<u32>(global3.d.x, global1.a, 66503u, 33455u) & _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.d.x, global1.a, global2.d.x, global1.a), vec4<u32>(global2.d.x, global1.a, global1.a, global1.a), vec4<u32>(4294967295u, global1.a, global1.d.x, 1u)), vec4<u32>(1u, global1.d.x, global2.a, 14584u))) % vec4<u32>(32u)));
    global3 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(select(~max(global2.d.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 52174u), vec3<u32>(25224u, 33323u, 20182u) & vec3<u32>(4294967295u, 1u, global2.a)), true), 4294967295u), 6u)];
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs((~global2.a | 1u) ^ _wgslsmith_dot_vec4_u32(max(vec4<u32>(global2.a, 40036u, global1.a, 1u), vec4<u32>(global1.d.x, global2.d.x, global3.d.x, global2.d.x)), vec4<u32>(0u, global1.d.x, 0u, 2011u) | vec4<u32>(4294967295u, 4294967295u, global2.a, 47868u))), 10728u), 6u)];
    var var_2 = 4294967295u;
    return (max(~countOneBits(1354u), global2.d.x) ^ ~global2.d.x) | 14693u;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-1020f - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = Struct_1(global2.a, _wgslsmith_f_op_vec4_f32(global2.b * vec4<f32>(_wgslsmith_f_op_f32(min(arg_1, -1508f)), -193f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global1.b.x) * global3.b.x), -253f)), ~u_input.a, vec3<u32>(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, global3.b.x), global3.b.yx)), 0u, reverseBits(_wgslsmith_add_u32(~global1.d.x, 0u))), ~(-(~reverseBits(u_input.b))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)));
    let var_3 = arg_0.x;
    let var_4 = select(vec3<bool>(any(arg_0), false, false), select(select(!select(vec3<bool>(true, var_3, false), vec3<bool>(var_3, arg_0.x, arg_2), vec3<bool>(false, false, arg_2)), !vec3<bool>(false, arg_2, var_3), false), vec3<bool>(firstLeadingBit(global2.a) == 1u, true, all(vec3<bool>(false, var_3, true))), select(vec3<bool>(true, true, true), select(!vec3<bool>(false, var_3, arg_0.x), vec3<bool>(true, true, true), false), !select(vec3<bool>(true, true, true), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, false, arg_2)))), !(!arg_0.x));
    return _wgslsmith_clamp_u32(~global1.a, 1u, select(0u, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(global3.d.x, global1.d.x, 20747u, 0u)), ~(~vec4<u32>(var_1.a, 34353u, 5394u, var_1.a))), var_3));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(global1.a, 6u)];
    let var_1 = true | !(global1.d.x > (~74827u | global2.a));
    global1 = global0[_wgslsmith_index_u32(var_0.d.x, 6u)];
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 6u)];
    let var_3 = select(vec2<bool>(var_1, true), vec2<bool>(var_1, true), vec2<bool>(!(var_1 & true), !((206f >= global1.b.x) & any(vec4<bool>(var_1, false, var_1, false)))));
    return vec4<u32>(0u, ~var_2.d.x, global1.d.x, 23949u) & _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(var_2.d.x, global3.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d.x, global1.a, var_0.a, var_2.d.x), vec4<u32>(0u, 65688u, global3.a, global2.a)), func_2(vec2<bool>(true, false), global2.b.x, false), 26446u) & vec4<u32>(var_2.a, _wgslsmith_dot_vec3_u32(global3.d, global2.d), ~global2.d.x, abs(var_0.d.x)), min(vec4<u32>(~32839u, global2.d.x, global2.d.x, global1.d.x), select(~vec4<u32>(29206u, global3.d.x, var_0.a, 657u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d.x, 1u, 23554u, 4294967295u), vec4<u32>(1u, 4294967295u, var_0.d.x, var_0.d.x)), !vec4<bool>(var_3.x, var_3.x, true, var_3.x))));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_1, 6>();
    global3 = Struct_1(global3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.b.x + -1019f), _wgslsmith_f_op_f32(floor(500f)), -1525f, _wgslsmith_f_op_f32(-global2.b.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1033f, global3.b.x, -1000f, global2.b.x))) - global2.b))), global1.c, vec3<u32>(~(~(~global2.d.x)), func_3(global3.b.xy), max(arg_0.x, 0u)), abs(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-11184i, u_input.a, -13968i, global3.e.x) >> (arg_0 % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(~u_input.b, global3.e))));
    let var_0 = true || any(vec3<bool>(false, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), true));
    global3 = global0[_wgslsmith_index_u32((abs(global3.d.x) << (arg_0.x % 32u)) ^ ~global1.a, 6u)];
    var var_1 = var_0;
    return global0[_wgslsmith_index_u32(~(~(~(~_wgslsmith_sub_u32(2766u, global1.d.x)))), 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global3.d.zz;
    global2 = global0[_wgslsmith_index_u32(108100u, 6u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-626f, -1277f, 1040f));
    var var_2 = Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(abs(global2.b)), _wgslsmith_mod_i32(global1.c, _wgslsmith_sub_i32(25274i, global1.c)), select(vec3<u32>(0u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.d.x, 5102u, global2.a, 0u), vec4<u32>(0u, global1.d.x, 4294967295u, 32169u)), firstLeadingBit(36778u)), global3.d.x), vec3<u32>(global2.d.x, ~0u, 0u), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))), min(_wgslsmith_div_vec4_i32(-vec4<i32>(global3.c, 3119i, 0i, global1.e.x), countOneBits(global1.e)), vec4<i32>(36728i << (global2.a % 32u), -22971i, abs(0i), 21423i) & vec4<i32>(min(global2.c, 2147483647i), u_input.b.x, global1.c, ~global3.c)));
    var_2 = func_4(_wgslsmith_div_vec4_u32(~func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-884f, global2.b.x), vec2<f32>(global1.b.x, var_2.b.x), vec2<bool>(false, false))), _wgslsmith_mod_i32(1i, var_2.c)), select(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global1.d.x, var_0.x, var_0.x), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), reverseBits(vec4<u32>(0u, 0u, var_0.x, global1.d.x))), vec4<u32>(1u, countOneBits(0u), 1u, max(global2.d.x, var_0.x)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), true))));
    let var_3 = var_2.b.x;
    let var_4 = func_4(vec4<u32>(func_3(vec2<f32>(-943f, _wgslsmith_f_op_f32(abs(global1.b.x)))), _wgslsmith_add_u32(1u, firstLeadingBit(1u)), 1u, func_3(_wgslsmith_f_op_vec2_f32(abs(var_1.yx)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~abs(var_4.e.zww)) | max(func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.d.x, var_4.d.x, 54471u, 68511u), vec4<u32>(global1.d.x, 4294967295u, global2.d.x, var_0.x))).e.wyz, _wgslsmith_mult_vec3_i32(u_input.b.wzx, vec3<i32>(u_input.a, global1.c, 2147483647i))), global1.c, var_4.d);
}

