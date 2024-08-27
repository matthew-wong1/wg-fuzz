struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<u32, 27> = array<u32, 27>(1u, 1u, 23141u, 11708u, 30312u, 4294967295u, 17315u, 85646u, 4294967295u, 68851u, 18858u, 39650u, 0u, 21862u, 4294967295u, 61601u, 1u, 12096u, 4294967295u, 35175u, 0u, 25611u, 1010u, 22900u, 82583u, 1u, 1u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = !vec3<bool>(-2147483647i <= u_input.b.x, false, all(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true)));
    let var_1 = Struct_1(firstLeadingBit(abs(_wgslsmith_div_vec3_u32(select(vec3<u32>(arg_0, 39817u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 27u)], 27u)], 27u)], 27u)], 27u)]), u_input.c.zwx, vec3<bool>(var_0.x, var_0.x, false)), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17124u, 27u)], 27u)], 150401u, 298u)))), 367f);
    let var_2 = !(!vec4<bool>(false, false, false, var_0.x & select(var_0.x, true, false)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-905f - 874f))))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b + var_1.b), _wgslsmith_f_op_f32(141f * var_1.b))))));
    let var_4 = -1i;
    return ~(~4294967295u);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    let var_0 = ~vec3<u32>(27080u, _wgslsmith_sub_u32(1u, func_3(u_input.c.x)), _wgslsmith_dot_vec4_u32(abs(arg_3 | u_input.c), vec4<u32>(43034u, _wgslsmith_clamp_u32(arg_1, global2[_wgslsmith_index_u32(0u, 27u)], 65651u), _wgslsmith_add_u32(arg_3.x, arg_1), ~arg_3.x)));
    var var_1 = _wgslsmith_mod_vec3_i32(select(countOneBits(~vec3<i32>(60567i, u_input.a, 22877i)), firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(arg_1, 24u)], -13330i, 2147483647i) >> (arg_2.a % vec3<u32>(32u))), any(vec4<bool>(true, false, any(vec4<bool>(false, false, false, false)), false))), reverseBits(vec3<i32>(u_input.a, -2147483647i, -59531i)));
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    let var_2 = Struct_2((~(-vec2<i32>(0i, global0[_wgslsmith_index_u32(1u, 24u)])) & _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, global0[_wgslsmith_index_u32(21465u, 24u)]), u_input.b), vec2<i32>(2147483647i, -12994i))) << (arg_3.xx % vec2<u32>(32u)));
    return _wgslsmith_mult_u32(arg_3.x, var_0.x) << (62122u % 32u);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(4294967295u, ~4294967295u | global2[_wgslsmith_index_u32(6311u << (1u % 32u), 27u)]) > _wgslsmith_mod_u32(reverseBits(u_input.c.x), countOneBits(_wgslsmith_sub_u32(func_2(Struct_1(u_input.c.yxy, 1346f), 71611u, global1[_wgslsmith_index_u32(0u, 12u)], u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, global2[_wgslsmith_index_u32(arg_0.x, 27u)]), arg_0))));
    global2 = array<u32, 27>();
    var var_1 = all(select(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(true, true), all(vec3<bool>(true, false, any(vec2<bool>(true, false))))));
    var var_2 = !(!all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true)))));
    let var_3 = true;
    return Struct_2(-_wgslsmith_div_vec2_i32(~u_input.b, ~(~vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 27u)], 24u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(74013u, 24u)], -1i), -1i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(3984u, global2[_wgslsmith_index_u32(u_input.c.x, 27u)]), vec2<u32>(0u, global2[_wgslsmith_index_u32(u_input.c.x, 27u)])), 24u)]), _wgslsmith_div_vec3_i32(vec3<i32>(6926i, global0[_wgslsmith_index_u32(9434u, 24u)], -9271i), -vec3<i32>(22998i, 39850i, u_input.b.x))));
    global2 = array<u32, 27>();
    global2 = array<u32, 27>();
    global2 = array<u32, 27>();
    let var_1 = func_1(u_input.c.xz, Struct_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(~global0[_wgslsmith_index_u32(u_input.c.x, 24u)], -u_input.b.x), var_0.zz, min(-vec2<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45644u, 27u)], 24u)], var_0.x), u_input.b << (u_input.c.yx % vec2<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(_wgslsmith_clamp_i32(-14682i, var_0.x, -var_0.x), 0i, abs(-46798i), var_1.a.x), reverseBits(abs(vec4<i32>(0i, 51649i, -2147483647i, 6938i)))), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c.x, global2[_wgslsmith_index_u32(46828u, 27u)]) ^ vec2<u32>(u_input.c.x, 89501u), u_input.c.wz), vec3<u32>(~(~1u), _wgslsmith_add_u32(func_3(_wgslsmith_dot_vec3_u32(u_input.c.zzx, vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60738u, 27u)], 27u)], 27u)], 27u)], global2[_wgslsmith_index_u32(47172u, 27u)]))), 4294967295u), 4294967295u), func_2(global1[_wgslsmith_index_u32(select(u_input.c.x, ~1u, true), 12u)], global2[_wgslsmith_index_u32(~u_input.c.x, 27u)], Struct_1(_wgslsmith_div_vec3_u32(select(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]), u_input.c.yxx, false), countOneBits(vec3<u32>(36870u, global2[_wgslsmith_index_u32(13431u, 27u)], global2[_wgslsmith_index_u32(u_input.c.x, 27u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(179f - -359f))), _wgslsmith_mult_vec4_u32(max(~vec4<u32>(0u, 23501u, global2[_wgslsmith_index_u32(68643u, 27u)], 45449u), _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(0u, 36739u, u_input.c.x, u_input.c.x))), vec4<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(4698u, 27u)], u_input.c.x), func_3(4294967295u), global2[_wgslsmith_index_u32(4294967295u, 27u)] << (0u % 32u), 1u | global2[_wgslsmith_index_u32(u_input.c.x, 27u)]))));
}

