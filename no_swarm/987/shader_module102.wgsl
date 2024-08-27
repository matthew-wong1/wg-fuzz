struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
    e: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_4 = Struct_4(vec3<bool>(true, true, true), true, 0u, Struct_2(Struct_1(293f, vec2<f32>(157f, -212f), -1063f, vec4<f32>(1909f, 896f, -1610f, -1869f)), true, Struct_1(1000f, vec2<f32>(1414f, -1799f), 1000f, vec4<f32>(251f, 632f, -852f, 141f))), 1912f);

var<private> global2: bool;

var<private> global3: array<vec2<u32>, 7>;

var<private> global4: array<u32, 14>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_4 {
    return Struct_4(global1.a, global0.d.x > u_input.b, ~_wgslsmith_mod_u32(u_input.c, 4294967295u), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1098f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1832f), _wgslsmith_f_op_f32(-global0.c.c.a))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)), global1.d.c.d.x)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(global1.d.c.d.xyx));
    let var_1 = Struct_4(vec3<bool>(true, any(vec2<bool>(global0.b.b, true & arg_0)), global0.c.b & true), !(global1.c < u_input.c), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_2.c, 4294967295u, global1.c, 7295u)) | abs(firstLeadingBit(vec4<u32>(44625u, 4294967295u, 12318u, global0.e))), abs(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c, 23342u, global0.e, 4294967295u), vec4<u32>(93320u, 43932u, global1.c, 1u), vec4<u32>(40260u, 14422u, arg_2.c, 18737u)), ~vec4<u32>(51086u, 1u, 4294967295u, 1u)))), Struct_2(func_2().d.c, !(any(vec3<bool>(true, arg_0, false)) && select(true, true, arg_2.b)), Struct_1(global1.d.c.c, global0.c.c.b, _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_vec4_f32(select(func_2().d.c.d, global1.d.c.d, !vec4<bool>(global1.d.b, global1.d.b, false, true))))), 624f);
    var var_2 = var_1.a.x;
    global4 = array<u32, 14>();
    var_2 = arg_2.a.x;
    return _wgslsmith_sub_i32(_wgslsmith_clamp_i32(firstTrailingBit(reverseBits(u_input.a.x)), -global0.d.x, 16288i), u_input.b) & ~2147483647i;
}

fn func_1() -> Struct_2 {
    global3 = array<vec2<u32>, 7>();
    global1 = func_2();
    var var_0 = Struct_4(func_2().a, any(!func_2().a), ~32308u, global1.d, global1.d.c.c);
    let var_1 = ~max(3661i, select(func_3(true, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-715f, global0.b.c.b.x))), Struct_4(vec3<bool>(var_0.b, true, global0.c.b), false, global0.e, var_0.d, global1.e)), -global0.d.x, any(select(global1.a.yz, vec2<bool>(var_0.b, global0.c.b), true))));
    global4 = array<u32, 14>();
    return Struct_2(func_2().d.c, !((-u_input.b << (global0.e % 32u)) <= -(21247i | u_input.b)), global1.d.c);
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = func_1().c.c >= _wgslsmith_div_f32(global0.b.c.d.x, arg_0.b.a.a);
    var var_1 = Struct_3(Struct_1(-284f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.c.b.x, arg_0.b.a.a)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a.b.x, global0.a.c)))))), -1097f, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.d.a.d + vec4<f32>(278f, global0.b.a.a, arg_0.a.d.x, -1579f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.b.x, 2997f, 367f, -314f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.c, 869f, arg_0.c.a.a, -449f), _wgslsmith_f_op_vec4_f32(-arg_0.b.a.d), vec4<bool>(true, true, true, true))))), Struct_2(func_1().a, false, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c.a.d.x, -1091f))), vec2<f32>(_wgslsmith_f_op_f32(min(global0.a.d.x, arg_0.c.c.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -2148f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global0.a.a)), _wgslsmith_f_op_vec4_f32(global0.b.a.d + vec4<f32>(1913f, -866f, -1960f, arg_0.b.a.a)))), Struct_2(arg_0.b.a, arg_0.c.b, Struct_1(global1.e, _wgslsmith_f_op_vec2_f32(func_1().c.b - _wgslsmith_f_op_vec2_f32(min(global1.d.c.d.wy, vec2<f32>(global1.e, -1822f)))), -268f, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.d.c.c, global1.e, -236f, global0.a.b.x), global0.b.c.d)))))), select(_wgslsmith_clamp_vec3_i32(global0.d, global0.d << (vec3<u32>(u_input.c, 1u, 59777u) % vec3<u32>(32u)), vec3<i32>(arg_0.d.x, 1i, u_input.a.x)) & vec3<i32>(arg_0.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-10824i, global0.d.x), global0.d.yy), -1i), _wgslsmith_clamp_vec3_i32(~vec3<i32>(7688i, arg_0.d.x, u_input.b), select(u_input.a.xxw, vec3<i32>(-1i, global0.d.x, arg_0.d.x), global1.a) << (~vec3<u32>(0u, global4[_wgslsmith_index_u32(59132u, 14u)], global0.e) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.d.x, 4470i, -4460i), select(vec3<i32>(-29570i, arg_0.d.x, u_input.a.x), u_input.a.xxz, global0.b.b), vec3<i32>(arg_0.d.x, -1i, 4891i))), arg_0.b.b), ~_wgslsmith_add_u32(global4[_wgslsmith_index_u32(55505u, 14u)], 8659u));
    var var_2 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(global4[_wgslsmith_index_u32(13289u, 14u)], u_input.c, global1.c, global0.e) ^ _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 25225u, arg_0.e), ~vec4<u32>(global1.c, arg_0.e, 1u, global4[_wgslsmith_index_u32(global0.e, 14u)])), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.e, 8125u, 5199u, global1.c)), reverseBits(vec4<u32>(arg_0.e, 29654u, 0u, global1.c))), ~(~vec4<u32>(29175u, arg_0.e, 47457u, global4[_wgslsmith_index_u32(65842u, 14u)]))));
    global2 = true;
    let var_3 = global0.c.b;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e));
    let var_1 = -abs(u_input.a);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(global0.c.a, func_1(), Struct_2(func_2().d.c, true, Struct_1(568f, vec2<f32>(333f, global1.e), 303f, global1.d.c.d)), var_1.xww, ~abs(global0.e)))), 1922f, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 790f)));
    let var_3 = global0.b;
    global1 = Struct_4(vec3<bool>(false, global0.d.x > min(_wgslsmith_sub_i32(var_1.x, -60155i), _wgslsmith_mult_i32(u_input.a.x, global0.d.x)), func_1().b), var_3.b, global0.e, Struct_2(var_3.a, true || var_3.b, global1.d.a), -1501f);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.d.a.d.wzy * _wgslsmith_f_op_vec3_f32(abs(var_2.yyz))) - var_2.xww));
    global0 = Struct_3(func_2().d.a, func_1(), Struct_2(Struct_1(var_2.x, func_2().d.a.d.zx, var_2.x, var_3.c.d), global0.c.b && true, func_2().d.c), firstTrailingBit(~vec3<i32>(-30118i, var_1.x, u_input.a.x)) ^ firstTrailingBit(u_input.a.yyz), 6460u);
    var var_5 = min(_wgslsmith_clamp_vec2_u32(global3[_wgslsmith_index_u32(1u, 7u)], vec2<u32>(_wgslsmith_mod_u32(52441u, firstTrailingBit(45284u)), ~(0u >> (global0.e % 32u))), reverseBits(global3[_wgslsmith_index_u32(43155u, 7u)])), max(min(~(~global3[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, global1.c), vec2<u32>(11925u, u_input.c))), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.e, 14u)], 7u)] << (~(global3[_wgslsmith_index_u32(4294967295u, 7u)] & global3[_wgslsmith_index_u32(27101u, 7u)]) % vec2<u32>(32u))));
    var var_6 = vec3<bool>(func_1().b, true, !(!any(vec4<bool>(global0.b.b, false, true, false))) || global1.d.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_4.xz - vec2<f32>(var_2.x, 613f))), _wgslsmith_f_op_vec2_f32(func_1().a.d.zz - _wgslsmith_f_op_vec2_f32(-global0.c.a.d.xw))))), _wgslsmith_mult_i32(~(~(-1i)), var_1.x & 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-20922i, 7404i), ~firstTrailingBit(var_1.x)), vec2<i32>(-2147483647i, ~(global0.d.x << (u_input.c % 32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, -1i), ~u_input.a.xw)), _wgslsmith_f_op_vec2_f32(-global0.c.c.d.xy));
}

