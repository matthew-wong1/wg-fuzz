struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(-353f, -1851i), Struct_1(477f, 2147483647i), Struct_1(132f, 0i), Struct_1(-1000f, -1i), Struct_1(-375f, -42823i), Struct_1(-1812f, 25586i), Struct_1(701f, i32(-2147483648)), Struct_1(-348f, 40562i), Struct_1(2028f, -17453i), Struct_1(-1000f, 16416i), Struct_1(-228f, 1i), Struct_1(574f, i32(-2147483648)), Struct_1(452f, -1i), Struct_1(-297f, -35347i), Struct_1(100f, 2147483647i), Struct_1(-344f, i32(-2147483648)), Struct_1(282f, 61566i), Struct_1(-1226f, -35881i), Struct_1(253f, -67778i), Struct_1(895f, -12125i), Struct_1(1000f, -46642i));

var<private> global3: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    global0 = 33532u;
    global3 = array<vec4<bool>, 4>();
    let var_0 = arg_0;
    global1 = vec4<i32>(_wgslsmith_add_i32(50001i, u_input.a), ~abs(-56745i), _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(-31590i, u_input.b.x), 2147483647i), ~global1.x & ~u_input.b.x), _wgslsmith_div_i32(0i, reverseBits(global1.x) & _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, -2147483647i), 7586i)));
    var var_1 = -2147483647i << (firstLeadingBit(~_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 48201u, 9184u), vec3<u32>(1u, 4294967295u, 94485u)))) % 32u);
    return arg_3;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global3 = array<vec4<bool>, 4>();
    var var_0 = Struct_1(-1000f, ~(~u_input.b.x));
    var_0 = global2[_wgslsmith_index_u32(29797u, 21u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<f32>(_wgslsmith_f_op_f32(min(var_0.a, 361f)), 655f, _wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(abs(var_0.a))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a, arg_0.a, -271f, arg_0.a))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 1389f, 1463f, -1066f) - vec4<f32>(-979f, var_0.a, 1059f, -525f))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(859f, -1787f, 1139f, var_0.a))))))));
    let var_2 = arg_0;
    return Struct_1(_wgslsmith_f_op_f32(-var_0.a), reverseBits(-(1i & reverseBits(var_0.b))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    global3 = array<vec4<bool>, 4>();
    global0 = arg_3.x;
    var var_0 = vec3<u32>(arg_3.x, reverseBits(arg_3.x), arg_3.x);
    global2 = array<Struct_1, 21>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + arg_0.a)), func_2(-595f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 950f, arg_2.a, 178f) - vec4<f32>(arg_1.a, 430f, 145f, 1312f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-130f, -2162f, -1477f, 604f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -619f)), arg_1.a, arg_2.a), Struct_1(_wgslsmith_f_op_f32(ceil(arg_2.a)), _wgslsmith_add_i32(31772i, abs(0i)))).b);
    return true;
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1288f), 16568i);
    global2 = array<Struct_1, 21>();
    let var_1 = func_4(func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a + 1000f))), vec4<f32>(var_0.a, -359f, _wgslsmith_div_f32(var_0.a, _wgslsmith_div_f32(var_0.a, var_0.a)), -446f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1597f, _wgslsmith_f_op_f32(-var_0.a), var_0.a)), Struct_1(var_0.a, _wgslsmith_mod_i32(u_input.a, global1.x))), Struct_1(var_0.a, global1.x), func_3(func_2(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(-var_0.a), -293f, _wgslsmith_f_op_f32(var_0.a * -217f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a) - vec3<f32>(var_0.a, 1000f, 969f)) - vec3<f32>(-1000f, -1317f, -1213f)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 81388u), max(vec2<u32>(23228u, 1u), vec2<u32>(21915u, 1u))), 21u)]), _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_sub_u32(1u, 0u)), 1u)), vec4<u32>(4294967295u, ~4197u, firstTrailingBit(~0u), _wgslsmith_add_u32(0u, ~1u)));
    let var_2 = func_2(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 911f, 767f, 827f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1761f, var_0.a, 109f, 675f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, -2124f, var_0.a, -901f), vec4<f32>(680f, var_0.a, var_0.a, -1407f), var_1)), true)), global3[_wgslsmith_index_u32(1u, 4u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -439f, -143f) * vec3<f32>(-862f, 1000f, var_0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1721f, var_0.a, var_0.a))), var_1))), global2[_wgslsmith_index_u32(~1u, 21u)]);
    let var_3 = vec3<u32>(1u, ~1u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), vec2<u32>(1u, 0u >> (1u % 32u))));
    return min(~_wgslsmith_sub_vec2_u32(var_3.yz, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), var_3.zz)), var_3.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) | func_1(), _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 1u), func_1())) | min(_wgslsmith_mult_u32(32608u, 1u), select(56006u, firstLeadingBit(4294967295u), all(vec2<bool>(false, false))) << (45050u % 32u)), 21u)];
    global1 = vec4<i32>(~(-func_2(var_0.a, vec4<f32>(-713f, var_0.a, -873f, 650f), vec3<f32>(-403f, 828f, -1000f), global2[_wgslsmith_index_u32(~1u, 21u)]).b), _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_mod_i32(var_0.b, _wgslsmith_clamp_i32(26990i, 0i, u_input.a))) | -46898i, u_input.a, ~(-13872i & var_0.b));
    var var_1 = vec2<u32>(1u, _wgslsmith_sub_u32(~_wgslsmith_div_u32(140696u, 1u), 1u)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, ~0u, ~0u), abs(vec3<u32>(19548u, 31229u, 108768u))), 44576u) % vec2<u32>(32u));
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(49678u, 21084u), 21u)];
    var var_3 = vec2<i32>(4010i & min(u_input.a, _wgslsmith_add_i32(0i, -1i)), -38224i) & min(reverseBits(vec2<i32>(-var_2.b, firstLeadingBit(2574i))), global1.wx);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(countOneBits(2147483647i), global1.x), -17592i, var_3.x, abs(global1.x)), _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(47638u, 21u)], ~_wgslsmith_clamp_u32(var_1.x, var_1.x, var_1.x)).a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))), u_input.b);
}

