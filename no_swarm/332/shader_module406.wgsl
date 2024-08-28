struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10>;

var<private> global1: bool = false;

var<private> global2: f32 = -372f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> Struct_2 {
    global0 = array<vec4<u32>, 10>();
    var var_0 = _wgslsmith_mod_i32(47804i, arg_0.x);
    let var_1 = vec2<bool>(false, true);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1234f - -551f) + 543f)))));
    var var_2 = vec2<i32>(arg_0.x, _wgslsmith_sub_i32(countOneBits(arg_0.x), arg_0.x) << (min(u_input.a.x, 55425u >> (u_input.b % 32u)) % 32u)) << (vec2<u32>(0u, min(~_wgslsmith_sub_u32(80282u, u_input.b), u_input.a.x)) % vec2<u32>(32u));
    return Struct_2(select(max(_wgslsmith_add_u32(u_input.b, 37275u) >> (u_input.a.x % 32u), ~(~1u)), u_input.a.x, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1564f), -889f, 1000f, 827f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(268f, 195f, 3849f, 2335f), vec4<f32>(746f, 380f, 475f, 359f)), vec4<f32>(-266f, -313f, 154f, 1000f)))), select(!(!vec4<bool>(true, false, true, arg_1)), select(vec4<bool>(var_1.x, var_1.x, arg_1, arg_1), select(vec4<bool>(arg_1, var_1.x, arg_1, true), vec4<bool>(true, arg_1, false, arg_1), false), arg_1), !vec4<bool>(false, arg_1, arg_1, arg_1)))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(arg_2.b.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, -713f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, arg_2.b.x)))))));
    global2 = 1f;
    global0 = array<vec4<u32>, 10>();
    let var_1 = select(select(select(vec4<bool>(true, false, 1u < arg_2.a, true | arg_1.b.x), !vec4<bool>(false, true, arg_1.b.x, false), select(vec4<bool>(arg_1.b.x, arg_1.b.x, true, false), select(vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(false, true, true, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x)), select(vec4<bool>(true, arg_1.b.x, arg_1.b.x, false), vec4<bool>(true, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(false, false, true, true)))), !(!vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x)), select(false, true, !arg_1.b.x)), !vec4<bool>(all(vec4<bool>(true, arg_1.b.x, arg_1.b.x, arg_1.b.x)), false, !select(arg_1.b.x, arg_1.b.x, false), any(!vec2<bool>(arg_1.b.x, true))), !(!all(select(vec4<bool>(false, true, arg_1.b.x, false), vec4<bool>(arg_1.b.x, arg_1.b.x, true, false), true))));
    let var_2 = arg_1.b.x;
    return arg_1.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4, arg_3: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0.b.x))));
    let var_1 = (vec3<i32>(_wgslsmith_mult_i32(-arg_2.b.d, arg_2.b.d), _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_2.c.x, arg_2.b.d), _wgslsmith_div_i32(arg_2.b.b.x, -2147483647i)), arg_2.b.a.a) & vec3<i32>(-1i, firstTrailingBit(arg_2.c.x) & select(arg_2.b.d, arg_2.b.b.x, false), 1i)) & arg_2.c.zwz;
    let var_2 = firstLeadingBit(~min(_wgslsmith_mult_vec4_u32(~global0[_wgslsmith_index_u32(arg_1.a, 10u)], vec4<u32>(26726u, arg_2.b.e.x, arg_1.a, u_input.a.x)), global0[_wgslsmith_index_u32(arg_1.a, 10u)]));
    let var_3 = !(!(_wgslsmith_dot_vec4_i32(arg_2.c, -arg_2.c) < var_1.x));
    var var_4 = arg_0.b.x;
    return Struct_2(~15901u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.c.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(794f))))), 1000f, 757f, arg_2.b.c.x));
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_2) -> Struct_5 {
    global1 = true;
    var var_0 = select(_wgslsmith_div_vec4_u32(select(vec4<u32>(52967u, u_input.a.x, 4294967295u, 1u) | global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(~arg_2.a, 10u)], select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_2.a, ~u_input.b), ~u_input.a.xx | u_input.a.yy), 10u)]), ~global0[_wgslsmith_index_u32(~1u, 10u)], select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(!any(vec4<bool>(true, true, false, true)), false, false, 39686u <= ~u_input.b), false));
    var var_1 = Struct_1(1i, func_3(~arg_1, Struct_1(select(firstTrailingBit(-5046i), arg_0.x, true), vec3<bool>(all(vec4<bool>(true, false, true, true)), true, any(vec3<bool>(false, true, true)))), Struct_2(countOneBits(u_input.b << (u_input.b % 32u)), func_4(func_4(arg_2, Struct_2(0u, vec4<f32>(-183f, arg_2.b.x, arg_2.b.x, 1199f)), Struct_4(vec3<bool>(false, false, true), Struct_3(Struct_1(arg_0.x, vec3<bool>(true, true, true)), vec3<i32>(0i, 55475i, arg_1), vec4<f32>(arg_2.b.x, -629f, -257f, arg_2.b.x), arg_0.x, var_0.wz), vec4<i32>(-1i, arg_0.x, arg_1, -2147483647i)), false), arg_2, Struct_4(vec3<bool>(true, false, true), Struct_3(Struct_1(arg_0.x, vec3<bool>(false, false, true)), vec3<i32>(-48696i, -61388i, 1i), vec4<f32>(-420f, arg_2.b.x, arg_2.b.x, 594f), 2147483647i, vec2<u32>(6410u, var_0.x)), vec4<i32>(63062i, arg_0.x, 28597i, arg_0.x)), false).b)));
    global1 = true;
    var var_2 = Struct_1(var_1.a, !select(func_3(11347i, Struct_1(arg_0.x, vec3<bool>(var_1.b.x, var_1.b.x, false)), Struct_2(65366u, vec4<f32>(-596f, arg_2.b.x, arg_2.b.x, arg_2.b.x))), select(func_3(-75724i, Struct_1(2147483647i, var_1.b), arg_2), vec3<bool>(var_1.b.x, true, true), true), var_1.b.x));
    return Struct_5(Struct_3(Struct_1(_wgslsmith_mod_i32(2147483647i, 30545i & var_2.a), select(var_2.b, vec3<bool>(true, var_1.b.x, true), var_1.b)), arg_0 & (vec3<i32>(-1i) * -vec3<i32>(-36805i, 1i, -3862i)), arg_2.b, min(~(-9012i << (var_0.x % 32u)), -1i), max(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b), ~vec2<u32>(78793u, 83209u)), max(var_0.zy, reverseBits(vec2<u32>(var_0.x, 0u))))), func_2(vec4<i32>(var_1.a & 0i, ~var_2.a, var_1.a, i32(-1i) * -46122i) << (vec4<u32>(~2495u, abs(10864u), 1u, arg_2.a) % vec4<u32>(32u)), !func_3(1i, Struct_1(var_1.a, vec3<bool>(true, var_2.b.x, var_1.b.x)), arg_2).x).b.x, !var_2.b.x, firstLeadingBit(~var_0.zww));
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_2(4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    global1 = all(select(vec3<bool>(true, true, true), vec3<bool>(true, _wgslsmith_f_op_f32(exp2(var_0.b.x)) == _wgslsmith_f_op_f32(sign(-1799f)), !all(vec4<bool>(true, false, false, false))), select(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))), true, true)));
    global1 = true;
    global2 = 603f;
    var var_1 = _wgslsmith_f_op_f32(-var_0.b.x);
    return func_5(vec3<i32>(reverseBits(1i), -(~(0i >> (u_input.b % 32u))), -4141i), ~firstLeadingBit(-abs(-2147483647i)), func_4(func_2(-_wgslsmith_div_vec4_i32(vec4<i32>(-41660i, 29396i, -2147483647i, 10485i), vec4<i32>(2147483647i, -52803i, 40601i, 2147483647i)), true), Struct_2(u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(302f, var_0.b.x, 660f, var_0.b.x))), Struct_4(select(vec3<bool>(false, false, false), func_3(-19135i, Struct_1(-2147483647i, vec3<bool>(false, true, false)), var_0), func_3(0i, Struct_1(0i, vec3<bool>(false, false, false)), var_0)), Struct_3(Struct_1(-1i, vec3<bool>(false, true, true)), vec3<i32>(-13086i, -1i, -2147483647i), _wgslsmith_f_op_vec4_f32(-var_0.b), select(24844i, -11383i, false), ~u_input.a.yx), ~vec4<i32>(-5203i, -1i, -32289i, 67742i)), !all(vec2<bool>(false, false))));
}

fn func_6(arg_0: Struct_5) -> Struct_3 {
    let var_0 = func_1().a;
    global0 = array<vec4<u32>, 10>();
    let var_1 = !var_0.a.b.xz;
    global0 = array<vec4<u32>, 10>();
    var var_2 = _wgslsmith_div_i32(var_0.d, 55547i >> (_wgslsmith_add_u32(0u, arg_0.d.x & arg_0.a.e.x) % 32u)) & ~(-1i);
    return Struct_3(func_5(abs(func_5(vec3<i32>(var_0.d, -32779i, arg_0.a.a.a), arg_0.a.b.x, Struct_2(56068u, vec4<f32>(972f, var_0.c.x, -366f, arg_0.a.c.x))).a.b) >> (u_input.a % vec3<u32>(32u)), var_0.d, Struct_2(0u, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.c.x), var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -382f), _wgslsmith_f_op_f32(max(477f, -1404f))))).a.a, reverseBits(~abs(arg_0.a.b)), vec4<f32>(arg_0.b, -1224f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.c.x, var_0.c.x, var_1.x)), _wgslsmith_div_f32(var_0.c.x, var_0.c.x))), var_0.c.x), var_0.d, max(~firstLeadingBit(var_0.e), vec2<u32>(u_input.b, 1u)));
}

fn func_7(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    let var_0 = func_5(func_1().a.b, arg_2.x, func_2(vec4<i32>(arg_0.b.x, 0i, 2147483647i, 60803i), true)).a.a.b;
    let var_1 = func_5(vec3<i32>(arg_0.b.x, _wgslsmith_dot_vec2_i32(-arg_2 >> (~vec2<u32>(6652u, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(func_5(arg_0.b, -41547i, Struct_2(u_input.b, arg_0.c)).a.d, min(arg_0.a.a, 0i))), firstLeadingBit(-28279i)), abs(func_5(vec3<i32>(arg_0.d, arg_0.a.a, 124i), -arg_0.a.a, Struct_2(u_input.b, vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x))).a.d << (arg_0.e.x % 32u)), Struct_2(arg_0.e.x, arg_0.c)).a;
    let var_2 = false;
    let var_3 = ~(~_wgslsmith_div_i32(81100i, -1i));
    var var_4 = var_1.a;
    return ~var_1.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (~11551u >> ((~(u_input.a.x & 0u) & u_input.b) % 32u)) > (select(u_input.b, u_input.b, true) & func_7(func_6(func_1()), vec2<bool>(false, true), -vec2<i32>(-1i, -2147483647i) << (u_input.a.xx % vec2<u32>(32u)), true));
    let var_1 = func_4(Struct_2(_wgslsmith_mod_u32(func_4(func_2(vec4<i32>(-58178i, -1i, 0i, 1i), true), Struct_2(u_input.b, vec4<f32>(803f, 879f, -2892f, -172f)), Struct_4(vec3<bool>(true, true, true), Struct_3(Struct_1(-2147483647i, vec3<bool>(true, false, false)), vec3<i32>(-1i, 0i, 1i), vec4<f32>(-1154f, 1000f, -561f, -1348f), 1i, u_input.a.yx), vec4<i32>(0i, 9419i, 363i, 5629i)), false).a, func_1().d.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-987f + -798f) * _wgslsmith_f_op_f32(abs(236f))), _wgslsmith_f_op_f32(f32(-1f) * -269f), _wgslsmith_f_op_f32(sign(-109f)), -219f)), Struct_2(1u, vec4<f32>(_wgslsmith_f_op_f32(1000f * 1f), _wgslsmith_f_op_f32(-692f + _wgslsmith_f_op_f32(-472f + 1000f)), func_6(Struct_5(Struct_3(Struct_1(0i, vec3<bool>(false, false, true)), vec3<i32>(1i, -32857i, -1i), vec4<f32>(1029f, 1672f, -113f, -231f), 15223i, u_input.a.zz), -704f, false, vec3<u32>(16426u, u_input.b, 0u))).c.x, 1755f)), Struct_4(vec3<bool>(true, select(true, true, false), all(vec2<bool>(false, true))), Struct_3(Struct_1(func_6(Struct_5(Struct_3(Struct_1(2147483647i, vec3<bool>(false, false, false)), vec3<i32>(2147483647i, 23507i, 0i), vec4<f32>(-1000f, 975f, 455f, -1568f), 2147483647i, u_input.a.xx), 912f, false, vec3<u32>(8482u, u_input.b, 1312u))).b.x, vec3<bool>(false, false, true)), vec3<i32>(1i, 1i, 1i), vec4<f32>(func_1().a.c.x, -263f, _wgslsmith_f_op_f32(f32(-1f) * -588f), -1631f), func_6(func_5(vec3<i32>(1i, -2147483647i, -2147483647i), -33682i, Struct_2(34960u, vec4<f32>(-2194f, -1476f, -1368f, -161f)))).a.a, vec2<u32>(u_input.b, ~37531u)), _wgslsmith_add_vec4_i32(reverseBits(abs(vec4<i32>(-2147483647i, 24937i, 0i, -13926i))), vec4<i32>(-12892i, firstLeadingBit(0i), -2147483647i, 1i))), countOneBits(~u_input.a.x) >= 4294967295u);
    global1 = true;
    global0 = array<vec4<u32>, 10>();
    global2 = var_1.b.x;
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1126f + _wgslsmith_f_op_f32(floor(var_1.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(11247i << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, 0u), 4294967295u) % 32u)), _wgslsmith_sub_u32(~max(~u_input.b, 9353u), var_1.a), var_1.b.x, select(_wgslsmith_add_i32(~2147483647i, _wgslsmith_mult_i32(1i, 1i)), 0i << ((_wgslsmith_sub_u32(1u, u_input.a.x) >> (max(u_input.b, 1u) % 32u)) % 32u), any(!func_3(2147483647i, Struct_1(-22589i, vec3<bool>(false, false, true)), Struct_2(var_1.a, vec4<f32>(-936f, var_1.b.x, var_1.b.x, var_1.b.x))).zy)));
}

