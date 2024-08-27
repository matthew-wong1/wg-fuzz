struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec3<i32>;

var<private> global2: array<bool, 32> = array<bool, 32>(false, false, false, true, false, true, true, true, true, true, true, true, false, true, false, false, true, false, false, false, false, true, true, true, false, false, false, true, false, true, true, true);

var<private> global3: array<Struct_2, 30>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(23660u, 27184u, 75378u), arg_0.a)) & select(min(vec3<u32>(113178u, arg_0.a.x, arg_0.a.x), arg_0.a) & arg_0.a, _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.a.x, 11482u), vec3<u32>(4995u, 0u, 45609u)), ~arg_0.a), 45308u >= firstLeadingBit(arg_0.a.x)));
    var var_1 = global3[_wgslsmith_index_u32(1u, 30u)];
    global2 = array<bool, 32>();
    var var_2 = vec2<bool>(true, true);
    var var_3 = _wgslsmith_div_i32(0i, i32(-1i) * -17617i);
    return _wgslsmith_mod_u32(min(var_1.a.x, 6035u), firstTrailingBit(arg_0.a.x));
}

fn func_2() -> Struct_2 {
    var var_0 = ~(~(~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 64691u, 28754u, 4294967295u), min(vec4<u32>(1u, 13146u, 1678u, 0u), vec4<u32>(0u, 13085u, 4294967295u, 13475u)))));
    var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, var_0.x, 4294967295u, reverseBits(1u) ^ var_0.x), (~vec4<u32>(var_0.x, var_0.x, 42611u, 41937u) ^ vec4<u32>(var_0.x, 82457u, var_0.x, var_0.x)) & vec4<u32>(~1u, var_0.x, var_0.x, var_0.x), select(vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u), ~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global2[_wgslsmith_index_u32(34344u, 32u)], false, global0.x, false), vec4<bool>(false, global2[_wgslsmith_index_u32(36661u, 32u)], false, true))) ^ (select(vec4<u32>(var_0.x, var_0.x, var_0.x, 42077u), vec4<u32>(var_0.x, 0u, var_0.x, 19707u), vec4<bool>(false, global0.x, global2[_wgslsmith_index_u32(var_0.x, 32u)], true)) << (abs(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x)) % vec4<u32>(32u)))), vec4<u32>(select(_wgslsmith_dot_vec2_u32(var_0.wx, vec2<u32>(var_0.x, var_0.x)) >> (var_0.x % 32u), ~_wgslsmith_sub_u32(var_0.x, 0u), true), min(var_0.x, func_3(Struct_1(vec3<u32>(var_0.x, 25989u, var_0.x)))), var_0.x, ~(~var_0.x)));
    global0 = select(!(!vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 32u)], true)), select(select(vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(global0.x, false), vec2<bool>(false, global0.x)), !all(vec2<bool>(global0.x, true))), select(select(vec2<bool>(global0.x, true), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, true), vec2<bool>(false, true)), true), !vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 32u)], true), (global2[_wgslsmith_index_u32(8658u, 32u)] & true) == true), vec2<bool>(global0.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 44035u, 1u, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), 32u)] || true)), select(vec2<bool>(global0.x, select(global0.x, all(vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 32u)], global2[_wgslsmith_index_u32(0u, 32u)])), false)), !select(select(vec2<bool>(true, global2[_wgslsmith_index_u32(34446u, 32u)]), vec2<bool>(false, false), global2[_wgslsmith_index_u32(5087u, 32u)]), select(vec2<bool>(global0.x, global2[_wgslsmith_index_u32(var_0.x, 32u)]), vec2<bool>(global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(var_0.x, 32u)]), global0.x), !vec2<bool>(global0.x, false)), vec2<bool>(false, false)));
    var var_1 = vec3<f32>(-1010f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1463f * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1957f, -994f), 1f, true))))), 834f);
    global0 = vec2<bool>(false, true);
    return global3[_wgslsmith_index_u32(min(4294967295u, 38510u | _wgslsmith_add_u32(41078u, _wgslsmith_mult_u32(var_0.x, 0u))) | reverseBits(var_0.x), 30u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_2((~vec2<u32>(arg_3.x, arg_3.x) ^ vec2<u32>(~arg_2.a.x, arg_3.x)) >> (vec2<u32>(~(~4294967295u), 4294967295u) % vec2<u32>(32u)), u_input.a);
    var var_1 = reverseBits(vec4<u32>(arg_2.a.x, ~arg_2.a.x, arg_3.x >> (~14578u % 32u), ~1u));
    var var_2 = max(~(~37679u), 1u);
    let var_3 = Struct_1(firstTrailingBit(arg_0));
    var_2 = var_1.x;
    return Struct_1(arg_0);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x)))), _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-662f, 256f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2012f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, false)), -292f), arg_2.x)))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0.x))));
    let var_2 = vec4<u32>(arg_0.a.x, max(41864u, _wgslsmith_mult_u32(countOneBits(~4294967295u), ~abs(arg_0.a.x))), arg_0.a.x, 0u);
    global2 = array<bool, 32>();
    var var_3 = 21203u;
    return _wgslsmith_f_op_vec3_f32(var_0.xxz - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1225f), arg_2.x, arg_2.x))), arg_2));
}

fn func_1(arg_0: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_4(vec3<u32>(1u, 1u, 1u), Struct_2(vec2<u32>(95201u, 48039u), vec3<i32>(-2147483647i, -3407i, u_input.b.x)), func_2(), vec3<u32>(53616u, 4294967295u, 1u)), all(vec3<bool>(global2[_wgslsmith_index_u32(0u, 32u)], false, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(846f, -887f, 1882f) + vec3<f32>(735f, 788f, 109f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1890f, 231f, -213f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-191f, -598f, -1277f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-605f, -752f, -337f))))))));
    global0 = select(vec2<bool>(global0.x, !(!all(arg_0.zzy))), !(!arg_0.xy), arg_0.wx);
    var var_1 = countOneBits(select(u_input.a.x, func_2().b.x, !(global0.x & global0.x))) >> (37u % 32u);
    let var_2 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-1386f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-527f * -103f))));
    global2 = array<bool, 32>();
    return any(!(!vec2<bool>(!arg_0.x, any(vec3<bool>(global0.x, true, global2[_wgslsmith_index_u32(4294967295u, 32u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(~0i, -1i, u_input.a.x), ~_wgslsmith_sub_vec3_i32(vec3<i32>(12511i, u_input.a.x, u_input.a.x), -u_input.a), -u_input.a));
    var var_0 = vec3<bool>(global2[_wgslsmith_index_u32(1u << (1u % 32u), 32u)], any(!vec3<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(668u, 0u)), 32u)], global0.x)), true);
    global0 = select(select(vec2<bool>(!global0.x, !var_0.x), vec2<bool>(true, true), func_1(vec4<bool>(true, var_0.x, !global0.x, any(vec3<bool>(true, false, global2[_wgslsmith_index_u32(31551u, 32u)]))))), vec2<bool>(global2[_wgslsmith_index_u32(0u, 32u)], select(!(!var_0.x), !global2[_wgslsmith_index_u32(3672u, 32u)], false)), !select(!(!var_0.yy), vec2<bool>(false, global2[_wgslsmith_index_u32(~1u, 32u)]), all(vec3<bool>(global0.x, false, false)) || (global0.x | false)));
    global0 = var_0.xx;
    global3 = array<Struct_2, 30>();
    var var_1 = reverseBits(abs(_wgslsmith_mod_vec3_i32(max(-u_input.a, u_input.a & u_input.a), vec3<i32>(firstLeadingBit(global1.x), 0i, 2147483647i))));
    var var_2 = 1283f;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(2139f)), _wgslsmith_f_op_f32(max(1250f, 869f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(895f, 658f)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1701f, -788f)) * _wgslsmith_f_op_f32(-363f - -178f)))), _wgslsmith_f_op_f32(1000f * 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstLeadingBit(~1u & firstTrailingBit(64282u)), ~(~27242u << (_wgslsmith_mod_u32(65618u, 1u) % 32u)), ~firstTrailingBit(0u), ~1u));
}

