struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<u32, 13> = array<u32, 13>(4294967295u, 17517u, 23178u, 5992u, 0u, 25647u, 4294967295u, 13426u, 1u, 4294967295u, 0u, 1u, 32043u);

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(49771u, 0u, 0u, 71445u));

var<private> global4: array<Struct_4, 21>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>) -> vec2<u32> {
    global1 = array<u32, 13>();
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-520f))), vec3<u32>(_wgslsmith_mod_u32(0u, 6200u), ~u_input.e & 43659u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_0.x, 28913u, arg_0.x), ~arg_0.x, select(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a.x, 13u)], 13u)], true))), Struct_1(~(~vec4<u32>(5275u, 4294967295u, global3.a.x, 7877u))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u ^ global1[_wgslsmith_index_u32(18847u, 13u)], abs(11512u)), ~firstLeadingBit(arg_0.x)), 31u)], global0[_wgslsmith_index_u32(72u, 31u)]));
    return global3.a.xy & global3.a.yz;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    global3 = Struct_1(global3.a);
    let var_0 = ~(~func_3(arg_1.a, -vec3<i32>(u_input.c.x, 0i, 45603i)));
    global2 = u_input.d.x;
    global1 = array<u32, 13>();
    global1 = array<u32, 13>();
    return global0[_wgslsmith_index_u32(arg_3, 31u)];
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1178f, _wgslsmith_div_f32(-310f, 758f))))), vec3<u32>(global3.a.x, global1[_wgslsmith_index_u32(global3.a.x, 13u)], ~(countOneBits(4294967295u) | _wgslsmith_mult_u32(u_input.a, 111108u))), func_2(true, Struct_3(global3.a), u_input.c, u_input.e), global0[_wgslsmith_index_u32(~global3.a.x, 31u)], func_2((-2203i > ~u_input.b) != true, Struct_3(global3.a), u_input.c, (15095u << (max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)], global3.a.x) % 32u)) | _wgslsmith_div_u32(1u, ~global3.a.x)));
    global3 = func_2(false, Struct_3(firstTrailingBit(var_0.d.a << (~var_0.d.a % vec4<u32>(32u)))), select(u_input.c, -(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(-1i, 24134i, 12725i, 36189i)) << (global3.a % vec4<u32>(32u))), true), global3.a.x ^ (global1[_wgslsmith_index_u32(~var_0.d.a.x, 13u)] | _wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.x, var_0.c.a.x, 0u, 4294967295u), var_0.c.a >> (vec4<u32>(0u, 4294967295u, u_input.a, var_0.c.a.x) % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_div_u32(var_0.c.a.x, reverseBits(_wgslsmith_add_u32(12184u, _wgslsmith_div_u32(~67166u, ~37109u))));
    global3 = func_2(!any(vec4<bool>(false, true, true, true)) & !any(vec3<bool>(false, true, true)), Struct_3(vec4<u32>(func_2(true, Struct_3(vec4<u32>(var_1, 0u, u_input.e, 0u)), firstLeadingBit(u_input.c), 1u).a.x, u_input.a, 57379u, ~var_1)), -vec4<i32>(u_input.d.x, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, u_input.c.x), firstLeadingBit(u_input.b)), 0i, ~(-42205i >> (1u % 32u))), 0u);
    return Struct_3(abs(vec4<u32>(_wgslsmith_div_u32(var_1, u_input.e), u_input.e, 20046u, ~global3.a.x)) ^ ~(var_0.c.a | (global3.a | var_0.d.a)));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec4_i32(-(~min(vec4<i32>(arg_0, 8042i, arg_0, 0i), vec4<i32>(-1i, u_input.b, -28501i, 0i))), reverseBits(~(u_input.c ^ u_input.c))) ^ -((~u_input.c ^ u_input.c) ^ vec4<i32>(0i, _wgslsmith_add_i32(-1i, arg_0), 64220i, u_input.b));
    var var_1 = 936f;
    var_0 = _wgslsmith_mod_vec4_i32(-abs(vec4<i32>(u_input.d.x, arg_0, var_0.x, u_input.c.x)), _wgslsmith_mult_vec4_i32(max(_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(-1i, var_0.x, 20920i, arg_0)), vec4<i32>(var_0.x, -1i, u_input.c.x, -2147483647i) >> (arg_1.a % vec4<u32>(32u))), min(u_input.c, vec4<i32>(4917i, 72122i, 12053i, var_0.x)))) | select(_wgslsmith_mult_vec4_i32(u_input.c, _wgslsmith_mult_vec4_i32(u_input.c, u_input.c)) | _wgslsmith_add_vec4_i32(vec4<i32>(15084i, 2147483647i, u_input.c.x, u_input.b), vec4<i32>(arg_0, 2147483647i, 0i, 670i)), u_input.c ^ vec4<i32>(-1i, _wgslsmith_mod_i32(arg_0, var_0.x), -arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -22437i), vec2<i32>(var_0.x, u_input.c.x))), true);
    global3 = Struct_1(~countOneBits(~arg_1.a));
    let var_2 = arg_2;
    return Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f)))), min(arg_1.a.yzz, countOneBits(global3.a.wwy) & select(arg_1.a.yzx, vec3<u32>(arg_1.a.x, 1u, 0u), arg_3.x)), func_2(-9024i == _wgslsmith_sub_i32(~0i, select(u_input.b, 2147483647i, true)), arg_1, ~select(-vec4<i32>(0i, -15928i, -34876i, 0i), vec4<i32>(arg_0, var_0.x, 2147483647i, 1i), arg_3.x), firstLeadingBit(23984u)), func_2(any(!select(arg_3, vec2<bool>(arg_3.x, true), arg_3)), arg_1, ~u_input.c, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.e, 13u)], 13u)]), global0[_wgslsmith_index_u32(func_3(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 49166u, 4294967295u, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 21382u, arg_1.a.x, 19561u), vec4<u32>(arg_1.a.x, 27043u, 51710u, 1u), vec4<u32>(arg_1.a.x, arg_1.a.x, 31492u, 76790u))), ~var_0.ywx << (firstTrailingBit(vec3<u32>(4294967295u, 0u, 0u)) % vec3<u32>(32u))).x ^ ~(~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)] >> (1u % 32u))), 31u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_4(u_input.d.x, func_1(), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -547f), false)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), false)));
    var var_1 = vec4<bool>(true, true, true, true);
    var var_2 = global3.a.x;
    global0 = array<Struct_1, 31>();
    let var_3 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(~func_2(true, func_1(), ~u_input.c, ~var_0.a.c.a.x).a.x), 0u), 21u)];
    var_1 = select(!(!vec4<bool>(true, true, true, all(vec3<bool>(true, true, var_1.x)))), !select(select(select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), vec4<bool>(true, var_1.x, true, true), var_1.x && true), !(!vec4<bool>(var_1.x, false, var_1.x, var_1.x)), select(select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), var_1.x), vec4<bool>(false, false, false, false), !vec4<bool>(var_1.x, true, false, false))), vec4<bool>(false, var_1.x, -1443f > _wgslsmith_f_op_f32(-var_3.a.a), true));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

