struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32) -> bool {
    return all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, all(vec4<bool>(false, true, false, false))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2086f, _wgslsmith_f_op_f32(1000f * -567f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(197f, 423f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(125f, -2480f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1329f, -631f))))));
    global0 = false;
    let var_1 = Struct_1(select(vec2<bool>(arg_1.x, select(true, true, func_3(1532f))), !select(arg_3.a, arg_3.a, !arg_3.a.x), _wgslsmith_dot_vec2_i32(u_input.a & vec2<i32>(-13217i, 6683i), ~vec2<i32>(u_input.a.x, 1i)) <= (firstLeadingBit(-2147483647i) & arg_2)));
    let var_2 = ~(~(~4294967295u));
    global0 = any(vec3<bool>(!var_1.a.x, any(select(!arg_1.yzw, arg_1.xwz, false)), any(select(arg_1.zy, arg_3.a, true | var_1.a.x))));
    return 4294967295u;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec3<u32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = 1303f;
    var var_1 = min(countOneBits(vec2<u32>(_wgslsmith_add_u32(1u, 1u), _wgslsmith_clamp_u32(19110u, arg_2.x, 27001u))), select(vec2<u32>(~20503u, ~20076u), firstLeadingBit(vec2<u32>(arg_2.x, arg_3.x)), select(vec2<bool>(false, false), select(vec2<bool>(arg_0, true), vec2<bool>(false, false), false), !vec2<bool>(arg_1, arg_0)))) & ~vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_2.x, 43753u), arg_2.x, arg_3.x), 1u);
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_0, 945f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1869f, -264f, var_0)), vec3<f32>(_wgslsmith_f_op_f32(var_0 * var_0), 1562f, _wgslsmith_div_f32(var_0, var_0))))));
    global0 = select(false || (-56928i < u_input.a.x), var_1.x < arg_2.x, true);
    let var_3 = _wgslsmith_dot_vec3_u32(arg_2, arg_2);
    return Struct_1(!select(select(!vec2<bool>(arg_0, false), !vec2<bool>(arg_1, false), true), vec2<bool>(!arg_1, func_3(-2277f)), vec2<bool>(true, true)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> bool {
    let var_0 = select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), !vec3<bool>(select(true, true, arg_1.x >= arg_1.x), min(u_input.a.x, 2147483647i) > 1i, true));
    global0 = true;
    var var_1 = func_4(false, !any(!vec3<bool>(true, var_0.x, var_0.x)), ~vec3<u32>(arg_1.x, ~arg_1.x, arg_1.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(39024u, 4294967295u, 4294967295u << (~arg_1.x % 32u)), _wgslsmith_div_vec3_u32(vec3<u32>(func_2(arg_1.x, vec4<bool>(false, var_0.x, false, var_0.x), 0i, Struct_1(vec2<bool>(var_0.x, var_0.x))), arg_1.x, max(arg_1.x, 110430u)), ~vec3<u32>(arg_1.x, arg_1.x, arg_1.x)), vec3<u32>(1u | arg_1.x, 16954u, 6940u) & (vec3<u32>(arg_1.x, 103085u, 1u) << (~vec3<u32>(arg_1.x, arg_1.x, 107487u) % vec3<u32>(32u)))));
    var_1 = Struct_1(select(vec2<bool>(~u_input.a.x >= -u_input.a.x, true), func_4(false, ~u_input.a.x == ~u_input.a.x, vec3<u32>(arg_1.x, 4294967295u, arg_1.x << (arg_1.x % 32u)), vec3<u32>(4294967295u, _wgslsmith_sub_u32(arg_1.x, arg_1.x), max(6299u, 4294967295u))).a, var_0.zx));
    var_1 = func_4(!(func_4(true, true, firstLeadingBit(vec3<u32>(0u, 1u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(7738u, arg_1.x, 83650u), vec3<u32>(arg_1.x, arg_1.x, arg_1.x))).a.x && var_0.x), !(any(select(vec2<bool>(var_1.a.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(var_1.a.x, true))) || var_0.x), ~((vec3<u32>(4294967295u, arg_1.x, arg_1.x) & _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 78421u, arg_1.x), vec3<u32>(arg_1.x, arg_1.x, arg_1.x))) & min(~vec3<u32>(79403u, arg_1.x, arg_1.x), reverseBits(vec3<u32>(arg_1.x, arg_1.x, arg_1.x)))), vec3<u32>(1u, ~(~arg_1.x), ~abs(~4294967295u)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~countOneBits(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 0u)), ~0u, ~0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(69767u, 0u, 38681u, 1u), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(13949u, 0u, 2933u, 0u), select(vec4<u32>(1u, 20688u, 54458u, 83023u), vec4<u32>(41694u, 4294967295u, 0u, 4294967295u), vec4<bool>(false, false, true, true)))), true);
    global0 = false;
    global0 = all(select(!vec4<bool>(u_input.a.x != 40649i, var_0.x < var_0.x, true, true), vec4<bool>(true, true, true, true), vec4<bool>(!func_1(vec2<f32>(268f, 863f), var_0.xx), select(all(vec3<bool>(false, false, true)), false, true), !all(vec2<bool>(false, true)), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(555f, 1967f) * vec2<f32>(391f, -2049f)), _wgslsmith_add_vec2_u32(var_0.xx, vec2<u32>(47060u, var_0.x))))));
    let var_1 = func_4(func_4(any(vec4<bool>(false, true, true, true)), true, vec3<u32>(~57435u, 59332u << (var_0.x % 32u), var_0.x), vec3<u32>(firstLeadingBit(var_0.x), var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0.x, 0u), vec4<u32>(0u, var_0.x, 1u, 17683u)))).a.x & true, !all(vec3<bool>(true, true, true)) && true, min(_wgslsmith_mod_vec3_u32(var_0.zww, vec3<u32>(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 62333u, var_0.x, 26112u), vec4<u32>(49007u, var_0.x, var_0.x, var_0.x)), _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(0u, var_0.x, var_0.x, 1u)))), vec3<u32>(~1u, ~var_0.x, _wgslsmith_clamp_u32(0u, select(var_0.x, var_0.x, true), ~var_0.x))), ~vec3<u32>(4294967295u, var_0.x, _wgslsmith_add_u32(var_0.x, reverseBits(var_0.x))));
    let var_2 = _wgslsmith_div_f32(785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1918f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_2) - vec2<f32>(var_2, var_2)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-623f, var_2))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1699f, -124f), vec2<f32>(var_2, 180f))))) - vec2<f32>(var_2, -1367f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-255f, -1127f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) * vec2<f32>(var_2, var_2))))), !(!func_4(var_1.a.x, false, var_0.yzw, vec3<u32>(var_0.x, 27409u, 97884u)).a))));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, abs(1u), max(43222i, 0i), -1i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 15757i, u_input.a.x, 1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, 2147483647i, 0i, -64832i)), -firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, 48387i, 0i))), vec4<i32>(u_input.a.x, -max(1i, 2147483647i), u_input.a.x, reverseBits(u_input.a.x))));
}

