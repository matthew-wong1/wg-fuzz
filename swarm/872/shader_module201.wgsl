struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(1000f, -675f), Struct_1(-549f, -194f), Struct_1(-548f, -468f), Struct_1(-303f, -310f), Struct_1(-325f, -118f), Struct_1(-503f, -1116f), Struct_1(258f, -793f), Struct_1(-1740f, 1079f), Struct_1(763f, -1982f), Struct_1(-685f, -1313f), Struct_1(-2525f, -1440f), Struct_1(356f, -566f), Struct_1(-767f, -1000f), Struct_1(764f, -704f), Struct_1(1274f, -614f), Struct_1(-403f, -153f), Struct_1(1000f, 1218f), Struct_1(909f, 1290f), Struct_1(404f, -690f), Struct_1(-877f, 959f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>) -> f32 {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_0 = select(select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), vec2<bool>(true, true), !all(vec2<bool>(false, true)) || all(vec2<bool>(true, false))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false)), !vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), any(vec2<bool>(false, false))));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(arg_1.x, 20u)]);
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(~43059u, 20u)]);
    return arg_0.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> bool {
    var var_0 = !vec4<bool>(any(!vec2<bool>(arg_2.c, false)), true, !(!(true || arg_2.c)), any(select(vec4<bool>(false, false, arg_2.c, arg_2.c), vec4<bool>(arg_2.c, arg_2.c, arg_2.c, false), select(vec4<bool>(false, arg_2.c, false, true), vec4<bool>(arg_2.c, arg_2.c, arg_2.c, true), vec4<bool>(arg_2.c, false, true, arg_2.c)))));
    var_0 = !select(!select(!vec4<bool>(false, arg_2.c, true, arg_2.c), !vec4<bool>(var_0.x, true, false, false), select(vec4<bool>(true, arg_2.c, true, true), vec4<bool>(var_0.x, arg_2.c, arg_2.c, true), var_0.x)), select(vec4<bool>(4294967295u >= arg_2.d.x, all(var_0.zz), arg_2.c & false, any(vec4<bool>(true, arg_2.c, true, true))), !(!vec4<bool>(var_0.x, true, false, arg_2.c)), vec4<bool>(true, true, true, true)), select(arg_2.c, arg_2.c, var_0.x && true));
    let var_1 = Struct_3(select(0u, 16025u, true), Struct_2(arg_1.a), true, u_input.a.xzy | u_input.a.yzw);
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> vec3<bool> {
    let var_0 = vec4<bool>(true, _wgslsmith_dot_vec2_u32(u_input.a.yx, ~u_input.a.zx) <= ~u_input.a.x, arg_0.x, func_4(~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.zw, vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(1u, u_input.a.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(vec2<f32>(176f, 566f), u_input.a.yzw)), 581f)), Struct_3(~abs(0u), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x >> (u_input.a.x % 32u), 20u)]), all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), u_input.a.zzz), ~(~(~u_input.a.x))));
    var var_1 = 1897f;
    var var_2 = reverseBits(u_input.a.x) << (_wgslsmith_sub_u32(abs(_wgslsmith_add_u32(1u, abs(u_input.a.x))), abs(0u)) % 32u);
    let var_3 = 1000f;
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1647f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-470f)))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1192f, var_3)) - _wgslsmith_f_op_f32(-var_3)))));
    return !select(!vec3<bool>(true, all(vec4<bool>(true, true, var_0.x, true)), any(arg_0)), !var_0.xzz, select(var_0.yxy, var_0.zxx, !vec3<bool>(true, var_0.x, arg_0.x)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> f32 {
    var var_0 = arg_0.e.a;
    var_0 = abs(1u);
    global0 = array<Struct_1, 20>();
    var_0 = max(~arg_3, 58232u);
    let var_1 = !func_2(!select(select(arg_0.d.xx, vec2<bool>(true, false), arg_0.d.x), arg_0.d.wx, !arg_0.d.xw), arg_0.c);
    return arg_1.a.a;
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> Struct_4 {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-33361i, 1i, -1i >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, arg_1.d.x), select(arg_1.d.x, 0u, arg_0)) % 32u)), ~_wgslsmith_add_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -16445i), vec3<i32>(54132i, -2147483647i, -2147483647i)), ~vec3<i32>(1i, -50741i, -29557i)));
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_1.b.a.b)), arg_1.b.a.a)), _wgslsmith_f_op_f32(max(748f, _wgslsmith_f_op_f32(-arg_1.b.a.b)))), arg_1.b.a.b, var_0.x | var_0.x, !(!vec4<bool>(any(vec4<bool>(arg_1.c, false, false, true)), true, arg_1.c, !arg_0)), arg_1);
}

fn func_6(arg_0: bool, arg_1: Struct_4, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = arg_1.e.b.a.b;
    var var_1 = 5689u;
    let var_2 = ~4294967295u;
    let var_3 = func_5((reverseBits(firstTrailingBit(arg_2.x)) ^ 3650u) > firstLeadingBit(1u), Struct_3(1u, func_5(arg_0, arg_1.e).e.b, arg_0, min(vec3<u32>(1u, 5233u, 30680u), ~abs(vec3<u32>(1u, u_input.a.x, 4294967295u))))).e.b;
    var var_4 = func_5(~0u > ~arg_2.x, Struct_3(~var_2, arg_1.e.b, !(!(u_input.a.x <= arg_1.e.a)), vec3<u32>(_wgslsmith_sub_u32(arg_1.e.d.x & 32360u, 4294967295u), 0u, _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(17949u, u_input.a.x, 4294967295u), vec3<u32>(arg_1.e.d.x, arg_2.x, var_2))))));
    return vec4<bool>(true, var_4.e.c | arg_0, 1u < _wgslsmith_sub_u32(select(u_input.a.x, arg_2.x, !arg_1.d.x), u_input.a.x), var_4.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(func_6(any(vec2<bool>(u_input.a.x >= u_input.a.x, true)), func_5(_wgslsmith_f_op_f32(func_1(Struct_4(global0[_wgslsmith_index_u32(1u, 20u)], 674f, -254i, vec4<bool>(true, true, true, false), Struct_3(0u, Struct_2(global0[_wgslsmith_index_u32(10402u, 20u)]), false, u_input.a.zzz)), Struct_2(Struct_1(355f, 706f)), false, u_input.a.x)) >= _wgslsmith_f_op_f32(trunc(1619f)), Struct_3(u_input.a.x & u_input.a.x, Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), true, ~vec3<u32>(u_input.a.x, u_input.a.x, 23498u))), u_input.a.yx));
    let var_1 = Struct_3(_wgslsmith_sub_u32(u_input.a.x, 55173u), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2563f)), 1824f)), true, func_5(true, func_5(false, func_5(true, func_5(var_0, Struct_3(14468u, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 20u)]), true, vec3<u32>(u_input.a.x, 0u, u_input.a.x))).e).e).e).e.d);
    var var_2 = u_input.a << (vec4<u32>(1u << (u_input.a.x % 32u), 18925u, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(2910u, reverseBits(0u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 22595u) << (var_1.d.xz % vec2<u32>(32u)), vec2<u32>(3945u, var_1.a)))) % vec4<u32>(32u));
    let var_3 = firstLeadingBit(vec4<u32>(var_2.x, 0u, 6118u, 25955u));
    var var_4 = ~select(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x) << (var_3.x % 32u), var_2.x, true);
    global0 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a.a) * -272f), _wgslsmith_f_op_f32(select(-139f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.a.b, 1583f)), var_1.c && true))));
}

