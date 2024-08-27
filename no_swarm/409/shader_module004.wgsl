struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1394f, 4294967295u, 4678u, vec3<bool>(true, true, false)), Struct_1(-1000f, 39280u, 0u, vec3<bool>(true, true, true)), Struct_1(1000f, 55981u, 4294967295u, vec3<bool>(true, true, true)), Struct_1(216f, 66874u, 92709u, vec3<bool>(true, false, false)), Struct_1(614f, 95189u, 0u, vec3<bool>(true, false, false)), Struct_1(-447f, 46201u, 0u, vec3<bool>(false, true, true)), Struct_1(712f, 19151u, 0u, vec3<bool>(false, false, false)), Struct_1(-516f, 1u, 34541u, vec3<bool>(false, true, true)), Struct_1(-1000f, 7746u, 37569u, vec3<bool>(false, false, true)), Struct_1(129f, 64484u, 48274u, vec3<bool>(false, true, true)), Struct_1(734f, 17460u, 1u, vec3<bool>(true, true, true)), Struct_1(720f, 4294967295u, 1u, vec3<bool>(true, true, false)), Struct_1(-1544f, 1u, 9498u, vec3<bool>(true, false, false)), Struct_1(180f, 4294967295u, 85521u, vec3<bool>(false, false, true)), Struct_1(-1461f, 4294967295u, 11535u, vec3<bool>(false, true, false)), Struct_1(1083f, 0u, 58518u, vec3<bool>(false, true, true)), Struct_1(-349f, 4294967295u, 1u, vec3<bool>(false, true, false)));

var<private> global2: array<u32, 10> = array<u32, 10>(6546u, 1285u, 0u, 1u, 1u, 17372u, 4294967295u, 61070u, 4294967295u, 1u);

var<private> global3: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(-928f, global2[_wgslsmith_index_u32(71763u, 10u)], u_input.a | ~global2[_wgslsmith_index_u32(~(~4080u), 10u)], vec3<bool>(true, true, true));
    var var_1 = vec3<i32>(-1i) * -u_input.b.yyx;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f) - _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(725f + 771f) + var_0.a))), 1u, ~(~(~global2[_wgslsmith_index_u32(~45659u, 10u)])), select(select(vec3<bool>(var_0.d.x, var_0.d.x && var_0.d.x, any(vec3<bool>(true, var_0.d.x, var_0.d.x))), select(var_0.d, select(vec3<bool>(var_0.d.x, false, var_0.d.x), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), true), var_0.d), !(!select(var_0.d, vec3<bool>(var_0.d.x, true, true), vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x))), vec3<bool>(true & any(var_0.d), var_0.d.x, var_0.d.x)));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~firstLeadingBit(80453u), var_0.b, firstLeadingBit(u_input.a) << (global2[_wgslsmith_index_u32(var_0.c, 10u)] % 32u)), firstLeadingBit(~_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(85354u, 34726u, global2[_wgslsmith_index_u32(u_input.a, 10u)])), _wgslsmith_add_vec3_u32(vec3<u32>(60058u, global2[_wgslsmith_index_u32(4294967295u, 10u)], var_2.c), vec3<u32>(global2[_wgslsmith_index_u32(0u, 10u)], var_0.c, 4294967295u))))), 17u)];
    var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -903f), _wgslsmith_add_u32(2276u, var_0.b), select(global2[_wgslsmith_index_u32(var_0.b, 10u)], _wgslsmith_mod_u32(_wgslsmith_add_u32(24262u, ~47170u), var_2.b), !var_2.d.x & false), var_0.d);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(259f * 354f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: i32, arg_3: i32) -> vec3<bool> {
    let var_0 = ~_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(18477u, 10u)], 84705u, u_input.a, 14990u), vec4<u32>(4294967295u, 0u, 45118u, 0u), ~vec4<u32>(u_input.a, 0u, 6201u, 51262u)), vec4<u32>(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(abs(1u), 10u)], arg_1, ~47376u), 4294967295u, arg_1, ~max(1u, 28258u)));
    global2 = array<u32, 10>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(-126f)), ~select(_wgslsmith_div_u32(61767u, arg_1) | 20965u, 13326u, arg_0.x < -1000f), arg_1, vec3<bool>(true & ((arg_0.x <= arg_0.x) | true), false, !any(vec2<bool>(true, true))));
    var var_2 = var_1.a;
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_1.a))));
    return !vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(var_1.d.x, true, var_1.d.x), var_1.d.x)), true, true);
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_2 {
    var var_0 = select(!(!vec4<bool>(1452f > arg_1, false, true, true)), !vec4<bool>(true, 1i < _wgslsmith_mult_i32(-5606i, u_input.b.x), any(vec3<bool>(false, false, true)), true & any(vec3<bool>(true, false, false))), vec4<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), all(vec2<bool>(false, true)))), true, false, true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-161f - arg_0)), 1u, ~1u, select(func_4(vec3<f32>(_wgslsmith_f_op_f32(arg_1 - arg_0), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(arg_1 - arg_0)), 32487u, ~_wgslsmith_add_i32(23575i, u_input.b.x), countOneBits(u_input.b.x)), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(387f, -1000f, arg_0)) * vec3<f32>(arg_1, -1686f, arg_1)), u_input.a, countOneBits(-u_input.b.x), u_input.b.x), !all(vec4<bool>(var_0.x, false, var_0.x, var_0.x))));
    let var_2 = global1[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(~13470u, 10u)], _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(var_1.c, 10u)], 0u), vec2<u32>(76979u, 980u), abs(vec2<u32>(67460u, u_input.a))) ^ vec2<u32>(43568u, global2[_wgslsmith_index_u32(u_input.a, 10u)]), ~firstLeadingBit(vec2<u32>(var_1.b, global2[_wgslsmith_index_u32(4294967295u, 10u)])))), 17u)];
    global0 = abs(~select(~(~4294967295u), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.c, 0u), ~1687u), false));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_2.a), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_2.c, 12982u), ~var_2.b), _wgslsmith_clamp_u32(u_input.a, ~0u, firstLeadingBit(~var_2.c)), !(!select(var_0.xww, var_1.d, vec3<bool>(var_1.d.x, var_1.d.x, var_2.d.x)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, var_1.a, 402f, 1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-974f, arg_0, -983f, var_2.a))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-368f * var_1.a), -278f, 969f), vec4<bool>(!var_1.d.x, true, false, false))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, -1827f, var_2.a, -368f) + vec4<f32>(-2761f, 817f, -693f, var_1.a))))))), abs(countOneBits(u_input.b.x) ^ _wgslsmith_add_i32(u_input.b.x, u_input.b.x)) < firstTrailingBit(u_input.b.x), var_1.a);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> u32 {
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    let var_0 = select(select(select(select(vec4<bool>(true, arg_0.a.d.x, true, false), !vec4<bool>(true, arg_0.c, true, false), func_4(arg_0.b.wxz, 31796u, u_input.b.x, u_input.b.x).x), select(vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c), !vec4<bool>(true, arg_0.a.d.x, true, arg_0.c), !arg_0.a.d.x), arg_0.a.d.x), vec4<bool>(arg_0.a.d.x, false, false, any(select(vec4<bool>(false, arg_0.a.d.x, arg_0.c, true), vec4<bool>(arg_0.c, false, true, false), vec4<bool>(false, arg_0.c, true, true)))), (u_input.b.x <= firstLeadingBit(arg_2)) || !any(vec2<bool>(arg_0.a.d.x, arg_0.a.d.x))), select(vec4<bool>(true, !arg_0.c, true, true), select(vec4<bool>(true, true, arg_0.c, 18987i > arg_2), select(select(vec4<bool>(arg_0.a.d.x, arg_0.c, true, false), vec4<bool>(arg_0.c, false, arg_0.c, true), true), vec4<bool>(true, arg_0.c, false, arg_0.c), arg_0.a.d.x), select(select(vec4<bool>(false, true, arg_0.a.d.x, arg_0.a.d.x), vec4<bool>(false, true, arg_0.a.d.x, false), vec4<bool>(arg_0.c, false, arg_0.a.d.x, arg_0.a.d.x)), vec4<bool>(arg_0.c, arg_0.a.d.x, arg_0.a.d.x, false), arg_0.a.d.x)), select(!vec4<bool>(true, arg_0.c, true, arg_0.a.d.x), vec4<bool>(arg_2 >= arg_2, true, true, !arg_0.a.d.x), !vec4<bool>(arg_0.a.d.x, arg_0.c, arg_0.c, false))), select(arg_0.a.d.x, true, any(select(vec2<bool>(arg_0.c, true), arg_0.a.d.yy, func_2(arg_0.b.x, arg_0.d).a.d.yx))));
    var var_1 = select(var_0.x || func_2(arg_0.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.d - -315f), _wgslsmith_f_op_f32(-arg_0.d)))).a.d.x, arg_0.c, arg_0.a.d.x);
    return u_input.a;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> f32 {
    global0 = 1u;
    global0 = arg_1;
    var var_0 = ~func_5(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), arg_0.a), _wgslsmith_f_op_f32(631f - arg_0.a)), u_input.b.x, u_input.b.x);
    var var_1 = ~(~arg_1);
    let var_2 = select(~(~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(4521u, 10u)], ~arg_1, 80734u)), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 4294967295u, arg_1), ~(vec4<u32>(16015u, arg_1, global2[_wgslsmith_index_u32(18986u, 10u)], u_input.a) | vec4<u32>(25574u, 69629u, arg_0.b, 0u))), 1u, ~countOneBits(firstLeadingBit(1u)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1438f, -2049f))), -380f).a.c), arg_0.d.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-556f - arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_f32(-1759f * -1390f), 4353u, u_input.a, vec3<bool>(true, true, true)), ~(u_input.a ^ 0u)))), ~global2[_wgslsmith_index_u32(~u_input.a, 10u)], _wgslsmith_mult_u32(1u, ~firstTrailingBit(reverseBits(global2[_wgslsmith_index_u32(u_input.a, 10u)]))), !select(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 847f, -173f)), 4294967295u, _wgslsmith_div_i32(u_input.b.x, u_input.b.x), u_input.b.x), select(vec3<bool>(true, true, true), func_2(-801f, 1038f).a.d, func_4(vec3<f32>(-936f, -421f, -223f), 4294967295u, 66510i, u_input.b.x)), all(vec2<bool>(true, true))));
    var var_1 = 0u;
    var var_2 = !(!select(vec4<bool>(var_0.d.x, func_2(-778f, 1642f).a.d.x, any(var_0.d.zx), false), !(!vec4<bool>(true, true, var_0.d.x, false)), true));
    let var_3 = global1[_wgslsmith_index_u32(var_0.c, 17u)];
    let var_4 = Struct_2(global1[_wgslsmith_index_u32(~var_3.b, 17u)], vec4<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -974f), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -499f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a), -1387f))), var_3.d.x, -443f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(~(~42892u), 17u)], ~var_3.b))), _wgslsmith_dot_vec2_i32(u_input.b.yy >> (vec2<u32>(~var_4.a.c, 13954u) % vec2<u32>(32u)), vec2<i32>(~u_input.b.x & reverseBits(u_input.b.x), -u_input.b.x)), vec4<u32>(~_wgslsmith_clamp_u32(38890u, 12473u, 0u), select(firstTrailingBit(~var_3.b), global2[_wgslsmith_index_u32(~57070u, 10u)] << (37875u % 32u), all(select(vec4<bool>(false, var_0.d.x, var_4.a.d.x, true), vec4<bool>(true, var_3.d.x, var_4.c, var_0.d.x), vec4<bool>(false, true, true, var_4.a.d.x)))), ~1u, 6719u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-305f - 1355f), _wgslsmith_f_op_f32(var_4.d + var_0.a))), vec2<f32>(var_3.a, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_4.a.a, var_3.a))))), 1205f);
}

