struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global1: array<u32, 27> = array<u32, 27>(35801u, 0u, 44014u, 1u, 0u, 14620u, 4294967295u, 4294967295u, 1u, 0u, 23601u, 29653u, 0u, 33105u, 1u, 82879u, 4294967295u, 1u, 9823u, 17001u, 24373u, 11913u, 24009u, 65749u, 14710u, 28163u, 61473u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -176f), ~u_input.c.zy, !select(arg_0.b.c, arg_0.b.c, arg_0.b.c), select(~max(arg_0.a.d, vec3<u32>(55094u, 0u, 27435u)), abs(firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(arg_0.a.d.x, 27u)], 0u, arg_0.b.b.x))), vec3<bool>(false, true, arg_0.a.c.x))), Struct_1(_wgslsmith_div_f32(arg_0.a.a, arg_0.a.a), ~reverseBits(~u_input.c.yx), vec4<bool>(any(vec4<bool>(true, true, true, true)), false, all(select(vec4<bool>(false, true, arg_0.a.c.x, global0.x), vec4<bool>(global0.x, true, false, global0.x), true)), select(any(vec2<bool>(true, arg_0.b.c.x)), true, global0.x)), firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(13845u, 0u, 78322u), vec3<u32>(u_input.d.x, global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]), u_input.d.wyx)))));
    global0 = !select(!select(arg_0.a.c, var_0.b.c, arg_0.a.c), vec4<bool>(false, !arg_0.b.c.x, any(var_0.a.c.ywy) | all(var_0.a.c), arg_0.a.c.x), !any(global0.zy));
    let var_1 = Struct_1(1725f, vec2<u32>(reverseBits(abs(var_0.b.b.x)), _wgslsmith_sub_u32(~var_0.a.b.x, firstTrailingBit(u_input.d.x))) | vec2<u32>(arg_0.b.d.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 4294967295u), ~u_input.a)), vec4<bool>(true, true, !global0.x, false), ~firstTrailingBit(u_input.d.zyy));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.a, arg_0.a.a)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_0.a.a, -455f) * vec3<f32>(var_0.b.a, 145f, var_0.a.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2031f, var_0.b.a, arg_0.b.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.a, 199f, 105f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(392f, 403f, var_0.a.a) * vec3<f32>(var_1.a, 1482f, var_0.a.a)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a, 119f, -227f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a, var_0.b.a, -1463f)))) - vec3<f32>(-1000f, _wgslsmith_f_op_f32(step(1113f, 149f)), _wgslsmith_f_op_f32(max(var_0.a.a, var_1.a))))));
    global0 = select(vec4<bool>(true, true, var_1.c.x, var_0.b.c.x), vec4<bool>(any(var_0.a.c.zxw), -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, -2147483647i, 24937i), vec4<i32>(0i, 2147483647i, 1i, -14569i)) >= 2147483647i, false, true), global0.x && all(select(global0.xw, !arg_0.a.c.zx, arg_0.b.b.x == 1u)));
    return i32(-1i) * -20986i;
}

fn func_2(arg_0: f32, arg_1: bool) -> vec3<f32> {
    global0 = vec4<bool>(func_3(Struct_2(Struct_1(arg_0, vec2<u32>(global1[_wgslsmith_index_u32(6328u, 27u)], u_input.b), vec4<bool>(false, global0.x, global0.x, false), u_input.c), Struct_1(arg_0, u_input.c.zx, vec4<bool>(global0.x, false, true, global0.x), u_input.d.xzx))) >= _wgslsmith_div_i32(~(i32(-1i) * -1i), 1i), all(vec4<bool>(true, !arg_1, all(select(global0.wx, vec2<bool>(global0.x, false), true)), !(arg_1 == arg_1))), _wgslsmith_dot_vec4_i32(-vec4<i32>(-56580i, -33266i, -38903i, -43797i), vec4<i32>(max(-1i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -38094i), vec2<i32>(-1i, 0i)), reverseBits(66147i), func_3(Struct_2(Struct_1(2452f, u_input.c.yx, vec4<bool>(arg_1, global0.x, false, true), vec3<u32>(4294967295u, 14940u, global1[_wgslsmith_index_u32(u_input.a, 27u)])), Struct_1(arg_0, u_input.d.xw, vec4<bool>(global0.x, true, false, false), vec3<u32>(u_input.b, 29096u, 0u)))))) >= _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-9608i, -2147483647i, 2147483647i, -26669i)), vec4<i32>(_wgslsmith_add_i32(1i, 39893i), _wgslsmith_dot_vec2_i32(vec2<i32>(90465i, -40910i), vec2<i32>(-15999i, 21640i)), ~0i, 5411i)), arg_1);
    global0 = vec4<bool>(all(!vec3<bool>(!arg_1, !global0.x, arg_1)), any(vec4<bool>(arg_1, true, !global0.x && !global0.x, any(select(global0.xzw, vec3<bool>(true, true, global0.x), global0.x)))), !any(vec4<bool>(any(vec2<bool>(global0.x, arg_1)), any(vec2<bool>(arg_1, true)), true, arg_1)), true);
    global0 = select(select(!vec4<bool>(global0.x, -289f < arg_0, true, arg_1), select(vec4<bool>(true, global0.x, arg_1 | false, true), vec4<bool>(arg_1, true, !global0.x, false), any(select(vec2<bool>(false, global0.x), global0.zz, false))), all(select(vec2<bool>(true, true), vec2<bool>(arg_1, true), arg_1))), vec4<bool>(false, all(select(vec3<bool>(false, global0.x, false), global0.zzx, global0.yxw)) & global0.x, global0.x, global0.x & true), true);
    var var_0 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(floor(-648f)));
    var var_1 = (abs(reverseBits(firstTrailingBit(vec2<i32>(20540i, 18015i)))) | countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-14802i, -58545i)))) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~25507u, ~406u, u_input.d.x | global1[_wgslsmith_index_u32(u_input.c.x, 27u)], 4294967295u), select(reverseBits(u_input.d), firstTrailingBit(u_input.d), select(vec4<bool>(false, true, arg_1, false), vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(arg_1, true, false, true)))), u_input.d.x) % vec2<u32>(32u));
    return vec3<f32>(-149f, _wgslsmith_f_op_f32(sign(-1051f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-304f * 438f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_2(arg_1, arg_1);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1547f, 973f, 452f, arg_1.a) + vec4<f32>(-1329f, -435f, var_0.b.a, arg_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1133f, 317f, arg_3, 757f) - vec4<f32>(arg_0.x, 140f, -609f, 1355f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1570f, -1000f, 1420f, arg_1.a))))));
    let var_2 = _wgslsmith_mult_vec2_i32(~_wgslsmith_mod_vec2_i32(arg_2, arg_2), vec2<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(arg_2.x, 1i, arg_2.x, -18134i), vec4<i32>(arg_2.x, 44062i, 2147483647i, -34815i)), vec4<i32>(1i, -2147i, arg_2.x, arg_2.x) ^ (vec4<i32>(arg_2.x, arg_2.x, arg_2.x, 9377i) >> (vec4<u32>(4294967295u, 37316u, 24625u, var_0.b.b.x) % vec4<u32>(32u)))), arg_2.x));
    global1 = array<u32, 27>();
    var_0 = Struct_2(Struct_1(arg_0.x, firstLeadingBit(vec2<u32>(var_0.a.d.x, var_0.a.d.x)), vec4<bool>(global0.x || all(vec4<bool>(arg_1.c.x, true, var_0.b.c.x, false)), any(select(vec2<bool>(true, true), vec2<bool>(var_0.b.c.x, var_0.a.c.x), vec2<bool>(true, arg_1.c.x))), true, select(true, arg_2.x <= 2147483647i, true)), _wgslsmith_mult_vec3_u32(var_0.a.d, vec3<u32>(~u_input.b, countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.b.x, 27u)], 27u)]), 1u))), var_0.b);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -136f), var_0.a.b, vec4<bool>(global0.x, global0.x, any(vec4<bool>(true, true, true, true)), true), var_0.a.d), Struct_1(_wgslsmith_f_op_f32(sign(878f)), ~vec2<u32>(_wgslsmith_div_u32(1u, var_0.a.d.x), 0u), arg_1.c, var_0.b.d));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> bool {
    var var_0 = vec4<bool>(true, !(global0.x != false), arg_2.a.c.x, global0.x);
    global1 = array<u32, 27>();
    var var_1 = arg_2;
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -672f), var_1.a.c.x)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-214f, 1238f, arg_1), vec3<f32>(250f, -103f, arg_1)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1653f, -906f, -187f)))))), arg_2.a, vec2<i32>(2147483647i, _wgslsmith_clamp_i32(-(i32(-1i) * -22256i), 0i, -16987i)), arg_1);
    var var_3 = true;
    return any(arg_2.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 27>();
    global0 = select(vec4<bool>(global0.x, false, select(func_1(Struct_2(Struct_1(1957f, u_input.c.zz, vec4<bool>(global0.x, global0.x, true, true), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.b, 27u)], u_input.b)), Struct_1(414f, vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(56093u, 27u)]), vec4<bool>(global0.x, global0.x, global0.x, false), vec3<u32>(global1[_wgslsmith_index_u32(27942u, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)], u_input.a))), 465f, Struct_2(Struct_1(-1181f, vec2<u32>(1u, 29142u), vec4<bool>(global0.x, global0.x, true, false), vec3<u32>(u_input.d.x, global1[_wgslsmith_index_u32(u_input.d.x, 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)])), Struct_1(-402f, u_input.c.zx, vec4<bool>(global0.x, false, global0.x, global0.x), u_input.d.xwy))), global0.x, !global0.x) != any(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)), global0.x), vec4<bool>(true, false, true, global0.x), func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-356f, -934f)) - 737f), 372f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) - _wgslsmith_f_op_f32(f32(-1f) * -198f))), Struct_1(1057f, ~max(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], u_input.b)), select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, true, false, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x)), func_4(vec3<f32>(1813f, -496f, 1382f), Struct_1(437f, u_input.d.wz, vec4<bool>(global0.x, false, false, global0.x), u_input.d.wwy), vec2<i32>(2147483647i, 0i), 1332f).b.c, true), vec3<u32>(max(44932u, global1[_wgslsmith_index_u32(4294967295u, 27u)]), abs(0u), 26737u)), reverseBits(vec2<i32>(~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(30142i, 55762i), vec2<i32>(-1i, -22444i)))), _wgslsmith_f_op_f32(-1f)).b.c.x);
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1732f, 430f, 882f), vec3<f32>(-938f, -1000f, 1417f)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1243f * _wgslsmith_f_op_f32(ceil(791f)))), u_input.d.wz, vec4<bool>(any(vec3<bool>(false, global0.x, global0.x)), false, false, global0.x), vec3<u32>(global1[_wgslsmith_index_u32(88293u, 27u)], ~firstTrailingBit(15204u), u_input.b)), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(-39360i, -2147483647i)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(2997i, -1i), ~vec2<i32>(25039i, -24918i), ~vec2<i32>(-31867i, 43186i)) >> (_wgslsmith_mult_vec2_u32(u_input.d.xw, select(vec2<u32>(128158u, 9486u), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19389u, 27u)], 27u)]), false)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1811f, -1434f)) * _wgslsmith_f_op_f32(step(541f, 253f))))));
    global1 = array<u32, 27>();
    var var_1 = select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(35201i, 1i), vec2<i32>(-17920i, 5445i))), -firstLeadingBit(-2147483647i)), ~1i, abs(i32(-1i) * -1i)), any(select(!(!var_0.b.c.wz), var_0.a.c.wx, !(!global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0.a.a, var_0.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)) + var_0.a.a), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(3889u, abs(23065u), var_0.a.b.x), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(33981u, u_input.c.x, global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<u32>(4294967295u, 4294967295u, 4294967295u), global0.zwy), vec3<u32>(global1[_wgslsmith_index_u32(u_input.d.x, 27u)], global1[_wgslsmith_index_u32(47059u, 27u)], 16872u), vec3<u32>(9827u, 4294967295u, 4294967295u))), 58784u, u_input.c.x), _wgslsmith_div_i32(-6561i, var_1.x) & -(~var_1.x));
}

