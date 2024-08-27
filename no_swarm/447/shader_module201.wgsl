struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

var<private> global2: array<bool, 9> = array<bool, 9>(false, true, false, false, false, false, true, false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-486f, 667f) + _wgslsmith_f_op_f32(floor(global0.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1041f))), all(select(global0.b, vec2<bool>(global0.b.x, global2[_wgslsmith_index_u32(1u, 9u)]), vec2<bool>(false, global0.b.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - 972f), global0.c.x)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(global0.c.x, arg_0))), ~(global0.a.x << (22043u % 32u)) != -_wgslsmith_dot_vec4_i32(vec4<i32>(4185i, 21776i, -1i, global0.a.x), vec4<i32>(u_input.a, 2147483647i, u_input.a, global0.a.x)))));
    global2 = array<bool, 9>();
    global0 = Struct_1(select(select(global0.a, ~(-vec2<i32>(1i, u_input.a)), global0.b), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, abs(u_input.a)), global0.a), !global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_1.x, 0u), 9u)]), vec2<bool>(false, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1458f), var_0, _wgslsmith_f_op_f32(select(1242f, var_0, true)), arg_0)));
    var var_1 = (_wgslsmith_mult_i32(-40706i, 19471i) ^ -_wgslsmith_mod_i32(-2899i, global0.a.x)) << ((max(29273u, arg_1.x) ^ _wgslsmith_div_u32(_wgslsmith_div_u32(arg_1.x, arg_1.x), 4294967295u)) % 32u);
    var_1 = ~countOneBits(global0.a.x ^ _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, u_input.a, global0.a.x), vec3<i32>(global0.a.x, global0.a.x, 0i)), 2147483647i));
    return 33687i;
}

fn func_2() -> vec4<u32> {
    global0 = Struct_1(global0.a, global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)));
    global2 = array<bool, 9>();
    var var_0 = vec3<i32>(global0.a.x, -31884i, _wgslsmith_clamp_i32(global0.a.x, -_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(global0.a.x, global0.a.x)), -60014i));
    var var_1 = Struct_1(global0.a, !select(global0.b, global0.b, !global0.b), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, 480f, global0.c.x, 1302f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1964f, 1018f, 203f, -1988f) + global0.c))))));
    var var_2 = Struct_1(vec2<i32>(func_3(_wgslsmith_div_f32(-170f, 1f), ~vec2<u32>(0u, 0u) << (firstTrailingBit(vec2<u32>(0u, 58194u)) % vec2<u32>(32u))), select(-18681i, 0i, false)), vec2<bool>(any(!select(vec4<bool>(false, false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 9u)], false, global2[_wgslsmith_index_u32(41560u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)]), false)), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c * var_1.c)));
    return min(~select(min(reverseBits(vec4<u32>(4294967295u, 16448u, 32994u, 51102u)), vec4<u32>(4294967295u, 0u, 27064u, 0u)), vec4<u32>(1u, firstLeadingBit(96688u), _wgslsmith_clamp_u32(0u, 1u, 23713u), _wgslsmith_clamp_u32(4294967295u, 61703u, 1u)), !vec4<bool>(false, false, global2[_wgslsmith_index_u32(1u, 9u)], true)), ~(~select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 1902u, 0u, 48388u), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 9u)], false, false, false))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~func_2(), vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 29967u, 27011u, 4294967295u), vec4<u32>(0u, 1u, 28554u, 4131u), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 9u)], true, true)), vec4<u32>(1u, 1u, 1u, 1u)), ~_wgslsmith_add_u32(4294967295u, 0u), firstTrailingBit(~61077u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 43857u), vec3<u32>(0u, 1u, 44102u)))), select(~(~abs(14733u)), 1u, any(!(!vec4<bool>(true, true, global0.b.x, false)))), ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global2 = array<bool, 9>();
    var var_1 = vec2<bool>(true, true);
    let var_2 = (42045u | _wgslsmith_add_u32(19869u, ~func_1(Struct_1(global0.a, vec2<bool>(global0.b.x, global0.b.x), global0.c)))) << (_wgslsmith_div_u32(~countOneBits(75384u) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(74384u, 4294967295u, 0u, 20074u), vec4<u32>(35750u, 15902u, 136088u, 24884u)) % 32u), 0u) % 32u);
    let var_3 = Struct_1(~global0.a, vec2<bool>(false, global0.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, -1000f, -1430f), _wgslsmith_f_op_vec4_f32(vec4<f32>(797f, global0.c.x, -2949f, -835f) + vec4<f32>(-1929f, global0.c.x, global0.c.x, -1131f)))), vec4<f32>(_wgslsmith_f_op_f32(max(global0.c.x, _wgslsmith_f_op_f32(722f * 1319f))), 1353f, global0.c.x, -1253f)));
    global1 = var_3.b.x;
    var_1 = select(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(var_2), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2, 0u, 15239u), vec4<u32>(4294967295u, 1u, var_2, 12867u))), 9u)], var_1.x), vec2<bool>(!(true | (326f != global0.c.x)), global2[_wgslsmith_index_u32(~var_2, 9u)]), !(!var_3.b.x));
    global2 = array<bool, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-632f)))), -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.c.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(499f, 1386f, var_3.c.x), vec3<f32>(var_3.c.x, 636f, -504f), global2[_wgslsmith_index_u32(24006u, 9u)])))))), vec2<u32>(~0u, var_2) ^ (vec2<u32>(firstTrailingBit(var_2), var_2) ^ min(~vec2<u32>(32543u, 4294967295u), ~vec2<u32>(45545u, 11584u))), -(abs(firstTrailingBit(-2147483647i)) | 7936i), ~_wgslsmith_mod_vec3_i32(min(vec3<i32>(var_3.a.x, var_3.a.x, -46180i), select(vec3<i32>(u_input.a, -18384i, var_0), vec3<i32>(var_0, u_input.a, 69509i), true)), ~vec3<i32>(2147483647i, 23341i, -29367i) >> (~vec3<u32>(29948u, var_2, 18685u) % vec3<u32>(32u))));
}

