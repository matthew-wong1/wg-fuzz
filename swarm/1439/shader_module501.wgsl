struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_4, 24>;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: bool;

var<private> global4: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = Struct_2(~countOneBits(min(~vec4<u32>(1u, 0u, 0u, 20620u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, u_input.b, 0u), vec4<u32>(global0.b.x, 1u, u_input.b, u_input.b)))));
    let var_1 = max(~vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, arg_1.x), vec2<i32>(u_input.c.x, -2147483647i)), vec2<i32>(u_input.d, u_input.d)), _wgslsmith_sub_i32(2147483647i & u_input.d, arg_1.x >> (11014u % 32u))), arg_1);
    global3 = global2.x;
    let var_2 = !select(select(!vec4<bool>(global2.x, global2.x, false, global2.x), select(vec4<bool>(false, global2.x, false, true), !vec4<bool>(global2.x, global2.x, true, false), !global2.x), true), vec4<bool>(global2.x, global2.x, all(vec2<bool>(global2.x, global2.x)) == global2.x, global2.x), select(select(select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(global2.x, true, global2.x, false), global2.x), vec4<bool>(global2.x, global2.x, global2.x, false), select(vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(global2.x, true, global2.x, false), vec4<bool>(true, global2.x, global2.x, global2.x))), select(select(vec4<bool>(false, global2.x, false, global2.x), vec4<bool>(false, false, global2.x, false), vec4<bool>(true, global2.x, global2.x, true)), select(vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(false, global2.x, global2.x, false)), vec4<bool>(true, global2.x, global2.x, global2.x)), vec4<bool>(all(vec4<bool>(global2.x, global2.x, global2.x, global2.x)), any(vec3<bool>(false, true, true)), select(true, global2.x, false), false)));
    var var_3 = Struct_4(vec3<f32>(1130f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1298f * _wgslsmith_f_op_f32(round(1000f))) + global0.a.x), arg_0.a.x), vec2<u32>(56106u, ~(~var_0.a.x)));
    return !vec3<bool>(!(!(!global2.x)), true, !all(var_2));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    global1 = array<Struct_4, 24>();
    let var_0 = arg_0.a;
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(abs(~var_0.a), ~vec3<u32>(13204u, u_input.a, 0u)), ~16747u, abs(_wgslsmith_div_u32(4294967295u | var_0.b, abs(49627u))), u_input.a));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-738f, 1f));
    let var_3 = vec4<bool>(true, !(!(u_input.d >= ~arg_0.b.x)), any(func_3(global1[_wgslsmith_index_u32(select(~arg_1, ~89853u, global2.x), 24u)], abs(_wgslsmith_mod_vec2_i32(arg_0.b.wz, vec2<i32>(-1014i, var_0.c))))), true);
    return Struct_1(abs(min(vec3<u32>(~var_0.a.x, _wgslsmith_clamp_u32(38273u, 20468u, 4294967295u), 29410u), select(vec3<u32>(105032u, var_0.d, 51295u), var_1.a.xwy, true) | var_1.a.xxy)), _wgslsmith_dot_vec3_u32(var_1.a.zzx, _wgslsmith_mod_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(32117u, arg_1, var_0.b), var_1.a.zxw)), vec3<u32>(global0.b.x, arg_1, var_1.a.x) << ((vec3<u32>(8929u, global0.b.x, arg_0.a.b) ^ vec3<u32>(1u, 1u, arg_0.a.b)) % vec3<u32>(32u)))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(~18614i, var_0.c ^ var_0.c), countOneBits(34237i)), select(reverseBits(u_input.c), vec2<i32>(~arg_0.b.x, 30350i), !func_3(Struct_4(vec3<f32>(863f, -1030f, var_2), vec2<u32>(8187u, var_0.d)), u_input.c).zz)), ~firstTrailingBit(var_0.b), var_0.e);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(global0.b.x, 11250u, 63641u, u_input.e) ^ vec4<u32>(global0.b.x, global0.b.x, 0u, 43509u)), vec4<u32>(40170u, firstLeadingBit(u_input.a), u_input.e, 4294967295u)) | ~abs(firstTrailingBit(vec4<u32>(u_input.e, u_input.b, global0.b.x, 4294967295u))), max(firstTrailingBit(vec4<u32>(global0.b.x, u_input.b, 1u, arg_0.a.b)) & countOneBits(abs(vec4<u32>(global0.b.x, 40844u, 0u, u_input.b))), select(vec4<u32>(global0.b.x, _wgslsmith_mod_u32(arg_0.a.d, global0.b.x), ~86298u, _wgslsmith_clamp_u32(arg_0.a.a.x, 8025u, arg_0.a.b)), ~(~vec4<u32>(u_input.a, global0.b.x, 4294967295u, 14905u)), arg_0.d)), ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.a.x, 4294967295u, global0.b.x, 0u), vec4<u32>(arg_0.a.b, 4294967295u, global0.b.x, u_input.e)), firstLeadingBit(vec4<u32>(arg_0.a.d, 1u, 1u, global0.b.x)))));
    let var_1 = _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1290f, 342f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1429f - arg_0.a.e.x) - 1412f)))));
    var var_2 = -1444f;
    let var_3 = _wgslsmith_add_u32(u_input.b, _wgslsmith_mod_u32(~(~arg_0.a.b), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(var_0.yyz, vec3<u32>(var_0.x, 1u, global0.b.x), arg_0.d.wzw), vec3<u32>(43154u, 1u, u_input.e) ^ arg_0.a.a, vec3<u32>(arg_0.a.a.x, 1u, 109251u)), arg_0.a.a)));
    let var_4 = true;
    return _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.b.x, ~u_input.b) & 79167u, 4294967295u, 1u) | max(global0.b.x, ~var_0.x ^ ~4294967295u);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = true;
    global4 = true;
    var var_1 = _wgslsmith_add_u32(~func_4(Struct_3(func_2(Struct_3(Struct_1(vec3<u32>(global0.b.x, 75952u, 30297u), global0.b.x, u_input.d, 6784u, vec4<f32>(global0.a.x, -145f, 971f, global0.a.x)), arg_1, arg_2.wx, arg_2), u_input.e), vec4<i32>(25155i, u_input.d, 14626i, -1309i), vec2<bool>(arg_0, arg_2.x), vec4<bool>(global2.x, false, false, false)), select(vec3<bool>(arg_2.x, global2.x, true), select(vec3<bool>(false, true, arg_0), arg_2.yyx, arg_2.zwz), arg_2.wyx), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.a.x, -1342f))))), select(vec4<bool>(global2.x, global2.x, arg_2.x, true), vec4<bool>(arg_2.x, false, false, arg_0), vec4<bool>(arg_2.x, arg_0, true, true))), func_2(Struct_3(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.e), vec3<u32>(0u, 4294967295u, u_input.e), vec3<u32>(global0.b.x, global0.b.x, global0.b.x)), func_2(Struct_3(Struct_1(vec3<u32>(52645u, global0.b.x, 32505u), u_input.b, arg_1.x, 34318u, vec4<f32>(global0.a.x, global0.a.x, -1125f, global0.a.x)), arg_1, vec2<bool>(false, global2.x), vec4<bool>(true, true, arg_2.x, false)), 9968u).a.x, -arg_1.x, u_input.b, vec4<f32>(global0.a.x, 973f, global0.a.x, -100f)), vec4<i32>(-arg_1.x, _wgslsmith_dot_vec4_i32(arg_1, arg_1), -u_input.c.x, -u_input.d), vec2<bool>(false || arg_2.x, global2.x), vec4<bool>(arg_0, any(vec2<bool>(true, false)), true, true)), min(~_wgslsmith_mult_u32(1u, global0.b.x), 1u)).a.x);
    var var_2 = global0.a.x;
    global2 = select(select(arg_2.yz, !select(!arg_2.yy, arg_2.xx, false), true), select(select(!vec2<bool>(false, arg_0), arg_2.yx, !select(vec2<bool>(true, true), arg_2.yx, arg_2.xz)), vec2<bool>(true, (true == arg_2.x) | false), arg_0), func_3(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global0.b.x, 10057u), 24u)], ~(-arg_1.zy)).zy);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.x)))) + 351f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, 178f))))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> vec4<f32> {
    global1 = array<Struct_4, 24>();
    let var_0 = ~_wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(17996u, global0.b.x), min(arg_2.a.x, global0.b.x)), vec2<u32>(~arg_2.a.x | 4294967295u, u_input.b));
    var var_1 = !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1585f + -492f), _wgslsmith_f_op_f32(global0.a.x + global0.a.x), select(arg_0, global2.x, true))))) <= _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(135f, global0.a.x))));
    let var_2 = Struct_2(~(~_wgslsmith_mult_vec4_u32(arg_2.a, select(arg_2.a, vec4<u32>(global0.b.x, arg_2.a.x, 0u, arg_2.a.x), false))));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(-271f, global0.a.x, arg_1))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1136f, -1634f, -912f), _wgslsmith_f_op_vec3_f32(exp2(global0.a))))), global0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(-859f - 1458f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -1174f))))));
    return vec4<f32>(var_3.x, _wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(593f + var_3.x), -326f, 1u != global0.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.x)) * _wgslsmith_f_op_f32(-global0.a.x)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(55345u, u_input.e), global0.b), u_input.b), u_input.e, ~countOneBits(abs(1u))), global0.b.x, -5828i, 1u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(global2.x | false, _wgslsmith_f_op_f32(func_1(false, vec4<i32>(-1i, 19917i, u_input.d, u_input.d), vec4<bool>(global2.x, global2.x, global2.x, global2.x))), Struct_2(vec4<u32>(global0.b.x, 1u, 36368u, global0.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -223f, global0.a.x, -550f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.x, global0.a.x, 104f, global0.a.x))))))));
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(max(1u, ~4294967295u), _wgslsmith_add_u32(27329u ^ var_0.b, ~global0.b.x)), firstLeadingBit(global0.b)), _wgslsmith_dot_vec2_u32(abs(~(~var_0.a.xy)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(39470u, u_input.b), vec2<u32>(u_input.e, 4294967295u)) & countOneBits(vec2<u32>(global0.b.x, u_input.b) | vec2<u32>(u_input.a, 48516u))), 19713u >> (~(~firstTrailingBit(1u)) % 32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1274f, _wgslsmith_f_op_f32(-559f + var_0.e.x))), 793f, func_2(Struct_3(Struct_1(var_0.a, 4294967295u, u_input.d, 1497u, vec4<f32>(var_0.e.x, -180f, 860f, -1562f)), abs(vec4<i32>(u_input.d, -63270i, -15028i, 770i)), !vec2<bool>(false, global2.x), vec4<bool>(false, true, false, false)), abs(var_1)).e.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -535f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.x, 573f, -794f, var_0.e.x), var_0.e)), vec4<f32>(var_0.e.x, var_0.e.x, 1437f, global0.a.x)))));
    let var_3 = firstLeadingBit(u_input.c);
    var var_4 = func_2(Struct_3(func_2(Struct_3(Struct_1(vec3<u32>(var_0.d, 1u, var_0.a.x), u_input.b, -25106i, var_1, vec4<f32>(-1284f, 1711f, 146f, 415f)), select(vec4<i32>(var_3.x, var_0.c, u_input.c.x, 2147483647i), vec4<i32>(-2147483647i, var_3.x, var_0.c, -15885i), true), !vec2<bool>(true, global2.x), select(vec4<bool>(false, true, false, false), vec4<bool>(global2.x, global2.x, false, true), vec4<bool>(global2.x, global2.x, global2.x, false))), var_0.a.x), ~vec4<i32>(1i, abs(var_3.x), -u_input.d, 1i), !vec2<bool>(global0.a.x < var_0.e.x, true), !(!(!vec4<bool>(false, global2.x, global2.x, false)))), 4294967295u);
    var var_5 = _wgslsmith_f_op_f32(min(-756f, _wgslsmith_f_op_f32(sign(var_0.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2108f)) - _wgslsmith_f_op_f32(var_0.e.x * 731f)), var_0.e.x), var_0.e.x, var_1, _wgslsmith_clamp_vec2_i32(select(vec2<i32>(1i, 17846i) | u_input.c, abs(var_3), select(vec2<bool>(false, global2.x), !vec2<bool>(global2.x, global2.x), var_0.d >= var_4.d)), var_3 >> (func_2(Struct_3(Struct_1(var_0.a, 14118u, u_input.c.x, var_4.a.x, var_0.e), vec4<i32>(u_input.d, 2147483647i, var_4.c, 0i), vec2<bool>(global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_4.b, 4294967295u, global0.b.x), vec4<u32>(1u, 54243u, 4294967295u, var_0.b))).a.yy % vec2<u32>(32u)), -(~u_input.c)));
}

