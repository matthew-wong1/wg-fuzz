struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<f32>(1177f, -1000f, 542f), false, 10862i, 0i, vec3<u32>(39330u, 4294967295u, 38593u)), Struct_1(vec3<f32>(1371f, 1225f, 342f), true, -23550i, 0i, vec3<u32>(109142u, 1u, 67063u)), Struct_1(vec3<f32>(-853f, -408f, -708f), false, -1i, -14569i, vec3<u32>(22409u, 36278u, 37424u)), Struct_1(vec3<f32>(303f, 216f, 1121f), false, 2147483647i, 0i, vec3<u32>(21613u, 75957u, 0u)), Struct_1(vec3<f32>(698f, 839f, 764f), true, -1i, 25157i, vec3<u32>(46618u, 4294967295u, 53344u)), Struct_1(vec3<f32>(877f, -1031f, 1417f), true, 0i, 2147483647i, vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec3<f32>(-351f, -1397f, -791f), true, -1i, -32969i, vec3<u32>(0u, 9064u, 4294967295u)), Struct_1(vec3<f32>(-530f, 792f, 752f), false, 16726i, -27384i, vec3<u32>(12683u, 1u, 1u)), Struct_1(vec3<f32>(-929f, -2364f, 2177f), false, i32(-2147483648), 2080i, vec3<u32>(1u, 19176u, 4294967295u)), Struct_1(vec3<f32>(-1099f, -1114f, 962f), false, 14959i, -13190i, vec3<u32>(12815u, 0u, 32529u)), Struct_1(vec3<f32>(-1432f, -580f, 672f), true, -18427i, -65214i, vec3<u32>(4294967295u, 1u, 5354u)));

var<private> global1: vec4<u32> = vec4<u32>(0u, 1u, 4294967295u, 14226u);

var<private> global2: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(4294967295u, 17391u, 18883u), vec3<u32>(1u, 1u, 31189u), vec3<u32>(0u, 91194u, 4294967295u), vec3<u32>(70672u, 30765u, 20461u), vec3<u32>(27772u, 30827u, 2788u), vec3<u32>(4294967295u, 12844u, 0u), vec3<u32>(6336u, 1u, 1u));

var<private> global3: array<Struct_3, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_3) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(floor(-473f));
    let var_1 = max(~min(vec4<u32>(global1.x, 1u & global1.x, ~0u, 15515u), countOneBits(vec4<u32>(global1.x, 0u, u_input.b, u_input.b))), vec4<u32>(~global1.x, global1.x, abs(45637u), 28109u));
    var var_2 = !(arg_2.b.x <= _wgslsmith_f_op_f32(f32(-1f) * -489f));
    let var_3 = min(_wgslsmith_mod_vec4_u32(var_1, var_1), ~(~var_1));
    global0 = array<Struct_1, 11>();
    return firstLeadingBit(-(~(~u_input.a.zx) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(global1.wxz, vec3<u32>(var_3.x, 55694u, 0u)), ~var_1.x) % vec2<u32>(32u))));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f)), u_input.a.x, func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(589f, -1469f, -1000f, 1175f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(488f, -514f, -819f, 722f)), vec4<bool>(true, true, all(vec4<bool>(true, true, true, false)), true))), u_input.a, Struct_3(vec2<bool>(true, u_input.a.x < 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1211f, -711f, 503f, 774f) * vec4<f32>(-887f, -1349f, 451f, -901f))))));
    global3 = array<Struct_3, 28>();
    global0 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-318f, var_0.a)) + -1004f), var_0.a)))), _wgslsmith_f_op_f32(728f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-286f - _wgslsmith_f_op_f32(var_0.a + -386f)), var_0.a)))));
    let var_2 = 433f;
    return Struct_4(~(~u_input.b), Struct_1(vec3<f32>(239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * -1887f) + var_0.a), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, -866f), _wgslsmith_f_op_f32(abs(1000f)))), true, var_0.c.x, var_0.c.x, ~(global1.yyw & (vec3<u32>(0u, u_input.b, 0u) & vec3<u32>(45429u, u_input.b, 1u)))), select(vec2<bool>(false || all(vec2<bool>(true, false)), all(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, false)), 2147483647i != var_0.c.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true)), min(vec3<i32>(abs(-1i), var_0.c.x | u_input.a.x, var_0.b) & -vec3<i32>(var_0.c.x, 0i, u_input.a.x), u_input.a.wxw), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -399f), _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -228f, -1000f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(736f, 1000f, -363f), vec3<f32>(var_2, -343f, 474f))) * vec3<f32>(-560f, var_0.a, 248f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, var_2, var_0.a), vec3<f32>(-647f, 448f, var_0.a), true)), vec3<f32>(-1090f, var_0.a, -422f), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: i32, arg_3: vec2<i32>) -> f32 {
    var var_0 = select(arg_1, firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, _wgslsmith_clamp_u32(u_input.b, 0u, 0u), abs(arg_0.b.e.x), arg_0.b.e.x), select(arg_1, abs(vec4<u32>(arg_1.x, arg_0.b.e.x, 4294967295u, arg_0.a)), vec4<bool>(arg_0.c.x, arg_0.b.b, arg_0.c.x, false)))), all(vec4<bool>(all(select(vec3<bool>(false, arg_0.b.b, arg_0.b.b), vec3<bool>(arg_0.b.b, arg_0.b.b, true), vec3<bool>(arg_0.c.x, arg_0.b.b, arg_0.c.x))), any(!vec4<bool>(true, arg_0.b.b, false, arg_0.c.x)), arg_0.b.b, true)));
    let var_1 = func_2();
    let var_2 = ~_wgslsmith_dot_vec3_i32(u_input.a.xzy, var_1.d);
    let var_3 = func_2().c;
    global2 = array<vec3<u32>, 7>();
    return _wgslsmith_div_f32(665f, -1000f);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_mult_u32(global1.x, ~(~1u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-202f + 519f) + -1000f))) <= _wgslsmith_f_op_f32(func_4(func_2(), countOneBits(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(global1.x, var_0, 7491u, var_0)), _wgslsmith_div_vec4_u32(vec4<u32>(27573u, 4294967295u, 4294967295u, global1.x), vec4<u32>(4294967295u, 15779u, var_0, 1u)))), abs(u_input.a.x), ~func_2().d.xz));
    let var_2 = vec2<bool>(true, true);
    var_1 = any(vec4<bool>(true, true, !all(!vec3<bool>(var_2.x, var_2.x, false)), true));
    global0 = array<Struct_1, 11>();
    return _wgslsmith_f_op_f32(round(-461f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 410f;
    global2 = array<vec3<u32>, 7>();
    var var_1 = _wgslsmith_f_op_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, ~firstLeadingBit(u_input.a.x) << (_wgslsmith_add_u32(firstTrailingBit(u_input.b >> (4294967295u % 32u)), 17034u | ~global1.x) % 32u));
}

