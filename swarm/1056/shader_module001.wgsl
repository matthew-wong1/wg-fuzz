struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

var<private> global1: array<u32, 3>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: bool) -> bool {
    global1 = array<u32, 3>();
    global1 = array<u32, 3>();
    let var_0 = ~4294967295u;
    return u_input.b > 16735u;
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = -u_input.a;
    var var_1 = Struct_3(73672i, vec3<i32>(select(~_wgslsmith_clamp_i32(11101i, var_0.x, 17320i), arg_0.d.x, !all(vec4<bool>(true, true, true, false))), -51995i, ~_wgslsmith_mult_i32(-2147483647i, var_0.x)), var_0);
    let var_2 = vec3<i32>(-27497i, countOneBits(-_wgslsmith_mod_i32(-1i, var_0.x | arg_0.d.x)), var_1.b.x);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.c), !arg_0.b, vec3<f32>(-2063f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(ceil(-627f))))), 779f), var_0.xy);
    let var_4 = Struct_2(_wgslsmith_div_u32(4294967295u, u_input.b), vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_0.c.x)), _wgslsmith_f_op_f32(-arg_0.c.x))) * var_3.c.x), var_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)))), ~var_0.xww ^ var_0.wxz, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, 270f, 1136f, var_3.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-374f, 1044f, 240f, -1652f)), !vec4<bool>(arg_0.b.x, arg_0.b.x, true, false)))))));
    return var_3.a;
}

fn func_1() -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1716f * -1651f), _wgslsmith_f_op_f32(-315f * 557f), -498f))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, u_input.b >= u_input.b), false), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_2(true), false), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(444f, -213f, -196f) * vec3<f32>(1841f, -240f, -141f)), vec4<bool>(true, true, true, true), vec3<f32>(-1000f, 1068f, 961f), _wgslsmith_add_vec2_i32(vec2<i32>(21996i, -1i), vec2<i32>(u_input.a.x, u_input.a.x)))))), abs(abs(vec2<i32>(-6498i, u_input.a.x ^ -22730i))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(630f, 242f, var_0.a.x))))), vec4<bool>(any(select(select(var_0.b.wz, var_0.b.wy, false), !vec2<bool>(true, var_0.b.x), true)), reverseBits(~4349u) <= _wgslsmith_mult_u32(countOneBits(658u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 3u)], 3u)] << (62361u % 32u)), true, all(vec2<bool>(any(vec2<bool>(var_0.b.x, var_0.b.x)), var_0.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.c))), var_0.d);
    global0 = array<vec3<bool>, 28>();
    var var_1 = var_0.b.x;
    var_0 = Struct_1(var_0.c, select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, u_input.a.x > _wgslsmith_dot_vec2_i32(u_input.a.xx, var_0.d)), !(!select(vec4<bool>(var_0.b.x, var_0.b.x, false, true), vec4<bool>(false, false, true, var_0.b.x), false)), true | !any(var_0.b)), _wgslsmith_f_op_vec3_f32(-var_0.a), min(vec2<i32>(i32(-1i) * -var_0.d.x, -var_0.d.x), (-u_input.a.zy << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) << (vec2<u32>(~0u, reverseBits(61628u)) % vec2<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-134f, var_0.a.x, -1288f, -343f) - vec4<f32>(var_0.c.x, 410f, var_0.a.x, -971f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-710f, var_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(var_0.c.x, 260f, 1094f, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(465f, 932f, var_0.c.x, -1187f)), !vec4<bool>(false, false, var_0.b.x, var_0.b.x))), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f * var_0.c.x)), -765f, _wgslsmith_f_op_f32(-154f + var_0.a.x))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec2<i32>) -> StorageBuffer {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(663f + 1000f)) + _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(select(-1400f, arg_2.d.x, false)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.x)))))) * -1000f);
    let var_2 = 35424u;
    global1 = array<u32, 3>();
    global1 = array<u32, 3>();
    return StorageBuffer(arg_3 ^ var_0.c.zx, ~48409u | countOneBits(min(reverseBits(var_0.a), u_input.b)), -55769i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 28>();
    var var_0 = true;
    var var_1 = vec2<u32>(11366u, ~u_input.b);
    let x = u_input.a;
    s_output = func_4(Struct_2(_wgslsmith_mult_u32(0u, reverseBits(abs(global1[_wgslsmith_index_u32(var_1.x, 3u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2033f, 696f, -1014f, 1367f) + vec4<f32>(-823f, 1275f, -1098f, 140f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2013f, -466f, 1879f, -1363f) + vec4<f32>(-1000f, -1565f, 1411f, -1929f)))), ~(vec3<i32>(-1i) * -u_input.a.xzy), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-859f, 1162f, -163f, -135f), vec4<f32>(-2140f, 1490f, -222f, 169f), vec4<bool>(false, false, false, false)))))))), i32(-1i) * -2147483647i, Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(23311u, u_input.b, 0u), vec3<u32>(var_1.x, u_input.b, global1[_wgslsmith_index_u32(u_input.b, 3u)]), vec3<u32>(var_1.x, 4294967295u, 14062u)), vec3<u32>(global1[_wgslsmith_index_u32(var_1.x, 3u)], global1[_wgslsmith_index_u32(34173u, 3u)], global1[_wgslsmith_index_u32(u_input.b, 3u)]), vec3<bool>(false, true, true)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 37816u, global1[_wgslsmith_index_u32(1u, 3u)]), vec3<u32>(var_1.x, 0u, global1[_wgslsmith_index_u32(var_1.x, 3u)])) & firstLeadingBit(vec3<u32>(var_1.x, 3128u, 1u))), 3u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(864f, -1430f, 1000f, 778f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(303f, 1413f, 605f, -2355f), vec4<f32>(415f, 889f, -815f, 102f), false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2299f, 130f, -1333f, 1280f) * vec4<f32>(-1898f, 281f, 1709f, 211f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-869f, -1146f, -2548f, 480f))), true)), ~u_input.a.xww, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2071f, 463f, 1276f, -584f))))), vec2<i32>(~u_input.a.x >> (~(~global1[_wgslsmith_index_u32(10773u, 3u)]) % 32u), -2147483647i));
}

