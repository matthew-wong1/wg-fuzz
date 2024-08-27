struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: array<Struct_1, 12>;

var<private> global2: f32 = 1000f;

var<private> global3: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-808f, 872f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    return any(vec4<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~arg_1.c, ~u_input.c, _wgslsmith_add_u32(42191u, 53644u)), 19u)], true, any(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_3.c, 19u)], global0[_wgslsmith_index_u32(arg_3.c, 19u)], false, false), !vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(95843u, 19u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_3.c, 19u)], global0[_wgslsmith_index_u32(52504u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], true))), any(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_3.c, 19u)], global0[_wgslsmith_index_u32(arg_3.c, 19u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(74118u, 19u)], global0[_wgslsmith_index_u32(u_input.c, 19u)]), global0[_wgslsmith_index_u32(u_input.c, 19u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 19u)], true)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = arg_1.a;
    var var_1 = arg_2;
    global1 = array<Struct_1, 12>();
    let var_2 = 1u;
    var var_3 = select(any(vec4<bool>(true, func_3(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.c.x, -250f, 259f, arg_1.b.b.x), vec4<f32>(1877f, var_0.b.x, var_0.c.x, 478f)), Struct_3(global3[_wgslsmith_index_u32(var_2, 1u)], arg_1, 1u, vec4<i32>(u_input.a.x, arg_3, 0i, var_0.d.x), global1[_wgslsmith_index_u32(0u, 12u)]), Struct_2(Struct_1(var_0.d.x, vec2<f32>(381f, arg_1.a.c.x), vec3<f32>(arg_1.a.b.x, 942f, -774f), vec3<i32>(arg_3, -24354i, 61752i)), Struct_1(arg_3, arg_1.b.c.xx, vec3<f32>(-1112f, arg_1.b.b.x, var_0.b.x), vec3<i32>(u_input.d.x, -2147483647i, arg_3))), Struct_3(vec2<f32>(arg_1.a.b.x, 1964f), Struct_2(Struct_1(var_0.a, vec2<f32>(arg_1.a.b.x, var_0.c.x), arg_1.a.c, vec3<i32>(-2147483647i, 11460i, arg_3)), Struct_1(-44122i, var_0.b, vec3<f32>(-1095f, arg_1.a.c.x, 233f), vec3<i32>(u_input.b.x, -49098i, 1i))), 1u, vec4<i32>(-25635i, 33046i, -20910i, -30669i), Struct_1(u_input.d.x, arg_1.b.b, vec3<f32>(-368f, -919f, arg_1.b.b.x), var_0.d))), false, arg_0.x)), arg_0.x, (~_wgslsmith_add_i32(arg_3, arg_3) >> ((countOneBits(arg_2) & u_input.c) % 32u)) == ~(-_wgslsmith_div_i32(44006i, arg_3)));
    return Struct_1(-_wgslsmith_sub_i32(-(-1i ^ var_0.d.x), ~_wgslsmith_mult_i32(110342i, 17859i)), var_0.c.yx, arg_1.b.c, firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.a.d.x, 38044i, u_input.d.x), _wgslsmith_div_vec3_i32(select(vec3<i32>(0i, arg_3, 2147483647i), u_input.a, true), var_0.d & arg_1.a.d))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = ~arg_0.e.a;
    let var_1 = Struct_2(Struct_1(u_input.b.x, global3[_wgslsmith_index_u32(46140u, 1u)], _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.c, arg_1.c) * vec3<f32>(arg_0.b.a.b.x, 1510f, -1000f)), vec3<f32>(587f, 1732f, _wgslsmith_f_op_f32(max(arg_1.c.x, arg_1.c.x))), select(select(vec3<bool>(global0[_wgslsmith_index_u32(5800u, 19u)], true, global0[_wgslsmith_index_u32(u_input.c, 19u)]), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(arg_0.c, 19u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(arg_0.c, 19u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(arg_0.c, 19u)])), false))), ~arg_0.b.a.d), func_2(!vec4<bool>(true, any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 19u)], false, false)), arg_0.c < u_input.c, global0[_wgslsmith_index_u32(reverseBits(u_input.c), 19u)]), arg_0.b, u_input.c, 14371i >> (_wgslsmith_add_u32(arg_0.c | 0u, arg_0.c) % 32u)));
    var var_2 = 700f > _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_1.c.x)), _wgslsmith_f_op_f32(arg_1.b.x + -810f))), arg_0.a.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1230f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_1.a.c.x))))), _wgslsmith_f_op_vec2_f32(trunc(arg_0.e.c.xz)))) + vec2<f32>(arg_0.e.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * arg_0.b.b.b.x)))));
    global1 = array<Struct_1, 12>();
    return _wgslsmith_f_op_vec2_f32(var_3 + _wgslsmith_f_op_vec2_f32(var_1.a.c.yy + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3[_wgslsmith_index_u32(arg_0.c, 1u)], vec2<f32>(arg_0.b.b.c.x, var_1.a.b.x), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.c, 19u)], true))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(-416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(744f - 1734f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_3(global3[_wgslsmith_index_u32(u_input.c, 1u)], Struct_2(global1[_wgslsmith_index_u32(u_input.c, 12u)], Struct_1(0i, vec2<f32>(-1000f, -1406f), vec3<f32>(1585f, -1274f, -2188f), u_input.d)), u_input.c, vec4<i32>(-5164i, 2147483647i, -85728i, u_input.a.x), Struct_1(-20317i, vec2<f32>(665f, 651f), vec3<f32>(2053f, 1101f, 564f), u_input.a)), Struct_1(u_input.b.x, vec2<f32>(-301f, -601f), vec3<f32>(-671f, -1000f, -226f), u_input.d))) - global3[_wgslsmith_index_u32(~u_input.c, 1u)]) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(1u, 1u)]) * vec2<f32>(239f, 1768f)))), Struct_2(Struct_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.d.x), ~(-1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1097f, -652f) * vec2<f32>(-1776f, -2483f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-773f, -1000f) + global3[_wgslsmith_index_u32(4294967295u, 1u)])), vec3<f32>(1f, 1f, 1f), u_input.d), Struct_1(min(~u_input.d.x, _wgslsmith_div_i32(1i, 2147483647i)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c) | vec3<u32>(47721u, u_input.c, u_input.c), vec3<u32>(u_input.c, 4294967295u, 4294967295u)), 1u)], _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(856f, -479f, -1355f), vec3<f32>(691f, 724f, 1598f)))), abs(u_input.a))), firstLeadingBit(reverseBits(~_wgslsmith_mult_u32(u_input.c, u_input.c))), vec4<i32>(firstTrailingBit(countOneBits(u_input.d.x)), min(min(u_input.d.x, u_input.d.x), u_input.d.x), u_input.b.x, ~(-20024i)), func_2(select(vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(84034u, 19u)], true, global0[_wgslsmith_index_u32(44822u, 19u)])), true, global0[_wgslsmith_index_u32(u_input.c, 19u)], true), !select(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(1u, 19u)]), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(global0[_wgslsmith_index_u32(16803u, 19u)], false, true, global0[_wgslsmith_index_u32(u_input.c, 19u)])), _wgslsmith_div_f32(131f, -1266f) < _wgslsmith_f_op_f32(floor(-238f))), Struct_2(func_2(select(vec4<bool>(false, global0[_wgslsmith_index_u32(836u, 19u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(100340u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.c, 19u)]), global0[_wgslsmith_index_u32(0u, 19u)]), Struct_2(Struct_1(-71100i, global3[_wgslsmith_index_u32(39404u, 1u)], vec3<f32>(433f, 949f, -2035f), vec3<i32>(-28507i, u_input.a.x, 63819i)), Struct_1(-67782i, vec2<f32>(775f, 104f), vec3<f32>(-1000f, -752f, -460f), u_input.d)), abs(1u), u_input.a.x), func_2(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 19u)], false, global0[_wgslsmith_index_u32(u_input.c, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]), Struct_2(Struct_1(2147483647i, vec2<f32>(281f, -240f), vec3<f32>(-1324f, 1382f, 1050f), u_input.a), global1[_wgslsmith_index_u32(u_input.c, 12u)]), 1u, u_input.d.x)), 0u, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, 1i), u_input.b), vec2<i32>(1i, 0i))));
    global1 = array<Struct_1, 12>();
    let var_1 = var_0.e.b.x;
    var var_2 = _wgslsmith_f_op_f32(ceil(var_0.e.b.x));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(792f, _wgslsmith_f_op_f32(f32(-1f) * -2261f), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, u_input.c, var_0.c, var_0.c), vec4<u32>(26417u, u_input.c, 4294967295u, 37528u)) >= 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(-func_2(vec4<bool>(global0[_wgslsmith_index_u32(1244u, 19u)], global0[_wgslsmith_index_u32(u_input.c, 19u)], false, false), Struct_2(global1[_wgslsmith_index_u32(var_0.c, 12u)], Struct_1(var_0.b.a.d.x, vec2<f32>(320f, var_0.e.c.x), vec3<f32>(788f, var_0.a.x, var_0.e.b.x), u_input.d)), countOneBits(4294967295u), _wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, -2147483647i))).c.x)), 1f);
    var var_4 = u_input.c;
    let var_5 = min(~vec4<u32>(var_0.c, abs(0u | u_input.c), _wgslsmith_clamp_u32(~28670u, u_input.c, ~21297u), ~var_0.c), ~vec4<u32>(u_input.c, 72028u, ~_wgslsmith_add_u32(0u, 4294967295u), 0u));
    global3 = array<vec2<f32>, 1>();
    var_0 = Struct_3(vec2<f32>(var_0.e.b.x, _wgslsmith_f_op_f32(step(var_0.a.x, -120f))), var_0.b, 1u, vec4<i32>(var_0.e.d.x, -7029i, -12111i, var_0.d.x), func_2(!select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_5.x, 19u)], global0[_wgslsmith_index_u32(var_0.c, 19u)], true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_5.x, 19u)], false), global0[_wgslsmith_index_u32(var_0.c, 19u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(16346u, 19u)], false), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)])), Struct_2(var_0.e, func_2(select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 19u)], true), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(0u, 19u)]), true), Struct_2(Struct_1(1i, vec2<f32>(-270f, var_3.x), vec3<f32>(var_3.x, var_0.a.x, -216f), vec3<i32>(u_input.d.x, -18442i, var_0.b.b.d.x)), global1[_wgslsmith_index_u32(82100u, 12u)]), firstTrailingBit(u_input.c), u_input.d.x << (var_0.c % 32u))), u_input.c, -var_0.b.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-401f, -1914f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1080f - var_3.x))))));
}

