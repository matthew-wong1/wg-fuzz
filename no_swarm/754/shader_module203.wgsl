struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec3<i32>,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: array<Struct_5, 9>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> vec2<f32> {
    global1 = array<Struct_5, 9>();
    global0 = array<u32, 13>();
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(u_input.e, select(u_input.e ^ ~u_input.e, abs(firstTrailingBit(arg_0.c.a)), any(!vec4<bool>(true, false, true, arg_1)))), ~u_input.c.x >> (~702u % 32u), arg_3.a, 1u, _wgslsmith_f_op_vec2_f32(select(arg_0.c.e, arg_0.c.e, any(vec4<bool>(true, false, any(arg_0.b), all(vec2<bool>(arg_3.a, arg_1)))))));
    var_0 = arg_0.a;
    global1 = array<Struct_5, 9>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.x, _wgslsmith_f_op_f32(-arg_0.c.e.x)) + _wgslsmith_f_op_vec2_f32(-arg_0.c.e));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(max(vec4<u32>(u_input.e.x, max(1647u, u_input.b), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 13u)], 13u)], u_input.e.x), ~global0[_wgslsmith_index_u32(u_input.e.x, 13u)]), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.e, u_input.e), ~vec4<u32>(u_input.e.x, u_input.e.x, global0[_wgslsmith_index_u32(4294967295u, 13u)], 42064u))), _wgslsmith_mod_i32(~u_input.c.x >> (4294967295u % 32u), ~(-9185i)), true, ~_wgslsmith_mod_u32(u_input.b, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], u_input.b, 1u), 1i, false, 6125u, vec2<f32>(374f, 265f)), vec2<bool>(true, false), Struct_1(vec4<u32>(22277u, 0u, 0u, global0[_wgslsmith_index_u32(51061u, 13u)]), u_input.d.x, true, 42460u, vec2<f32>(-996f, 838f))), any(vec3<bool>(false, true, false)), Struct_3(true), Struct_3(true))))), vec2<bool>(!(any(vec3<bool>(false, true, true)) & any(vec4<bool>(true, false, false, false))), true), Struct_1(select(_wgslsmith_sub_vec4_u32(~u_input.e, u_input.e), u_input.e, true), 0i, true, min(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(47918u, 13u)] << (u_input.e.x % 32u), 13u)], ~4294967295u), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(265f - -279f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-812f + -926f), -1566f))));
    global1 = array<Struct_5, 9>();
    var_0 = Struct_2(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(u_input.e.x, 13u)], ~_wgslsmith_sub_u32(1u, u_input.b), ~global0[_wgslsmith_index_u32(firstLeadingBit(0u), 13u)], min(var_0.a.a.x, _wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(1u, 13u)]))), var_0.a.b, var_0.c.c, ~(global0[_wgslsmith_index_u32(4294967295u, 13u)] >> (_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 0u) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.e)))), vec2<bool>(1i == _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.a.b, -21693i), u_input.a), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.a.b, u_input.d.x), u_input.d) >= 22490i), Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, var_0.c.a.x, u_input.b, 37391u) | firstLeadingBit(vec4<u32>(var_0.c.a.x, global0[_wgslsmith_index_u32(var_0.a.d, 13u)], 37489u, 38427u)), firstLeadingBit(abs(u_input.e))), firstLeadingBit(~(i32(-1i) * -805i)), select(!(var_0.c.c & var_0.c.c), any(select(vec3<bool>(false, false, true), vec3<bool>(var_0.b.x, true, false), vec3<bool>(var_0.c.c, var_0.b.x, true))), var_0.c.c), ~var_0.a.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-194f, 952f) - _wgslsmith_f_op_vec2_f32(-var_0.a.e)) * _wgslsmith_div_vec2_f32(var_0.a.e, var_0.a.e))));
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a.a.x), var_0.c.a.yw), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_0.a.a.x, 13u)], global0[_wgslsmith_index_u32(115022u, 13u)]), global0[_wgslsmith_index_u32(var_0.c.a.x, 13u)] & 0u), 13u)], _wgslsmith_sub_u32(45824u, ~global0[_wgslsmith_index_u32(var_0.c.d, 13u)])), 13u)], 13u)])), 9u)];
    global1 = array<Struct_5, 9>();
    return var_1.e.a.e;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-288f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(968f)) + _wgslsmith_f_op_f32(-511f * -1000f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(266f, -291f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1137f * 307f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1534f - _wgslsmith_f_op_f32(f32(-1f) * -597f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-171f - -1000f))))));
    var_0 = vec2<f32>(var_0.x, 1541f);
    let var_1 = _wgslsmith_dot_vec4_u32(u_input.e, u_input.e);
    global1 = array<Struct_5, 9>();
    let var_2 = Struct_1(vec4<u32>(~0u, ~_wgslsmith_clamp_u32(~1u, ~37997u, var_1 | global0[_wgslsmith_index_u32(47204u, 13u)]), global0[_wgslsmith_index_u32(~u_input.e.x, 13u)], (global0[_wgslsmith_index_u32(var_1, 13u)] | (1u >> (global0[_wgslsmith_index_u32(4294967295u, 13u)] % 32u))) << (_wgslsmith_clamp_u32(~0u, var_1, 47252u) % 32u)), arg_1, arg_2.x, ~52176u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 779f) + vec2<f32>(1000f, -347f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(505f, var_0.x))))), !arg_2.x)), arg_2.zz)));
    return 1030f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(true | (_wgslsmith_f_op_f32(func_1(1i ^ u_input.a, firstTrailingBit(1i), vec3<bool>(true, true, true))) <= _wgslsmith_f_op_f32(abs(646f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-393f, 994f), vec2<f32>(-641f, 1008f))) + vec2<f32>(-222f, 848f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(97376u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u), 0i, var_0.a, 2080u, vec2<f32>(-364f, 492f)), select(vec2<bool>(true, true), vec2<bool>(false, var_0.a), true), Struct_1(vec4<u32>(0u, 73747u, global0[_wgslsmith_index_u32(u_input.b, 13u)], u_input.e.x), 8875i, false, global0[_wgslsmith_index_u32(u_input.b, 13u)], vec2<f32>(768f, -1000f))), !all(vec2<bool>(var_0.a, var_0.a)), Struct_3(var_0.a), Struct_3(var_0.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 152f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(343f, -1000f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -744f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-455f, 187f)))))));
    global1 = array<Struct_5, 9>();
    let var_2 = ~(countOneBits(reverseBits(~4294967295u)) >> (max(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), global0[_wgslsmith_index_u32(4294967295u, 13u)] >> (0u % 32u), ~u_input.b), 72632u) % 32u));
    let var_3 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~(~u_input.e.x), (global0[_wgslsmith_index_u32(4294967295u, 13u)] >> (90305u % 32u)) ^ abs(22631u), _wgslsmith_div_u32(~1u, _wgslsmith_mod_u32(var_2, 1u)), 37961u), vec4<u32>(~14873u, firstLeadingBit(23741u), global0[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_clamp_u32(~18464u, _wgslsmith_add_u32(var_2, u_input.e.x), ~4294967295u))), _wgslsmith_sub_i32(-11090i, u_input.c.x), all(vec2<bool>(var_0.a, !var_0.a)), u_input.e.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(393f, -1875f), var_1)))), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(u_input.e, 15022i, true, 53742u, vec2<f32>(-370f, var_1.x)), vec2<bool>(var_0.a, var_0.a), Struct_1(vec4<u32>(var_2, u_input.b, u_input.e.x, var_2), u_input.c.x, false, 19621u, vec2<f32>(-301f, -743f))), all(vec2<bool>(false, var_0.a)) && true, Struct_3(var_1.x == var_1.x), Struct_3(!var_0.a))), true)));
    let var_4 = -253f;
    var var_5 = firstLeadingBit(0u) ^ u_input.b;
    var var_6 = global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(global0[_wgslsmith_index_u32(3243u, 13u)], 4294967295u, 15094u, 4294967295u), vec4<u32>(17834u, u_input.e.x, 36019u, 4294967295u)), vec4<u32>(~var_3.a.x, ~var_2, _wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.b, 13u)], 1u)))), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1451f * _wgslsmith_f_op_f32(475f - 778f))))));
}

