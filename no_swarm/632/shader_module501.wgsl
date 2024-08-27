struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: f32;

var<private> global2: array<u32, 11> = array<u32, 11>(4294967295u, 76768u, 1u, 4294967295u, 27905u, 24568u, 0u, 6569u, 4294967295u, 63895u, 0u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_4(Struct_1(18409i, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), -469f))), !vec3<bool>(true, all(vec4<bool>(false, true, true, false)), true), vec2<i32>(u_input.b | (u_input.d.x >> (global2[_wgslsmith_index_u32(4294967295u, 11u)] % 32u)), 0i)), !any(vec3<bool>(false, true, false)) || (-_wgslsmith_dot_vec2_i32(vec2<i32>(12171i, 1i), vec2<i32>(u_input.c.x, 14234i)) > -70031i), Struct_2(all(vec2<bool>(true, true)), Struct_1(-31058i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2080f, -554f)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, true), true), u_input.e.zz), _wgslsmith_mult_i32(1i, 22471i), Struct_1(-20317i, vec2<f32>(-591f, -1445f), vec3<bool>(true, select(true, false, false), true), u_input.e.xy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1796f, 662f, 488f, -654f)))))));
    let var_1 = Struct_1(countOneBits(var_0.a.d.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-1904f, _wgslsmith_f_op_f32(sign(var_0.c.b.b.x)))), var_0.c.e.x), var_0.c.e.zw), vec3<bool>(var_0.b, true, all(!(!var_0.c.b.c))), -abs(-var_0.c.d.d));
    var var_2 = -(~vec2<i32>(u_input.e.x, 41939i));
    var var_3 = Struct_2(any(select(select(!var_1.c, !var_0.a.c, var_1.c.x), !vec3<bool>(var_0.c.d.c.x, true, false), !select(false, var_0.c.d.c.x, false))), Struct_1(var_0.c.c, _wgslsmith_div_vec2_f32(var_1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(691f, var_1.b.x))), vec3<bool>(false, true, var_1.c.x), select(var_0.a.d, var_0.a.d, true)), _wgslsmith_dot_vec2_i32(firstTrailingBit(-abs(var_1.d)), vec2<i32>(0i, -1i)), Struct_1(var_0.a.d.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_0.a.b.x)) + _wgslsmith_f_op_vec2_f32(-var_0.a.b)), select(var_1.c, var_1.c, !vec3<bool>(false, false, var_1.c.x)), abs(~var_0.c.b.d) | _wgslsmith_mult_vec2_i32(-u_input.c.xy, -vec2<i32>(-75486i, 82343i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(486f * var_1.b.x))), -312f, var_0.a.b.x, 1512f));
    return select(select(var_1.c.xz, !(!select(vec2<bool>(false, false), var_1.c.zy, vec2<bool>(var_3.b.c.x, var_3.a))), var_1.c.x), var_1.c.zy, var_3.d.c.x);
}

fn func_2() -> Struct_1 {
    global0 = global2[_wgslsmith_index_u32(4294967295u, 11u)];
    global2 = array<u32, 11>();
    let var_0 = true && all(func_3());
    global0 = global2[_wgslsmith_index_u32(47048u, 11u)];
    global2 = array<u32, 11>();
    return Struct_1(_wgslsmith_div_i32(firstLeadingBit(1i), 17183i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(270f))), -311f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1192f, -1902f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(843f, -503f))), true)))), vec3<bool>(-u_input.d.x >= u_input.a, var_0, true), vec2<i32>(u_input.a, u_input.b));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    return func_2();
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_4) -> f32 {
    global0 = ~_wgslsmith_sub_u32(~(~abs(1365u)), countOneBits(global2[_wgslsmith_index_u32(~4294967295u, 11u)]) >> (0u % 32u));
    let var_0 = Struct_2(arg_2.b, func_2(), arg_0.x, arg_2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-2990f, arg_2.c.d.b.x, -481f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.d.d.b.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.d.e), _wgslsmith_f_op_vec4_f32(sign(arg_1.d.e))) + vec4<f32>(_wgslsmith_div_f32(arg_1.d.d.b.x, arg_2.c.e.x), arg_2.a.b.x, _wgslsmith_f_op_f32(select(648f, arg_2.c.e.x, arg_1.d.d.c.x)), _wgslsmith_f_op_f32(-arg_1.d.d.b.x)))));
    var var_1 = 1u;
    let var_2 = Struct_1(0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.d.e.wz - vec2<f32>(var_0.e.x, arg_2.c.d.b.x)) * _wgslsmith_f_op_vec2_f32(var_0.e.yy + vec2<f32>(-165f, arg_2.c.b.b.x)))))), select(!(!func_1(Struct_1(arg_0.x, arg_2.a.b, var_0.b.c, u_input.e.zy)).c), !vec3<bool>(arg_1.e.c.x, any(vec2<bool>(true, false)), !var_0.b.c.x), !vec3<bool>(arg_2.b, !arg_2.c.d.c.x, select(true, true, var_0.a))), vec2<i32>(~(~(~var_0.b.a)), _wgslsmith_mult_i32(-arg_2.a.a >> (abs(44380u) % 32u), _wgslsmith_div_i32(~arg_0.x, reverseBits(-1i)))));
    let var_3 = abs(reverseBits(select(var_0.d.d, u_input.d, select(vec2<bool>(arg_1.e.c.x, arg_2.c.a), vec2<bool>(arg_2.c.a, arg_1.d.a), func_1(var_0.b).c.xy))));
    return _wgslsmith_f_op_f32(-1143f + _wgslsmith_f_op_f32(ceil(-169f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(max(1648f, -1291f));
    var var_0 = Struct_1(u_input.e.x, vec2<f32>(_wgslsmith_f_op_f32(func_4(select(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 0i, u_input.a, 2147483647i), vec4<i32>(u_input.e.x, 1i, 50542i, u_input.e.x)), -vec4<i32>(-48823i, 37665i, u_input.b, 14512i), true), Struct_3(-u_input.e.x, Struct_1(-26105i, vec2<f32>(-1000f, -572f), vec3<bool>(false, true, true), u_input.c.yy), firstTrailingBit(vec4<i32>(u_input.c.x, 1i, -1i, 35239i)), Struct_2(false, Struct_1(u_input.d.x, vec2<f32>(1000f, -1527f), vec3<bool>(false, true, false), u_input.e.zz), u_input.b, Struct_1(u_input.e.x, vec2<f32>(274f, 1065f), vec3<bool>(true, false, true), vec2<i32>(u_input.a, 2147483647i)), vec4<f32>(638f, 262f, -509f, 975f)), func_1(Struct_1(u_input.a, vec2<f32>(-397f, -1724f), vec3<bool>(true, false, true), u_input.e.yy))), Struct_4(func_1(Struct_1(u_input.a, vec2<f32>(-244f, -162f), vec3<bool>(false, false, true), vec2<i32>(u_input.b, 71359i))), true, Struct_2(true, Struct_1(u_input.d.x, vec2<f32>(214f, -1077f), vec3<bool>(true, true, false), u_input.e.xx), 6905i, Struct_1(0i, vec2<f32>(-185f, 982f), vec3<bool>(true, true, false), u_input.d), vec4<f32>(433f, 746f, -547f, -695f))))), _wgslsmith_f_op_f32(max(-607f, -287f))), func_2().c, _wgslsmith_mult_vec2_i32(~(~firstTrailingBit(u_input.d)), vec2<i32>(i32(-1i) * -2147483647i, ~u_input.e.x)));
    let var_1 = 2147483647i;
    global2 = array<u32, 11>();
    var var_2 = true;
    let var_3 = firstTrailingBit(_wgslsmith_sub_i32(2147483647i, func_2().a));
    var_2 = var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -max(vec4<i32>(-2147483647i, u_input.e.x, var_3, var_3), vec4<i32>(var_0.a, -19795i, var_1, var_3)), -reverseBits(-vec4<i32>(var_1, u_input.a, u_input.b, var_0.a))));
}

