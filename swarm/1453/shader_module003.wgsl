struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-1026f, 205f), 4294967295u, 19060i, vec2<bool>(true, true), 19776i);

var<private> global1: array<u32, 13>;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<f32>(-148f, -783f), 4294967295u, 1i, vec2<bool>(false, true), 0i), Struct_1(vec2<f32>(-918f, -513f), 1u, i32(-2147483648), vec2<bool>(true, false), 1i), Struct_1(vec2<f32>(1089f, -1257f), 1u, 1i, vec2<bool>(false, false), -23047i), Struct_1(vec2<f32>(832f, 305f), 4294967295u, 36115i, vec2<bool>(true, true), 2147483647i), Struct_1(vec2<f32>(807f, 684f), 0u, 0i, vec2<bool>(true, true), 1i), Struct_1(vec2<f32>(-1000f, 1369f), 32210u, 7653i, vec2<bool>(false, false), 2147483647i), Struct_1(vec2<f32>(-620f, 416f), 49763u, -24970i, vec2<bool>(false, true), 46402i), Struct_1(vec2<f32>(-693f, -285f), 2982u, -1i, vec2<bool>(false, true), -35609i), Struct_1(vec2<f32>(1285f, -1557f), 52458u, -39004i, vec2<bool>(true, true), -28796i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<f32>) -> i32 {
    var var_0 = vec2<bool>(false, ~4294967295u <= global1[_wgslsmith_index_u32(98757u ^ arg_1.x, 13u)]);
    var var_1 = ~_wgslsmith_dot_vec2_u32(~(~u_input.c.yz) << (_wgslsmith_sub_vec2_u32(u_input.c.ww, u_input.c.zz) % vec2<u32>(32u)), u_input.c.xy);
    var var_2 = -5544i;
    global1 = array<u32, 13>();
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.a), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1564f - arg_0.a.x), _wgslsmith_f_op_f32(floor(768f)), true)), 849f))), 1u, -min(_wgslsmith_mod_i32(2147483647i, 2147483647i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e, 30199i, -11692i, 0i), u_input.a)), global0.d, ~abs(~(i32(-1i) * -80746i)));
    return _wgslsmith_clamp_i32(~global0.c, arg_0.c, u_input.b.x);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> bool {
    let var_0 = (-func_3(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.c.x), 13u)], 9u)], vec2<u32>(115155u, global1[_wgslsmith_index_u32(92627u, 13u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -1760f, arg_0, 287f))) | -60615i) >> (global0.b % 32u);
    global0 = global2[_wgslsmith_index_u32(1u, 9u)];
    global1 = array<u32, 13>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2110f, 407f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * 1157f), 2229f, !global0.d.x)), global0.a.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-888f, 372f, 486f) + vec3<f32>(-161f, arg_0, 1000f)) + vec3<f32>(arg_0, global0.a.x, 138f)))));
    let var_2 = max(u_input.a, ~vec4<i32>(u_input.b.x, var_0, ~(2147483647i << (u_input.c.x % 32u)), firstTrailingBit(_wgslsmith_add_i32(global0.c, arg_1.x))));
    return var_1.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-669f + 1271f) * global0.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1123f, arg_0))))));
}

fn func_1() -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(global0.a)), 4294967295u, _wgslsmith_add_i32(global0.c >> (1290u % 32u), i32(-1i) * -global0.e), vec2<bool>(global0.d.x, firstLeadingBit(global0.c) > (_wgslsmith_add_i32(global0.e, 0i) | -u_input.b.x)), 0i);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_div_vec2_f32(global0.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(-1445f, -365f)))))), (global1[_wgslsmith_index_u32((1u | global1[_wgslsmith_index_u32(global0.b, 13u)]) >> ((15185u << (u_input.c.x % 32u)) % 32u), 13u)] >> (u_input.c.x % 32u)) ^ (89704u ^ global0.b), global0.e, select(vec2<bool>(false, func_2(1675f, u_input.b)), vec2<bool>(func_2(_wgslsmith_f_op_f32(round(-204f)), u_input.a.zx | u_input.b), global0.d.x), select(all(!global0.d), func_2(_wgslsmith_f_op_f32(ceil(global0.a.x)), u_input.b), global0.d.x == func_2(global0.a.x, vec2<i32>(u_input.a.x, global0.c)))), 0i);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + global0.a.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x * 1000f)))) + _wgslsmith_f_op_f32(min(1325f, 163f))), global0.a.x);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-698f, 151f)), _wgslsmith_div_f32(var_1.x, var_1.x)) - _wgslsmith_f_op_f32(abs(global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x));
    global0 = Struct_1(var_1, firstTrailingBit(21561u), min(global0.c, select(u_input.b.x, reverseBits(-1i), !(var_0.d.x | var_0.d.x))), select(var_0.d, global0.d, ~abs(1u) > global0.b), -2147483647i);
    return _wgslsmith_mod_u32(abs(countOneBits(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 13u)], ~var_0.b))), firstLeadingBit(var_0.b) | _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(13738u, global0.b, 11090u, u_input.c.x), ~vec4<u32>(global1[_wgslsmith_index_u32(var_0.b, 13u)], 93614u, 0u, 4294967295u)), vec4<u32>(var_0.b, _wgslsmith_mult_u32(0u, global0.b), u_input.c.x << (0u % 32u), 1u)));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>) -> StorageBuffer {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 77192u), ~(~u_input.c.xx)), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0, _wgslsmith_sub_u32(26143u, 1u)), 0u), 4294967295u)), 9u)];
    var var_1 = vec4<i32>(global0.e, global0.c, var_0.e, 14435i);
    var var_2 = 4294967295u;
    let var_3 = 838f;
    global2 = array<Struct_1, 9>();
    return StorageBuffer(-var_1.xyw, ~9965u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x * 380f))) * vec3<f32>(_wgslsmith_f_op_f32(select(920f, 454f, var_0.d.x)), _wgslsmith_f_op_f32(-1663f * -932f), -956f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)), ~(~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2[_wgslsmith_index_u32(13524u, 9u)];
    let var_0 = ~u_input.c.xzw;
    let var_1 = u_input.c;
    let var_2 = u_input.a.xz;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(982f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1489f - global0.a.x)) * _wgslsmith_f_op_f32(min(1329f, -196f))), 1015f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a.x)) + global0.a.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-632f, global0.a.x, global0.a.x, -1711f))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(842f * global0.a.x))), -282f, global0.a.x, _wgslsmith_f_op_f32(floor(-787f)))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(var_3.x, 1086f), _wgslsmith_f_op_f32(var_3.x - 1590f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - var_3.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.x)))))), global1[_wgslsmith_index_u32(var_1.x, 13u)], -1i, !vec2<bool>(global0.d.x | all(vec4<bool>(global0.d.x, global0.d.x, false, false)), global0.d.x), _wgslsmith_sub_i32(0i, var_2.x));
    let x = u_input.a;
    s_output = func_4(~(min(var_0.x, var_4.b | 0u) | _wgslsmith_clamp_u32(~98245u, ~global1[_wgslsmith_index_u32(var_4.b, 13u)], func_1())), select(select(select(!vec4<bool>(global0.d.x, global0.d.x, false, true), vec4<bool>(var_4.d.x, true, false, false), select(vec4<bool>(global0.d.x, false, global0.d.x, global0.d.x), vec4<bool>(true, false, global0.d.x, false), true)), vec4<bool>(var_4.d.x, false & global0.d.x, any(vec3<bool>(global0.d.x, global0.d.x, false)), global0.d.x), false), !(!select(vec4<bool>(false, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(true, false, true, false), vec4<bool>(false, true, var_4.d.x, var_4.d.x))), !(any(vec4<bool>(global0.d.x, global0.d.x, true, true)) && false)));
}

