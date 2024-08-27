struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(0u, 1921u, 13488u, 6831u, 0u, 14682u, 4294967295u, 43283u, 0u, 4294967295u, 4294967295u, 58161u, 32895u, 1u, 40665u, 16087u, 520u, 39780u, 6281u, 4294967295u, 42973u);

var<private> global1: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global2: array<Struct_1, 31>;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<i32> {
    let var_0 = _wgslsmith_sub_vec2_i32(-(firstTrailingBit(u_input.b.xy) & (_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.a), u_input.c) >> (abs(vec2<u32>(10744u, global0[_wgslsmith_index_u32(0u, 21u)])) % vec2<u32>(32u)))), u_input.b.zz);
    global2 = array<Struct_1, 31>();
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(var_0 << (~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)]) % vec2<u32>(32u)), -_wgslsmith_div_vec2_i32(var_0, u_input.c)), _wgslsmith_clamp_vec2_i32(abs(min(vec2<i32>(-74278i, 1904i), u_input.b.yz)), vec2<i32>(-1i) * -vec2<i32>(var_0.x, 1i), ~vec2<i32>(-2147483647i, 59219i))), u_input.b.wy);
    var var_2 = abs(-var_1 << (78600u % 32u));
    let var_3 = global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 24718u, 29239u) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18354u, 21u)], 21u)], 62008u, 15950u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4900u, 21u)], 21u)], 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15692u, 21u)], 21u)], 21u)], 21u)], 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 69016u, global0[_wgslsmith_index_u32(43248u, 21u)]))), countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 21u)], 21u)], 14232u, 29833u) >> (vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(1u, 21u)]) % vec3<u32>(32u))), select(!vec3<bool>(global3.x, global3.x, global3.x), select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(global3.x, global3.x, true), global3.x), select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(true, true, global3.x), vec3<bool>(global3.x, false, false)))), vec3<u32>(global0[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35890u, 21u)], 21u)]))), ~0u))), 31u)];
    return min(_wgslsmith_mod_vec2_i32(min(firstTrailingBit(var_0), ~var_0), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-10959i, var_0.x))), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, 2147483647i), var_0)) & max(reverseBits(u_input.d.xz), ~_wgslsmith_sub_vec2_i32(~var_0, var_0));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_div_vec2_i32(u_input.b.yz, ~func_3());
    var var_1 = vec2<i32>(firstTrailingBit(_wgslsmith_div_i32(reverseBits(2147483647i), u_input.d.x)), u_input.b.x);
    global3 = vec3<bool>(global3.x, 830f >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-479f, arg_0.x))), -1016f)), !(!arg_2.b));
    var var_2 = 9655u;
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1295f, -984f)))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_3)))), _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))))));
    return arg_2.b == any(!vec2<bool>(true, all(vec2<bool>(false, false))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = select(select(vec4<bool>(arg_3.e.x, true, any(!vec4<bool>(false, global3.x, true, true)), (global0[_wgslsmith_index_u32(9266u, 21u)] != 28404u) || true), !vec4<bool>(arg_3.a && true, 1523i == u_input.b.x, arg_3.a, global3.x), !vec4<bool>(arg_3.b, !arg_3.b, arg_1.b, true)), !select(vec4<bool>(true, false, true, any(arg_1.e)), !(!vec4<bool>(false, arg_3.a, global3.x, arg_3.e.x)), any(select(vec4<bool>(global3.x, true, true, arg_1.a), vec4<bool>(true, arg_3.a, arg_1.a, arg_3.b), false))), select(vec4<bool>(func_2(_wgslsmith_f_op_vec3_f32(-arg_1.c.www), ~vec3<u32>(4294967295u, arg_2, arg_2), Struct_1(true, global3.x, vec4<f32>(-974f, 761f, -255f, arg_0), arg_3.d, vec2<bool>(true, arg_3.e.x)), _wgslsmith_f_op_f32(sign(1514f))), func_2(_wgslsmith_f_op_vec3_f32(arg_1.c.wxz - vec3<f32>(arg_0, 1017f, arg_0)), ~vec3<u32>(arg_2, arg_2, global0[_wgslsmith_index_u32(arg_2, 21u)]), Struct_1(true, arg_3.e.x, vec4<f32>(361f, 855f, -960f, 1161f), arg_3.d, global1[_wgslsmith_index_u32(74214u, 10u)]), _wgslsmith_f_op_f32(arg_3.d.x * arg_1.c.x)), false, global3.x), vec4<bool>(arg_1.a && (arg_1.b & false), !any(vec3<bool>(arg_3.e.x, arg_1.e.x, true)), all(!vec4<bool>(arg_3.b, arg_3.e.x, false, global3.x)), any(global3.zz) | true), vec4<bool>(true, false, !all(vec4<bool>(global3.x, false, false, true)), select(true, global3.x, true))));
    let var_1 = global2[_wgslsmith_index_u32(0u, 31u)];
    var var_2 = ~_wgslsmith_mult_vec3_i32(min(vec3<i32>(0i, u_input.d.x, u_input.b.x), _wgslsmith_clamp_vec3_i32(u_input.b.zyx, u_input.d, vec3<i32>(0i, u_input.d.x, u_input.a))) | vec3<i32>(~(-6855i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.d.x, -29866i, u_input.d.x), vec4<i32>(u_input.a, u_input.d.x, 14839i, u_input.e)), u_input.d.x), _wgslsmith_mult_vec3_i32(reverseBits(u_input.b.yyy), -u_input.b.xzx));
    let var_3 = ~abs(_wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, 2147483647i, -2147483647i, 2147483647i), vec4<i32>(5283i, 2147483647i, -1i, u_input.a))) >> (vec4<u32>(abs(~(~arg_2)), firstTrailingBit(select(1u, arg_2, true)), 1u >> (_wgslsmith_mod_u32(~arg_2, _wgslsmith_mult_u32(66748u, arg_2)) % 32u), ~4294967295u) % vec4<u32>(32u));
    var var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 84219u), ~(select(vec2<u32>(52901u, 42726u), firstLeadingBit(vec2<u32>(1u, 0u)), select(arg_1.e, arg_1.e, global3.x)) ^ (vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 21u)]) | countOneBits(vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 21u)])))));
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(-232f)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1384f))), _wgslsmith_f_op_f32(f32(-1f) * -1850f)), vec4<f32>(-445f, -313f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(arg_0 + 203f))), arg_3.d.x)));
}

fn func_1() -> StorageBuffer {
    global0 = array<u32, 21>();
    global2 = array<Struct_1, 31>();
    global0 = array<u32, 21>();
    var var_0 = select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(47134u, 21u)], ~7401u), min(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], ~1u)) ^ (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49762u, 21u)], 21u)], 21u)], 47045u, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(26325u, 21u)]), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(53735u, 21u)], global0[_wgslsmith_index_u32(61263u, 21u)]))) << ((~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)] ^ ~global0[_wgslsmith_index_u32(1u, 21u)]) % 32u)), 10u)], !global1[_wgslsmith_index_u32(min(~global0[_wgslsmith_index_u32(~0u, 21u)], _wgslsmith_clamp_u32(0u, ~global0[_wgslsmith_index_u32(109u, 21u)], _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(92747u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 1u))), 10u)], vec2<bool>(true, true));
    let var_1 = Struct_1(global3.x, !(!((u_input.b.x << (4294967295u % 32u)) > min(u_input.d.x, 0i))), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(320f - _wgslsmith_div_f32(-588f, -1010f)), Struct_1(func_2(vec3<f32>(-342f, -1562f, 1221f), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(0u, 21u)], 30977u), global2[_wgslsmith_index_u32(4294967295u | global0[_wgslsmith_index_u32(25361u, 21u)], 31u)], _wgslsmith_f_op_f32(-720f * 1095f)), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1738f, -500f, 631f, 926f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1371f, -1262f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-859f, 328f)), global3.x)), vec2<bool>(var_0.x, global3.x)), min(~(~global0[_wgslsmith_index_u32(57293u, 21u)]), _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)])), Struct_1(true, func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(400f, -325f, 259f))), countOneBits(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(91703u, 21u)], global0[_wgslsmith_index_u32(22286u, 21u)])), Struct_1(true, global3.x, vec4<f32>(-1298f, -1919f, 1140f, 944f), vec2<f32>(-880f, 1482f), global1[_wgslsmith_index_u32(0u, 10u)]), _wgslsmith_div_f32(1340f, -778f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1630f, -261f, 346f, -2045f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(878f)), _wgslsmith_f_op_f32(trunc(2275f))), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 26453u), vec2<u32>(13217u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38079u, 21u)], 21u)])), abs(vec2<u32>(0u, 1524u))), 21u)], 21u)], 10u)]))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -511f))), 1000f), global3.yx);
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(round(234f)))) + _wgslsmith_f_op_f32(740f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.x, var_1.c.x)))), ~u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.c.x, 1616f)))), u_input.b.x | -u_input.e, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, var_1.c.x))) - vec2<f32>(569f, _wgslsmith_f_op_f32(ceil(503f)))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~abs(7310u), 21u)], 31u)];
    let x = u_input.a;
    s_output = func_1();
}

