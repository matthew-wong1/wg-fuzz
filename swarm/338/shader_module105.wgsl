struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: u32 = 4294967295u;

var<private> global2: bool;

var<private> global3: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(49070u, 18136u), vec2<u32>(57269u, 74433u), vec2<u32>(0u, 668u), vec2<u32>(0u, 29824u), vec2<u32>(78671u, 14179u), vec2<u32>(54871u, 4294967295u), vec2<u32>(60145u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(33430u, 1u), vec2<u32>(20371u, 1u));

var<private> global4: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    global2 = arg_1.b;
    var var_0 = global0[_wgslsmith_index_u32(arg_0.d.x, 10u)];
    let var_1 = abs(max(~arg_2.a.x, arg_1.c.x));
    global0 = array<Struct_1, 10>();
    global3 = array<vec2<u32>, 11>();
    return Struct_1(-(~vec2<i32>(0i, -arg_2.a.x)), var_0.b, arg_1.c, ~(~(~vec4<u32>(arg_0.d.x, arg_2.d.x, 74481u, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.e.x)), -507f, -696f, -617f)))));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    let var_0 = false;
    global4 = !(_wgslsmith_add_i32(_wgslsmith_mod_i32(~1i, _wgslsmith_sub_i32(u_input.c.x, arg_0.x)), abs(21932i)) < 2147483647i);
    let var_1 = func_1(global0[_wgslsmith_index_u32(0u << (_wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(0u, 1u, 38130u)), vec3<u32>(1u, 1u, 1u)) % 32u), 10u)], func_1(global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(1u, 1u)), 10u)], Struct_1(vec2<i32>(-37318i, 16060i), true, arg_0.yxx, vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(341f, -1158f, -633f, 1196f)))))), global0[_wgslsmith_index_u32(abs(26008u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 30166u, 0u, 4294967295u), ~vec4<u32>(0u, 0u, 0u, 74559u)), 10u)], vec2<f32>(func_1(global0[_wgslsmith_index_u32(max(0u, 4294967295u), 10u)], func_1(global0[_wgslsmith_index_u32(34850u, 10u)], Struct_1(u_input.c.wy, var_0, arg_0.zwz, vec4<u32>(26506u, 4294967295u, 2879u, 0u), vec4<f32>(-1130f, 122f, -673f, 950f)), global0[_wgslsmith_index_u32(10462u, 10u)], vec2<f32>(728f, -248f)), func_1(Struct_1(vec2<i32>(1i, -2147483647i), true, arg_0.yzw, vec4<u32>(1u, 1581u, 0u, 155858u), vec4<f32>(1000f, 2674f, -168f, -153f)), Struct_1(vec2<i32>(u_input.c.x, arg_0.x), var_0, vec3<i32>(u_input.c.x, arg_0.x, 2147483647i), vec4<u32>(36259u, 9206u, 4729u, 0u), vec4<f32>(-1000f, -407f, -893f, -1133f)), global0[_wgslsmith_index_u32(14697u, 10u)], vec2<f32>(-1559f, 1642f)), func_1(Struct_1(arg_0.zy, false, u_input.c.wzx, vec4<u32>(119116u, 44637u, 4294967295u, 49660u), vec4<f32>(-1120f, 568f, 215f, 449f)), global0[_wgslsmith_index_u32(62001u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], vec2<f32>(-315f, 674f)).e.yw).e.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-328f, 1049f))))), func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, 4294967295u, 4419u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)), 10u)], Struct_1(~(vec2<i32>(0i, arg_0.x) << (vec2<u32>(4294967295u, 37139u) % vec2<u32>(32u))), false, ~vec3<i32>(-33450i, u_input.b, u_input.b), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 0u, 52061u, 21205u), ~vec4<u32>(4294967295u, 49990u, 33115u, 0u), vec4<u32>(1u, 1u, 24541u, 33930u)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(666f, -395f, -1047f, -789f)))), func_1(Struct_1(u_input.a, any(vec2<bool>(true, true)), u_input.c.wyz, firstTrailingBit(vec4<u32>(19324u, 1u, 0u, 56023u)), _wgslsmith_div_vec4_f32(vec4<f32>(-359f, 1647f, 278f, 988f), vec4<f32>(1156f, 1255f, 272f, -1252f))), Struct_1(u_input.c.zw, all(vec3<bool>(var_0, false, var_0)), vec3<i32>(-27008i, arg_0.x, arg_0.x), ~vec4<u32>(0u, 5288u, 4294967295u, 104944u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(518f, -623f, -204f, -1204f))), global0[_wgslsmith_index_u32(~0u, 10u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(438f, -568f)))), vec2<f32>(901f, -1000f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -327f)) + _wgslsmith_f_op_f32(-1441f - _wgslsmith_div_f32(392f, 139f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(854f, -1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(300f)) * _wgslsmith_f_op_f32(round(531f))))));
    let var_2 = ~var_1.a.x;
    global3 = array<vec2<u32>, 11>();
    return true;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<u32> {
    global2 = (func_3(vec4<i32>(_wgslsmith_mult_i32(arg_3.c.x, arg_1.a.x), ~u_input.b, _wgslsmith_clamp_i32(-30401i, -2147483647i, arg_3.a.x), u_input.c.x)) && true) || arg_3.b;
    var var_0 = Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(arg_1.c.zy ^ vec2<i32>(u_input.c.x, 12766i)), -vec2<i32>(-4866i, 0i)), arg_1.c.zy << (vec2<u32>(_wgslsmith_mult_u32(arg_3.d.x, arg_3.d.x), 0u) % vec2<u32>(32u))), all(!vec2<bool>(0u > arg_2.x, arg_1.b)), arg_3.c ^ vec3<i32>(11081i, abs(~u_input.a.x), -13254i), vec4<u32>(_wgslsmith_sub_u32(~arg_2.x, _wgslsmith_clamp_u32(arg_2.x ^ arg_3.d.x, ~1u, firstTrailingBit(arg_3.d.x))), _wgslsmith_div_u32(~arg_2.x, _wgslsmith_mult_u32(arg_2.x, arg_1.d.x) >> (arg_2.x % 32u)), _wgslsmith_clamp_u32(2569u, ~arg_3.d.x, arg_2.x >> (arg_3.d.x % 32u)) | arg_2.x, arg_1.d.x), vec4<f32>(arg_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2084f))), -1585f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(585f, 312f) - 2108f))));
    global4 = !(!all(select(select(arg_0.zzw, vec3<bool>(arg_3.b, arg_1.b, var_0.b), false), select(vec3<bool>(false, true, arg_3.b), vec3<bool>(var_0.b, false, arg_3.b), vec3<bool>(arg_3.b, arg_0.x, arg_0.x)), arg_0.zyy)));
    global4 = !(!any(!arg_0.www));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.e.x, var_0.e.x, arg_0.x))) - arg_1.e.x);
    return ~arg_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(152f, -1302f, -267f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-395f, 217f, -632f) + vec3<f32>(-404f, 252f, 1149f))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(var_0.x)));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(func_2(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true), func_1(global0[_wgslsmith_index_u32(1u, 10u)], Struct_1(vec2<i32>(u_input.a.x, 10545i), false, vec3<i32>(73064i, u_input.b, 26159i), vec4<u32>(4294967295u, 50722u, 168826u, 17828u), vec4<f32>(var_1.x, -2400f, var_0.x, var_1.x)), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), false, vec3<i32>(u_input.b, u_input.a.x, -1i), vec4<u32>(20198u, 49967u, 46064u, 1u), vec4<f32>(var_1.x, 1018f, -1000f, var_1.x)), var_0.xx), ~vec4<u32>(0u, 0u, 22706u, 44545u), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), true, u_input.c.xzy, vec4<u32>(49923u, 4294967295u, 13211u, 4294967295u), vec4<f32>(533f, -768f, var_0.x, var_1.x))), vec4<u32>(1u, 1u, 1u, 1u)) | ~(~max(38647u, 4294967295u)), 4294967295u);
    var_0 = vec3<f32>(var_0.x, 414f, var_1.x);
    global1 = ~var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~vec3<u32>(0u, var_2.x, 18270u) & max(vec3<u32>(4294967295u, 54674u, 4294967295u), vec3<u32>(12098u, 34466u, 39758u))), 77524u, ~abs(vec4<u32>(countOneBits(37663u), _wgslsmith_add_u32(var_2.x, var_2.x), var_2.x, 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yz), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(393f)))) + vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + -1156f))))));
}

