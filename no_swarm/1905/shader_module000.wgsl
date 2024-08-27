struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3>;

var<private> global1: Struct_1;

var<private> global2: array<i32, 5> = array<i32, 5>(0i, -10080i, 2147483647i, 28952i, 5281i);

var<private> global3: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(-1225f, vec3<i32>(i32(-2147483648), 22063i, 0i), vec2<i32>(-3619i, i32(-2147483648))), Struct_2(-411f, vec3<i32>(-20617i, -1i, 1i), vec2<i32>(2974i, 0i)), Struct_2(1221f, vec3<i32>(48106i, 2147483647i, -9286i), vec2<i32>(75533i, 0i)), Struct_2(-1000f, vec3<i32>(1i, 1i, -1i), vec2<i32>(i32(-2147483648), 1i)), Struct_2(-1196f, vec3<i32>(8892i, 15284i, -1i), vec2<i32>(-1i, 26234i)), Struct_2(318f, vec3<i32>(31094i, 40175i, 1i), vec2<i32>(-23090i, 38989i)), Struct_2(140f, vec3<i32>(1i, 63206i, 0i), vec2<i32>(-1i, 21081i)), Struct_2(170f, vec3<i32>(-38789i, 33479i, -33127i), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(-744f, vec3<i32>(0i, -1i, -42733i), vec2<i32>(-1i, -40313i)), Struct_2(372f, vec3<i32>(1i, 62164i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648))), Struct_2(-339f, vec3<i32>(-32962i, -1i, -1i), vec2<i32>(3140i, 24059i)), Struct_2(1000f, vec3<i32>(2147483647i, i32(-2147483648), 0i), vec2<i32>(-1i, 0i)), Struct_2(955f, vec3<i32>(-8896i, 0i, -17709i), vec2<i32>(0i, 1i)), Struct_2(-212f, vec3<i32>(-8937i, 1i, 54163i), vec2<i32>(1i, -11249i)), Struct_2(-824f, vec3<i32>(i32(-2147483648), -22032i, 0i), vec2<i32>(1i, -629i)), Struct_2(868f, vec3<i32>(-1i, 1i, 0i), vec2<i32>(-1i, 50612i)), Struct_2(675f, vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec2<i32>(-36255i, 1i)), Struct_2(-122f, vec3<i32>(1i, -1i, 8575i), vec2<i32>(-1i, 2147483647i)), Struct_2(291f, vec3<i32>(14881i, -44i, -1i), vec2<i32>(9711i, 17233i)), Struct_2(-1363f, vec3<i32>(50817i, 18510i, 1i), vec2<i32>(40167i, -12896i)), Struct_2(173f, vec3<i32>(67900i, 43172i, 2147483647i), vec2<i32>(0i, -42278i)), Struct_2(-1000f, vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec2<i32>(-19897i, 19844i)), Struct_2(1000f, vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec2<i32>(-1i, 6092i)), Struct_2(652f, vec3<i32>(20383i, i32(-2147483648), -1i), vec2<i32>(-5285i, -10291i)));

var<private> global4: array<vec4<f32>, 2>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> i32 {
    global3 = array<Struct_2, 24>();
    var var_0 = ~(u_input.a.x | 1u);
    var var_1 = Struct_2(arg_0, vec3<i32>(25341i, min(~global2[_wgslsmith_index_u32(4294967295u, 5u)], firstTrailingBit(-2147483647i)), global1.a ^ ~global2[_wgslsmith_index_u32(1u, 5u)]) << ((vec3<u32>(~u_input.a.x, 48628u << (u_input.b % 32u), u_input.a.x) << (abs(u_input.a ^ vec3<u32>(u_input.a.x, 4294967295u, u_input.b)) % vec3<u32>(32u))) % vec3<u32>(32u)), -_wgslsmith_mod_vec2_i32(vec2<i32>(global1.a & global1.a, global1.a), firstLeadingBit(abs(vec2<i32>(global1.a, global1.a)))));
    var var_2 = !select(vec4<bool>(all(!vec4<bool>(false, true, false, global1.b)), global1.b, any(vec4<bool>(global1.b, global1.b, global1.b, true)), global1.b | true), !vec4<bool>(global1.b, any(vec3<bool>(global1.b, false, global1.b)), global1.b, true), vec4<bool>(false, !global1.b, global1.b, false));
    var var_3 = _wgslsmith_sub_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(u_input.a.xx, ~vec2<u32>(4294967295u, u_input.a.x))), ~firstTrailingBit(u_input.a.xy)) >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u));
    return abs(-1i);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool) -> u32 {
    global1 = Struct_1(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(max(1688f, -507f))), arg_1)), arg_2);
    let var_0 = _wgslsmith_f_op_f32(-143f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, 264f)))));
    global3 = array<Struct_2, 24>();
    global2 = array<i32, 5>();
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(u_input.b, 2u)])), vec4<f32>(_wgslsmith_f_op_f32(-1383f + 763f), arg_1, var_0, _wgslsmith_div_f32(727f, arg_1))) * vec4<f32>(_wgslsmith_f_op_f32(var_0 * 463f), 1515f, -347f, _wgslsmith_f_op_f32(f32(-1f) * -185f)))));
    return 1u;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: bool) -> StorageBuffer {
    global3 = array<Struct_2, 24>();
    global4 = array<vec4<f32>, 2>();
    let var_0 = vec3<bool>(arg_3, u_input.a.x <= _wgslsmith_clamp_u32(func_2(-1i << (u_input.a.x % 32u), -1000f, arg_3), abs(arg_2), 1u), true);
    let var_1 = 648f;
    let var_2 = vec4<f32>(-1147f, _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-460f, 797f)) - arg_0) * _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(var_1 * -638f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1489f) + arg_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1654f, -878f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -423f)))))));
    return StorageBuffer(_wgslsmith_clamp_i32(~((i32(-1i) * -1i) | (global1.a << (arg_1 % 32u))), i32(-1i) * -3996i, ~(-1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2737f, 137f) * vec2<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * -497f) - _wgslsmith_f_op_f32(-var_2.x)))), var_2, -_wgslsmith_mod_vec4_i32(select(~vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], 0i, global1.a, global2[_wgslsmith_index_u32(45759u, 5u)]), -vec4<i32>(5375i, -46235i, -53009i, 34173i), var_0.x), global0[_wgslsmith_index_u32(30596u, 3u)]), ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~firstTrailingBit(vec2<i32>(global1.a, _wgslsmith_div_i32(5009i, global2[_wgslsmith_index_u32(u_input.a.x, 5u)]))));
    let var_1 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(56221i, global2[_wgslsmith_index_u32(u_input.b, 5u)]), vec2<i32>(13542i, var_0.x)), global1.a, 30923i << (u_input.b % 32u)), ~abs(vec3<i32>(var_0.x, -39440i, global2[_wgslsmith_index_u32(u_input.b, 5u)]))), ~var_0.x), _wgslsmith_mult_u32(24748u, _wgslsmith_mod_u32(firstLeadingBit(98426u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 115571u), vec2<u32>(u_input.b, u_input.b)))) <= 39580u);
    let var_2 = var_1;
    var var_3 = u_input.a.x != (~u_input.b | _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 16058u, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.b)), u_input.a));
    var var_4 = Struct_1(2147483647i, !all(!select(vec3<bool>(false, var_1.b, var_2.b), vec3<bool>(true, global1.b, var_2.b), var_1.b)));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1111f + 1086f)))) * 2557f), _wgslsmith_clamp_u32(reverseBits(_wgslsmith_clamp_u32(~4294967295u, 1u, u_input.a.x)), 4294967295u, u_input.a.x), 18637u, any(select(select(vec2<bool>(true, true), select(vec2<bool>(var_2.b, global1.b), vec2<bool>(false, false), vec2<bool>(var_1.b, true)), vec2<bool>(var_4.b, global1.b)), vec2<bool>(true, true), select(vec2<bool>(false, var_1.b), vec2<bool>(true, true), !vec2<bool>(var_4.b, true)))));
}

