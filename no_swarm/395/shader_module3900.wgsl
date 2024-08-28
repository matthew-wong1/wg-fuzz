struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 8>;

var<private> global3: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(vec3<i32>(-71157i, -1i, -29687i)), Struct_5(vec3<i32>(-1i, -1i, -27337i)), Struct_5(vec3<i32>(2147483647i, 2147483647i, 12037i)), Struct_5(vec3<i32>(2147483647i, -1i, 1i)), Struct_5(vec3<i32>(-2053i, 0i, i32(-2147483648))), Struct_5(vec3<i32>(-12851i, -28232i, 29392i)), Struct_5(vec3<i32>(37273i, -75088i, 2147483647i)), Struct_5(vec3<i32>(-44166i, -4331i, i32(-2147483648))), Struct_5(vec3<i32>(-1i, 24213i, 1i)), Struct_5(vec3<i32>(0i, 70252i, 0i)), Struct_5(vec3<i32>(-27629i, -18844i, 2147483647i)), Struct_5(vec3<i32>(-1i, 2147483647i, 54698i)), Struct_5(vec3<i32>(-97i, 14077i, -3332i)), Struct_5(vec3<i32>(2147483647i, 1i, 0i)), Struct_5(vec3<i32>(2147483647i, 5602i, 2147483647i)), Struct_5(vec3<i32>(-29458i, 1i, 13229i)), Struct_5(vec3<i32>(1i, 52151i, 2147483647i)), Struct_5(vec3<i32>(0i, 17914i, 5931i)), Struct_5(vec3<i32>(24542i, 0i, 0i)), Struct_5(vec3<i32>(23282i, 17273i, i32(-2147483648))), Struct_5(vec3<i32>(1i, -12259i, 2147483647i)), Struct_5(vec3<i32>(0i, 27087i, i32(-2147483648))), Struct_5(vec3<i32>(2147483647i, -22461i, 13637i)), Struct_5(vec3<i32>(583i, 8623i, -1i)), Struct_5(vec3<i32>(-33176i, 17493i, -1i)), Struct_5(vec3<i32>(-20162i, 76206i, -80064i)), Struct_5(vec3<i32>(i32(-2147483648), -52672i, -22984i)), Struct_5(vec3<i32>(2147483647i, 10659i, 0i)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = abs(select(-arg_1, ~arg_1 << (reverseBits(~vec3<u32>(arg_2.x, u_input.b, 6858u)) % vec3<u32>(32u)), select(!(arg_3.x <= 0i), !(arg_0.a != 0u), any(!arg_0.c.yz))));
    return _wgslsmith_f_op_f32(-arg_0.e);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global3 = array<Struct_5, 28>();
    let var_0 = -_wgslsmith_add_vec3_i32(-firstLeadingBit(vec3<i32>(-14078i, 2147483647i, 1i)), vec3<i32>(1i, i32(-1i) * -2147483647i, ~5050i));
    var var_1 = _wgslsmith_dot_vec2_u32(global1.b.xw, _wgslsmith_add_vec2_u32(global1.b.yy >> (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a.x), ~vec2<u32>(0u, u_input.b)) % vec2<u32>(32u)), ~(~vec2<u32>(97009u, 4294967295u) ^ abs(u_input.a.yy))));
    let var_2 = Struct_4(~(u_input.b << (u_input.a.x % 32u)), select(vec4<bool>(arg_0 < _wgslsmith_f_op_f32(func_3(Struct_4(global1.a, vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), Struct_1(88u, vec4<u32>(global1.a, 0u, global1.a, 53170u)), arg_0), var_0, u_input.a.xy, vec2<i32>(var_0.x, 0i))), select(any(vec2<bool>(true, false)), true, true), false, true), vec4<bool>(all(vec4<bool>(true, true, false, true)) & select(true, true, false), false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, any(vec3<bool>(false, all(vec3<bool>(false, true, false)), all(vec4<bool>(false, false, false, false)))), true, 1u != ~_wgslsmith_mod_u32(global1.b.x, u_input.a.x)), Struct_1(_wgslsmith_dot_vec4_u32(reverseBits(min(global1.b, global1.b)), _wgslsmith_mult_vec4_u32(~global1.b, global1.b)), global1.b), _wgslsmith_f_op_f32(trunc(arg_0)));
    global2 = array<vec3<u32>, 8>();
    return Struct_1(1u, firstLeadingBit(vec4<u32>(0u, countOneBits(1u), global1.b.x, _wgslsmith_div_u32(4294967295u, max(16889u, u_input.b)))));
}

fn func_1() -> u32 {
    global1 = func_2(-364f);
    global3 = array<Struct_5, 28>();
    var var_0 = Struct_4(u_input.b, select(vec4<bool>(!any(vec3<bool>(true, true, false)), true, !select(false, false, true), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true)), !any(vec2<bool>(true, false))), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, false, false), true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false)), vec4<bool>(true, true, true, true), vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)), true, u_input.a.x >= u_input.a.x, true)), Struct_1(u_input.a.x, global1.b), -944f);
    let var_1 = vec3<i32>(-1i) * -select(~(vec3<i32>(-38999i, 13663i, 7821i) >> (global2[_wgslsmith_index_u32(u_input.b, 8u)] % vec3<u32>(32u))), -(~vec3<i32>(23766i, 25423i, 0i)), 2147483647i != firstTrailingBit(-66517i));
    global2 = array<vec3<u32>, 8>();
    return ~(~(~8512u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, ~vec4<u32>(u_input.b ^ ~global1.a, global1.a, global1.a, 16246u));
    let var_0 = vec2<u32>(1u, ~global1.b.x);
    var var_1 = reverseBits(global1.b);
    var var_2 = firstLeadingBit(~(max(_wgslsmith_div_u32(global1.a, 0u), func_1()) >> (var_0.x % 32u)));
    global2 = array<vec3<u32>, 8>();
    var var_3 = vec2<u32>(0u, 1u & _wgslsmith_sub_u32(select(global1.b.x >> (25642u % 32u), ~u_input.a.x, true), u_input.a.x));
    let var_4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(select(var_3.x, var_3.x, true), ~85704u, ~4294967295u), vec3<u32>(var_3.x, func_2(-1000f).a, _wgslsmith_add_u32(var_3.x, var_0.x))) ^ global2[_wgslsmith_index_u32(u_input.a.x | firstLeadingBit(var_3.x), 8u)], select((_wgslsmith_div_vec4_i32(vec4<i32>(var_4, var_4, 1i, 2242i), vec4<i32>(var_4, var_4, 0i, var_4)) | max(vec4<i32>(var_4, -1i, 12218i, -2147483647i), vec4<i32>(-1i, var_4, var_4, var_4))) | (vec4<i32>(-2546i, -31322i, var_4, var_4) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_3.x, global1.a, 4294967295u), vec4<u32>(4294967295u, 5077u, global1.a, u_input.a.x)) % vec4<u32>(32u))), min(max(max(vec4<i32>(var_4, var_4, -1i, -42192i), vec4<i32>(var_4, var_4, var_4, -25492i)), -vec4<i32>(var_4, 26883i, -46127i, var_4)), vec4<i32>(~var_4, firstLeadingBit(var_4), i32(-1i) * -35241i, _wgslsmith_mult_i32(var_4, var_4))), all(vec4<bool>(false, true, true, true))), abs(vec3<u32>(4070u, var_3.x, var_1.x)), _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(7505u, ~40873u, ~var_3.x)), ~firstLeadingBit(vec3<u32>(global1.b.x, 40662u, 4294967295u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-138f, 1000f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-123f, -1038f) - vec2<f32>(-1003f, 1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-123f, -854f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1113f, -662f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-402f, 504f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(234f, 1343f)), select(vec2<bool>(false, false), vec2<bool>(true, true), true))))));
}

