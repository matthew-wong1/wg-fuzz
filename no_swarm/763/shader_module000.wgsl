struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, false, false, false, true, false, true, true, false, false, false, false, true, true, false, false, true, false, true, false, false);

var<private> global1: u32;

var<private> global2: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(13829u, 1u), vec2<u32>(0u, 52075u), vec2<u32>(46819u, 4294967295u), vec2<u32>(4294967295u, 45529u), vec2<u32>(25781u, 55999u), vec2<u32>(96185u, 4294967295u), vec2<u32>(30210u, 1u), vec2<u32>(27275u, 7141u), vec2<u32>(4294967295u, 30190u), vec2<u32>(0u, 41241u), vec2<u32>(0u, 1u), vec2<u32>(1u, 38174u), vec2<u32>(35691u, 1u));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    var var_0 = Struct_1(arg_3.a.b.x, u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d, arg_2.d, _wgslsmith_f_op_f32(-arg_3.d), 691f)), true);
    global2 = array<vec2<u32>, 13>();
    let var_1 = true;
    return _wgslsmith_add_u32(~countOneBits(1u), reverseBits(_wgslsmith_dot_vec4_u32(arg_2.c.b, ~(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 52050u)))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global2 = array<vec2<u32>, 13>();
    var var_0 = Struct_3(arg_0, _wgslsmith_mod_u32(func_3(-1000f, !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 21u)], true, global0[_wgslsmith_index_u32(arg_0.b.x, 21u)], false), Struct_3(arg_0, false, Struct_2(75015i, vec4<u32>(u_input.a.x, u_input.a.x, 13110u, 0u)), -402f), Struct_3(arg_0, false, Struct_2(-12524i, u_input.a), 180f)), ~abs(arg_0.b.x)) >= _wgslsmith_div_u32(select(firstLeadingBit(u_input.a.x), ~arg_0.b.x, true), 0u), Struct_2(abs(_wgslsmith_div_i32(arg_0.a, -17874i)), ~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -543f))) - _wgslsmith_f_op_f32(abs(1000f)))));
    var_0 = Struct_3(Struct_2(select(~firstLeadingBit(var_0.c.a), u_input.b, ~11373u > ~arg_0.b.x), ~firstTrailingBit(abs(var_0.a.b))), var_0.b, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1689f - _wgslsmith_div_f32(var_0.d, -854f))) * 560f));
    let var_1 = Struct_1(~_wgslsmith_add_u32(~(9480u | u_input.a.x), ~(~4294967295u)), _wgslsmith_sub_i32(i32(-1i) * -55557i, ~(~0i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1274f, var_0.d, 135f, 310f), vec4<f32>(var_0.d, 1523f, -1052f, -556f), var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(sign(911f)), _wgslsmith_f_op_f32(sign(785f)), -125f, _wgslsmith_f_op_f32(-1069f * var_0.d)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d, 829f, var_0.d, -106f), vec4<f32>(-1399f, 844f, var_0.d, var_0.d), false)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2013f, -260f, var_0.d, -1031f), vec4<f32>(var_0.d, var_0.d, var_0.d, var_0.d))), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false, true, false))), vec4<f32>(_wgslsmith_f_op_f32(trunc(291f)), _wgslsmith_f_op_f32(-2525f * 615f), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(select(var_0.d, -1000f, true))))), true);
    var var_2 = _wgslsmith_sub_u32(~firstTrailingBit(abs(var_1.a)), ~(abs(abs(0u)) | var_0.c.b.x));
    return Struct_2(arg_0.a, _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a ^ vec4<u32>(var_1.a, 4294967295u, 53923u, 0u), ~vec4<u32>(0u, 1u, var_0.c.b.x, u_input.a.x)) >> (_wgslsmith_add_vec4_u32(arg_0.b, select(vec4<u32>(45605u, 43189u, arg_0.b.x, 702u), var_0.c.b, var_1.d)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.a.x), ~0u), var_1.a, ~_wgslsmith_sub_u32(var_1.a, var_1.a), 2929u >> (~arg_0.b.x % 32u)), max(u_input.a, vec4<u32>(arg_0.b.x, 0u, ~u_input.a.x, _wgslsmith_dot_vec4_u32(var_0.a.b, var_0.c.b)))));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> u32 {
    var var_0 = Struct_2(arg_2.b, ~arg_1.a.b);
    var var_1 = ~firstTrailingBit(_wgslsmith_add_vec3_i32(select(vec3<i32>(2147483647i, arg_2.b, u_input.c.x) | vec3<i32>(2646i, -20471i, arg_1.a.a), vec3<i32>(0i, arg_2.b, -595i), arg_1.b), _wgslsmith_mod_vec3_i32(-vec3<i32>(50611i, 0i, u_input.c.x), ~vec3<i32>(arg_1.c.a, arg_1.c.a, 2147483647i))));
    let var_2 = func_2(arg_1.a);
    global2 = array<vec2<u32>, 13>();
    var var_3 = u_input.a.ywx;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.c.x, ~vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x), u_input.a.x | firstTrailingBit(u_input.a.x), func_1(_wgslsmith_f_op_f32(1000f + 2007f), Struct_3(Struct_2(27058i, u_input.a), true, Struct_2(u_input.c.x, u_input.a), 1000f), Struct_1(1u, -3292i, vec4<f32>(-834f, 643f, -962f, 1000f), global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), true), u_input.a.x));
    var var_1 = var_0.a;
    global1 = func_3(-1481f, !(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(34636u, 21u)], global0[_wgslsmith_index_u32(var_0.b.x, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)]))), Struct_3(var_0, true, Struct_2(~(-2147483647i), abs(var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-673f, 222f, false)))), Struct_3(func_2(Struct_2(u_input.c.x, u_input.a)), global0[_wgslsmith_index_u32(u_input.a.x, 21u)], Struct_2(var_0.a, abs(var_0.b)), _wgslsmith_f_op_f32(min(617f, 1f)))) ^ 1u;
    var var_2 = ~max(vec2<u32>(var_0.b.x, 1u), ~abs(vec2<u32>(0u, u_input.a.x))) >> (u_input.a.xx % vec2<u32>(32u));
    let var_3 = Struct_1(var_2.x, countOneBits(-(~var_0.a)) | u_input.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1197f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f + -113f))), _wgslsmith_div_f32(-1390f, 461f), 441f, _wgslsmith_f_op_f32(1770f + _wgslsmith_f_op_f32(f32(-1f) * -980f))), true);
    var var_4 = Struct_3(func_2(func_2(Struct_2(3113i, vec4<u32>(var_2.x, 72103u, var_3.a, 0u) & var_0.b))), false, func_2(Struct_2(-1i, u_input.a)), 1000f);
    var_4 = Struct_3(var_4.a, var_4.b, func_2(Struct_2(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b, 0i, var_4.a.a), vec3<i32>(var_3.b, u_input.c.x, var_3.b)), _wgslsmith_div_vec4_u32(vec4<u32>(var_3.a, u_input.a.x, var_3.a, 4294967295u), vec4<u32>(var_4.a.b.x, 0u, 37238u, var_3.a) >> (var_0.b % vec4<u32>(32u))))), _wgslsmith_f_op_f32(-var_3.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_mod_u32(97374u, ~0u), abs(_wgslsmith_sub_u32(0u, func_3(var_4.d, vec4<bool>(false, var_4.b, var_3.d, global0[_wgslsmith_index_u32(1u, 21u)]), Struct_3(var_0, global0[_wgslsmith_index_u32(var_2.x, 21u)], var_0, 716f), Struct_3(var_0, var_4.b, var_0, -297f))))), vec3<i32>(-9292i, u_input.b, 2147483647i));
}

