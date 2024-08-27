struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(49118i, 14659i, 1i, 29101i), vec4<i32>(2147483647i, 64421i, 1i, 37403i), vec4<i32>(i32(-2147483648), -3408i, 7004i, -17818i), vec4<i32>(-68129i, 27425i, -3301i, 1i), vec4<i32>(-1i, 0i, -21969i, -35182i), vec4<i32>(-735i, i32(-2147483648), -14187i, 64655i), vec4<i32>(34470i, -1i, 1i, 1i), vec4<i32>(i32(-2147483648), 15866i, -174i, -1i), vec4<i32>(58688i, 1i, -1i, -1i), vec4<i32>(17694i, 31628i, -1i, -1i), vec4<i32>(i32(-2147483648), 29944i, -1i, 0i), vec4<i32>(7830i, -40870i, -23930i, 2147483647i), vec4<i32>(40517i, 17202i, 7381i, -1i), vec4<i32>(1i, -66441i, 39698i, 43083i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 9607i), vec4<i32>(1i, 1i, 0i, 2147483647i), vec4<i32>(40843i, -15889i, 0i, -6512i), vec4<i32>(-5095i, -1i, 1946i, -23146i), vec4<i32>(13180i, 2147483647i, 17311i, 0i), vec4<i32>(-1i, -20969i, 28056i, 0i), vec4<i32>(i32(-2147483648), 0i, -56419i, 2147483647i), vec4<i32>(i32(-2147483648), -44701i, 50305i, -1i), vec4<i32>(1i, 7033i, 2147483647i, i32(-2147483648)), vec4<i32>(-16824i, 3731i, 25252i, 0i), vec4<i32>(6140i, 2147483647i, 2147483647i, -1i), vec4<i32>(-1i, 17046i, -16814i, -46038i), vec4<i32>(1i, 0i, 28112i, 9947i), vec4<i32>(-21743i, 2147483647i, -1i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), 55059i, 73554i), vec4<i32>(-1i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(2147483647i, -41918i, 2147483647i, -1i), vec4<i32>(0i, 1i, 0i, -13561i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_1(_wgslsmith_sub_i32(global0.a, ~(~0i)), vec2<bool>(false, all(!(!vec2<bool>(false, global0.b.x)))));
    global1 = array<vec4<i32>, 32>();
    var var_1 = Struct_4(76179u, select(select(select(!vec4<bool>(true, var_0.b.x, false, false), select(vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x), vec4<bool>(true, true, var_0.b.x, var_0.b.x), vec4<bool>(false, var_0.b.x, false, var_0.b.x)), vec4<bool>(global0.b.x, false, var_0.b.x, var_0.b.x)), !select(vec4<bool>(false, true, var_0.b.x, var_0.b.x), vec4<bool>(true, global0.b.x, false, global0.b.x), true), vec4<bool>(true, all(vec4<bool>(true, global0.b.x, true, false)), true, true)), select(vec4<bool>(global0.b.x, true, true, false), select(vec4<bool>(var_0.b.x, false, global0.b.x, global0.b.x), !vec4<bool>(global0.b.x, var_0.b.x, false, global0.b.x), var_0.b.x && true), vec4<bool>(global0.b.x, false, any(global0.b), global0.b.x)), !any(select(vec4<bool>(global0.b.x, global0.b.x, var_0.b.x, global0.b.x), vec4<bool>(global0.b.x, global0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(global0.b.x, var_0.b.x, var_0.b.x, global0.b.x)))));
    let var_2 = vec4<bool>(var_0.b.x, true, all(var_1.b.yxx), var_1.a < 40118u);
    global1 = array<vec4<i32>, 32>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a - -562f), arg_0.a)))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    global1 = array<vec4<i32>, 32>();
    let var_0 = Struct_3(Struct_1(global0.a, arg_0.b), vec2<i32>(-28174i, 16167i), arg_0, arg_0, Struct_1(-1i, arg_0.b));
    let var_1 = Struct_5(~4294967295u);
    let var_2 = _wgslsmith_f_op_f32(step(926f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(-229f)))), _wgslsmith_div_f32(-852f, -373f))));
    let var_3 = -338f;
    return var_2;
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = vec4<u32>(0u, _wgslsmith_mult_u32(firstLeadingBit(firstTrailingBit(abs(4294967295u))), 1u), ~(~(~39672u)), ~abs(1u));
    global1 = array<vec4<i32>, 32>();
    let var_1 = !(!vec3<bool>(false, -arg_1 >= reverseBits(2147483647i), arg_0.x < arg_0.x));
    let var_2 = true;
    let var_3 = vec4<bool>(any(vec3<bool>(!any(vec2<bool>(false, arg_2.c.b.x)), arg_2.d.b.x, var_1.x & true)), all(global0.b), true, true);
    return vec4<u32>(var_0.x, min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 2747u, 34288u), firstTrailingBit(var_0)) ^ var_0.x), _wgslsmith_div_u32(var_0.x, 1u), var_0.x);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<bool>) -> Struct_5 {
    let var_0 = vec2<u32>(abs(reverseBits(arg_1.x)), reverseBits(arg_1.x));
    var var_1 = firstTrailingBit(abs(~6556u));
    var_1 = arg_1.x;
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(-10249i, global0.b), vec4<i32>(u_input.a, 1i, arg_0, 2147483647i))), _wgslsmith_f_op_f32(f32(-1f) * -211f), _wgslsmith_f_op_f32(max(145f, 909f)), _wgslsmith_f_op_f32(-1802f - 1238f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1633f)), _wgslsmith_div_f32(1519f, 853f), _wgslsmith_f_op_f32(-809f + -1121f), _wgslsmith_div_f32(-289f, -1052f)), !(!vec4<bool>(global0.b.x, true, arg_2.x, true))))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.b), vec4<i32>(u_input.b.x, select(u_input.a, 1i, global0.b.x), u_input.b.x, min(u_input.b.x, u_input.a))), 2147483647i << (_wgslsmith_mod_u32(~arg_1.x, firstLeadingBit(var_0.x)) % 32u)), Struct_3(Struct_1(reverseBits(_wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(arg_0, -2147483647i))), !select(global0.b, vec2<bool>(true, global0.b.x), vec2<bool>(global0.b.x, true))), u_input.b.zz, Struct_1(-37386i, vec2<bool>(true, !arg_2.x)), Struct_1(u_input.b.x, !global0.b), Struct_1(i32(-1i) * -5916i, !select(vec2<bool>(arg_2.x, false), vec2<bool>(true, false), global0.b))));
    global1 = array<vec4<i32>, 32>();
    return Struct_5(~(~(~min(4294967295u, arg_1.x))));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: bool) -> vec2<i32> {
    global1 = array<vec4<i32>, 32>();
    global0 = Struct_1(13870i, !global0.b);
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-297f))))));
    let var_1 = Struct_3(Struct_1(0i, !vec2<bool>(true, !arg_3)), ~(-u_input.b.xx), Struct_1(30781i, !(!vec2<bool>(global0.b.x, false))), Struct_1(-global0.a, !global0.b), Struct_1(u_input.a, select(!(!vec2<bool>(false, arg_3)), global0.b, global0.b)));
    let var_2 = u_input.a;
    return select(~var_1.b, select(var_1.b, ~var_1.b, vec2<bool>(_wgslsmith_f_op_f32(min(var_0.a, 1000f)) <= _wgslsmith_f_op_f32(-arg_1.x), arg_3)), all(vec4<bool>(false, arg_3 & select(var_1.e.b.x, global0.b.x, var_1.a.b.x), select(arg_3, !global0.b.x, false), arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 32>();
    global0 = Struct_1(~37121i, global0.b);
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1279f, _wgslsmith_f_op_f32(ceil(831f))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1278f), -1000f))));
    let var_1 = _wgslsmith_mult_vec2_i32(max(u_input.b.wy | -u_input.b.xx, u_input.b.xy), _wgslsmith_sub_vec2_i32(vec2<i32>(reverseBits(~global0.a), -5785i), func_5(vec3<u32>(_wgslsmith_clamp_u32(1u, 0u, 1u), 4294967295u, ~15035u), vec3<f32>(-1402f, -1344f, -227f), func_1(global0.a, vec2<u32>(4294967295u, 13709u), select(vec3<bool>(global0.b.x, false, true), vec3<bool>(global0.b.x, global0.b.x, false), true)), any(select(vec2<bool>(false, global0.b.x), vec2<bool>(false, false), global0.b)))));
    global0 = Struct_1(1i, select(global0.b, global0.b, all(!select(vec4<bool>(global0.b.x, global0.b.x, false, false), vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x), vec4<bool>(true, global0.b.x, global0.b.x, false)))));
    let var_2 = abs(u_input.b.xww);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(1f)));
    global1 = array<vec4<i32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, -408f, _wgslsmith_dot_vec2_u32(min(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, 3028f, -1134f, var_3.a) + vec4<f32>(-710f, var_3.a, var_3.a, var_3.a)), 0i & u_input.b.x, Struct_3(Struct_1(global0.a, global0.b), var_1, Struct_1(-1i, vec2<bool>(global0.b.x, true)), Struct_1(global0.a, global0.b), Struct_1(2147483647i, global0.b))).xw, abs(vec2<u32>(1u, 1u))), ~countOneBits(firstLeadingBit(vec2<u32>(15466u, 11214u)))), ~(~vec3<u32>(23427u << (0u % 32u), 1u, _wgslsmith_mod_u32(4294967295u, 115657u))));
}

