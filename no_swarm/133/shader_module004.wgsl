struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(-21895i, 2147483647i, -25816i), vec3<i32>(1i, -26828i, 30620i), vec3<i32>(9373i, 0i, -35464i), vec3<i32>(-3650i, 41572i, -1i), vec3<i32>(-27903i, -12445i, 40538i), vec3<i32>(2147483647i, 41752i, 34849i), vec3<i32>(2147483647i, 2921i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, 0i, -1i), vec3<i32>(-12047i, 26942i, 40681i), vec3<i32>(8494i, -1i, 38730i), vec3<i32>(0i, 6710i, 15175i), vec3<i32>(24643i, 2147483647i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, 3994i), vec3<i32>(-53254i, i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, -56785i, 15367i), vec3<i32>(2496i, i32(-2147483648), 0i), vec3<i32>(-1i, -59309i, 23966i));

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, true, true)));

var<private> global2: vec2<f32> = vec2<f32>(-131f, -430f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> vec2<f32> {
    var var_0 = global1[_wgslsmith_index_u32(abs(~0u), 6u)];
    global1 = array<Struct_2, 6>();
    var_0 = Struct_2(select(vec3<bool>(any(vec2<bool>(var_0.a.x, true)), true, _wgslsmith_div_i32(u_input.e.x, u_input.e.x) <= abs(84050i)), select(!select(vec3<bool>(true, false, arg_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, false), var_0.a), select(!vec3<bool>(arg_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(false, true, false), true), arg_0.a), !var_0.a));
    var_0 = global1[_wgslsmith_index_u32(reverseBits(u_input.b), 6u)];
    let var_1 = Struct_2(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x));
    return arg_1.wz;
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(u_input.c, 6u)], vec4<f32>(_wgslsmith_f_op_f32(trunc(126f)), global2.x, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(1607f + -1231f)), -786f))));
    let var_0 = global1[_wgslsmith_index_u32(~(~max(_wgslsmith_add_u32(select(u_input.a, 32893u, true), firstTrailingBit(u_input.c)), ~u_input.c)), 6u)];
    var var_1 = select(abs(-abs(firstLeadingBit(vec4<i32>(u_input.e.x, u_input.e.x, 14345i, u_input.e.x)))), -max(vec4<i32>(u_input.e.x, u_input.e.x, -38100i, u_input.e.x), vec4<i32>(2147483647i, -1i, 1i, -12293i) | vec4<i32>(-2147483647i, 10359i, u_input.e.x, 15912i)) >> (~abs(~vec4<u32>(1u, u_input.d, 1617u, 30015u)) % vec4<u32>(32u)), 0i == u_input.e.x);
    var var_2 = Struct_2(!vec3<bool>(false, (global2.x >= global2.x) && all(vec4<bool>(arg_0.x, true, false, true)), arg_0.x));
    var var_3 = _wgslsmith_div_u32(u_input.d, 1u);
    return global1[_wgslsmith_index_u32(27444u, 6u)];
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))));
    let var_1 = func_2(vec3<bool>(false, true, true));
    let var_2 = !select(vec4<bool>(true, false, any(var_1.a.zx), true), vec4<bool>(all(!vec2<bool>(var_1.a.x, true)), any(vec4<bool>(var_1.a.x, true, var_1.a.x, true)), true, var_1.a.x), vec4<bool>(var_1.a.x, false, var_1.a.x, _wgslsmith_f_op_f32(select(var_0, var_0, false)) > _wgslsmith_f_op_f32(ceil(242f))));
    global2 = vec2<f32>(1273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(abs(global2.x))));
    var var_3 = _wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32((~(~u_input.d) >> (23441u % 32u)) | ~(_wgslsmith_sub_u32(u_input.a, u_input.b) >> (min(22814u, 11344u) % 32u)), 18u)], _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e.x, ~_wgslsmith_div_i32(u_input.e.x, -1i), 2147483647i), reverseBits(vec3<i32>(-u_input.e.x, u_input.e.x, u_input.e.x))));
    return Struct_2(vec3<bool>(!(abs(u_input.b) > min(4294967295u, u_input.c)), false, any(vec4<bool>(true, true, select(var_2.x, true, var_1.a.x), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.a, u_input.c), u_input.b);
    let var_1 = global2.x == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x)))));
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(0u, 6u)], vec4<f32>(-210f, global2.x, -1079f, global2.x))).x, _wgslsmith_f_op_f32(global2.x + 563f), _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(var_2.a), vec4<f32>(-724f, -139f, global2.x, -936f))).x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(604f, 192f, global2.x, 230f), vec4<f32>(253f, global2.x, global2.x, -1301f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1082f, -865f)), _wgslsmith_f_op_f32(min(605f, 1000f)), _wgslsmith_f_op_f32(min(1741f, 138f)), _wgslsmith_f_op_f32(global2.x * 704f)))) - vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3(func_1(), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 4057f, 1458f, 2451f)), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 2184f, -791f, -296f), vec4<f32>(global2.x, -1235f, global2.x, -261f))))).x, global2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -332f)))), -1508f));
    let var_4 = Struct_1(_wgslsmith_mod_i32(u_input.e.x, 1i), firstLeadingBit(select(vec4<i32>(u_input.e.x, -48899i, u_input.e.x, u_input.e.x) >> (vec4<u32>(u_input.c, 4294967295u, 4294967295u, var_0) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(-2147483647i, 1i, -59538i, -15786i)), var_1)) >> ((_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, 1u, u_input.a), vec4<u32>(u_input.c, u_input.b, var_0, u_input.c)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 7497u, 0u, var_0), vec4<u32>(u_input.a, u_input.c, var_0, var_0))) ^ ~(vec4<u32>(var_0, var_0, 1u, u_input.a) << (vec4<u32>(50198u, 0u, 73302u, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.ywx - _wgslsmith_f_op_vec3_f32(ceil(var_3.xyw))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-659f, -791f, -199f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, var_3.x, -2543f, global2.x) * vec4<f32>(global2.x, 401f, var_3.x, 371f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1158f, global2.x, global2.x, 1275f) + vec4<f32>(452f, -1000f, -1475f, var_4.c.x))))))));
}

