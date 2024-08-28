struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(-1464f, 759f, 158f, 179f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> f32 {
    let var_0 = ~select(~u_input.d.xzw & _wgslsmith_mod_vec3_u32(firstLeadingBit(u_input.d.ywz), ~u_input.d.zxz), ~(u_input.d.yyy | (u_input.d.zxx | vec3<u32>(u_input.d.x, 4294967295u, 1u))), vec3<bool>(true, true, any(vec2<bool>(true, true))));
    let var_1 = ~(~abs(u_input.b));
    global0 = Struct_3(global0.a);
    var var_2 = u_input.e.zxw;
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(65620u, (_wgslsmith_mult_u32(var_0.x, 60543u) & min(0u, 9366u)) & u_input.b), countOneBits(~var_0.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + -234f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a.x, global0.a.x)) * 1000f)))));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = select(vec2<bool>(true, true), select(vec2<bool>(_wgslsmith_div_i32(0i, u_input.e.x) >= -u_input.a, !(u_input.e.x < u_input.c)), vec2<bool>(!any(vec2<bool>(true, true)), true), all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), true))), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * -1581f));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(global0.a)));
    var var_2 = _wgslsmith_div_f32(-677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    var var_3 = true;
    return _wgslsmith_div_f32(158f, 238f);
}

fn func_4(arg_0: vec4<bool>) -> vec4<bool> {
    global0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.x)))), 289f, 1000f));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - global0.a.x))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x)))));
    global0 = Struct_3(vec4<f32>(-714f, 230f, global0.a.x, global0.a.x));
    global0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_0.a * -685f), _wgslsmith_f_op_f32(step(1000f, var_0.a)), 831f))), vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), 689f, 1f, -553f)));
    let var_1 = -1502f;
    return vec4<bool>(all(select(!(!arg_0.xwz), arg_0.zyx, arg_0.zzy)), any(!vec4<bool>(true, all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), u_input.c >= u_input.a, arg_0.x | arg_0.x)), !(!(!arg_0.x)), all(arg_0));
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_1(-firstTrailingBit(vec4<i32>(11139i, -1i, -u_input.c, u_input.a)), true, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(477f, global0.a.x))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a.x, -1068f)) - -337f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + 1441f) + -420f))));
    var var_2 = -(i32(-1i) * -var_0.a.x);
    let var_3 = func_4(vec4<bool>(false, arg_0.x, _wgslsmith_f_op_f32(-global0.a.x) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(u_input.d.zz)), _wgslsmith_f_op_f32(295f - 968f))), true));
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(global0.a));
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_div_f32(global0.a.x, 842f), _wgslsmith_f_op_f32(var_0.c.x - -380f), _wgslsmith_f_op_f32(237f + 306f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -1311f, 926f, var_0.c.x) * global0.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 879f, _wgslsmith_f_op_f32(func_3(u_input.d.xw)), _wgslsmith_f_op_f32(-var_1.x)))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = 55179u << (select(arg_0.x, ~(~28027u), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), 123528u >= u_input.d.x))) % 32u);
    global0 = func_2(vec4<bool>(select(arg_0.x, ~1u, true) >= _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0.x, 47031u), u_input.d.x), any(func_4(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false)).yyx), true, _wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_dot_vec3_i32(u_input.e.xyy, vec3<i32>(-36642i, -1i, 46953i)), 1i) != u_input.c));
    let var_1 = func_2(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), func_4(select(func_4(vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), true)), vec4<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(false, false, false, false)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true)), true)));
    let var_2 = all(select(vec2<bool>(all(func_4(vec4<bool>(true, false, true, true)).wz), true), func_4(func_4(vec4<bool>(true, true, true, true))).zx, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), true))));
    var var_3 = func_2(select(select(vec4<bool>(all(vec4<bool>(var_2, true, var_2, true)), false, true, all(vec2<bool>(var_2, var_2))), select(func_4(vec4<bool>(var_2, false, false, false)), !vec4<bool>(false, false, var_2, true), var_2 | var_2), select(true, var_2, true)), !vec4<bool>(true, var_2, !var_2, arg_0.x == 4294967295u), true));
    return func_2(!vec4<bool>(!any(vec4<bool>(false, var_2, true, var_2)), true, var_2, var_2));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3) -> vec2<f32> {
    global0 = func_5(~vec3<u32>(0u, u_input.d.x ^ ~u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(0u, u_input.b, u_input.b)), ~u_input.d.wxy)), Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(global0.a, arg_1.a)), _wgslsmith_f_op_vec4_f32(ceil(arg_1.a))))))));
    global0 = arg_1;
    var var_0 = !arg_0.b;
    var_0 = select(!arg_0.b, true, true);
    var var_1 = _wgslsmith_mod_u32(firstLeadingBit(~(~u_input.b)), ~(~41585u));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(global0.a.zx, arg_0.c))))), vec2<f32>(1f, 1000f));
}

fn func_7(arg_0: f32, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = global0.a.xy;
    let var_1 = false;
    let var_2 = arg_2;
    let var_3 = max(vec2<i32>(-_wgslsmith_dot_vec4_i32(u_input.e, firstLeadingBit(arg_3.a)), ~(-var_2 | -2147483647i)), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(46555i, 1i), reverseBits(abs(vec2<i32>(0i, u_input.e.x))))));
    let var_4 = firstLeadingBit(vec4<u32>(countOneBits(u_input.b), u_input.d.x ^ 0u, u_input.d.x, _wgslsmith_mod_u32(~(~4294967295u), ~u_input.d.x)));
    return func_5(var_4.xxx, func_5(select(abs(max(vec3<u32>(u_input.d.x, var_4.x, var_4.x), vec3<u32>(u_input.d.x, u_input.b, 1u))), u_input.d.yxx, !vec3<bool>(arg_3.b, arg_3.b, true)), func_2(!func_4(vec4<bool>(false, false, true, arg_3.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    global0 = func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-212f, 1782f), var_0))))), u_input.e.ww, 95080i, Struct_1(firstTrailingBit(select(vec4<i32>(0i, u_input.a, -25250i, u_input.a), u_input.e, true)) | vec4<i32>(-46837i, -56956i, firstTrailingBit(u_input.c), u_input.c), ~(~0u) == _wgslsmith_div_u32(~73735u, u_input.b), _wgslsmith_f_op_vec2_f32(func_6(Struct_1(_wgslsmith_sub_vec4_i32(u_input.e, u_input.e), true, global0.a.ww), func_5(u_input.d.yzx, func_2(vec4<bool>(true, false, false, true)))))));
    var var_1 = all(!(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true), true)));
    var var_2 = Struct_3(global0.a);
    var var_3 = Struct_1(u_input.e, all(!vec4<bool>(true, true, true, u_input.a > 24010i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1()), -650f) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(568f, global0.a.x), global0.a.yy))));
    var_1 = false;
    let var_4 = Struct_1(~vec4<i32>(-6007i, ~(~var_3.a.x), u_input.e.x, max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_3.a.x), u_input.e.xx), 1i)), true, func_5(~vec3<u32>(_wgslsmith_clamp_u32(27812u, u_input.d.x, 95043u), u_input.b, u_input.b), Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, global0.a.x, var_2.a.x, 1000f), vec4<f32>(-1053f, global0.a.x, var_2.a.x, -1071f), vec4<bool>(var_3.b, true, var_3.b, var_3.b))))).a.ww);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~(~u_input.d.zyw) ^ (u_input.d.xww << (u_input.d.zzz % vec3<u32>(32u))), vec3<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(u_input.d.x, u_input.b)), ~(~u_input.d.x))), _wgslsmith_f_op_f32(-func_2(!select(vec4<bool>(var_3.b, var_3.b, var_4.b, false), vec4<bool>(var_4.b, var_3.b, true, false), vec4<bool>(var_3.b, false, var_4.b, true))).a.x));
}

