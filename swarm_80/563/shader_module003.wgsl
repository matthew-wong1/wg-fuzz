struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: f32 = 107f;

var<private> global2: Struct_5;

var<private> global3: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> vec3<u32> {
    let var_0 = global2.a;
    return global2.b.c.yzy;
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> vec2<bool> {
    var var_0 = global2.b.a.x;
    let var_1 = global2.a;
    return global0.xz;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> bool {
    var var_0 = firstLeadingBit(84268u) & arg_1.c.x;
    var_0 = ~global3.c.x;
    global0 = global3.b;
    let var_1 = global2.b.c;
    let var_2 = ~_wgslsmith_mod_vec3_u32(func_2(global2.b.c.x >= var_1.x) ^ var_1.yyw, vec3<u32>(~arg_1.c.x, global2.b.c.x, global2.b.c.x));
    return all(select(!(!func_3(global3.b.x, Struct_3(vec2<u32>(1u, 4294967295u), true), -1i)), func_3(false, Struct_3(arg_1.c.yy, true), _wgslsmith_dot_vec4_i32(vec4<i32>(22870i, arg_0.x, -85750i, arg_0.x), vec4<i32>(u_input.c.x, u_input.a, u_input.a, -13806i)) >> (max(global2.b.c.x, 94949u) % 32u)), global2.b.b.x == !any(global3.b.xy)));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_4) -> Struct_2 {
    global2 = Struct_5(-(~_wgslsmith_dot_vec2_i32(reverseBits(u_input.b.ww), -vec2<i32>(-1i, -2147483647i))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, global3.a.x, global3.a.x, 367f), _wgslsmith_f_op_vec4_f32(-global2.b.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global2.b.a)), vec4<f32>(global2.b.a.x, arg_0, arg_0, global2.b.a.x))), !global2.b.b, ~_wgslsmith_add_vec4_u32(reverseBits(global2.b.c), firstLeadingBit(global3.c))), 112408u);
    global2 = Struct_5(u_input.c.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a)), !select(vec3<bool>(true, true, global3.b.x), select(global2.b.b, global3.b, vec3<bool>(true, global3.b.x, false)), true), global2.b.c), 4294967295u);
    global0 = vec3<bool>(false, any(vec3<bool>(true, ~arg_2.a < (u_input.a ^ -11204i), true)), !any(!vec4<bool>(true, global2.b.b.x, true, global3.b.x)));
    var var_0 = func_2(true).x >> (13130u % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(global3.a.wyx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.a.x)), 193f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(341f, arg_0) + _wgslsmith_f_op_f32(trunc(global3.a.x))))));
    return Struct_2(vec2<bool>(!(!func_3(global3.b.x, Struct_3(vec2<u32>(arg_1, 8323u), global3.b.x), global2.a).x), true), ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global3.c.x, arg_1), ~global2.b.c.wz), max(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, global2.c), arg_2.b.xz), arg_2.b.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(firstTrailingBit(~1u) & global2.b.c.x);
    var var_1 = func_4(_wgslsmith_f_op_f32(trunc(-1253f)), abs(var_0), Struct_4(_wgslsmith_add_i32(~1i, -(1i ^ u_input.b.x)), select(global3.c.www, global2.b.c.xww, func_1(u_input.b, global2.b, global3.b.x)) << (vec3<u32>(~global2.b.c.x, firstLeadingBit(0u), ~global3.c.x) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(global3.a.x + 677f);
    var var_3 = _wgslsmith_f_op_f32(-global2.b.a.x);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2, global3.a.x), global3.a.wz)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.a.zx) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1420f, var_2))) * vec2<f32>(-457f, _wgslsmith_f_op_f32(round(var_2))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(454f, var_2)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-510f, global3.a.x) + vec2<f32>(1605f, var_2)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.a.x, -1597f)))), vec2<f32>(1303f, _wgslsmith_f_op_f32(1f * -461f)), vec2<bool>(any(!global2.b.b), _wgslsmith_f_op_f32(-global3.a.x) < _wgslsmith_f_op_f32(global3.a.x * global2.b.a.x)))));
    var var_5 = func_3(func_1(firstTrailingBit(~_wgslsmith_sub_vec4_i32(vec4<i32>(global2.a, global2.a, global2.a, -1i), u_input.b)), global2.b, func_3(func_1(vec4<i32>(2147483647i, u_input.c.x, global2.a, 23152i), global2.b, global3.b.x), Struct_3(global2.b.c.wx, any(global2.b.b)), u_input.b.x).x), Struct_3(var_1.b, var_1.a.x), global2.a).x;
    let var_6 = global2.b.a.x;
    let var_7 = vec2<bool>(!func_3(_wgslsmith_f_op_f32(-global3.a.x) < _wgslsmith_div_f32(1213f, 452f), Struct_3(vec2<u32>(48367u, 0u), func_3(var_1.a.x, Struct_3(vec2<u32>(var_1.b.x, 24383u), false), global2.a).x), -24070i).x, -_wgslsmith_div_i32(-global2.a, 0i) < -2147483647i);
    var var_8 = min(u_input.b.wwz, reverseBits(-_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.b.x, global2.a), u_input.b.wwx))) | _wgslsmith_clamp_vec3_i32(-vec3<i32>(_wgslsmith_div_i32(global2.a, u_input.b.x), -1i, ~global2.a), vec3<i32>(-_wgslsmith_mult_i32(global2.a, global2.a), 54373i, global2.a), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a, 30809i), u_input.b.wz) | (global2.a & 2147483647i), firstLeadingBit(_wgslsmith_clamp_i32(-1i, global2.a, global2.a)), firstLeadingBit(38155i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3.a), _wgslsmith_f_op_vec4_f32(-global3.a), all(vec4<bool>(true, false, var_7.x, true)))))))), vec2<u32>(~1u >> (var_1.b.x % 32u), 0u), var_1.b);
}

