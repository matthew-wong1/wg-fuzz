struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    return arg_0.a.a;
}

fn func_3(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = firstLeadingBit(-vec4<i32>(_wgslsmith_div_i32(-2147483647i, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 2147483647i), reverseBits(vec2<i32>(u_input.e, 1326i))), u_input.e, ~u_input.e));
    global0 = array<Struct_3, 2>();
    let var_1 = -1101f;
    let var_2 = _wgslsmith_dot_vec2_u32(abs(_wgslsmith_div_vec2_u32((vec2<u32>(1u, 49950u) << (vec2<u32>(101609u, u_input.b) % vec2<u32>(32u))) | vec2<u32>(u_input.a.x, u_input.b), ~(~vec2<u32>(4294967295u, 22343u)))), vec2<u32>(~2735u << (u_input.a.x % 32u), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(u_input.b, 2572u)) >> (reverseBits(0u) % 32u)));
    var var_3 = abs(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(1u, 1u)));
    return func_2(global0[_wgslsmith_index_u32(var_3.x, 2u)]);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = all(vec3<bool>(all(func_2(global0[_wgslsmith_index_u32(1u & u_input.a.x, 2u)]).d), !arg_1.b.d.x, false));
    var var_1 = ~u_input.a;
    let var_2 = !func_3(_wgslsmith_f_op_f32(f32(-1f) * -489f), 1069f).d.wy;
    global0 = array<Struct_3, 2>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2386f, -1000f, arg_1.e.c, arg_1.a.a.x))))));
    return Struct_1(var_3.yy, 1000f, var_3.x, vec4<bool>(var_0, true, func_3(797f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1113f * 661f), _wgslsmith_f_op_f32(arg_1.e.c + var_3.x)))).d.x, true));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_3 {
    global0 = array<Struct_3, 2>();
    global0 = array<Struct_3, 2>();
    var var_0 = u_input.a.x;
    var_0 = _wgslsmith_mod_u32(~u_input.a.x, u_input.a.x & ~(~_wgslsmith_mult_u32(u_input.b, 0u)));
    global0 = array<Struct_3, 2>();
    return Struct_3(arg_1, u_input.d);
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = func_5(func_2(global0[_wgslsmith_index_u32(~countOneBits(56034u) & ((20235u << (u_input.a.x % 32u)) | u_input.a.x), 2u)]), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1260f, arg_0)), -649f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), !func_2(global0[_wgslsmith_index_u32(4294967295u, 2u)]).d), Struct_1(vec2<f32>(-1474f, arg_0), arg_0, _wgslsmith_f_op_f32(-arg_0), vec4<bool>(true, true, func_2(global0[_wgslsmith_index_u32(47795u, 2u)]).d.x, true)), vec2<f32>(_wgslsmith_f_op_f32(arg_0 - 625f), arg_0), func_4(vec2<i32>(u_input.e, 1i) | (vec2<i32>(u_input.e, u_input.e) << (vec2<u32>(61773u, 4294967295u) % vec2<u32>(32u))), Struct_2(func_3(arg_0, arg_0), func_2(global0[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, arg_0))), Struct_1(vec2<f32>(518f, -471f), 635f, 723f, vec4<bool>(true, true, false, true)), Struct_1(vec2<f32>(-1050f, arg_0), arg_0, 2244f, vec4<bool>(false, true, false, true))), 1i), func_4(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(30137i, u_input.c, u_input.e, -12486i), vec4<i32>(u_input.c, 0i, u_input.e, u_input.d)), u_input.c), Struct_2(func_3(arg_0, 1058f), Struct_1(vec2<f32>(520f, -1103f), 379f, -554f, vec4<bool>(true, true, true, false)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 543f), vec2<f32>(-373f, arg_0)), func_3(arg_0, 145f), Struct_1(vec2<f32>(arg_0, arg_0), -118f, 1464f, vec4<bool>(true, true, false, true))), -u_input.c)), Struct_2(func_2(global0[_wgslsmith_index_u32(~1u, 2u)]), func_4(firstTrailingBit(firstLeadingBit(vec2<i32>(1091i, 3756i))), Struct_2(Struct_1(vec2<f32>(-1207f, arg_0), 622f, 917f, vec4<bool>(false, false, true, true)), func_3(arg_0, arg_0), vec2<f32>(-1000f, arg_0), func_4(vec2<i32>(u_input.d, u_input.c), Struct_2(Struct_1(vec2<f32>(717f, 486f), arg_0, arg_0, vec4<bool>(true, false, true, false)), Struct_1(vec2<f32>(arg_0, arg_0), -574f, arg_0, vec4<bool>(false, false, false, true)), vec2<f32>(418f, -288f), Struct_1(vec2<f32>(1000f, arg_0), 1144f, arg_0, vec4<bool>(false, false, true, true)), Struct_1(vec2<f32>(146f, 610f), arg_0, arg_0, vec4<bool>(false, true, true, true))), u_input.c), Struct_1(vec2<f32>(-1000f, 1302f), -182f, 734f, vec4<bool>(true, false, true, true))), u_input.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -1533f), vec2<f32>(-1000f, arg_0))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(-254f, arg_0) + vec2<f32>(arg_0, -1089f))))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2155f)) - _wgslsmith_div_f32(298f, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), func_3(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + arg_0))), func_2(Struct_3(Struct_2(Struct_1(vec2<f32>(arg_0, 392f), 1266f, 164f, vec4<bool>(false, true, false, true)), Struct_1(vec2<f32>(771f, 121f), arg_0, arg_0, vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1181f, -913f)), func_4(vec2<i32>(2147483647i, u_input.d), Struct_2(Struct_1(vec2<f32>(-1958f, arg_0), -1000f, arg_0, vec4<bool>(false, false, true, true)), Struct_1(vec2<f32>(arg_0, arg_0), -825f, -793f, vec4<bool>(false, true, true, true)), vec2<f32>(-585f, 1201f), Struct_1(vec2<f32>(arg_0, arg_0), -162f, -1125f, vec4<bool>(true, true, true, true)), Struct_1(vec2<f32>(arg_0, arg_0), 1916f, -1258f, vec4<bool>(true, true, false, true))), -4565i), Struct_1(vec2<f32>(arg_0, -304f), arg_0, 1087f, vec4<bool>(true, true, true, false))), 0i)).c);
    global0 = array<Struct_3, 2>();
    let var_1 = var_0.a.a.a.x;
    var var_2 = func_5(var_0.a.d, func_5(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.c.x, -785f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(539f, arg_0)), var_0.a.e.d.x)), -527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1646f - -1041f)), vec4<bool>(4294967295u > u_input.a.x, true, true, true)), var_0.a, var_0.a, var_0.a.e.a.x).a, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a.d.a + _wgslsmith_f_op_vec2_f32(-var_0.a.b.a)), func_2(Struct_3(var_0.a, -58238i)).c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(918f, 612f, true)))), !(!vec4<bool>(false, var_0.a.e.d.x, var_0.a.e.d.x, var_0.a.b.d.x))), func_2(Struct_3(Struct_2(var_0.a.b, var_0.a.e, var_0.a.c, Struct_1(var_0.a.c, var_0.a.b.b, var_0.a.a.c, var_0.a.a.d), Struct_1(vec2<f32>(-1147f, arg_0), arg_0, arg_0, var_0.a.d.d)), ~36546i)), _wgslsmith_f_op_vec2_f32(-var_0.a.d.a), var_0.a.d, Struct_1(var_0.a.a.a, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, arg_0))), vec4<bool>(var_0.a.e.d.x, u_input.a.x > 19427u, true, 0u > u_input.a.x))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(var_0.a.e.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f), func_3(1464f, var_0.a.b.b).c))));
    let var_3 = _wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 4294967295u), vec3<u32>(9961u, u_input.a.x, 1u)), 1u & u_input.b, reverseBits(0u))), min(~vec4<u32>(0u, 4294967295u, 35996u, u_input.b) >> (~select(vec4<u32>(u_input.a.x, u_input.b, 83554u, 12550u), vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.a.x), var_2.a.b.d) % vec4<u32>(32u)), vec4<u32>(~(~u_input.b), firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 38936u), ~vec3<u32>(u_input.b, u_input.a.x, u_input.b)), ~0u << (_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b, 4294967295u)) % 32u))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -670f))));
    global0 = array<Struct_3, 2>();
    global0 = array<Struct_3, 2>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, abs(abs(~1u) & ~var_0)), 2u)];
    var var_2 = vec2<u32>(~firstLeadingBit(_wgslsmith_div_u32(27953u, u_input.b) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 102057u, 14988u), vec3<u32>(u_input.a.x, var_0, var_0)) % 32u)), ~24474u);
    let var_3 = var_1.a.b;
    global0 = array<Struct_3, 2>();
    let var_4 = func_5(var_1.a.e, var_1.a, func_5(var_1.a.d, Struct_2(Struct_1(var_3.a, _wgslsmith_f_op_f32(-var_1.a.c.x), -1074f, vec4<bool>(true, var_3.d.x, var_1.a.e.d.x, var_1.a.e.d.x)), var_1.a.e, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -855f), _wgslsmith_div_vec2_f32(var_3.a, var_3.a), func_4(vec2<i32>(var_1.b, var_1.b), var_1.a, u_input.e).d.xx)), Struct_1(_wgslsmith_div_vec2_f32(var_3.a, vec2<f32>(1000f, -366f)), func_4(vec2<i32>(u_input.e, var_1.b), var_1.a, 0i).c, -866f, var_1.a.e.d), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1330f, var_1.a.d.b), var_3.a)), _wgslsmith_f_op_f32(var_1.a.d.c + var_1.a.b.b), _wgslsmith_f_op_f32(-var_3.b), !var_3.d)), var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.a.a.x, 910f))))).a, var_3.b);
    global0 = array<Struct_3, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.d, 2147483647i) ^ var_4.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.b, var_4.a.d.b, var_1.a.b.a.x)))))), firstLeadingBit(vec4<i32>(-1i, -29026i, ~u_input.e, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 33269i, -1i), vec3<i32>(-20156i, 2147483647i, 1i)))), -39238i);
}

