struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18>;

var<private> global1: array<Struct_5, 24>;

var<private> global2: i32 = 9581i;

var<private> global3: Struct_3 = Struct_3(vec2<f32>(-808f, 1904f), -38942i, vec4<u32>(1u, 23479u, 4294967295u, 4294967295u), Struct_1(-2412f));

var<private> global4: array<Struct_1, 19>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>) -> vec4<i32> {
    var var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(sign(-638f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(global3.d.a)), global3.a.x, _wgslsmith_f_op_f32(step(global3.a.x, -659f))))), global3.a.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.d.a, 1368f, global3.a.x, global3.d.a), vec4<f32>(global3.d.a, global3.a.x, -481f, global3.d.a))))) * vec4<f32>(_wgslsmith_f_op_f32(select(global3.d.a, 477f, arg_0.x)), _wgslsmith_f_op_f32(global3.a.x - 305f), _wgslsmith_f_op_f32(abs(1630f)), global3.d.a)))));
    var var_1 = global3.d;
    let var_2 = global3.d;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.zx) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.x, 217f) * vec2<f32>(var_2.a, 989f)) - _wgslsmith_f_op_vec2_f32(-var_0.b.xy))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(777f, var_0.c)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a)))), _wgslsmith_div_i32(0i, _wgslsmith_sub_i32(-19918i, 1i) << (firstTrailingBit(~arg_1.x) % 32u)), select(~global3.c, global3.c, (arg_0.x && arg_0.x) & any(arg_0)), Struct_1(_wgslsmith_f_op_f32(select(var_1.a, var_2.a, !any(arg_0)))));
    let var_4 = var_2.a;
    return vec4<i32>(firstLeadingBit(-2147483647i), _wgslsmith_dot_vec4_i32(-(u_input.a | (vec4<i32>(var_3.b, -48659i, 11220i, 11072i) << (global3.c % vec4<u32>(32u)))), _wgslsmith_mult_vec4_i32(~u_input.b >> (~vec4<u32>(arg_1.x, var_3.c.x, 0u, global3.c.x) % vec4<u32>(32u)), -vec4<i32>(1i, global3.b, global3.b, global3.b))), ~(-7881i), ~var_3.b);
}

fn func_2() -> vec4<bool> {
    let var_0 = func_3(select(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), false), select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), true), vec2<bool>(true, true)), all(vec3<bool>(all(vec3<bool>(false, true, true)), false, any(vec2<bool>(true, true))))), ~vec2<u32>(~23402u, 0u));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global3.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global3.a, vec2<f32>(global3.a.x, global3.a.x)))))), firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_i32(select(-1i, 20388i, true), 2147483647i, global3.b))), global3.c, global3.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-793f, global3.a.x) + var_1.d.a)), var_1.d.a, _wgslsmith_f_op_f32(1330f + var_1.d.a)));
    var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(round(-1594f)), -391f), u_input.c.x, ~(~global3.c), Struct_1(var_1.a.x));
    var var_3 = Struct_1(427f);
    return vec4<bool>(true, !(~(14985u ^ var_1.c.x) > countOneBits(abs(46797u))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.x, var_1.c.x) >> (firstLeadingBit(global3.c.yy) % vec2<u32>(32u)), ~(~var_1.c.yy)) <= reverseBits(var_1.c.x), !(!(var_1.c.x >= 0u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<i32>, arg_3: bool) -> Struct_2 {
    global2 = -reverseBits(~(arg_1 | global3.b));
    global4 = array<Struct_1, 19>();
    global0 = array<vec4<bool>, 18>();
    global2 = arg_0.x;
    global2 = _wgslsmith_mult_i32(-24806i, 35600i);
    return Struct_2(func_2());
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_2 {
    return Struct_2(!select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.c.x, 70471u) >> (global3.c.zy % vec2<u32>(32u)), global3.c.xz & global3.c.wx), 18u)], global0[_wgslsmith_index_u32(~1u, 18u)], !(!arg_1.a.x)));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global4 = array<Struct_1, 19>();
    var var_0 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.d.a)) + global3.a.x));
    var_0 = global3.a;
    let var_1 = true;
    var var_2 = vec2<bool>(arg_0.a.x, func_1(_wgslsmith_add_vec2_i32(u_input.b.zz, u_input.a.wx), ~_wgslsmith_dot_vec2_i32(u_input.a.zy ^ u_input.a.yx, _wgslsmith_add_vec2_i32(u_input.b.zx, u_input.c.zy)), u_input.b.xxz, false).a.x);
    return global3.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(1u, 24u)];
    global0 = array<vec4<bool>, 18>();
    var var_1 = func_5(func_4(Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(exp2(var_0.c)))), func_1(abs(u_input.b.xy), -2147483647i, -vec3<i32>(u_input.a.x, u_input.d, -1i), false)), func_1(u_input.a.xx, global3.b, -abs(u_input.c), !any(vec2<bool>(true, true)))));
    let var_2 = Struct_2(vec4<bool>(all(!func_1(u_input.a.yz, global3.b, vec3<i32>(2147483647i, 2147483647i, u_input.c.x), false).a.ww), func_4(Struct_4(_wgslsmith_f_op_f32(round(-447f)), func_1(vec2<i32>(26508i, -2147483647i), global3.b, vec3<i32>(global3.b, global3.b, 0i), true)), Struct_2(!global0[_wgslsmith_index_u32(global3.c.x, 18u)])).a.x, func_1(select(-vec2<i32>(u_input.b.x, 9699i), vec2<i32>(-1i, -2147483647i), func_1(u_input.b.zz, -1i, u_input.a.xwz, true).a.xw), u_input.b.x, ~vec3<i32>(-46992i, global3.b, global3.b), func_2().x).a.x, true));
    var_1 = Struct_1(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(ceil(-1756f))));
    global0 = array<vec4<bool>, 18>();
    var var_3 = var_0.a;
    var var_4 = reverseBits(firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(61673u >> (1u % 32u), _wgslsmith_dot_vec3_u32(global3.c.xzw, global3.c.xzz), ~global3.c.x), ~_wgslsmith_add_u32(20645u, 0u), abs(24652u) ^ global3.c.x, global3.c.x)));
    var var_5 = !(!var_2.a.xzy);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.a, var_3.a), _wgslsmith_mod_u32(1u, ~(~global3.c.x & ~global3.c.x)), firstLeadingBit(reverseBits(1u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(817f, var_1.a, -1035f, var_3.a)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.a.x, -692f, -630f, var_1.a))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 1171f, 600f, -624f) * var_0.d), _wgslsmith_f_op_vec4_f32(max(var_0.d, vec4<f32>(-1048f, var_0.a.a, 999f, -930f))))))));
}

