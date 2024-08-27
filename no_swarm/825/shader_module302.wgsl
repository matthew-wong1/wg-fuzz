struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<u32, 4> = array<u32, 4>(88002u, 0u, 35175u, 0u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<bool>) -> vec2<u32> {
    let var_0 = reverseBits(_wgslsmith_sub_u32(~72093u ^ ((global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)] << (u_input.a % 32u)) ^ abs(82666u)), firstTrailingBit(~(u_input.a >> (4294967295u % 32u)))));
    global1 = array<u32, 4>();
    global1 = array<u32, 4>();
    global0 = array<f32, 19>();
    let var_1 = (-(5628i << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)] << (global1[_wgslsmith_index_u32(6436u, 4u)] % 32u), 4u)] % 32u)) > 1i) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(141f + global0[_wgslsmith_index_u32(u_input.a, 19u)]))) < _wgslsmith_f_op_f32(-1441f - global0[_wgslsmith_index_u32(countOneBits(var_0), 19u)]));
    return firstLeadingBit(vec2<u32>(~(~global1[_wgslsmith_index_u32(u_input.a, 4u)]), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], var_0, 4294967295u, 39239u), vec4<u32>(26384u, 0u, 23951u, 18934u)))) ^ ~(~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 4u)], 4u)], 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)]))));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec3<u32> {
    let var_0 = -838f;
    var var_1 = ~_wgslsmith_sub_i32(-18011i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(arg_1, 1i)), arg_1), 0i, _wgslsmith_div_i32(75234i, arg_1)));
    let var_2 = Struct_4(Struct_2(Struct_1(vec2<u32>(36964u, ~9576u), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1284f), true), arg_1, _wgslsmith_f_op_f32(-arg_0)), Struct_2(Struct_1(func_3(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true)), vec4<bool>(true, all(vec3<bool>(false, false, true)), true, all(vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(floor(var_0)), true), arg_1, -392f));
    let var_3 = select(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_2.b.b, ~arg_1), ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_2.b.b, 2147483647i, -6716i), vec4<i32>(arg_1, arg_1, var_2.b.b, var_2.b.b)), 1i, _wgslsmith_mult_i32(-39133i, arg_1 ^ arg_1)), vec4<i32>(_wgslsmith_sub_i32(abs(var_2.a.b), -51464i), -reverseBits(0i), 2147483647i, var_2.a.b)), vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(1i), 4809i, abs(arg_1)), select(firstTrailingBit(var_2.a.b), 1i, var_2.a.a.d), abs(1i), -15141i), var_2.a.a.b);
    var_1 = _wgslsmith_sub_i32(min(_wgslsmith_add_i32(_wgslsmith_sub_i32(-var_3.x, 17790i), reverseBits(-29638i)), -42851i), arg_1);
    return abs(~vec3<u32>(43834u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), firstLeadingBit(var_2.a.a.a)), global1[_wgslsmith_index_u32(49115u, 4u)]));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: bool, arg_3: i32) -> vec4<i32> {
    global0 = array<f32, 19>();
    var var_0 = select(vec3<i32>(1i, -1i, firstLeadingBit(-2147483647i)) << (_wgslsmith_sub_vec3_u32(~select(vec3<u32>(90017u, 29767u, u_input.a), vec3<u32>(global1[_wgslsmith_index_u32(1u, 4u)], u_input.a, u_input.a), vec3<bool>(arg_2, arg_2, true)), func_2(-796f, arg_3) | vec3<u32>(global1[_wgslsmith_index_u32(89805u, 4u)], 4294967295u, global1[_wgslsmith_index_u32(12370u, 4u)])) % vec3<u32>(32u)), vec3<i32>(47859i, 40168i, min(arg_1.x, _wgslsmith_mod_i32(arg_3, arg_1.x))), select(!vec3<bool>(true, true, select(arg_2, arg_2, true)), select(!vec3<bool>(arg_2, arg_2, arg_2), select(!vec3<bool>(arg_2, false, false), !vec3<bool>(false, false, arg_2), !arg_2), select(!vec3<bool>(false, arg_2, arg_2), select(vec3<bool>(arg_2, true, true), vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, arg_2, arg_2)), true)), vec3<bool>(all(select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, false), vec2<bool>(true, false))), arg_2, arg_2)));
    var_0 = ~select(vec3<i32>(var_0.x, 1i, _wgslsmith_sub_i32(16784i, countOneBits(-41639i))), ~_wgslsmith_mod_vec3_i32(~vec3<i32>(arg_3, 6111i, -1i), abs(vec3<i32>(-1731i, 1i, arg_3))), select(vec3<bool>(any(vec4<bool>(false, arg_2, true, arg_2)), arg_2, true), !select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2), false), select(vec3<bool>(arg_2, arg_2, false), select(vec3<bool>(true, arg_2, true), vec3<bool>(true, arg_2, arg_2), true), false)));
    let var_1 = Struct_4(Struct_2(Struct_1(firstTrailingBit(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.a, 4u)])) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 4u)], u_input.a), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], global1[_wgslsmith_index_u32(0u, 4u)])) % vec2<u32>(32u)), vec4<bool>(arg_2 | arg_2, arg_2, true, select(arg_2, arg_2, arg_2)), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a, 19u)])), true), ~var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1325f)), _wgslsmith_f_op_f32(f32(-1f) * -266f))), Struct_2(Struct_1(func_3(vec4<bool>(true, false, arg_2, arg_2)), vec4<bool>(arg_2 || arg_2, arg_2, true, select(false, arg_2, true)), 918f, false), arg_3 >> (_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)] ^ u_input.a, 49537u) % 32u), 1397f));
    let var_2 = var_1.b.a.c;
    return select(countOneBits(~firstLeadingBit(vec4<i32>(var_1.a.b, -6633i, 0i, -2147483647i))), ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, _wgslsmith_mod_i32(-2147483647i, -2147483647i), var_1.a.b | var_0.x, _wgslsmith_mod_i32(21592i, var_1.a.b)), -vec4<i32>(arg_3, arg_1.x, -30829i, arg_3) >> (~vec4<u32>(4294967295u, 0u, 41983u, var_1.b.a.a.x) % vec4<u32>(32u))), !arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(true);
    let var_1 = _wgslsmith_add_vec4_i32(select(vec4<i32>(_wgslsmith_div_i32(43071i << (global1[_wgslsmith_index_u32(u_input.a, 4u)] % 32u), reverseBits(16912i)), ~(~0i), -(~40942i), -(~(-23228i))), ~(-func_1(-666f, vec3<i32>(-63297i, -8126i, -2147483647i), var_0.a, 2147483647i)), select(select(select(vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, false, true), var_0.a), vec4<bool>(true, true, var_0.a, var_0.a), !vec4<bool>(var_0.a, var_0.a, false, var_0.a)), select(select(vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(var_0.a, false, true, var_0.a), false), select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, true, false, var_0.a), vec4<bool>(true, var_0.a, var_0.a, false)), false), vec4<bool>(true, any(vec3<bool>(true, var_0.a, var_0.a)), var_0.a, var_0.a & var_0.a))), vec4<i32>(_wgslsmith_dot_vec2_i32(~reverseBits(vec2<i32>(-18306i, 0i)), vec2<i32>(1i, 1i)), 1i, -1i, _wgslsmith_add_i32(_wgslsmith_div_i32(i32(-1i) * -1i, i32(-1i) * -4947i), 1i)));
    global0 = array<f32, 19>();
    var var_2 = select(select(!select(!vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(var_0.a, var_0.a, true, true), true), select(select(select(vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(var_0.a, false, false, var_0.a), false), !vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(true, true, true, true)), !(!vec4<bool>(var_0.a, var_0.a, false, false)), false && (var_0.a | var_0.a)), select(!select(vec4<bool>(false, var_0.a, var_0.a, true), vec4<bool>(true, false, var_0.a, false), vec4<bool>(var_0.a, var_0.a, true, true)), !select(vec4<bool>(false, var_0.a, true, var_0.a), vec4<bool>(var_0.a, true, false, true), vec4<bool>(var_0.a, true, var_0.a, false)), var_0.a)), select(vec4<bool>(var_0.a, any(!vec3<bool>(var_0.a, var_0.a, true)), var_0.a || (true != var_0.a), all(vec2<bool>(var_0.a, true))), !(!select(vec4<bool>(true, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, true), true)), var_0.a), all(select(vec3<bool>(var_0.a, true, true), select(!vec3<bool>(false, false, var_0.a), vec3<bool>(true, false, var_0.a), !var_0.a), !var_0.a || var_0.a)));
    global1 = array<u32, 4>();
    var var_3 = select(vec4<bool>(all(var_2.xz), true && any(!var_2.zwz), 292f <= _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(countOneBits(0u), 19u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f))), false), vec4<bool>(true, var_0.a, ~max(u_input.a, 77134u) < global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, select(34178u, global1[_wgslsmith_index_u32(u_input.a, 4u)], false)), 4u)], false), ~(~2037i) < var_1.x);
    var var_4 = Struct_2(Struct_1(vec2<u32>(~(~36759u), 4294967295u), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 19u)] <= 322f, false, var_0.a, true), vec4<bool>(var_2.x, true, true || var_0.a, true), !vec4<bool>(var_0.a, var_2.x, var_0.a, false)), 132f, var_2.x), _wgslsmith_div_i32(~(-2147483647i), -17269i), 852f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(var_4.a.a.x, 19u)], -1907f, 827f, global0[_wgslsmith_index_u32(13219u, 19u)]))), vec4<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50087u, 4u)], 19u)], 165f, true)), global0[_wgslsmith_index_u32(~var_4.a.a.x, 19u)], var_4.a.c, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, var_4.a.a.x), 19u)]), select(!vec4<bool>(false, var_3.x, true, var_4.a.d), vec4<bool>(var_4.a.d, var_0.a, false, var_2.x), select(var_4.a.b, vec4<bool>(false, true, false, var_3.x), vec4<bool>(var_4.a.b.x, var_4.a.d, var_2.x, true)))))), ~max(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.a.a.x, u_input.a, var_4.a.a.x, global1[_wgslsmith_index_u32(4294967295u, 4u)]), vec4<u32>(1u, 1u, var_4.a.a.x, u_input.a), vec4<u32>(1u, global1[_wgslsmith_index_u32(0u, 4u)], u_input.a, 80837u)), ~vec4<u32>(1u, global1[_wgslsmith_index_u32(44183u, 4u)], 12457u, global1[_wgslsmith_index_u32(4294967295u, 4u)])), vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~9237u, u_input.a), 4u)], 4u)], ~43557u >> ((_wgslsmith_add_u32(u_input.a, 4294967295u) ^ 102305u) % 32u), 1u), vec4<i32>(var_1.x, ~(-26998i), reverseBits(var_4.b), var_4.b), firstTrailingBit(_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(33681u, 29434u, 4294967295u, var_4.a.a.x), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.a, 4u)], 87392u, 83815u)), min(vec4<u32>(var_4.a.a.x, global1[_wgslsmith_index_u32(u_input.a, 4u)], 5445u, 4294967295u), vec4<u32>(4294967295u, u_input.a, 4294967295u, 1u)))));
}

