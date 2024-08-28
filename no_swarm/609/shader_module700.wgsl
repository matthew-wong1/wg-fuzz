struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: array<u32, 27>;

var<private> global2: vec2<u32> = vec2<u32>(25078u, 29393u);

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(-797f, vec4<f32>(-1250f, -237f, -985f, 1000f), 34313i), Struct_1(860f, vec4<f32>(1000f, 1153f, -448f, 1000f), -1i), Struct_1(-1413f, vec4<f32>(-1862f, 658f, 1054f, -1509f), i32(-2147483648)), Struct_1(149f, vec4<f32>(157f, -749f, -705f, 2585f), -1i), Struct_1(-221f, vec4<f32>(166f, 927f, -505f, -1424f), 2147483647i), Struct_1(339f, vec4<f32>(-1057f, 360f, 540f, -452f), i32(-2147483648)), Struct_1(-1451f, vec4<f32>(546f, 316f, -2113f, 1000f), -1i), Struct_1(1990f, vec4<f32>(-1851f, -1415f, 1478f, -1000f), i32(-2147483648)), Struct_1(1484f, vec4<f32>(106f, -1325f, -253f, 1537f), 42926i), Struct_1(816f, vec4<f32>(-341f, -1121f, 1084f, 1397f), 1i), Struct_1(447f, vec4<f32>(-900f, 1109f, 1162f, -1042f), 1i));

var<private> global4: array<Struct_1, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    return all(select(select(!vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, true, arg_0), vec3<bool>(true, arg_0, false)), select(!vec3<bool>(arg_0, true, arg_0), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, false, arg_0)), !vec3<bool>(false, false, arg_0)), true)) == arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(~(~reverseBits(u_input.a)), _wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.a, u_input.a)), firstTrailingBit(min(u_input.a, vec2<u32>(u_input.a.x, 4294967295u)))))), 11u)];
    global3 = array<Struct_1, 11>();
    global4 = array<Struct_1, 10>();
    global3 = array<Struct_1, 11>();
    let var_1 = arg_0;
    return ~u_input.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = array<u32, 27>();
    global1 = array<u32, 27>();
    global0 = array<vec2<bool>, 7>();
    let var_0 = arg_0;
    var var_1 = any(!select(global0[_wgslsmith_index_u32(func_3(Struct_1(arg_2.a, vec4<f32>(-634f, 749f, 1243f, -783f), arg_2.c), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(768f, var_0.b.x, 151f, -1327f)))), 7u)], !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(global0[_wgslsmith_index_u32(21405u, 7u)], global0[_wgslsmith_index_u32(global2.x, 7u)], vec2<bool>(true, false)), true)));
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b, _wgslsmith_clamp_i32(-firstTrailingBit(arg_0.c), ~_wgslsmith_sub_i32(u_input.b, 0i), -2147483647i)), arg_0, func_2(arg_0, global4[_wgslsmith_index_u32(~0u << (firstLeadingBit(max(global1[_wgslsmith_index_u32(44208u, 27u)], u_input.a.x)) % 32u), 10u)], global4[_wgslsmith_index_u32(u_input.a.x, 10u)]));
    let var_1 = -1000f;
    global2 = ~u_input.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - -590f)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(282f, -1454f, false)), -1174f)))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.x + var_0.b.x), -1211f, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -393f)), arg_0.b.x))), select(abs(-2147483647i), 2082i, any(global0[_wgslsmith_index_u32(firstLeadingBit(26562u), 7u)])));
    global3 = array<Struct_1, 11>();
    return _wgslsmith_mod_i32(abs(-48613i), countOneBits(~0i)) <= (func_2(arg_0, func_2(global4[_wgslsmith_index_u32(1u, 10u)], Struct_1(var_1, var_0.b, var_2.c), global4[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(global2.x, 27u)]), 10u)]), Struct_1(_wgslsmith_f_op_f32(-225f - var_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 802f, var_0.a, -1000f) * var_0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_2.c, var_0.c), vec3<i32>(26067i, u_input.b, var_2.c)))).c | select(~u_input.b, -_wgslsmith_clamp_i32(7141i, u_input.b, u_input.b), _wgslsmith_sub_u32(u_input.a.x, 0u) != (1u << (global2.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), ~vec3<i32>(18703i, u_input.b, -1i)), 2147483647i) << (_wgslsmith_add_vec2_u32(select(vec2<u32>(global1[_wgslsmith_index_u32(global2.x, 27u)], 1u), vec2<u32>(global2.x, 0u), global0[_wgslsmith_index_u32(4294967295u | u_input.a.x, 7u)]), ~vec2<u32>(global2.x, u_input.a.x)) % vec2<u32>(32u)));
    var var_1 = select(vec4<bool>(true, !select(true, true, true), true, true), select(!vec4<bool>(true, any(global0[_wgslsmith_index_u32(18786u, 7u)]), any(vec3<bool>(true, false, true)), func_1(true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.x, 27u)], 11u)], vec3<i32>(-33074i, var_0.x, var_0.x))), vec4<bool>(true, func_1(true, global3[_wgslsmith_index_u32(global2.x, 11u)], _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, 1i, 36407i), vec3<i32>(2147483647i, 0i, -62418i))), func_4(func_2(global3[_wgslsmith_index_u32(u_input.a.x, 11u)], Struct_1(989f, vec4<f32>(-1945f, 399f, -1211f, -234f), 1i), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(114992u, 27u)], 27u)], 11u)])), true), vec4<bool>(true, false, false, func_4(Struct_1(-1307f, vec4<f32>(961f, -187f, 1771f, 271f), u_input.b)))), vec4<bool>(true, true, true, true));
    global3 = array<Struct_1, 11>();
    global0 = array<vec2<bool>, 7>();
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1781f, -1437f, _wgslsmith_f_op_f32(min(536f, 1060f)))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-280f)), 492f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(abs(-707f))))));
    let var_3 = select(~abs(~u_input.a), _wgslsmith_clamp_vec2_u32(firstTrailingBit((u_input.a >> (u_input.a % vec2<u32>(32u))) >> (~vec2<u32>(1u, 0u) % vec2<u32>(32u))), abs(u_input.a), select(u_input.a, _wgslsmith_div_vec2_u32(firstLeadingBit(u_input.a), u_input.a), global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~1u, 27u)], 7u)])), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-(~1i), ~(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 7679u), global2.x & global1[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_mod_u32(1u, global2.x), ~50302u) ^ ~max(vec4<u32>(var_3.x, global1[_wgslsmith_index_u32(global2.x, 27u)], 32668u, 25682u), vec4<u32>(var_3.x, u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 27u)], 4359u))));
}

