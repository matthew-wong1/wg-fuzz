struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

var<private> global1: Struct_1;

var<private> global2: array<i32, 6>;

var<private> global3: u32;

var<private> global4: array<vec4<u32>, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    global0 = array<vec3<bool>, 3>();
    global3 = u_input.c;
    global4 = array<vec4<u32>, 21>();
    global0 = array<vec3<bool>, 3>();
    let var_0 = Struct_1(!(!(!select(vec2<bool>(global1.a.x, global1.a.x), arg_1.a, vec2<bool>(false, global1.e)))), _wgslsmith_f_op_f32(select(-406f, _wgslsmith_div_f32(484f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -298f)))), arg_1.c.x || (_wgslsmith_div_f32(global1.d, global1.d) < _wgslsmith_f_op_f32(-arg_1.b)))), select(!select(vec2<bool>(global1.e, arg_1.e), select(vec2<bool>(true, false), global1.c, arg_1.e), !vec2<bool>(global1.a.x, global1.c.x)), !(!vec2<bool>(true, arg_1.c.x)), !(!vec2<bool>(arg_1.e, arg_1.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-243f + arg_1.d)))) - _wgslsmith_f_op_f32(f32(-1f) * -710f)), true);
    return var_0.d;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(func_3(abs(arg_1.x | -2147483647i), arg_0, vec3<i32>(-u_input.b.x, u_input.a, 68863i)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.c, 6u)] << (u_input.c % 32u), arg_0, -vec3<i32>(1i, global2[_wgslsmith_index_u32(u_input.c, 6u)], global2[_wgslsmith_index_u32(45791u, 6u)]))))));
    var var_1 = !all(global0[_wgslsmith_index_u32(u_input.c, 3u)]);
    var_1 = false;
    let var_2 = arg_0;
    let var_3 = 23313u;
    return !arg_0.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = arg_0.a;
    global4 = array<vec4<u32>, 21>();
    global3 = min(12511u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, u_input.c), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), 21u)]), _wgslsmith_mod_u32(0u, u_input.c) ^ reverseBits(u_input.c))) >> (_wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(56594u, 4294967295u, 5463u), _wgslsmith_clamp_vec3_u32(vec3<u32>(52311u, 0u, u_input.c), vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(110895u, u_input.c, 46044u))))) % 32u);
    global0 = array<vec3<bool>, 3>();
    global1 = Struct_1(!select(!vec2<bool>(var_0.x, arg_0.c.x), var_0, arg_0.e), 293f, !vec2<bool>(false, select(any(global1.c), false, false)), -764f, true);
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> StorageBuffer {
    let var_0 = global1.a.x;
    global3 = _wgslsmith_mult_u32(firstTrailingBit(1u), 2400u << (~(~_wgslsmith_mod_u32(u_input.c, u_input.c)) % 32u));
    let var_1 = reverseBits(~(-8964i));
    var var_2 = any(func_4(func_4(Struct_1(vec2<bool>(false, true), _wgslsmith_div_f32(arg_0.b, -444f), select(vec2<bool>(global1.c.x, false), arg_0.a, arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -150f), select(false, false, true)), firstLeadingBit(vec4<i32>(-2147483647i, -1i, 1i, 2147483647i) >> (vec4<u32>(16640u, 57536u, u_input.c, u_input.c) % vec4<u32>(32u)))), -vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.c, u_input.c)), 6u)], _wgslsmith_sub_i32(var_1, u_input.b.x), var_1 << (u_input.c % 32u), -global2[_wgslsmith_index_u32(4294967295u, 6u)])).c);
    let var_3 = Struct_1(!vec2<bool>(func_2(Struct_1(vec2<bool>(arg_1.c.x, arg_1.a.x), 165f, vec2<bool>(false, false), 1000f, arg_3), vec4<i32>(1i, u_input.b.x, -1855i, 2147483647i) ^ vec4<i32>(-2147483647i, var_1, var_1, u_input.b.x), _wgslsmith_f_op_f32(-1000f + arg_1.b)), all(vec4<bool>(true, false, arg_0.a.x, arg_0.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -286f), arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-196f - arg_1.d), _wgslsmith_f_op_f32(-arg_0.b), true))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.d)))), select(-822f >= _wgslsmith_f_op_f32(trunc(263f)), any(select(!vec4<bool>(global1.a.x, arg_3, false, arg_0.c.x), select(vec4<bool>(true, global1.e, true, true), vec4<bool>(arg_1.a.x, arg_3, false, true), true), select(vec4<bool>(false, true, arg_3, true), vec4<bool>(true, true, arg_1.c.x, false), vec4<bool>(true, true, arg_0.a.x, arg_0.c.x)))), arg_3));
    return StorageBuffer(_wgslsmith_add_vec2_i32(u_input.b, u_input.b), var_3.b, var_1);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> StorageBuffer {
    return func_5(arg_1, func_4(Struct_1(vec2<bool>(false, func_2(Struct_1(arg_2.a, arg_1.b, arg_1.a, arg_1.b, global1.a.x), vec4<i32>(1i, -15702i, -1i, u_input.b.x), arg_3)), -2565f, select(!arg_2.a, arg_0.c, global1.c.x), arg_3, true), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 1i, 2996i, 0i), vec4<i32>(-1i, global2[_wgslsmith_index_u32(28745u, 6u)], -13688i, global2[_wgslsmith_index_u32(u_input.c, 6u)]) & vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, -3738i)) ^ (~vec4<i32>(u_input.b.x, 0i, global2[_wgslsmith_index_u32(u_input.c, 6u)], u_input.b.x) ^ abs(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(21067u, 6u)], global2[_wgslsmith_index_u32(u_input.c, 6u)], u_input.a)))), arg_1.e, arg_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global3 = ~45343u;
    global4 = array<vec4<u32>, 21>();
    let x = u_input.a;
    s_output = func_1(Struct_1(vec2<bool>(_wgslsmith_f_op_f32(trunc(991f)) > -1170f, any(select(global1.c, global1.c, false))), -1538f, global1.c, global1.d, select(1u > u_input.c, !(!global1.c.x), all(vec4<bool>(global1.a.x, true, false, false)))), Struct_1(vec2<bool>(global1.a.x | true, global1.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1121f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-628f)))), vec2<bool>(select(select(global1.a.x, global1.e, false), any(vec2<bool>(false, global1.e)), 68331i >= global2[_wgslsmith_index_u32(0u, 6u)]), true), -1055f, !(!(!global1.c.x))), Struct_1(select(!global1.c, vec2<bool>(any(vec4<bool>(global1.e, global1.e, false, global1.e)), true), select(global1.c, !global1.a, vec2<bool>(true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-816f - global1.b))), global1.a, global1.d, any(vec4<bool>(all(global0[_wgslsmith_index_u32(60341u, 3u)]), global1.e || false, -799f == global1.b, true))), 101f);
}

