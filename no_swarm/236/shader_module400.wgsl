struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<bool>(false, true, false, false), -1044f, vec2<bool>(true, true), vec2<u32>(4294967295u, 0u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> bool {
    global0 = Struct_4(select(!vec4<bool>(false || global0.c.x, global0.a.x, select(false, global0.a.x, false), !global0.a.x), vec4<bool>(select(false, select(false, true, global0.a.x), any(vec4<bool>(false, true, true, global0.c.x))), global0.a.x, false, true), all(!vec3<bool>(global0.c.x, global0.a.x, global0.a.x))), 888f, !(!(!global0.a.xy)), global0.d);
    var var_0 = max(select(u_input.b, -1i, false), ~0i);
    var var_1 = _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(_wgslsmith_sub_i32(abs(-3743i), ~arg_0), 41523i), -(i32(-1i) * -1i), arg_0);
    let var_2 = vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, ~firstLeadingBit(vec3<u32>(4294967295u, u_input.e.x, 4294967295u))), _wgslsmith_mult_u32(~(~(~global0.d.x)), ~_wgslsmith_mod_u32(select(global0.d.x, 59461u, true), ~u_input.a.x)), _wgslsmith_sub_u32(reverseBits(7218u), ~global0.d.x), _wgslsmith_div_u32(u_input.c.x, global0.d.x));
    var_0 = arg_0;
    return global0.a.x;
}

fn func_2() -> i32 {
    global0 = Struct_4(vec4<bool>(global0.a.x, false, global0.a.x, any(global0.a.yz) || !func_3(2147483647i)), _wgslsmith_f_op_f32(exp2(global0.b)), select(select(select(!global0.a.wx, !vec2<bool>(global0.c.x, false), !vec2<bool>(true, global0.c.x)), select(vec2<bool>(true, true), select(global0.a.wy, global0.a.xz, global0.a.x), all(global0.a.zw)), all(global0.a)), select(!(!vec2<bool>(global0.a.x, global0.a.x)), vec2<bool>(global0.c.x, !global0.c.x), global0.b < global0.b), !all(!global0.a.zyy)), abs(min(u_input.e.zx, u_input.a)));
    var var_0 = _wgslsmith_add_i32(1i, -14622i & _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 69672i), vec2<i32>(-42369i, u_input.b)), -u_input.b));
    let var_1 = -select(~firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i))), abs(~(~vec4<i32>(u_input.b, u_input.b, u_input.b, 40746i))), global0.a);
    var_0 = 1i;
    let var_2 = Struct_5(Struct_4(!select(!vec4<bool>(false, global0.a.x, true, global0.a.x), !vec4<bool>(global0.a.x, global0.c.x, global0.c.x, true), all(global0.a)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b, global0.b)))), select(vec2<bool>(!global0.c.x, global0.a.x), global0.c, true), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(global0.d.x, u_input.e.x)), _wgslsmith_div_vec2_u32(vec2<u32>(26196u, u_input.a.x), vec2<u32>(global0.d.x, u_input.a.x)) >> (u_input.a % vec2<u32>(32u)))));
    return u_input.b;
}

fn func_4(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = all(global0.a.zzw);
    global0 = Struct_4(global0.a, -1121f, !(!global0.c), _wgslsmith_mod_vec2_u32(vec2<u32>(~(~global0.d.x), ~(~4294967295u)), _wgslsmith_clamp_vec2_u32(u_input.e.wx, u_input.c.zx, _wgslsmith_add_vec2_u32(global0.d | vec2<u32>(u_input.e.x, 60389u), u_input.a))));
    global0 = Struct_4(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * global0.b) - _wgslsmith_f_op_f32(-global0.b)), !vec2<bool>(true, all(global0.a.xwy) || all(global0.a)), global0.d);
    let var_1 = global0.a.xz;
    global0 = Struct_4(vec4<bool>(global0.c.x & !func_3(-58167i), global0.a.x, any(global0.a.zzw), global0.b >= -181f), _wgslsmith_f_op_f32(699f - -1374f), vec2<bool>(var_1.x, true), vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 39621u, 2652u, 0u)), ~select(u_input.e, vec4<u32>(12803u, 29935u, 0u, 4294967295u), false)), ~56113u));
    return Struct_3(!(!(var_1.x | (u_input.b >= -2147483647i))), Struct_1(!global0.a, u_input.d, var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1787f, global0.b, global0.b, global0.b) * vec4<f32>(-261f, global0.b, 506f, 1666f)))))), Struct_1(select(vec4<bool>(!var_0, true, 1u != u_input.e.x, !var_1.x), !vec4<bool>(var_0, false, false, true), vec4<bool>(true, false, true, any(global0.a.xy))), abs(_wgslsmith_sub_u32(u_input.e.x, u_input.a.x)) >> (u_input.c.x % 32u), global0.a.x));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = var_0.a;
    var var_2 = Struct_4(!vec4<bool>(abs(var_0.d.b) >= ~36664u, _wgslsmith_f_op_f32(step(var_0.c.x, -151f)) <= _wgslsmith_f_op_f32(1000f + var_0.c.x), true, var_0.a), func_4(min(~(~vec3<i32>(u_input.b, u_input.b, 27098i)), vec3<i32>(0i, 1i, ~(-2147483647i)))).c.x, select(!select(global0.a.zy, var_0.d.a.zw, !arg_0.d.a.wz), !func_4(abs(vec3<i32>(-4825i, -16401i, u_input.b))).d.a.xy, select(false, global0.c.x, false)), vec2<u32>(global0.d.x, 27515u));
    global0 = Struct_4(vec4<bool>(true, !(_wgslsmith_mod_i32(u_input.b, -1i) >= 10888i), true, true), -1126f, !var_0.b.a.wz, global0.d >> ((min(vec2<u32>(arg_0.d.b, global0.d.x), ~u_input.a) << (min(abs(u_input.c.zx), ~vec2<u32>(u_input.e.x, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_3 = true;
    return Struct_2(Struct_1(!vec4<bool>(!arg_0.a, global0.c.x, true, func_4(vec3<i32>(u_input.b, u_input.b, u_input.b)).d.c), 0u, var_2.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b))));
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> Struct_4 {
    global0 = Struct_4(arg_0.a.a, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f)), 372f))), !(!arg_0.a.a.xx), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.e.zw), vec2<u32>(arg_0.a.b | u_input.a.x, _wgslsmith_mult_u32(74591u, abs(3689u)))));
    let var_0 = -((_wgslsmith_clamp_vec2_i32(max(vec2<i32>(0i, u_input.b), vec2<i32>(4863i, u_input.b)), ~vec2<i32>(-1i, -2147483647i), max(vec2<i32>(-1i, -12659i), vec2<i32>(41130i, -4392i))) & ~(vec2<i32>(0i, 2147483647i) & vec2<i32>(u_input.b, u_input.b))) >> (vec2<u32>(~select(0u, arg_0.a.b, false), u_input.e.x) % vec2<u32>(32u)));
    let var_1 = arg_0.a;
    global0 = Struct_4(!(!vec4<bool>(false, all(vec2<bool>(arg_0.a.c, global0.a.x)), func_5(Struct_3(var_1.c, Struct_1(arg_0.a.a, u_input.e.x, arg_1), vec4<f32>(-349f, arg_0.b, 212f, arg_0.b), var_1)).a.a.x, var_1.c)), _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b))) * _wgslsmith_f_op_f32(-arg_0.b))), global0.c, u_input.c.yx);
    let var_2 = vec2<i32>(-2147483647i, u_input.b);
    return Struct_4(global0.a, _wgslsmith_f_op_f32(-arg_0.b), vec2<bool>(any(select(arg_0.a.a.zz, func_5(Struct_3(true, Struct_1(global0.a, 52021u, true), vec4<f32>(196f, -1374f, global0.b, -557f), arg_0.a)).a.a.wz, vec2<bool>(false, global0.c.x))), !global0.c.x), u_input.e.zw);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec4<bool>) -> Struct_4 {
    var var_0 = any(!global0.a);
    return func_6(func_5(func_4(vec3<i32>(func_2(), -u_input.b, -u_input.b))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-202f, _wgslsmith_f_op_f32(-global0.b), global0.c.x)) - -2062f))), !global0.a.x, global0.a);
    global0 = Struct_4(func_4(max(countOneBits(vec3<i32>(-16300i, u_input.b, -2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 1i), vec3<i32>(u_input.b, u_input.b, u_input.b)) ^ ~vec3<i32>(-1i, u_input.b, u_input.b))).b.a, _wgslsmith_f_op_f32(f32(-1f) * -1046f), vec2<bool>(global0.c.x, true != (func_5(Struct_3(true, Struct_1(global0.a, 55206u, true), vec4<f32>(335f, -873f, 1649f, global0.b), Struct_1(vec4<bool>(false, false, false, false), u_input.a.x, global0.a.x))).a.b != (0u | u_input.c.x))), var_0.d);
    global0 = func_1(_wgslsmith_f_op_f32(742f + -169f), true, vec4<bool>(!(!all(global0.a)), global0.a.x, true, true));
    var var_1 = func_4(reverseBits(select(vec3<i32>(18462i, firstTrailingBit(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -5178i, 19613i), vec3<i32>(u_input.b, u_input.b, u_input.b))), firstTrailingBit(vec3<i32>(28908i, u_input.b, u_input.b)) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(59426i, u_input.b, u_input.b), vec3<i32>(u_input.b, 24367i, 6713i)), var_0.a.xwz)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i >> (~(~(~var_0.d.x)) % 32u), ~4294967295u, ~(~(~_wgslsmith_mult_u32(var_1.d.b, var_0.d.x))), reverseBits(~var_1.d.b));
}

