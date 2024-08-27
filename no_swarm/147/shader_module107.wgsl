struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: Struct_2,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 1> = array<Struct_5, 1>(Struct_5(-920f, Struct_4(Struct_3(0i, vec4<f32>(-105f, 520f, -2012f, 1086f), vec3<u32>(4294967295u, 13223u, 30452u)), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(vec4<u32>(41378u, 24069u, 30425u, 28547u)), vec2<i32>(0i, 0i), Struct_1(vec4<u32>(54428u, 1u, 55787u, 73753u)), vec3<i32>(-6381i, 22630i, 2147483647i), Struct_1(vec4<u32>(35043u, 15732u, 90107u, 4294967295u))), vec3<u32>(77246u, 4294967295u, 1u), vec4<i32>(-56946i, i32(-2147483648), 5878i, -1i)));

var<private> global1: bool;

var<private> global2: bool = false;

var<private> global3: array<Struct_2, 15>;

var<private> global4: array<Struct_1, 23>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: bool, arg_3: vec2<u32>) -> f32 {
    var var_0 = arg_1;
    let var_1 = var_0.a.b.zyx;
    var var_2 = var_1.xx;
    var var_3 = ~(-vec4<i32>(arg_1.a.a, arg_0.a, -60441i, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_1.a.a, arg_1.a.a, -27002i), vec4<i32>(-2147483647i, 2147483647i, u_input.a, arg_1.a.a))));
    var_3 = vec4<i32>(1i, arg_0.a, arg_1.a.a ^ var_0.a.a, arg_1.a.a);
    return 1314f;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    var var_0 = vec2<bool>(arg_0.b.x, select(-_wgslsmith_dot_vec2_i32(arg_1.b, vec2<i32>(arg_0.a.a, 46751i)), _wgslsmith_dot_vec3_i32(vec3<i32>(16519i, -33253i, 2147483647i), firstTrailingBit(arg_1.d)), true) < _wgslsmith_div_i32(~(-u_input.a), arg_1.b.x & 4087i));
    let var_1 = global0[_wgslsmith_index_u32(~(~(~arg_0.a.c.x)), 1u)];
    let var_2 = !vec4<bool>(!(reverseBits(arg_1.b.x) < _wgslsmith_sub_i32(-2147483647i, -15456i)), select((arg_0.a.c.x & 4294967295u) >= 1u, true, firstLeadingBit(arg_1.c.a.x) < reverseBits(arg_1.e.a.x)), arg_0.b.x, true);
    global4 = array<Struct_1, 23>();
    var_0 = !select(select(vec2<bool>(true, var_1.b.b.x), !var_1.b.b.zz, var_1.b.b.wz), select(!(!arg_0.b.wy), select(!arg_0.b.wx, select(var_1.b.b.zx, vec2<bool>(true, var_1.b.b.x), var_2.x), !var_2.x), arg_0.b.yw), vec2<bool>(all(select(var_2, var_2, false)), any(vec2<bool>(arg_0.b.x, true))));
    return arg_0.a.b.x;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: f32, arg_3: Struct_5) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_3.b, Struct_2(Struct_1(vec4<u32>(4294967295u, arg_1.c.x, arg_3.b.a.c.x, arg_1.c.x)), countOneBits(arg_3.c.b), arg_3.c.e, vec3<i32>(-30922i, arg_3.b.a.a, -21360i), Struct_1(vec4<u32>(4294967295u, arg_1.c.x, arg_3.b.a.c.x, 40822u))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.b.a.b.x, arg_3.a))), arg_2)), arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(403f - arg_2))))));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -147f)), -564f)), Struct_4(Struct_3(-2147483647i, arg_1.b, min(~vec3<u32>(arg_1.c.x, arg_1.c.x, arg_3.b.a.c.x), arg_3.b.a.c)), select(!(!vec4<bool>(true, arg_3.b.b.x, arg_0, arg_3.b.b.x)), arg_3.b.b, true)), Struct_2(Struct_1(~(~vec4<u32>(0u, arg_1.c.x, arg_1.c.x, 78483u))), -_wgslsmith_mult_vec2_i32(arg_3.c.d.yz, firstTrailingBit(arg_3.e.zw)), Struct_1(vec4<u32>(45655u, ~0u, _wgslsmith_dot_vec4_u32(arg_3.c.e.a, vec4<u32>(arg_1.c.x, arg_3.b.a.c.x, arg_3.b.a.c.x, arg_3.d.x)), arg_1.c.x)), min(~vec3<i32>(u_input.a, arg_1.a, u_input.a), firstTrailingBit(arg_3.e.zyy)) << (~(~vec3<u32>(arg_1.c.x, arg_3.d.x, arg_1.c.x)) % vec3<u32>(32u)), Struct_1(vec4<u32>(arg_1.c.x, ~4294967295u, 58660u, ~3318u))), min(arg_1.c, vec3<u32>(~min(1u, 0u), 4294967295u, ~1u)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, arg_3.e.x, u_input.a, -1i), arg_3.e), -firstLeadingBit(reverseBits(arg_3.e))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.b.x)), arg_1.b.x, _wgslsmith_f_op_f32(ceil(1653f)), arg_3.a);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, -804f))), -1268f, -270f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2155f, 1108f), _wgslsmith_div_f32(283f, -191f))))), _wgslsmith_f_op_f32(701f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(999f)) - _wgslsmith_f_op_f32(-arg_1.b.x))))));
    var var_2 = select(!vec2<bool>(!(!arg_0), true), vec2<bool>(var_1.b.b.x, true), !vec2<bool>(false, arg_3.b.b.x));
    return countOneBits(_wgslsmith_dot_vec3_u32(arg_1.c, ~(var_1.d >> (vec3<u32>(arg_1.c.x, 1u, var_1.b.a.c.x) % vec3<u32>(32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = true;
    var var_1 = global0[_wgslsmith_index_u32(~arg_0.a.x & 4294967295u, 1u)];
    global2 = false;
    global2 = false;
    var var_2 = 13422i;
    return select(!(!var_1.b.b), vec4<bool>(all(select(vec3<bool>(true, true, true), !vec3<bool>(var_1.b.b.x, var_1.b.b.x, var_1.b.b.x), var_1.b.b.x)), var_1.b.a.c.x != var_1.d.x, var_1.b.b.x, var_1.b.b.x), select(var_1.b.b, vec4<bool>(any(vec3<bool>(var_1.b.b.x, var_1.b.b.x, true)) & (arg_3.e.a.x < 66676u), !var_1.b.b.x, false, _wgslsmith_f_op_f32(var_1.a * var_1.b.a.b.x) < -1089f), !var_1.b.b));
}

fn func_5(arg_0: vec4<bool>) -> Struct_1 {
    global4 = array<Struct_1, 23>();
    global2 = true;
    var var_0 = func_4(Struct_1(select(~(~vec4<u32>(0u, 52317u, 4294967295u, 10658u)), firstTrailingBit(vec4<u32>(4294967295u, 36882u, 0u, 33015u)), any(arg_0))), reverseBits(_wgslsmith_mult_u32(1u, 5261u)), _wgslsmith_mult_vec4_i32(firstLeadingBit(reverseBits(vec4<i32>(-10295i, -14013i, u_input.a, -1i))) & ~abs(vec4<i32>(2147483647i, 23551i, -53792i, u_input.a)), -(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ countOneBits(vec4<i32>(-9645i, u_input.a, -2147483647i, u_input.a)))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, ~4294967295u >> (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(60022u, 108050u, 0u, 1u))), _wgslsmith_mod_u32(abs(1u), 69277u) ^ _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(7316u, 13385u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 18401u, 0u)))), 15u)]).x;
    var var_1 = ~firstLeadingBit(_wgslsmith_add_u32(countOneBits(~69738u), firstLeadingBit(_wgslsmith_div_u32(0u, 1u))));
    let var_2 = arg_0;
    return global4[_wgslsmith_index_u32(abs(~1u), 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-369f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -364f), _wgslsmith_f_op_f32(1000f * 536f), false)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(332f + -866f), -1000f, true))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2003f + 927f) + _wgslsmith_f_op_f32(func_1(Struct_3(-55312i, vec4<f32>(1000f, -570f, -1035f, -1261f), vec3<u32>(14086u, 54386u, 76728u)), Struct_4(Struct_3(u_input.a, vec4<f32>(-1166f, 1977f, -627f, -240f), vec3<u32>(22480u, 28844u, 77900u)), vec4<bool>(false, false, true, false)), true, vec2<u32>(48351u, 91764u))))));
    let var_0 = 4294967295u;
    global3 = array<Struct_2, 15>();
    global2 = all(vec3<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -960f), _wgslsmith_f_op_f32(sign(530f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(327f - -493f) - _wgslsmith_f_op_f32(-257f - -685f)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true))));
    global3 = array<Struct_2, 15>();
    var var_1 = func_5(func_4(Struct_1(~(~vec4<u32>(var_0, 1u, 32519u, var_0))), _wgslsmith_mod_u32(func_2(any(vec2<bool>(true, true)), Struct_3(0i, vec4<f32>(213f, -377f, 463f, -920f), vec3<u32>(4294967295u, 0u, 2253u)), _wgslsmith_f_op_f32(1062f + -334f), global0[_wgslsmith_index_u32(~90297u, 1u)]), var_0), ~vec4<i32>(-1i, 13371i, u_input.a, 9896i) & vec4<i32>(~u_input.a, u_input.a, -1i, u_input.a >> (10466u % 32u)), global3[_wgslsmith_index_u32(~firstLeadingBit(var_0), 15u)]));
    let var_2 = ~select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a | 10306i, u_input.a | u_input.a, -2147483647i), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(u_input.a, u_input.a, 2147483647i) | vec3<i32>(50084i, 1i, u_input.a))), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-36473i, u_input.a, u_input.a)), ~vec3<i32>(1i, 2147483647i, 2147483647i) | firstLeadingBit(vec3<i32>(35671i, -20545i, u_input.a)), firstLeadingBit(vec3<i32>(u_input.a, -15958i, -31806i))), true);
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, max(select(38903i, ~var_2.x, true), u_input.a), ~(~countOneBits(var_1.a.xxx)), (_wgslsmith_dot_vec3_i32(-var_2, ~var_2) << (19900u % 32u)) & -u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, -2147483647i, 4655i, countOneBits(-1i)), abs(countOneBits(reverseBits(vec4<i32>(u_input.a, var_2.x, var_2.x, u_input.a)))), vec4<i32>(var_2.x, -(u_input.a | 2147483647i), _wgslsmith_mult_i32(var_2.x, -43124i), reverseBits(7833i))));
}

