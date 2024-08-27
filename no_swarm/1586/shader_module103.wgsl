struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(45850i, i32(-2147483648), -11510i), vec3<i32>(28025i, 1i, -5197i), vec3<i32>(2147483647i, 59899i, i32(-2147483648)), vec3<i32>(2585i, -20709i, 8504i), vec3<i32>(2375i, 2147483647i, -505i), vec3<i32>(0i, 81244i, i32(-2147483648)), vec3<i32>(-68365i, -44640i, 13409i), vec3<i32>(i32(-2147483648), -60137i, -20018i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: u32) -> f32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xx, vec2<u32>(global0[_wgslsmith_index_u32(arg_2, 21u)], ~0u)), abs(vec2<u32>(~2262u, abs(32923u)))), _wgslsmith_mult_u32(firstTrailingBit(arg_2), countOneBits(_wgslsmith_mod_u32(arg_2, 0u))) << (u_input.a.x % 32u));
    let var_2 = ~(~u_input.a.wxx);
    let var_3 = Struct_3(Struct_2(any(vec4<bool>(true, any(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, false)), true)), arg_0, Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))), 1i | arg_0.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.x, arg_0.x, -39006i, arg_0.x), vec4<i32>(arg_0.x, 1i, -1i, var_0.x), false), ~vec4<i32>(52029i, 1i, var_0.x, var_0.x))), var_2.x), true, vec2<u32>(arg_2, ~_wgslsmith_clamp_u32(u_input.a.x, 29531u, global0[_wgslsmith_index_u32(0u, 21u)]) & select(firstLeadingBit(u_input.a.x), min(0u, 38085u), true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-286f, arg_1.x)), _wgslsmith_f_op_vec2_f32(min(arg_1.xz, _wgslsmith_f_op_vec2_f32(ceil(arg_1.zy)))), vec2<bool>(any(vec2<bool>(true, false)), true))), vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), 189f))));
    let var_4 = var_3.c.x;
    return _wgslsmith_f_op_f32(-var_3.d.x);
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_2(!(_wgslsmith_div_f32(329f, -1801f) < _wgslsmith_f_op_f32(func_3(vec2<i32>(-1i, -1i), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-697f, 1000f, 1000f), vec3<f32>(909f, -483f, -1423f), vec3<bool>(false, false, true))), ~50440u))), vec2<i32>(_wgslsmith_clamp_i32(~abs(-34300i), 1i, _wgslsmith_add_i32(~(-48428i), 2147483647i << (u_input.a.x % 32u))), -13708i), Struct_1(vec4<bool>(true, true, true, true), 11575i, 2147483647i), ~_wgslsmith_mult_u32(1u, u_input.a.x) >> (0u % 32u));
    global1 = array<vec3<i32>, 8>();
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    let var_1 = Struct_1(var_0.c.a, ~0i, -(~var_0.c.c));
    return Struct_5(Struct_4(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f * 1151f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1127f), _wgslsmith_f_op_f32(1000f - -1312f))), Struct_1(var_1.a, (-1i << (u_input.a.x % 32u)) & _wgslsmith_div_i32(-12802i, -2147483647i), _wgslsmith_div_i32(i32(-1i) * -9754i, var_0.b.x))), !select(var_1.a, vec4<bool>(select(true, var_0.a, var_0.c.a.x), all(vec2<bool>(var_0.a, var_0.a)), var_0.c.a.x, all(vec2<bool>(false, false))), vec4<bool>(true, var_0.c.a.x, any(vec3<bool>(var_0.a, var_1.a.x, true)), any(var_1.a.ywz))));
}

fn func_1(arg_0: f32) -> Struct_5 {
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    return func_2();
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: bool) -> u32 {
    let var_0 = Struct_3(Struct_2(arg_3 || true, arg_2.b, func_1(-433f).a.c, 7183u), any(func_2().a.c.a.wxy), u_input.a.yy >> (select(u_input.a.zy, vec2<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 4294967295u), ~u_input.a.x), !arg_2.a) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b - arg_0.a.b)), arg_0.a.b));
    global0 = array<u32, 21>();
    let var_1 = _wgslsmith_mult_i32(-11836i, var_0.a.b.x);
    var var_2 = func_1(_wgslsmith_f_op_f32(-538f + _wgslsmith_f_op_f32(-arg_0.a.b)));
    var var_3 = global1[_wgslsmith_index_u32(reverseBits(arg_2.d), 8u)];
    return abs(_wgslsmith_dot_vec2_u32(min(var_0.c, ~(vec2<u32>(4294967295u, 13905u) & u_input.a.xw)), var_0.c >> (var_0.c % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true & ((_wgslsmith_mult_u32(~0u, u_input.a.x ^ 4294967295u) < 0u) || !(all(vec2<bool>(false, true)) && true));
    var_0 = true;
    let var_1 = ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(0u, u_input.a.x, global0[_wgslsmith_index_u32(45203u, 21u)], 0u)), _wgslsmith_clamp_vec4_u32(~countOneBits(u_input.a), reverseBits(u_input.a | u_input.a), u_input.a)), 8u)];
    var var_2 = func_4(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-412f - 1094f))) - 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(2260f)), 338f, _wgslsmith_f_op_f32(sign(-435f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2020f, 1283f, 711f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(156f, 2336f, -1461f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1362f, 509f, 1489f), vec3<f32>(-1218f, -429f, 372f))))))), Struct_2((20738u != _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) & false, -var_1.xy, func_1(_wgslsmith_f_op_f32(round(-143f))).a.c, _wgslsmith_mult_u32(37982u, countOneBits(~1u))), true);
    var var_3 = Struct_4(true, -780f, func_2().a.c);
    var_3 = func_1(var_3.b).a;
    var_0 = any(vec3<bool>(1f < _wgslsmith_f_op_f32(abs(var_3.b)), u_input.a.x == abs(4294967295u), var_3.a)) & var_3.c.a.x;
    let var_4 = select(vec2<bool>(var_3.a, false), var_3.c.a.zz, !select(!func_1(-1003f).b.wy, vec2<bool>(!var_3.a, true), var_3.a || (var_3.c.a.x | var_3.c.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_3.b)), _wgslsmith_f_op_f32(round(var_3.b)), func_4(Struct_5(Struct_4(var_4.x, _wgslsmith_f_op_f32(-var_3.b), func_1(var_3.b).a.c), var_3.c.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(exp2(var_3.b)), _wgslsmith_f_op_f32(var_3.b - -1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-726f, var_3.b, var_3.b)))), Struct_2(any(vec3<bool>(var_4.x, false, var_4.x)) & var_3.c.a.x, abs(var_1.xz), var_3.c, u_input.a.x), !var_3.a), vec2<i32>(var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, -1994f, var_3.b) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(718f, var_3.b, -132f), vec3<f32>(-877f, -1382f, -1307f)))))));
}

