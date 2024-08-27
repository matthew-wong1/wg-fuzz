struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(4294967295u, 34593u, 0u, 1u, 0u, 1u, 1u, 1u, 0u, 0u, 7925u, 32932u, 67668u, 69649u);

var<private> global1: Struct_3;

var<private> global2: array<u32, 2> = array<u32, 2>(1u, 4294967295u);

var<private> global3: i32;

var<private> global4: Struct_3;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> u32 {
    let var_0 = 22589u;
    global1 = arg_0;
    let var_1 = true;
    global2 = array<u32, 2>();
    var var_2 = arg_1;
    return global2[_wgslsmith_index_u32(firstTrailingBit(arg_0.c & global4.c), 2u)];
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_5(-203f, Struct_1(~_wgslsmith_dot_vec2_i32(global4.a.xz, vec2<i32>(u_input.b, arg_1.a.x)), func_2(Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.a.x, arg_1.a.x, u_input.a, u_input.a), global4.a), vec2<u32>(global1.c, 13244u) & global1.b, ~u_input.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -776f), _wgslsmith_f_op_f32(-223f + -1404f))), Struct_2(_wgslsmith_f_op_f32(max(-791f, -1030f)), global1.c, arg_0.x, 17508u))));
    var_0 = Struct_5(-955f, var_0.b);
    let var_1 = Struct_2(-427f, 73746u, !select(any(arg_0), true, select(arg_0.x, arg_0.x, arg_0.x)) & arg_0.x, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global4.c, 2u)], global4.b.x) ^ 82837u);
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(1257f + -215f), -771f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-365f, var_0.a, -820f, var_1.a) * vec4<f32>(-368f, var_1.a, 737f, var_1.a)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1449f, -514f, var_0.a, var_1.a))), !vec4<bool>(arg_0.x, var_1.c, true, true)))))));
    let var_3 = 2147483647i;
    return ~48244u;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: f32) -> vec4<i32> {
    let var_0 = 1006f;
    let var_1 = arg_3;
    global3 = _wgslsmith_add_i32(i32(-1i) * -global1.a.x, arg_1);
    global0 = array<u32, 14>();
    var var_2 = _wgslsmith_clamp_vec4_u32(~firstTrailingBit(_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.e, global2[_wgslsmith_index_u32(0u, 2u)], 0u, u_input.e), vec4<u32>(global0[_wgslsmith_index_u32(0u, 14u)], global1.b.x, 18460u, 4294967295u), vec4<bool>(true, arg_0, true, arg_0)), vec4<u32>(arg_2, global4.c, 57322u, 1u))), vec4<u32>(~global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 14u)], 2u)] << (global2[_wgslsmith_index_u32(firstLeadingBit(~96006u), 2u)] % 32u), 1u, 1u, 11821u), vec4<u32>(4294967295u | global2[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(19782u, 1u), func_2(Struct_3(vec4<i32>(-2147483647i, 17435i, 2147483647i, 10691i), global4.b, 0u), var_1, Struct_2(803f, 4294967295u, true, 8522u))), 2u)], func_3(select(select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0), !vec3<bool>(false, arg_0, false), -344f > var_1), Struct_4(-vec4<i32>(arg_1, arg_1, -41731i, 4935i))), global1.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2 >> (1u % 32u), u_input.c.x, 66903u), ~reverseBits(vec3<u32>(15998u, global1.b.x, 28348u)))));
    return _wgslsmith_add_vec4_i32(abs(~vec4<i32>(34537i ^ global4.a.x, -2147483647i, -u_input.d, 0i)), firstLeadingBit(vec4<i32>(-2684i, firstLeadingBit(i32(-1i) * -61064i), ~2147483647i, _wgslsmith_div_i32(global1.a.x, _wgslsmith_mod_i32(global4.a.x, global1.a.x)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -947f)), _wgslsmith_f_op_f32(f32(-1f) * -1472f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f))))));
    let var_1 = -75158i;
    var var_2 = Struct_2(-201f, 4294967295u, true, 1u);
    var var_3 = any(select(vec2<bool>(var_2.c, true), !(!vec2<bool>(var_2.c, var_2.c)), vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)] != 0u, var_2.c))) || !var_2.c;
    let var_4 = ~vec4<u32>(120471u, _wgslsmith_div_u32(~_wgslsmith_sub_u32(1u, u_input.e), global2[_wgslsmith_index_u32(34419u, 2u)]), ~global1.c, ~u_input.e);
    return Struct_3(_wgslsmith_clamp_vec4_i32(arg_0, _wgslsmith_sub_vec4_i32(global4.a, ~(-arg_0)), abs(vec4<i32>(global4.a.x, _wgslsmith_clamp_i32(-35442i, 1i, 0i), arg_1.x, 2147483647i))), var_4.zz, select(max(4294967295u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c, 1u), vec2<u32>(1u, 1u)))), _wgslsmith_add_u32(33313u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, 22334u, 36684u), vec3<u32>(85689u, 0u, 4294967295u))), !(!select(var_2.c, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(1f));
    var var_1 = func_4(func_1(25076i <= (global4.a.x | countOneBits(41100i)), abs(~countOneBits(0i)), global4.c, -1054f), vec3<i32>(abs(select(global4.a.x, ~u_input.a, true)), ~(-(~u_input.d)), global4.a.x));
    let var_2 = Struct_4(vec4<i32>(10999i, 1i, 2147483647i, -firstTrailingBit(u_input.d)));
    var_1 = Struct_3(~(~select(global4.a, countOneBits(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -937i)), vec4<bool>(true, true, true, true))), firstTrailingBit(~abs(_wgslsmith_sub_vec2_u32(u_input.c, var_1.b))), _wgslsmith_clamp_u32(global4.c, ~func_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), var_2), global0[_wgslsmith_index_u32(1u, 14u)]));
    let var_3 = var_2;
    var var_4 = 20219i;
    let var_5 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1193f, 580f, 1000f))) * vec3<f32>(-467f, 1000f, -2671f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 142f, -1809f) * vec3<f32>(595f, -1006f, 1458f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -670f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1360f - -1293f))), _wgslsmith_f_op_f32(min(691f, -817f)))), vec3<bool>(select(true, true, true), true, all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)), 231f);
    let var_6 = vec2<bool>(!(any(vec3<bool>(true, true, true)) & true), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.x, var_5.x, 541f, -461f) - vec4<f32>(var_5.x, var_5.x, 1557f, var_5.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-888f, -1000f, var_5.x, -524f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.x, 1000f, var_5.x, 1143f) + vec4<f32>(var_5.x, var_5.x, var_5.x, var_5.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1585f, 1000f, var_5.x, 1000f)), false | var_6.x))))), var_5.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-522f, -223f, 1000f) * var_5), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.x, var_5.x, var_5.x)))), !all(var_6)))));
}

