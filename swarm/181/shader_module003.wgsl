struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
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

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<vec4<i32>, 30>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> bool {
    global1 = array<vec4<i32>, 30>();
    global0 = select(vec2<bool>(true, false), select(vec2<bool>(!global0.x, false), !select(!vec2<bool>(global0.x, true), !vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), select(select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), vec2<bool>(false, global0.x)), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, false), global0.x), vec2<bool>(true, true)), select(vec2<bool>(false, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), global0.x), true), vec2<bool>(global0.x, any(vec4<bool>(global0.x, false, global0.x, global0.x))))), !vec2<bool>(min(u_input.b.x, 4294967295u) >= 35690u, global0.x));
    var var_0 = -_wgslsmith_mod_vec2_i32(~min(~vec2<i32>(u_input.c, -145i), ~vec2<i32>(1i, u_input.c)), vec2<i32>(~(-2147483647i), u_input.a));
    var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(~(-54292i), 4760i), vec2<i32>((i32(-1i) * -var_0.x) ^ 1i, firstTrailingBit(~(1i >> (0u % 32u)))));
    let var_1 = ~abs(~_wgslsmith_div_u32(~4294967295u, select(25214u, u_input.b.x, global0.x)));
    return global0.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global0 = select(vec2<bool>(all(!vec4<bool>(global0.x, true, false, true)) && global0.x, !(global0.x && global0.x) & func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(375f, 1280f, 1569f, 772f))))), select(vec2<bool>(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1029f, -138f, 2704f, -254f) + vec4<f32>(-355f, -421f, 235f, 317f))), (u_input.a > u_input.c) & true), !select(!vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, false), vec2<bool>(global0.x, global0.x)), true), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-636f, -1735f, 1116f, -740f) - vec4<f32>(277f, -604f, -1373f, -1783f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-198f, -1000f, 644f, 1162f) - vec4<f32>(627f, 1811f, -2347f, 259f))))), !any(!(!vec2<bool>(false, global0.x))));
    var var_0 = Struct_1(true, select(!vec2<bool>(!global0.x, false), !(!select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, true), global0.x)), vec2<bool>(false, any(!vec3<bool>(global0.x, false, global0.x)))), ~32633i, 1u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -2726f)))) * 1000f);
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1265f, 444f))), vec2<f32>(-1428f, var_1))))), max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 28366u, arg_0.x, 21682u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d, var_0.d, u_input.b.x, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, 120115u, 20057u), vec4<u32>(30709u, 4294967295u, arg_0.x, u_input.b.x))) & ((1u & var_0.d) & ~arg_0.x), 88833u), u_input.a);
    var var_3 = vec4<i32>(~(-_wgslsmith_add_i32(46957i >> (0u % 32u), ~(-3124i))), -(~(~(-2147483647i))), (-59128i << (1u % 32u)) << (~max(arg_0.x | 0u, 1u) % 32u), reverseBits(-2147483647i));
    return Struct_1(select(39824i <= var_3.x, var_0.a, true), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(892f)) + _wgslsmith_f_op_f32(min(var_2.a.x, -162f))) > _wgslsmith_div_f32(1735f, _wgslsmith_div_f32(-100f, var_2.a.x)), var_2.a.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(-var_1))), ~1270i, arg_0.x);
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(563f * 530f);
    let var_1 = func_2(vec3<u32>(select(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x) & _wgslsmith_div_u32(4294967295u, 1u), global0.x), u_input.b.x, 0u));
    let var_2 = 6900u;
    var var_3 = select(vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, var_2), 15995u, abs(firstTrailingBit(1u)), var_2), vec4<u32>(~_wgslsmith_mult_u32(105971u, ~var_2), ~(~select(var_2, u_input.b.x, var_1.a)), ~u_input.b.x, 44944u), ~firstLeadingBit(_wgslsmith_sub_u32(var_2, 0u)) == u_input.b.x);
    var_3 = ~(~vec4<u32>(_wgslsmith_mult_u32(var_3.x >> (4294967295u % 32u), ~15865u), var_3.x, _wgslsmith_add_u32(firstTrailingBit(30527u), _wgslsmith_div_u32(var_3.x, var_1.d)), 32922u));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2331f * -222f)))), 1u, u_input.c);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = firstLeadingBit(arg_0.c ^ max(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, 1i), _wgslsmith_div_i32(7308i, arg_0.c)), i32(-1i) * -16075i));
    global0 = !vec2<bool>(global0.x, global0.x);
    global1 = array<vec4<i32>, 30>();
    let var_1 = Struct_2(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(arg_0.a.x, 893f), _wgslsmith_f_op_f32(-1580f + arg_0.a.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, 105f)) * _wgslsmith_f_op_vec2_f32(-func_1(vec4<bool>(false, global0.x, global0.x, false)).a))));
    global0 = !(!vec2<bool>(all(vec4<bool>(false, false, true, true)), var_1.a));
    return Struct_1(select(true, true, global0.x), select(func_2(~vec3<u32>(22377u, 0u, arg_0.b)).b, select(func_2(vec3<u32>(arg_0.b, 4294967295u, arg_0.b) >> (vec3<u32>(u_input.b.x, 26754u, u_input.b.x) % vec3<u32>(32u))).b, func_2(~vec3<u32>(1u, 0u, 125827u)).b, !vec2<bool>(global0.x, var_1.a)), true), -14139i, _wgslsmith_mod_u32(4294967295u, func_1(vec4<bool>(true, true, global0.x, true)).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1373f;
    var var_1 = func_4(func_1(select(select(!vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, false, global0.x, true), false), !vec4<bool>(false, global0.x, global0.x, global0.x), global0.x)));
    var_1 = Struct_1(true != all(!select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, var_1.b.x, true), global0.x)), var_1.b, 0i, u_input.b.x);
    let var_2 = true;
    var var_3 = Struct_1(true, func_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b.x | var_1.d, firstLeadingBit(33361u)), select(vec3<u32>(var_1.d, u_input.b.x, 68815u) << (vec3<u32>(18242u, u_input.b.x, 0u) % vec3<u32>(32u)), max(vec3<u32>(26196u, 1u, var_1.d), vec3<u32>(4294967295u, 0u, 0u)), !vec3<bool>(var_2, false, false)), firstLeadingBit(vec3<u32>(var_1.d, u_input.b.x, 0u) >> (vec3<u32>(79721u, 4294967295u, 1u) % vec3<u32>(32u))))).b, 4022i, ~u_input.b.x);
    var var_4 = Struct_1(func_2(vec3<u32>(4294967295u, ~var_3.d, var_1.d ^ var_3.d)).a || false, !select(var_3.b, !var_1.b, true), -8344i, 0u);
    let var_5 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b | u_input.b, u_input.b), ~reverseBits(u_input.b)), 1u, select(var_1.d, var_4.d, !all(vec3<bool>(true, var_2, true))), _wgslsmith_div_u32(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)) << (var_4.d % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1549f));
}

