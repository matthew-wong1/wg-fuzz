struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(26243u, true, 39698i, vec3<f32>(-1498f, -1115f, 305f), 28913i), Struct_1(0u, true, 0i, vec3<f32>(548f, 848f, 390f), i32(-2147483648)), Struct_1(0u, false, 2946i, vec3<f32>(2129f, -1000f, -2851f), 1i), Struct_1(0u, false, -60225i, vec3<f32>(-102f, 362f, -625f), 1i), Struct_1(4294967295u, true, i32(-2147483648), vec3<f32>(1000f, 736f, 465f), -33427i));

var<private> global1: array<f32, 18> = array<f32, 18>(-343f, -1997f, -263f, 675f, 2953f, -1124f, -1006f, 111f, 1000f, 1021f, -1000f, 211f, -1385f, -1397f, 615f, 226f, -244f, 1146f);

var<private> global2: i32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(~_wgslsmith_clamp_u32(~68676u, _wgslsmith_clamp_u32(4294967295u, 0u, 0u), 76916u) ^ ~1u, true, _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.a), u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-543f * arg_1.x)), -1105f, -824f)), _wgslsmith_mult_i32(0i, 11105i));
    var var_1 = _wgslsmith_add_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.a.zw | vec2<i32>(1i, 0i)), u_input.a.yx)), ~(-select(vec2<i32>(var_0.c, -2147483647i), ~u_input.a.wy, !vec2<bool>(var_0.b, var_0.b))));
    var var_2 = Struct_1(~(~var_0.a), var_0.b, 2147483647i, _wgslsmith_f_op_vec3_f32(arg_0.zyz - arg_0.zzx), ~var_0.e);
    return global0[_wgslsmith_index_u32(var_2.a, 5u)];
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 11242i, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 17489i), vec2<i32>(1i, u_input.a.x))), max(min(u_input.a.zyx, u_input.a.wyy & vec3<i32>(-9817i, u_input.a.x, u_input.a.x)), u_input.a.wyx)), ~(~((vec3<i32>(1i, -4458i, 2147483647i) & vec3<i32>(2443i, u_input.a.x, 0i)) & (u_input.a.zwx << (vec3<u32>(1u, 11062u, 0u) % vec3<u32>(32u))))));
    global0 = array<Struct_1, 5>();
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 5u)];
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(512f, var_1.d.x, global1[_wgslsmith_index_u32(21007u, 18u)], global1[_wgslsmith_index_u32(var_1.a, 18u)]), vec4<f32>(global1[_wgslsmith_index_u32(30654u, 18u)], -1271f, 200f, var_1.d.x), vec4<bool>(false, var_1.b, true, true))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(125775u, 18u)], global1[_wgslsmith_index_u32(var_1.a, 18u)], 1303f, -529f), vec4<f32>(var_1.d.x, global1[_wgslsmith_index_u32(1u, 18u)], 102f, global1[_wgslsmith_index_u32(var_1.a, 18u)]))))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-771f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.x), global1[_wgslsmith_index_u32(49703u, 18u)])), var_1.d.yx));
    global2 = 46706i;
    return ~var_1.a;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> StorageBuffer {
    var var_0 = false;
    global1 = array<f32, 18>();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(142f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-479f + _wgslsmith_f_op_f32(min(-183f, -1176f)))), -704f), _wgslsmith_f_op_vec3_f32(-arg_1.d), vec3<bool>(all(!vec3<bool>(true, arg_2.b, arg_2.b)), true, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-295f, 1649f, arg_1.d.x, -1291f)) + vec4<f32>(326f, 288f, arg_1.d.x, 650f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.x, -290f) * vec2<f32>(global1[_wgslsmith_index_u32(arg_0.x, 18u)], global1[_wgslsmith_index_u32(26542u, 18u)])))).b)));
    var var_2 = ~u_input.a.wy;
    var var_3 = arg_2.a;
    return StorageBuffer(_wgslsmith_add_vec2_u32(~(~vec2<u32>(arg_1.a, 88488u)), abs(~vec2<u32>(30043u, arg_1.a))), arg_2.d, countOneBits(vec4<u32>(_wgslsmith_mult_u32(82711u, ~arg_0.x), arg_2.a, 0u | func_1(), _wgslsmith_dot_vec3_u32(~vec3<u32>(35664u, arg_1.a, arg_0.x), abs(arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 18>();
    global1 = array<f32, 18>();
    let x = u_input.a;
    s_output = func_3(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(12424u, 96894u, 0u))), firstTrailingBit(~vec3<u32>(1u, 4294967295u, 73194u))), Struct_1(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 25878u, 1u, 487u)), vec4<u32>(~0u, _wgslsmith_mult_u32(69270u, 15562u), 1u, ~4294967295u)), true, u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 18u)] - 1585f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(3952u, 18u)] * 794f), -1000f)), select(_wgslsmith_sub_i32(u_input.a.x ^ u_input.a.x, abs(-2147483647i)), _wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.wx & u_input.a.xy), !all(vec3<bool>(true, true, false)))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(5530u, func_1()), 5u)], vec4<i32>(u_input.a.x, 9959i, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -u_input.a.x, ~u_input.a.x), firstLeadingBit(u_input.a.zyz) << (reverseBits(vec3<u32>(1u, 33007u, 1u)) % vec3<u32>(32u)))));
}

