struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_1 = Struct_1(i32(-2147483648), vec3<u32>(0u, 37682u, 25747u), -11294i);

var<private> global3: Struct_1;

var<private> global4: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> vec3<i32> {
    global2 = Struct_1(global3.a, ~(vec3<u32>(_wgslsmith_add_u32(u_input.b.x, global2.b.x), global2.b.x, _wgslsmith_add_u32(global2.b.x, global1.x)) ^ global3.b), select(global3.c, 0i, false) ^ global3.a);
    global3 = Struct_1(~33882i, u_input.a, global3.c);
    var var_0 = i32(-1i) * -539i;
    var var_1 = ~((firstLeadingBit(global3.b) | u_input.b.yxx) << (u_input.a % vec3<u32>(32u)));
    var var_2 = arg_0;
    return _wgslsmith_mult_vec3_i32(abs(vec3<i32>(_wgslsmith_mod_i32(reverseBits(11294i), _wgslsmith_add_i32(global3.c, u_input.c.x)), ~global3.c, -_wgslsmith_div_i32(u_input.d, 1i))), vec3<i32>(2147483647i, ~(~(~global2.c)), i32(-1i) * -70494i));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-800f)))), _wgslsmith_div_f32(174f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(597f + 2795f), -1113f)), -984f));
    global2 = Struct_1(global3.a >> (~u_input.a.x % 32u), global2.b, _wgslsmith_mod_i32(-5672i, 1i));
    var var_1 = abs(-abs(func_3(true))) & vec3<i32>(-max(~global3.a, _wgslsmith_add_i32(u_input.e, 26043i)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.e, global3.a), abs(20454i), global3.a), global2.a), u_input.d ^ 1i);
    var_1 = vec3<i32>(~(-(-2147483647i & var_1.x)), ~(-2147483647i), -2147483647i);
    global2 = Struct_1(_wgslsmith_mult_i32(func_3(false).x, ~1i), u_input.b.ywy, countOneBits(var_1.x) >> (_wgslsmith_sub_u32(u_input.b.x, ~(~81549u)) % 32u));
    return Struct_1(global3.a, ~global3.b, 24535i);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<bool> {
    global4 = 215f;
    global2 = func_2();
    return select(vec4<bool>(true, true, any(vec2<bool>(all(vec4<bool>(false, false, false, false)), true)), !all(vec4<bool>(false, false, false, true)) | false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true), all(vec2<bool>(true, true))), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))));
}

fn func_5(arg_0: u32, arg_1: vec4<bool>) -> vec3<u32> {
    return _wgslsmith_sub_vec3_u32(global3.b, vec3<u32>(~select(~u_input.a.x, ~global1.x, arg_1.x & arg_1.x), arg_0, ~0u));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: u32, arg_3: vec2<i32>) -> vec3<u32> {
    let var_0 = false;
    var var_1 = Struct_1(~max(firstLeadingBit(-global2.a), arg_1), select(u_input.b.zwx, u_input.a, var_0) ^ abs(global3.b & (vec3<u32>(7510u, 0u, 1u) | u_input.b.xxy)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-global2.a, -arg_1), arg_1));
    var var_2 = Struct_1(-44919i | ~(~_wgslsmith_mult_i32(global2.c, -2147483647i)), global2.b >> (~vec3<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), arg_2, ~13009u) % vec3<u32>(32u)), countOneBits(arg_1));
    let var_3 = _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(~(~1u), 11u)], _wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~39875u, _wgslsmith_div_u32(var_1.b.x, var_2.b.x)), 11u)], (vec4<i32>(var_2.c, 54103i, -2147483647i, var_1.c) >> (vec4<u32>(arg_2, 11431u, 4294967295u, 0u) % vec4<u32>(32u))) & global0[_wgslsmith_index_u32(~0u, 11u)])) >= arg_1;
    var var_4 = select(select(select(vec2<bool>(var_0, !var_0), !vec2<bool>(var_3, false), var_2.b.x < ~var_1.b.x), !(!select(vec2<bool>(false, true), vec2<bool>(var_0, var_0), vec2<bool>(var_3, var_0))), select(select(select(vec2<bool>(var_0, true), vec2<bool>(true, true), vec2<bool>(true, var_0)), !vec2<bool>(var_0, var_3), !vec2<bool>(var_0, true)), select(vec2<bool>(var_0, true), !vec2<bool>(true, var_3), vec2<bool>(true, false)), true)), select(select(vec2<bool>(true, true), vec2<bool>(!var_3, true), true), vec2<bool>(var_0, all(!vec4<bool>(var_3, true, var_3, true))), vec2<bool>(true, false)), var_3);
    return func_5(6107u, select(func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, -635f, arg_0.x))), arg_0), func_2()), vec4<bool>(var_4.x, !(!var_0), true, true & var_4.x), func_4(_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(arg_0.x, 428f, 1862f)), func_2())));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(-20693i, _wgslsmith_mod_vec3_u32(vec3<u32>(global1.x >> (~4294967295u % 32u), 1u, ~1u), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-478f, 1442f, 1304f)), global2.a, _wgslsmith_dot_vec3_u32(~arg_1.b, ~vec3<u32>(global3.b.x, 0u, 4294967295u)), _wgslsmith_add_vec2_i32(vec2<i32>(-48573i, arg_2.a), u_input.c) ^ func_3(false).zz)), 0i);
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1652f, _wgslsmith_f_op_f32(max(1560f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1747f)) + -211f))), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -839f) - 1990f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-644f - -411f))))), 820f, all(vec2<bool>(true, false)))));
    var var_1 = Struct_1(firstTrailingBit(min(-var_0.a >> (arg_1.b.x % 32u), ~39946i)), vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(~_wgslsmith_add_u32(96874u, 0u), 31822u), _wgslsmith_dot_vec3_u32(global3.b, arg_2.b)), arg_2.a);
    let var_2 = -106f;
    var var_3 = 1u;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_6(Struct_1(global3.c, func_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1115f), -1968f, _wgslsmith_div_f32(-584f, 216f)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.c, -7413i, u_input.c.x), vec3<i32>(global3.c, -22683i, u_input.c.x)), select(vec3<i32>(-2147483647i, u_input.e, 2147483647i), vec3<i32>(14207i, 58604i, -2147483647i), vec3<bool>(true, true, false))), ~_wgslsmith_sub_u32(global2.b.x, global3.b.x), ~vec2<i32>(0i, global3.a)), 1i), Struct_1(-2147483647i, global2.b, min(u_input.e, -u_input.e) >> (_wgslsmith_mult_u32(~global2.b.x, ~0u) % 32u)), Struct_1(-63328i, global3.b, 63794i));
    let var_0 = Struct_1(global2.c, ~u_input.b.zxy, u_input.d);
    global2 = func_2();
    var var_1 = var_0;
    var_1 = func_6(Struct_1(_wgslsmith_mod_i32(firstTrailingBit(select(u_input.c.x, 15256i, false)), 8685i), vec3<u32>(~global1.x, var_1.b.x, global3.b.x), 11261i), Struct_1(min((var_1.c ^ var_1.c) >> (global1.x % 32u), 21180i), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.b.x, 0u, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(50204u, 0u, global2.b.x), var_0.b) << (vec3<u32>(4294967295u, 1u, var_1.b.x) % vec3<u32>(32u))), 1i), func_6(Struct_1(-abs(global3.c), max(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global2.b.x, global2.b.x), vec3<u32>(var_0.b.x, var_1.b.x, 31838u)), vec3<u32>(1u, 28053u, var_0.b.x)), 1i), Struct_1(~(-global2.a), vec3<u32>(global2.b.x, 60853u, global3.b.x) & vec3<u32>(5513u, 4987u, u_input.a.x), 1i), Struct_1(u_input.c.x, var_0.b, _wgslsmith_mult_i32(0i, var_0.a) ^ 14944i)));
    global4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1243f)));
    var var_2 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(func_6(Struct_1(var_0.a, global2.b, 2791i), var_0, var_0).c, var_0.c >> (2840u % 32u)), max(min(28278i, 2147483647i), _wgslsmith_sub_i32(var_0.a, -20220i))) | 1i, ~_wgslsmith_clamp_i32(12498i, global2.a | -1i, abs(-31628i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(max(vec4<u32>(var_1.b.x, 5340u, var_0.b.x | 16321u, func_5(22485u, vec4<bool>(false, true, false, false)).x), u_input.b & (u_input.b | u_input.b)), ~abs(vec4<u32>(25145u, 0u, global2.b.x, 41754u))));
}

