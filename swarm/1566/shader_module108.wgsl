struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(1477f, 2147483647i, vec3<i32>(2147483647i, -1i, 0i), true, vec4<i32>(0i, 0i, 2147483647i, 2147483647i)), Struct_1(-652f, 43820i, vec3<i32>(i32(-2147483648), -1i, 13116i), false, vec4<i32>(24542i, i32(-2147483648), i32(-2147483648), -18676i)), Struct_1(-448f, 1i, vec3<i32>(-17569i, 2147483647i, -40911i), true, vec4<i32>(1i, 10640i, 2147483647i, i32(-2147483648))), Struct_1(-1000f, 40829i, vec3<i32>(85721i, 7033i, -27693i), false, vec4<i32>(i32(-2147483648), 44455i, 1i, -24709i)), Struct_1(560f, -34214i, vec3<i32>(-21993i, 2147483647i, -1i), true, vec4<i32>(-40291i, -21980i, 22809i, 1i)), Struct_1(1488f, i32(-2147483648), vec3<i32>(0i, -1i, 53834i), true, vec4<i32>(i32(-2147483648), -7788i, 45084i, 13494i)), Struct_1(-1000f, -259i, vec3<i32>(-58256i, 15693i, -21441i), false, vec4<i32>(-1i, -1i, -1i, 3633i)), Struct_1(-772f, -1i, vec3<i32>(1986i, 2147483647i, i32(-2147483648)), true, vec4<i32>(-1i, 31897i, 37912i, -1i)), Struct_1(335f, i32(-2147483648), vec3<i32>(0i, 12636i, i32(-2147483648)), true, vec4<i32>(2147483647i, 1i, i32(-2147483648), -1i)), Struct_1(1071f, 69143i, vec3<i32>(1i, -18655i, 1i), true, vec4<i32>(-20360i, 7082i, i32(-2147483648), 0i)), Struct_1(945f, 9131i, vec3<i32>(-30735i, -3619i, -1i), false, vec4<i32>(2147483647i, -64696i, -8263i, -24600i)), Struct_1(1518f, 19648i, vec3<i32>(-27384i, 66885i, i32(-2147483648)), false, vec4<i32>(-1i, 61879i, 14395i, -967i)), Struct_1(1007f, 2147483647i, vec3<i32>(7188i, -44521i, 3874i), false, vec4<i32>(1i, 1i, -1i, 22040i)), Struct_1(-1903f, i32(-2147483648), vec3<i32>(-228i, -1i, 2147483647i), false, vec4<i32>(2147483647i, -25007i, i32(-2147483648), -1i)), Struct_1(-640f, i32(-2147483648), vec3<i32>(2147483647i, 1i, 1i), false, vec4<i32>(-10433i, 11477i, 23740i, -5849i)), Struct_1(696f, -1i, vec3<i32>(27245i, 44665i, 16070i), false, vec4<i32>(0i, -15724i, 21658i, 1i)), Struct_1(902f, -26213i, vec3<i32>(-41110i, 2147483647i, 18875i), true, vec4<i32>(13179i, i32(-2147483648), -13441i, 1i)), Struct_1(1000f, -41796i, vec3<i32>(-23090i, -30133i, 8347i), true, vec4<i32>(22431i, -1i, 15143i, 1i)), Struct_1(-191f, 2147483647i, vec3<i32>(-27142i, 31700i, i32(-2147483648)), true, vec4<i32>(11027i, 1i, 2147483647i, 2147483647i)), Struct_1(-883f, 2147483647i, vec3<i32>(3525i, -14355i, 2147483647i), true, vec4<i32>(i32(-2147483648), -40184i, 0i, 2147483647i)), Struct_1(-1500f, i32(-2147483648), vec3<i32>(-1i, 0i, -31906i), false, vec4<i32>(i32(-2147483648), 0i, -175i, 2147483647i)), Struct_1(-795f, -7889i, vec3<i32>(i32(-2147483648), 10639i, i32(-2147483648)), false, vec4<i32>(-18235i, -1i, -1i, 2147483647i)), Struct_1(-144f, -16873i, vec3<i32>(9080i, i32(-2147483648), 0i), false, vec4<i32>(-24540i, -18633i, -1i, -4785i)), Struct_1(280f, -31026i, vec3<i32>(2147483647i, -1i, -20744i), false, vec4<i32>(-1i, -60531i, 20136i, -40357i)), Struct_1(-278f, -62564i, vec3<i32>(i32(-2147483648), 1i, -1i), true, vec4<i32>(1i, 4098i, 3086i, 1i)), Struct_1(-460f, 0i, vec3<i32>(i32(-2147483648), i32(-2147483648), 10823i), true, vec4<i32>(-1i, 1i, 2147483647i, -25236i)), Struct_1(658f, 2147483647i, vec3<i32>(46806i, -9459i, -1i), false, vec4<i32>(i32(-2147483648), 29479i, -39907i, -8568i)));

var<private> global1: bool = true;

var<private> global2: Struct_1;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> Struct_1 {
    var var_0 = -427f;
    var var_1 = false;
    let var_2 = !vec2<bool>(any(vec3<bool>(true, true, true)), false);
    global0 = array<Struct_1, 27>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - global2.a);
    return global0[_wgslsmith_index_u32(4294967295u, 27u)];
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1680f)) * _wgslsmith_f_op_f32(global2.a + -474f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global2.a))))))));
    global1 = global2.d;
    let var_1 = global0[_wgslsmith_index_u32(~68702u, 27u)];
    var var_2 = global0[_wgslsmith_index_u32(abs(abs(32995u)), 27u)];
    var_2 = func_1();
    return vec2<bool>(all(select(!(!vec2<bool>(var_2.d, var_2.d)), vec2<bool>(false, true), true)), false);
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    global1 = all(func_3(-global2.e.x, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 15266u), arg_0), vec3<u32>(u_input.b.x, 1u, u_input.b.x)) >> (arg_0 % vec3<u32>(32u))));
    let var_0 = ~_wgslsmith_add_vec3_i32(-global2.e.zyz, _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(min(global2.b, 0i), firstLeadingBit(-1i), 12233i ^ u_input.a)));
    var var_1 = vec3<u32>(select(u_input.b.x, u_input.b.x, global2.d), u_input.b.x >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, ~108323u), u_input.b.x) % 32u), ~(~arg_0.x));
    var var_2 = Struct_1(-1187f, max(var_0.x, -abs(1i)), vec3<i32>(abs(-1i), 1i, -2147483647i) & abs(global2.c), all(!vec4<bool>(global2.d, any(vec3<bool>(true, global2.d, global2.d)), global2.d, any(vec2<bool>(false, global2.d)))), global2.e);
    let var_3 = var_2.e;
    return _wgslsmith_f_op_f32(-1228f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(trunc(-932f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(475f)))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> StorageBuffer {
    let var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(1u, 64404u), u_input.b.x, u_input.b.x, select(1u, abs(u_input.b.x), true)), vec4<u32>(countOneBits(~u_input.b.x), abs(u_input.b.x), 1u, 15216u));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a, arg_2.a)))))), 620f);
    global1 = all(arg_3);
    var var_2 = arg_1.a;
    var var_3 = select(abs(-arg_1.c), global2.e.zzy, false);
    return StorageBuffer(arg_1.a, _wgslsmith_mod_u32(min(firstLeadingBit(1u), var_0), 0u | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 100540u, 4294967295u), vec4<u32>(var_0, 0u, var_0, 4294967295u))), ~var_0, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1777f - arg_1.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a * -1116f), 293f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(568f, arg_1.a, _wgslsmith_f_op_f32(select(1296f, arg_0, true)), _wgslsmith_f_op_f32(abs(var_1.x))), vec4<f32>(151f, _wgslsmith_f_op_f32(ceil(792f)), _wgslsmith_f_op_f32(-var_1.x), arg_1.a), !(!vec4<bool>(true, arg_2.d, false, arg_1.d)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, arg_0, 397f) - vec4<f32>(arg_2.a, -987f, -2546f, arg_2.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, global2.d | false);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(f32(-1f) * -734f)));
    let var_2 = u_input.b.x;
    var var_3 = var_2 & 1u;
    global0 = array<Struct_1, 27>();
    global2 = global0[_wgslsmith_index_u32(0u, 27u)];
    global2 = func_1();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-814f * -574f)), global2.a))), Struct_1(_wgslsmith_f_op_f32(func_2(vec3<u32>(~u_input.b.x, u_input.b.x, 24853u))), global2.e.x, -global2.e.zzy, !(var_0.x & true) && true, global2.e >> (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_2, 1u, 47752u), vec4<u32>(u_input.b.x, 1u, 7066u, u_input.b.x)), vec4<u32>(u_input.b.x, 0u, var_2, u_input.b.x)) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(4014u, 27u)], select(vec3<bool>(!(!var_0.x), false, all(vec2<bool>(true, true))), !select(!vec3<bool>(true, var_0.x, true), select(vec3<bool>(var_0.x, global2.d, true), vec3<bool>(false, var_0.x, false), true), true), true));
}

