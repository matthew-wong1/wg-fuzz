struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(21910i, 40920i), vec2<i32>(-1i, -1i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-7706i, 6030i), vec2<i32>(-1i, -35571i), vec2<i32>(18534i, -22683i), vec2<i32>(0i, -1i), vec2<i32>(7750i, -4740i), vec2<i32>(2147483647i, -15037i), vec2<i32>(-16290i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(1i, -17911i), vec2<i32>(-42699i, i32(-2147483648)), vec2<i32>(-1i, -37122i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), 12906i), vec2<i32>(-1i, 13248i), vec2<i32>(-5261i, 2147483647i), vec2<i32>(23312i, 33000i), vec2<i32>(-19439i, 1i), vec2<i32>(-26616i, i32(-2147483648)), vec2<i32>(-48621i, -15646i), vec2<i32>(51129i, 0i), vec2<i32>(-1i, 11075i), vec2<i32>(36482i, 32807i), vec2<i32>(-1i, -42523i), vec2<i32>(-37266i, 2147483647i), vec2<i32>(-56064i, i32(-2147483648)), vec2<i32>(1i, 0i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: u32, arg_3: bool) -> Struct_2 {
    global0 = array<vec2<i32>, 32>();
    var var_0 = Struct_1(-abs(max(max(vec3<i32>(u_input.a, 21366i, 1i), vec3<i32>(u_input.a, 0i, u_input.a)), -vec3<i32>(0i, u_input.a, 0i))), false);
    let var_1 = false;
    global0 = array<vec2<i32>, 32>();
    global0 = array<vec2<i32>, 32>();
    return Struct_2(!select(select(select(vec2<bool>(true, arg_3), vec2<bool>(var_0.b, true), vec2<bool>(var_1, false)), vec2<bool>(arg_3, var_1), !vec2<bool>(var_1, var_1)), vec2<bool>(!var_0.b, false), true), Struct_1(_wgslsmith_sub_vec3_i32(~firstTrailingBit(var_0.a), ~var_0.a), var_0.a.x > u_input.a));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1266f, arg_2) * vec2<f32>(arg_2, arg_2)))))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(263f * arg_2))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-152f - 656f), 175f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)) * _wgslsmith_div_vec2_f32(vec2<f32>(1250f, -2139f), vec2<f32>(-725f, arg_2))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3(func_2(max(u_input.b.x, ~firstLeadingBit(u_input.b.x)), ~u_input.b.yz, ~_wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x), false), select((-vec4<i32>(u_input.a, 22045i, -1i, u_input.a) ^ ~vec4<i32>(u_input.a, 0i, 1i, -47904i)) | ~vec4<i32>(12445i, 0i, 2147483647i, -1i), vec4<i32>(~u_input.a | _wgslsmith_div_i32(0i, u_input.a), -1i, 25296i, u_input.a), u_input.a == _wgslsmith_mod_i32(u_input.a & u_input.a, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2453f * -606f), _wgslsmith_f_op_f32(floor(651f)))) * _wgslsmith_f_op_f32(f32(-1f) * -715f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1168f, _wgslsmith_f_op_f32(-494f + 1000f), true))))));
    global0 = array<vec2<i32>, 32>();
    var var_1 = ~(~vec4<u32>(u_input.b.x, ~(~4294967295u), 4294967295u, u_input.b.x));
    var_1 = ~vec4<u32>(var_1.x, var_1.x, 45279u, ~_wgslsmith_mult_u32(_wgslsmith_add_u32(var_1.x, 78505u), var_1.x));
    let var_2 = func_2(4294967295u, max(~vec2<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), u_input.b.x ^ 28786u), var_1.yz), min(~(~select(u_input.b.x, var_1.x, true)), u_input.b.x ^ var_1.x), all(vec2<bool>(true, true)));
    return Struct_1(_wgslsmith_div_vec3_i32(var_2.b.a, ~(-func_2(100326u, vec2<u32>(var_1.x, u_input.b.x), 4294967295u, var_2.a.x).b.a)), !any(!select(vec3<bool>(var_2.a.x, true, var_2.b.b), vec3<bool>(false, var_2.a.x, var_2.a.x), vec3<bool>(false, true, true))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = -arg_0.b.a.x;
    let var_1 = func_2(u_input.b.x, vec2<u32>(u_input.b.x, ~(~(~u_input.b.x))), u_input.b.x, true).b;
    var var_2 = firstTrailingBit(vec3<i32>(-(~_wgslsmith_div_i32(50614i, arg_0.b.a.x)), 0i, ~var_1.a.x));
    let var_3 = arg_0.b;
    global0 = array<vec2<i32>, 32>();
    return Struct_1(-arg_0.b.a, _wgslsmith_mult_u32(u_input.b.x << (u_input.b.x % 32u), ~u_input.b.x) != ~(~52938u ^ (u_input.b.x >> (1u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(vec2<bool>(false, false), func_1()));
    var var_1 = func_2(~95475u, ~(~_wgslsmith_sub_vec2_u32(u_input.b.yx, vec2<u32>(25637u, 7649u)) ^ vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.b.x), ~23744u)), u_input.b.x, all(vec3<bool>(var_0.b, false, true))).a;
    var var_2 = -855f;
    var_1 = !func_2(u_input.b.x, ~(~vec2<u32>(54376u, 25526u)), u_input.b.x, true).a;
    let var_3 = (select(~firstLeadingBit(vec4<u32>(u_input.b.x, 1248u, 4294967295u, 1u)), vec4<u32>(u_input.b.x, u_input.b.x, ~4294967295u, max(u_input.b.x, 4294967295u)), !any(vec4<bool>(var_1.x, var_1.x, var_0.b, var_0.b))) >> ((_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, 1u, 58586u, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) >> (~reverseBits(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u))) << (((vec4<u32>(~4294967295u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 13592u ^ u_input.b.x, ~0u) >> (vec4<u32>(max(1u, 60298u), countOneBits(43937u), ~4294967295u, 4294967295u) % vec4<u32>(32u))) ^ (vec4<u32>(1u, 55171u, 1u, ~u_input.b.x) & ~(~vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x)))) % vec4<u32>(32u));
    let var_4 = Struct_2(vec2<bool>(true, !func_2(u_input.b.x ^ 0u, var_3.yz, ~75561u, !var_0.b).a.x), func_1());
    let var_5 = func_2(44297u, vec2<u32>(u_input.b.x, u_input.b.x), 4294967295u, any(vec2<bool>(var_1.x && var_1.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, func_4(func_2(_wgslsmith_add_u32(var_3.x, u_input.b.x), firstTrailingBit(var_3.yy), 0u, !var_4.a.x)).a.x >> (var_3.x % 32u));
}

