struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(6412i, vec3<bool>(true, true, false), -46970i, 1467f, vec3<f32>(-937f, 1673f, -626f)), Struct_1(2147483647i, vec3<bool>(true, false, true), 17806i, 184f, vec3<f32>(882f, -1012f, -910f)), Struct_2(vec4<i32>(2147483647i, 1i, 14409i, 0i), Struct_1(0i, vec3<bool>(true, false, false), 23581i, 947f, vec3<f32>(598f, 2289f, -247f)), vec3<bool>(false, true, false), Struct_1(52905i, vec3<bool>(false, false, false), 2147483647i, 312f, vec3<f32>(1130f, 1184f, 469f))), 4478u, Struct_1(i32(-2147483648), vec3<bool>(true, false, false), 0i, 680f, vec3<f32>(747f, -154f, 764f)));

var<private> global1: array<u32, 5> = array<u32, 5>(4089u, 4116u, 68048u, 4294967295u, 11196u);

var<private> global2: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> f32 {
    var var_0 = Struct_5(vec3<bool>(all(global0.e.b.xz), any(global0.b.b), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true))), global0.c.a.zxy, -2147483647i, select(vec3<bool>(-2147483647i < ~u_input.a, false, all(global0.c.b.b.xz)), select(select(select(vec3<bool>(true, false, arg_1), vec3<bool>(false, false, arg_1), true), !global0.b.b, !vec3<bool>(global0.a.b.x, false, true)), vec3<bool>(!global0.a.b.x, !arg_1, global0.c.c.x), true), (~global1[_wgslsmith_index_u32(64470u, 5u)] ^ _wgslsmith_mult_u32(u_input.c.x, 44278u)) != 30144u));
    global0 = Struct_3(global0.b, global0.b, global0.c, global0.d, global0.a);
    var var_1 = Struct_3(global0.a, Struct_1(-2147483647i, var_0.d, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~global0.b.c, reverseBits(var_0.c)), -7553i, _wgslsmith_clamp_i32(firstLeadingBit(global0.a.a), global0.c.d.c, -3833i >> (1u % 32u))), global0.b.e.x, vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(max(global0.b.d, global0.b.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.e.x) + global0.e.e.x), global0.a.d)), Struct_2(select(global0.c.a, ~abs(vec4<i32>(7255i, 2147483647i, 1i, var_0.b.x)), !var_0.a.x || true), Struct_1(~global0.c.d.a, vec3<bool>(any(global0.a.b.xx), true && var_0.a.x, true), _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, var_0.b.x), ~10181i), _wgslsmith_f_op_f32(-315f + _wgslsmith_f_op_f32(sign(global0.c.d.e.x))), _wgslsmith_f_op_vec3_f32(-global0.c.b.e)), select(select(vec3<bool>(global0.e.b.x, true, global0.c.d.b.x), vec3<bool>(true, false, false), var_0.a.x), var_0.a, vec3<bool>(true, arg_1, var_0.a.x && arg_1)), global0.a), ~global0.d, global0.c.b);
    var_0 = Struct_5(select(vec3<bool>(~var_1.d < _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(61900u, 4294967295u, global1[_wgslsmith_index_u32(53908u, 5u)])), true, select(var_0.d.x, any(vec4<bool>(false, true, arg_1, false)), arg_1 || true)), var_0.d, false), _wgslsmith_sub_vec3_i32(var_0.b, vec3<i32>(2147483647i, abs(-37948i), u_input.a ^ var_1.a.a)) << ((vec3<u32>(0u, var_1.d, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.d, 0u, global1[_wgslsmith_index_u32(u_input.e, 5u)]), vec3<u32>(35842u, 32344u, 7545u))) | ~select(vec3<u32>(u_input.c.x, 1u, global0.d), vec3<u32>(108059u, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], 11440u), vec3<bool>(var_1.c.d.b.x, false, true))) % vec3<u32>(32u)), ~(_wgslsmith_add_i32(-global0.a.c, -36446i) | 1i), vec3<bool>(!any(!vec4<bool>(true, false, arg_1, var_0.a.x)), true, all(global0.b.b.zz)));
    let var_2 = Struct_5(select(!global0.e.b, select(var_1.c.c, vec3<bool>(true, true, true), select(var_0.a.x, global0.a.c <= 1i, arg_1 || true)), select(global0.b.b, select(vec3<bool>(var_0.a.x, global0.c.d.b.x, true), vec3<bool>(true, true, var_1.b.b.x), !vec3<bool>(var_1.c.b.b.x, false, true)), true)), select(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.b.a, global0.a.c, 8883i), vec3<i32>(var_0.c, var_0.b.x, 21194i)), vec3<i32>(var_1.a.a, -29218i, var_0.b.x)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c, global0.e.c, arg_0.x), vec3<i32>(14771i, arg_0.x, global0.c.a.x))), select(select(var_1.e.b, vec3<bool>(var_0.d.x, true, arg_1), vec3<bool>(var_0.d.x, var_1.e.b.x, global0.a.b.x)), vec3<bool>(false, var_0.d.x, true), global0.c.b.b.x)) << (_wgslsmith_add_vec3_u32(max(vec3<u32>(35815u, var_1.d, 82826u), u_input.c), countOneBits(abs(vec3<u32>(global1[_wgslsmith_index_u32(var_1.d, 5u)], var_1.d, var_1.d)))) % vec3<u32>(32u)), 7710i, vec3<bool>(true, true, true));
    return 387f;
}

fn func_2() -> Struct_1 {
    let var_0 = ~u_input.c;
    var var_1 = _wgslsmith_f_op_f32(floor(global0.a.e.x));
    var var_2 = !vec4<bool>(false, global0.c.d.b.x && global0.a.b.x, true, global0.c.d.e.x <= _wgslsmith_f_op_f32(min(global0.c.d.e.x, -381f)));
    let var_3 = Struct_4(~_wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.b.a, global0.b.c), vec3<i32>(-2147483647i, -8737i, u_input.d))));
    var var_4 = Struct_1(_wgslsmith_sub_i32(~(-_wgslsmith_mult_i32(global0.b.a, -2617i)), -(56661i >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.d, 5u)], 5u)] % 32u))), vec3<bool>(true, var_2.x, var_2.x), _wgslsmith_add_i32(-(~62258i & firstLeadingBit(global0.e.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, abs(26990i), var_3.a), _wgslsmith_div_vec3_i32(vec3<i32>(global0.a.a, 81480i, var_3.a), vec3<i32>(u_input.d, -2147483647i, global0.a.c)))), _wgslsmith_f_op_f32(global0.b.d * _wgslsmith_f_op_f32(func_3(abs(global0.c.a.xz), var_2.x))), global0.a.e);
    return global0.b;
}

fn func_1() -> Struct_1 {
    global1 = array<u32, 5>();
    var var_0 = Struct_4(_wgslsmith_dot_vec2_i32(~(~_wgslsmith_sub_vec2_i32(global0.c.a.yy, global0.c.a.zy)), global0.c.a.wz));
    let var_1 = vec3<u32>(global0.d, 56177u, global0.d);
    var var_2 = any(select(!vec4<bool>(!global0.a.b.x, true, !global0.a.b.x, any(vec2<bool>(false, global0.a.b.x))), vec4<bool>(global0.b.b.x, true, true, global0.b.b.x), !global0.a.b.x));
    let var_3 = global0.b;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(countOneBits(_wgslsmith_div_u32(~0u, countOneBits(54954u))) ^ global0.d, u_input.c.x);
    global0 = Struct_3(global0.c.b, Struct_1(-5944i, global0.c.d.b, global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global0.e.e.x, -1016f))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a.d, _wgslsmith_f_op_f32(493f + global0.a.d), _wgslsmith_f_op_f32(1706f * -635f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(290f, global0.c.d.e.x, -201f)))))), global0.c, ~_wgslsmith_div_u32(40288u, 4294967295u), func_1());
    let var_1 = select(vec4<bool>(global0.a.b.x, global0.a.b.x, global0.c.b.b.x, false), vec4<bool>(global0.b.b.x, firstLeadingBit(u_input.d) > _wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(global0.b.c, u_input.a)), all(!select(global0.a.b, vec3<bool>(true, true, true), global0.c.b.b)), all(func_1().b)), true);
    let var_2 = global0.c;
    global1 = array<u32, 5>();
    global2 = var_2.d.d <= 134f;
    var var_3 = Struct_4(_wgslsmith_mult_i32(56994i, var_2.d.c));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.d) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(307f)) * _wgslsmith_f_op_f32(round(-865f))) * _wgslsmith_f_op_f32(-var_2.b.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.c.d.e.x * var_2.d.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2215f + 434f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(532f, var_4, global0.b.e.x, -1000f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(280f, var_4, 405f, var_2.b.e.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.d.d, global0.b.d, var_2.b.d, 887f)))), 32890u);
}

