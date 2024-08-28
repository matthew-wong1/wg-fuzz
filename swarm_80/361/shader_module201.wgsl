struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_1(vec3<bool>(false, false, false), true, 554f, vec3<u32>(15006u, 9731u, 25043u), true), 128f, true, false, Struct_2(vec4<bool>(false, true, false, true))), Struct_3(Struct_1(vec3<bool>(false, true, true), false, 1551f, vec3<u32>(4294967295u, 5323u, 4294967295u), false), -971f, true, true, Struct_2(vec4<bool>(true, false, false, false))), Struct_3(Struct_1(vec3<bool>(true, true, false), false, -1943f, vec3<u32>(19263u, 37375u, 77428u), false), -404f, true, false, Struct_2(vec4<bool>(true, false, true, false))), Struct_3(Struct_1(vec3<bool>(false, false, true), false, 1000f, vec3<u32>(4294967295u, 16437u, 1u), true), 852f, false, true, Struct_2(vec4<bool>(true, true, false, true))), Struct_3(Struct_1(vec3<bool>(true, false, false), true, 892f, vec3<u32>(0u, 18190u, 1u), false), -1149f, false, false, Struct_2(vec4<bool>(false, true, true, true))), Struct_3(Struct_1(vec3<bool>(true, true, true), false, 483f, vec3<u32>(65848u, 4294967295u, 8788u), false), 1000f, true, true, Struct_2(vec4<bool>(true, false, false, false))), Struct_3(Struct_1(vec3<bool>(false, false, true), false, -641f, vec3<u32>(0u, 4294967295u, 17767u), false), -486f, true, true, Struct_2(vec4<bool>(true, false, true, true))));

var<private> global1: array<Struct_3, 8>;

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> u32 {
    global2 = array<Struct_1, 20>();
    global2 = array<Struct_1, 20>();
    global2 = array<Struct_1, 20>();
    let var_0 = Struct_2(!vec4<bool>(1u == ~arg_2.d.x, true, true, true));
    global0 = array<Struct_3, 7>();
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: f32) -> vec4<u32> {
    global2 = array<Struct_1, 20>();
    var var_0 = !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, false, true)), all(vec2<bool>(true, false)), select(true, false, false), true)));
    let var_1 = vec2<bool>(true, true);
    let var_2 = Struct_1(!(!(!(!vec3<bool>(var_1.x, var_1.x, false)))), true, -172f, vec3<u32>(u_input.a.x, ~(~u_input.a.x | firstTrailingBit(u_input.a.x)), ~_wgslsmith_add_u32(~u_input.d.x, u_input.d.x)), true);
    let var_3 = _wgslsmith_f_op_f32(-283f * arg_1);
    return vec4<u32>(0u, 4294967295u, u_input.d.x, func_3(-1000f, 0i, var_2)) << (~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(27786u, u_input.a.x, var_2.d.x, var_2.d.x), vec4<u32>(10665u, var_2.d.x, 21737u, 74308u)))) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = ~(~(-(vec2<i32>(u_input.b.x, u_input.b.x) << (arg_0.wy % vec2<u32>(32u))) | ~(-vec2<i32>(u_input.b.x, u_input.b.x))));
    let var_1 = select((u_input.b.zwy << (u_input.d % vec3<u32>(32u))) >> (~(~func_2(523f, 942f).xyz) % vec3<u32>(32u)), -vec3<i32>(1i, u_input.c.x, ~_wgslsmith_div_i32(var_0.x, var_0.x)), !(!(!all(vec3<bool>(true, true, false)))));
    let var_2 = vec4<bool>(true, !(!(var_0.x == u_input.c.x) != false), !(!all(vec3<bool>(true, true, true))), true);
    var var_3 = var_2.wzz;
    let var_4 = Struct_2(!select(var_2, !var_2, any(select(var_2.yyx, vec3<bool>(false, true, var_2.x), var_2.xxy))));
    return var_4;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    global1 = array<Struct_3, 8>();
    var var_0 = Struct_3(Struct_1(vec3<bool>(false, !arg_2.a.b, true | arg_2.c), 2676u >= u_input.d.x, _wgslsmith_f_op_f32(ceil(arg_2.b)), select(~func_2(478f, 293f).zyy, arg_1.a.d, arg_1.e.a.x), false), 234f, false | (~abs(1635i) <= ~min(0i, u_input.c.x)), false, func_4(~vec4<u32>(4294967295u, ~74947u, u_input.a.x, 32689u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.c - -1084f)) * arg_2.a.c), _wgslsmith_f_op_f32(round(arg_2.b)), _wgslsmith_f_op_f32(trunc(var_0.b))));
    let var_2 = 0u;
    var var_3 = u_input.b;
    return arg_1.e;
}

fn func_1() -> u32 {
    global1 = array<Struct_3, 8>();
    var var_0 = true;
    var var_1 = vec2<i32>(~(~(-1i)), u_input.b.x);
    var var_2 = global1[_wgslsmith_index_u32(max(~u_input.a.x, ~_wgslsmith_div_u32(1u, u_input.a.x)) ^ ~(~u_input.d.x), 8u)];
    var var_3 = func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1000f)))), Struct_3(global2[_wgslsmith_index_u32(1u, 20u)], 1f, select(true & var_2.c, true, true) & var_2.c, false, func_4(func_2(-470f, 1398f) << (vec4<u32>(6944u, 63405u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), Struct_3(Struct_1(vec3<bool>(true, any(var_2.e.a.wy), var_2.e.a.x), true, 517f, firstTrailingBit(var_2.a.d), false), 1434f, false, _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(var_2.b * -637f)) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1838f, 614f, var_2.e.a.x)))), var_2.e));
    return _wgslsmith_add_u32(1u, var_2.a.d.x);
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(arg_1.a, any(func_5(arg_1.c, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.x, u_input.d.x, 26706u, 0u) ^ vec4<u32>(9372u, 77823u, 0u, u_input.a.x), ~vec4<u32>(arg_1.d.x, arg_1.d.x, 89399u, 4294967295u)), 7u)], global0[_wgslsmith_index_u32(arg_1.d.x, 7u)]).a), 543f, ~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(21111u, 52431u, 4294967295u), 27403u), 62718u, select(4294967295u, u_input.d.x >> (u_input.d.x % 32u), arg_1.a.x || false)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.c;
    let var_1 = ~(max(select(vec2<u32>(u_input.d.x, 4294967295u), u_input.d.yz, false), ~u_input.d.yz) & _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 1u), vec3<u32>(u_input.d.x, u_input.d.x, u_input.a.x)), u_input.a.x), min(vec2<u32>(3662u, 47645u), u_input.a)));
    global1 = array<Struct_3, 8>();
    global1 = array<Struct_3, 8>();
    let var_2 = Struct_3(func_6(func_1(), global2[_wgslsmith_index_u32(~(~(~u_input.d.x)), 20u)]), _wgslsmith_f_op_f32(f32(-1f) * -731f), true, func_6(4294967295u, global2[_wgslsmith_index_u32(1u >> (1u % 32u), 20u)]).d.x > u_input.d.x, func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -522f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -801f))))), Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 4294967295u), vec2<u32>(1u, 1u)), 20u)], -903f, true, true | func_4(vec4<u32>(u_input.a.x, u_input.a.x, var_1.x, 4294967295u)).a.x, Struct_2(vec4<bool>(false, true, true, true))), Struct_3(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], -1163f, !select(false, true, true), select(select(false, false, true), true, var_0.x == -1i), func_5(_wgslsmith_f_op_f32(sign(-1091f)), Struct_3(global2[_wgslsmith_index_u32(var_1.x, 20u)], 1000f, false, true, Struct_2(vec4<bool>(false, false, false, true))), global0[_wgslsmith_index_u32(var_1.x | var_1.x, 7u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(abs(_wgslsmith_sub_u32(u_input.d.x, 107972u)), var_1.x, var_2.a.d.x | _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 58687u, u_input.a.x), vec3<u32>(u_input.a.x, 49091u, 4294967295u))), ~vec3<u32>(1u, ~u_input.d.x, _wgslsmith_div_u32(var_1.x, var_2.a.d.x))), ~(0i >> (abs(1u) % 32u)), ~(firstTrailingBit(~var_2.a.d) >> (vec3<u32>(u_input.d.x, 4294967295u, min(35285u, 81197u)) % vec3<u32>(32u))));
}

