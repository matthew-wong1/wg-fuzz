struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32 = 28345u;

var<private> global2: Struct_2;

var<private> global3: array<u32, 13> = array<u32, 13>(0u, 1u, 5807u, 0u, 16349u, 1u, 4294967295u, 79321u, 4294967295u, 47724u, 4294967295u, 0u, 28588u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_3(~vec3<u32>(global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(global2.c, 13u)], 4294967295u), ~(~(~(~u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -589f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -759f) * _wgslsmith_div_f32(480f, 1224f)))));
    let var_2 = ~(vec4<i32>(_wgslsmith_div_i32(global2.e, u_input.b) & -19899i, 1i << (_wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(var_0.b, 51397u, 24750u)) % 32u), ~(-74817i), ~global2.e >> (1u % 32u)) >> (_wgslsmith_sub_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.c, 1u, 0u, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(0u, 13u)], global3[_wgslsmith_index_u32(u_input.a, 13u)], u_input.a, var_0.b))), ~vec4<u32>(u_input.a, var_0.a.x, 4294967295u, 1u)) % vec4<u32>(32u)));
    var var_3 = 48980i;
    return ~var_0.a.yz;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = func_3();
    let var_1 = arg_1 > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(3781f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 * 633f), 390f, u_input.a >= var_0.x)))) - _wgslsmith_f_op_f32(-1270f + _wgslsmith_f_op_f32(f32(-1f) * -917f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-147f, 892f, -1387f))) * vec3<f32>(622f, arg_1, arg_1)) + vec3<f32>(518f, _wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(arg_1 * arg_1)))));
    global1 = 0u;
    global1 = _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(101481u, 0u, u_input.a), vec3<u32>(arg_0.c, arg_0.c, var_0.x)), vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 13u)], 4294967295u, 33208u)), vec3<u32>(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(32110u, 13u)], 34871u), 4294967295u, _wgslsmith_clamp_u32(u_input.a, 0u, 47488u))), select(firstTrailingBit(~(~vec3<u32>(var_0.x, u_input.a, global2.c))), ~(~min(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.a, 13u)], arg_0.c), vec3<u32>(arg_0.c, arg_0.c, u_input.a))), global2.b));
    return var_2.x;
}

fn func_1(arg_0: Struct_4) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - arg_0.b)) * _wgslsmith_f_op_f32(ceil(1542f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_f_op_f32(min(-2743f, arg_0.b)))))), arg_0.c.b);
    global1 = global2.c;
    let var_1 = Struct_4(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, global2.e, arg_0.a, 13683i)), vec4<i32>(arg_0.a, _wgslsmith_mod_i32(global2.e, 2147483647i), -2147483647i, _wgslsmith_mod_i32(0i, global2.e))), select(vec4<i32>(2147483647i, u_input.b, 2147483647i, _wgslsmith_mult_i32(-1i, -2147483647i)), _wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, 1i, global2.e, 33266i), vec4<i32>(u_input.b, 0i, 1i, u_input.b)), arg_0.c.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(false, arg_0.c.a.xyx, u_input.a, vec2<bool>(true, global2.d.x), 8590i), -375f, abs(vec2<i32>(arg_0.a, u_input.b)), vec2<i32>(2147483647i, -13422i))) - var_0.x), var_0.x)), arg_0.c);
    global1 = global2.c;
    global3 = array<u32, 13>();
    return 225f;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_5) -> i32 {
    global1 = global2.c & reverseBits(~select(_wgslsmith_div_u32(3023u, 97931u), global2.c, select(false, true, arg_2.d)));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(-arg_1)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(Struct_4(global2.e, 478f, arg_0))))))), vec3<bool>(true, true == !all(vec4<bool>(global2.b.x, true, arg_2.d, arg_2.d)), false), global2.c, global2.d, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.b ^ global2.e, countOneBits(-32958i)), ~arg_2.c.xyz), select(arg_2.c.wwx, vec3<i32>(-2147483647i, arg_2.c.x, arg_2.c.x), !select(vec3<bool>(true, arg_0.a.x, arg_0.c), vec3<bool>(global2.d.x, arg_0.c, arg_0.c), true))));
    var_0 = Struct_2(arg_2.d, vec3<bool>(var_0.c > global2.c, false, _wgslsmith_f_op_f32(trunc(573f)) <= _wgslsmith_f_op_f32(select(arg_2.a.x, 977f, true))), max(select(4294967295u, var_0.c, false) << (~0u % 32u), 1u) | max(_wgslsmith_mod_u32(global2.c, global3[_wgslsmith_index_u32(28829u, 13u)]), 26663u), vec2<bool>(global2.e <= _wgslsmith_div_i32(0i, firstTrailingBit(1i)), true), 48207i);
    let var_1 = Struct_3(min(vec3<u32>((1u | u_input.a) >> (~1u % 32u), 16819u, 1u), _wgslsmith_clamp_vec3_u32(select(firstTrailingBit(vec3<u32>(4294967295u, global2.c, 1u)), vec3<u32>(1u, var_0.c, 44742u), !global2.a), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, var_0.c, 59185u), vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 13u)], global2.c, var_0.c)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c, global3[_wgslsmith_index_u32(0u, 13u)], global2.c), vec3<u32>(72932u, 0u, var_0.c)))), _wgslsmith_mult_u32(0u, 134493u));
    global2 = Struct_2(any(arg_0.a.zw), select(var_0.b, !vec3<bool>(all(vec2<bool>(true, global2.b.x)), global2.b.x, global2.b.x), select(!vec3<bool>(true, arg_2.d, false), vec3<bool>(true, arg_0.c, !arg_0.a.x), arg_0.c)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(73446u, global3[_wgslsmith_index_u32(var_1.a.x, 13u)], var_0.c)), var_1.a) | 1u, !(!var_0.d), countOneBits(_wgslsmith_dot_vec2_i32(countOneBits(~vec2<i32>(-1i, 2147483647i)), -vec2<i32>(var_0.e, 67736i))));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(vec4<bool>(true, false, any(!vec4<bool>(global2.a, true, false, true)), global2.a), 1762f, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-603f, _wgslsmith_f_op_f32(func_1(Struct_4(global2.e, -1863f, Struct_1(vec4<bool>(global2.b.x, global2.d.x, true, false), 974f, false)))), false))), Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(632f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-585f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(257f, 847f))), firstLeadingBit(1i), max(~vec4<i32>(20184i, -1i, -3005i, u_input.b), reverseBits(vec4<i32>(u_input.b, -2147483647i, u_input.b, 2147483647i))) >> (vec4<u32>(firstTrailingBit(global3[_wgslsmith_index_u32(4294967295u, 13u)]), 636u, global2.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 55395u, global2.c), vec3<u32>(0u, 18148u, u_input.a))) % vec4<u32>(32u)), !(!any(vec4<bool>(false, true, false, true)))));
    let var_1 = abs(~(-33368i));
    global3 = array<u32, 13>();
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1048f, 849f), vec2<f32>(653f, -476f), global2.b.yy))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1101f, -694f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-405f, -613f))))));
    var var_3 = ~reverseBits(var_1 ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global2.e, global2.e, var_1, -2147483647i), ~vec4<i32>(-33869i, var_1, global2.e, 2147483647i)));
    global0 = global2.d.x || any(!(!select(vec4<bool>(false, false, global2.a, false), vec4<bool>(global2.d.x, global2.a, global2.b.x, global2.b.x), true)));
    var var_4 = reverseBits(_wgslsmith_div_vec3_i32(~(~vec3<i32>(-2147483647i, global2.e, -37204i) >> (firstTrailingBit(vec3<u32>(68038u, global3[_wgslsmith_index_u32(7569u, 13u)], 14566u)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.e, u_input.b, 1i), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -23580i, -47976i), vec3<i32>(2147483647i, var_1, var_1), vec3<i32>(1i, -10955i, 34381i)), max(vec3<i32>(global2.e, global2.e, 25423i), vec3<i32>(-1i, var_1, 12500i))))));
    let var_5 = -19086i;
    let x = u_input.a;
    s_output = StorageBuffer(-577f, vec2<i32>(countOneBits(~(-15248i)), -_wgslsmith_mod_i32(var_4.x, -2350i)) ^ var_4.xy);
}

