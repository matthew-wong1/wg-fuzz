struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 28>;

var<private> global2: array<i32, 22> = array<i32, 22>(44856i, 3873i, -5715i, -1i, -1533i, 32734i, 2147483647i, 2147483647i, 1i, 1i, -27467i, i32(-2147483648), i32(-2147483648), 1i, 2147483647i, 0i, 0i, -27726i, 0i, 2147483647i, -11705i, 13754i);

var<private> global3: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec3<u32>(0u, 230u, 47566u), vec2<f32>(-1000f, 1000f)), Struct_2(vec3<u32>(0u, 30365u, 47937u), vec2<f32>(833f, -1479f)), Struct_2(vec3<u32>(14286u, 1u, 4294967295u), vec2<f32>(301f, -461f)), Struct_2(vec3<u32>(4294967295u, 19069u, 4294967295u), vec2<f32>(1986f, 1282f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = 18406u;
    var var_1 = Struct_4(Struct_3(Struct_1(-1870f), _wgslsmith_div_vec3_u32(u_input.b, ~(~vec3<u32>(111256u, 0u, 4294967295u))), true, _wgslsmith_sub_i32(-2147483647i, reverseBits(2147483647i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1097f + -2021f)))));
    let var_2 = Struct_1(var_1.a.e.a);
    var_1 = Struct_4(var_1.a);
    global1 = array<Struct_2, 28>();
    return var_1.a;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-263f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -203f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-764f - 1274f)))));
    let var_1 = -669f;
    var var_2 = func_2(u_input.a);
    var var_3 = ~var_2.b.x;
    var var_4 = func_2(_wgslsmith_mod_i32(u_input.a, reverseBits(_wgslsmith_clamp_i32(arg_0, arg_0, 239i))) >> (_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(u_input.b.yz, vec2<u32>(0u, 12777u))), _wgslsmith_mod_vec2_u32(var_2.b.xx, u_input.b.yz) & vec2<u32>(var_2.b.x, var_2.b.x)) % 32u)).e;
    return var_2.c;
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_4) -> vec2<bool> {
    let var_0 = func_2(abs(i32(-1i) * -2147483647i));
    var var_1 = ~select(-(vec2<i32>(-2147483647i, 2147483647i) >> (vec2<u32>(var_0.b.x, u_input.b.x) % vec2<u32>(32u))), select(-(~vec2<i32>(u_input.a, u_input.a)), select(vec2<i32>(u_input.a, -2147483647i) << (vec2<u32>(0u, arg_2.a.b.x) % vec2<u32>(32u)), vec2<i32>(-40729i, global2[_wgslsmith_index_u32(5467u, 22u)]), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(true, arg_0), false)), select(!vec2<bool>(true, var_0.c), !vec2<bool>(arg_1, var_0.c), false)), select(select(select(vec2<bool>(arg_1, var_0.c), vec2<bool>(arg_0, false), false), !vec2<bool>(arg_1, false), var_0.c), select(vec2<bool>(var_0.c, true), select(vec2<bool>(true, arg_1), vec2<bool>(var_0.c, false), vec2<bool>(true, false)), true | arg_1), !vec2<bool>(arg_0, arg_1)));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.a - 696f), 1000f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(480f, 471f)))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(310f * 742f) * _wgslsmith_f_op_f32(var_0.a.a - 986f)), -1504f))), !(!(var_0.e.a < arg_2.a.e.a)) | false));
    var var_3 = Struct_2(arg_2.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-348f, -430f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_0.e.a) + vec2<f32>(697f, -1215f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, var_2.x))))))));
    var_3 = global3[_wgslsmith_index_u32(~var_3.a.x, 4u)];
    return !select(!vec2<bool>(func_1(-2147483647i), select(false, var_0.c, false)), !(!vec2<bool>(true, var_0.c)), false);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<bool>) -> StorageBuffer {
    var var_0 = u_input.b.yy;
    global1 = array<Struct_2, 28>();
    let var_1 = _wgslsmith_f_op_f32(max(-463f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(370f * _wgslsmith_f_op_f32(select(-864f, -762f, func_3(false, arg_2.x, Struct_4(Struct_3(Struct_1(118f), u_input.b, arg_2.x, -7451i, Struct_1(108f)))).x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-657f + 222f), _wgslsmith_f_op_f32(min(-177f, 496f)), true))))));
    let var_2 = func_2(u_input.a).e;
    global3 = array<Struct_2, 4>();
    return StorageBuffer(vec2<i32>(global2[_wgslsmith_index_u32(~(min(0u, 4294967295u) | arg_1), 22u)], ~(i32(-1i) * -16568i)), ((_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -19941i), vec3<i32>(u_input.a, arg_0.x, 27307i)) & -vec3<i32>(24667i, 83325i, 1i)) >> (vec3<u32>(1u, countOneBits(var_0.x), 110170u) % vec3<u32>(32u))) << (~(~firstTrailingBit(vec3<u32>(u_input.b.x, 4294967295u, arg_1))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_2.a, 555f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1572f, var_1, var_1, var_2.a) + vec4<f32>(var_2.a, var_2.a, var_1, -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-438f, var_2.a, 421f, -1181f) + vec4<f32>(1674f, var_1, 1000f, var_1)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1318f, -103f, -1044f, 421f) - vec4<f32>(var_2.a, var_2.a, 902f, -408f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 28>();
    global1 = array<Struct_2, 28>();
    let var_0 = 42131u;
    global1 = array<Struct_2, 28>();
    var var_1 = Struct_2(vec3<u32>(u_input.b.x & ~reverseBits(24772u), u_input.b.x, 22610u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-451f, _wgslsmith_f_op_f32(step(-1292f, 545f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1111f, 730f)))))));
    let x = u_input.a;
    s_output = func_4(vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_sub_i32(-1i, global2[_wgslsmith_index_u32(20850u, 22u)]), global2[_wgslsmith_index_u32(28502u, 22u)] >> (u_input.b.x % 32u)), _wgslsmith_add_u32(1u, ~(~(~4294967295u))), !func_3(_wgslsmith_mult_u32(30003u, var_0) >= 16100u, func_1(global2[_wgslsmith_index_u32(u_input.b.x, 22u)]), Struct_4(func_2(u_input.a))));
}

