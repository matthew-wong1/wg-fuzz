struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<u32>;

var<private> global2: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

var<private> global3: array<f32, 18> = array<f32, 18>(889f, -433f, -742f, -862f, -358f, -1072f, 1168f, 928f, 1096f, 1000f, 809f, 959f, -539f, 854f, -1287f, -628f, 1000f, 1104f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = Struct_2(max(abs(~_wgslsmith_clamp_u32(3532u, 4294967295u, global1.x)), global0.a ^ ~34901u), Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.xz | global0.b.a, vec2<i32>(-23622i, global0.b.a.x)), ~vec2<i32>(16537i, u_input.b.x)), !(!arg_0.a)), !(!global0.c), arg_0.a, global0.e);
    global0 = var_0;
    global1 = (_wgslsmith_mod_vec2_u32(~select(vec2<u32>(1u, global0.a), vec2<u32>(var_0.a, global1.x), var_0.c), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(54929u, global0.a, u_input.d, 4294967295u), vec4<u32>(0u, 108739u, u_input.d, 1u)), firstLeadingBit(21939u))) ^ vec2<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, global0.a, 34148u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(1700u, 57330u, 51461u, global0.a), vec4<u32>(u_input.d, global0.a, 5317u, global1.x))), firstLeadingBit(reverseBits(global0.a)))) << (_wgslsmith_div_vec2_u32(abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(0u, var_0.a), vec2<u32>(55607u, u_input.d))), vec2<u32>(firstTrailingBit(~u_input.d), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, var_0.a), vec3<u32>(4294967295u, global0.a, 51846u)))) % vec2<u32>(32u));
    let var_1 = -2147483647i;
    global3 = array<f32, 18>();
    return false;
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_3(func_3(Struct_3(global3[_wgslsmith_index_u32(~global1.x, 18u)] >= _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 18u)] + -747f))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(409f, -1000f), vec2<f32>(-1230f, -1897f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1197f, -1347f) - vec2<f32>(global3[_wgslsmith_index_u32(global1.x, 18u)], 1000f)), vec2<f32>(-147f, 437f))))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(106289u, 18u)], global3[_wgslsmith_index_u32(global0.a, 18u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(74606u, 18u)], global3[_wgslsmith_index_u32(global1.x, 18u)]) * vec2<f32>(global3[_wgslsmith_index_u32(global0.a, 18u)], 1000f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(global0.a, 18u)], global3[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(519f, global3[_wgslsmith_index_u32(58511u, 18u)]) + vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 18u)], -539f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-703f, 2569f)))));
    var var_1 = ~1i;
    let var_2 = arg_1;
    var var_3 = abs(50545u) ^ _wgslsmith_add_u32(~(~(u_input.d >> (global1.x % 32u))), firstTrailingBit(global1.x));
    let var_4 = arg_1.a.x;
    return Struct_2(~u_input.d, Struct_1(u_input.b.yx, true), !select(vec2<bool>(global0.d, any(vec3<bool>(false, false, false))), vec2<bool>(true, true), !vec2<bool>(false, global0.c.x)), true, select(vec4<bool>(!arg_2.x, arg_0, _wgslsmith_div_f32(581f, global3[_wgslsmith_index_u32(u_input.d, 18u)]) >= var_0.x, !(!arg_0)), select(!select(global0.e, vec4<bool>(false, var_2.b, false, false), global0.b.b), global0.e, select(global0.e, !vec4<bool>(arg_2.x, true, false, global0.e.x), var_4 <= var_2.a.x)), global0.e));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = max(select(vec2<u32>(u_input.d, global0.a) | countOneBits(vec2<u32>(u_input.d, 43411u)), ~(~vec2<u32>(48689u, 1u)), !(!vec2<bool>(arg_0.e.x, global0.d))) ^ vec2<u32>(~1u, u_input.d), select(vec2<u32>(~arg_0.a, select(global1.x, ~66109u, all(global2[_wgslsmith_index_u32(10781u, 19u)]))), ~(~firstTrailingBit(vec2<u32>(global1.x, 34275u))), select(arg_0.e.ww, !vec2<bool>(global0.b.b, true), func_1(true, Struct_1(vec2<i32>(global0.b.a.x, 37649i), false), !global2[_wgslsmith_index_u32(39829u, 19u)]).e.zz)));
    var var_1 = !arg_0.e.xxy;
    let var_2 = select(global0.e, vec4<bool>(arg_0.d, global3[_wgslsmith_index_u32(u_input.d, 18u)] >= -553f, true, false), !global0.e);
    let var_3 = Struct_3(!any(select(global2[_wgslsmith_index_u32(u_input.d, 19u)], arg_0.e.ywx, !var_1.x)));
    let var_4 = arg_0.d && any(func_1(!global0.b.b, func_1(false, global0.b, select(global0.e.yzz, vec3<bool>(true, arg_0.e.x, var_3.a), false)).b, vec3<bool>(!var_1.x, true, true)).e.xw);
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_1(true, func_4(func_4(Struct_2(~arg_1.a, arg_1.b, func_1(true, Struct_1(vec2<i32>(1i, u_input.a), arg_1.d), arg_1.e.yxw).c, false, func_4(arg_1).e))).b, arg_1.e.xwx).e.ww;
    var var_1 = arg_0.b;
    var_0 = func_4(Struct_2(global0.a, Struct_1(~arg_1.b.a, !(!arg_0.b)), vec2<bool>((arg_1.b.b != arg_0.b) && true, all(!vec3<bool>(arg_1.d, var_0.x, true))), arg_1.b.b, vec4<bool>(all(arg_1.e), var_0.x && false, !arg_1.c.x && !var_0.x, any(select(global0.c, arg_1.c, vec2<bool>(var_0.x, var_0.x)))))).e.xx;
    return func_1(true, arg_1.b, select(select(func_4(func_4(Struct_2(0u, Struct_1(u_input.b.yz, false), arg_1.c, true, vec4<bool>(true, global0.c.x, global0.b.b, true)))).e.wzx, !(!vec3<bool>(arg_0.b, true, true)), vec3<bool>(global0.e.x, global0.c.x, arg_1.d)), select(select(global2[_wgslsmith_index_u32(reverseBits(1u), 19u)], arg_1.e.zxz, any(global0.e)), global0.e.zyy, select(func_4(Struct_2(arg_1.a, Struct_1(vec2<i32>(0i, -10207i), false), global0.e.ww, false, vec4<bool>(false, var_0.x, global0.b.b, true))).e.wzx, select(vec3<bool>(false, false, global0.b.b), vec3<bool>(arg_1.e.x, var_0.x, global0.c.x), vec3<bool>(global0.d, global0.b.b, arg_0.b)), vec3<bool>(false, true, false))), select(func_4(arg_1).e.zzz, global0.e.xxw, func_4(arg_1).e.zzy))).b;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = Struct_1(vec2<i32>(global0.b.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x << (global0.a % 32u), -2147483647i, 48909i, ~u_input.b.x), vec4<i32>(1i, _wgslsmith_sub_i32(global0.b.a.x, global0.b.a.x), firstTrailingBit(u_input.a), 1i))), !(global0.c.x != (1024f >= global3[_wgslsmith_index_u32(global1.x, 18u)])) && !select(true, true, true));
    global2 = array<vec3<bool>, 19>();
    let var_1 = _wgslsmith_add_i32(-abs(2147483647i), func_4(arg_0).b.a.x);
    var var_2 = func_1(arg_1.a, func_5(Struct_1(~vec2<i32>(arg_0.b.a.x, u_input.c), arg_0.b.b), arg_0), global0.e.zzz).b;
    let var_3 = firstLeadingBit(arg_0.b.a.x);
    return StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(2147483647i, 5979i), var_0.a.x), vec2<i32>(-2147483647i, ~(-60752i))) >> (vec2<u32>(_wgslsmith_div_u32(1u, arg_0.a), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global1.x, u_input.d, global0.a)), vec3<u32>(14871u, global0.a, arg_0.a) ^ vec3<u32>(4294967295u, arg_0.a, 4294967295u))) % vec2<u32>(32u)), 53519u, _wgslsmith_mod_vec4_i32(-(vec4<i32>(arg_0.b.a.x, 2255i, -32413i, var_1) >> (vec4<u32>(arg_0.a, 36155u, global0.a, arg_0.a) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-41093i, 1i, 0i, var_1)), ~vec4<i32>(var_0.a.x, 2147483647i, var_0.a.x, global0.b.a.x), reverseBits(vec4<i32>(u_input.a, -28733i, var_2.a.x, -62386i))), vec4<i32>(var_3, func_4(func_4(Struct_2(0u, Struct_1(u_input.b.yw, global0.b.b), global0.e.yz, var_0.b, global0.e))).b.a.x, var_0.a.x, -15050i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.e;
    let x = u_input.a;
    s_output = func_6(Struct_2(0u, func_5(Struct_1(~vec2<i32>(u_input.c, 2147483647i), true), func_4(func_1(true, Struct_1(u_input.b.wy, var_0.x), global2[_wgslsmith_index_u32(u_input.d, 19u)]))), func_1(true, Struct_1(global0.b.a, all(global0.c)), !(!global0.e.zzy)).c, var_0.x, !vec4<bool>(var_0.x, global3[_wgslsmith_index_u32(39348u, 18u)] == 329f, any(vec4<bool>(global0.b.b, true, global0.b.b, global0.c.x)), global0.b.b)), Struct_3(func_3(Struct_3(func_1(true, global0.b, vec3<bool>(var_0.x, global0.c.x, false)).b.b))));
}

