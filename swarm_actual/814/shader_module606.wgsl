struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-949f, 1274f, -1213f));

var<private> global1: i32 = 1i;

var<private> global2: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(-1617f, 1733f, -720f, 855f), vec4<f32>(-1725f, 505f, -351f, 1327f), vec4<f32>(-1165f, 351f, 129f, 259f), vec4<f32>(-244f, -300f, 2280f, -864f), vec4<f32>(-1967f, -1000f, 675f, -286f), vec4<f32>(1465f, -349f, 1237f, 1208f), vec4<f32>(262f, -601f, -553f, -326f), vec4<f32>(-219f, 938f, 1549f, -861f), vec4<f32>(-322f, -1297f, 814f, 1864f), vec4<f32>(1437f, -314f, 835f, -1350f), vec4<f32>(511f, -140f, -1064f, -140f), vec4<f32>(1086f, -1550f, -387f, 969f), vec4<f32>(-176f, 1144f, 483f, 554f), vec4<f32>(-1104f, 1000f, 472f, 129f), vec4<f32>(-1592f, 1000f, -1392f, 124f), vec4<f32>(-437f, -551f, 1000f, 611f), vec4<f32>(-698f, -465f, 1996f, 1105f), vec4<f32>(445f, -1638f, -2183f, -665f));

var<private> global3: Struct_3 = Struct_3(vec4<bool>(true, false, false, false), Struct_2(vec3<f32>(-1000f, 469f, -104f)), 2147483647i, Struct_1(-61895i, i32(-2147483648), vec3<bool>(true, false, true), vec3<i32>(25173i, -1i, 1i)), vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> f32 {
    let var_0 = true;
    global3 = arg_0;
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(-global3.d.d, vec3<i32>(u_input.c, u_input.d.x | arg_0.d.d.x, ~global3.c)) << (firstLeadingBit(15924u << (arg_0.e.x % 32u)) % 32u), u_input.c, arg_0.d.c, -min(~vec3<i32>(u_input.a.x, global3.d.d.x, 2147483647i), global3.d.d));
    global3 = arg_0;
    var_1 = global3.d;
    return arg_0.b.a.x;
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1212f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.b.a.x * 1000f), global3.b.a.x)), _wgslsmith_div_f32(-705f, global0.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.b.a.x + global3.b.a.x), -199f)));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(true, true, true, global3.d.c.x), global3.b, 14337i, global3.d, vec2<u32>(12591u, 16056u)), Struct_2(vec3<f32>(var_0.x, 337f, 287f)), -976f)), 531f, global3.b.a.x)))));
    return Struct_3(global3.a, Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-1000f, -2292f))))), -u_input.c, global3.d, global3.e);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<f32>) -> Struct_2 {
    global2 = array<vec4<f32>, 18>();
    var var_0 = !arg_0.a.zxw;
    var var_1 = func_2().d;
    var var_2 = Struct_1(i32(-1i) * -_wgslsmith_clamp_i32(1i, u_input.d.x >> (4294967295u % 32u), var_1.d.x), var_1.d.x, !arg_0.a.zxx, -firstTrailingBit(-firstTrailingBit(vec3<i32>(global3.d.b, arg_1, -41603i))));
    let var_3 = arg_0.b;
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(true, false, var_2.c.x, true), Struct_2(global3.b.a), ~u_input.a.x, global3.d, vec2<u32>(arg_0.e.x, 4294967295u)), func_2().b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(ceil(-2951f))))), _wgslsmith_f_op_f32(-1000f - global3.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.b.a.x, global0.a.x, false)), _wgslsmith_f_op_f32(-arg_0.b.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1415f * -2476f)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: f32) -> f32 {
    global1 = -34295i;
    global2 = array<vec4<f32>, 18>();
    let var_0 = func_4(func_2(), -2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, global3.b.a.x, arg_0.b.a.x, 775f)))));
    var var_1 = -u_input.d.xwz;
    var_1 = vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -arg_2.c, arg_2.c), countOneBits(countOneBits(-32671i)), -58026i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().b.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -702f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.b.a.x + -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.d.x, firstLeadingBit(-(~_wgslsmith_mod_i32(u_input.a.x, 2147483647i))), global3.a.yxy, global3.d.d);
    global1 = ~_wgslsmith_add_i32(_wgslsmith_add_i32(-16909i, ~1i), -19748i);
    var var_1 = u_input.c;
    var var_2 = vec3<i32>(max(-46738i, _wgslsmith_mult_i32(-global3.c, countOneBits(global3.d.b))), var_0.d.x, _wgslsmith_add_i32(var_0.b, var_0.b));
    let var_3 = vec2<bool>(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(func_1(Struct_3(vec4<bool>(true, true, false, true), global3.b, var_2.x, var_0, vec2<u32>(1u, global3.e.x)), vec4<u32>(u_input.b, global3.e.x, 4294967295u, 77198u), Struct_3(global3.a, global3.b, -2147483647i, Struct_1(3845i, var_0.b, vec3<bool>(global3.a.x, global3.a.x, true), vec3<i32>(2147483647i, -2147483647i, -11393i)), global3.e), 1000f)))) <= global3.b.a.x, _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_sub_u32(global3.e.x, u_input.b)), 28368u) > u_input.b);
    var_1 = abs(firstTrailingBit(~var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zz, -func_2().c, ~u_input.d.yxx, var_0.d << (~reverseBits(vec3<u32>(1u, 13751u, u_input.b)) % vec3<u32>(32u)), var_0.d);
}

