struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(-1172f, -982f, 1000f, -240f, -663f, 1000f, 838f, 610f, 1192f, 967f, -343f, -489f, -775f, -1724f);

var<private> global1: array<vec4<f32>, 7>;

var<private> global2: array<vec4<f32>, 5>;

var<private> global3: array<u32, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    global3 = array<u32, 6>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, ~0u), 14u)];
    let var_1 = Struct_1(global3[_wgslsmith_index_u32(select(~firstTrailingBit(firstLeadingBit(8673u)), 0u, any(vec2<bool>(select(false, true, true), any(vec3<bool>(false, false, true))))), 6u)]);
    let var_2 = var_1;
    let var_3 = Struct_1(~(~abs(4294967295u)));
    return true;
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    global2 = array<vec4<f32>, 5>();
    let var_0 = Struct_3(Struct_1(3369u), select(vec3<bool>(all(vec3<bool>(true, true, false)) & (arg_0.x <= u_input.c), any(vec3<bool>(true, true, true)), any(vec4<bool>(false, false, true, true))), vec3<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), false, true), vec3<bool>(true, !func_3(), false)));
    global2 = array<vec4<f32>, 5>();
    let var_1 = _wgslsmith_sub_i32(-(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0) & u_input.c), -2147483647i) >> (_wgslsmith_mod_u32(83265u, firstTrailingBit(_wgslsmith_div_u32(var_0.a.a, var_0.a.a))) % 32u);
    let var_2 = vec4<u32>(_wgslsmith_div_u32(1u, ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(35945u, 4100u, u_input.a.x) << (vec3<u32>(4294967295u, 4294967295u, 0u) % vec3<u32>(32u)), abs(vec3<u32>(43115u, var_0.a.a, 25725u))), 6u)]), u_input.a.x, _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(var_0.a.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)])), vec2<u32>(~1u, 27357u))), _wgslsmith_clamp_u32(var_0.a.a, u_input.a.x, min(abs(global3[_wgslsmith_index_u32(4294967295u, 6u)]), _wgslsmith_sub_u32(var_0.a.a & 1u, reverseBits(global3[_wgslsmith_index_u32(13381u, 6u)])))));
    return 2147483647i;
}

fn func_1() -> u32 {
    global2 = array<vec4<f32>, 5>();
    let var_0 = Struct_2(func_2(_wgslsmith_sub_vec4_i32(~abs(vec4<i32>(-31043i, u_input.b.x, u_input.c, -2147483647i)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), u_input.d, 24963i, u_input.d))));
    let var_1 = Struct_1(41872u);
    global3 = array<u32, 6>();
    global1 = array<vec4<f32>, 7>();
    return ~global3[_wgslsmith_index_u32(var_1.a, 6u)];
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<f32>) -> vec4<u32> {
    global3 = array<u32, 6>();
    let var_0 = ~(~firstTrailingBit(vec2<u32>(countOneBits(34499u), 100278u)));
    let var_1 = 40167u;
    var var_2 = ~(~vec3<u32>(u_input.e, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(91859u, 6u)], 6u)], max(arg_0.x, 1u))) & vec3<u32>(4294967295u, _wgslsmith_add_u32(abs(54069u) ^ (4294967295u | arg_0.x), var_1), arg_0.x);
    global3 = array<u32, 6>();
    return _wgslsmith_mult_vec4_u32((select(vec4<u32>(0u, 17507u, var_1, 4294967295u), abs(vec4<u32>(20395u, 1u, 0u, 1u)), true) >> (select(~vec4<u32>(5776u, 45016u, var_0.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)]), vec4<u32>(global3[_wgslsmith_index_u32(var_2.x, 6u)], 1u, arg_0.x, var_0.x), -893f >= arg_1.x) % vec4<u32>(32u))) << (vec4<u32>(var_0.x << (~1u % 32u), 34360u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(17773u, arg_0.x, 4294967295u, var_2.x), vec4<u32>(var_1, 4294967295u, global3[_wgslsmith_index_u32(100145u, 6u)], arg_0.x)), 27893u), var_1) % vec4<u32>(32u)), select(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, arg_0.x, 0u, 36563u)), ~(~vec4<u32>(32973u, var_0.x, arg_0.x, 4294967295u))), max(vec4<u32>(4294967295u, var_2.x, 41541u, 34886u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, arg_0.x, 6209u, 35419u), vec4<u32>(16412u, 2845u, 1u, var_2.x), vec4<u32>(3912u, 4294967295u, 64161u, 10503u))) | vec4<u32>(1u, 1u, ~1u, func_1()), all(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 7>();
    var var_0 = func_4(vec2<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(57682u, 0u, 114863u, u_input.a.x) << (vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u) % vec4<u32>(32u)), ~vec4<u32>(43140u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53897u, 6u)], 6u)], global3[_wgslsmith_index_u32(18825u, 6u)], 4294967295u))), u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(func_1(), 14u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1635f - global0[_wgslsmith_index_u32(21298u, 14u)]) - _wgslsmith_f_op_f32(542f * global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39586u, 6u)], 14u)])), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(17843u, 6u)], u_input.a.x, u_input.a.x), 14u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(7493i, u_input.c, 40673i, 5302i), (vec4<i32>(u_input.b.x, u_input.c, -2147483647i, u_input.d) << (vec4<u32>(34836u, 4294967295u, global3[_wgslsmith_index_u32(u_input.a.x, 6u)], u_input.a.x) % vec4<u32>(32u))) ^ vec4<i32>(-1i, u_input.b.x, 14839i, u_input.d)) >> (firstTrailingBit(abs(vec4<u32>(global3[_wgslsmith_index_u32(1u, 6u)], u_input.a.x, 8404u, var_0.x))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-512f, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(37459u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], -1397f))), vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.e, 14u)], 1197f), -160f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(19080u, 14u)] - 1000f)))))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_div_u32(20311u, 4294967295u) >> (~var_0.x % 32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 44223u), ~84630u), vec2<u32>(countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53577u, 6u)], 6u)]), firstLeadingBit(14180u)), min(select(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 6u)], 6u)], u_input.e), var_0.wx, true), var_0.yw))));
}

