struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<bool>, 6>;

var<private> global2: Struct_2;

var<private> global3: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true));

var<private> global4: u32 = 0u;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_5) -> vec3<f32> {
    global0 = arg_1.c.a;
    var var_0 = -1000f;
    global1 = array<vec4<bool>, 6>();
    return vec3<f32>(global0.c.x, -914f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -466f) - _wgslsmith_f_op_f32(-global2.a.b)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_4) -> f32 {
    global3 = array<vec4<bool>, 23>();
    var var_0 = (~vec4<u32>(1u, 1u, 1u, 1u) << (_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(14704u, 1u, 1u, 51328u), vec4<u32>(1982u, 27094u, 30955u, 66065u)), min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u))) ^ ~vec4<u32>(35122u ^ firstTrailingBit(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(4294967295u, 40034u), vec2<u32>(0u, 4294967295u), global0.e)), 1u, _wgslsmith_mult_u32(1u, ~7106u));
    var var_1 = -(~(-global2.b.wyw));
    var var_2 = Struct_1(arg_1.a & vec3<i32>(~global2.a.a.x, abs(-2147483647i), -(arg_1.a.x & -9895i)), _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(544f * -107f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec3_f32(func_3(select(u_input.a, min(u_input.a, u_input.a), true), Struct_5(abs(vec3<u32>(4294967295u, 1u, var_0.x)), var_0.x & 4294967295u, Struct_2(global2.a, vec4<i32>(var_1.x, global0.a.x, 0i, 1i)), Struct_2(Struct_1(global0.a, arg_2.b, arg_1.c, arg_1.d, vec2<bool>(true, global2.a.d)), vec4<i32>(2147483647i, -26049i, -2923i, -23781i)), !vec2<bool>(global0.e.x, true)))).zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a.c.x, arg_2.b), arg_0.zz, false)))) - arg_1.c)), false, select(!vec2<bool>(select(global0.d, arg_1.d, arg_1.e.x), !arg_1.e.x), !arg_2.a.zy, vec2<bool>(!arg_1.e.x, select(false, global0.e.x, false) & all(vec2<bool>(global0.d, false)))));
    global3 = array<vec4<bool>, 23>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(612f - global0.b))))));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>) -> f32 {
    global3 = array<vec4<bool>, 23>();
    var var_0 = ~abs(_wgslsmith_add_i32(11906i, -countOneBits(global2.a.a.x)));
    let var_1 = vec4<u32>(_wgslsmith_clamp_u32(0u, ~(~firstLeadingBit(0u)), ~_wgslsmith_div_u32(abs(1u), 1u)), 4294967295u >> (max(~(~4294967295u), _wgslsmith_clamp_u32(countOneBits(1u), ~0u, 1u)) % 32u), max(70947u, 1u) & ~select(countOneBits(19172u), ~4294967295u, global2.a.e.x), 4851u);
    let var_2 = select(select(select(!select(vec2<bool>(true, true), vec2<bool>(global0.e.x, false), true), vec2<bool>(global0.e.x, true), vec2<bool>(!global0.e.x, all(global2.a.e))), select(select(select(vec2<bool>(true, false), global0.e, global2.a.d), vec2<bool>(global0.d, global2.a.d), global0.e.x), !global2.a.e, global2.a.e.x), select(!select(global0.e, vec2<bool>(global0.e.x, global0.d), false), global2.a.e, select(global0.e, select(global2.a.e, global2.a.e, vec2<bool>(global0.e.x, global0.e.x)), global2.a.e.x))), global0.e, false);
    let var_3 = -(~max(vec4<i32>(global0.a.x, u_input.b, 6168i, 2147483647i) << (var_1 % vec4<u32>(32u)), select(global2.b, vec4<i32>(-1i, 16265i, -18828i, -27286i), global0.e.x)) << (countOneBits(vec4<u32>(~5157u, var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 46635u), vec2<u32>(109481u, 1u)), _wgslsmith_clamp_u32(var_1.x, var_1.x, var_1.x))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, 569f, false)) * -730f) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1183f, 104f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1232f, -663f))))));
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_sub_u32(5192u, 1u);
    let var_1 = Struct_2(global2.a, global2.b);
    var var_2 = ~countOneBits(~select(vec2<u32>(4294967295u, 34557u), min(vec2<u32>(1u, 22947u), vec2<u32>(47699u, 8498u)), !var_1.a.e));
    var var_3 = _wgslsmith_mod_vec4_i32(var_1.b, vec4<i32>(37870i, var_1.b.x >> (_wgslsmith_mult_u32(1u, var_2.x) % 32u), -2147483647i, u_input.a.x));
    let var_4 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3(global2.b.ww, Struct_5(vec3<u32>(22327u, 35416u, 70656u), 69002u, Struct_2(var_1.a, global2.b), var_1, vec2<bool>(true, var_1.a.e.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 490f, -1275f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a.b, var_1.a.b, var_1.a.b)))))), Struct_1(vec3<i32>(var_1.b.x, global0.a.x, -6992i | global2.b.x), global0.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c.x, global2.a.b)), true, select(var_1.a.e, vec2<bool>(false, var_1.a.e.x), vec2<bool>(true, true))), Struct_4(select(vec3<bool>(true, true, var_1.a.d), select(vec3<bool>(true, global2.a.e.x, true), vec3<bool>(false, var_1.a.d, true), vec3<bool>(global0.e.x, var_1.a.d, false)), !vec3<bool>(true, global0.d, true)), _wgslsmith_f_op_f32(trunc(-1000f))))), _wgslsmith_div_vec2_i32(max(abs(vec2<i32>(var_1.a.a.x, var_3.x) & global0.a.yz), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a.a.x, -2147483647i), vec2<i32>(14388i, 0i), vec2<i32>(global2.b.x, 28390i)) & vec2<i32>(u_input.b, var_3.x)), vec2<i32>(-39837i, 0i))));
    return Struct_5(~_wgslsmith_sub_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(2558u, 56367u, var_2.x), vec3<u32>(var_2.x, var_2.x, var_2.x))), vec3<u32>(firstTrailingBit(4294967295u), var_2.x, 1u)), 4294967295u, var_1, Struct_2(Struct_1(vec3<i32>(u_input.b, _wgslsmith_mult_i32(-29699i, global0.a.x), global0.a.x), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1354f, global0.c.x, -131f)), Struct_1(global0.a, -355f, global0.c, false, vec2<bool>(global2.a.e.x, global0.e.x)), Struct_4(vec3<bool>(true, global0.e.x, global0.d), var_1.a.b))), vec2<f32>(-443f, global0.c.x), true && global0.e.x, vec2<bool>(true, any(vec4<bool>(global2.a.e.x, global2.a.e.x, false, false)))), ~global2.b), select(!vec2<bool>(false, any(global1[_wgslsmith_index_u32(var_2.x, 6u)])), global0.e, !all(vec4<bool>(false, true, global0.e.x, false))));
}

fn func_1(arg_0: vec4<i32>) -> vec3<u32> {
    var var_0 = func_2();
    global0 = func_2().d.a;
    return abs(var_0.a);
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_2 {
    return func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 6>();
    let var_0 = func_6(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(func_1(vec4<i32>(global0.a.x, global2.b.x, -39199i, global2.b.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 80986u, 22025u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 45035u, 96119u)))), vec4<i32>(_wgslsmith_div_i32(3763i, -2147483647i), _wgslsmith_dot_vec2_i32(global2.a.a.zx, ~max(vec2<i32>(u_input.a.x, global0.a.x), vec2<i32>(global2.b.x, 0i))), -1i, 1i));
    let var_1 = global0.a.yz;
    let var_2 = Struct_5(~vec3<u32>(1u, 1u, 1u), ~14182u, var_0, Struct_2(func_2().d.a, global2.b), func_2().e);
    global1 = array<vec4<bool>, 6>();
    var var_3 = select(!func_6(vec3<u32>(~var_2.a.x, ~14833u, ~var_2.b), var_2.d.b).a.e, global0.e, vec2<bool>(var_0.a.e.x, func_6(vec3<u32>(var_2.a.x, ~var_2.a.x, 4294967295u), var_2.c.b).a.d));
    global4 = select(var_2.a.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_2.b << (4294967295u % 32u), 68841u, _wgslsmith_div_u32(0u, 2444u)), vec3<u32>(var_2.a.x ^ var_2.b, func_2().a.x, 22696u), vec3<bool>(any(vec2<bool>(true, var_3.x)), false, all(vec3<bool>(true, var_3.x, false)))), select(vec3<u32>(var_2.a.x, 0u, ~33921u), ~func_2().a, select(vec3<bool>(global0.d, var_2.e.x, global0.d), select(vec3<bool>(var_2.c.a.d, false, var_3.x), vec3<bool>(false, true, global2.a.e.x), var_3.x), select(vec3<bool>(true, var_3.x, true), vec3<bool>(var_0.a.e.x, var_2.d.a.d, true), global0.e.x)))), global0.d);
    global0 = Struct_1(vec3<i32>(func_2().d.b.x, -2147483647i, -_wgslsmith_div_i32(-1i, _wgslsmith_mod_i32(-1i, global0.a.x))), _wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.c)), var_3.x, vec2<bool>(false, !(false || func_2().d.a.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(global2.a.c.x, 1934f)), ~var_2.a.x, vec4<f32>(1737f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_2.c.a.c.x)))), 1f, global0.c.x), ~_wgslsmith_mult_vec2_u32(var_2.a.zz, var_2.a.xx), _wgslsmith_f_op_f32(ceil(463f)));
}

