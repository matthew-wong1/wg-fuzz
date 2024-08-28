struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool, arg_3: vec3<bool>) -> vec2<bool> {
    var var_0 = vec4<bool>(u_input.a == ~arg_0.c.a.x, arg_1.x, false, select(true, true, !(true & arg_3.x)) | true);
    global0 = array<Struct_2, 17>();
    var_0 = vec4<bool>(false, !var_0.x, (all(arg_1) & false) || any(!select(vec4<bool>(false, true, var_0.x, var_0.x), arg_1, true)), arg_1.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -318f), _wgslsmith_f_op_f32(f32(-1f) * -679f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(258f, -568f)), _wgslsmith_div_f32(-832f, -510f))), 352f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1052f, 255f, 765f, -1241f))))) + vec4<f32>(1353f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-775f * 694f))), _wgslsmith_f_op_f32(ceil(-2925f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1090f)), _wgslsmith_div_f32(-1574f, _wgslsmith_f_op_f32(f32(-1f) * -549f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.wy, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-756f, 2460f), vec2<f32>(var_1.x, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(972f, 600f) - vec2<f32>(867f, 592f)))), var_1.x < _wgslsmith_f_op_f32(-2936f - -405f)))) * var_1.zz);
    return select(arg_1.xx, select(arg_1.zy, vec2<bool>(!all(arg_1.xx), true), !(!var_0.zy)), all(vec4<bool>(all(arg_1), all(arg_1), !arg_1.x, !(!arg_2))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_sub_vec3_u32(~u_input.c, u_input.c);
    global1 = 1274f;
    var var_1 = arg_0;
    let var_2 = vec3<bool>(func_2(Struct_2(u_input.c, u_input.a ^ ~(-29165i), global2[_wgslsmith_index_u32(54390u, 11u)]), select(!select(vec4<bool>(true, true, false, arg_2), vec4<bool>(arg_1.x, arg_0.x, arg_1.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, false)), vec4<bool>(arg_1.x, func_2(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], vec4<bool>(arg_0.x, arg_1.x, arg_0.x, true), false, vec3<bool>(arg_2, true, arg_1.x)).x, var_1.x, false), select(!vec4<bool>(arg_0.x, var_1.x, true, true), vec4<bool>(arg_0.x, var_1.x, arg_0.x, false), arg_0.x || arg_2)), arg_0.x, select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, var_1.x, true), vec3<bool>(arg_0.x, var_1.x, false), arg_0.x), !vec3<bool>(false, arg_1.x, false)), !(!vec3<bool>(false, arg_0.x, false)), select(vec3<bool>(true, arg_2, var_1.x), select(vec3<bool>(true, arg_2, var_1.x), vec3<bool>(arg_2, var_1.x, true), vec3<bool>(arg_0.x, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(arg_0.x, arg_1.x, true), arg_2)))).x, any(select(select(vec3<bool>(true, arg_0.x, arg_2), vec3<bool>(true, false, true), arg_1.x), vec3<bool>(false, arg_2, true), any(vec2<bool>(var_1.x, arg_0.x)))) == arg_2, arg_2);
    let var_3 = _wgslsmith_dot_vec2_u32(abs(_wgslsmith_div_vec2_u32(var_0.zz, var_0.xz)), ~countOneBits(~vec2<u32>(u_input.c.x, 8436u)));
    return ~(~vec4<u32>(var_3, 1u, var_3, var_0.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> vec3<u32> {
    global1 = -460f;
    global0 = array<Struct_2, 17>();
    global2 = array<Struct_1, 11>();
    var var_0 = vec4<u32>(_wgslsmith_add_u32(17568u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 11680u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b) >> (vec4<u32>(78490u, u_input.c.x, u_input.b, u_input.b) % vec4<u32>(32u)))), ~4294967295u, u_input.c.x, 0u);
    var_0 = func_3(select(!arg_2, !(!select(vec2<bool>(arg_2.x, false), arg_2, arg_2.x)), arg_2.x), select(select(!(!arg_2), select(func_2(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), false, vec3<bool>(false, true, false)), vec2<bool>(true, false), vec2<bool>(arg_2.x, true)), vec2<bool>(arg_2.x, true)), select(vec2<bool>(true, arg_0.x <= 1i), arg_2, vec2<bool>(arg_2.x, all(vec4<bool>(false, arg_2.x, false, false)))), false), arg_2.x != (44090i > -(-21520i & u_input.a)));
    return var_0.wzy;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_2 {
    global0 = array<Struct_2, 17>();
    let var_0 = all(select(vec2<bool>(true, false), vec2<bool>(true, true), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), func_2(global0[_wgslsmith_index_u32(~arg_0.b.x, 17u)], vec4<bool>(false, true, true, false), true, select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    let var_1 = u_input.b;
    var var_2 = vec4<f32>(1f, 1f, 1f, 1f);
    let var_3 = 11233i;
    return global0[_wgslsmith_index_u32(arg_0.b.x, 17u)];
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global2 = array<Struct_1, 11>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_1.x))), arg_1.x)) - _wgslsmith_f_op_f32(704f + arg_1.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))), _wgslsmith_f_op_f32(ceil(arg_1.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.x, arg_1.x))), vec2<f32>(-783f, arg_1.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 * vec2<f32>(678f, arg_1.x)) + _wgslsmith_f_op_vec2_f32(-arg_1)))));
    let var_2 = func_4(arg_3, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(select(~vec4<u32>(24302u, 109934u, arg_0.a.x, 36547u), min(vec4<u32>(0u, 0u, 80632u, arg_0.c.b.x), vec4<u32>(arg_3.b.x, 0u, 0u, 4294967295u)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 113711u, arg_3.b.x), vec4<u32>(4294967295u, u_input.c.x, 27881u, 20644u))), 11u)], abs(arg_3.b) & _wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.c.x, 1u, 4294967295u) << (u_input.c % vec3<u32>(32u))), vec3<u32>(~4294967295u, firstTrailingBit(68925u), 25584u)), ~(~firstTrailingBit(~vec4<u32>(u_input.b, 1u, arg_3.b.x, 28933u))));
    let var_3 = ~(vec3<i32>(abs(max(var_2.b, arg_2.c.a.x)), -1i, ~arg_3.c) & _wgslsmith_clamp_vec3_i32(~min(vec3<i32>(-34949i, -2147483647i, arg_3.a.x), vec3<i32>(arg_3.a.x, 0i, -15752i)), ~(vec3<i32>(arg_2.c.c, -1i, 35040i) & vec3<i32>(arg_3.c, arg_2.b, arg_3.c)), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, 67230i, -34403i), vec3<i32>(arg_0.b, var_2.c.c, arg_0.c.c))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(609f, 666f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-795f, 1711f))))));
    global2 = array<Struct_1, 11>();
    var var_0 = func_5(Struct_2(u_input.c, -31990i, global2[_wgslsmith_index_u32(~0u, 11u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(727f, 1162f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(802f, 736f))))), func_4(global2[_wgslsmith_index_u32(u_input.c.x | u_input.b, 11u)], Struct_1(-vec2<i32>(-28075i, u_input.a), min(u_input.c, func_1(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), vec3<i32>(11714i, -2147483647i, 1i), vec2<bool>(false, true))), u_input.a), firstTrailingBit(func_1(vec4<i32>(-1i, -1i, u_input.a, 30693i), ~vec3<i32>(-1i, 32267i, u_input.a), vec2<bool>(false, false))), max(firstTrailingBit(~vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, u_input.c.x)), ~vec4<u32>(51661u, u_input.b, u_input.b, u_input.c.x) | ~vec4<u32>(61767u, 93023u, 16489u, 0u))), global2[_wgslsmith_index_u32(max(~(func_1(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.a), vec2<bool>(false, true)).x >> (_wgslsmith_mult_u32(1u, 1u) % 32u)), func_4(Struct_1(~vec2<i32>(u_input.a, 2147483647i), ~vec3<u32>(4294967295u, u_input.b, 14721u), 1i), Struct_1(min(vec2<i32>(-2147483647i, -31850i), vec2<i32>(-1i, 1i)), _wgslsmith_add_vec3_u32(u_input.c, u_input.c), 1i), select(u_input.c, vec3<u32>(u_input.b, u_input.c.x, u_input.b), true) >> (select(vec3<u32>(0u, 0u, u_input.b), vec3<u32>(7445u, u_input.b, u_input.c.x), false) % vec3<u32>(32u)), select(vec4<u32>(u_input.c.x, 4294967295u, 21649u, u_input.b) ^ vec4<u32>(u_input.c.x, u_input.c.x, 65971u, 0u), ~vec4<u32>(u_input.b, 34846u, 0u, 14799u), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)))).c.b.x), 11u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(-896f)), _wgslsmith_f_op_f32(f32(-1f) * -858f)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(max(-1332f, -960f))))), vec2<bool>(true, true))), select(~func_3(vec2<bool>(true, true), func_2(global0[_wgslsmith_index_u32(0u, 17u)], vec4<bool>(true, false, false, false), true, vec3<bool>(false, true, false)), true), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 9124u, var_0.c.b.x, u_input.c.x), ~vec4<u32>(u_input.c.x, 1u, 4294967295u, 73889u)), vec4<u32>(firstTrailingBit(1u), func_1(vec4<i32>(0i, -1i, var_0.c.a.x, var_0.c.c), vec3<i32>(29343i, -2147483647i, 1i), vec2<bool>(false, false)).x, 4294967295u, _wgslsmith_add_u32(3613u, 1436u))), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, true, false, false), any(vec2<bool>(false, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
}

