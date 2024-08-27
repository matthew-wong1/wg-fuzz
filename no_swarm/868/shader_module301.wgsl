struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, true, false, false, true, true, true, false, true, true, false, true, false, false, true, false, false, true, false, false, true);

var<private> global1: vec4<u32>;

var<private> global2: array<vec4<f32>, 2>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1019f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1269f - -687f)), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))))));
    var var_1 = Struct_2(Struct_1(countOneBits(0i), !(firstTrailingBit(39668i) == _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.c, -26692i), vec3<i32>(u_input.c, 0i, -1i))), ~u_input.e.x));
    let var_2 = Struct_2(Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.d, u_input.d), _wgslsmith_clamp_i32(1i, abs(43063i), 3801i)), !var_1.a.b, countOneBits(~7905u)));
    return !vec3<bool>(false, any(!vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 21u)], global0[_wgslsmith_index_u32(var_2.a.c, 21u)])) | all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~global1.x, ~global1.x), ~51677u, abs(~var_2.a.c)), 21u)]);
}

fn func_2() -> i32 {
    global0 = array<bool, 21>();
    let var_0 = select(select(!vec3<bool>(true, true, 39764i >= u_input.c), !func_3(), false), vec3<bool>(!(!global0[_wgslsmith_index_u32(1u, 21u)] | global0[_wgslsmith_index_u32(global1.x, 21u)]), global0[_wgslsmith_index_u32(global1.x & u_input.e.x, 21u)], global0[_wgslsmith_index_u32(52935u, 21u)]), global0[_wgslsmith_index_u32(~min(u_input.b ^ global1.x, u_input.b) & max(reverseBits(~1u), 40249u), 21u)]);
    var var_1 = _wgslsmith_add_u32(reverseBits(abs(~(~2332u))), firstTrailingBit(~(min(u_input.b, global1.x) ^ ~37726u)));
    let var_2 = Struct_1(_wgslsmith_div_i32(-22866i ^ u_input.c, 2147483647i), !any(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 21u)], var_0.x, var_0.x)) || any(var_0), ~4731u);
    let var_3 = Struct_2(Struct_1(u_input.d.x >> (_wgslsmith_add_u32(~2732u, ~u_input.b) % 32u), global0[_wgslsmith_index_u32(~4294967295u, 21u)], ~var_2.c));
    return u_input.d.x;
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = ~(~(-vec2<i32>(u_input.c, func_2())));
    global2 = array<vec4<f32>, 2>();
    global1 = vec4<u32>(select(4294967295u, ~max(global1.x, abs(global1.x)), select(true, !global0[_wgslsmith_index_u32(20208u, 21u)], var_0.x)), 53376u, ~(~(~1u)) | ~arg_1, ~((arg_1 << (0u % 32u)) >> (global1.x % 32u)));
    let var_2 = var_1.x;
    return Struct_1(-1536i, !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(54961u, 21u)]), vec4<bool>(true, false, true, true), false), var_0.x && false)), arg_1);
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    return vec2<i32>(-firstTrailingBit(1i), 5590i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(min(_wgslsmith_div_vec4_u32(u_input.e, vec4<u32>(39033u, u_input.e.x, global1.x, u_input.b)), u_input.e), vec4<u32>(global1.x, _wgslsmith_sub_u32(u_input.a, 1u), global1.x, 63485u), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global1.x), global1.yz), 21u)]) & u_input.e, func_4(func_1(~_wgslsmith_sub_i32(u_input.d.x, 0i), global1.x)), min(max(~firstLeadingBit(u_input.e.x), ~countOneBits(40495u)), ~12557u));
    let var_1 = firstTrailingBit(global1.yzz);
    global1 = ~vec4<u32>(_wgslsmith_div_u32(countOneBits(func_1(u_input.c, u_input.a).c), 2311u), var_0.c, u_input.b, 65473u);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 1387f), -165f))));
    let var_3 = 4294967295u;
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-618f, ~12773u, vec4<i32>(u_input.c, -1i, var_4.b.x, min(_wgslsmith_add_i32(6395i, u_input.c), -13369i) | 9734i));
}

