struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(30565u, true, true, vec4<bool>(false, false, true, true)), 1000f), Struct_2(Struct_1(1u, true, true, vec4<bool>(false, true, false, false)), 348f), Struct_2(Struct_1(0u, true, false, vec4<bool>(false, true, true, true)), -1141f), Struct_2(Struct_1(0u, true, false, vec4<bool>(true, true, true, false)), 2707f), Struct_2(Struct_1(0u, false, true, vec4<bool>(false, false, true, false)), 287f), Struct_2(Struct_1(37065u, true, true, vec4<bool>(true, false, false, true)), -544f), Struct_2(Struct_1(4294967295u, false, true, vec4<bool>(true, true, false, true)), -1000f), Struct_2(Struct_1(1u, true, true, vec4<bool>(true, false, true, false)), 804f), Struct_2(Struct_1(4294967295u, false, false, vec4<bool>(false, false, false, true)), -571f), Struct_2(Struct_1(54546u, false, false, vec4<bool>(false, true, false, false)), -834f), Struct_2(Struct_1(13978u, false, true, vec4<bool>(false, false, false, true)), -326f), Struct_2(Struct_1(25530u, false, false, vec4<bool>(false, false, true, false)), -632f), Struct_2(Struct_1(13147u, true, false, vec4<bool>(true, false, false, true)), -654f), Struct_2(Struct_1(9029u, true, true, vec4<bool>(true, false, true, false)), 1811f), Struct_2(Struct_1(26239u, true, false, vec4<bool>(false, false, true, true)), -751f), Struct_2(Struct_1(1u, false, true, vec4<bool>(true, false, true, true)), -607f), Struct_2(Struct_1(1u, false, true, vec4<bool>(true, false, true, true)), -551f), Struct_2(Struct_1(11819u, false, true, vec4<bool>(false, false, true, true)), 608f));

var<private> global1: Struct_1;

var<private> global2: Struct_2;

var<private> global3: array<i32, 30> = array<i32, 30>(1i, -20716i, 2147483647i, 2147483647i, -14919i, -18571i, 42663i, 0i, 17114i, 987i, 2818i, -7470i, 50493i, 56204i, -19954i, 1877i, 1i, -18991i, -1i, 0i, 53886i, i32(-2147483648), -30943i, 18392i, 1i, 30054i, -27230i, i32(-2147483648), 0i, 16655i);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec2<f32> {
    let var_0 = select(select(select(!global1.d.xyy, select(!global1.d.www, vec3<bool>(false, false, global1.c), select(vec3<bool>(false, global2.a.c, true), global2.a.d.yzz, global1.d.xzy)), firstTrailingBit(global3[_wgslsmith_index_u32(62006u, 30u)]) > global3[_wgslsmith_index_u32(global2.a.a, 30u)]), !(!(!global1.d.xxx)), global2.a.d.wyz), global1.d.wwx, select(vec3<bool>(all(select(vec2<bool>(global2.a.b, global1.d.x), vec2<bool>(true, global1.c), vec2<bool>(global2.a.b, false))), true, global2.a.d.x), select(vec3<bool>(global2.a.c, all(global1.d.xy), any(vec4<bool>(global1.c, global1.b, global2.a.d.x, global2.a.c))), select(vec3<bool>(false, false, true), global1.d.xxw, global1.c), !global1.c), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-202f, 396f, 512f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 106f, global2.b) - vec3<f32>(global2.b, global2.b, 680f)), global2.b <= global2.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, 390f, global2.b))))));
    let var_2 = _wgslsmith_add_u32(~firstTrailingBit(~(global1.a & global2.a.a)), _wgslsmith_mult_u32(reverseBits(global1.a), _wgslsmith_add_u32(0u, 5997u) ^ (0u & (1u << (global1.a % 32u)))));
    let var_3 = global2.b;
    let var_4 = var_0.xy;
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.yy), var_1.xx));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: i32, arg_3: bool) -> u32 {
    global3 = array<i32, 30>();
    global0 = array<Struct_2, 18>();
    let var_0 = 60932u;
    global2 = global0[_wgslsmith_index_u32(0u, 18u)];
    global2 = global0[_wgslsmith_index_u32(min(global1.a, global2.a.a), 18u)];
    return firstLeadingBit(17564u);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> u32 {
    global1 = Struct_1(~(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.a, arg_0, u_input.d.x, 48288u), vec4<u32>(global2.a.a, global2.a.a, global2.a.a, 0u)), ~u_input.d.x) & _wgslsmith_div_u32(global1.a, 2633u)), global2.a.d.x, false, vec4<bool>(true, select(!(global1.c | global1.b), false, select(true, global1.d.x, true)), global2.a.b, all(vec4<bool>(any(global2.a.d.zyx), select(true, true, true), true, global2.a.d.x))));
    var var_0 = global2.b;
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(abs(global2.a.a | 28147u), 0u) | ~countOneBits(u_input.c), arg_0, reverseBits(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(84182u, arg_1.x), _wgslsmith_mod_u32(1u, global1.a)), reverseBits(0u))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(~u_input.d, var_1, ~vec3<u32>(arg_0, arg_1.x, 0u))), vec3<u32>(arg_1.x, firstTrailingBit(4294967295u), 1u)), 18u)];
    var_2 = global0[_wgslsmith_index_u32(~func_4(_wgslsmith_mult_i32(-1i, -global3[_wgslsmith_index_u32(select(1u, global2.a.a, false), 30u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, _wgslsmith_div_f32(1000f, 539f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()))), abs(_wgslsmith_mod_i32(u_input.a, min(2147483647i, global3[_wgslsmith_index_u32(4294967295u, 30u)]))), select(4294967295u >= _wgslsmith_mod_u32(var_2.a.a, arg_0), var_2.a.c, true)), 18u)];
    return _wgslsmith_dot_vec2_u32(~select(var_1.yz, arg_1, select(vec2<bool>(global1.b, false), !global1.d.ww, all(global1.d.zxx))), select(vec2<u32>(_wgslsmith_sub_u32(~41339u, arg_0), var_2.a.a), u_input.d.yy, global2.a.c));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = all(vec4<bool>(!any(!global1.d.yxz), any(select(global1.d.wx, !vec2<bool>(global2.a.d.x, false), true)), !(global2.a.d.x == global2.a.d.x), (_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(global2.a.a, global2.a.a, global1.a)) ^ countOneBits(46368u)) == global2.a.a));
    let var_1 = global2.a;
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~13175u), 244u), 18u)];
    return Struct_1(75366u, any(vec4<bool>(true, any(select(vec3<bool>(false, var_1.d.x, global2.a.c), vec3<bool>(var_1.b, global1.c, var_1.c), vec3<bool>(global2.a.d.x, false, true))), false, true)), global2.a.b, global1.d);
}

fn func_1() -> f32 {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(global2.b * 524f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.b + global2.b), global2.b))))), vec3<u32>(global2.a.a, func_2(_wgslsmith_mult_u32(~global2.a.a, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.a, u_input.d.x), u_input.d.yx)), countOneBits(~vec2<u32>(4294967295u, global2.a.a))), global2.a.a >> (4294967295u % 32u)));
    let var_1 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, _wgslsmith_f_op_f32(global2.b * global2.b)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1016f, global2.b) * vec2<f32>(global2.b, global2.b)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.b, global2.b), vec2<f32>(global2.b, 218f)))))) - vec2<f32>(1612f, global2.b)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(abs(u_input.d), ~_wgslsmith_clamp_vec3_u32(u_input.d, u_input.d, vec3<u32>(u_input.d.x, 73138u, 1u))), select(~(u_input.d ^ u_input.d), u_input.d, global2.b >= _wgslsmith_f_op_f32(global2.b - global2.b))));
    global3 = array<i32, 30>();
    var var_2 = var_1.c;
    var var_3 = _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 23964u, global2.a.a, global1.a) << (vec4<u32>(27842u, var_0.a, global2.a.a, var_0.a) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(global2.a.a, global2.a.a, 27161u, u_input.c), vec4<u32>(global2.a.a, global1.a, 32558u, 1u))), vec4<u32>(u_input.c ^ global1.a, 34317u, global1.a, _wgslsmith_sub_u32(var_1.a, u_input.c))) ^ (vec4<u32>(func_2(~0u, u_input.d.zy & vec2<u32>(global2.a.a, u_input.c)), 1u, firstLeadingBit(~0u), _wgslsmith_sub_u32(var_0.a, 22593u) | _wgslsmith_add_u32(var_0.a, 0u)) >> ((_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 8685u, 36647u), vec4<u32>(17336u, global2.a.a, var_0.a, 1u), firstTrailingBit(vec4<u32>(1u, 4294967295u, 4294967295u, global1.a))) & firstTrailingBit(firstTrailingBit(vec4<u32>(1u, u_input.c, 44327u, var_0.a)))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec2_f32(func_3()).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(global2.b, _wgslsmith_f_op_f32(-global2.b), global2.b, _wgslsmith_div_f32(global2.b, global2.b)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(func_1()), -1000f, 1023f, global2.b))));
    global0 = array<Struct_2, 18>();
    var var_1 = ~(~countOneBits(countOneBits(~vec3<i32>(u_input.a, 13433i, global3[_wgslsmith_index_u32(global1.a, 30u)]))));
    let var_2 = global0[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(max(global1.a, 1u), func_2(4294967295u, ~vec2<u32>(u_input.d.x, global1.a)), ~4294967295u), func_5(vec2<f32>(-479f, var_0.x), ~u_input.d).a, !all(!vec4<bool>(false, true, false, global1.c))), 18u)];
    let var_3 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_0.x)), global2.b, ~vec3<u32>(~var_2.a.a, ~var_3.a, 4294967295u));
}

