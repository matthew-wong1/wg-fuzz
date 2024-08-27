struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, 2126f)) - _wgslsmith_div_f32(arg_0.x, arg_0.x)) + -1932f) + _wgslsmith_f_op_f32(select(2060f, _wgslsmith_f_op_f32(-1000f - -539f), false))));
    let var_2 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_mult_u32(u_input.e.x, ~u_input.e.x), 1u, _wgslsmith_add_u32(u_input.e.x, 42264u ^ u_input.c), ~abs(u_input.e.x)), -175f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(355f, -570f, 647f, 113f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-535f, arg_0.x, arg_0.x, var_1), vec4<f32>(756f, var_1, -1540f, 1878f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, 382f, var_1) * vec4<f32>(-362f, arg_0.x, -2311f, -1000f)))))))), Struct_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.c, u_input.c), vec4<u32>(0u, u_input.e.x, u_input.c, u_input.e.x)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, u_input.c, 0u, 1u), firstTrailingBit(vec4<u32>(u_input.c, u_input.e.x, u_input.e.x, 0u))), _wgslsmith_f_op_f32(max(-1071f, _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(round(var_1))))))));
    global0 = true;
    var var_3 = vec2<u32>(7194u, _wgslsmith_dot_vec3_u32(countOneBits(var_2.c.a.wyx), vec3<u32>(firstTrailingBit(~1u), abs(u_input.c), _wgslsmith_dot_vec3_u32(var_2.a.a.xzw, u_input.e))));
    return arg_0.x;
}

fn func_2(arg_0: u32) -> bool {
    global0 = true;
    var var_0 = true;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-860f + 205f) - -616f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(484f + 1414f) + _wgslsmith_f_op_f32(func_3(vec3<f32>(1690f, -1551f, 1190f)))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-600f, 227f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(267f, _wgslsmith_div_f32(-1065f, 555f))));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(33685i, min(u_input.d.x, ~firstTrailingBit(7314i))), _wgslsmith_mod_i32(-firstLeadingBit(u_input.d.x), select(-_wgslsmith_add_i32(37118i, 46686i), max(u_input.d.x, 73124i) << (0u % 32u), all(vec2<bool>(true, true)))), 32299i, _wgslsmith_div_i32(_wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(7973i, u_input.a), u_input.d), -u_input.b), ~max(min(34647i, 2723i), countOneBits(-2147483647i))));
    let var_2 = Struct_1(vec4<u32>(firstLeadingBit(~u_input.c), ~firstTrailingBit(1u), u_input.c, _wgslsmith_sub_u32(abs(_wgslsmith_div_u32(4294967295u, 39793u)), firstTrailingBit(1u << (arg_0 % 32u)))), -193f);
    return (!(!all(vec4<bool>(true, true, true, true))) && true) & any(vec2<bool>(true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_2 {
    global0 = func_2(~countOneBits(arg_2.c.a.x));
    global0 = any(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, !any(vec2<bool>(false, true)), select(all(vec2<bool>(false, false)), true, true), select(u_input.b < 2147483647i, any(vec2<bool>(true, false)), true)), vec4<bool>((arg_2.c.b <= 568f) && all(vec2<bool>(true, false)), true, true, func_2(_wgslsmith_div_u32(1u, u_input.c)))));
    var var_0 = (u_input.c >> ((2556u >> (0u % 32u)) % 32u)) << (~abs(reverseBits(_wgslsmith_sub_u32(0u, 0u))) % 32u);
    global0 = true;
    var_0 = 31782u;
    return Struct_2(arg_2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1761f, -1496f, _wgslsmith_f_op_f32(-arg_2.a.b), 1112f)), Struct_1(arg_2.a.a, _wgslsmith_f_op_f32(-arg_0)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<bool>, arg_3: vec2<u32>) -> Struct_2 {
    global0 = 0i != arg_1;
    global0 = arg_2.x;
    global0 = true;
    var var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_0.c.b)) - _wgslsmith_f_op_f32(arg_0.a.b + arg_0.b.x)), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1000f, arg_0.a.b))))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_0.b.yy + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.wx), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(726f, arg_0.b.x), arg_0.b.yx, vec2<bool>(true, false)))))))));
    let var_1 = Struct_3(arg_0, ~(-_wgslsmith_div_vec3_i32(-vec3<i32>(-44596i, 1i, arg_1), vec3<i32>(2147483647i, arg_1, 18062i))), Struct_1(max(vec4<u32>(~arg_3.x, 1u, 0u << (u_input.e.x % 32u), arg_0.a.a.x & arg_0.c.a.x), arg_0.c.a), -908f), all(select(vec3<bool>(all(vec2<bool>(true, arg_2.x)), true, !arg_2.x), !arg_2.zyw, !(!arg_2.zzw))), arg_0);
    return Struct_2(func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(var_1.a.c.b, var_0.x, arg_0.c.b)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a.b, -1502f, var_0.x) - vec3<f32>(-852f, 138f, arg_0.b.x)), var_1.e.b.xww), var_1.a).a, _wgslsmith_f_op_vec4_f32(var_1.a.b - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, -614f, var_1.e.c.b, _wgslsmith_f_op_f32(ceil(var_1.e.b.x))) - vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.b * 1070f), -1155f, 1000f, 907f))), var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -872f) * _wgslsmith_f_op_f32(f32(-1f) * -499f)));
    var var_1 = func_4(func_1(-1113f, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-192f)), 741f, _wgslsmith_f_op_f32(ceil(1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(364f, -536f, 1000f), vec3<f32>(671f, 1240f, 263f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-410f, -532f, 706f) * vec3<f32>(-994f, 1160f, -1454f)))), Struct_2(Struct_1(firstTrailingBit(vec4<u32>(u_input.e.x, 1u, u_input.e.x, u_input.e.x)), _wgslsmith_f_op_f32(select(-1651f, -652f, false))), vec4<f32>(1168f, _wgslsmith_f_op_f32(1000f - -566f), _wgslsmith_f_op_f32(1258f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -124f)), Struct_1(~vec4<u32>(u_input.e.x, 41963u, u_input.c, 4294967295u), -380f))), u_input.d.x, !select(vec4<bool>(true, any(vec2<bool>(true, true)), true, all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_1(1f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1173f, -1134f, 832f) - vec3<f32>(1f, 1f, 1f))), Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, 11084u, u_input.c, u_input.e.x), vec4<u32>(u_input.e.x, u_input.c, 1u, u_input.c)), -1704f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-253f, -999f, 287f, -398f)))), Struct_1(~vec4<u32>(1u, 1u, 0u, 0u), _wgslsmith_f_op_f32(func_3(vec3<f32>(-1198f, 605f, 763f)))))).c.a.yw);
    var var_2 = (0u << (func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1325f), 1210f), _wgslsmith_f_op_vec3_f32(-var_1.b.zyw), Struct_2(func_1(1812f, var_1.b.zwz, Struct_2(var_1.c, vec4<f32>(242f, 1423f, var_1.b.x, var_1.c.b), Struct_1(var_1.a.a, var_1.b.x))).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.a.b, 107f, 1326f)), Struct_1(vec4<u32>(var_1.c.a.x, u_input.c, 4294967295u, u_input.c), var_1.b.x))).a.a.x % 32u)) ^ countOneBits(reverseBits(~(~var_1.c.a.x)));
    global0 = all(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), true)) & true;
    var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.c.b)))))), var_1.b.wzx, Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(~var_1.c.a, var_1.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2432f))), var_1.b, Struct_1(~min(vec4<u32>(4294967295u, 4172u, var_1.c.a.x, var_1.a.a.x), var_1.c.a), var_1.c.b)));
    var_1 = Struct_2(Struct_1(countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.e.x, 4294967295u, 69098u), var_1.c.a)), -902f), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1024f, var_1.b.x)), ~u_input.c != 218u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(var_1.c.b, 1265f, var_1.c.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * var_1.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(675f)) - var_1.a.b))), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a);
}

