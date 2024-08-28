struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 51888u;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(1i, -63234i, -15945i, i32(-2147483648)));

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(false, 1878f), Struct_2(false, 1840f), Struct_2(false, 789f), Struct_2(true, -320f), Struct_2(true, 221f), Struct_2(false, -630f), Struct_2(false, 1422f), Struct_2(true, 398f));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: bool) -> vec3<bool> {
    let var_0 = (~1i <= _wgslsmith_dot_vec4_i32(vec4<i32>(select(u_input.a, -1i, true), u_input.a, _wgslsmith_div_i32(arg_1.b.a.x, u_input.a), _wgslsmith_clamp_i32(-24957i, 580i, arg_1.b.a.x)), arg_0.a)) | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -789f), _wgslsmith_f_op_f32(f32(-1f) * -438f)))));
    global1 = Struct_1(select(-global1.a, arg_0.a, select(vec4<bool>(arg_2, select(arg_2, true, false), !arg_2, true), !select(vec4<bool>(false, global2.x, true, true), vec4<bool>(global2.x, arg_2, global2.x, global2.x), vec4<bool>(true, global2.x, global2.x, false)), vec4<bool>(true, any(vec2<bool>(false, true)), false | global2.x, true))));
    let var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(1i & arg_0.a.x, arg_1.b.a.x, -2147483647i, _wgslsmith_clamp_i32(global1.a.x, global1.a.x, -16667i) | select(arg_0.a.x, u_input.a, true)), arg_0.a);
    global0 = abs(max(max(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(58559u, 4294967295u, 84284u), vec3<u32>(1049u, 8475u, 29932u))), 1u), _wgslsmith_add_u32(1u, 1u)));
    let var_2 = ~vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_add_u32(28549u, 0u), ~54087u), abs(4294967295u), ~abs(1u) ^ select(~431u, ~0u, all(vec2<bool>(global2.x, arg_2))), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(28040u, 2891u), vec2<u32>(17981u, 0u)), ~abs(0u), ~(~4294967295u)));
    return !vec3<bool>(select(!arg_2, var_2.x < var_2.x, false) || (_wgslsmith_clamp_i32(global1.a.x, var_1, u_input.a) != firstTrailingBit(2147483647i)), arg_2, var_0);
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -358f);
    global0 = 1u;
    var var_1 = !(!select(func_3(Struct_1(vec4<i32>(9024i, -7017i, u_input.a, u_input.a)), Struct_5(global1.a.xw, Struct_1(vec4<i32>(global1.a.x, -10209i, global1.a.x, -22492i))), !global2.x), vec3<bool>(true, true, true), true));
    global1 = Struct_1(global1.a);
    var var_2 = ~52060u;
    return Struct_4(vec3<f32>(761f, 1079f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1409f, 744f))) + _wgslsmith_f_op_f32(trunc(-665f)))), _wgslsmith_f_op_f32(f32(-1f) * -613f));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_1(global1.a);
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_mod_u32(abs(_wgslsmith_add_u32(1531u, 565u)), firstTrailingBit(1u)), 1u, ~111250u, abs(14215u))), 8u)];
    let var_2 = func_2();
    var var_3 = select(vec4<bool>(false, var_2.b < var_2.a.x, 5845i == _wgslsmith_sub_i32(0i, u_input.a), var_1.b >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), !select(!select(vec4<bool>(global2.x, var_1.a, var_1.a, true), vec4<bool>(global2.x, global2.x, var_1.a, true), true), select(!vec4<bool>(var_1.a, global2.x, global2.x, true), vec4<bool>(true, global2.x, global2.x, true), select(vec4<bool>(var_1.a, global2.x, true, true), vec4<bool>(false, global2.x, false, true), vec4<bool>(true, global2.x, var_1.a, global2.x))), true), vec4<bool>(false, func_3(Struct_1(var_0.a), Struct_5(vec2<i32>(-25646i, 0i), var_0), all(vec3<bool>(false, true, true))).x, false, global2.x));
    let var_4 = _wgslsmith_sub_i32(reverseBits(-48511i), 26636i);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = abs(abs(~1u));
    var var_1 = select(vec4<bool>(!func_3(Struct_1(global1.a), Struct_5(vec2<i32>(global1.a.x, -10130i), Struct_1(vec4<i32>(global1.a.x, global1.a.x, global1.a.x, 1i))), true).x, true, global2.x && select(true, true, false), any(func_3(Struct_1(vec4<i32>(-2147483647i, u_input.a, u_input.a, -10892i)), Struct_5(vec2<i32>(-2147483647i, u_input.a), Struct_1(global1.a)), false))), !(!vec4<bool>(global2.x, global2.x && global2.x, global2.x, true)), select(!vec4<bool>(global2.x, all(vec3<bool>(global2.x, false, true)), global2.x, true), !(!select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(true, true, true, global2.x))), vec4<bool>(global2.x, _wgslsmith_mult_i32(global1.a.x, -1i) == -38118i, global2.x, _wgslsmith_add_i32(42829i, u_input.a) == firstTrailingBit(global1.a.x))));
    global2 = select(!var_1.zz, func_3(Struct_1(~(~global1.a)), Struct_5((global1.a.xx & vec2<i32>(u_input.a, u_input.a)) ^ (vec2<i32>(-1i, 9687i) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), Struct_1(firstLeadingBit(vec4<i32>(-1i, global1.a.x, global1.a.x, u_input.a)))), global2.x).zx, true);
    var_1 = vec4<bool>(any(vec4<bool>(var_0.b > func_1().a.x, false, false, (true || global2.x) != false)), global2.x, !all(!select(vec2<bool>(true, var_1.x), vec2<bool>(true, false), global2.x)), false);
    var var_2 = Struct_4(var_0.a, func_1().a.x);
    var var_3 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_0.a.x)) != -1412f;
    var var_4 = ~vec4<u32>(1u, 1u, 1u, 1u);
    var var_5 = !vec4<bool>(all(select(!vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(var_1.x, false, false, global2.x), all(vec3<bool>(var_1.x, true, true)))), true, false, select(global2.x, any(!var_1.xyx), !(!global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(266f, var_2.a.x, 1000f, var_0.a.x), vec4<f32>(var_0.a.x, -700f, var_0.a.x, var_0.b)))))) + vec4<f32>(1164f, 1188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + -1794f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.a.x, -154f)), _wgslsmith_f_op_f32(f32(-1f) * -2563f)))), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~var_4.ww, _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(21700u, 69440u), var_4.ww, vec2<u32>(97993u, var_4.x)), vec2<u32>(1u, 4294967295u)), ~(~var_4.yz)), vec2<u32>(1u, var_4.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1071f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), -871f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_2.b, var_0.b) + vec3<f32>(var_0.b, 182f, var_0.b)))))));
}

