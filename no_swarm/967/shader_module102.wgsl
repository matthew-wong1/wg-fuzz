struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(arg_0 * -1007f), true | arg_1.a)), -21280i << (_wgslsmith_sub_u32(4294967295u, u_input.a) % 32u), arg_1, true)), arg_1);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-218f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global1.a)), 580f)), _wgslsmith_f_op_f32(var_0.a.a.a * -353f)))));
    let var_2 = (-1524i << (abs(u_input.a) % 32u)) | 2147483647i;
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(354f, _wgslsmith_f_op_f32(sign(-276f)))))), firstLeadingBit(var_0.a.a.b), var_0.b, !arg_1.a));
    var_0 = Struct_4(var_0.a, global1.c);
    return any(vec4<bool>(global1.c.a, any(select(select(vec4<bool>(false, true, arg_1.a, true), vec4<bool>(var_0.b.a, arg_1.a, false, var_3.a.d), vec4<bool>(arg_1.a, global1.d, var_3.a.c.a, var_3.a.c.a)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, arg_1.a, false, arg_1.a), vec4<bool>(true, true, arg_1.a, true), vec4<bool>(true, var_3.a.d, var_0.a.a.d, false)))), arg_1.a, all(select(!vec2<bool>(global1.d, var_3.a.c.a), select(vec2<bool>(false, false), vec2<bool>(true, arg_1.a), vec2<bool>(true, arg_1.a)), vec2<bool>(global1.c.a, true)))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<i32>) -> bool {
    var var_0 = Struct_1(!(!func_3(global1.a, global1.c)));
    let var_1 = !(!(!(!(!vec4<bool>(false, true, var_0.a, var_0.a)))));
    global0 = true & any(vec4<bool>(any(var_1.wx), var_1.x, true, var_0.a));
    var_0 = Struct_1(all(select(!var_1.yzy, !var_1.zwy, !var_1.yzx)) | global1.c.a);
    global1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) * global1.a)))), max(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(arg_2, vec3<i32>(arg_1, global1.b, 2147483647i)), vec3<i32>(arg_2.x, arg_1, global1.b)), -global1.b), arg_2.x), global1.c, global1.c.a);
    return true != any(var_1);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(func_2(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(arg_0.x, 17759i)), -45499i, 2147483647i), abs(~vec3<i32>(global1.b, 29755i, -2147483647i))), -(-vec3<i32>(-24633i, -16231i, arg_0.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 8400u)) % vec3<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(1201f * global1.a);
    let var_2 = _wgslsmith_sub_u32(28990u, ~firstTrailingBit(~firstLeadingBit(u_input.a)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - global1.a) - _wgslsmith_f_op_f32(f32(-1f) * -370f));
    let var_4 = -620f;
    return arg_1.a.c;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    let var_0 = arg_3;
    var var_1 = !select(select(vec3<bool>(44664u < u_input.a, any(vec3<bool>(true, true, false)), true), !select(vec3<bool>(arg_3.a.d, true, true), vec3<bool>(var_0.a.c.a, true, global1.d), var_0.a.c.a), select(select(vec3<bool>(false, var_0.a.d, true), vec3<bool>(false, global1.c.a, var_0.a.c.a), arg_0), vec3<bool>(false, arg_1.a, false), true)), vec3<bool>(true, true || arg_3.a.c.a, func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)), ~46700i, vec3<i32>(-53698i, 1i, arg_3.a.b) & vec3<i32>(-23649i, -2147483647i, var_0.a.b))), !select(vec3<bool>(true, true, true), !vec3<bool>(false, arg_0, arg_2.b.a), global1.d));
    var var_2 = Struct_2(174f, -3504i, func_1((~vec2<i32>(1i, 2147483647i) << (~vec2<u32>(u_input.a, 32206u) % vec2<u32>(32u))) ^ reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.a.a.b, 21952i), vec2<i32>(arg_3.a.b, arg_3.a.b), vec2<i32>(-2147483647i, 23340i))), arg_3), -_wgslsmith_mult_i32(_wgslsmith_mult_i32(global1.b, arg_2.a.a.b), global1.b) < _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_3.a.b, arg_2.a.a.b), vec2<i32>(var_0.a.b & 0i, select(1i, 13011i, true))));
    var var_3 = Struct_2(-154f, arg_3.a.b, func_1(select(~_wgslsmith_sub_vec2_i32(vec2<i32>(22019i, 3450i), vec2<i32>(1i, 30157i)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_2.a.a.b, -4242i), ~vec2<i32>(28436i, global1.b)), var_1.xx), arg_2.a), (arg_2.a.a.b == _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 56230i), ~vec2<i32>(arg_2.a.a.b, global1.b))) || arg_1.a);
    let var_4 = Struct_4(arg_2.a, func_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_2.b, global1.b, 0i), vec4<i32>(arg_2.a.a.b, arg_3.a.b, arg_3.a.b, 1i)), ~global1.b) ^ firstTrailingBit(countOneBits(vec2<i32>(arg_3.a.b, 18565i))), arg_3));
    return _wgslsmith_f_op_f32(-var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (-(~global1.b | _wgslsmith_mult_i32(global1.b, global1.b)) | _wgslsmith_add_i32(firstTrailingBit(-2147483647i), ~(i32(-1i) * -37321i))) < global1.b;
    var_0 = global1.a != global1.a;
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(all(vec3<bool>(false, global1.c.a, true)), all(vec3<bool>(global1.d, false, global1.c.a)), true), func_1(vec2<i32>(global1.b, global1.b) | vec2<i32>(-16465i, global1.b), Struct_3(Struct_2(-945f, 20433i, Struct_1(true), false))), Struct_4(Struct_3(Struct_2(global1.a, 51072i, Struct_1(global1.d), false)), func_1(vec2<i32>(-1i, global1.b), Struct_3(Struct_2(-1077f, global1.b, global1.c, true)))), Struct_3(Struct_2(-1620f, global1.b, Struct_1(global1.c.a), global1.d))))), ~(-18636i), global1.c, global1.d);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1163f, global1.a)), 675f))), _wgslsmith_div_i32(-((global1.b & 2331i) | 18473i), 92i | global1.b), global1.c, _wgslsmith_clamp_u32(abs(36696u), 4294967295u << (u_input.a % 32u), select(4294967295u, 1u, global1.d) ^ abs(u_input.a)) == 48556u);
    var_0 = true && all(vec4<bool>(var_1.c.a, true, false, false));
    var_0 = global1.d;
    let x = u_input.a;
    s_output = StorageBuffer(-(~countOneBits(vec2<i32>(20267i, 14923i))), ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 37946u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a)), ~u_input.a), countOneBits(u_input.a) >> (1u % 32u), 1u, 1u));
}

