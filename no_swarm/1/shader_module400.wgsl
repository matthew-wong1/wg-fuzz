struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(823f, -1i, vec2<u32>(1u, 1u), i32(-2147483648));

var<private> global1: Struct_1;

var<private> global2: array<bool, 25> = array<bool, 25>(true, false, false, true, true, false, true, false, true, false, true, true, false, true, true, false, true, true, false, true, false, true, false, true, false);

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global4: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(871f, countOneBits(reverseBits(-global1.d)), vec2<u32>(4294967295u & _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.x, 4294967295u, global4.a.c.x) & vec3<u32>(4294967295u, global4.c.c.x, global0.c.x), max(vec3<u32>(0u, 0u, global1.c.x), vec3<u32>(1u, global1.c.x, 4294967295u))), global1.c.x), global4.e);
    return var_0;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec3<u32>, arg_3: vec3<bool>) -> i32 {
    var var_0 = arg_3;
    let var_1 = -max(-_wgslsmith_mod_vec4_i32(vec4<i32>(global4.c.d, arg_1, arg_1, 1i), vec4<i32>(global0.d, 1i, 0i, 45987i)) >> ((select(vec4<u32>(arg_2.x, arg_0, 96902u, global0.c.x), vec4<u32>(3957u, 33329u, global0.c.x, global1.c.x), vec4<bool>(arg_3.x, true, false, global2[_wgslsmith_index_u32(4294967295u, 25u)])) >> (reverseBits(vec4<u32>(global4.a.c.x, 55831u, arg_2.x, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(-abs(vec4<i32>(1i, u_input.b, global1.d, 1643i)), -vec4<i32>(arg_1, -18410i, 55962i, global4.c.d) << (max(vec4<u32>(global4.c.c.x, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(global1.c.x, arg_2.x, arg_2.x, 24113u)) % vec4<u32>(32u))));
    let var_2 = ~_wgslsmith_sub_u32(u_input.a, 111274u);
    let var_3 = !vec2<bool>(_wgslsmith_div_i32(var_1.x, u_input.b) <= _wgslsmith_div_i32(u_input.c.x, var_1.x), -1945f <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1422f * global0.a))));
    let var_4 = global4.a;
    return min(_wgslsmith_mod_i32(-1i, -_wgslsmith_div_i32(_wgslsmith_add_i32(var_1.x, global4.a.b), max(2147483647i, global1.b))), var_1.x);
}

fn func_4(arg_0: i32) -> vec4<bool> {
    global3 = !select(select(!select(vec4<bool>(false, true, global4.b, true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 25u)], false, true, global3.x), global4.b), vec4<bool>(!global4.b, global4.b, true, true), global3.x), !select(!vec4<bool>(global4.b, global3.x, true, global3.x), !vec4<bool>(global4.b, true, true, false), global4.d.x == 203f), !(!global3.x) & any(select(vec2<bool>(true, global2[_wgslsmith_index_u32(global4.a.c.x, 25u)]), vec2<bool>(true, true), global2[_wgslsmith_index_u32(u_input.a, 25u)])));
    let var_0 = true | any(select(!select(vec4<bool>(global4.b, global3.x, global2[_wgslsmith_index_u32(global0.c.x, 25u)], true), vec4<bool>(false, global3.x, false, global2[_wgslsmith_index_u32(global0.c.x, 25u)]), global2[_wgslsmith_index_u32(global0.c.x, 25u)]), vec4<bool>(false, true, false | global4.b, any(global3.xxx)), !(4294967295u > global0.c.x)));
    let var_1 = max(arg_0, max(_wgslsmith_div_i32(13210i, reverseBits(2147483647i)), -12296i) ^ firstLeadingBit(func_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a, -1937f, global0.a))), vec2<i32>(-2147483647i, arg_0)).b));
    let var_2 = ~((min(_wgslsmith_div_vec4_u32(vec4<u32>(27240u, 82846u, global0.c.x, 42654u), vec4<u32>(5243u, global0.c.x, global1.c.x, global1.c.x)), _wgslsmith_div_vec4_u32(vec4<u32>(global4.a.c.x, 4294967295u, u_input.a, global1.c.x), vec4<u32>(4294967295u, 33578u, global1.c.x, 0u))) ^ abs(~vec4<u32>(1u, 23460u, 23199u, global1.c.x))) ^ (min(vec4<u32>(u_input.a, 19378u, global0.c.x, 23691u), ~vec4<u32>(u_input.a, 68863u, 54877u, u_input.a)) & _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global4.a.c.x, u_input.a, 0u, 0u), vec4<u32>(4294967295u, global4.c.c.x, 33523u, global0.c.x)), vec4<u32>(global4.a.c.x, global4.c.c.x, 4294967295u, 0u) | vec4<u32>(global1.c.x, 4294967295u, global1.c.x, 1u))));
    global0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - global0.a), -544f)), -2147483647i, abs(global4.c.c ^ global1.c), ~abs(8192i));
    return select(select(select(!(!vec4<bool>(true, global4.b, global2[_wgslsmith_index_u32(2624u, 25u)], global2[_wgslsmith_index_u32(0u, 25u)])), select(!vec4<bool>(false, global4.b, var_0, var_0), select(vec4<bool>(false, var_0, false, global2[_wgslsmith_index_u32(global4.a.c.x, 25u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(global1.c.x, 25u)], global2[_wgslsmith_index_u32(0u, 25u)], global3.x), false), global3.x && false), !any(global3.zxx)), vec4<bool>(!any(vec4<bool>(true, var_0, true, true)), true, var_0, false), ~global4.c.b > (func_2(vec3<f32>(global0.a, 194f, global0.a), vec2<i32>(arg_0, 0i)).b ^ 1i)), select(vec4<bool>(var_0, all(!vec4<bool>(true, global4.b, false, false)), !(global2[_wgslsmith_index_u32(var_2.x, 25u)] && global4.b), global3.x == !global3.x), vec4<bool>(global3.x, any(global3.yxy), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global4.c.c.x), 25u)], global2[_wgslsmith_index_u32(0u, 25u)]), vec4<bool>(all(!vec2<bool>(global4.b, global2[_wgslsmith_index_u32(global0.c.x, 25u)])), true, true, !select(false, true, false))), !global2[_wgslsmith_index_u32(global0.c.x, 25u)]);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<i32> {
    global1 = arg_2;
    let var_0 = 1u;
    let var_1 = Struct_2(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, -217f, -963f)))), vec3<f32>(968f, arg_2.a, -220f)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.b | 2147483647i, 0i), select(-vec2<i32>(-2147483647i, -21795i), u_input.c, select(vec2<bool>(true, global3.x), arg_3.yz, false)))), any(func_4(max(arg_2.d, func_3(49036u, u_input.b, vec3<u32>(global0.c.x, global0.c.x, arg_2.c.x), vec3<bool>(arg_0, arg_0, global4.b))))), func_2(arg_1, u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(325f * 639f), _wgslsmith_f_op_f32(ceil(global0.a))) * vec2<f32>(global1.a, global1.a))), 2147483647i);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(global4.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + arg_1.x))), _wgslsmith_sub_i32(func_3(var_0, -1i, vec3<u32>(global1.c.x, 27580u, var_0), vec3<bool>(global3.x, true, arg_0)), -global0.d) << (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, global0.c.x, 4294967295u, 21508u)), vec4<u32>(global1.c.x, 59513u, var_1.c.c.x, arg_2.c.x)) % 32u), _wgslsmith_clamp_vec2_u32(global0.c, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 36637u), vec2<u32>(48257u, arg_2.c.x)), global1.c), global1.b | -_wgslsmith_dot_vec3_i32(vec3<i32>(global4.c.d, arg_2.b, 0i), vec3<i32>(u_input.c.x, arg_2.d, var_1.c.d))), func_4(-1i).x, var_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.xz)), ~var_1.c.d);
    let var_3 = global4.e | global0.b;
    return max(vec4<i32>(global0.b, u_input.b, -16097i >> (0u % 32u), ~(-var_1.a.b)) | _wgslsmith_mod_vec4_i32(select(vec4<i32>(var_1.a.b, -59605i, var_2.a.d, -2147483647i), vec4<i32>(-24436i, u_input.b, var_3, 1i), vec4<bool>(arg_3.x, arg_0, true, var_1.b)) ^ firstTrailingBit(vec4<i32>(-12366i, 2147483647i, -24889i, -37102i)), ~(-vec4<i32>(-2147483647i, var_3, global1.d, 0i))), vec4<i32>(_wgslsmith_clamp_i32(2147483647i, i32(-1i) * -1i, arg_2.d), -_wgslsmith_mult_i32(0i, ~global4.a.d), var_1.e, u_input.c.x));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<u32> {
    let var_0 = ~vec3<u32>(_wgslsmith_mult_u32(func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1113f, global0.a, -776f), vec3<f32>(-1000f, global0.a, arg_1.a))), -arg_2.zy).c.x, abs(~68573u)), ~(20377u | global4.a.c.x) | global4.c.c.x, 0u);
    global1 = Struct_1(_wgslsmith_f_op_f32(step(1823f, _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1257f)))))), -36656i, countOneBits(vec2<u32>(min(~arg_0.x, countOneBits(1u)), ~u_input.a ^ (var_0.x ^ global0.c.x))), ~(-3454i));
    global2 = array<bool, 25>();
    let var_1 = Struct_1(1492f, global4.c.b, countOneBits(vec2<u32>(_wgslsmith_div_u32(global1.c.x, arg_1.c.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_1.c.x, 0u), _wgslsmith_mult_u32(20136u, arg_0.x)))), -arg_2.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-412f, 1008f)), 1f) + _wgslsmith_f_op_f32(trunc(func_2(vec3<f32>(global1.a, 557f, arg_1.a), vec2<i32>(-1i, -35480i)).a))), arg_1.a, arg_1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(674f, -689f, global4.d.x))) - vec3<f32>(global0.a, 1006f, global4.d.x))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global0.a, global0.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, global1.a, -393f) * vec3<f32>(global0.a, -2475f, arg_1.a)))))), global2[_wgslsmith_index_u32(0u, 25u)]));
    return _wgslsmith_mult_vec3_u32(var_0, arg_0.zzw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(reverseBits(~select(~vec4<u32>(global1.c.x, global1.c.x, 0u, 23128u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, global4.c.c.x, 211u), vec4<u32>(28970u, u_input.a, 0u, 69827u)), !global3.x)), global4.c, _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(func_1(global3.x & global3.x, vec3<f32>(-509f, global4.c.a, 1201f), global4.a, select(vec3<bool>(false, global2[_wgslsmith_index_u32(55509u, 25u)], global4.b), vec3<bool>(global4.b, false, global3.x), global3.zzy)), vec4<i32>(i32(-1i) * -3998i, _wgslsmith_div_i32(global1.d, -1i), -2147483647i, min(2147483647i, global1.d))), _wgslsmith_div_vec4_i32(~(-vec4<i32>(23681i, global4.c.d, -1i, -2147483647i)), firstLeadingBit(vec4<i32>(u_input.c.x, 1i, global4.a.b, 0i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(max(~vec4<u32>(global1.c.x, global1.c.x, global1.c.x, global4.c.c.x), vec4<u32>(1u, var_0.x, 4294967295u, 156311u) | vec4<u32>(4294967295u, 0u, global0.c.x, var_0.x)) >> (~vec4<u32>(4294967295u, 9301u, 25591u, global0.c.x) % vec4<u32>(32u)), vec4<u32>(35361u, _wgslsmith_clamp_u32(9834u, ~23119u, ~u_input.a), u_input.a, _wgslsmith_add_u32(~1u, global4.c.c.x ^ 4294967295u))), vec2<f32>(692f, _wgslsmith_div_f32(func_2(vec3<f32>(global0.a, 1346f, -1563f), vec2<i32>(u_input.b, 14780i) & u_input.c).a, global0.a)), u_input.c);
}

