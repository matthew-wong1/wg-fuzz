struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1305f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1451f))));
    let var_1 = arg_0;
    var var_2 = var_1;
    var var_3 = min(arg_0.b.c.b.c.x, ~1i);
    let var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(min(122030u, 67060u), ~var_1.a.b.b.x, 21625u), vec3<u32>(~(~_wgslsmith_mod_u32(4294967295u, global0.b.x)), _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.c.zzx ^ arg_0.c.a.b.b.yww), _wgslsmith_div_vec3_u32(min(vec3<u32>(var_1.a.b.b.x, arg_0.a.b.b.x, var_2.c.a.b.b.x), vec3<u32>(u_input.a, var_2.c.a.b.b.x, 4294967295u)), ~arg_0.a.b.b.yyx)), 10652u));
    return arg_0.b.a.b.b.x;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_mult_u32(func_3(Struct_5(Struct_2(vec2<f32>(global0.a.x, global0.a.x), Struct_1(global0.a, u_input.c, u_input.b, global0.d), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-359f, global0.a.x))), _wgslsmith_f_op_f32(582f + global0.a.x)), Struct_4(Struct_2(vec2<f32>(global0.a.x, 259f), Struct_1(global0.a, global0.b, vec2<i32>(global0.c.x, 24073i), global0.d), global0.a, 368f), any(vec3<bool>(global0.d.x, false, global0.d.x)), Struct_2(vec2<f32>(-692f, 181f), Struct_1(vec2<f32>(1725f, global0.a.x), global0.b, vec2<i32>(-2147483647i, -1i), global0.d), global0.a, global0.a.x), any(vec3<bool>(global0.d.x, global0.d.x, true)), -1207f), Struct_4(Struct_2(global0.a, Struct_1(global0.a, vec4<u32>(1u, u_input.c.x, 0u, global0.b.x), vec2<i32>(-2147483647i, 10515i), global0.d), global0.a, global0.a.x), false, Struct_2(vec2<f32>(-1404f, global0.a.x), Struct_1(vec2<f32>(381f, 574f), u_input.c, u_input.b, vec2<bool>(false, true)), global0.a, 521f), true, 1f))), global0.b.x);
    let var_1 = Struct_2(global0.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x)) + global0.a) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.a)))), ~(~max(global0.b, vec4<u32>(u_input.c.x, u_input.c.x, 52042u, global0.b.x))), ~global0.c, vec2<bool>(!(false | global0.d.x), select(false, global0.d.x && global0.d.x, true))), global0.a, 734f);
    let var_2 = select(!(!select(select(vec4<bool>(false, true, global0.d.x, global0.d.x), vec4<bool>(false, var_1.b.d.x, var_1.b.d.x, false), false), !vec4<bool>(var_1.b.d.x, global0.d.x, false, var_1.b.d.x), false)), vec4<bool>(1i >= _wgslsmith_mod_i32(_wgslsmith_add_i32(3037i, -19643i), _wgslsmith_clamp_i32(global0.c.x, global0.c.x, -2147483647i)), _wgslsmith_f_op_f32(-global0.a.x) >= _wgslsmith_f_op_f32(-var_1.d), !var_1.b.d.x, !var_1.b.d.x), !(!(!vec4<bool>(true, false, var_1.b.d.x, var_1.b.d.x))));
    var var_3 = Struct_3(Struct_1(var_1.a, ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 4318u, 12972u, 51178u), vec4<u32>(var_1.b.b.x, 1u, u_input.a, 6594u)), ~global0.b, ~u_input.c), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global0.c.x), var_1.b.c >> (global0.b.xw % vec2<u32>(32u))), var_1.b.c ^ -vec2<i32>(27484i, -23618i)), !(!(!var_1.b.d))), max(abs(-vec3<i32>(global0.c.x, u_input.b.x, -29313i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_1.b.c.x, global0.c.x, var_1.b.c.x), vec3<i32>(86872i, -1i, -1i) | vec3<i32>(-2147483647i, global0.c.x, 0i))) | vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, u_input.b.x), var_1.b.c), -20808i, ~13799i), 1i, Struct_1(var_1.a, vec4<u32>(~1u, 52103u, 1u, _wgslsmith_div_u32(u_input.c.x, u_input.a)), select(-vec2<i32>(-1i, u_input.b.x), u_input.b, vec2<bool>(global0.d.x | global0.d.x, any(var_2.zzx))), select(select(global0.d, !var_2.xx, false), vec2<bool>(true, true), select(select(global0.d, global0.d, vec2<bool>(true, false)), select(vec2<bool>(false, global0.d.x), global0.d, false), !var_1.b.d))), i32(-1i) * -_wgslsmith_sub_i32(1i, var_1.b.c.x | -16846i));
    let var_4 = 23519i;
    return var_1.b.b.x;
}

fn func_1(arg_0: u32, arg_1: Struct_5, arg_2: Struct_5) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = vec3<f32>(472f, _wgslsmith_f_op_f32(-arg_2.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.c.c.x, -210f) - _wgslsmith_f_op_f32(trunc(391f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.c.c.c.x - 1009f), arg_2.a.a.x, arg_1.a.b.d.x))));
    var_0 = 13330u;
    var var_2 = arg_1.a;
    let var_3 = true;
    return Struct_1(global0.a, vec4<u32>(firstTrailingBit(~min(global0.b.x, arg_1.a.b.b.x)), ~global0.b.x, 1018u, 1u), vec2<i32>(~reverseBits(reverseBits(-1i)), max(15843i, 1i) | -(~global0.c.x)), select(vec2<bool>(var_2.b.d.x, true), vec2<bool>(any(!vec4<bool>(false, global0.d.x, global0.d.x, var_2.b.d.x)), all(vec3<bool>(var_3, false, false))), var_2.b.d));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_4 {
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(select(arg_2.d.a, _wgslsmith_div_vec2_f32(vec2<f32>(-179f, -801f), vec2<f32>(1000f, 2070f)), arg_0)), arg_1, _wgslsmith_f_op_vec2_f32(arg_2.d.a + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a) * arg_2.d.a)), arg_1.a.x), any(vec4<bool>(!(arg_2.d.b.x < 0u), arg_2.a.d.x, !(!arg_1.d.x), arg_1.a.x > 622f)), Struct_2(_wgslsmith_f_op_vec2_f32(sign(arg_2.a.a)), Struct_1(arg_2.d.a, ~(~arg_2.a.b), vec2<i32>(select(1i, arg_2.a.c.x, false), arg_2.a.c.x | arg_1.c.x), vec2<bool>(all(vec2<bool>(false, arg_0.x)), false)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.a.x)), _wgslsmith_f_op_f32(step(global0.a.x, arg_2.d.a.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(arg_1.a, vec2<f32>(arg_2.d.a.x, 103f))), vec2<f32>(arg_1.a.x, 359f), false)))), 1000f), false, _wgslsmith_div_f32(arg_1.a.x, func_1(~_wgslsmith_sub_u32(0u, global0.b.x), Struct_5(Struct_2(vec2<f32>(arg_2.a.a.x, global0.a.x), Struct_1(arg_1.a, vec4<u32>(1u, arg_2.a.b.x, u_input.c.x, arg_2.d.b.x), vec2<i32>(18470i, -1i), arg_0), vec2<f32>(arg_2.a.a.x, arg_2.d.a.x), global0.a.x), Struct_4(Struct_2(vec2<f32>(arg_1.a.x, 1828f), Struct_1(vec2<f32>(784f, 329f), vec4<u32>(16876u, 0u, 4294967295u, arg_2.a.b.x), vec2<i32>(arg_2.c, 2147483647i), arg_2.a.d), global0.a, global0.a.x), arg_0.x, Struct_2(global0.a, arg_1, global0.a, -1031f), true, global0.a.x), Struct_4(Struct_2(vec2<f32>(319f, global0.a.x), Struct_1(vec2<f32>(604f, arg_1.a.x), u_input.c, vec2<i32>(arg_1.c.x, u_input.b.x), vec2<bool>(arg_2.d.d.x, arg_2.d.d.x)), arg_1.a, 1443f), arg_2.a.d.x, Struct_2(vec2<f32>(global0.a.x, -1143f), arg_1, arg_1.a, arg_1.a.x), arg_1.d.x, 339f)), Struct_5(Struct_2(vec2<f32>(global0.a.x, -1156f), arg_1, vec2<f32>(-2690f, -386f), -1000f), Struct_4(Struct_2(arg_2.d.a, arg_1, global0.a, global0.a.x), arg_1.d.x, Struct_2(vec2<f32>(global0.a.x, arg_1.a.x), Struct_1(vec2<f32>(-784f, 2023f), u_input.c, vec2<i32>(u_input.b.x, 2147483647i), vec2<bool>(true, false)), vec2<f32>(global0.a.x, global0.a.x), -794f), arg_2.a.d.x, 510f), Struct_4(Struct_2(vec2<f32>(-748f, global0.a.x), Struct_1(arg_2.a.a, arg_2.a.b, arg_2.a.c, arg_2.d.d), global0.a, 931f), arg_1.d.x, Struct_2(global0.a, Struct_1(vec2<f32>(1000f, global0.a.x), vec4<u32>(35452u, global0.b.x, global0.b.x, 4294967295u), vec2<i32>(-2147483647i, arg_2.a.c.x), global0.d), vec2<f32>(367f, 770f), 115f), arg_0.x, -768f))).a.x));
    global0 = func_1(24176u, Struct_5(Struct_2(var_0.c.b.a, arg_2.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_2.d.a.x) + vec2<f32>(global0.a.x, arg_1.a.x))), _wgslsmith_f_op_f32(trunc(-263f))), Struct_4(var_0.c, arg_1.d.x, var_0.a, any(vec2<bool>(arg_2.a.d.x, true)), -327f), var_0), Struct_5(var_0.a, var_0, Struct_4(var_0.a, arg_2.d.d.x, Struct_2(var_0.a.b.a, arg_2.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e, global0.a.x) - vec2<f32>(var_0.c.a.x, -2701f)), arg_2.d.a.x), arg_2.a.d.x, arg_1.a.x)));
    let var_1 = u_input.c.zxy;
    var var_2 = 0i;
    let var_3 = u_input.a << (0u % 32u);
    return var_0;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_4, arg_3: f32) -> Struct_2 {
    var var_0 = -vec2<i32>(-select(u_input.b.x, arg_2.c.b.c.x, true), reverseBits(1i)) & vec2<i32>(abs(arg_0 ^ (global0.c.x & arg_0)), 25164i);
    var var_1 = ~reverseBits(arg_2.a.b.b >> ((u_input.c >> (_wgslsmith_mod_vec4_u32(u_input.c, arg_2.a.b.b) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_2 = func_4(select(func_1(87920u, Struct_5(func_4(global0.d, Struct_1(global0.a, arg_2.a.b.b, vec2<i32>(-10835i, var_0.x), vec2<bool>(false, false)), Struct_3(arg_2.a.b, vec3<i32>(var_0.x, 2147483647i, -27129i), arg_0, arg_2.a.b, arg_1)).c, Struct_4(arg_2.c, global0.d.x, arg_2.c, false, 143f), Struct_4(Struct_2(vec2<f32>(-369f, arg_3), Struct_1(vec2<f32>(arg_3, -474f), vec4<u32>(108748u, arg_2.c.b.b.x, global0.b.x, arg_2.a.b.b.x), global0.c, arg_2.a.b.d), vec2<f32>(1342f, 1722f), global0.a.x), true, arg_2.c, arg_2.c.b.d.x, -1000f)), Struct_5(func_4(global0.d, arg_2.a.b, Struct_3(arg_2.a.b, vec3<i32>(u_input.b.x, -25243i, arg_1), global0.c.x, arg_2.a.b, -2147483647i)).a, arg_2, Struct_4(arg_2.c, false, Struct_2(arg_2.c.c, arg_2.a.b, arg_2.a.a, arg_2.a.d), true, -447f))).d, !arg_2.c.b.d, global0.a.x != _wgslsmith_f_op_f32(ceil(-786f))), arg_2.c.b, Struct_3(func_1(~(~global0.b.x), Struct_5(func_4(global0.d, Struct_1(arg_2.c.c, vec4<u32>(0u, var_1.x, arg_2.a.b.b.x, var_1.x), vec2<i32>(arg_2.a.b.c.x, 2147483647i), global0.d), Struct_3(Struct_1(vec2<f32>(arg_2.e, arg_3), vec4<u32>(global0.b.x, arg_2.a.b.b.x, 0u, 0u), vec2<i32>(arg_0, 10365i), vec2<bool>(false, true)), vec3<i32>(12522i, 1i, 65648i), 36451i, Struct_1(global0.a, u_input.c, global0.c, vec2<bool>(arg_2.d, arg_2.a.b.d.x)), u_input.b.x)).c, arg_2, arg_2), Struct_5(func_4(global0.d, arg_2.a.b, Struct_3(Struct_1(vec2<f32>(global0.a.x, -191f), global0.b, vec2<i32>(arg_2.c.b.c.x, var_0.x), global0.d), vec3<i32>(u_input.b.x, 12972i, arg_1), 41578i, Struct_1(vec2<f32>(arg_3, 837f), vec4<u32>(var_1.x, 4294967295u, 24335u, 62338u), global0.c, global0.d), -2147483647i)).c, func_4(arg_2.a.b.d, Struct_1(arg_2.c.a, global0.b, arg_2.a.b.c, global0.d), Struct_3(arg_2.c.b, vec3<i32>(u_input.b.x, 13509i, var_0.x), 57516i, arg_2.c.b, arg_2.c.b.c.x)), func_4(global0.d, arg_2.c.b, Struct_3(Struct_1(arg_2.c.a, global0.b, vec2<i32>(var_0.x, arg_2.c.b.c.x), vec2<bool>(arg_2.a.b.d.x, arg_2.a.b.d.x)), vec3<i32>(7605i, global0.c.x, var_0.x), -2147483647i, arg_2.a.b, arg_2.a.b.c.x)))), -select(vec3<i32>(arg_0, arg_1, 0i), vec3<i32>(arg_0, 2147483647i, -27722i), false), -1i, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -528f))), ~_wgslsmith_add_vec4_u32(global0.b, vec4<u32>(var_1.x, 60704u, global0.b.x, u_input.c.x)), max(_wgslsmith_add_vec2_i32(vec2<i32>(-23986i, arg_1), arg_2.c.b.c), vec2<i32>(42703i, u_input.b.x)), func_1(29923u, Struct_5(Struct_2(vec2<f32>(-342f, arg_3), arg_2.a.b, global0.a, 2503f), arg_2, Struct_4(Struct_2(arg_2.a.c, arg_2.c.b, arg_2.a.a, -1775f), false, Struct_2(global0.a, Struct_1(vec2<f32>(arg_2.e, arg_3), vec4<u32>(u_input.c.x, var_1.x, arg_2.c.b.b.x, u_input.c.x), u_input.b, vec2<bool>(arg_2.d, arg_2.a.b.d.x)), vec2<f32>(-1769f, arg_2.a.d), 352f), global0.d.x, global0.a.x)), Struct_5(Struct_2(vec2<f32>(arg_3, 182f), arg_2.a.b, global0.a, arg_2.a.c.x), arg_2, arg_2)).d), select(2147483647i, abs(firstLeadingBit(arg_2.c.b.c.x)), 1u != ~var_1.x)));
    let var_3 = func_4(select(vec2<bool>(true, _wgslsmith_mod_i32(arg_0, var_2.a.b.c.x) < _wgslsmith_mod_i32(arg_0, arg_2.c.b.c.x)), !func_1(~var_2.c.b.b.x, Struct_5(arg_2.a, arg_2, arg_2), Struct_5(Struct_2(vec2<f32>(arg_2.e, var_2.c.a.x), Struct_1(arg_2.c.b.a, u_input.c, global0.c, arg_2.c.b.d), arg_2.c.c, var_2.c.a.x), arg_2, Struct_4(var_2.a, true, arg_2.a, arg_2.c.b.d.x, -416f))).d, var_2.a.b.d.x), func_1(func_2(), Struct_5(func_4(func_1(var_2.c.b.b.x, Struct_5(var_2.a, arg_2, arg_2), Struct_5(Struct_2(global0.a, Struct_1(var_2.a.a, vec4<u32>(33294u, global0.b.x, var_2.a.b.b.x, global0.b.x), global0.c, var_2.a.b.d), global0.a, -1252f), arg_2, Struct_4(Struct_2(arg_2.a.b.a, Struct_1(var_2.c.a, arg_2.c.b.b, vec2<i32>(arg_2.a.b.c.x, global0.c.x), vec2<bool>(true, false)), var_2.c.c, 1001f), arg_2.b, Struct_2(vec2<f32>(983f, -1019f), Struct_1(arg_2.c.a, arg_2.c.b.b, arg_2.a.b.c, global0.d), vec2<f32>(2377f, arg_3), arg_2.a.d), true, -664f))).d, func_1(var_1.x, Struct_5(Struct_2(vec2<f32>(-561f, global0.a.x), Struct_1(arg_2.c.a, var_2.c.b.b, global0.c, global0.d), var_2.c.b.a, arg_3), arg_2, arg_2), Struct_5(Struct_2(var_2.a.c, Struct_1(vec2<f32>(666f, 1000f), u_input.c, vec2<i32>(-2508i, -24738i), var_2.a.b.d), global0.a, -327f), Struct_4(arg_2.c, var_2.a.b.d.x, Struct_2(vec2<f32>(788f, var_2.e), Struct_1(arg_2.a.c, vec4<u32>(69129u, 39352u, var_2.a.b.b.x, var_1.x), global0.c, vec2<bool>(arg_2.b, false)), arg_2.c.c, 1083f), var_2.b, -153f), Struct_4(Struct_2(vec2<f32>(var_2.e, -265f), arg_2.a.b, var_2.a.a, arg_3), false, arg_2.c, global0.d.x, 1365f))), Struct_3(arg_2.a.b, vec3<i32>(1i, -2147483647i, global0.c.x), -1i, Struct_1(arg_2.c.c, var_2.a.b.b, global0.c, vec2<bool>(true, true)), u_input.b.x)).a, func_4(var_2.c.b.d, func_4(var_2.a.b.d, var_2.a.b, Struct_3(Struct_1(global0.a, vec4<u32>(0u, 4294967295u, global0.b.x, global0.b.x), vec2<i32>(1i, -20037i), var_2.a.b.d), vec3<i32>(arg_2.a.b.c.x, arg_0, -27734i), 2147483647i, Struct_1(arg_2.c.c, vec4<u32>(var_2.a.b.b.x, 0u, 4294967295u, arg_2.a.b.b.x), arg_2.c.b.c, vec2<bool>(global0.d.x, var_2.b)), 79115i)).c.b, Struct_3(Struct_1(vec2<f32>(1000f, -586f), vec4<u32>(var_2.a.b.b.x, 0u, global0.b.x, 1u), arg_2.a.b.c, global0.d), vec3<i32>(arg_1, 11936i, 23165i), var_2.c.b.c.x, Struct_1(vec2<f32>(-405f, -529f), var_2.a.b.b, vec2<i32>(-1i, arg_0), var_2.a.b.d), 0i)), Struct_4(var_2.c, false, Struct_2(global0.a, arg_2.c.b, global0.a, 1229f), arg_2.c.b.d.x, var_2.c.a.x)), Struct_5(Struct_2(vec2<f32>(arg_2.a.d, 1221f), Struct_1(vec2<f32>(-626f, -384f), vec4<u32>(arg_2.c.b.b.x, 15700u, 28304u, var_2.a.b.b.x), vec2<i32>(u_input.b.x, arg_2.c.b.c.x), vec2<bool>(false, false)), vec2<f32>(-2549f, arg_3), _wgslsmith_f_op_f32(global0.a.x + arg_3)), Struct_4(arg_2.c, arg_2.a.b.d.x, var_2.c, true, arg_2.e), arg_2)), Struct_3(var_2.a.b, _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(-45080i, 2147483647i, arg_2.c.b.c.x), ~vec3<i32>(1i, 68074i, -1i)), -vec3<i32>(var_2.c.b.c.x, 43697i, arg_2.a.b.c.x)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(~15324i, 1i), max(~7597i, 77501i)), arg_2.c.b, min(var_2.c.b.c.x, 550i))).c.b.c.x;
    var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(abs(global0.b.x ^ arg_2.c.b.b.x), func_1(var_1.x, Struct_5(var_2.c, Struct_4(arg_2.a, global0.d.x, arg_2.c, false, 417f), arg_2), Struct_5(Struct_2(global0.a, arg_2.c.b, arg_2.a.a, global0.a.x), arg_2, Struct_4(arg_2.a, global0.d.x, arg_2.a, true, -1213f))).b.x, 38434u, 27922u) & _wgslsmith_add_vec4_u32(arg_2.a.b.b, vec4<u32>(_wgslsmith_div_u32(var_1.x, 4610u), firstLeadingBit(global0.b.x), _wgslsmith_dot_vec3_u32(arg_2.c.b.b.xxx, var_2.c.b.b.wyy), var_1.x)), select(select(firstTrailingBit(vec4<u32>(1u, 46077u, var_2.c.b.b.x, u_input.c.x)), select(countOneBits(u_input.c), ~arg_2.a.b.b, true), max(4294967295u, 0u) >= ~var_1.x), countOneBits(vec4<u32>(var_1.x, _wgslsmith_mod_u32(7952u, var_2.c.b.b.x), _wgslsmith_mod_u32(1u, 4294967295u), func_2())), false));
    return var_2.a;
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: Struct_4, arg_3: Struct_5) -> Struct_1 {
    let var_0 = min(max(~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.b.x, 1i), -vec3<i32>(arg_2.a.b.c.x, -26845i, -1i)), vec3<i32>(firstLeadingBit(-1i) << (u_input.c.x % 32u), -2147483647i, -(arg_1 & arg_0))), _wgslsmith_sub_vec3_i32(select(vec3<i32>(global0.c.x, 17406i, arg_0) << (vec3<u32>(22546u, 29473u, 1u) % vec3<u32>(32u)), -vec3<i32>(44845i, arg_2.a.b.c.x, 0i), true), vec3<i32>(func_4(vec2<bool>(true, arg_2.d), arg_3.b.c.b, Struct_3(Struct_1(arg_3.c.c.a, u_input.c, vec2<i32>(arg_2.c.b.c.x, arg_1), vec2<bool>(true, false)), vec3<i32>(37095i, -1i, 24447i), -1i, Struct_1(arg_3.c.a.c, global0.b, global0.c, vec2<bool>(true, arg_3.a.b.d.x)), 66803i)).c.b.c.x, _wgslsmith_mult_i32(arg_3.b.a.b.c.x, -70003i), 12989i)) << (arg_3.b.a.b.b.wxw % vec3<u32>(32u)));
    var var_1 = global0.c;
    let var_2 = arg_2.c.b.b.x;
    global0 = arg_2.a.b;
    global0 = func_4(global0.d, Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(286f - arg_2.a.d), _wgslsmith_f_op_f32(trunc(arg_3.a.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, -1254f) * _wgslsmith_div_vec2_f32(arg_3.b.c.b.a, global0.a)), vec2<bool>(arg_3.a.a.x == global0.a.x, global0.d.x))), ~vec4<u32>(arg_2.c.b.b.x, ~40321u, global0.b.x, _wgslsmith_mod_u32(arg_2.a.b.b.x, arg_2.a.b.b.x)), ~min(vec2<i32>(-209i, arg_0), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, arg_0), vec2<i32>(-2147483647i, arg_2.a.b.c.x), arg_3.b.c.b.c)), !vec2<bool>(global0.d.x, false | arg_2.a.b.d.x)), Struct_3(arg_3.a.b, abs(var_0), 0i, func_1(arg_3.b.c.b.b.x, arg_3, arg_3), 12633i)).a.b;
    return arg_2.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(50952i, ~(-_wgslsmith_clamp_i32(~28928i, global0.c.x, select(-3406i, global0.c.x, true))), Struct_4(func_5(~2147483647i, abs(global0.c.x) >> (_wgslsmith_mod_u32(global0.b.x, 1u) % 32u), func_4(select(global0.d, vec2<bool>(true, true), global0.d), func_1(global0.b.x, Struct_5(Struct_2(global0.a, Struct_1(global0.a, u_input.c, global0.c, global0.d), global0.a, global0.a.x), Struct_4(Struct_2(global0.a, Struct_1(vec2<f32>(global0.a.x, -1300f), global0.b, u_input.b, vec2<bool>(false, global0.d.x)), global0.a, global0.a.x), false, Struct_2(global0.a, Struct_1(vec2<f32>(global0.a.x, global0.a.x), u_input.c, global0.c, vec2<bool>(global0.d.x, global0.d.x)), vec2<f32>(-2606f, 267f), global0.a.x), global0.d.x, -918f), Struct_4(Struct_2(vec2<f32>(-735f, 1068f), Struct_1(vec2<f32>(global0.a.x, global0.a.x), u_input.c, global0.c, global0.d), global0.a, global0.a.x), global0.d.x, Struct_2(global0.a, Struct_1(vec2<f32>(344f, -362f), u_input.c, vec2<i32>(u_input.b.x, -36754i), vec2<bool>(global0.d.x, true)), global0.a, -1767f), global0.d.x, global0.a.x)), Struct_5(Struct_2(vec2<f32>(global0.a.x, global0.a.x), Struct_1(global0.a, vec4<u32>(global0.b.x, 4294967295u, 4294967295u, u_input.c.x), vec2<i32>(u_input.b.x, u_input.b.x), vec2<bool>(false, global0.d.x)), vec2<f32>(2188f, global0.a.x), global0.a.x), Struct_4(Struct_2(vec2<f32>(-449f, global0.a.x), Struct_1(global0.a, vec4<u32>(0u, u_input.a, 1u, 27824u), vec2<i32>(u_input.b.x, global0.c.x), vec2<bool>(false, false)), vec2<f32>(1000f, 353f), -458f), true, Struct_2(vec2<f32>(-457f, global0.a.x), Struct_1(vec2<f32>(100f, global0.a.x), vec4<u32>(u_input.a, 62390u, 32098u, u_input.c.x), vec2<i32>(-1i, -2147483647i), global0.d), vec2<f32>(global0.a.x, 1000f), global0.a.x), global0.d.x, global0.a.x), Struct_4(Struct_2(vec2<f32>(-127f, 1174f), Struct_1(global0.a, u_input.c, global0.c, vec2<bool>(global0.d.x, global0.d.x)), vec2<f32>(-600f, 801f), -240f), global0.d.x, Struct_2(global0.a, Struct_1(global0.a, global0.b, vec2<i32>(global0.c.x, -2147483647i), global0.d), global0.a, global0.a.x), false, global0.a.x))), Struct_3(Struct_1(global0.a, u_input.c, vec2<i32>(-40440i, 34582i), vec2<bool>(true, global0.d.x)), vec3<i32>(26999i, global0.c.x, -8904i), 1i, Struct_1(global0.a, vec4<u32>(0u, 1u, 18942u, global0.b.x), vec2<i32>(global0.c.x, global0.c.x), global0.d), -31679i)), global0.a.x), true, func_5(countOneBits(_wgslsmith_sub_i32(u_input.b.x, -22864i)), func_5(global0.c.x & global0.c.x, i32(-1i) * -2147483647i, Struct_4(Struct_2(global0.a, Struct_1(vec2<f32>(-1892f, global0.a.x), vec4<u32>(global0.b.x, 1u, 19736u, 44899u), u_input.b, global0.d), global0.a, global0.a.x), global0.d.x, Struct_2(global0.a, Struct_1(vec2<f32>(global0.a.x, global0.a.x), vec4<u32>(global0.b.x, 4294967295u, global0.b.x, u_input.a), u_input.b, vec2<bool>(global0.d.x, false)), vec2<f32>(global0.a.x, global0.a.x), global0.a.x), true, 892f), -787f).b.c.x, Struct_4(Struct_2(global0.a, Struct_1(vec2<f32>(global0.a.x, global0.a.x), global0.b, vec2<i32>(-9071i, 0i), global0.d), global0.a, 845f), global0.d.x, Struct_2(global0.a, Struct_1(global0.a, global0.b, global0.c, global0.d), global0.a, -114f), global0.d.x, _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(exp2(global0.a.x))), global0.d.x, 111f), Struct_5(Struct_2(_wgslsmith_f_op_vec2_f32(-global0.a), Struct_1(_wgslsmith_f_op_vec2_f32(global0.a + global0.a), global0.b, vec2<i32>(-2147483647i, u_input.b.x) | vec2<i32>(global0.c.x, 30384i), global0.d), global0.a, _wgslsmith_f_op_f32(floor(global0.a.x))), func_4(vec2<bool>(all(vec4<bool>(global0.d.x, true, true, global0.d.x)), global0.d.x), Struct_1(vec2<f32>(global0.a.x, global0.a.x), global0.b, global0.c >> (vec2<u32>(u_input.a, 27010u) % vec2<u32>(32u)), select(vec2<bool>(false, global0.d.x), vec2<bool>(global0.d.x, global0.d.x), false)), Struct_3(func_1(16821u, Struct_5(Struct_2(global0.a, Struct_1(global0.a, vec4<u32>(global0.b.x, 95636u, u_input.c.x, 5871u), u_input.b, global0.d), global0.a, global0.a.x), Struct_4(Struct_2(global0.a, Struct_1(global0.a, vec4<u32>(global0.b.x, global0.b.x, 50658u, 21818u), vec2<i32>(44582i, 0i), vec2<bool>(false, global0.d.x)), vec2<f32>(-1673f, global0.a.x), global0.a.x), global0.d.x, Struct_2(vec2<f32>(global0.a.x, 617f), Struct_1(vec2<f32>(global0.a.x, global0.a.x), u_input.c, u_input.b, vec2<bool>(false, global0.d.x)), vec2<f32>(-675f, global0.a.x), 1312f), false, global0.a.x), Struct_4(Struct_2(vec2<f32>(global0.a.x, 1638f), Struct_1(global0.a, global0.b, global0.c, vec2<bool>(global0.d.x, global0.d.x)), global0.a, -371f), global0.d.x, Struct_2(vec2<f32>(-917f, global0.a.x), Struct_1(vec2<f32>(global0.a.x, -315f), global0.b, vec2<i32>(29669i, 24911i), vec2<bool>(true, false)), global0.a, global0.a.x), global0.d.x, 1005f)), Struct_5(Struct_2(global0.a, Struct_1(vec2<f32>(-1289f, global0.a.x), u_input.c, vec2<i32>(-2147483647i, global0.c.x), vec2<bool>(global0.d.x, global0.d.x)), vec2<f32>(global0.a.x, 1397f), -1214f), Struct_4(Struct_2(global0.a, Struct_1(vec2<f32>(-466f, global0.a.x), u_input.c, vec2<i32>(1i, 2147483647i), vec2<bool>(true, global0.d.x)), global0.a, -157f), global0.d.x, Struct_2(vec2<f32>(global0.a.x, global0.a.x), Struct_1(global0.a, u_input.c, vec2<i32>(global0.c.x, global0.c.x), global0.d), global0.a, -532f), false, -751f), Struct_4(Struct_2(vec2<f32>(global0.a.x, -755f), Struct_1(global0.a, vec4<u32>(u_input.c.x, global0.b.x, u_input.a, 4294967295u), global0.c, vec2<bool>(false, true)), global0.a, global0.a.x), true, Struct_2(global0.a, Struct_1(global0.a, vec4<u32>(u_input.a, 4412u, u_input.c.x, 11758u), global0.c, global0.d), vec2<f32>(global0.a.x, global0.a.x), global0.a.x), global0.d.x, -857f))), -vec3<i32>(2147483647i, global0.c.x, -2147483647i), u_input.b.x, func_4(global0.d, Struct_1(global0.a, global0.b, global0.c, vec2<bool>(global0.d.x, global0.d.x)), Struct_3(Struct_1(global0.a, u_input.c, vec2<i32>(u_input.b.x, global0.c.x), vec2<bool>(global0.d.x, global0.d.x)), vec3<i32>(1i, -1i, global0.c.x), 14541i, Struct_1(global0.a, vec4<u32>(global0.b.x, 39354u, 434u, 33459u), u_input.b, global0.d), 49412i)).a.b, 19700i)), func_4(!global0.d, Struct_1(vec2<f32>(global0.a.x, 492f), global0.b, global0.c, vec2<bool>(true, true)), Struct_3(Struct_1(vec2<f32>(625f, -803f), vec4<u32>(u_input.a, 6058u, u_input.a, u_input.a), vec2<i32>(2207i, u_input.b.x), vec2<bool>(true, global0.d.x)), ~vec3<i32>(-28120i, u_input.b.x, 31807i), abs(u_input.b.x), func_1(4294967295u, Struct_5(Struct_2(vec2<f32>(-400f, -633f), Struct_1(global0.a, vec4<u32>(54428u, 4294967295u, u_input.c.x, u_input.a), vec2<i32>(global0.c.x, global0.c.x), vec2<bool>(global0.d.x, global0.d.x)), vec2<f32>(global0.a.x, global0.a.x), global0.a.x), Struct_4(Struct_2(vec2<f32>(785f, global0.a.x), Struct_1(global0.a, global0.b, global0.c, global0.d), global0.a, global0.a.x), true, Struct_2(vec2<f32>(global0.a.x, -1627f), Struct_1(vec2<f32>(global0.a.x, global0.a.x), u_input.c, u_input.b, global0.d), vec2<f32>(global0.a.x, -159f), -697f), global0.d.x, 244f), Struct_4(Struct_2(global0.a, Struct_1(global0.a, global0.b, u_input.b, vec2<bool>(true, global0.d.x)), vec2<f32>(-217f, 1000f), global0.a.x), global0.d.x, Struct_2(global0.a, Struct_1(global0.a, vec4<u32>(u_input.a, 11629u, 1u, 60982u), u_input.b, vec2<bool>(global0.d.x, true)), vec2<f32>(global0.a.x, 361f), global0.a.x), global0.d.x, 616f)), Struct_5(Struct_2(vec2<f32>(global0.a.x, global0.a.x), Struct_1(vec2<f32>(1176f, 153f), vec4<u32>(4173u, 1u, 18668u, 4294967295u), u_input.b, global0.d), global0.a, 934f), Struct_4(Struct_2(vec2<f32>(-769f, global0.a.x), Struct_1(global0.a, vec4<u32>(u_input.a, global0.b.x, u_input.c.x, 27146u), u_input.b, vec2<bool>(true, global0.d.x)), global0.a, 348f), global0.d.x, Struct_2(vec2<f32>(178f, 382f), Struct_1(vec2<f32>(global0.a.x, -540f), vec4<u32>(0u, 1u, 1u, 1u), vec2<i32>(global0.c.x, u_input.b.x), vec2<bool>(false, true)), global0.a, global0.a.x), false, global0.a.x), Struct_4(Struct_2(global0.a, Struct_1(global0.a, global0.b, global0.c, global0.d), global0.a, -1000f), global0.d.x, Struct_2(vec2<f32>(-669f, -1248f), Struct_1(vec2<f32>(global0.a.x, global0.a.x), vec4<u32>(53753u, u_input.c.x, u_input.c.x, 0u), vec2<i32>(global0.c.x, -27957i), vec2<bool>(true, true)), global0.a, 1045f), global0.d.x, -1847f))), abs(34790i)))));
    let var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~var_0.b >> (vec4<u32>(global0.b.x >> (var_0.b.x % 32u), func_4(var_0.d, var_0, Struct_3(var_0, vec3<i32>(u_input.b.x, global0.c.x, 0i), -2147483647i, Struct_1(var_0.a, global0.b, vec2<i32>(1i, u_input.b.x), global0.d), -9860i)).a.b.b.x, ~5082u, ~global0.b.x) % vec4<u32>(32u)), firstLeadingBit(func_6(global0.c.x, 8020i, Struct_4(Struct_2(vec2<f32>(global0.a.x, 1009f), var_0, vec2<f32>(global0.a.x, var_0.a.x), 365f), true, Struct_2(vec2<f32>(765f, global0.a.x), Struct_1(global0.a, var_0.b, global0.c, var_0.d), vec2<f32>(379f, var_0.a.x), -623f), global0.d.x, var_0.a.x), Struct_5(Struct_2(var_0.a, var_0, global0.a, global0.a.x), Struct_4(Struct_2(var_0.a, var_0, vec2<f32>(1000f, global0.a.x), var_0.a.x), false, Struct_2(global0.a, var_0, var_0.a, global0.a.x), global0.d.x, var_0.a.x), Struct_4(Struct_2(var_0.a, var_0, vec2<f32>(var_0.a.x, 1041f), global0.a.x), global0.d.x, Struct_2(vec2<f32>(-257f, global0.a.x), Struct_1(global0.a, vec4<u32>(global0.b.x, global0.b.x, 24919u, 1u), u_input.b, var_0.d), vec2<f32>(-1336f, 263f), var_0.a.x), var_0.d.x, 1118f))).b), var_0.b), var_0.b ^ func_6(36131i, 20392i ^ ~u_input.b.x, Struct_4(func_4(vec2<bool>(var_0.d.x, var_0.d.x), var_0, Struct_3(Struct_1(vec2<f32>(var_0.a.x, -371f), global0.b, global0.c, var_0.d), vec3<i32>(0i, global0.c.x, var_0.c.x), var_0.c.x, Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), vec4<u32>(u_input.a, 0u, var_0.b.x, var_0.b.x), vec2<i32>(2545i, u_input.b.x), var_0.d), 39518i)).c, global0.d.x, func_5(0i, -10095i, Struct_4(Struct_2(global0.a, var_0, vec2<f32>(global0.a.x, global0.a.x), 774f), global0.d.x, Struct_2(global0.a, Struct_1(global0.a, global0.b, global0.c, vec2<bool>(false, true)), vec2<f32>(global0.a.x, 512f), var_0.a.x), global0.d.x, global0.a.x), global0.a.x), global0.a.x < var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -788f)), Struct_5(func_4(vec2<bool>(false, true), var_0, Struct_3(Struct_1(global0.a, vec4<u32>(var_0.b.x, 4828u, 24024u, u_input.c.x), global0.c, vec2<bool>(true, var_0.d.x)), vec3<i32>(1i, 0i, 5435i), 25494i, var_0, global0.c.x)).c, Struct_4(Struct_2(vec2<f32>(var_0.a.x, global0.a.x), Struct_1(vec2<f32>(718f, 1485f), vec4<u32>(15481u, 47660u, u_input.a, 23909u), vec2<i32>(32703i, -43659i), global0.d), vec2<f32>(global0.a.x, -1107f), 774f), global0.d.x, Struct_2(var_0.a, var_0, vec2<f32>(var_0.a.x, global0.a.x), global0.a.x), true, var_0.a.x), func_4(global0.d, var_0, Struct_3(Struct_1(var_0.a, var_0.b, u_input.b, global0.d), vec3<i32>(2147483647i, -2147483647i, var_0.c.x), u_input.b.x, Struct_1(var_0.a, vec4<u32>(7012u, var_0.b.x, var_0.b.x, 6719u), global0.c, vec2<bool>(var_0.d.x, false)), -1i)))).b);
    let var_2 = true;
    global0 = func_5(-10996i, 44969i, Struct_4(Struct_2(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x)), Struct_1(var_0.a, var_1, u_input.b, func_1(80878u, Struct_5(Struct_2(vec2<f32>(-1479f, global0.a.x), var_0, var_0.a, 1317f), Struct_4(Struct_2(var_0.a, Struct_1(var_0.a, global0.b, vec2<i32>(global0.c.x, -35335i), vec2<bool>(false, var_0.d.x)), global0.a, var_0.a.x), var_2, Struct_2(var_0.a, var_0, global0.a, 167f), var_0.d.x, var_0.a.x), Struct_4(Struct_2(var_0.a, Struct_1(global0.a, vec4<u32>(4294967295u, 0u, 0u, var_0.b.x), var_0.c, global0.d), vec2<f32>(-1166f, global0.a.x), var_0.a.x), true, Struct_2(vec2<f32>(-814f, 451f), Struct_1(vec2<f32>(var_0.a.x, -847f), vec4<u32>(0u, u_input.c.x, 4294967295u, global0.b.x), var_0.c, vec2<bool>(var_2, true)), var_0.a, 1000f), global0.d.x, -1384f)), Struct_5(Struct_2(global0.a, var_0, var_0.a, global0.a.x), Struct_4(Struct_2(var_0.a, Struct_1(vec2<f32>(var_0.a.x, -1717f), vec4<u32>(var_0.b.x, 55075u, var_0.b.x, u_input.c.x), var_0.c, vec2<bool>(var_2, true)), var_0.a, var_0.a.x), false, Struct_2(vec2<f32>(var_0.a.x, var_0.a.x), var_0, global0.a, var_0.a.x), true, var_0.a.x), Struct_4(Struct_2(var_0.a, Struct_1(vec2<f32>(573f, -1199f), var_1, u_input.b, vec2<bool>(false, global0.d.x)), var_0.a, 789f), var_0.d.x, Struct_2(vec2<f32>(-231f, var_0.a.x), var_0, global0.a, var_0.a.x), var_0.d.x, 1057f))).d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)), _wgslsmith_f_op_f32(trunc(global0.a.x))), false, func_4(vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, global0.a.x)), ~u_input.c, firstTrailingBit(vec2<i32>(-59825i, -51678i)), vec2<bool>(true, true)), Struct_3(var_0, vec3<i32>(var_0.c.x, -20860i, u_input.b.x) | vec3<i32>(-79058i, u_input.b.x, 2147483647i), _wgslsmith_dot_vec2_i32(var_0.c, vec2<i32>(1i, var_0.c.x)), func_5(global0.c.x, global0.c.x, Struct_4(Struct_2(vec2<f32>(-1769f, var_0.a.x), Struct_1(var_0.a, vec4<u32>(27596u, 1389u, 297u, var_1.x), vec2<i32>(1i, global0.c.x), vec2<bool>(var_2, false)), global0.a, -843f), true, Struct_2(global0.a, var_0, global0.a, -774f), var_2, -187f), 1094f).b, global0.c.x)).a, select(true, ~81659i <= reverseBits(var_0.c.x), !select(true, var_2, var_2)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1032f + _wgslsmith_f_op_f32(-1148f - global0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))).b;
    var var_3 = ~u_input.a >> (50236u % 32u);
    var var_4 = vec3<bool>(any(!select(vec4<bool>(true, false, true, global0.d.x), vec4<bool>(global0.d.x, false, false, global0.d.x), vec4<bool>(var_2, global0.d.x, var_0.d.x, var_0.d.x))) != all(select(!vec4<bool>(var_2, false, false, true), select(vec4<bool>(false, var_2, var_2, true), vec4<bool>(global0.d.x, global0.d.x, var_2, var_2), vec4<bool>(false, var_0.d.x, var_2, true)), vec4<bool>(true, false, var_0.d.x, true))), true | global0.d.x, any(select(func_5(u_input.b.x, 10965i, Struct_4(Struct_2(vec2<f32>(var_0.a.x, 115f), Struct_1(var_0.a, vec4<u32>(global0.b.x, global0.b.x, u_input.c.x, global0.b.x), var_0.c, vec2<bool>(false, var_0.d.x)), var_0.a, global0.a.x), var_0.d.x, Struct_2(vec2<f32>(244f, 1000f), var_0, vec2<f32>(global0.a.x, global0.a.x), var_0.a.x), true, global0.a.x), _wgslsmith_div_f32(1079f, 517f)).b.d, select(select(global0.d, vec2<bool>(var_2, var_0.d.x), vec2<bool>(true, false)), vec2<bool>(var_0.d.x, global0.d.x), var_2), !global0.d.x & var_0.d.x)));
    var var_5 = select(var_0.c, vec2<i32>(firstLeadingBit(~global0.c.x) | global0.c.x, (i32(-1i) * -var_0.c.x) << (_wgslsmith_sub_u32(64354u << (0u % 32u), var_1.x) % 32u)), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(-588f);
}

