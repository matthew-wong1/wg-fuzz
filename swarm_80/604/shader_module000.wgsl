struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(2361f, 764f, -472f, 755f), vec4<f32>(-692f, -804f, 1000f, 1240f), vec4<f32>(835f, 2080f, 194f, 1381f), vec4<f32>(324f, -1819f, 1000f, -161f), vec4<f32>(1150f, -109f, 1566f, 1324f), vec4<f32>(714f, -2229f, 961f, 269f), vec4<f32>(-402f, 576f, -409f, 133f), vec4<f32>(-393f, 1603f, 734f, -1662f), vec4<f32>(397f, -349f, 1000f, 672f), vec4<f32>(-1224f, -297f, 1093f, 1117f), vec4<f32>(-913f, -187f, -315f, 1000f), vec4<f32>(-496f, 228f, -1124f, 1763f), vec4<f32>(-1542f, -102f, 472f, 843f), vec4<f32>(-256f, 759f, 173f, -879f));

var<private> global1: array<Struct_1, 22>;

var<private> global2: vec3<u32> = vec3<u32>(88814u, 0u, 0u);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<i32> {
    var var_0 = select(select(select(arg_2.c, vec3<bool>(false, true, arg_0.c.x), false), arg_0.c, !select(!arg_2.c.x, arg_2.c.x, arg_2.c.x)), vec3<bool>(!(!arg_0.c.x), any(vec3<bool>(any(vec3<bool>(arg_1.c.x, arg_0.c.x, true)), true, true)), !arg_0.c.x), any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(arg_0.c.x, false, true, arg_0.c.x), vec4<bool>(true, true, true, arg_2.c.x), vec4<bool>(false, false, false, arg_0.c.x)), vec4<bool>(true, all(arg_0.c.yz), arg_2.c.x, arg_2.c.x))));
    let var_1 = (vec2<i32>(~1i, _wgslsmith_mult_i32(-1i, -arg_0.b)) ^ (abs(arg_1.d.xx) << (~(~u_input.c.yx) % vec2<u32>(32u)))) ^ _wgslsmith_add_vec2_i32(u_input.a.yz, arg_2.d.zx);
    global2 = u_input.c;
    let var_2 = arg_0;
    let var_3 = global1[_wgslsmith_index_u32(u_input.c.x, 22u)];
    return _wgslsmith_mod_vec4_i32(firstLeadingBit(-vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(var_3.d, arg_0.d), u_input.a.x, 6734i & var_1.x)), _wgslsmith_add_vec4_i32(-_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(var_2.d.x, arg_2.b, arg_2.d.x, 0i)), reverseBits(vec4<i32>(1858i, var_3.b, -58515i, -2147483647i))), vec4<i32>(_wgslsmith_mult_i32(var_1.x, -66444i), ~(0i & arg_1.d.x), arg_2.d.x, 2147483647i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: u32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(arg_2, 22u)];
    let var_1 = 641f;
    let var_2 = ~(~_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(46325i, -2147483647i, var_0.b, 70859i), vec4<i32>(u_input.a.x, -32168i, arg_0.x, -12521i), vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x)), func_3(global1[_wgslsmith_index_u32(arg_2, 22u)], global1[_wgslsmith_index_u32(58163u, 22u)], Struct_1(vec3<f32>(arg_1, 100f, 963f), var_0.b, var_0.c, vec3<i32>(0i, var_0.b, -13802i), var_0.e), vec3<f32>(arg_1, -840f, arg_1)), -vec4<i32>(-2147483647i, u_input.a.x, arg_0.x, 0i)), ~(-vec4<i32>(u_input.a.x, 18598i, arg_0.x, -55786i))));
    let var_3 = Struct_1(var_0.a, reverseBits(-2147483647i) ^ u_input.a.x, var_0.c, _wgslsmith_clamp_vec3_i32(u_input.a, _wgslsmith_mod_vec3_i32(var_0.d, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b, arg_0.x, -1i), var_0.d, vec3<i32>(var_0.d.x, var_0.d.x, var_0.d.x))), _wgslsmith_mult_vec3_i32(-vec3<i32>(var_0.b, arg_0.x, -67569i), _wgslsmith_sub_vec3_i32(var_2.ywx, u_input.a))) ^ max(-vec3<i32>(var_0.d.x, -2147483647i, var_0.d.x), select(vec3<i32>(var_0.d.x, arg_0.x, -31969i), firstTrailingBit(var_0.d), true)), 1u);
    var var_4 = global1[_wgslsmith_index_u32(firstTrailingBit(var_0.e), 22u)];
    return -2147483647i;
}

fn func_1() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, 59309u, firstLeadingBit(global2.x)), u_input.c, vec3<bool>(all(vec3<bool>(true, false, false)), true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true)))), (_wgslsmith_mod_vec3_u32(u_input.c, u_input.c) >> (u_input.c % vec3<u32>(32u))) >> (u_input.c % vec3<u32>(32u))), 22u)];
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1474f * _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(sign(-867f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) - _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(select(-1459f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -997f) * var_0.a.x), true))), 29008i, vec3<bool>(any(vec4<bool>(true, true, true, true)), false, true), -vec3<i32>(-abs(0i), _wgslsmith_div_i32(firstLeadingBit(16340i), func_2(vec2<i32>(var_0.d.x, var_0.d.x), var_0.a.x, global2.x)), firstTrailingBit(u_input.a.x)), global2.x);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2045f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_f32(floor(1614f)))), var_1.a.x, var_1.a.x), var_1.d.x, !vec3<bool>(false, var_1.c.x, any(vec4<bool>(var_1.c.x, true, var_0.c.x, var_1.c.x))), var_0.d, ~u_input.c.x);
    let var_3 = var_2.b;
    var var_4 = var_2.e;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_div_f32(var_2.a.x, var_2.a.x), -2076f)))), func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(-7375i), _wgslsmith_add_i32(var_2.b, var_2.d.x)), _wgslsmith_clamp_vec2_i32(u_input.a.yy, var_2.d.xx, vec2<i32>(48060i, 36458i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.a.x, 1295f))) - -1046f), abs(28549u)), !select(vec3<bool>(var_0.c.x, select(false, true, var_0.c.x), true), select(vec3<bool>(true, var_2.c.x, var_2.c.x), var_1.c, !var_0.c.x), var_0.c.x), firstLeadingBit(_wgslsmith_clamp_vec3_i32(select(u_input.a, vec3<i32>(var_2.b, 20757i, var_2.b), vec3<bool>(var_1.c.x, true, var_2.c.x)), vec3<i32>(1i, 1i, var_1.d.x), vec3<i32>(-19654i, var_2.d.x, var_2.b))) ^ countOneBits(_wgslsmith_mod_vec3_i32(-var_1.d, u_input.a)), var_0.e ^ (1u | ~u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, global2.x), 22u)];
    let var_1 = func_1();
    let var_2 = Struct_1(var_1.a, 17474i, !var_1.c, -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, var_0.d.x, -2147483647i), min(min(vec3<i32>(0i, u_input.a.x, -30521i), var_0.d), min(vec3<i32>(var_0.b, u_input.a.x, 0i), vec3<i32>(-2147483647i, 0i, 1i)))), 1u);
    let var_3 = ~var_0.e;
    global2 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(abs(u_input.c), ~u_input.c, ~u_input.c));
    global0 = array<vec4<f32>, 14>();
    let var_4 = var_0.d;
    let var_5 = !vec4<bool>(any(!vec2<bool>(var_1.c.x, var_1.c.x)), true, var_0.c.x, min(u_input.a.x, func_3(Struct_1(vec3<f32>(var_2.a.x, var_0.a.x, var_2.a.x), var_4.x, var_0.c, vec3<i32>(-23641i, var_0.b, var_1.d.x), 5797u), Struct_1(vec3<f32>(-1000f, 1000f, var_2.a.x), u_input.a.x, vec3<bool>(var_1.c.x, var_0.c.x, true), var_1.d, u_input.b), var_1, vec3<f32>(-690f, -1561f, var_0.a.x)).x) != ~(-var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(535f);
}

