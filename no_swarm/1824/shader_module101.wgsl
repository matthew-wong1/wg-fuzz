struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5>;

var<private> global1: vec4<u32> = vec4<u32>(37795u, 0u, 74084u, 2337u);

var<private> global2: Struct_2 = Struct_2(false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> f32 {
    global0 = array<vec2<bool>, 5>();
    let var_0 = vec2<bool>(true, true);
    global2 = Struct_2(var_0.x);
    global1 = abs(~(~vec4<u32>(12734u, 1u, 61161u, u_input.d)) | vec4<u32>(min(u_input.d, global1.x), max(u_input.d, global1.x) >> (1u % 32u), 8578u, _wgslsmith_div_u32(1u, u_input.d | u_input.d)));
    global2 = Struct_2(false);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2469f)));
}

fn func_3() -> u32 {
    global1 = vec4<u32>(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global1.x, global1.x), vec4<u32>(113129u, global1.x, global1.x, global1.x))), ~(~vec4<u32>(u_input.d, u_input.d, u_input.d, 19864u) & ~vec4<u32>(21225u, global1.x, 15154u, global1.x))), 51775u, abs(global1.x), 0u);
    var var_0 = Struct_1(!(!select(global0[_wgslsmith_index_u32(firstTrailingBit(41253u), 5u)], global0[_wgslsmith_index_u32(countOneBits(0u), 5u)], global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-2369f - _wgslsmith_f_op_f32(f32(-1f) * -1597f)))));
    let var_1 = var_0.a.x;
    return 38931u ^ firstTrailingBit(reverseBits(~_wgslsmith_sub_u32(global1.x, global1.x)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    var var_0 = ~(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(10026u, global1.x, 4294967295u, 0u), vec4<u32>(1u, global1.x, 13264u, u_input.d), vec4<bool>(false, arg_0.a, global2.a, true)), vec4<u32>(u_input.d, 1u, ~4294967295u, ~4294967295u)) >> (~34903u % 32u));
    let var_1 = func_3();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1897f + 1189f) - _wgslsmith_f_op_f32(f32(-1f) * -678f)))))));
    global1 = vec4<u32>(global1.x, 4294967295u, 72393u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, arg_2, u_input.d, global1.x)), select(vec4<u32>(global1.x, u_input.d, var_1, var_1), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, 16404u, 163u, var_1), vec4<u32>(32976u, arg_2, u_input.d, arg_2)), true && global2.a)) ^ u_input.d);
    var var_3 = Struct_1(!select(!(!vec2<bool>(arg_1.x, arg_1.x)), global0[_wgslsmith_index_u32(abs(4294967295u), 5u)], vec2<bool>(false, !arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -427f));
    return _wgslsmith_f_op_f32(273f * var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(!global2.a);
    global1 = ~_wgslsmith_mod_vec4_u32(abs(abs(~vec4<u32>(u_input.d, global1.x, global1.x, u_input.d))), vec4<u32>(global1.x & 0u, u_input.d, 1u, u_input.d));
    var var_0 = Struct_1(vec2<bool>(select(all(!vec2<bool>(global2.a, global2.a)), !select(global2.a, global2.a, false), true), global2.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(745f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(646f + -178f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(true), vec2<bool>(global2.a, global2.a), 0u))), _wgslsmith_f_op_f32(-330f + _wgslsmith_f_op_f32(f32(-1f) * -1638f)), true))));
    let var_1 = Struct_1(select(select(global0[_wgslsmith_index_u32(u_input.d, 5u)], !(!vec2<bool>(false, global2.a)), !(-331f != var_0.b)), global0[_wgslsmith_index_u32(func_3(), 5u)], var_0.a), -1191f);
    var var_2 = firstLeadingBit(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.d, u_input.d, u_input.d, 54127u), vec4<u32>(10425u, 41439u, 4294967295u, global1.x), false), vec4<u32>(19655u, u_input.d, 4294967295u, u_input.d)), _wgslsmith_sub_vec4_u32(~vec4<u32>(19457u, 41085u, u_input.d, global1.x), vec4<u32>(countOneBits(11770u), reverseBits(44833u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, u_input.d, 4294967295u), vec4<u32>(4294967295u, 30036u, 17925u, 60982u)), 41710u)), ~(~(vec4<u32>(4294967295u, global1.x, 123922u, 1u) | vec4<u32>(u_input.d, 0u, u_input.d, 83417u)))));
    let var_3 = Struct_1(select(select(select(var_1.a, var_1.a, true), vec2<bool>(var_0.a.x, var_1.a.x), any(select(vec4<bool>(var_1.a.x, true, true, global2.a), vec4<bool>(true, var_0.a.x, false, var_0.a.x), true))), vec2<bool>(any(select(vec2<bool>(var_1.a.x, true), vec2<bool>(true, global2.a), var_0.a.x)), true), select(false, any(vec3<bool>(var_0.a.x, false, true)), false)), _wgslsmith_f_op_f32(step(892f, 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.a, -2147483647i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.b, -1i), var_1.a.x), select(vec3<i32>(69530i, 1i, u_input.c.x), vec3<i32>(u_input.b, u_input.a, u_input.c.x), vec3<bool>(true, var_0.a.x, global2.a))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(1128i, u_input.b, -2147483647i), vec3<i32>(-27079i, 2147483647i, 2147483647i)))), _wgslsmith_dot_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.c.x, u_input.c.x), vec3<i32>(-1i, u_input.b, u_input.a))), ~vec3<i32>(49032i, u_input.b, u_input.c.x) >> (~global1.xxy % vec3<u32>(32u))) << (~reverseBits(27328u) % 32u));
}

