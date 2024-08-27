struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<bool>, 23>;

var<private> global2: array<bool, 2> = array<bool, 2>(false, true);

var<private> global3: array<i32, 6> = array<i32, 6>(-28498i, -34613i, -1i, -2137i, i32(-2147483648), 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_1 {
    global0 = true;
    global2 = array<bool, 2>();
    global2 = array<bool, 2>();
    var var_0 = any(vec3<bool>(true, false, true));
    global1 = array<vec4<bool>, 23>();
    return Struct_1(!global2[_wgslsmith_index_u32(u_input.c, 2u)], !vec2<bool>(all(vec3<bool>(false, global2[_wgslsmith_index_u32(45806u, 2u)], global2[_wgslsmith_index_u32(14206u, 2u)])), global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 2u)]));
}

fn func_3() -> bool {
    let var_0 = vec3<f32>(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -929f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-710f))))));
    global1 = array<vec4<bool>, 23>();
    let var_1 = ~u_input.c;
    let var_2 = _wgslsmith_add_i32(1i, i32(-1i) * -(~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, u_input.c), 6u)]));
    let var_3 = func_2();
    return false;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<i32>, arg_3: i32) -> u32 {
    let var_0 = 10083u;
    var var_1 = global2[_wgslsmith_index_u32(arg_1, 2u)];
    let var_2 = Struct_3(12164i, arg_0 & 29715i, vec3<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 2u)], max(arg_1, var_0) > _wgslsmith_div_u32(~26219u, var_0), global2[_wgslsmith_index_u32(arg_1, 2u)]), func_2(), ~u_input.e);
    let var_3 = Struct_4(Struct_2(var_2.d, Struct_1(func_3(), var_2.c.zx), func_2()), -304f, vec2<bool>((-27573i << (var_2.e.x % 32u)) == max(u_input.a.x, reverseBits(25857i)), !any(global1[_wgslsmith_index_u32(~var_2.e.x, 23u)])), _wgslsmith_f_op_f32(f32(-1f) * -466f));
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1711f)), _wgslsmith_f_op_f32(sign(var_3.b)))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(select(_wgslsmith_add_u32(0u, 1u), _wgslsmith_mult_u32(75002u, u_input.d.x), any(vec3<bool>(global2[_wgslsmith_index_u32(var_0, 2u)], global2[_wgslsmith_index_u32(var_2.e.x, 2u)], false))) | 0u, ~min(3560u, 1u), select(1u, var_2.e.x, var_3.c.x), min(~_wgslsmith_clamp_u32(11295u, 1u, u_input.d.x), _wgslsmith_add_u32(var_2.e.x, 0u) << (~u_input.d.x % 32u))), vec4<u32>(~0u, 1u, ~max(5130u, _wgslsmith_sub_u32(4294967295u, var_2.e.x)), (~30604u | var_2.e.x) ^ _wgslsmith_mult_u32(1u, firstTrailingBit(1u))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_mult_i32(arg_2.b, -global3[_wgslsmith_index_u32(countOneBits(4294967295u), 6u)])), countOneBits(~firstLeadingBit(5705i)) ^ _wgslsmith_dot_vec2_i32(abs(-u_input.a), u_input.a | firstTrailingBit(u_input.a)), global3[_wgslsmith_index_u32(1u, 6u)]);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(167f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1160f, -1000f)) - _wgslsmith_f_op_f32(abs(-2119f))))));
    var var_2 = Struct_4(Struct_2(arg_2.d, func_2(), arg_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), vec2<bool>(false, arg_2.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -138f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + _wgslsmith_f_op_f32(select(644f, var_1.x, arg_1)))), var_1.x)));
    var var_3 = _wgslsmith_add_u32(arg_3.x, 4294967295u);
    let var_4 = any(!func_2().b);
    return Struct_1(all(!(!arg_2.c)), vec2<bool>(false, select(!global2[_wgslsmith_index_u32(1u, 2u)], arg_1, var_4)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = !(!vec3<bool>(countOneBits(u_input.d.x) >= ~u_input.c, !(!global2[_wgslsmith_index_u32(u_input.d.x, 2u)]), true));
    global1 = array<vec4<bool>, 23>();
    global1 = array<vec4<bool>, 23>();
    var var_2 = func_4(global2[_wgslsmith_index_u32(select(12171u, ~u_input.e.x, true), 2u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(global3[_wgslsmith_index_u32(0u, 6u)] & ~u_input.b, ~(~u_input.e.x), vec3<i32>(u_input.b, global3[_wgslsmith_index_u32(~1u, 6u)], ~1i), _wgslsmith_div_i32(~0i, u_input.b)), 0u), 2u)], Struct_3(abs(u_input.a.x), u_input.b, !vec3<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 2u)], false)), func_2().a, global3[_wgslsmith_index_u32(u_input.d.x, 6u)] >= u_input.b), func_2(), u_input.d.yx), vec4<u32>(min(~0u, abs(27195u)), u_input.c, _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(u_input.e.x, u_input.c)) >> (abs(18116u) % 32u), ~abs(u_input.c)));
    var_0 = var_2.b.x;
    let var_3 = Struct_3(1i, global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c, u_input.e.x), 6u)], select(!(!vec3<bool>(true, false, var_2.a)), vec3<bool>(min(47047u, u_input.d.x) != ~1447u, _wgslsmith_f_op_f32(floor(-2022f)) != _wgslsmith_f_op_f32(f32(-1f) * -158f), var_1.x), true & any(!global1[_wgslsmith_index_u32(u_input.d.x, 23u)])), func_2(), u_input.d.xy);
    let var_4 = select(func_4(true, false, Struct_3(~u_input.b, ~var_3.a, var_3.c, var_3.d, vec2<u32>(firstTrailingBit(1u), u_input.c)), countOneBits(~vec4<u32>(46873u, u_input.c, 4294967295u, 28397u))).b, func_2().b, u_input.d.x != var_3.e.x);
    global1 = array<vec4<bool>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(0i, -var_3.b & countOneBits(18860i)) | -1i, _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(1u, u_input.e.x, 32289u, var_3.e.x)) << (~(vec4<u32>(u_input.c, 61616u, 0u, u_input.d.x) ^ vec4<u32>(var_3.e.x, u_input.e.x, 7533u, var_3.e.x)) % vec4<u32>(32u)), ~abs(~vec4<u32>(1u, u_input.e.x, 4294967295u, 4294967295u))));
}

