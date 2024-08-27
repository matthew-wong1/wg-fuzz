struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(false, false, false, false, true, true, true, false, true, true, true);

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(4294967295u, true, vec3<f32>(707f, -538f, -910f), Struct_1(vec3<bool>(true, false, true), 2147483647i, vec2<f32>(375f, -887f), vec2<f32>(785f, -1391f))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec2<f32> {
    let var_0 = abs(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(max(vec3<i32>(2147483647i, arg_2.b, u_input.b), vec3<i32>(u_input.b, arg_2.b, u_input.b)), vec3<i32>(u_input.b, -1i, -2147483647i) << (vec3<u32>(52110u, u_input.a.x, arg_1) % vec3<u32>(32u))), -firstTrailingBit(vec3<i32>(u_input.b, -2147483647i, -1i))), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(0i, -88791i, 0i)), vec3<i32>(5120i, max(arg_2.b, 31423i), firstLeadingBit(0i)), -vec3<i32>(1i, arg_2.b, 22581i))));
    global0 = array<bool, 11>();
    let var_1 = _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(~u_input.a.x, _wgslsmith_sub_u32(19729u, 1u), _wgslsmith_sub_u32(arg_1, 31395u), _wgslsmith_sub_u32(62287u, 27675u))) ^ select(~(vec4<u32>(18339u, 37130u, u_input.a.x, 21185u) << (vec4<u32>(u_input.a.x, 23508u, 1u, arg_1) % vec4<u32>(32u))), vec4<u32>(4294967295u, _wgslsmith_add_u32(5323u, u_input.a.x), 1u, firstTrailingBit(arg_1)), true), ~(~firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, arg_1, u_input.a.x) << (vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))));
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c.x), 891f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-582f)), -1072f))))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    global0 = array<bool, 11>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), u_input.a.x, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), 2147483647i, vec2<f32>(-453f, -422f), vec2<f32>(538f, 515f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-131f, -1010f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-700f, -963f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1655f, _wgslsmith_f_op_f32(ceil(-817f))), vec2<f32>(-371f, _wgslsmith_div_f32(-1815f, 2120f)), vec2<bool>(false, global0[_wgslsmith_index_u32(1u | u_input.a.x, 11u)])))));
    global1 = array<Struct_2, 1>();
    global1 = array<Struct_2, 1>();
    var var_1 = Struct_1(!(!(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 11u)], true)))), u_input.b, var_0, _wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(328u, 11u)], false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], false), vec4<bool>(global0[_wgslsmith_index_u32(249u, 11u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(0u, 11u)])), 1u, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(2400u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], true), 0i, var_0, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(558f, var_0.x)))))));
    return Struct_2(35316u, any(select(select(var_1.a.zx, var_1.a.xx, u_input.b <= 1i), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], true), vec2<bool>(all(vec3<bool>(var_1.a.x, true, global0[_wgslsmith_index_u32(u_input.a.x, 11u)])), all(var_1.a.yy)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) - -984f), _wgslsmith_f_op_f32(-var_0.x), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(362f * _wgslsmith_f_op_f32(min(var_1.c.x, 1812f))))), Struct_1(!select(vec3<bool>(false, var_1.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), !var_1.a, false), -39082i >> (~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, 463f)) * _wgslsmith_f_op_vec2_f32(var_0 * var_0))), _wgslsmith_f_op_vec2_f32(exp2(var_0))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: f32) -> Struct_1 {
    var var_0 = -(~_wgslsmith_mod_i32(-u_input.b, arg_0.d.b) >> (~firstTrailingBit(10474u) % 32u));
    global1 = array<Struct_2, 1>();
    global1 = array<Struct_2, 1>();
    let var_1 = arg_1;
    global1 = array<Struct_2, 1>();
    return func_2(~vec4<i32>((1i & u_input.b) >> (_wgslsmith_mult_u32(0u, 4294967295u) % 32u), 1i, ~firstLeadingBit(-16754i), -max(u_input.b, arg_1.d.b))).d;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: bool) -> vec4<f32> {
    let var_0 = !(!(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0.d.b), vec2<i32>(u_input.b, arg_0.d.b)) == 0i)) && any(arg_0.d.a);
    global1 = array<Struct_2, 1>();
    global1 = array<Struct_2, 1>();
    var var_1 = vec3<bool>(!func_2(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(17587i, 22406i, 28865i, u_input.b)), -vec4<i32>(1i, arg_0.d.b, arg_0.d.b, arg_0.d.b))).b, arg_1.x, all(vec3<bool>(arg_1.x, any(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 11u)], false, false, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec4<bool>(true, false, arg_2, false), vec4<bool>(true, false, true, true))), all(select(vec4<bool>(false, var_0, false, arg_1.x), vec4<bool>(false, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 11u)], arg_0.d.a.x, arg_2, false))))));
    let var_2 = min(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, u_input.a.x, 39550u) << (_wgslsmith_add_vec4_u32(vec4<u32>(32u, 60485u, arg_0.a, 4294967295u), vec4<u32>(10344u, arg_0.a, 51993u, 1u)) % vec4<u32>(32u)), min(_wgslsmith_sub_vec4_u32(vec4<u32>(11073u, u_input.a.x, 1u, 0u), vec4<u32>(0u, arg_0.a, 52998u, 41909u)), ~vec4<u32>(u_input.a.x, 50935u, u_input.a.x, 24192u))), vec4<u32>(arg_0.a, ~reverseBits(83765u & arg_0.a), 49003u, min(_wgslsmith_mod_u32(0u, ~arg_0.a), 1u)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.c.x)), _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x)))), _wgslsmith_f_op_f32(max(arg_0.d.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(530f - arg_0.c.x) + -318f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1304f))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<f32>) -> bool {
    global0 = array<bool, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(Struct_2(~u_input.a.x, false, _wgslsmith_f_op_vec3_f32(arg_2 * _wgslsmith_f_op_vec3_f32(-arg_2)), func_4(global1[_wgslsmith_index_u32(~u_input.a.x, 1u)], func_2(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i)), ~vec4<u32>(21204u, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(abs(671f)))), arg_0, true)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.x, -348f, arg_2.x, arg_2.x))), vec4<f32>(-826f, -1133f, _wgslsmith_f_op_f32(arg_2.x * -748f), _wgslsmith_f_op_f32(-1000f * arg_2.x)))));
    global0 = array<bool, 11>();
    global1 = array<Struct_2, 1>();
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(min(-1054f, _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_vec2_f32(func_3(!vec4<bool>(arg_1, false, arg_1, arg_0.x), 0u, Struct_1(vec3<bool>(false, false, false), u_input.b, vec2<f32>(arg_2.x, -767f), vec2<f32>(var_0.x, var_0.x)), var_0.ww)).x, var_0.x, -1423f)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)])), global0[_wgslsmith_index_u32(u_input.a.x, 11u)], any(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 11u)], true)), true & func_1(vec2<bool>(true, true), global0[_wgslsmith_index_u32(4294967295u, 11u)], vec3<f32>(-819f, -386f, 419f))), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(10493u, 11u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], false), vec4<bool>(true, false, true, false), global0[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], false, global0[_wgslsmith_index_u32(1u, 11u)])), !(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], false, false)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(53695u, 11u)], true)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], true, global0[_wgslsmith_index_u32(14062u, 11u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 11u)])), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], false, global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)]), !(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 11u)], false, true, global0[_wgslsmith_index_u32(u_input.a.x, 11u)])), !(!vec4<bool>(true, global0[_wgslsmith_index_u32(12915u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]))), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a.x, 1u, 4294967295u) | u_input.a.x, 11u)]), select(vec4<bool>(!(global0[_wgslsmith_index_u32(23654u, 11u)] && true), any(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)])), true, true), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], true), select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 11u)], true, global0[_wgslsmith_index_u32(134540u, 11u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]), -55302i >= u_input.b), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], false, global0[_wgslsmith_index_u32(1u, 11u)]), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), any(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], false)))), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], true, global0[_wgslsmith_index_u32(34701u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)])), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(47800u, 11u)], global0[_wgslsmith_index_u32(19882u, 11u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(9584u, 11u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(45783u, 11u)], false)), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(9656u, 11u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 11u)])))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], var_0.x, global0[_wgslsmith_index_u32(91770u, 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(45679u, 11u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], var_0.x, false, true)), 22560u, func_2(-vec4<i32>(u_input.b, 2000i, u_input.b, u_input.b)).d, func_2(abs(vec4<i32>(-22265i, -1i, u_input.b, u_input.b))).d.c)).x)) + _wgslsmith_f_op_vec4_f32(func_5(Struct_2(abs(u_input.a.x), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-174f, 1026f, -876f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1964f, 327f, -274f))), func_2(vec4<i32>(-8557i, u_input.b, u_input.b, u_input.b)).d), func_4(Struct_2(u_input.a.x, true, vec3<f32>(-1091f, -898f, -521f), Struct_1(var_0.wxx, -2147483647i, vec2<f32>(-1132f, 1000f), vec2<f32>(1183f, 2063f))), Struct_2(abs(u_input.a.x), 0u == u_input.a.x, _wgslsmith_div_vec3_f32(vec3<f32>(-1350f, -774f, -578f), vec3<f32>(-160f, -1319f, -1038f)), func_2(vec4<i32>(-25669i, u_input.b, u_input.b, u_input.b)).d), firstLeadingBit(~vec4<u32>(1u, u_input.a.x, 4294967295u, 0u)), 1563f).a.yx, all(vec3<bool>(var_0.x, var_0.x, var_0.x)) == false)).x);
    var var_2 = Struct_1(vec3<bool>(func_2(vec4<i32>(2147483647i, 1i, u_input.b, ~31907i)).d.a.x, false, false), _wgslsmith_dot_vec4_i32(firstLeadingBit(reverseBits(vec4<i32>(-1i, u_input.b, u_input.b, -1i))), vec4<i32>(reverseBits(u_input.b), 23924i, u_input.b, -25293i)), func_2(~(~select(vec4<i32>(u_input.b, 2147483647i, 7581i, -8616i), vec4<i32>(u_input.b, u_input.b, -9123i, -2147483647i), var_0))).d.d, vec2<f32>(-1266f, _wgslsmith_div_f32(-985f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-303f)))))));
    var var_3 = max(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, u_input.a.x), u_input.a.yx) & _wgslsmith_clamp_vec2_u32(~(~u_input.a.zz), u_input.a.zx, _wgslsmith_clamp_vec2_u32(u_input.a.yz, u_input.a.xz, ~vec2<u32>(49291u, 85628u))), vec2<u32>(u_input.a.x, ~u_input.a.x));
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~4294967295u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_3.x), ~u_input.a.xx) % 32u), abs(~var_3.x) & (var_3.x >> (countOneBits(var_3.x) % 32u)), 141130u) ^ var_3.x, 1u)];
    global1 = array<Struct_2, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_3.x, 51704u, _wgslsmith_dot_vec3_u32(u_input.a, ~(~u_input.a))), -(abs(-1i) | _wgslsmith_dot_vec2_i32(vec2<i32>(-23315i, 55587i), vec2<i32>(2147483647i, 1i))) & _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.d.b, var_4.d.b) >> (vec2<u32>(55072u, 11802u) % vec2<u32>(32u)), vec2<i32>(0i, 31308i) & vec2<i32>(var_4.d.b, u_input.b)), -var_2.b), -vec3<i32>(_wgslsmith_mult_i32(-var_2.b, -24301i), u_input.b, -_wgslsmith_mod_i32(var_4.d.b, var_2.b)), var_1, var_4.d.b);
}

