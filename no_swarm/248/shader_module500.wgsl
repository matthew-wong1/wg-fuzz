struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 5> = array<bool, 5>(false, false, false, false, false);

var<private> global2: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-2083f, 165f), vec2<f32>(1641f, -324f), vec2<f32>(694f, 1000f), vec2<f32>(175f, 1361f), vec2<f32>(1000f, 1268f), vec2<f32>(2043f, 1678f), vec2<f32>(-584f, -546f), vec2<f32>(1268f, -1000f), vec2<f32>(490f, -865f), vec2<f32>(-538f, -1443f), vec2<f32>(-1827f, -1000f), vec2<f32>(1000f, -119f), vec2<f32>(1000f, 785f), vec2<f32>(-184f, -764f), vec2<f32>(-1000f, 576f), vec2<f32>(-2030f, 252f), vec2<f32>(-1000f, -992f), vec2<f32>(1586f, 283f), vec2<f32>(427f, 861f), vec2<f32>(702f, -1103f), vec2<f32>(714f, 456f), vec2<f32>(141f, -1492f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<bool> {
    var var_0 = ~vec3<u32>(4294967295u, 1u, 13021u);
    let var_1 = Struct_1(_wgslsmith_div_f32(1790f, _wgslsmith_f_op_f32(f32(-1f) * -806f)), u_input.d.yzx, vec2<bool>(_wgslsmith_sub_i32(u_input.d.x, _wgslsmith_div_i32(u_input.d.x, 0i)) > ~select(-1i, 25712i, global1[_wgslsmith_index_u32(u_input.e.x, 5u)]), all(vec2<bool>(true, any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(23219u, 5u)], true, global1[_wgslsmith_index_u32(34574u, 5u)]))))), vec4<i32>(-(countOneBits(-13174i) >> (_wgslsmith_mult_u32(var_0.x, var_0.x) % 32u)), -u_input.d.x, -27903i, i32(-1i) * -2147483647i));
    var var_2 = var_1;
    global1 = array<bool, 5>();
    var var_3 = Struct_1(-325f, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(u_input.d.zxz) >> (u_input.e % vec3<u32>(32u)), vec3<i32>(u_input.d.x, var_1.d.x << (4294967295u % 32u), reverseBits(-67632i))), -countOneBits(select(var_2.b, vec3<i32>(1i, 18446i, 2147483647i), vec3<bool>(var_1.c.x, global1[_wgslsmith_index_u32(u_input.b, 5u)], false)))), vec2<bool>(true, true), var_1.d);
    return vec3<bool>(true, any(vec3<bool>(true, true | global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), 5u)], any(!vec4<bool>(var_2.c.x, true, global1[_wgslsmith_index_u32(47423u, 5u)], false)))), all(vec4<bool>(select(1000f == var_1.a, true, true), var_1.c.x, !var_1.c.x | !var_2.c.x, true != (false || var_1.c.x))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = arg_0.a;
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.d.x, arg_2.b.x), -35167i);
    let var_2 = 53104u;
    var var_3 = select(select(select(func_3(), vec3<bool>(true, true, true), arg_2.c.x), !(!(!vec3<bool>(arg_2.c.x, false, arg_0.c.x))), true), func_3(), !(all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(15241u, 5u)], false, arg_0.c.x), vec4<bool>(true, global1[_wgslsmith_index_u32(var_2, 5u)], arg_0.c.x, false), true)) || !all(vec3<bool>(arg_2.c.x, false, true))));
    let var_4 = 19660u;
    return 0u << (abs(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 843u, var_2, 0u), vec4<u32>(11513u, 0u, u_input.b, var_2)))) % 32u);
}

fn func_1() -> Struct_1 {
    global0 = u_input.d.x;
    global2 = array<vec2<f32>, 22>();
    var var_0 = reverseBits(vec3<u32>(min(~max(0u, u_input.c.x), _wgslsmith_add_u32(0u, _wgslsmith_mult_u32(u_input.b, u_input.e.x))), abs(func_2(Struct_1(-399f, vec3<i32>(u_input.d.x, -1i, 12952i), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 5u)]), vec4<i32>(4821i, 2147483647i, u_input.d.x, 2147483647i)), 975f, Struct_1(-930f, vec3<i32>(u_input.d.x, -1i, 28324i), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)]), u_input.d))), ~u_input.e.x));
    var_0 = vec3<u32>(abs(55527u), _wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(u_input.c.x, max(~var_0.x, 4294967295u))), abs(func_2(Struct_1(_wgslsmith_f_op_f32(-680f * -494f), vec3<i32>(0i, u_input.d.x, 1i), select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 5u)], true), true), abs(vec4<i32>(-1i, u_input.d.x, -53698i, -60409i))), -163f, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -690f), -u_input.d.zxy, !vec2<bool>(false, global1[_wgslsmith_index_u32(43032u, 5u)]), reverseBits(u_input.d)))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1112f, _wgslsmith_f_op_f32(round(-914f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1637f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1242f, -1075f, -266f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-480f, _wgslsmith_f_op_f32(ceil(413f)), -813f))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_add_vec3_i32(u_input.d.yyx, u_input.d.wzy) >> (vec3<u32>(~_wgslsmith_div_u32(var_0.x, var_0.x), ~(~var_0.x), 4167u) % vec3<u32>(32u)), select(!vec2<bool>(var_1.x < -1015f, false), vec2<bool>(!(u_input.d.x < 3760i), true & (var_1.x >= var_1.x)), true), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = array<vec2<f32>, 22>();
    var var_1 = countOneBits(u_input.d.x);
    let var_2 = ~_wgslsmith_add_u32(max(~1u, 1u), u_input.a & 3564u);
    global2 = array<vec2<f32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(u_input.c, ~_wgslsmith_mult_vec3_u32(u_input.c, u_input.e) | _wgslsmith_mult_vec3_u32(u_input.c & u_input.e, ~u_input.e)), _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(0u, 22u)] - _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2, u_input.c.x), 22u)] + vec2<f32>(_wgslsmith_f_op_f32(var_0.a * var_0.a), 1000f))), firstLeadingBit(vec4<u32>(1u, ~var_2, firstLeadingBit(4294967295u) >> (abs(0u) % 32u), var_2)), ~(~vec3<u32>(~var_2, _wgslsmith_mod_u32(var_2, var_2), 61390u)));
}

