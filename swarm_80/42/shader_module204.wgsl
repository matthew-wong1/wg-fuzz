struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(1u), Struct_1(81492u), Struct_1(0u), Struct_1(0u), Struct_1(13709u), Struct_1(0u), Struct_1(2852u), Struct_1(0u), Struct_1(6361u), Struct_1(1u), Struct_1(4294967295u), Struct_1(1u), Struct_1(11057u), Struct_1(41565u), Struct_1(0u), Struct_1(9437u), Struct_1(4294967295u), Struct_1(0u), Struct_1(49232u), Struct_1(99559u), Struct_1(26952u), Struct_1(44505u), Struct_1(0u), Struct_1(53289u), Struct_1(0u), Struct_1(4294967295u), Struct_1(38580u), Struct_1(66285u), Struct_1(10045u), Struct_1(6850u), Struct_1(66249u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec3<bool>) -> vec3<u32> {
    let var_0 = ~countOneBits(u_input.a);
    global0 = array<Struct_1, 31>();
    var var_1 = arg_2.x;
    global0 = array<Struct_1, 31>();
    var var_2 = ~arg_0.a;
    return arg_2.zwx;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-430f, 675f))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1262f, var_0.x)))))))), _wgslsmith_mult_vec2_i32(firstTrailingBit(select(vec2<i32>(u_input.a.x, 20657i) << (vec2<u32>(0u, 22252u) % vec2<u32>(32u)), ~u_input.a.yy, true || arg_0)), u_input.a.zy), -17042i);
    global0 = array<Struct_1, 31>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1150f)), 1000f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1572f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * _wgslsmith_div_f32(151f, 1157f))) + -1000f));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.x)) * _wgslsmith_f_op_f32(func_3(false, Struct_1(1u)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1912f, arg_0.a.x))), _wgslsmith_f_op_f32(select(538f, _wgslsmith_f_op_f32(-arg_0.a.x), any(vec2<bool>(arg_1.x, arg_1.x)) != arg_1.x))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(arg_0.a)), reverseBits(-u_input.a.yz), firstTrailingBit(-(_wgslsmith_div_i32(arg_2, u_input.b) >> (~4294967295u % 32u))));
    let var_2 = Struct_2(vec2<f32>(1233f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1991f + _wgslsmith_f_op_f32(-var_0))))), ~select(vec2<i32>(_wgslsmith_mod_i32(u_input.b, u_input.a.x), -44159i), ~_wgslsmith_mult_vec2_i32(var_1.b, var_1.b), select(!arg_1, arg_1, vec2<bool>(false, true))), u_input.b << (1u % 32u));
    global0 = array<Struct_1, 31>();
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3((arg_1.x != true) || false, Struct_1(~0u)))));
    return var_1;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = global0[_wgslsmith_index_u32(abs(abs(~_wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(104417u, 1u), arg_1.x))), 31u)];
    let var_1 = _wgslsmith_mult_vec4_u32(~(~firstLeadingBit(vec4<u32>(4294967295u, 1u, 39468u, 1u)) << (vec4<u32>(15320u, func_1(global0[_wgslsmith_index_u32(26241u, 31u)], Struct_2(arg_3.a, vec2<i32>(1i, u_input.b), 17086i), vec4<u32>(53455u, arg_1.x, 1u, 118112u), vec3<bool>(arg_2, false, arg_0)).x, 1u, arg_1.x) % vec4<u32>(32u))), min(vec4<u32>(0u, abs(arg_1.x) | 1u, 63095u, var_0.a), (_wgslsmith_mod_vec4_u32(vec4<u32>(28897u, 0u, 1u, 1u), vec4<u32>(82150u, var_0.a, 2794u, var_0.a)) | vec4<u32>(1u, arg_1.x, var_0.a, 14021u)) & vec4<u32>(arg_1.x, arg_1.x >> (36578u % 32u), ~var_0.a, _wgslsmith_sub_u32(arg_1.x, arg_1.x))));
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    var var_2 = global0[_wgslsmith_index_u32(45132u, 31u)];
    return var_1.zwx;
}

fn func_5(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(max(1225f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -208f) - _wgslsmith_f_op_f32(-1000f - -939f))));
    global0 = array<Struct_1, 31>();
    var_0 = -592f;
    var var_1 = any(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false))) | any(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_2 = _wgslsmith_div_i32(~abs(_wgslsmith_mod_i32(u_input.a.x << (34553u % 32u), func_2(Struct_2(vec2<f32>(-542f, -858f), vec2<i32>(u_input.a.x, u_input.b), u_input.a.x), vec2<bool>(true, false), u_input.a.x, vec3<i32>(u_input.b, u_input.b, u_input.a.x)).b.x)), abs(u_input.b & _wgslsmith_div_i32(~39667i, min(22275i, 15263i))));
    return func_2(func_2(func_2(func_2(func_2(Struct_2(vec2<f32>(-890f, -739f), vec2<i32>(var_2, 43427i), -45075i), vec2<bool>(true, false), 8452i, u_input.a), select(vec2<bool>(true, true), vec2<bool>(false, true), true), _wgslsmith_clamp_i32(var_2, -1i, -1i), reverseBits(vec3<i32>(-15055i, u_input.b, -1i))), vec2<bool>(false, false), 48962i, u_input.a), vec2<bool>(true, true), i32(-1i) * -2147483647i, u_input.a), vec2<bool>(true, true), _wgslsmith_dot_vec3_i32((reverseBits(u_input.a) & abs(u_input.a)) | (vec3<i32>(36816i, var_2, -20109i) & (vec3<i32>(2147483647i, -30628i, var_2) << (vec3<u32>(1687u, 37475u, 91199u) % vec3<u32>(32u)))), select(u_input.a, u_input.a, select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), true))), -vec3<i32>(~(24455i ^ u_input.b), u_input.a.x, i32(-1i) * -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_1 = func_5(select(vec3<u32>(1u, 1u, 1u), ~func_4(false, func_1(global0[_wgslsmith_index_u32(38917u, 31u)], Struct_2(vec2<f32>(-1000f, 134f), vec2<i32>(u_input.a.x, -1i), -17532i), vec4<u32>(1u, 25648u, 18136u, 0u), vec3<bool>(var_0.x, var_0.x, var_0.x)), !var_0.x, func_2(Struct_2(vec2<f32>(-255f, -161f), u_input.a.zy, 0i), vec2<bool>(var_0.x, true), -66998i, u_input.a)), all(!vec3<bool>(var_0.x, var_0.x, true))));
    var_0 = select(!vec2<bool>(any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x))), !select(var_0.x, var_0.x, true)), select(select(!vec2<bool>(var_0.x, false), select(vec2<bool>(true, false), !vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x)), var_0.x && (var_0.x == var_0.x)), !(!(!vec2<bool>(var_0.x, true))), all(!(!vec4<bool>(var_0.x, false, false, var_0.x)))), true);
    global0 = array<Struct_1, 31>();
    var var_2 = var_1;
    global0 = array<Struct_1, 31>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * var_2.a.x));
    let var_4 = ~(-u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_2.a.x, _wgslsmith_f_op_f32(var_1.a.x - var_2.a.x))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a + _wgslsmith_div_vec2_f32(var_2.a, var_2.a))), all(!vec3<bool>(false, false, var_0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(800f, -256f, -116f, 718f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-171f, 229f, var_1.a.x, 468f)))), vec4<f32>(var_1.a.x, -691f, -583f, -620f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, 704f, var_3, -1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(627f, var_3, -2533f, var_1.a.x) - vec4<f32>(-1904f, var_3, -1156f, 1630f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-540f, var_1.a.x, var_2.a.x, var_1.a.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0.x, Struct_1(31498u))) * -612f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2900f, var_1.a.x)))));
}

