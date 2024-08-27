struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 36946i;

var<private> global1: bool = true;

var<private> global2: array<bool, 4> = array<bool, 4>(false, false, false, true);

var<private> global3: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(2147483647i, -58790i, 0i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(i32(-2147483648), -42137i, 0i), vec3<i32>(-70i, 0i, 0i), vec3<i32>(-42436i, -45322i, -50574i), vec3<i32>(11552i, 2147483647i, -1i), vec3<i32>(-1i, -34867i, 53738i), vec3<i32>(-1i, 4076i, 0i), vec3<i32>(-15004i, -59213i, 1i), vec3<i32>(6855i, -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -9118i, 80118i), vec3<i32>(2147483647i, -684i, 0i), vec3<i32>(0i, 2075i, 17441i), vec3<i32>(9457i, 3536i, 1i), vec3<i32>(1i, 1i, -41952i), vec3<i32>(-1i, -19402i, 1i), vec3<i32>(-1i, 1179i, 0i), vec3<i32>(1i, 0i, -39076i), vec3<i32>(-55916i, i32(-2147483648), 1i), vec3<i32>(2147483647i, i32(-2147483648), -35813i), vec3<i32>(0i, 34512i, 2147483647i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_4(~(~(~(vec2<u32>(arg_0, 0u) & vec2<u32>(u_input.b, 0u)))));
    global0 = -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(2147483647i, u_input.a.x) | ~u_input.a.x, abs(u_input.a.x), u_input.c << ((var_0.a.x ^ 0u) % 32u)), _wgslsmith_div_i32(_wgslsmith_div_i32(~u_input.c, max(-25165i, -16558i)), max(u_input.c & u_input.a.x, 0i)));
    var var_1 = any(vec4<bool>(true, !any(select(vec4<bool>(true, true, false, arg_2.a.a.x), vec4<bool>(true, arg_2.a.a.x, arg_2.b.a.x, false), vec4<bool>(true, false, true, arg_2.b.a.x))), 0i >= u_input.c, all(vec2<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 4u)] & true, true))));
    global1 = any(vec4<bool>(true, any(vec3<bool>(!arg_2.a.a.x, all(arg_2.a.a), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(9831u, var_0.a.x), 4u)])), all(vec4<bool>(all(arg_2.a.a), var_0.a.x == 4294967295u, arg_2.a.a.x & arg_2.a.a.x, any(vec3<bool>(false, true, false)))), false));
    let var_2 = vec4<i32>(-(abs(32376i >> (var_0.a.x % 32u)) & -countOneBits(23202i)), ~_wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(u_input.a, u_input.a), select(-vec4<i32>(u_input.a.x, u_input.c, u_input.c, u_input.a.x), vec4<i32>(u_input.c, u_input.c, 1i, -20864i), vec4<bool>(true, true, false, arg_2.a.a.x))), _wgslsmith_add_i32(u_input.a.x, ~max(-1i, reverseBits(2147483647i))), abs(abs(0i)));
    return var_0.a.x ^ arg_0;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -557f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-122f, 948f, global2[_wgslsmith_index_u32(arg_0, 4u)])))) * arg_1.x)), select(global2[_wgslsmith_index_u32(57493u, 4u)], arg_0 <= _wgslsmith_clamp_u32(~u_input.b, ~1u, ~79253u), global2[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_div_u32(arg_0, u_input.b)), 4u)])));
    let var_1 = _wgslsmith_f_op_f32(floor(arg_1.x));
    return _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, ~4294967295u, ~42579u, _wgslsmith_dot_vec4_u32(vec4<u32>(3135u, 0u, 51598u, u_input.b), vec4<u32>(1u, 5134u, 5669u, u_input.b)))), ~vec4<u32>(1u, 0u, arg_0, ~func_3(986u, vec2<f32>(var_0, 193f), Struct_3(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], true))))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(529f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-457f)) + -2412f))));
    let var_1 = ~(~(~func_2(~u_input.b, vec3<f32>(643f, 271f, 1000f))));
    return countOneBits(min(abs(1u), var_1));
}

fn func_4(arg_0: u32) -> Struct_3 {
    var var_0 = u_input.a.zw;
    global3 = array<vec3<i32>, 21>();
    let var_1 = ~vec2<u32>(u_input.b, ~(u_input.b >> (~13520u % 32u)));
    global2 = array<bool, 4>();
    global3 = array<vec3<i32>, 21>();
    return Struct_3(Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 4u)]), vec2<bool>(global2[_wgslsmith_index_u32(arg_0, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)]), select(false, true, true)), !(global2[_wgslsmith_index_u32(1u, 4u)] && global2[_wgslsmith_index_u32(var_1.x, 4u)]))), Struct_1(select(vec2<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 4u)], false)), !global2[_wgslsmith_index_u32(arg_0, 4u)]), vec2<bool>(!global2[_wgslsmith_index_u32(u_input.b, 4u)], !global2[_wgslsmith_index_u32(1u, 4u)]), select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 4u)], false), select(vec2<bool>(false, global2[_wgslsmith_index_u32(10753u, 4u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 4u)], global2[_wgslsmith_index_u32(8695u, 4u)]), global2[_wgslsmith_index_u32(arg_0, 4u)]), all(vec2<bool>(global2[_wgslsmith_index_u32(0u, 4u)], false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1());
    var var_1 = 70427u;
    global0 = u_input.a.x;
    global1 = true | (var_0.a.a.x | (firstLeadingBit(-77954i) > u_input.c));
    global0 = 1i;
    global1 = u_input.b < 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(reverseBits(~(~vec2<u32>(u_input.b, 43001u))), max(vec2<u32>(37873u, reverseBits(31903u)), vec2<u32>(max(u_input.b, u_input.b), min(4294967295u, u_input.b)))), u_input.b, -select(max(-u_input.a.wxz, ~global3[_wgslsmith_index_u32(24454u, 21u)]), vec3<i32>(0i | u_input.c, u_input.a.x, 1i), !(!global2[_wgslsmith_index_u32(4294967295u, 4u)])), vec3<u32>(u_input.b, reverseBits(countOneBits(~u_input.b)), u_input.b));
}

