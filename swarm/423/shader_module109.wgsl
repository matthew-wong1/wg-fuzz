struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<bool, 29>;

var<private> global2: u32;

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> i32 {
    global0 = array<u32, 20>();
    let var_0 = true;
    global0 = array<u32, 20>();
    let var_1 = firstLeadingBit(~1u);
    global0 = array<u32, 20>();
    return i32(-1i) * -7357i;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    let var_0 = _wgslsmith_mod_i32(arg_3.c.b, arg_2.c.a);
    global0 = array<u32, 20>();
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.c.c.x))), 2573f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.c.c.x, _wgslsmith_f_op_f32(min(-348f, _wgslsmith_div_f32(arg_1.c.c.x, var_1.b.c.c.x)))))), global3.x | true));
    var var_3 = var_1.b.c;
    return all(select(!select(var_1.d, !vec3<bool>(global1[_wgslsmith_index_u32(arg_2.c.e.x, 29u)], false, false), vec3<bool>(arg_3.d.x, true, false)), vec3<bool>(arg_2.a.x, !any(vec4<bool>(true, false, global3.x, true)), !(global0[_wgslsmith_index_u32(0u, 20u)] == arg_2.c.e.x)), false));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = arg_1.yx;
    global3 = vec3<bool>(global1[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.x, arg_1.x), ~43876u)), 29u)], true, all(select(vec3<bool>(true, global1[_wgslsmith_index_u32(~1u, 29u)], func_3(true, Struct_3(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1782u, 20u)], 20u)], 29u)], true, true), Struct_2(arg_2.wwx, -438f, Struct_1(arg_0.x, arg_0.x, vec2<f32>(470f, -3159f), global0[_wgslsmith_index_u32(86621u, 20u)], arg_1.xww), vec2<f32>(2127f, 1335f), vec2<u32>(1u, 5742u)), Struct_1(u_input.a, -30763i, vec2<f32>(-1091f, 701f), arg_2.x, arg_1.zyz), vec3<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57849u, 20u)], 29u)], true)), Struct_3(vec3<bool>(true, global3.x, global3.x), Struct_2(vec3<u32>(var_0.x, 56616u, var_0.x), -1575f, Struct_1(1i, u_input.a, vec2<f32>(-1620f, 736f), 16185u, vec3<u32>(0u, 4294967295u, var_0.x)), vec2<f32>(-1420f, -961f), arg_2.wz), Struct_1(u_input.a, 48750i, vec2<f32>(-360f, 892f), var_0.x, vec3<u32>(1u, var_0.x, 1u)), vec3<bool>(global1[_wgslsmith_index_u32(1u, 29u)], true, false)), Struct_3(vec3<bool>(global1[_wgslsmith_index_u32(4248u, 29u)], true, global1[_wgslsmith_index_u32(22665u, 29u)]), Struct_2(arg_2.wxy, -345f, Struct_1(arg_0.x, 0i, vec2<f32>(-516f, -842f), var_0.x, vec3<u32>(var_0.x, 21341u, 4294967295u)), vec2<f32>(730f, 1726f), vec2<u32>(arg_2.x, arg_1.x)), Struct_1(u_input.a, u_input.a, vec2<f32>(-1040f, 1665f), var_0.x, arg_2.wyw), vec3<bool>(global1[_wgslsmith_index_u32(8260u, 29u)], false, global1[_wgslsmith_index_u32(0u, 29u)])))), !vec3<bool>(global1[_wgslsmith_index_u32(arg_2.x, 29u)], global1[_wgslsmith_index_u32(arg_2.x, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<bool>(global3.x, true, global1[_wgslsmith_index_u32(1u, 29u)]))));
    var var_1 = Struct_3(vec3<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.x, _wgslsmith_clamp_u32(0u, var_0.x, global0[_wgslsmith_index_u32(11868u, 20u)]), 67872u, ~arg_1.x), vec4<u32>(0u, ~77771u, _wgslsmith_dot_vec4_u32(arg_2, arg_1), _wgslsmith_div_u32(14997u, arg_2.x))), 29u)], _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 7759i, arg_0.x) & vec3<i32>(-2147483647i, -1i, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, 0i, u_input.a), vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(2147483647i, 1i, 7821i))) != 1i), Struct_2(_wgslsmith_mod_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(arg_2.x, 20u)], arg_1.x, 67278u) & (vec3<u32>(1u, var_0.x, 46503u) & vec3<u32>(1u, 4294967295u, 32527u)), arg_1.xwz), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(182f)) - -556f))), Struct_1(11193i, arg_0.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1618f, 850f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(730f, 611f)), select(false, false, true))), firstTrailingBit(max(19924u, 78056u)), firstTrailingBit(vec3<u32>(1u, 59467u, 0u))), vec2<f32>(191f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -346f), _wgslsmith_f_op_f32(f32(-1f) * -166f)))), ~(~vec2<u32>(0u, global0[_wgslsmith_index_u32(arg_2.x, 20u)]))), Struct_1(-1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, 0i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0, vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(u_input.a, 1i)), arg_0 ^ arg_0)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-978f, 858f)))), global3.x)), 0u, arg_2.yyw), vec3<bool>(false, true, !(any(vec3<bool>(true, global3.x, global1[_wgslsmith_index_u32(arg_2.x, 29u)])) & true)));
    return Struct_1(15971i, min(select(-67502i, firstTrailingBit(-855i), any(vec2<bool>(false, false))), firstTrailingBit(_wgslsmith_sub_i32(-83i, 9238i))) << (_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, ~42559u, ~22064u, _wgslsmith_mult_u32(var_0.x, global0[_wgslsmith_index_u32(arg_2.x, 20u)])), vec4<u32>(abs(4294967295u), 15387u, max(arg_1.x, arg_1.x), 1905u)) % 32u), var_1.b.c.c, abs(~_wgslsmith_clamp_u32(66474u, ~6718u, firstTrailingBit(4826u))), ~vec3<u32>(var_0.x, 0u << (arg_2.x % 32u), var_1.b.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-11982i, func_1());
    var var_1 = 37776i;
    var var_2 = Struct_3(!select(select(!vec3<bool>(false, global3.x, global1[_wgslsmith_index_u32(11050u, 29u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], false, true), select(vec3<bool>(global1[_wgslsmith_index_u32(22352u, 29u)], false, global1[_wgslsmith_index_u32(59887u, 29u)]), vec3<bool>(global3.x, true, true), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 29u)])), !vec3<bool>(global3.x, global1[_wgslsmith_index_u32(34576u, 29u)], global3.x), vec3<bool>(true, false, false)), Struct_2(firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], 1u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64699u, 20u)], 20u)], 1u, 4294967295u))), 724f, func_2(-vec2<i32>(-1i, 2019i), ~vec4<u32>(40556u, global0[_wgslsmith_index_u32(1u, 20u)], 94601u, 1u), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44259u, 20u)], 20u)], 0u, 1u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16988u, 20u)], 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62422u, 20u)], 20u)], 20u)], 20u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25353u, 20u)], 20u)])), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 20257u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24578u, 20u)], 20u)], 20u)], 20u)], 20u)], 88808u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 426f)) * vec2<f32>(1000f, 1392f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-888f, 518f))), !global3.xz)), ~(~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 20u)]))), func_2(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.a, u_input.a)), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(3046u, 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2759u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], global0[_wgslsmith_index_u32(75996u, 20u)]), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39510u, 20u)], 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], 1u)), _wgslsmith_dot_vec3_u32(max(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5926u, 20u)], 20u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5315u, 20u)], 20u)])), countOneBits(vec3<u32>(26001u, 3474u, 0u))), ~(~0u), 51009u), vec4<u32>(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 1768u), ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40160u, 20u)], 20u)]), global0[_wgslsmith_index_u32(~(~7685u), 20u)], abs(4294967295u))), !select(!(!vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7377u, 20u)], 29u)], false, global3.x)), vec3<bool>(func_3(global3.x, Struct_3(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 29u)], false), Struct_2(vec3<u32>(global0[_wgslsmith_index_u32(3704u, 20u)], 27985u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)]), -789f, Struct_1(-5676i, 2147483647i, vec2<f32>(-1231f, 288f), global0[_wgslsmith_index_u32(1u, 20u)], vec3<u32>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], 4294967295u)), vec2<f32>(1000f, -862f), vec2<u32>(5344u, global0[_wgslsmith_index_u32(7261u, 20u)])), Struct_1(-45333i, -51014i, vec2<f32>(-532f, -164f), global0[_wgslsmith_index_u32(15274u, 20u)], vec3<u32>(18431u, global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)])), vec3<bool>(global1[_wgslsmith_index_u32(1u, 29u)], false, global3.x)), Struct_3(vec3<bool>(true, true, false), Struct_2(vec3<u32>(global0[_wgslsmith_index_u32(88504u, 20u)], 4294967295u, global0[_wgslsmith_index_u32(41738u, 20u)]), -1000f, Struct_1(-1i, u_input.a, vec2<f32>(-312f, 789f), 60387u, vec3<u32>(70728u, 34925u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)])), vec2<f32>(-153f, 870f), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 0u)), Struct_1(u_input.a, -17548i, vec2<f32>(-1522f, -2005f), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51691u, 20u)], 20u)], vec3<u32>(28681u, global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(27750u, 20u)])), vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 29u)], true)), Struct_3(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 29u)], false), Struct_2(vec3<u32>(global0[_wgslsmith_index_u32(0u, 20u)], 1u, 0u), 2161f, Struct_1(u_input.a, 0i, vec2<f32>(943f, 902f), 71360u, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15799u, 20u)], 20u)], 20u)], 20u)], 83698u)), vec2<f32>(-1516f, -2433f), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)])), Struct_1(-29617i, u_input.a, vec2<f32>(775f, -1000f), 10387u, vec3<u32>(97564u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 20u)], 20u)])), vec3<bool>(true, global3.x, true))), any(vec4<bool>(true, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 29u)], global1[_wgslsmith_index_u32(65725u, 29u)])), global3.x), select(select(vec3<bool>(global3.x, true, false), vec3<bool>(false, global3.x, global1[_wgslsmith_index_u32(1u, 29u)]), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], 29u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global3.x, true), vec3<bool>(false, true, global1[_wgslsmith_index_u32(79752u, 29u)]), vec3<bool>(global3.x, true, global1[_wgslsmith_index_u32(0u, 29u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6769u, 20u)], 20u)], 20u)], 20u)], 20u)] != global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46596u, 20u)], 20u)], 20u)])));
    var var_3 = -1i;
    global3 = select(vec3<bool>(true, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, 63697i, -18987i)), vec3<i32>(1i, 11684i, u_input.a)) == abs(var_2.c.a), !(!global1[_wgslsmith_index_u32(var_2.c.d, 29u)])), vec3<bool>(!(!global1[_wgslsmith_index_u32(1u, 29u)]), global1[_wgslsmith_index_u32(func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, var_2.c.a), vec2<i32>(-47306i, u_input.a)), ~vec4<u32>(global0[_wgslsmith_index_u32(22160u, 20u)], 19557u, 0u, global0[_wgslsmith_index_u32(var_2.b.c.d, 20u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.b.e.x, global0[_wgslsmith_index_u32(4294967295u, 20u)], 22144u, var_2.b.c.d), vec4<u32>(var_2.c.e.x, 16523u, 0u, global0[_wgslsmith_index_u32(0u, 20u)]), vec4<u32>(9437u, global0[_wgslsmith_index_u32(var_2.c.e.x, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], var_2.c.e.x))).d, 29u)] || (abs(39637i) < var_2.c.a), true), true);
    var var_4 = ~(abs(~select(vec4<i32>(0i, 21559i, var_2.b.c.a, u_input.a), vec4<i32>(var_2.c.a, var_2.c.a, 0i, var_2.b.c.b), global3.x)) >> (abs(select(~vec4<u32>(1u, global0[_wgslsmith_index_u32(45176u, 20u)], var_2.c.e.x, global0[_wgslsmith_index_u32(0u, 20u)]), vec4<u32>(var_2.b.c.d, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 0u), select(vec4<bool>(global1[_wgslsmith_index_u32(var_2.b.e.x, 29u)], true, global1[_wgslsmith_index_u32(70489u, 29u)], global1[_wgslsmith_index_u32(16887u, 29u)]), vec4<bool>(global3.x, false, false, false), global3.x))) % vec4<u32>(32u)));
    var_4 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_4.x, -46255i, func_1(), var_2.b.c.b << (1u % 32u)), vec4<i32>(~(-11357i), -11447i, _wgslsmith_dot_vec3_i32(var_4.wzw ^ vec3<i32>(var_4.x, var_2.b.c.b, -5441i), firstTrailingBit(vec3<i32>(-7921i, 1i, u_input.a))), -12697i));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.c.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b.d.x), _wgslsmith_f_op_f32(-723f - 1436f)))) + var_2.c.c.x), var_2.c.c.x, -1101f);
    var_2 = Struct_3(select(var_2.d, var_2.a, !any(!vec2<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5747u, 20u)], 29u)]))), Struct_2(var_2.c.e, _wgslsmith_div_f32(1265f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-313f + var_5.x) - var_5.x)), func_2(var_4.zw, ~max(vec4<u32>(global0[_wgslsmith_index_u32(var_2.c.d, 20u)], 4294967295u, global0[_wgslsmith_index_u32(var_2.b.c.e.x, 20u)], 1u), vec4<u32>(150070u, 51258u, 12989u, 1u)), vec4<u32>(min(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(var_2.c.d, 20u)]), 12489u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.b.e.x, 20u)], 20u)], 0u), var_2.c.d)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.d)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_5.yx))))), var_2.c.e.zy), Struct_1(var_4.x, abs(var_4.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c.c) * _wgslsmith_f_op_vec2_f32(var_5.xz - var_2.b.c.c)), global0[_wgslsmith_index_u32(var_2.b.c.e.x, 20u)], vec3<u32>(var_2.c.d, 1u, ~113286u)), !(!(!vec3<bool>(global3.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43187u, 20u)], 29u)], false))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_4.yzz, vec3<f32>(var_2.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2049f * var_2.c.c.x))) * var_5.x), -189f), var_4.x);
}

