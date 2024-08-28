struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 24>;

var<private> global1: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(-37588i, 1i), vec2<i32>(i32(-2147483648), -3255i), vec2<i32>(0i, -14035i), vec2<i32>(1i, -44604i), vec2<i32>(-41750i, 2147483647i), vec2<i32>(32584i, -1i), vec2<i32>(-8415i, 31661i), vec2<i32>(1717i, -2911i), vec2<i32>(2147483647i, 14753i), vec2<i32>(1i, 22500i), vec2<i32>(i32(-2147483648), -10996i), vec2<i32>(22106i, 0i), vec2<i32>(20341i, 12401i), vec2<i32>(0i, 1i), vec2<i32>(0i, 1i), vec2<i32>(5944i, -32019i), vec2<i32>(-1i, -23394i), vec2<i32>(-8929i, 4595i), vec2<i32>(i32(-2147483648), -33172i), vec2<i32>(-25276i, -2038i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-5720i, 2147483647i), vec2<i32>(-35980i, -5748i), vec2<i32>(34840i, 61858i), vec2<i32>(-3101i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(25304i, i32(-2147483648)), vec2<i32>(-29367i, -6416i), vec2<i32>(14168i, 0i));

var<private> global2: vec3<f32> = vec3<f32>(220f, 1054f, 1000f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>) -> vec4<i32> {
    var var_0 = Struct_1(~(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, u_input.c.x), global0[_wgslsmith_index_u32(~u_input.b, 24u)], _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.c.x, u_input.c.x)))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, _wgslsmith_div_i32(1i, 37957i), -arg_0.x, ~arg_0.x) & select(_wgslsmith_clamp_vec4_i32(vec4<i32>(6904i, arg_0.x, arg_0.x, -1441i), vec4<i32>(-2147483647i, arg_0.x, 1i, 2147483647i), vec4<i32>(arg_0.x, 71286i, arg_0.x, -2147483647i)), countOneBits(vec4<i32>(1i, -11566i, -21364i, -15683i)), all(vec2<bool>(false, false))), (max(vec4<i32>(18907i, 27280i, arg_0.x, -8037i), vec4<i32>(arg_0.x, -2147483647i, arg_0.x, arg_0.x)) << (~vec4<u32>(1u, 36863u, 15858u, u_input.b) % vec4<u32>(32u))) ^ (firstLeadingBit(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 16517i)) << (firstTrailingBit(vec4<u32>(4294967295u, 50145u, u_input.b, u_input.b)) % vec4<u32>(32u)))));
    let var_1 = Struct_1(u_input.a, _wgslsmith_mult_i32(~(-var_0.b), _wgslsmith_sub_i32(i32(-1i) * -6547i, arg_0.x)) & _wgslsmith_mod_i32(countOneBits(_wgslsmith_clamp_i32(0i, 25967i, var_0.b)), arg_0.x));
    let var_2 = min(select(vec3<i32>(i32(-1i) * -42128i, -2147483647i, firstTrailingBit(1i)), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(3385i, var_1.b, var_1.b), vec3<i32>(arg_0.x, arg_0.x, var_0.b) >> (vec3<u32>(var_0.a.x, var_0.a.x, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(13429i, 0i, var_1.b), vec3<i32>(1i, var_0.b, 2147483647i))), reverseBits(countOneBits(vec3<i32>(-7656i, -31018i, 2147483647i)))), vec3<bool>(true, true, true)), ~(-vec3<i32>(arg_0.x, 2147483647i, -2147483647i) & _wgslsmith_mod_vec3_i32(~vec3<i32>(arg_0.x, var_1.b, -18107i), vec3<i32>(var_0.b, 24883i, var_0.b))));
    let var_3 = -415f;
    var_0 = var_1;
    return min(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(17203i, 8126i, arg_0.x, var_1.b), -_wgslsmith_add_vec4_i32(vec4<i32>(-23834i, 2147483647i, var_1.b, 12512i), vec4<i32>(31468i, -1i, var_1.b, 1i))), vec4<i32>(1i, select(_wgslsmith_div_i32(var_1.b, -23398i), 1i, true), 2147483647i, firstTrailingBit(_wgslsmith_div_i32(arg_0.x, var_0.b)))), abs(vec4<i32>(-abs(12857i), ~(~1i), var_0.b, var_2.x)));
}

fn func_2() -> f32 {
    var var_0 = 15578u;
    global1 = array<vec2<i32>, 29>();
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(37401i, 38174i, 2147483647i, 1i)), func_3(vec2<i32>(17023i, -26108i))), 33829i) << (79748u % 32u);
    global1 = array<vec2<i32>, 29>();
    var var_2 = Struct_1(~u_input.c, _wgslsmith_add_i32(min(17555i, var_1), var_1));
    return global2.x;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    return Struct_1(vec2<u32>(~arg_0, ~arg_0), -2147483647i);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_4(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(98795u, 17140u, 0u, u_input.c.x) | vec4<u32>(arg_0, arg_0, 48351u, 19187u), ~vec4<u32>(u_input.a.x, 1u, 80899u, 74299u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_div_f32(global2.x, global2.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1678f)), global2.x));
    let var_1 = -1122f;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1530f, 1286f) - _wgslsmith_f_op_f32(f32(-1f) * -1051f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-676f, global2.x))))), -350f)));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(_wgslsmith_div_f32(1037f, 1102f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-228f, var_2.x) * var_1))), var_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1)))))));
    let var_3 = func_4(abs(128509u), vec2<f32>(global2.x, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -638f))));
    return Struct_1(~(~var_3.a >> (vec2<u32>(_wgslsmith_div_u32(var_0.a.x, 4635u), _wgslsmith_mod_u32(1u, var_0.a.x)) % vec2<u32>(32u))), ~(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(var_0.a.x, 29u)], vec2<i32>(var_0.b, var_0.b)) << ((~2251u << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, arg_0), vec2<u32>(u_input.c.x, u_input.c.x)) % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a.x);
    global2 = vec3<f32>(1183f, _wgslsmith_f_op_f32(-1330f * global2.x), _wgslsmith_f_op_f32(round(global2.x)));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 693f, global2.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) + vec3<f32>(global2.x, global2.x, global2.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.x, global2.x, -894f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(256f, global2.x, global2.x) + vec3<f32>(-1412f, 1131f, global2.x))))));
    var var_3 = func_4(var_0.a.x << (abs(var_0.a.x) % 32u), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x + var_2.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(537f))))), global2.xz));
    global2 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-33470i, ~select(~(~u_input.a), ~abs(vec2<u32>(var_3.a.x, var_3.a.x)), vec2<bool>(select(false, false, true), true)));
}

