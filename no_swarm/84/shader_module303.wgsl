struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(10654u, 1u, 1u), vec3<u32>(9219u, 0u, 62902u), vec3<u32>(4294967295u, 53068u, 4294967295u), vec3<u32>(1u, 0u, 0u), vec3<u32>(99995u, 0u, 1u), vec3<u32>(6694u, 1204u, 34988u), vec3<u32>(1u, 20545u, 18343u), vec3<u32>(50967u, 1u, 38721u));

var<private> global2: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    global1 = array<vec3<u32>, 8>();
    let var_0 = arg_0;
    let var_1 = var_0;
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    return 41199u ^ (~(~(~var_0.a.a)) ^ _wgslsmith_add_u32(0u, ~arg_0.a.b.x));
}

fn func_1() -> vec2<u32> {
    global1 = array<vec3<u32>, 8>();
    var var_0 = all(!vec2<bool>(select(false, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(func_2(Struct_3(Struct_1(8822u, global1[_wgslsmith_index_u32(44567u, 8u)])), Struct_2(vec2<f32>(281f, -847f), vec2<f32>(-584f, 693f), -17633i), true, vec2<u32>(45571u, 0u)), 8u)]), false));
    global1 = array<vec3<u32>, 8>();
    let var_1 = _wgslsmith_add_u32(1u, 41036u);
    var var_2 = Struct_1(select(~(~var_1), 1597u, !any(vec3<bool>(false, global0[_wgslsmith_index_u32(var_1, 8u)], true))) | reverseBits(_wgslsmith_mult_u32(var_1 >> (var_1 % 32u), var_1)), _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(0u, ~36808u, abs(58585u))), reverseBits(global1[_wgslsmith_index_u32(countOneBits(var_1), 8u)])));
    return ~var_2.b.zz;
}

fn func_3() -> u32 {
    let var_0 = !select(select(vec2<bool>(select(true, false, global0[_wgslsmith_index_u32(4294967295u, 8u)]), true), vec2<bool>(any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(30280u, 8u)], false)), true), !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(19799u, 29879u), 8u)]), !(!(!vec2<bool>(global0[_wgslsmith_index_u32(57254u, 8u)], true))), any(vec3<bool>(global0[_wgslsmith_index_u32(6101u, 8u)] || false, global0[_wgslsmith_index_u32(~4294967295u, 8u)], -5507i < u_input.a.x)));
    global2 = ~func_1().x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(860f)) - 839f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1144f, 1826f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-457f * -966f))) * _wgslsmith_div_f32(-813f, _wgslsmith_f_op_f32(step(-917f, 1361f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-732f, _wgslsmith_f_op_f32(min(-524f, var_1)), -1046f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(-var_1), -317f))));
    let var_3 = u_input.a.x;
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(countOneBits(~18216u), ~1u), vec2<u32>(_wgslsmith_add_u32(1u, ~84288u), _wgslsmith_dot_vec4_u32(vec4<u32>(20702u, 1u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)) | ~85323u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (vec4<u32>(0u, ~countOneBits(0u), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(51989u, 46659u, 0u, 4294967295u), vec4<u32>(0u, 37885u, 0u, 14863u))), _wgslsmith_sub_u32(~43615u, ~51813u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) << (vec4<u32>(1u, _wgslsmith_div_u32(1u, 4781u), ~1u, _wgslsmith_dot_vec2_u32(func_1(), func_1())) % vec4<u32>(32u));
    let var_1 = Struct_4(Struct_1(72841u, var_0.yzz), !global0[_wgslsmith_index_u32(func_3(), 8u)], select(vec4<bool>(false & !global0[_wgslsmith_index_u32(var_0.x, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], true, ~var_0.x != 1806u), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), var_0.wy), 8u)], global0[_wgslsmith_index_u32(~37405u, 8u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 8u)] & global0[_wgslsmith_index_u32(var_0.x, 8u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(42247u, var_0.x, var_0.x, 1u), vec4<u32>(50276u, 4294967295u, var_0.x, var_0.x)), 8u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, 32476u), global1[_wgslsmith_index_u32(0u, 8u)]), 8u)], true), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 8u)], global0[_wgslsmith_index_u32(var_0.x, 8u)] & false, all(vec3<bool>(false, false, false)), true))));
    let var_2 = Struct_5(Struct_3(var_1.a), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1222f, -1848f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1428f, -817f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1773f, -170f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-702f, -384f)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.a), 0i)), Struct_3(Struct_1(0u, ~select(var_1.a.b, var_0.zyy, global0[_wgslsmith_index_u32(1u, 8u)]))), Struct_4(var_1.a, true, select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 8u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 8u)], var_1.b, var_1.b, true), var_1.c), vec4<bool>(!global0[_wgslsmith_index_u32(var_0.x, 8u)], all(var_1.c.ywz), var_1.a.a < 13385u, true), var_1.c)));
    global0 = array<bool, 8>();
    var var_3 = var_2.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.a.b.zx, u_input.b.x);
}

