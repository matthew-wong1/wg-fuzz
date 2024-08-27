struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<bool> {
    global0 = array<vec2<bool>, 7>();
    let var_0 = true;
    global0 = array<vec2<bool>, 7>();
    let var_1 = !select(!(!select(vec4<bool>(var_0, false, false, true), vec4<bool>(var_0, false, var_0, true), true)), select(select(vec4<bool>(var_0, var_0, false, var_0), !vec4<bool>(false, var_0, var_0, var_0), all(vec4<bool>(var_0, true, false, true))), select(select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(var_0, true, var_0, var_0), true), !vec4<bool>(var_0, false, var_0, var_0), !vec4<bool>(var_0, var_0, var_0, var_0)), any(vec4<bool>(var_0, true, var_0, false))), vec4<bool>(all(vec3<bool>(var_0, var_0, false)), !var_0, any(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, u_input.b.x), 7u)]), select(false, false, var_0)));
    let var_2 = Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 7u)], -u_input.a << (u_input.b.x % 32u), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -997f), 495f, _wgslsmith_f_op_f32(-1000f + 2732f)))), Struct_1(vec2<bool>(any(var_1.zx), u_input.b.x < 1u), 2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_div_f32(-974f, -493f), _wgslsmith_f_op_f32(round(-1491f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(200f, 132f, 337f) + vec3<f32>(-935f, -816f, 1803f))))), vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-13062i, u_input.a) | vec2<i32>(0i, u_input.a), ~vec2<i32>(-20941i, u_input.a)), -1i, u_input.a));
    return !vec2<bool>(select(true, !any(vec4<bool>(var_1.x, true, var_2.b.a.x, var_1.x)), true), any(vec3<bool>(all(vec2<bool>(var_2.a.a.a.x, false)), u_input.b.x < u_input.b.x, false)));
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(30731i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 44064i))), vec3<f32>(-697f, _wgslsmith_f_op_f32(min(-377f, -743f)), -434f))), Struct_1(select(!global0[_wgslsmith_index_u32(min(u_input.b.x, 1u), 7u)], func_3(), global0[_wgslsmith_index_u32(~0u & select(u_input.b.x, 88729u, true), 7u)]), -2147483647i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-546f, -2507f, 359f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(889f, 2130f, 1322f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-100f, -1392f, 1467f))), true))))), reverseBits(vec3<i32>(1i, u_input.a, -1i | u_input.a)));
    let var_1 = vec4<bool>(func_3().x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.a.c.x, var_0.a.a.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c.x * -1254f))) <= _wgslsmith_f_op_f32(-729f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1925f)))), !(!var_0.b.a.x | false), var_0.b.a.x);
    let var_2 = Struct_3(Struct_2(Struct_1(select(!vec2<bool>(var_0.b.a.x, false), !vec2<bool>(var_1.x, true), var_0.b.a.x), _wgslsmith_dot_vec2_i32(-var_0.c.xz, _wgslsmith_add_vec2_i32(var_0.c.xy, vec2<i32>(var_0.b.b, var_0.a.a.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-797f, var_0.b.c.x, var_0.a.a.c.x) + var_0.b.c)))), var_0.a.a, var_0.c);
    let var_3 = Struct_3(Struct_2(var_0.a.a), Struct_1(func_3(), firstTrailingBit(select(0i, 1i, true)) & -6103i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-319f, 229f, 943f))))), vec3<i32>(-countOneBits(var_2.a.a.b), -40408i, _wgslsmith_sub_i32(var_2.a.a.b, -16869i)));
    let var_4 = Struct_2(var_3.b);
    return ~abs(_wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(1i), -34424i, 2147483647i, ~0i), countOneBits(min(vec4<i32>(69212i, u_input.a, 2147483647i, 2147483647i), vec4<i32>(var_4.a.b, var_4.a.b, var_4.a.b, var_2.a.a.b)))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(func_2(), -select(vec4<i32>(15370i, u_input.a, u_input.a, u_input.a), vec4<i32>(11276i, u_input.a, u_input.a, u_input.a), vec4<bool>(true, true, false, true)) & ~(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) & vec4<i32>(u_input.a, u_input.a, u_input.a, 0i))), (vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), min(56998i, 2147483647i), u_input.a, u_input.a ^ u_input.a) & (vec4<i32>(-12722i, 2147483647i, u_input.a, u_input.a) >> (arg_0 % vec4<u32>(32u)))) | (vec4<i32>(1i, func_2().x, -u_input.a, max(35389i, -1i)) & _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -11671i, 1870i, 2147483647i), vec4<i32>(-2147483647i, u_input.a, -1i, u_input.a)), min(vec4<i32>(-2288i, u_input.a, 8829i, 70377i), vec4<i32>(1i, u_input.a, u_input.a, u_input.a)))));
    let var_1 = all(vec3<bool>(any(func_3()), true || all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))), false && any(vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -198f);
    global0 = array<vec2<bool>, 7>();
    let var_3 = all(!vec4<bool>(true, _wgslsmith_f_op_f32(max(var_2, 1898f)) >= _wgslsmith_f_op_f32(f32(-1f) * -374f), 34990i >= (u_input.a | u_input.a), (true && var_1) == select(var_1, false, true)));
    return Struct_2(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(22405u, 43252u), 4294967295u >> (select(arg_0.x, 25910u, false) % 32u), ~firstTrailingBit(arg_0.x)), 7u)], -28666i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(934f, 377f, 622f) * vec3<f32>(var_2, var_2, -1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, -953f) * vec3<f32>(1770f, -1693f, -1000f))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec2<bool>) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-2003f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.c.x))))), _wgslsmith_f_op_f32(-arg_1.b.c.x));
    global0 = array<vec2<bool>, 7>();
    var var_1 = arg_1.b;
    var_1 = func_1(~vec4<u32>(~reverseBits(u_input.b.x), u_input.b.x, 60242u, u_input.b.x)).a;
    let var_2 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.a.c.x, _wgslsmith_f_op_f32(step(-1665f, _wgslsmith_f_op_f32(f32(-1f) * -196f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 340f)))), var_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(295f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec3<i32>(u_input.a, u_input.a, ~u_input.a), Struct_3(func_1(vec4<u32>(60588u, 44285u, u_input.b.x, 44945u)), Struct_1(global0[_wgslsmith_index_u32(32410u, 7u)], u_input.a, vec3<f32>(-1052f, -386f, -267f)), vec3<i32>(44184i, 1i, -110659i)), global0[_wgslsmith_index_u32(22761u, 7u)])) - _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a, -30045i, -49266i)), vec3<i32>(-21740i, u_input.a, 62340i) & vec3<i32>(1i, u_input.a, 1i)), Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(6698u, 7u)], u_input.a, vec3<f32>(457f, 428f, 194f))), Struct_1(vec2<bool>(true, true), -1i, vec3<f32>(1447f, 160f, -187f)), -vec3<i32>(u_input.a, u_input.a, 16690i)), func_3()))));
    var var_1 = any(select(select(vec3<bool>(true, false, all(vec4<bool>(false, true, false, true))), vec3<bool>(true, u_input.a > u_input.a, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), vec3<bool>(true, all(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(1u, 4294967295u)), 7u)]), any(global0[_wgslsmith_index_u32(0u, 7u)])), vec3<bool>(!any(vec2<bool>(true, true)), true, u_input.a > min(u_input.a, u_input.a))));
    let var_2 = Struct_2(Struct_1(func_3(), i32(-1i) * -_wgslsmith_add_i32(u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    var var_3 = i32(-1i) * -19617i;
    global0 = array<vec2<bool>, 7>();
    var_3 = -u_input.a;
    var var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2039f), 1527f))), _wgslsmith_f_op_vec2_f32(floor(var_2.a.c.zz)))), var_2.a.c.xz, !vec2<bool>(func_3().x, func_3().x)));
    let var_5 = Struct_3(func_1(vec4<u32>(max(u_input.b.x, 0u) | 17502u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.yx), _wgslsmith_mult_u32(54925u, 10704u)), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), u_input.b.x >> (17822u % 32u)), 4294967295u)), func_1(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, 0u, u_input.b.x, 43249u)), max(abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u)), vec4<u32>(52436u, u_input.b.x, 30419u, 60524u) >> (vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u) % vec4<u32>(32u))))).a, min(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-1322i, 59505i, u_input.a), vec3<i32>(var_2.a.b, 27640i, var_2.a.b), true), ~vec3<i32>(0i, -2877i, 60414i)), vec3<i32>(u_input.a, -55597i, u_input.a) & -vec3<i32>(u_input.a, -21252i, -12888i)) & (select(~vec3<i32>(10936i, 49437i, u_input.a), ~vec3<i32>(var_2.a.b, 38444i, 34756i), true) & firstLeadingBit(vec3<i32>(1i, u_input.a, -20503i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -429f, var_4.x, -463f) * vec4<f32>(1034f, 502f, -1734f, -898f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(150f, 133f, 323f, -908f), vec4<f32>(var_4.x, var_5.b.c.x, 934f, -316f)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-705f, -419f, 1942f, var_4.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.b.c.x, 656f, -354f, 1698f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -623f, var_5.a.a.c.x, -513f), vec4<f32>(var_5.a.a.c.x, 1043f, var_2.a.c.x, var_5.b.c.x))))))), reverseBits(u_input.b.x));
}

