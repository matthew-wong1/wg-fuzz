struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true));

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(1i, vec3<f32>(113f, -1000f, -1793f), i32(-2147483648), false, 3252i), 36716u));

var<private> global2: Struct_1 = Struct_1(31340i, vec3<f32>(1673f, -1872f, -611f), 1i, true, -24571i);

var<private> global3: array<bool, 27>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-457f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) - -1660f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2832f)))));
    return global2.b.x;
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec4<f32>, arg_3: vec3<f32>) -> bool {
    var var_0 = !(!(!select(vec4<bool>(true, arg_0.a.d, global2.d, global3[_wgslsmith_index_u32(91138u, 27u)]), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 27u)], false, false, true), any(vec2<bool>(false, global2.d)))));
    let var_1 = -(arg_0.d.xy >> (u_input.b.zz % vec2<u32>(32u)));
    let var_2 = u_input.b.x;
    global3 = array<bool, 27>();
    global1 = array<Struct_2, 1>();
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global1 = array<Struct_2, 1>();
    let var_0 = Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(426f, -1853f, arg_1, -154f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1201f, -226f, 471f, global2.b.x)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 970f, -494f, global2.b.x) - vec4<f32>(-610f, 926f, -1562f, 1075f)))))), arg_0.d)), _wgslsmith_mult_u32(4294967295u, ~(~max(u_input.c, u_input.e.x))), _wgslsmith_div_vec3_i32(vec3<i32>(56400i, firstTrailingBit(-2147483647i), 1i), countOneBits(vec3<i32>(abs(-37427i), global2.c >> (1u % 32u), arg_0.e))), _wgslsmith_mult_u32(~firstLeadingBit(u_input.e.x), u_input.c) | u_input.c);
    global0 = array<vec3<bool>, 26>();
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_0.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.b + vec3<f32>(_wgslsmith_div_f32(var_0.a.b.x, arg_0.b.x), _wgslsmith_div_f32(var_0.b.x, 130f), -995f))));
    return arg_0;
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_2, 1>();
    return func_4(Struct_1(-11307i, global2.b, -2147483647i >> (_wgslsmith_clamp_u32(u_input.e.x, ~0u, u_input.c) % 32u), func_3(Struct_3(Struct_1(u_input.d, vec3<f32>(-1000f, 101f, global2.b.x), global2.e, global2.d, u_input.a.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.b.x, global2.b.x, -567f, 192f))), ~4294967295u, -vec3<i32>(u_input.d, 0i, global2.e), firstTrailingBit(u_input.b.x)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.b.x, global2.b.x, -281f, global2.b.x))), global2.b), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, -18232i, global2.a, global2.a), ~vec4<i32>(global2.e, global2.a, u_input.d, global2.a), select(vec4<bool>(global2.d, global3[_wgslsmith_index_u32(4294967295u, 27u)], global2.d, false), vec4<bool>(global3[_wgslsmith_index_u32(49352u, 27u)], global2.d, false, global3[_wgslsmith_index_u32(u_input.b.x, 27u)]), false)), ~vec4<i32>(-24939i, global2.e, global2.a, u_input.a.x) >> (~u_input.e % vec4<u32>(32u)))), global2.b.x);
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> f32 {
    global2 = Struct_1(0i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(407f, -941f, 1512f)), arg_2.b))), firstLeadingBit(i32(-1i) * -10605i), arg_2.d, ~(-2147483647i));
    global0 = array<vec3<bool>, 26>();
    let var_0 = arg_2;
    global1 = array<Struct_2, 1>();
    global2 = Struct_1(abs(u_input.d), _wgslsmith_f_op_vec3_f32(func_4(func_4(func_4(var_0, -947f), _wgslsmith_f_op_f32(select(global2.b.x, global2.b.x, arg_2.d))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.b.x))))).b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, -171f, arg_2.b.x) - var_0.b)))), ~_wgslsmith_div_i32(global2.a, arg_2.a), true, abs(var_0.a));
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~firstTrailingBit(~38868i | -u_input.d), global2.b, min(abs(global2.a), u_input.a.x), false, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-5434i, global2.e, -27680i >> (1u % 32u), ~0i), abs(-vec4<i32>(-2276i, global2.e, global2.a, global2.a))), vec4<i32>(43245i, 2147483647i, 0i, 38312i)));
    global2 = var_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.x - 474f), -1769f)), -770f, _wgslsmith_f_op_f32(ceil(global2.b.x))), vec4<f32>(global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1235f))), _wgslsmith_f_op_f32(f32(-1f) * -1756f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b.x, global2.b.x, false)))))));
    var var_2 = Struct_1(var_0.e, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-332f, _wgslsmith_f_op_f32(-global2.b.x))))), _wgslsmith_f_op_f32(-1454f * _wgslsmith_f_op_f32(func_5(u_input.b.x, ~u_input.c, func_1()))), 438f), func_4(Struct_1(global2.e, vec3<f32>(-272f, 1774f, _wgslsmith_f_op_f32(-var_1.x)), global2.c, !all(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.e.x, 27u)], var_0.d, true)), -15369i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-356f - var_1.x), _wgslsmith_f_op_f32(-619f + var_1.x)))).a, true, var_0.c);
    let var_3 = _wgslsmith_mod_vec3_i32(firstTrailingBit(min(vec3<i32>(~var_0.e, -62389i, -var_2.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.e, global2.a, -1i), vec3<i32>(-16923i, 0i, global2.e), vec3<i32>(-7451i, -81593i, -37467i)) & vec3<i32>(var_0.e, 3406i, global2.c))), max(vec3<i32>(countOneBits(u_input.d), 33260i, -25861i), vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(-1i, 28498i, u_input.a.x))));
    let var_4 = false;
    let var_5 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-858f, 643f));
    global3 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(global2.b.zy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(419f, 1098f)), _wgslsmith_div_vec2_f32(vec2<f32>(-688f, 779f), global2.b.zy))))));
}

