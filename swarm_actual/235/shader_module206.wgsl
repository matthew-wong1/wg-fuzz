struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: array<i32, 7>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = u_input.a;
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    let var_1 = -243f;
    var_0 = countOneBits(select(vec4<i32>(_wgslsmith_mod_i32(abs(-2147483647i), 48398i & u_input.a.x), global0[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(firstLeadingBit(min(4294967295u, 1u)), 7u)], 0i), ~(-vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], -25188i, 32297i, -26530i) << (vec4<u32>(22705u, 4375u, 15609u, 0u) % vec4<u32>(32u))), any(vec3<bool>(select(false, true, false), false, any(vec4<bool>(true, false, true, true))))));
    return 199f;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(345f, -846f, -1583f) + vec3<f32>(996f, -1124f, -510f)))) + vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1675f), -858f))), ~1u, !select(arg_0.xz, !select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, true)), arg_0.zz), 4294967295u);
    global1 = array<i32, 7>();
    var var_1 = u_input.a.zz;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, 1172f, 1101f)))))))), var_0.b, arg_0.zz, 1u);
    var_1 = vec2<i32>(-_wgslsmith_add_i32(~34865i >> (var_2.d % 32u), -1i), global1[_wgslsmith_index_u32(firstLeadingBit(select(var_2.b, var_2.d, arg_0.x)) << (reverseBits(var_0.d) % 32u), 7u)] ^ ~1i);
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(558f * var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + -724f), _wgslsmith_f_op_f32(f32(-1f) * -644f)) + var_2.a), max(select(1u, _wgslsmith_div_u32(28686u, 4294967295u), !arg_0.x == !var_0.c.x), 26956u), vec2<bool>(var_2.c.x, true), ~(~_wgslsmith_div_u32(abs(0u), _wgslsmith_sub_u32(var_2.d, 0u))));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<u32>) -> i32 {
    var var_0 = func_2(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false, true));
    var var_1 = 381f;
    global0 = array<i32, 5>();
    let var_2 = func_2(select(!(!(!vec3<bool>(var_0.c.x, true, var_0.c.x))), !select(!vec3<bool>(var_0.c.x, var_0.c.x, false), vec3<bool>(var_0.c.x, false, true), var_0.c.x && var_0.c.x), vec3<bool>(true, var_0.c.x, true && !var_0.c.x)));
    var_1 = var_2.a.x;
    return _wgslsmith_clamp_i32(-max(_wgslsmith_mult_i32(~(-7656i), abs(global1[_wgslsmith_index_u32(4294967295u, 7u)])), u_input.a.x), 35484i, u_input.a.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    global1 = array<i32, 7>();
    global1 = array<i32, 7>();
    global0 = array<i32, 5>();
    let var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, countOneBits(0u), 4294967295u) | vec3<u32>(~arg_1.d, 48549u, ~arg_1.d), firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_1.b, 94743u), vec3<u32>(arg_1.b, 42900u, arg_2.b)))), select(~(~(vec3<u32>(4294967295u, arg_1.b, 0u) >> (vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u)))), ~vec3<u32>(arg_2.d, arg_2.d, arg_1.d), false), ~vec3<u32>(arg_1.d, arg_2.d, abs(4294967295u)) ^ ~vec3<u32>(_wgslsmith_add_u32(4294967295u, arg_2.b), _wgslsmith_dot_vec2_u32(vec2<u32>(5237u, 14887u), vec2<u32>(1u, arg_2.b)), ~4294967295u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.yx));
    return StorageBuffer(_wgslsmith_f_op_f32(max(1092f, var_1.x)), _wgslsmith_f_op_f32(arg_1.a.x - 1210f), select(~countOneBits(countOneBits(vec2<u32>(0u, 0u))), ~abs(vec2<u32>(arg_2.b, 36391u)), any(select(vec2<bool>(arg_2.c.x, true), !vec2<bool>(arg_2.c.x, arg_1.c.x), select(arg_2.c, vec2<bool>(arg_2.c.x, true), vec2<bool>(arg_1.c.x, arg_1.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_add_i32(func_1(710f, vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(41140u, 5376u, 81671u, 16891u), vec4<u32>(1u, 0u, 0u, 94194u)), ~49098u), ~vec3<u32>(41184u, 1u, 16703u)), max(~min(global1[_wgslsmith_index_u32(11744u, 7u)], 12007i), ~(-1i))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-299f, 3104f, -1279f), vec3<f32>(1f, 1f, 1f), false)) * vec3<f32>(472f, -1186f, -1002f)), 32624u, func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)).c, ~_wgslsmith_div_u32(~50865u, max(974u, 23894u))), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(736f, 869f, -476f) + vec3<f32>(-1312f, -1000f, -240f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-401f, 840f, -1095f)))))), _wgslsmith_add_u32(_wgslsmith_add_u32(1u, 1u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 63936u)), select(vec2<u32>(4294967295u, 34528u), vec2<u32>(1u, 4294967295u), true))), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), func_2(vec3<bool>(true, true, true)).c, true), ~91873u));
}

