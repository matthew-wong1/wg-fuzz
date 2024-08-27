struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-1510f, 423f), vec2<f32>(426f, -205f), vec2<f32>(-1000f, -643f), vec2<f32>(1737f, 113f), vec2<f32>(-533f, -408f), vec2<f32>(739f, 794f), vec2<f32>(-800f, 1000f), vec2<f32>(235f, 718f), vec2<f32>(787f, -203f), vec2<f32>(1000f, -1942f), vec2<f32>(414f, 1000f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool) -> vec2<u32> {
    let var_0 = ~abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(13480u, 21109u)), 1u, select(58062u, 34978u, true) & 1u, ~min(22598u, 42275u)));
    global0 = array<vec2<f32>, 21>();
    global3 = array<vec2<f32>, 11>();
    global2 = array<Struct_1, 16>();
    let var_1 = Struct_1(select(select(vec4<bool>(true, true, any(vec3<bool>(true, false, arg_1)), !arg_1), select(select(vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true), false), vec4<bool>(true, true, true, true), arg_1), true), !vec4<bool>(!arg_1, false, arg_1, !arg_1), vec4<bool>(arg_1, all(vec2<bool>(false, arg_1)), true, !(!arg_1))), arg_0, _wgslsmith_dot_vec4_i32(~(-countOneBits(vec4<i32>(u_input.a, -32353i, u_input.a, u_input.a))), vec4<i32>(~1i, -1i, ~firstTrailingBit(-16600i), -_wgslsmith_mult_i32(-1i, -1i))), var_0.xx, !select(!select(vec4<bool>(false, arg_1, true, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1), arg_1), vec4<bool>(true, true, true, true), vec4<bool>(!arg_1, arg_1, true, true)));
    return var_0.yy;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<i32>) -> u32 {
    global2 = array<Struct_1, 16>();
    var var_0 = func_3(116f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1761f * _wgslsmith_f_op_f32(max(281f, 1105f))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -901f)));
    let var_1 = Struct_1(!vec4<bool>(true, true, any(vec2<bool>(true, true)), all(vec3<bool>(true, true, true))), -990f, 1i, vec2<u32>(~(~44652u), ~arg_1.x) ^ (abs(~arg_1.xz) ^ arg_1.yy), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(false, false, true)), !select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false)), any(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), true)))));
    global1 = 4853i;
    let var_2 = var_1.a.x;
    return ~(7194u << (_wgslsmith_sub_u32(var_0.x, 0u) % 32u)) >> (func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b - -1955f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(183f, var_1.b)))), select(var_1.a.x, !var_1.a.x && true, var_1.a.x)).x % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~select(vec3<u32>(arg_3.d.x, 44750u, arg_3.d.x), countOneBits(vec3<u32>(arg_0.d.x, 55627u, 5516u)), false), vec3<u32>(~(arg_3.d.x >> (1098u % 32u)), arg_3.d.x, ~func_3(arg_3.b, arg_3.a.x).x), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, arg_2.d.x, arg_0.d.x), vec3<u32>(arg_3.d.x, 19422u, arg_2.d.x) | vec3<u32>(27384u, arg_2.d.x, arg_2.d.x))), ~reverseBits(vec3<u32>(4294967295u, arg_0.d.x, 31632u)));
    var var_1 = arg_0;
    var var_2 = firstTrailingBit(_wgslsmith_sub_i32(~(abs(13552i) ^ arg_2.c), 1i));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-246f, -236f, arg_3.b, -578f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, _wgslsmith_f_op_f32(var_1.b - -240f), _wgslsmith_div_f32(-1000f, var_1.b), _wgslsmith_f_op_f32(f32(-1f) * -1206f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.b, arg_0.b, -158f, 837f))))) * vec4<f32>(_wgslsmith_f_op_f32(select(-1835f, 1076f, arg_3.a.x)), _wgslsmith_f_op_f32(101f - -155f), -1000f, 122f)));
    let var_4 = arg_0;
    return select(vec2<bool>(true || (reverseBits(0u) > (93805u << (var_0.x % 32u))), arg_0.b <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-429f + 534f))), var_1.e.xz, !arg_3.a.x);
}

fn func_5(arg_0: i32, arg_1: vec2<bool>) -> i32 {
    let var_0 = Struct_1(!vec4<bool>(!all(vec4<bool>(arg_1.x, arg_1.x, true, true)), any(!vec3<bool>(false, arg_1.x, arg_1.x)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1057f - _wgslsmith_f_op_f32(353f - 213f)) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, 1530f), _wgslsmith_f_op_f32(min(-898f, -2448f)))))), arg_0 ^ arg_0, firstLeadingBit(~(~_wgslsmith_div_vec2_u32(vec2<u32>(9615u, 59105u), vec2<u32>(5596u, 4294967295u)))), !(!select(!vec4<bool>(false, arg_1.x, false, arg_1.x), !vec4<bool>(arg_1.x, true, false, true), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<bool>(true, false, arg_1.x, arg_1.x), vec4<bool>(false, false, false, arg_1.x)))));
    var var_1 = vec2<u32>(4785u, 1u);
    let var_2 = var_0;
    var var_3 = var_0;
    return _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(max(_wgslsmith_clamp_i32(i32(-1i) * -44931i, ~(-2147483647i), _wgslsmith_add_i32(-2147483647i, var_3.c)), 19461i), u_input.a));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<i32>) -> u32 {
    let var_0 = Struct_1(vec4<bool>(arg_1.x, true, !(~1u >= arg_0.d.x), true), arg_0.b, func_5(i32(-1i) * -1i, func_4(global2[_wgslsmith_index_u32(func_2(-arg_0.c, ~vec3<u32>(31060u, 9189u, 0u), ~arg_2.yy), 16u)], any(arg_0.e) || false, arg_0, Struct_1(select(arg_1, vec4<bool>(true, true, false, true), arg_0.e), _wgslsmith_f_op_f32(step(227f, -656f)), _wgslsmith_add_i32(-1i, 2147483647i), vec2<u32>(arg_0.d.x, arg_0.d.x), !arg_0.e))), vec2<u32>(18133u, firstLeadingBit(_wgslsmith_add_u32(~arg_0.d.x, _wgslsmith_sub_u32(49934u, arg_0.d.x)))), !vec4<bool>(true, any(!arg_1), arg_1.x, !(arg_0.a.x || false)));
    let var_1 = Struct_1(!select(!vec4<bool>(arg_1.x, arg_0.a.x, true, arg_1.x), arg_0.a, vec4<bool>(all(vec3<bool>(true, var_0.a.x, true)), true, false, all(var_0.e.xw))), var_0.b, arg_2.x, vec2<u32>(~abs(var_0.d.x), var_0.d.x) & (_wgslsmith_clamp_vec2_u32(vec2<u32>(7962u, var_0.d.x), ~arg_0.d, abs(var_0.d)) ^ vec2<u32>(~0u, ~var_0.d.x)), select(vec4<bool>(select(false, !arg_1.x, select(false, arg_0.e.x, arg_1.x)), false, true, func_4(Struct_1(vec4<bool>(arg_1.x, false, true, false), arg_0.b, 1i, vec2<u32>(20691u, 1u), var_0.e), arg_1.x, Struct_1(vec4<bool>(arg_0.e.x, arg_0.e.x, arg_1.x, arg_0.e.x), arg_0.b, arg_2.x, vec2<u32>(arg_0.d.x, 87999u), arg_1), global2[_wgslsmith_index_u32(abs(101812u), 16u)]).x), select(!vec4<bool>(var_0.a.x, true, true, true), select(vec4<bool>(true, false, false, arg_1.x), !arg_1, false), arg_0.a), arg_1));
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(-var_1.b);
    var var_4 = Struct_1(vec4<bool>(!(var_0.e.x & true), var_1.e.x, true, all(!select(var_2.e.wwx, arg_1.wzw, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1999f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.b, var_3), _wgslsmith_f_op_f32(-var_0.b))))), ~u_input.a, vec2<u32>(_wgslsmith_clamp_u32(1u, 46398u, ~(~5058u)), abs(firstLeadingBit(4771u))), select(!(!vec4<bool>(var_1.a.x, var_1.a.x, arg_1.x, false)), !vec4<bool>(false, var_2.e.x, false & arg_0.a.x, var_2.e.x && false), false));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(0u, 16u)];
    global2 = array<Struct_1, 16>();
    let var_1 = max(~(-16203i), u_input.a & 1672i);
    var var_2 = !(!(!select(select(var_0.a, var_0.a, var_0.e.x), select(var_0.e, var_0.a, var_0.a.x), select(var_0.e, var_0.e, var_0.a))));
    var var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(42920u, ~(var_0.d.x | func_1(global2[_wgslsmith_index_u32(15400u, 16u)], var_0.e, vec3<i32>(var_1, u_input.a, var_0.c))), 7348u, ~(~0u)), vec4<u32>(var_0.d.x, ~4294967295u, var_0.d.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(105272u, var_0.d.x, 33593u), vec3<u32>(4294967295u, 1u, 0u)), countOneBits(vec3<u32>(var_0.d.x, var_0.d.x, var_0.d.x)))));
    var_3 = vec4<u32>(1u, var_3.x, ~1u, func_2(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, 0i), vec2<i32>(var_1, u_input.a)) >> (~var_0.d.x % 32u), i32(-1i) * -65301i), _wgslsmith_mod_vec3_u32(min(vec3<u32>(36977u, var_3.x, 1u) & var_3.zyx, ~vec3<u32>(0u, 36945u, 0u)), abs(vec3<u32>(4294967295u, 40571u, 1u))), (-vec2<i32>(var_1, u_input.a) ^ ~vec2<i32>(2147483647i, -5213i)) >> (vec2<u32>(1u, func_1(Struct_1(vec4<bool>(true, var_2.x, var_0.e.x, true), var_0.b, -1i, var_3.yw, var_0.a), vec4<bool>(true, var_0.a.x, false, var_0.a.x), vec3<i32>(var_0.c, 12569i, 2147483647i))) % vec2<u32>(32u))));
    var var_4 = global2[_wgslsmith_index_u32(func_1(global2[_wgslsmith_index_u32(~var_3.x, 16u)], select(select(select(!var_0.a, !vec4<bool>(var_0.e.x, false, false, true), var_0.a.x), select(vec4<bool>(true, var_0.e.x, false, false), !var_0.a, false), any(!var_0.e.xz)), !vec4<bool>(true, func_4(Struct_1(vec4<bool>(true, false, false, var_2.x), -763f, var_1, vec2<u32>(49439u, 4294967295u), vec4<bool>(true, true, var_0.a.x, false)), var_2.x, global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(var_0.d.x, 16u)]).x, all(var_0.a.yxw), true), select(var_0.a, select(select(vec4<bool>(false, var_2.x, true, var_2.x), var_0.a, false), var_0.a, select(false, false, true)), all(vec3<bool>(var_2.x, true, true)))), vec3<i32>(-31641i, _wgslsmith_sub_i32(43749i, var_0.c) << (var_0.d.x % 32u), var_1)), 16u)];
    global2 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(-var_1, countOneBits(var_4.c), var_1), max(vec4<i32>(i32(-1i) * -u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(5266i, 57519i, var_0.c), _wgslsmith_mult_vec3_i32(vec3<i32>(4854i, 15160i, -11120i), vec3<i32>(var_1, 1i, var_4.c))), abs(var_1) & var_1, _wgslsmith_mod_i32(min(var_0.c, var_0.c), _wgslsmith_sub_i32(var_1, -19825i))), vec4<i32>(min(2147483647i >> (var_4.d.x % 32u), -1i), 0i, var_0.c, -(var_1 >> (59974u % 32u)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(951f, var_4.b), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_f32(sign(308f)))), _wgslsmith_div_vec2_f32(vec2<f32>(var_4.b, _wgslsmith_f_op_f32(step(588f, var_4.b))), vec2<f32>(var_4.b, var_4.b))), vec2<u32>(var_3.x, ~(~(~42067u))), min(firstLeadingBit(var_4.c), max(-2147483647i, select(1i, var_4.c, true) | -u_input.a)));
}

