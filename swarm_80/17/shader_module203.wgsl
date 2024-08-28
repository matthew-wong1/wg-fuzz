struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(-51384i, 2147483647i, 1i, -27075i, -1i, -40785i, 1i, -6707i, 1i, 0i, -54908i, -1i, -5286i, 15116i, -21905i, 2147483647i, i32(-2147483648), 70679i, 0i, -19570i, 14750i, 2147483647i, 0i, 0i, -1i, -30786i, 15754i, 31551i, 1i, 0i, -34335i, 1i);

var<private> global1: vec3<u32> = vec3<u32>(0u, 4294967295u, 8666u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec4<f32>) -> i32 {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(~627i, 6700i), i32(-1i) * -26637i, ~(~select(1101i, 34639i, arg_0.x)), -countOneBits(_wgslsmith_mod_i32(16086i, 2147483647i))) >> (~vec4<u32>(25610u, 82702u, global1.x, min(~4294967295u, ~u_input.d)) % vec4<u32>(32u));
    let var_1 = var_0.zx;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1f))))));
    var_3 = -1000f;
    return _wgslsmith_mult_i32(_wgslsmith_sub_i32(-21000i, 29411i >> (~_wgslsmith_clamp_u32(4294967295u, 1u, u_input.b) % 32u)), -10128i);
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(~(~1807u) << (~(~global1.x) % 32u), 32u)], -(~(u_input.a >> (global1.x % 32u))), min(func_3(select(vec2<bool>(true, true), vec2<bool>(true, true), true), Struct_2(vec2<f32>(-733f, 670f), Struct_1(21267i, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), _wgslsmith_div_vec4_f32(vec4<f32>(-1149f, 629f, -1000f, -372f), vec4<f32>(1028f, 355f, -117f, -2167f))), ~(~2147483647i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(31043u, 49365u, 59536u, u_input.c), firstLeadingBit(vec4<u32>(global1.x, 16229u, 39033u, global1.x))), ~select(vec4<u32>(61096u, global1.x, 68360u, global1.x), vec4<u32>(u_input.c, global1.x, u_input.b, 18214u), false)), 32u)]), -_wgslsmith_clamp_vec4_i32(select(-vec4<i32>(global0[_wgslsmith_index_u32(0u, 32u)], 11685i, u_input.a, 52699i), abs(vec4<i32>(15778i, global0[_wgslsmith_index_u32(38401u, 32u)], 8790i, global0[_wgslsmith_index_u32(global1.x, 32u)])), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], u_input.a, global0[_wgslsmith_index_u32(22363u, 32u)], -10845i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 32u)], u_input.a, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(33707u, 32u)]), vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(global1.x, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)], 320i), vec4<i32>(u_input.a, 2147483647i, global0[_wgslsmith_index_u32(57178u, 32u)], u_input.a))), reverseBits(-vec4<i32>(global0[_wgslsmith_index_u32(1u, 32u)], u_input.a, 2147483647i, -2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f) * -1204f);
    let var_2 = var_1;
    let var_3 = min(3537u, firstTrailingBit(abs(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, global1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, u_input.b, u_input.c), vec4<u32>(global1.x, u_input.c, 0u, 79499u))))));
    var var_4 = Struct_1(0i, true);
    return -1i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -491f) > _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-148f, _wgslsmith_div_f32(877f, _wgslsmith_f_op_f32(f32(-1f) * -943f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-983f, _wgslsmith_f_op_f32(-940f * 2225f))))));
    global1 = _wgslsmith_mod_vec3_u32(select(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(global1.x, 19126u, 34932u)), ~vec3<u32>(u_input.d, 0u, 103674u) ^ vec3<u32>(4294967295u, arg_2, 25783u)), _wgslsmith_div_vec3_u32(vec3<u32>(abs(4294967295u), 4294967295u, arg_2), vec3<u32>(firstTrailingBit(4294967295u), 15168u, 1u)), true), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, u_input.d, 4294967295u), ~(~vec3<u32>(arg_2, u_input.b, 0u))), firstTrailingBit(~vec3<u32>(4294967295u, 49980u, 0u))));
    let var_1 = vec2<bool>(true, true);
    let var_2 = arg_2;
    global0 = array<i32, 32>();
    return Struct_1(-23746i, (~_wgslsmith_clamp_u32(arg_2, 31046u, 120734u) == ~arg_2) & var_1.x);
}

fn func_1(arg_0: i32, arg_1: bool) -> vec2<f32> {
    let var_0 = func_4(Struct_1(_wgslsmith_mod_i32(-2147483647i, arg_0), true), Struct_1(func_2(), any(select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, arg_1, false), vec3<bool>(true, true, arg_1)), select(vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, true, arg_1), true), !arg_1))), 0u);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(783f, 729f, 1660f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1530f, 666f, 447f))) - vec3<f32>(_wgslsmith_div_f32(885f, 419f), 1f, 454f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(916f, -2521f, 748f) - vec3<f32>(837f, -132f, 258f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1234f, -1244f, -1000f) + vec3<f32>(633f, -1164f, 669f))))));
    var var_2 = var_0;
    let var_3 = abs(~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 45052u, global1.x), vec3<u32>(38272u, u_input.b, 43404u)), vec3<u32>(4294967295u, 80441u, global1.x))) >> (~reverseBits(~(~vec3<u32>(global1.x, 14101u, u_input.b))) % vec3<u32>(32u));
    var var_4 = func_3(vec2<bool>(true, select(abs(u_input.d) >= 1u, all(!vec3<bool>(var_2.b, true, var_0.b)), 1u < u_input.b)), Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-769f, 1728f, arg_1)), -347f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2053f, var_1.x), vec2<f32>(var_1.x, var_1.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1216f, -2066f) + var_1.zx))), func_4(Struct_1(~13796i, true), var_0, abs(_wgslsmith_add_u32(var_3.x, var_3.x)))), vec3<bool>(true, select(true, !(var_0.b && true), !(!var_0.b)), any(!vec3<bool>(false, arg_1, false))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(-var_1.x), var_1.x, var_1.x))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, arg_1)))), var_1.x), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-700f * 1147f))), select(select(vec2<bool>(false, true), select(vec2<bool>(false, var_2.b), vec2<bool>(false, false), vec2<bool>(var_2.b, false)), false), select(!vec2<bool>(var_2.b, false), !vec2<bool>(false, var_0.b), vec2<bool>(false, false)), select(!vec2<bool>(false, var_2.b), !vec2<bool>(arg_1, false), !vec2<bool>(var_2.b, var_2.b))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, 411f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(1u, global1.x), ~82294u), ~max(vec2<u32>(0u, 109314u), ~global1.yz));
    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(u_input.a, false)) - vec2<f32>(-1207f, 866f)) * vec2<f32>(1337f, _wgslsmith_f_op_f32(f32(-1f) * -2474f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1682f + -843f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(16820u, 32u)], true)).x))), Struct_1(abs(~u_input.a) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 47306u, u_input.c), ~vec3<u32>(global1.x, 1u, var_0.x)) % 32u), !any(vec3<bool>(true, true, true))));
    var var_2 = var_1.b;
    var var_3 = var_1;
    var_2 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(~6264i, _wgslsmith_f_op_vec2_f32(-var_1.a), firstLeadingBit(56355u));
}

