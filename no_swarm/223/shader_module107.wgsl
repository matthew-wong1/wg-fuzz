struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, -7965i), vec2<i32>(i32(-2147483648), -44274i), vec2<i32>(-8541i, -62794i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(9071i, 2147483647i), vec2<i32>(1i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<i32>(7350i, 0i), vec2<i32>(-42893i, -14434i), vec2<i32>(-19285i, -10461i), vec2<i32>(10982i, 24830i), vec2<i32>(2147483647i, -18489i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-4946i, 10914i), vec2<i32>(-60906i, i32(-2147483648)), vec2<i32>(50070i, 30607i), vec2<i32>(0i, -1i), vec2<i32>(15642i, 106332i), vec2<i32>(13615i, 38997i), vec2<i32>(30530i, 2147483647i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(70421i, -42919i), vec2<i32>(1i, 0i), vec2<i32>(-23043i, 0i), vec2<i32>(i32(-2147483648), 28702i));

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-22210i, vec3<i32>(-42492i, -11913i, i32(-2147483648)), 1i), Struct_1(-45404i, vec3<i32>(2147483647i, 256i, -53360i), 25508i), Struct_1(2147483647i, vec3<i32>(-68529i, 1i, 74828i), -50185i), Struct_1(7030i, vec3<i32>(1i, -60133i, 2600i), 0i), Struct_1(-4114i, vec3<i32>(0i, i32(-2147483648), -1i), 1i), Struct_1(47244i, vec3<i32>(i32(-2147483648), -1i, 1i), -1i), Struct_1(2147483647i, vec3<i32>(0i, 2147483647i, 2147483647i), -1i), Struct_1(-47287i, vec3<i32>(51069i, i32(-2147483648), 1i), 2147483647i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.d, 8u)];
    global0 = array<vec2<i32>, 29>();
    global0 = array<vec2<i32>, 29>();
    let var_1 = global1[_wgslsmith_index_u32(9308u, 8u)];
    global1 = array<Struct_1, 8>();
    return ~_wgslsmith_mod_u32(u_input.c.x, ~u_input.b.x);
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = false;
    global1 = array<Struct_1, 8>();
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1719f, 370f, 439f, 755f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1908f, -1503f, -1000f, -248f), vec4<f32>(514f, 2411f, -1359f, -371f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-967f, -192f, 1013f, 1000f) + vec4<f32>(-2271f, 521f, -2287f, -916f)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1051f, -1520f, -586f, -1616f), vec4<f32>(344f, -591f, -1120f, -367f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(287f, 810f, -348f, 1000f), vec4<f32>(131f, 689f, -189f, -1000f), vec4<bool>(false, true, false, false)))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(349f)), 1045f, _wgslsmith_f_op_f32(select(439f, -865f, true)), -126f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(118f, -1000f, 1531f, 767f) + vec4<f32>(-1431f, 1897f, -1468f, -145f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-338f, 218f, 1844f, 1201f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-208f, 1713f, -261f, 1888f))))))));
    global1 = array<Struct_1, 8>();
    return ~(~1i);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(-_wgslsmith_mod_i32(-(~(-1i)), -arg_2.b.x), vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(27972i), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1, -52604i), select(vec2<i32>(u_input.a, 15067i), vec2<i32>(1i, 2147483647i), false))), -49369i, 11117i), _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a, -1i, arg_2.a, select(1i, u_input.e.x, true) ^ _wgslsmith_add_i32(arg_2.a, -1390i)), select(abs(vec4<i32>(-1i, arg_1, 2147483647i, arg_1)) | _wgslsmith_add_vec4_i32(vec4<i32>(1i, arg_1, u_input.e.x, 1i), vec4<i32>(arg_2.c, arg_2.c, 29621i, 2093i)), -(vec4<i32>(arg_2.a, 0i, -1i, 2147483647i) & vec4<i32>(-1i, arg_1, 25208i, arg_1)), vec4<bool>(true, true, true, all(vec4<bool>(false, true, true, true))))));
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) * -1209f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(277f - -1627f)) * 1000f))));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, arg_1), vec2<f32>(1f, 1f)))) + _wgslsmith_f_op_vec2_f32(func_4(vec4<u32>(func_2(arg_2.b.x, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_1), ~37663u, u_input.c.x, u_input.b.x | u_input.b.x), func_3(Struct_1(-81188i, arg_2.b, arg_2.c)) | arg_2.a, Struct_1(u_input.a | arg_2.a, _wgslsmith_mult_vec3_i32(arg_2.b, vec3<i32>(1i, 36743i, arg_2.b.x)), 6924i)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-224f - 1000f) - -712f) * _wgslsmith_div_f32(-1000f, 632f)), arg_1));
    var var_1 = Struct_1(-arg_2.c, -arg_2.b, -firstTrailingBit(~(arg_2.b.x ^ u_input.a)));
    var_1 = Struct_1(_wgslsmith_sub_i32(min(u_input.a, u_input.a) | var_1.c, -1i), ~vec3<i32>(2147483647i, -min(u_input.e.x, var_1.c), _wgslsmith_sub_i32(2290i, var_1.a) | 1i), u_input.e.x);
    var_1 = Struct_1(-_wgslsmith_dot_vec3_i32(select(var_1.b, arg_2.b, vec3<bool>(true, true, false)), vec3<i32>(var_1.a, var_1.a, 0i)) << (~_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 17279u, 18990u, 30047u))) % 32u), _wgslsmith_mult_vec3_i32(arg_2.b, -vec3<i32>(var_1.b.x >> (u_input.c.x % 32u), arg_2.a, abs(var_1.c))), 20470i);
    var var_2 = Struct_1(_wgslsmith_mod_i32(var_1.b.x, 18459i), max(var_1.b, ~abs(~var_1.b)), -1i);
    return -(vec4<i32>(_wgslsmith_div_i32(-16299i << (u_input.d % 32u), _wgslsmith_dot_vec2_i32(u_input.e.zx, vec2<i32>(var_1.a, 34474i))), -1i, u_input.a << (func_2(-1399i, vec3<bool>(false, arg_0.x, false), -1000f) % 32u), _wgslsmith_mod_i32(arg_2.b.x, 1i)) ^ vec4<i32>(u_input.e.x, -26592i, min(_wgslsmith_div_i32(var_2.a, -2147483647i), _wgslsmith_sub_i32(var_2.c, 0i)), _wgslsmith_div_i32(-15390i, firstLeadingBit(2147483647i))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(267f)), -531f)));
    let var_1 = Struct_1(_wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, u_input.a, 16879i, 2147483647i)), firstLeadingBit(vec4<i32>(arg_0.x, 49569i, arg_0.x, arg_0.x))), -2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_0.yzw, ~u_input.e), 0i >> (_wgslsmith_sub_u32(18590u, arg_1.x) % 32u))), vec3<i32>(_wgslsmith_mod_i32(func_3(Struct_1(-1i, u_input.e, arg_0.x)), arg_0.x), _wgslsmith_dot_vec2_i32(-u_input.e.yx, vec2<i32>(13184i, -2147483647i)) ^ abs(abs(10202i)), _wgslsmith_add_i32(1i, -1i)), min(max(~u_input.e.x, reverseBits(arg_0.x)), u_input.a | (i32(-1i) * -24056i)) << (~1u % 32u));
    let var_2 = func_1(vec2<bool>(true && (!arg_2 || !arg_2), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(round(375f)))))), Struct_1(0i, vec3<i32>(arg_0.x, u_input.e.x & _wgslsmith_add_i32(-7941i, -52339i), ~_wgslsmith_add_i32(arg_0.x, var_1.b.x)), var_1.a)).xz;
    let var_3 = false;
    global1 = array<Struct_1, 8>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(132450u, 8u)];
    let var_1 = func_5(-(~(~func_1(vec2<bool>(false, false), -1010f, global1[_wgslsmith_index_u32(32534u, 8u)]))), vec3<u32>(~20130u, 52464u, u_input.b.x), !any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))));
    var var_2 = Struct_1(-2147483647i, var_1.b << (max(select(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.b.x), vec3<u32>(1u, u_input.d, 37192u), false), u_input.c) % vec3<u32>(32u)), var_0.b.x);
    var_2 = var_1;
    let var_3 = var_1;
    global1 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, -1140f, vec2<u32>(max(~u_input.d, 0u), min(u_input.c.x, 31499u)) << (vec2<u32>(77106u, u_input.b.x) % vec2<u32>(32u)), _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec2_i32(var_3.b.zz, var_0.b.zy), -2932i), countOneBits(var_2.b.zy)));
}

