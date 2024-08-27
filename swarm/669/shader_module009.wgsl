struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_3,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_2;

var<private> global2: f32 = -239f;

var<private> global3: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(vec3<i32>(-17530i, 8012i, -38320i))), Struct_2(Struct_1(vec3<i32>(29374i, 1i, -18886i))), Struct_2(Struct_1(vec3<i32>(4798i, 0i, 1i))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 1i))));

var<private> global4: Struct_1 = Struct_1(vec3<i32>(55871i, i32(-2147483648), 14510i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    global3 = array<Struct_2, 4>();
    let var_0 = ~(~_wgslsmith_clamp_vec2_u32(arg_1.a.wx, ~vec2<u32>(1u, 1u), reverseBits(vec2<u32>(76239u, 0u)) >> (vec2<u32>(37385u, u_input.a) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -947f), _wgslsmith_f_op_f32(1f + global0.b))), 1f));
    global0 = Struct_5(vec4<bool>(42639u != var_0.x, 1148f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0.b)))), true, false), _wgslsmith_div_f32(global0.b, global0.b));
    var var_2 = Struct_5(vec4<bool>(any(select(global0.a.ww, global0.a.zz, global0.a.x)), all(vec3<bool>(global0.a.x != global0.a.x, select(global0.a.x, global0.a.x, false), true)), any(vec2<bool>(true, global0.a.x)), global0.a.x), 525f);
    return global4.a.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec2_i32(-global4.a.zz, vec2<i32>(-(firstTrailingBit(27660i) & _wgslsmith_add_i32(-12641i, global4.a.x)), func_3(global1.a, Struct_3(~vec4<u32>(41639u, 890u, arg_1.x, arg_1.x)))));
    let var_1 = min(~arg_1.x ^ ~arg_1.x, _wgslsmith_add_u32(45375u, 1u | ~_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(1u, 26823u))));
    var var_2 = _wgslsmith_mult_u32(1u, 1u);
    global2 = -966f;
    var var_3 = global1.a.a.x;
    return ~abs(vec2<u32>(~max(32221u, 4294967295u), ~4294967295u));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: f32, arg_3: bool) -> bool {
    var var_0 = 0i;
    global3 = array<Struct_2, 4>();
    let var_1 = vec3<f32>(340f, 344f, arg_2);
    global1 = global3[_wgslsmith_index_u32(u_input.a, 4u)];
    let var_2 = ~_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-36292i, global4.a.x, global1.a.a.x, u_input.d)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(5278u, 63477u, arg_0.x, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(94098u, 1u, 40930u, arg_0.x), vec4<u32>(0u, 13087u, arg_0.x, 960u))) % vec4<u32>(32u)), u_input.b);
    return true;
}

fn func_1() -> Struct_3 {
    global3 = array<Struct_2, 4>();
    let var_0 = vec3<bool>(any(vec2<bool>(true, true)), global0.a.x, func_4(select(abs(vec2<u32>(27338u, 1u)), func_2(global1.a.a, vec2<u32>(11804u, 1u), -1618i), global0.a.wz), global0.a.x, global0.b, (u_input.d << (u_input.c % 32u)) != _wgslsmith_mult_i32(global1.a.a.x, global1.a.a.x)) | ((firstTrailingBit(u_input.b.x) > global4.a.x) != false));
    var var_1 = _wgslsmith_sub_i32(abs(-2147483647i), _wgslsmith_mult_i32(~34056i, ~(-1i)) >> (select(~15506u, _wgslsmith_div_u32(firstLeadingBit(4294967295u), u_input.a), false) % 32u));
    return Struct_3(~(~(max(vec4<u32>(u_input.a, u_input.c, u_input.a, 7460u), vec4<u32>(u_input.c, u_input.c, 0u, 1u)) << (firstLeadingBit(vec4<u32>(u_input.c, u_input.a, 3757u, 4294967295u)) % vec4<u32>(32u)))));
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: vec3<i32>, arg_3: bool) -> Struct_4 {
    let var_0 = _wgslsmith_mult_vec3_i32(select(vec3<i32>(-u_input.d, u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.a.x, 0i, arg_2.x), global1.a.a)), min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, -53948i, 0i), u_input.b.wzz), global4.a), !select(global0.a.wyx, global0.a.xzy, true)) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0.e.a.x, 79511u) << (vec3<u32>(arg_0.e.a.x, u_input.a, 89276u) % vec3<u32>(32u)), arg_0.e.a.xwz), firstLeadingBit(~arg_0.e.a.x), 1u) % vec3<u32>(32u)), -_wgslsmith_div_vec3_i32(global4.a >> (~arg_0.e.a.wzx % vec3<u32>(32u)), arg_2));
    global1 = global3[_wgslsmith_index_u32(~u_input.c, 4u)];
    global2 = arg_0.a;
    global0 = Struct_5(select(!vec4<bool>(all(vec3<bool>(arg_0.b, global0.a.x, true)), func_4(arg_0.c.a.yx, false, 1353f, true), any(vec2<bool>(global0.a.x, arg_3)), any(vec2<bool>(false, arg_3))), global0.a, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), global0.b)));
    let var_1 = select(24637u, ~_wgslsmith_add_u32(~u_input.c, 4294967295u), false && !arg_1) | _wgslsmith_div_u32(_wgslsmith_sub_u32(max(u_input.a, firstTrailingBit(1u)), 87782u), _wgslsmith_dot_vec2_u32(vec2<u32>(21818u, u_input.a) & select(vec2<u32>(u_input.a, arg_0.e.a.x), arg_0.e.a.yy, arg_0.d), arg_0.e.a.yy));
    return Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1286f, -3202f)))), -236f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(200f))), func_1(), false, func_1());
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1120f))), 2318f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - -1953f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_0.a))))), -1133f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, -348f, global0.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1548f, -1471f, global0.b, global0.b)), vec4<f32>(arg_0.a, -785f, global0.b, 564f))))), arg_0.b));
    let var_1 = u_input.d <= _wgslsmith_mod_i32(func_3(arg_2, arg_0.e), max(arg_1, arg_1));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1120f, var_2, 574f, 120f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1311f, -648f, global0.b, var_0.x), vec4<f32>(global0.b, global0.b, var_0.x, -1260f)))) - vec4<f32>(_wgslsmith_f_op_f32(312f + 822f), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(select(var_2, global0.b, arg_0.d)), _wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(305f, -566f, var_0.x, var_0.x) - vec4<f32>(-788f, 1044f, 1515f, var_2)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 798f, 600f, -243f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1009f, -1056f, 1000f, -396f) * vec4<f32>(var_0.x, 707f, 880f, 996f)))), global0.a)));
    var var_3 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1094f - _wgslsmith_f_op_f32(max(var_0.x, -452f)))), -561f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_5(Struct_4(_wgslsmith_f_op_f32(-global0.b), all(global0.a), func_1(), true, Struct_3(vec4<u32>(12416u, 4294967295u, 34434u, u_input.a))), true, _wgslsmith_div_vec3_i32(abs(vec3<i32>(-1i, global4.a.x, global4.a.x)), vec3<i32>(global4.a.x, 35436i, -2927i)), global4.a.x <= reverseBits(-15193i)), firstLeadingBit(0i), Struct_1(vec3<i32>(-24320i, global1.a.a.x, -1i) >> ((vec3<u32>(1u, u_input.a, u_input.c) >> (vec3<u32>(u_input.a, 51428u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))))));
    global2 = -905f;
    var var_0 = -1567i;
    let var_1 = ~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(15253u, 1u, u_input.a)) >> ((~vec3<u32>(4294967295u, u_input.c, 34347u) & func_5(Struct_4(global0.b, global0.a.x, Struct_3(vec4<u32>(1u, u_input.c, u_input.a, 29875u)), global0.a.x, Struct_3(vec4<u32>(u_input.c, 62153u, u_input.c, 14392u))), false, vec3<i32>(20477i, -1i, -57464i), true).e.a.yxx) % vec3<u32>(32u)), ~vec3<u32>(_wgslsmith_add_u32(4294967295u, u_input.c), u_input.a << (34491u % 32u), _wgslsmith_clamp_u32(1u, 1u, u_input.a)));
    global2 = _wgslsmith_f_op_f32(global0.b * global0.b);
    let var_2 = Struct_5(!global0.a, _wgslsmith_f_op_f32(sign(125f)));
    global4 = Struct_1(global1.a.a ^ vec3<i32>(global1.a.a.x, global1.a.a.x, abs(countOneBits(-18334i))));
    global1 = global3[_wgslsmith_index_u32(var_1.x | firstLeadingBit(_wgslsmith_mod_u32(~(~50220u), u_input.a)), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xy, firstLeadingBit(_wgslsmith_sub_i32(-2433i, _wgslsmith_mult_i32(global4.a.x, 0i))) >> (u_input.a % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-733f, _wgslsmith_f_op_f32(-func_5(Struct_4(-1095f, global0.a.x, Struct_3(vec4<u32>(4294967295u, 22387u, 103922u, 4294967295u)), global0.a.x, Struct_3(vec4<u32>(13837u, 3748u, 4294967295u, var_1.x))), false, vec3<i32>(global1.a.a.x, global1.a.a.x, -20986i), var_2.a.x).a), global0.b, -1259f)));
}

