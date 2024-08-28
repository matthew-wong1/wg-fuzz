struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: vec2<f32>;

var<private> global2: vec2<u32>;

var<private> global3: vec3<f32> = vec3<f32>(1558f, -260f, -1086f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    let var_0 = ~u_input.a.x;
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_1)))) * -1362f), arg_0.x, global3.x) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global3.x, arg_0.x)))))))));
    var var_1 = global0[_wgslsmith_index_u32(17356u, 16u)];
    let var_2 = Struct_3(all(vec4<bool>(true, var_1.x, true, false)), Struct_1(~_wgslsmith_clamp_u32(firstLeadingBit(1u), select(7928u, u_input.a.x, true), ~var_0), false, ~firstTrailingBit(56851i), vec2<i32>(select(56338i, min(-2147483647i, -2147483647i), all(global0[_wgslsmith_index_u32(0u, 16u)])), 16610i)), _wgslsmith_clamp_vec4_u32(min(countOneBits(~vec4<u32>(0u, 107856u, 4294967295u, global2.x)), vec4<u32>(abs(u_input.a.x), ~u_input.a.x, _wgslsmith_sub_u32(0u, global2.x), var_0)), vec4<u32>(~_wgslsmith_clamp_u32(74939u, 4294967295u, u_input.a.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.xx, u_input.a.zx), u_input.a.wx), var_0, min(var_0, ~global2.x)), _wgslsmith_mult_vec4_u32((u_input.a ^ vec4<u32>(global2.x, global2.x, global2.x, 27060u)) ^ select(vec4<u32>(u_input.a.x, 76208u, u_input.a.x, global2.x), vec4<u32>(24000u, 1u, 4294967295u, u_input.a.x), var_1.x), vec4<u32>(u_input.a.x, _wgslsmith_add_u32(var_0, u_input.a.x), _wgslsmith_add_u32(var_0, var_0), min(980u, 37105u)))), true, Struct_1(~u_input.a.x, false, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-52367i, 341i, 1i, -1i), vec4<i32>(1i, -13635i, 0i, -71743i)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 11521u, 56329u), vec3<u32>(var_0, 4294967295u, 1u)) % 32u)), select(select(max(vec2<i32>(63976i, -6600i), vec2<i32>(-2147483647i, 0i)), vec2<i32>(63491i, -2147483647i), all(vec3<bool>(var_1.x, var_1.x, false))), _wgslsmith_sub_vec2_i32(~vec2<i32>(-34317i, 12851i), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -28563i), vec2<i32>(-17082i, 19075i))), vec2<bool>(var_1.x, var_1.x))));
    var var_3 = vec3<bool>(!(all(select(vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, false, false), true)) || !all(vec3<bool>(var_1.x, true, false))), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1, 1096f)), _wgslsmith_f_op_f32(-762f - -1436f)) <= _wgslsmith_f_op_f32(f32(-1f) * -979f)), var_1.x);
    return -1092f;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1468f, _wgslsmith_div_f32(global1.x, global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 701f)), global1.x);
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(-184f, global1.x), global3.x)) + -597f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(770f + global3.x) * _wgslsmith_f_op_f32(f32(-1f) * -1645f))))), all(vec3<bool>(any(!global0[_wgslsmith_index_u32(4294967295u, 16u)]), select(true, 13396u <= u_input.a.x, all(vec4<bool>(false, false, false, false))), false)), global3.x, Struct_1(4294967295u, false, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(21917i, arg_0, 2147483647i) | vec3<i32>(arg_0, arg_0, arg_0)), select(~vec3<i32>(-1i, -11470i, arg_0), _wgslsmith_add_vec3_i32(vec3<i32>(24714i, -2147483647i, 8287i), vec3<i32>(arg_0, -2147483647i, 18437i)), vec3<bool>(false, true, true))), vec2<i32>(_wgslsmith_mult_i32(arg_0 >> (61282u % 32u), ~(-2147483647i)), -19802i)));
    var var_2 = ~3236u;
    let var_3 = any(select(global0[_wgslsmith_index_u32(abs(firstLeadingBit(_wgslsmith_mult_u32(13414u, global2.x))), 16u)], select(vec2<bool>(true, -179f < global3.x), vec2<bool>(!var_1.b, false), var_1.b), var_1.b));
    var var_4 = any(vec4<bool>(any(vec2<bool>(var_3 | false, all(vec3<bool>(true, false, false)))), !(global2.x == 13756u) && var_1.b, any(!(!vec4<bool>(false, false, true, var_1.d.b))), all(select(global0[_wgslsmith_index_u32(24396u, 16u)], global0[_wgslsmith_index_u32(39502u, 16u)], true))));
    return global2.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = arg_0.xy;
    let var_1 = true;
    return Struct_1(max(_wgslsmith_div_u32(func_2(0i, _wgslsmith_mod_vec3_u32(u_input.a.ywz, vec3<u32>(44531u, global2.x, global2.x))), ~20958u), ~(~global2.x)), all(!select(vec2<bool>(arg_0.x, false), !vec2<bool>(true, var_1), arg_0.x)), countOneBits(-_wgslsmith_sub_i32(11960i, 1i) << (~u_input.a.x % 32u)), ~firstLeadingBit(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(18918i, -1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a.zw;
    let var_0 = Struct_3(select(_wgslsmith_clamp_i32(-1i, 1i, -28865i) >> (~u_input.a.x % 32u), 1i, any(vec3<bool>(true, true, true))) >= _wgslsmith_add_i32(-_wgslsmith_mult_i32(-1i, -2147483647i), abs(-1i)), func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1300f, -121f, global1.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, global1.x, global3.x)))))), vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, u_input.a.x, global2.x), vec3<u32>(68113u, u_input.a.x, 3499u))), u_input.a.x, min(55486u, firstLeadingBit(14321u)) & u_input.a.x, global2.x), false, Struct_1(abs(firstTrailingBit(~1u)), true, min(-38962i << ((global2.x & 0u) % 32u), _wgslsmith_add_i32(-13688i >> (u_input.a.x % 32u), _wgslsmith_sub_i32(-8524i, 0i))), vec2<i32>(65310i, 1i) << (vec2<u32>(u_input.a.x, 19392u) % vec2<u32>(32u))));
    let var_1 = var_0.c << (~var_0.c % vec4<u32>(32u));
    global0 = array<vec2<bool>, 16>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.xy * vec2<f32>(global3.x, -1000f)) - _wgslsmith_div_vec2_f32(global3.zz, global3.xz)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(global3.zx)));
}

