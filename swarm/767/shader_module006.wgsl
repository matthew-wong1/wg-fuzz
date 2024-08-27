struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_4 = Struct_4(Struct_3(-611f, vec4<f32>(681f, 1255f, -1814f, -1165f), Struct_1(-30111i, false, false, -513f), vec2<f32>(375f, -1312f)));

var<private> global2: array<f32, 20> = array<f32, 20>(1389f, -628f, -1722f, -1000f, 1538f, 541f, -430f, -664f, 1082f, -548f, 469f, 1425f, -891f, -816f, 1263f, 461f, -154f, -226f, 784f, 414f);

var<private> global3: Struct_3;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = all(vec4<bool>(false, all(select(vec4<bool>(global0.c, global1.a.c.c, true, global0.b), select(vec4<bool>(global3.c.c, false, false, global1.a.c.b), vec4<bool>(global0.b, global1.a.c.b, global1.a.c.b, global0.c), vec4<bool>(global3.c.c, global0.b, global1.a.c.b, global3.c.c)), all(vec2<bool>(global1.a.c.b, global0.c)))), true, global0.b));
    var_0 = !global1.a.c.b;
    global0 = Struct_1(global1.a.c.a, global3.c.c, true, _wgslsmith_f_op_f32(-global1.a.a));
    global2 = array<f32, 20>();
    global0 = global1.a.c;
    return -675f;
}

fn func_2(arg_0: vec4<bool>) -> bool {
    global3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * global3.b.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_f_op_f32(floor(global0.d)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(16117u, 20u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.b + global3.b) - _wgslsmith_f_op_vec4_f32(global1.a.b * vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 20u)], global0.d, global1.a.b.x, global2[_wgslsmith_index_u32(1u, 20u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global1.a.b)))))), Struct_1(31299i, false, true, global0.d), _wgslsmith_f_op_vec2_f32(-global3.b.yw));
    let var_0 = global1.a;
    global2 = array<f32, 20>();
    let var_1 = Struct_2(-347f, i32(-1i) * -1i);
    var var_2 = true;
    return all(vec2<bool>(false, true));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = vec2<bool>(arg_2.b, any(select(vec4<bool>(func_2(vec4<bool>(global0.c, true, false, true)), global1.a.c.c, arg_2.b, global3.c.b), !select(vec4<bool>(global0.b, false, true, false), vec4<bool>(global3.c.b, global1.a.c.b, global1.a.c.b, false), vec4<bool>(global1.a.c.c, true, true, global0.c)), select(vec4<bool>(global3.c.c, false, global1.a.c.c, arg_2.c), vec4<bool>(true, true, true, true), -15975i <= global0.a))));
    global2 = array<f32, 20>();
    let var_1 = ~((_wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, arg_0, arg_2.a, global1.a.c.a), -vec4<i32>(20280i, 2147483647i, -2147483647i, arg_0), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.a.c.a, global1.a.c.a, -1i, global0.a), vec4<i32>(global0.a, arg_0, global3.c.a, -87971i))) ^ -countOneBits(vec4<i32>(arg_0, arg_2.a, global0.a, arg_1))) & select(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.e, global0.a, -14767i, 11055i), ~vec4<i32>(-2147483647i, u_input.e, arg_2.a, arg_0)), abs(vec4<i32>(global1.a.c.a, 10172i, arg_1, arg_2.a)), !select(vec4<bool>(global3.c.b, global3.c.c, global3.c.c, false), vec4<bool>(global1.a.c.b, false, true, false), vec4<bool>(global1.a.c.c, true, global3.c.c, true))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(781f, _wgslsmith_f_op_f32(select(global0.d, global3.d.x, arg_2.b))) - _wgslsmith_f_op_f32(-147f + _wgslsmith_f_op_f32(max(811f, global1.a.b.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.d.x, 432f)))))), _wgslsmith_mod_i32(min(_wgslsmith_mult_i32(arg_2.a, arg_2.a), global1.a.c.a) << (~(~u_input.d.x) % 32u), ~(~(-1i) << (firstLeadingBit(1u) % 32u))));
    global1 = Struct_4(Struct_3(907f, _wgslsmith_f_op_vec4_f32(global1.a.b * vec4<f32>(_wgslsmith_f_op_f32(global1.a.d.x + -155f), global1.a.b.x, -612f, _wgslsmith_f_op_f32(global0.d * -791f))), Struct_1(-arg_0, false, false, global3.c.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.d), global1.a.b.xx))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.c;
    global0 = Struct_1(-global3.c.a | var_0.a, global1.a.c.c && var_0.c, !func_1(firstLeadingBit(_wgslsmith_mod_i32(global1.a.c.a, global1.a.c.a)), select(var_0.a, ~(-1i), !global0.c), global1.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1219f - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) - _wgslsmith_f_op_f32(sign(339f))))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = u_input.e << (_wgslsmith_add_u32(18493u, max(~u_input.b << (u_input.a.x % 32u), ~u_input.b)) % 32u);
    global0 = global1.a.c;
    let var_2 = Struct_1(-(~global0.a), !(!global0.b), u_input.e >= 16977i, _wgslsmith_f_op_f32(floor(global1.a.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(484f, _wgslsmith_mult_vec4_u32(u_input.d, min(firstTrailingBit(vec4<u32>(0u, 0u, 9571u, 1u)), vec4<u32>(1u, firstLeadingBit(1u), 0u, ~u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.d)) - -2538f), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(79669u, 16729u, u_input.d.x, u_input.b), vec4<u32>(u_input.d.x, u_input.a.x, u_input.c, 0u), select(vec4<bool>(global3.c.c, false, var_2.c, global0.b), vec4<bool>(false, false, true, false), vec4<bool>(global3.c.c, true, global1.a.c.c, var_0.c))), min(_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.b, 1u, u_input.a.x, u_input.a.x))), ~vec4<u32>(u_input.c, ~u_input.c, 1u, ~1u)), _wgslsmith_f_op_f32(f32(-1f) * -2099f));
}

