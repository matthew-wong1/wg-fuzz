struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-1368i, -29719i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, -34256i), vec2<i32>(-2817i, 0i), vec2<i32>(-35880i, 0i), vec2<i32>(-41877i, 0i), vec2<i32>(52472i, -12955i), vec2<i32>(-55620i, 20741i), vec2<i32>(1i, 41935i), vec2<i32>(0i, 24950i), vec2<i32>(0i, 39497i), vec2<i32>(3911i, -8137i), vec2<i32>(58921i, 6241i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(17924i, 36584i), vec2<i32>(-36450i, 0i), vec2<i32>(33812i, -49350i), vec2<i32>(2147483647i, 43496i), vec2<i32>(0i, 1i), vec2<i32>(0i, 20683i), vec2<i32>(-1i, 41588i), vec2<i32>(-1i, 1426i));

var<private> global2: Struct_1 = Struct_1(-728f);

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 66547u, 1u, 37540u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = i32(-1i) * -34087i;
    let var_1 = Struct_1(1000f);
    global3 = firstTrailingBit(min(min(~vec4<u32>(1u, 10594u, 0u, 0u), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(23429u, global3.x, 41713u, 18014u), vec4<u32>(25767u, global3.x, global3.x, global3.x)), select(vec4<u32>(global3.x, 0u, 36358u, 1332u), vec4<u32>(global3.x, global3.x, 4294967295u, 4294967295u), vec4<bool>(true, true, false, true)))), vec4<u32>(_wgslsmith_mod_u32(1u, 4267u), global3.x, _wgslsmith_clamp_u32(global3.x, global3.x, global3.x), global3.x) & ~vec4<u32>(39960u, global3.x, 1u, global3.x)));
    global0 = Struct_1(-1974f);
    global3 = select(select(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, global3.x, 3068u, global3.x), vec4<u32>(global3.x, global3.x, global3.x, 53885u)), ~vec4<u32>(global3.x, global3.x, global3.x, 4294967295u) ^ (vec4<u32>(61755u, global3.x, 1u, 18794u) << (vec4<u32>(global3.x, 40388u, 16528u, global3.x) % vec4<u32>(32u))), false), ~vec4<u32>(global3.x, 1u, 7363u, global3.x), !vec4<bool>(-156f == global0.a, all(vec3<bool>(false, true, false)), true, all(vec2<bool>(false, false)))) & ((~(~vec4<u32>(1u, 0u, global3.x, global3.x)) >> (~countOneBits(vec4<u32>(global3.x, 47446u, 30356u, global3.x)) % vec4<u32>(32u))) << (min(~(vec4<u32>(0u, global3.x, global3.x, 14637u) & vec4<u32>(global3.x, global3.x, 33265u, global3.x)), ~vec4<u32>(global3.x, 18711u, 9951u, 44082u)) % vec4<u32>(32u)));
    return ~global3.x | abs(global3.x);
}

fn func_2() -> u32 {
    var var_0 = func_3();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.a))) - 1384f));
    let var_2 = vec2<i32>(u_input.a, -1i);
    global1 = array<vec2<i32>, 22>();
    var_0 = 11743u;
    return _wgslsmith_add_u32(global3.x ^ (global3.x & _wgslsmith_div_u32(1u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>((global3.x | global3.x) ^ ~8315u, 31483u, reverseBits(max(global3.x, global3.x)), global3.x), ~((vec4<u32>(4108u, 1u, global3.x, 22526u) | vec4<u32>(global3.x, global3.x, global3.x, global3.x)) ^ ~vec4<u32>(45963u, 5813u, global3.x, 4294967295u))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global3 = _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(41429u, global3.x, global3.x, 23056u) | ~vec4<u32>(0u, global3.x, 20161u, 88326u), reverseBits(min(vec4<u32>(1u, 24918u, global3.x, global3.x), vec4<u32>(0u, global3.x, 1u, 101602u)))), vec4<u32>(max(~max(global3.x, 31565u), func_2()), min(45487u, ~global3.x) ^ ~_wgslsmith_mult_u32(global3.x, global3.x), 4294967295u, 4294967295u));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -628f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-global2.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, arg_0.a)))) * 806f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + global2.a)));
    var var_1 = _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.b.x, 1i), select((vec2<i32>(u_input.b.x, u_input.b.x) ^ u_input.b.xx) & global1[_wgslsmith_index_u32(global3.x, 22u)], max(vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-27132i, u_input.b.x, 47031i, -2147483647i), u_input.b)), countOneBits(~u_input.b.zz)), vec2<bool>(any(vec3<bool>(false, true, true)) | true, all(vec3<bool>(false, true, true)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_1(-1098f))))), 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(-2044i, 1000f);
}

