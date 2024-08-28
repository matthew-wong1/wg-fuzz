struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global1: array<bool, 22> = array<bool, 22>(true, false, false, false, true, true, true, true, true, false, true, false, true, false, true, true, false, false, false, false, true, false);

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-645f, -249f, -1000f), vec2<u32>(4294967295u, 13771u), vec4<u32>(22252u, 0u, 29772u, 1u), vec2<bool>(false, true));

var<private> global3: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-700f, -159f, 447f), vec3<f32>(861f, 1332f, 884f), vec3<f32>(371f, 1104f, 300f), vec3<f32>(1107f, 1213f, 1341f), vec3<f32>(-1065f, 479f, -651f), vec3<f32>(-1342f, 811f, -1719f), vec3<f32>(497f, -669f, 463f), vec3<f32>(558f, 1675f, 895f), vec3<f32>(107f, 1947f, -311f), vec3<f32>(1000f, -1566f, 763f), vec3<f32>(-812f, 2733f, 1110f), vec3<f32>(944f, -291f, 835f), vec3<f32>(916f, 952f, 358f), vec3<f32>(1392f, -1183f, 1000f), vec3<f32>(-539f, -1000f, -1977f), vec3<f32>(1095f, -158f, 585f), vec3<f32>(326f, -567f, -150f), vec3<f32>(232f, -962f, 221f), vec3<f32>(965f, 248f, 1904f), vec3<f32>(2111f, -1208f, 1554f), vec3<f32>(1000f, -991f, 725f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = arg_0.b;
    var var_1 = Struct_3(4294967295u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.a.zz + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1927f, arg_0.a.a.x) * global2.a.xz), _wgslsmith_f_op_vec2_f32(-arg_0.a.a.yx))) - vec2<f32>(_wgslsmith_f_op_f32(-359f + _wgslsmith_f_op_f32(-arg_0.a.a.x)), global2.a.x)));
    var var_3 = select(vec3<bool>(global2.d.x | !any(vec3<bool>(true, false, global2.d.x)), false, !global1[_wgslsmith_index_u32(4294967295u, 22u)] == (min(var_0.a, global2.c.x) == ~1u)), !select(vec3<bool>(true, arg_0.a.d.x, true), vec3<bool>(arg_0.a.d.x, true, global1[_wgslsmith_index_u32(20083u, 22u)]), all(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(global2.c.x, 22u)], global2.d.x))), (_wgslsmith_clamp_u32(4294967295u, ~global2.c.x, firstTrailingBit(u_input.b)) ^ ~(~4294967295u)) != 0u);
    var_0 = Struct_3(u_input.b ^ _wgslsmith_div_u32(abs(_wgslsmith_add_u32(u_input.b, 44638u)), _wgslsmith_dot_vec3_u32(abs(global2.c.xwx), vec3<u32>(29639u, 37789u, var_0.a))));
    return _wgslsmith_mult_u32(reverseBits(global2.b.x), ~(~max(u_input.b, ~u_input.b)));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    global0 = array<vec2<bool>, 20>();
    let var_0 = abs(countOneBits(vec3<u32>(_wgslsmith_dot_vec3_u32(arg_2.yzx, min(arg_2.ywy, global2.c.www)), func_3(Struct_4(Struct_1(vec3<f32>(arg_1, -1474f, 174f), vec2<u32>(u_input.b, 1u), vec4<u32>(arg_2.x, u_input.b, arg_2.x, 13045u), vec2<bool>(global2.d.x, false)), Struct_3(arg_2.x))), global2.c.x)));
    global1 = array<bool, 22>();
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1271f), 1020f, global2.a.x)));
    var var_2 = countOneBits(u_input.a);
    return 0u;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = vec4<bool>(true, select(true, !global1[_wgslsmith_index_u32(select(arg_0 ^ 4294967295u, 0u, select(true, global2.d.x, true)), 22u)], !any(!vec2<bool>(global2.d.x, true))), true, any(select(vec3<bool>(global1[_wgslsmith_index_u32(40158u, 22u)] || global2.d.x, all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 22u)], global2.d.x)), true), !vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 22u)]), !(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(67570u, 22u)])))));
    let var_1 = Struct_3(~arg_0);
    global0 = array<vec2<bool>, 20>();
    var var_2 = Struct_1(global2.a, global2.b, select(vec4<u32>(_wgslsmith_add_u32(countOneBits(var_1.a), func_2(vec4<f32>(global2.a.x, 403f, -920f, -765f), -1094f, vec4<u32>(0u, arg_0, var_1.a, u_input.b))), ~_wgslsmith_mod_u32(u_input.b, 26033u), 4294967295u, u_input.b), _wgslsmith_add_vec4_u32(~vec4<u32>(global2.c.x, 58436u, var_1.a, 1u) & ~global2.c, ~(vec4<u32>(47097u, arg_0, 1u, 0u) ^ global2.c)), vec4<bool>(16410u > u_input.b, true, any(!vec4<bool>(false, false, global2.d.x, true)), 2147483647i == (u_input.c.x >> (50572u % 32u)))), !vec2<bool>(true | var_0.x, true));
    global1 = array<bool, 22>();
    return Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.a.x, global2.a.x)) * -1445f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(737f - global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.x)))), global2.b, vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b, var_2.c.x), func_2(vec4<f32>(2181f, 440f, 1168f, global2.a.x), -1000f, vec4<u32>(var_1.a, 83897u, 16573u, var_1.a)), _wgslsmith_clamp_u32(arg_0, var_1.a, u_input.b)), _wgslsmith_add_u32(firstLeadingBit(global2.c.x), 40970u), 5716u, 33841u), global2.d), countOneBits(_wgslsmith_mod_vec3_u32(min(countOneBits(vec3<u32>(81781u, 23316u, var_1.a)), var_2.c.xww), var_2.c.xxw)), ~vec4<i32>(2147483647i, u_input.a.x, -u_input.d, u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 10336u, 53191u) ^ vec3<u32>(0u, u_input.b, 4294967295u), vec3<u32>(45071u, global2.c.x, 25485u))));
    global1 = array<bool, 22>();
    var var_1 = global2.b;
    let var_2 = _wgslsmith_div_i32(~(i32(-1i) * -var_0.c.x), -2147483647i);
    var var_3 = var_0.a.a;
    var var_4 = abs(vec4<u32>(firstLeadingBit(var_0.a.b.x), var_0.a.c.x, 22003u, var_0.a.b.x));
    var var_5 = false;
    var var_6 = -45185i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(26912i, -1i, -34634i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -1i, 0i), var_0.c.wzy)), firstLeadingBit(8869i) | -abs(u_input.a.x), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mult_i32(-19109i, var_2) >> (40361u % 32u)), u_input.c.x), -1335f, ~countOneBits(var_4.yx << (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, ~(~u_input.c.x), countOneBits(u_input.c.x), 0i), -u_input.a));
}

