struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31>;

var<private> global1: Struct_1;

var<private> global2: Struct_2;

var<private> global3: vec3<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = vec4<bool>(global1.a.x == global1.a.x, any(!vec2<bool>(true, any(vec2<bool>(global1.d, true)))), all(select(vec2<bool>(!global1.d, false), !select(vec2<bool>(global2.a, false), vec2<bool>(true, global2.a), vec2<bool>(global2.a, global2.a)), vec2<bool>(true, true))), all(vec2<bool>(!global1.d || global2.a, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(global1.a.x * global1.a.x)), 1273f), 1642f));
    let var_2 = _wgslsmith_f_op_f32(sign(global1.a.x));
    let var_3 = Struct_3(Struct_2(all(var_0), u_input.b.x, global2.c, global2.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global3.x * var_1.x), 1124f)) * vec2<f32>(global1.a.x, 1078f)));
    global2 = var_3.a;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(-1310f))))))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    global3 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x - global1.a.x) * _wgslsmith_div_f32(-1307f, -670f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * -843f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(10585u)) * _wgslsmith_f_op_f32(ceil(global1.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a.x * -1761f), global1.a.x)));
    global2 = Struct_2(!((_wgslsmith_dot_vec2_i32(vec2<i32>(global2.d.x, 0i), vec2<i32>(0i, 45886i)) >> (~global2.c % 32u)) > ~_wgslsmith_clamp_i32(global2.d.x, 49050i, global1.b.x)), 1u ^ select(4294967295u, ~(~u_input.b.x), !(!arg_0.x)), 61980u, vec2<i32>(_wgslsmith_dot_vec4_i32(global1.e | vec4<i32>(2147483647i, u_input.a, -66583i, global2.d.x), vec4<i32>(u_input.d, global2.d.x, -1i, -57573i)) << (~_wgslsmith_sub_u32(global2.b, 13953u) % 32u), 1i & _wgslsmith_dot_vec3_i32(global1.e.wzw | global1.b, ~global1.b)));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1235f * -583f))), global3.x, global1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global1.a.x, 122f, -1280f)) + _wgslsmith_f_op_vec4_f32(select(global1.a, vec4<f32>(global1.a.x, global3.x, -934f, global1.a.x), vec4<bool>(false, false, global1.d, arg_0.x)))), _wgslsmith_f_op_vec4_f32(abs(global1.a)))))), _wgslsmith_mod_vec3_i32(vec3<i32>(-81640i, global1.c.x, u_input.a), firstTrailingBit(vec3<i32>(364i, global2.d.x, u_input.a) | global1.e.zzz)) ^ global1.e.zxz, vec2<i32>(-1701i, ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global2.d, vec2<i32>(18930i, 1i)), -20773i)), arg_0.x, abs(_wgslsmith_add_vec4_i32(global1.e, firstTrailingBit(vec4<i32>(19033i, global2.d.x, global2.d.x, global1.e.x))) | vec4<i32>(~(-6682i), global1.c.x >> (1u % 32u), ~global1.c.x, global1.b.x | -2147483647i)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)), _wgslsmith_div_vec3_i32(select(global1.b, _wgslsmith_clamp_vec3_i32(-global1.b, -global1.e.wzz, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global2.d.x, -26577i), vec3<i32>(u_input.d, 23408i, -8997i))), all(select(arg_0, vec3<bool>(true, false, true), true))), global1.b), select(global1.c & ~global2.d, _wgslsmith_sub_vec2_i32(vec2<i32>(-17948i, u_input.c), global2.d), true), true, ~vec4<i32>(~u_input.c | -2147483647i, u_input.c, u_input.a, select(-9630i, _wgslsmith_div_i32(23418i, 23817i), all(vec3<bool>(global2.a, true, true)))));
    global2 = Struct_2(!arg_0.x, ~4294967295u, u_input.b.x, min(firstLeadingBit(global2.d), global2.d));
    return Struct_2(all(select(select(vec4<bool>(true, true, global1.d, false), vec4<bool>(false, global1.d, arg_0.x, var_0.d), !var_0.d), vec4<bool>(true, all(vec3<bool>(arg_0.x, global1.d, false)), true, true), true)), firstLeadingBit(countOneBits(global2.b)), u_input.b.x, abs(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.d), global2.d) | select(var_0.b.xx, var_0.e.zy, true))));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1181f) * _wgslsmith_f_op_f32(max(-353f, _wgslsmith_f_op_f32(-568f + global3.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1514f, -1051f)), _wgslsmith_f_op_f32(abs(147f)))));
    let var_2 = false;
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -1807f, -476f, -483f), global1.a)), global1.b, global1.e.yz, all(select(vec3<bool>(true, global2.a, true), !vec3<bool>(true, false, global1.d), !vec3<bool>(global2.a, var_2, var_2))), vec4<i32>(2147483647i, u_input.c, _wgslsmith_mult_i32(firstLeadingBit(1i), global2.d.x & 2147483647i), firstTrailingBit(u_input.a | -2147483647i))), func_2(vec3<bool>(true, true, true)));
    global0 = array<vec4<u32>, 31>();
    return Struct_3(func_2(vec3<bool>(true, !select(global2.a, true, false), all(!vec4<bool>(var_2, true, false, true)))), vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(round(260f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = var_0.a;
    var var_1 = _wgslsmith_f_op_f32(-global1.a.x);
    let var_2 = -_wgslsmith_add_i32(min(var_0.a.d.x, 14276i), _wgslsmith_div_i32(1i, 2147483647i));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a - global1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) * _wgslsmith_f_op_vec4_f32(ceil(global1.a)))))), countOneBits(global1.e.yyw), var_0.a.d, false, -vec4<i32>(global2.d.x, func_2(select(vec3<bool>(false, var_0.a.a, true), vec3<bool>(false, global2.a, false), vec3<bool>(global1.d, false, true))).d.x, firstLeadingBit(-22360i), _wgslsmith_mod_i32(countOneBits(-52643i), 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, global3.x, ~var_0.a.c);
}

