struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 18334u, 38272u, 49486u);

var<private> global1: array<Struct_1, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: f32) -> u32 {
    let var_0 = abs(firstTrailingBit(-select(vec4<i32>(u_input.a.x, 64041i, 48422i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 11663i), vec4<bool>(true, true, true, true))));
    let var_1 = vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))));
    var var_2 = any(select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !(u_input.b.x != 4294967295u)), vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), global0.x >= ~u_input.b.x)));
    var var_3 = -3586i;
    let var_4 = 0u;
    return 0u;
}

fn func_2() -> bool {
    return (~u_input.b.x << (func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1489f, 1205f)), 198f, _wgslsmith_f_op_f32(round(-1000f))) % 32u)) <= func_3(697f, _wgslsmith_f_op_f32(f32(-1f) * -503f), 205f);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(false, false)), all(vec4<bool>(false, false, true, true))), true), select(vec3<bool>(select(true, false, true), arg_0 <= 32855u, any(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), func_2()), false);
    global0 = abs(abs(arg_1.d));
    var var_1 = vec3<bool>(arg_1.d.x != (firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.b.x), vec2<u32>(arg_1.d.x, 73363u))) >> (56905u % 32u)), !(true & !any(vec3<bool>(var_0.x, true, true))), true);
    global1 = array<Struct_1, 6>();
    var var_2 = var_1.x;
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(-arg_0.a.xy), 1735i, vec4<u32>(~arg_0.d.x, ~global0.x | global0.x, u_input.b.x, ~26143u) >> ((vec4<u32>(func_3(arg_0.b.x, -428f, -700f), u_input.b.x, ~arg_0.d.x, global0.x) << (~arg_0.d % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(abs(429f)), var_0.b.x)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, arg_0.a.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 1172f) * vec2<f32>(1186f, 1589f)))), func_1(arg_0.d.x, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.a.x, 889f)), var_0.b, 1i, ~var_0.d), vec3<i32>(13142i, 13593i, -1i)).b)), _wgslsmith_dot_vec2_i32(-countOneBits(u_input.a), select(abs(vec2<i32>(0i, u_input.a.x)), abs(vec2<i32>(u_input.a.x, arg_0.c)), arg_0.a.x <= -412f)) ^ func_1(_wgslsmith_div_u32(10242u, func_1(var_0.d.x, Struct_1(arg_0.a, var_0.a.yy, arg_0.c, vec4<u32>(4294967295u, 0u, u_input.b.x, 75787u)), vec3<i32>(u_input.a.x, arg_0.c, u_input.a.x)).d.x), global1[_wgslsmith_index_u32(func_3(arg_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(564f + arg_0.b.x)), 6u)], firstTrailingBit(-vec3<i32>(arg_0.c, u_input.a.x, u_input.a.x))).c, var_0.d);
    let var_2 = true;
    var_0 = func_1(arg_0.d.x, global1[_wgslsmith_index_u32(reverseBits(~((u_input.b.x ^ 6016u) << (_wgslsmith_mod_u32(1u, var_1.d.x) % 32u))), 6u)], select(_wgslsmith_add_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.c, 0i, -74018i), vec3<i32>(-37150i, 34367i, 1i)), firstTrailingBit(vec3<i32>(2147483647i, var_0.c, var_1.c))), vec3<i32>(var_0.c, _wgslsmith_add_i32(arg_0.c, min(-28926i, var_1.c)), 0i), (-2147483647i <= select(arg_0.c, var_0.c, var_2)) || var_2));
    let var_3 = func_1(~abs(4294967295u), func_1(var_0.d.x, Struct_1(var_0.a, vec2<f32>(-852f, arg_0.b.x), reverseBits(_wgslsmith_mult_i32(2147483647i, u_input.a.x)), var_0.d), reverseBits(abs(vec3<i32>(u_input.a.x, u_input.a.x, var_0.c) & vec3<i32>(var_1.c, -2147483647i, -66409i)))), select(vec3<i32>(-2147483647i, 12463i, _wgslsmith_add_i32(abs(0i), func_1(54021u, global1[_wgslsmith_index_u32(arg_0.d.x, 6u)], vec3<i32>(-19621i, var_0.c, 4258i)).c)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c, arg_0.c, -2147483647i) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1337u, arg_0.d.x, 0u), vec3<u32>(0u, var_0.d.x, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(-29230i, -949i, u_input.a.x)), !(!(!var_2))));
    return global1[_wgslsmith_index_u32(0u, 6u)];
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = select(vec4<bool>(any(vec3<bool>(true, true, true)), all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))) || true, !(arg_3.c == _wgslsmith_sub_i32(arg_2.x, arg_2.x)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), true))), vec4<bool>(all(vec4<bool>(true, any(vec3<bool>(false, false, true)), false, true)), true, false, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, arg_2.x <= 2147483647i, all(vec2<bool>(true, true)), false)));
    global0 = max(func_4(arg_0).d, arg_3.d);
    global1 = array<Struct_1, 6>();
    global1 = array<Struct_1, 6>();
    let var_1 = !select(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -174f) != arg_1, all(var_0.wyx)), vec2<bool>(true, true), func_4(global1[_wgslsmith_index_u32(arg_0.d.x, 6u)]).c < ~(-17358i));
    return select(select(var_1, var_0.xy, vec2<bool>(!var_1.x, var_0.x)), vec2<bool>(select(var_1.x, true || var_1.x, all(vec4<bool>(true, false, false, true))), !(var_1.x & var_1.x)), !select(var_1, !var_1, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    global1 = array<Struct_1, 6>();
    global1 = array<Struct_1, 6>();
    global1 = array<Struct_1, 6>();
    let var_1 = vec3<bool>(any(func_5(func_4(func_1(u_input.b.x, global1[_wgslsmith_index_u32(global0.x, 6u)], vec3<i32>(u_input.a.x, -3451i, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 524f) * var_0), countOneBits(vec3<i32>(1i, u_input.a.x, -1i)), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_0, 994f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, 142f), vec2<f32>(-1298f, 134f))), _wgslsmith_sub_i32(34439i, u_input.a.x), ~vec4<u32>(global0.x, 33775u, u_input.b.x, 0u)))), false, (all(vec2<bool>(true, true)) | true) & select(true, func_5(Struct_1(vec3<f32>(454f, var_0, var_0), vec2<f32>(var_0, 1139f), -16863i, vec4<u32>(1u, 22436u, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(763f - 750f), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -6082i, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, 10296i)), func_1(4294967295u, Struct_1(vec3<f32>(var_0, -516f, 1122f), vec2<f32>(617f, 701f), -2147483647i, vec4<u32>(global0.x, u_input.b.x, global0.x, 79342u)), vec3<i32>(u_input.a.x, 2147483647i, 39875i))).x, (u_input.a.x < u_input.a.x) | false));
    global1 = array<Struct_1, 6>();
    let var_2 = u_input.b.x & 1u;
    let var_3 = global1[_wgslsmith_index_u32(max(4294967295u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~35137u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2, 13014u), vec3<u32>(21762u, 25685u, 4294967295u)), firstLeadingBit(4294967295u))), countOneBits(_wgslsmith_mult_u32(u_input.b.x, var_2)))), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_3.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.a.zx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, 486f), vec2<f32>(-1027f, 951f))) - _wgslsmith_div_vec2_f32(var_3.b, vec2<f32>(var_0, -958f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_3.a.x - var_3.b.x), _wgslsmith_div_f32(-417f, var_3.b.x)))), var_3.a.x);
}

