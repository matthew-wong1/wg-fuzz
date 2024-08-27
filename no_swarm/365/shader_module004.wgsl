struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32, arg_3: vec3<bool>) -> bool {
    var var_0 = select(arg_1.b.b, vec2<bool>(true | (_wgslsmith_f_op_f32(-arg_1.b.a) < _wgslsmith_f_op_f32(arg_1.b.a + arg_2)), true), select(vec2<bool>(all(select(vec4<bool>(true, global0.b, arg_1.b.b.x, true), vec4<bool>(true, true, true, arg_1.a.b.x), true)), !global0.d), arg_1.b.b, arg_3.xx));
    var_0 = arg_3.zz;
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(reverseBits(firstTrailingBit(arg_0.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 1u, u_input.e.x), arg_0)), _wgslsmith_sub_u32(~4048u, ~abs(u_input.e.x))), u_input.e.x | (~(4294967295u & arg_0.x) >> (25393u % 32u)), _wgslsmith_add_u32(~0u & (u_input.e.x ^ ~arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x | u_input.e.x, reverseBits(arg_0.x), _wgslsmith_div_u32(4294967295u, arg_0.x), 4294967295u), ~vec4<u32>(arg_0.x, 7792u, arg_0.x, arg_0.x))));
    var_0 = vec2<bool>(arg_1.a.b.x, any(vec3<bool>(!arg_1.b.b.x, arg_1.a.b.x, var_0.x)));
    let var_2 = !select(!(!vec4<bool>(false, false, global0.d, false)), vec4<bool>(!arg_1.a.b.x, !(true != arg_1.b.b.x), u_input.d <= -u_input.d, arg_1.a.b.x), !select(true, any(arg_3), true));
    return true;
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_2 {
    global0 = Struct_5(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), global0.c))), true, _wgslsmith_f_op_f32(f32(-1f) * -2517f), reverseBits(-1i) > _wgslsmith_dot_vec2_i32(u_input.c, u_input.a.zy));
    global0 = Struct_5(global0.a, func_3(_wgslsmith_mod_vec4_u32(~u_input.e, ~(~vec4<u32>(u_input.e.x, 1u, u_input.e.x, u_input.e.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -655f), vec2<bool>(arg_1, false)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -535f), vec2<bool>(false, false))), _wgslsmith_f_op_f32(floor(arg_0)), vec3<bool>(!(!global0.d), !(-127f == global0.c), arg_1)), -496f, any(vec3<bool>(arg_0 >= -1148f, arg_1 && false, true)));
    global0 = Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-362f, global0.c)), func_3(vec4<u32>(firstTrailingBit(4294967295u) ^ ~u_input.e.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, u_input.e.x), u_input.e.x), _wgslsmith_add_u32(78953u, u_input.e.x), firstTrailingBit(u_input.e.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(arg_0)), vec2<bool>(true, arg_1)), Struct_1(_wgslsmith_f_op_f32(floor(global0.c)), select(vec2<bool>(false, arg_1), vec2<bool>(global0.b, global0.b), vec2<bool>(true, global0.d)))), 1107f, select(select(!vec3<bool>(arg_1, global0.b, false), vec3<bool>(false, false, arg_1), arg_1 || true), !select(vec3<bool>(global0.d, arg_1, false), vec3<bool>(global0.b, arg_1, arg_1), vec3<bool>(false, true, true)), !global0.b && true)), _wgslsmith_f_op_f32(1314f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a.x), 240f, true))), all(vec4<bool>(true, any(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), true)), global0.b, _wgslsmith_f_op_f32(max(-1514f, -2181f)) >= global0.c)));
    var var_0 = func_3(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.e, ~u_input.e), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(u_input.e.x, 1u, 56753u, 6675u)), ~u_input.e.x, select(u_input.e.x, u_input.e.x, false))), Struct_2(Struct_1(arg_0, vec2<bool>(true, all(vec2<bool>(arg_1, arg_1)))), Struct_1(_wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(abs(381f))), select(select(vec2<bool>(false, false), vec2<bool>(true, global0.b), global0.b), vec2<bool>(true, true), all(vec2<bool>(arg_1, global0.d))))), arg_0, vec3<bool>(arg_1 && all(select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, global0.d), vec2<bool>(true, arg_1))), arg_1, false));
    var var_1 = Struct_2(Struct_1(arg_0, vec2<bool>(false, arg_1)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_div_f32(global0.c, 469f)) * _wgslsmith_f_op_f32(abs(arg_0))), !(!vec2<bool>(false, arg_1))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1544f), vec2<bool>(!(var_1.b.a > var_1.b.a), any(select(vec3<bool>(true, arg_1, var_1.a.b.x), vec3<bool>(var_1.a.b.x, global0.d, false), false)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.a, 478f, var_1.a.b.x)) + 638f), select(!select(vec2<bool>(arg_1, false), vec2<bool>(true, arg_1), global0.b), select(var_1.b.b, !vec2<bool>(true, arg_1), arg_1), !select(var_1.b.b, var_1.a.b, true))));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_1 {
    var var_0 = 1886f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(185f + _wgslsmith_f_op_f32(abs(-223f))))));
    var_0 = global0.c;
    let var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-314f, 1301f)) - -877f), true);
    let var_3 = u_input.a;
    return func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.a, var_1))), _wgslsmith_div_f32(var_2.a.a, _wgslsmith_f_op_f32(338f * -370f)))), _wgslsmith_f_op_f32(-var_2.a.a))), global0.d).a;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_div_f32(arg_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.x, -506f)))), !arg_1.a.b.x);
    var var_1 = u_input.a;
    global0 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a - vec2<f32>(var_0.a.a, _wgslsmith_f_op_f32(-arg_3)))), var_0.a.b.x, var_0.b.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3))) == _wgslsmith_f_op_f32(1151f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) - _wgslsmith_f_op_f32(min(-1372f, 792f)))));
    let var_2 = vec2<u32>(~min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 38924u, arg_2, arg_2) >> (u_input.e % vec4<u32>(32u)), vec4<u32>(arg_2, 1u, 1u, 61331u)), ~(~arg_2)), _wgslsmith_add_u32(0u, 74744u));
    var var_3 = !vec3<bool>((1u ^ _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(var_2.x, 0u, 54961u, 4294967295u))) > ~select(0u, 4294967295u, false), true, -282f >= func_1(all(vec4<bool>(false, var_0.a.b.x, arg_1.a.b.x, true)), 8039u).a);
    return func_2(-1609f, reverseBits(~1i) > u_input.d).b;
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: f32, arg_3: Struct_3) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_3.b.xz);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(1000f, 158f))), !(!(!arg_3.c.b))), arg_3.b, func_2(-524f, false).a, -vec4<i32>(-(i32(-1i) * -14459i), ~u_input.c.x, -min(1i, -86507i), 0i), func_1(global0.b, u_input.e.x));
    var var_2 = 289f;
    return Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1523f, arg_2)), _wgslsmith_div_vec2_f32(vec2<f32>(-1370f, var_1.e.a), arg_3.b.xy), all(vec2<bool>(var_1.c.b.x, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(338f, arg_0.x), vec2<f32>(var_0.x, -206f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_3.b.x) + arg_3.b.xy)), arg_3.a.b))), arg_3.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -613f), 1604f))), var_1.e.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(global0.a, u_input.a.x, -148f, Struct_3(Struct_1(global0.a.x, vec2<bool>(all(vec4<bool>(true, false, global0.d, global0.b)), all(vec4<bool>(global0.d, global0.b, true, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(105f, -216f, global0.c), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a.x, global0.c, 416f), vec3<f32>(-1635f, 142f, global0.a.x))), !global0.d))), Struct_1(_wgslsmith_f_op_f32(-1396f * _wgslsmith_f_op_f32(step(global0.c, global0.a.x))), select(vec2<bool>(true, false), vec2<bool>(global0.d, global0.d), global0.b | global0.d)), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d, u_input.a.x, u_input.d, 0i)), vec4<i32>(-2147483647i, 7045i, u_input.b, u_input.b) << (u_input.e % vec4<u32>(32u))) << (((u_input.e >> (vec4<u32>(4294967295u, 64324u, u_input.e.x, 1u) % vec4<u32>(32u))) >> (vec4<u32>(47601u, 42025u, u_input.e.x, 43247u) % vec4<u32>(32u))) % vec4<u32>(32u)), func_4(-u_input.a.x, Struct_3(Struct_1(120f, vec2<bool>(true, global0.d)), vec3<f32>(-513f, global0.c, global0.c), Struct_1(-1720f, vec2<bool>(global0.d, false)), vec4<i32>(u_input.a.x, -37175i, 2147483647i, -2147483647i), func_1(true, 32861u)), _wgslsmith_mult_u32(reverseBits(u_input.e.x), u_input.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - global0.a.x)))));
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.x)));
    let var_1 = Struct_4(global0.c);
    var_0 = var_1.a;
    let var_2 = func_1(global0.b, reverseBits(26600u | (u_input.e.x | _wgslsmith_sub_u32(u_input.e.x, u_input.e.x)))).b.x;
    let var_3 = vec3<i32>(41145i, u_input.c.x, ~(-_wgslsmith_sub_i32(u_input.b, ~u_input.c.x)));
    var var_4 = ~u_input.e.ywy;
    var_4 = (~u_input.e.zzz & ~select(vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), _wgslsmith_mod_vec3_u32(vec3<u32>(23973u, var_4.x, 0u), vec3<u32>(u_input.e.x, 4012u, 4294967295u)), vec3<bool>(true, true, var_2))) >> ((vec3<u32>(_wgslsmith_add_u32(~21765u, 1u), reverseBits(u_input.e.x), _wgslsmith_add_u32(max(7909u, var_4.x), ~u_input.e.x)) >> (_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.e.x, var_4.x, 4294967295u)), vec3<u32>(abs(12761u), _wgslsmith_sub_u32(var_4.x, 0u), ~var_4.x)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-156f, global0.a.x, global0.a.x) - vec3<f32>(global0.c, -2014f, var_1.a)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-865f, global0.a.x, global0.a.x))))) - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -558f), -194f)), _wgslsmith_f_op_f32(step(var_1.a, func_2(1000f, global0.b).a.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(233f, 651f))))), u_input.e.wyx);
}

