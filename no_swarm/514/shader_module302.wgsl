struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true));

var<private> global2: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global3: array<f32, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_2) -> bool {
    global0 = vec2<bool>(true, true);
    var var_0 = -477f;
    global1 = array<vec4<bool>, 32>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 30u)] * -1157f), arg_0.d.c.x))) + global3[_wgslsmith_index_u32(~0u, 30u)]));
    global0 = vec2<bool>(arg_0.e, global0.x);
    return arg_3.d.a;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(true, select(!global2[_wgslsmith_index_u32(1u, 17u)], vec2<bool>(!global0.x | true, true), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(14067u, 30u)], global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(20592u, 30u)], 1000f), vec4<f32>(153f, 110f, -531f, -771f), true)) - _wgslsmith_div_vec4_f32(vec4<f32>(332f, global3[_wgslsmith_index_u32(6149u, 30u)], -1453f, -162f), vec4<f32>(global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(1u, 30u)], -839f, global3[_wgslsmith_index_u32(14960u, 30u)]))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1568f, 650f, 575f, -616f))), !vec3<bool>(global0.x, !global0.x | all(global2[_wgslsmith_index_u32(0u, 17u)]), true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1840f))));
    var var_2 = Struct_1(var_0.b.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(~0u), ~29532u), vec2<u32>(1u, 0u)), 17u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.c))), vec3<bool>(true, var_0.a, func_3(Struct_2(vec3<bool>(true, false, global0.x), 79315u, ~vec3<u32>(36062u, 0u, 4878u), Struct_1(var_0.a, var_0.b, vec4<f32>(var_0.c.x, global3[_wgslsmith_index_u32(64497u, 30u)], -970f, var_0.c.x), vec3<bool>(true, global0.x, global0.x)), var_0.a), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(130007u, 1u), 30u)], _wgslsmith_add_vec4_u32(min(vec4<u32>(31275u, 6340u, 0u, 0u), vec4<u32>(38121u, 59184u, 8402u, 30440u)), vec4<u32>(1u, 1u, 1u, 1u)), Struct_2(var_0.d, _wgslsmith_div_u32(0u, 15977u), vec3<u32>(1u, 1u, 1u), Struct_1(true, vec2<bool>(var_0.d.x, global0.x), vec4<f32>(global3[_wgslsmith_index_u32(67319u, 30u)], -627f, -431f, -1209f), var_0.d), false))));
    let var_3 = Struct_2(var_2.d, 8112u, ~select(~vec3<u32>(0u, 4294967295u, 22502u), vec3<u32>(1u, 1u, 1u), select(!vec3<bool>(var_0.d.x, true, false), !vec3<bool>(var_0.d.x, false, false), var_2.a)), Struct_1(global0.x, var_0.d.yy, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(876f + 636f))), -122f, _wgslsmith_f_op_f32(-280f - global3[_wgslsmith_index_u32(4294967295u, 30u)]), var_2.c.x), select(vec3<bool>(select(var_0.d.x, true, global0.x), var_2.b.x, var_2.a), var_0.d, var_0.a)), !(!global0.x));
    var_0 = Struct_1(false, var_3.a.xx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(169f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_3.b, 30u)] * -808f), var_1, -1029f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3[_wgslsmith_index_u32(1u, 30u)], -347f, var_2.c.x, 654f), var_3.d.c)) * vec4<f32>(var_1, var_3.d.c.x, -417f, -480f)) + vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_3.b, 30u)] - 428f), -826f, _wgslsmith_f_op_f32(var_3.d.c.x * 984f)))), !(!var_3.a));
    return _wgslsmith_clamp_u32(6985u, _wgslsmith_add_u32(0u, var_3.b << (_wgslsmith_div_u32(54089u, 58772u) % 32u)) << (countOneBits(~var_3.b >> (~13367u % 32u)) % 32u), var_3.b ^ 4294967295u);
}

fn func_1() -> u32 {
    global0 = !select(global2[_wgslsmith_index_u32(4294967295u, 17u)], select(!select(global2[_wgslsmith_index_u32(4294967295u, 17u)], vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x)), vec2<bool>(!global0.x, true), !vec2<bool>(true, global0.x)), true);
    let var_0 = 608f <= global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, func_2()), 30u)];
    global0 = vec2<bool>(any(!select(vec3<bool>(false, false, true), vec3<bool>(global0.x, var_0, var_0), global0.x)), select(select(!(!global0.x), true, true), !var_0, var_0));
    var var_1 = func_3(Struct_2(!select(select(vec3<bool>(true, var_0, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(global0.x, false, var_0), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, true), global0.x)), abs(~(~30905u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(4294967295u, 4294967295u, 1u))), Struct_1(true, global2[_wgslsmith_index_u32(~1u, 17u)], vec4<f32>(-372f, global3[_wgslsmith_index_u32(~11765u, 30u)], _wgslsmith_f_op_f32(sign(-245f)), -338f), vec3<bool>(global0.x, false, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -451f) + _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(~1u, 30u)]))), vec4<u32>(4294967295u, ~57958u, func_2(), _wgslsmith_add_u32(1u, ~1u)), Struct_2(select(select(select(vec3<bool>(var_0, false, false), vec3<bool>(true, var_0, false), var_0), vec3<bool>(true, global0.x, true), select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, var_0, false), vec3<bool>(false, var_0, true))), select(vec3<bool>(global0.x, true, true), vec3<bool>(var_0, var_0, false), all(vec2<bool>(var_0, var_0))), select(!vec3<bool>(var_0, false, true), select(vec3<bool>(global0.x, true, true), vec3<bool>(false, true, true), vec3<bool>(false, global0.x, var_0)), true || var_0)), abs(1u), vec3<u32>(~(~1u), 1u, 21734u), Struct_1(select(func_3(Struct_2(vec3<bool>(var_0, global0.x, var_0), 72458u, vec3<u32>(58890u, 8794u, 0u), Struct_1(var_0, global2[_wgslsmith_index_u32(85270u, 17u)], vec4<f32>(-323f, 755f, 718f, 519f), vec3<bool>(var_0, false, false)), global0.x), 623f, vec4<u32>(3828u, 119029u, 28420u, 1u), Struct_2(vec3<bool>(var_0, global0.x, var_0), 63220u, vec3<u32>(16189u, 0u, 57548u), Struct_1(false, vec2<bool>(global0.x, global0.x), vec4<f32>(-695f, global3[_wgslsmith_index_u32(36191u, 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)], -111f), vec3<bool>(true, false, global0.x)), false)), true | global0.x, var_0), vec2<bool>(true, all(global1[_wgslsmith_index_u32(1u, 32u)])), vec4<f32>(global3[_wgslsmith_index_u32(19255u, 30u)], _wgslsmith_div_f32(-1494f, global3[_wgslsmith_index_u32(0u, 30u)]), -755f, 805f), !vec3<bool>(true, global0.x, true)), !any(vec3<bool>(true, true, true)) & (!global0.x & (u_input.a.x > 24980i))));
    var var_2 = min(vec2<u32>(1u, ~(~1u)), _wgslsmith_div_vec2_u32(select(~_wgslsmith_mod_vec2_u32(vec2<u32>(20884u, 1822u), vec2<u32>(1u, 7196u)), ~vec2<u32>(1u, 1u), true), ~(vec2<u32>(28602u, 66702u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))));
    return var_2.x;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global0 = arg_1.d.d.zy;
    var var_0 = ~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, arg_1.b), vec3<u32>(50546u, arg_1.b, arg_0) | vec3<u32>(1u, 0u, arg_1.c.x))));
    global1 = array<vec4<bool>, 32>();
    global1 = array<vec4<bool>, 32>();
    global0 = vec2<bool>(true, all(vec3<bool>(true, true, true)));
    return Struct_1(u_input.b.x != countOneBits(u_input.a.x), arg_1.d.d.zx, vec4<f32>(_wgslsmith_f_op_f32(round(3363f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.c.x * _wgslsmith_f_op_f32(abs(arg_1.d.c.x))) * arg_1.d.c.x), _wgslsmith_f_op_f32(1290f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-649f)))), _wgslsmith_f_op_f32(-548f - _wgslsmith_f_op_f32(f32(-1f) * -1308f))), select(!vec3<bool>(true, any(global2[_wgslsmith_index_u32(arg_1.c.x, 17u)]), true), arg_1.a, select(arg_1.d.d, vec3<bool>(any(vec4<bool>(arg_1.a.x, true, true, true)), any(vec4<bool>(false, true, global0.x, true)), any(global2[_wgslsmith_index_u32(arg_0, 17u)])), !select(arg_1.a, arg_1.d.d, arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 32>();
    global3 = array<f32, 30>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 30u)]), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(46461u, 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)])))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~0u, countOneBits(0u)), 30u)] - 324f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * 1999f)));
    global2 = array<vec2<bool>, 17>();
    var var_1 = func_4(func_1() | 1u, Struct_2(vec3<bool>(global0.x, false, true), _wgslsmith_mult_u32(countOneBits(countOneBits(73213u)), ~firstTrailingBit(33636u)), vec3<u32>(1u, 1u, 1u), Struct_1(true, global2[_wgslsmith_index_u32(~1u, 17u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1435f, var_0, 2313f, 671f)), vec3<bool>(all(vec2<bool>(true, global0.x)), global0.x, true)), global0.x), true);
    global2 = array<vec2<bool>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-651f))))))), ~abs(_wgslsmith_mod_vec3_i32(u_input.b, u_input.b) << (~vec3<u32>(6782u, 89895u, 4294967295u) % vec3<u32>(32u))), abs(firstLeadingBit(vec2<u32>(1u, 1u))));
}

