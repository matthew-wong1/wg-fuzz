struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -254f;

var<private> global1: array<Struct_3, 2>;

var<private> global2: array<u32, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = vec2<f32>(-900f, _wgslsmith_f_op_f32(-1f));
    global2 = array<u32, 22>();
    let var_1 = Struct_4(Struct_3(Struct_1(-2147483647i, vec3<u32>(arg_1 & u_input.a.x, max(24325u, global2[_wgslsmith_index_u32(55090u, 22u)]), 0u >> (global2[_wgslsmith_index_u32(1u, 22u)] % 32u)), arg_0.c, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(27056u, _wgslsmith_dot_vec3_u32(arg_0.e, vec3<u32>(1u, 3016u, 25216u))), 22u)], vec3<u32>(0u, firstLeadingBit(58622u), max(47398u, 0u))), vec2<i32>(arg_0.a, ~arg_0.a) >> (vec2<u32>(~3685u, 66845u) % vec2<u32>(32u)), firstTrailingBit(max(-arg_0.c.x, -2147483647i & arg_0.c.x)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, select(true, true, true), all(vec2<bool>(false, true)), true), false), Struct_2(arg_0.c.yxw, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1881f, -537f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(552f, var_0.x, 391f)))), arg_0)), countOneBits(vec3<u32>(min(0u ^ global2[_wgslsmith_index_u32(75340u, 22u)], ~23160u), 0u, abs(arg_1 ^ global2[_wgslsmith_index_u32(u_input.a.x, 22u)]))), select(arg_0.a, -max(-arg_0.c.x, arg_0.c.x), false));
    var var_2 = var_1.a.e.c.e.x;
    var var_3 = var_1.a.e.c.d;
    return var_1.b.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(0i, vec3<u32>(abs(~4294967295u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, arg_0.d, 1u), vec3<u32>(4294967295u, 0u, 16032u)), min(3109u | arg_0.b.x, firstLeadingBit(4294967295u))), ~u_input.a.x), arg_0.c, _wgslsmith_add_u32(func_3(Struct_1(~(-18032i), ~u_input.a.xzx, arg_0.c, ~arg_0.b.x, firstLeadingBit(arg_0.b)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(898u, 22u)], 22u)], u_input.a.x, 0u, global2[_wgslsmith_index_u32(1u, 22u)])), u_input.a | u_input.a)), u_input.a.x), u_input.a.wzy);
    let var_1 = ~firstLeadingBit(vec3<u32>(1u, 17958u, ~_wgslsmith_add_u32(0u, global2[_wgslsmith_index_u32(14317u, 22u)])));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-540f))), _wgslsmith_f_op_f32(abs(-1500f)), 1f, _wgslsmith_f_op_f32(-435f * 735f)))));
    global2 = array<u32, 22>();
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(395f, var_2.x, 1000f, 2093f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_2))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)))))));
    return arg_0;
}

fn func_1(arg_0: i32) -> Struct_5 {
    global1 = array<Struct_3, 2>();
    let var_0 = 1u;
    global2 = array<u32, 22>();
    global2 = array<u32, 22>();
    return Struct_5(firstLeadingBit(~arg_0), func_2(Struct_1(arg_0, vec3<u32>(countOneBits(u_input.a.x), ~u_input.a.x, ~29674u), countOneBits(firstTrailingBit(vec4<i32>(arg_0, 74504i, 26914i, arg_0))), ~41385u, ~(~vec3<u32>(1u, 0u, u_input.a.x)))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_4(global1[_wgslsmith_index_u32(arg_0.b.d, 2u)], _wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(28467u, global2[_wgslsmith_index_u32(4294967295u, 22u)], 0u)), vec3<u32>(u_input.a.x, func_3(Struct_1(1i, vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], arg_1.c.b.x, u_input.a.x), arg_1.c.c, global2[_wgslsmith_index_u32(89207u, 22u)], arg_0.b.e), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 22u)], 22u)]), u_input.a.x ^ 27691u), vec3<u32>(6414u >> (global2[_wgslsmith_index_u32(arg_0.b.d, 22u)] % 32u), 43851u, u_input.a.x)) | ~abs(arg_1.c.e), -6170i);
    return arg_0.b;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_5 {
    let var_0 = true;
    var var_1 = -reverseBits(-14481i);
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~arg_1.c.d) & ~global2[_wgslsmith_index_u32(arg_1.c.b.x, 22u)], ~1u), 2u)], _wgslsmith_sub_vec3_u32(min(u_input.a.xxy & vec3<u32>(arg_1.c.d, 7488u, u_input.a.x), _wgslsmith_mult_vec3_u32(arg_1.c.e, vec3<u32>(4294967295u, arg_1.c.e.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.c.e.x, 22u)], 22u)]))), ~(vec3<u32>(15853u, 33446u, arg_1.c.e.x) << (vec3<u32>(4294967295u, u_input.a.x, 65251u) % vec3<u32>(32u)))) >> (vec3<u32>(~(~4294967295u), _wgslsmith_div_u32(~global2[_wgslsmith_index_u32(arg_1.c.e.x, 22u)], arg_1.c.d), ~min(2899u, arg_1.c.d)) % vec3<u32>(32u)), _wgslsmith_sub_i32(_wgslsmith_add_i32(max(arg_1.a.x, 7944i) >> (0u % 32u), -_wgslsmith_mult_i32(-14263i, -46710i)), ~reverseBits(arg_1.a.x)));
    var var_3 = _wgslsmith_f_op_f32(arg_0 * -1446f);
    let var_4 = func_1(abs(~0i));
    return func_1(2147483647i);
}

fn func_6(arg_0: Struct_5, arg_1: i32, arg_2: f32, arg_3: Struct_5) -> Struct_2 {
    var var_0 = !select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), false), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(true, true, true, true)), true));
    let var_1 = select(select(select(!(!vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), select(vec2<bool>(true, var_0.x), vec2<bool>(select(var_0.x, false, true), true), any(!vec4<bool>(var_0.x, var_0.x, true, true))), any(!vec4<bool>(var_0.x, var_0.x, true, true))), vec2<bool>(select(false, true, false | var_0.x) && true, all(vec3<bool>(!var_0.x, all(vec2<bool>(false, true)), true & var_0.x))), any(select(vec2<bool>(any(vec4<bool>(var_0.x, true, false, var_0.x)), true), vec2<bool>(true, true), vec2<bool>(false, any(vec4<bool>(var_0.x, true, true, var_0.x))))));
    let var_2 = ~_wgslsmith_add_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(reverseBits(u_input.a.x), 22u)], _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_3.b.d, 0u, global2[_wgslsmith_index_u32(arg_3.b.b.x, 22u)], arg_0.b.b.x)), vec4<u32>(33424u, 81807u, 60501u, global2[_wgslsmith_index_u32(arg_3.b.d, 22u)]))), ~(~0u));
    global1 = array<Struct_3, 2>();
    let var_3 = var_1.x;
    return Struct_2(abs(vec3<i32>(-34719i, -91682i, -arg_0.b.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, 970f), vec3<f32>(677f, 2387f, arg_2)))))), arg_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(1000f, Struct_2(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, -1i), vec3<i32>(0i, -2147483647i, -2147483647i)), -27451i, 0i), vec3<f32>(_wgslsmith_div_f32(348f, -1056f), _wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(f32(-1f) * -1680f)), func_4(func_1(7237i), Struct_2(vec3<i32>(2147483647i, -34462i, -5304i), vec3<f32>(2304f, 256f, -359f), Struct_1(-2147483647i, vec3<u32>(66500u, 70917u, u_input.a.x), vec4<i32>(-39190i, 16772i, 34269i, -43137i), 4294967295u, vec3<u32>(u_input.a.x, u_input.a.x, 95540u))), vec4<bool>(false, false, true, false)))), -39071i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-401f, 1998f), -293f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-346f)))), func_5(-438f, Struct_2(firstLeadingBit(-vec3<i32>(-9038i, -54865i, 46205i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(520f, 203f, 1501f), vec3<f32>(-1391f, 913f, -1110f))) + vec3<f32>(-112f, -298f, -1000f)), func_1(-2147483647i).b)));
    global1 = array<Struct_3, 2>();
    let var_1 = 22221u;
    var var_2 = -1755f <= _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_0.b.x))));
    var var_3 = 1i;
    global1 = array<Struct_3, 2>();
    let var_4 = Struct_3(var_0.c, var_0.a.yx, ~var_0.a.x, vec4<bool>(all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), true, true, all(vec2<bool>(true, true))), Struct_2(vec3<i32>(_wgslsmith_mult_i32(var_0.c.a, var_0.a.x), 38717i, -30328i) | ~var_0.a, _wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-360f, var_0.b.x, -2425f)), var_0.b)), Struct_1(_wgslsmith_add_i32(var_0.a.x, 43815i) << (4294967295u % 32u), var_0.c.b >> ((var_0.c.b << (vec3<u32>(4294967295u, 1u, var_1) % vec3<u32>(32u))) % vec3<u32>(32u)), var_0.c.c, 4294967295u, max(_wgslsmith_div_vec3_u32(vec3<u32>(22206u, 1u, 4294967295u), u_input.a.xyw), func_1(-1074i).b.b))));
    let var_5 = var_4.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(1f, global2[_wgslsmith_index_u32(~var_1 ^ (global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_1, var_4.a.e.x), 22u)] ^ 22413u), 22u)], select(reverseBits(countOneBits(var_0.c.c.x)), 9947i, var_5) ^ ((~var_4.b.x << (55372u % 32u)) & func_5(-1000f, func_6(Struct_5(var_0.a.x, Struct_1(-37136i, vec3<u32>(var_4.e.c.b.x, 0u, 25757u), var_4.e.c.c, global2[_wgslsmith_index_u32(19209u, 22u)], vec3<u32>(12561u, 1046u, global2[_wgslsmith_index_u32(0u, 22u)]))), var_4.b.x, 214f, Struct_5(1i, var_4.a))).a), vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1034f)))));
}

