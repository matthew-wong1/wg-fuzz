struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: Struct_1 = Struct_1(true, vec4<f32>(-514f, -1000f, -434f, -749f));

var<private> global2: u32 = 1u;

var<private> global3: Struct_1;

var<private> global4: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    var var_0 = firstLeadingBit(firstLeadingBit(u_input.c));
    let var_1 = vec2<i32>(-35263i, 11412i);
    var var_2 = global0[_wgslsmith_index_u32(~(~(u_input.d | (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(14986u, 4294967295u)) | _wgslsmith_mod_u32(u_input.d, 10836u)))), 1u)];
    let var_3 = u_input.c.yw;
    var_2 = Struct_1(all(select(vec4<bool>(22723u != u_input.d, false, true, var_2.a), !select(vec4<bool>(global1.a, false, var_2.a, var_2.a), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(var_2.a, true, false, false)), false & global1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-489f, 363f, -1169f, 795f)))));
    return _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(52115u, 0u)), u_input.e, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 8255u), firstLeadingBit(vec2<u32>(u_input.d, u_input.e)))), ~_wgslsmith_add_vec3_u32(vec3<u32>(22589u, 44437u, 41178u), ~vec3<u32>(u_input.d, u_input.e, 4294967295u))), ~select(vec3<u32>(abs(u_input.e), ~4294967295u, u_input.d), vec3<u32>(4294967295u, u_input.d, u_input.d) ^ (vec3<u32>(20923u, 1u, u_input.d) ^ vec3<u32>(u_input.e, u_input.e, u_input.d)), !(global3.a || false)));
}

fn func_2() -> Struct_1 {
    global2 = _wgslsmith_dot_vec3_u32(vec3<u32>(((u_input.e << (u_input.e % 32u)) | 4294967295u) << (~1u % 32u), ~75215u, min(~_wgslsmith_mult_u32(u_input.d, 24752u), 88228u)), _wgslsmith_add_vec3_u32(vec3<u32>(~56294u, _wgslsmith_div_u32(firstLeadingBit(u_input.d), ~u_input.d), _wgslsmith_mult_u32(u_input.d, 30075u) & _wgslsmith_dot_vec2_u32(vec2<u32>(2482u, 28249u), vec2<u32>(1u, u_input.d))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, u_input.d, 53362u), reverseBits(vec3<u32>(1u, u_input.e, u_input.e)), ~func_3(global1.a))));
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global3.b.x)))), _wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(step(global3.b.x, 1186f))), _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(round(835f))))), _wgslsmith_f_op_vec4_f32(-global1.b), select(!vec4<bool>(all(vec3<bool>(global1.a, global1.a, global1.a)), true, true, true), select(!select(vec4<bool>(global1.a, true, false, global3.a), vec4<bool>(true, false, true, false), global1.a), !(!vec4<bool>(global3.a, true, global3.a, false)), vec4<bool>(all(vec3<bool>(global1.a, true, false)), !global3.a, !global1.a, true)), vec4<bool>(false, _wgslsmith_f_op_f32(global3.b.x + -160f) != 810f, global3.a, false))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-591f)), _wgslsmith_f_op_f32(-var_0.x)) * var_0.x)));
    global0 = array<Struct_1, 1>();
    let var_2 = countOneBits(_wgslsmith_dot_vec3_i32(reverseBits(-u_input.c.yzw), u_input.c.yyx));
    return global0[_wgslsmith_index_u32(max(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.d, u_input.e, 49011u, 0u)), ~firstLeadingBit(vec4<u32>(u_input.d, 1u, 35295u, 4294967295u))), u_input.e), 1u)];
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~(firstTrailingBit(select(vec3<u32>(18303u, u_input.e, arg_0), vec3<u32>(u_input.e, u_input.d, 0u), arg_2.a)) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 7160u, arg_0), vec3<u32>(56690u, 0u, 27827u)), vec3<u32>(arg_0, 39747u, u_input.d)) % vec3<u32>(32u))) & _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(17361u, 1u, 0u), firstLeadingBit(vec3<u32>(arg_0, u_input.e, 1u)) ^ ~vec3<u32>(arg_0, 36545u, 4294967295u)), vec3<u32>(~_wgslsmith_div_u32(4294967295u, u_input.d), ~70430u, ~abs(arg_0)));
    let var_1 = func_2();
    let var_2 = var_1;
    var var_3 = Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, global3.b.x, 311f, 3134f))) + _wgslsmith_f_op_vec4_f32(step(var_1.b, var_2.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global1.b.x, var_2.b.x)), _wgslsmith_f_op_f32(abs(-1183f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.b.x))));
    let var_4 = var_0;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(~84677u, vec4<i32>(abs(max(1i, u_input.a & u_input.b.x)), 6794i, u_input.b.x, abs(abs(-u_input.c.x))), Struct_1(true == (u_input.d >= reverseBits(26643u)), vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -939f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(177f - -429f)), 1070f)));
    global3 = func_1(u_input.e, vec4<i32>(u_input.c.x, countOneBits(u_input.c.x), u_input.b.x, u_input.c.x), func_1(firstTrailingBit(firstLeadingBit(1u)), u_input.c, func_1(_wgslsmith_mult_u32(u_input.d, 59576u), u_input.c, global0[_wgslsmith_index_u32(1u << (_wgslsmith_mult_u32(1u, 1u) % 32u), 1u)])));
    global0 = array<Struct_1, 1>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.d, 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_0.b.yw - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-912f * global3.b.x) - -475f), _wgslsmith_f_op_f32(trunc(1520f)))), _wgslsmith_div_vec2_u32(max(~(vec2<u32>(50826u, 1u) ^ vec2<u32>(4294967295u, u_input.e)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.d), ~vec2<u32>(u_input.d, u_input.d))), ~min(countOneBits(vec2<u32>(30897u, 61292u)), vec2<u32>(u_input.d, u_input.d) ^ vec2<u32>(u_input.e, u_input.d))));
}

