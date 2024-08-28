struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(85761u), Struct_1(4294967295u), vec4<u32>(4371u, 19635u, 1u, 1u), -12936i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    global0 = Struct_3(global0.a);
    global0 = Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(global0.a.c.xwx & vec3<u32>(18354u, global0.a.a.a, u_input.c.x), ~global0.a.c.zxz)), global0.a.b, u_input.b, _wgslsmith_div_i32(2147483647i, -13752i)));
    let var_0 = false;
    var var_1 = 23417i;
    let var_2 = u_input.b.x;
    return ~1i;
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_3 {
    var var_0 = select(vec2<bool>(true, !any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), !select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), vec2<bool>(true, true), !any(vec2<bool>(true, true))), vec2<bool>(all(vec4<bool>(true, false, true, all(vec2<bool>(true, false)))), true));
    var_0 = vec2<bool>(func_3() < _wgslsmith_mod_i32(-18783i, _wgslsmith_add_i32(min(37321i, 9975i), -3992i)), !var_0.x);
    var_0 = select(vec2<bool>((countOneBits(u_input.d) ^ ~2147483647i) > global0.a.d, var_0.x), select(vec2<bool>(true, !(arg_1 > arg_0)), vec2<bool>(var_0.x == all(vec3<bool>(true, var_0.x, true)), false && select(true, true, var_0.x)), !(!var_0.x)), !(!select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(var_0.x, true)))));
    var var_1 = !var_0.x;
    var var_2 = -882f;
    return Struct_3(global0.a);
}

fn func_1() -> Struct_1 {
    global0 = func_2(485f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -200f))), _wgslsmith_f_op_f32(-765f - 2186f)))));
    global0 = func_2(-918f, -1482f);
    return global0.a.b;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_3 {
    let var_0 = ~(~(~(~firstLeadingBit(global0.a.c))));
    let var_1 = Struct_5(abs(u_input.b.yzw), vec2<f32>(_wgslsmith_f_op_f32(max(616f, 1234f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1082f - 1000f), _wgslsmith_f_op_f32(sign(1773f))))));
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + 609f))) + _wgslsmith_f_op_f32(abs(-968f))));
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1102f)))), 1742f);
    var var_2 = Struct_4(Struct_3(func_2(var_1.b.x, var_1.b.x).a), -6928i, global0.a.b);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), Struct_2(func_1(), global0.a.b, ~vec4<u32>(u_input.c.x, _wgslsmith_clamp_u32(0u, 9056u, 0u), u_input.b.x, _wgslsmith_clamp_u32(1u, 4294967295u, 44639u)), func_3()), vec2<i32>(22539i, -(~global0.a.d) & 2147483647i));
    let var_0 = select(vec2<bool>(true, true), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec2<bool>(true, select(true, false, true))) & false);
    global0 = func_2(_wgslsmith_f_op_f32(step(1602f, -351f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -162f) + _wgslsmith_f_op_f32(f32(-1f) * -191f))));
    var var_1 = max(u_input.b.x >> (abs(_wgslsmith_div_u32(1u, u_input.b.x) << (firstLeadingBit(global0.a.a.a) % 32u)) % 32u), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -486f))), _wgslsmith_f_op_f32(-1357f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-480f)) * _wgslsmith_f_op_f32(-318f - -591f)))).a.a.a);
    var_1 = ~(~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_sub_u32(global0.a.b.a, 4294967295u)) | firstTrailingBit(func_1().a));
    var var_2 = vec4<i32>(_wgslsmith_add_i32(~global0.a.d, -u_input.d), _wgslsmith_mod_i32(max(u_input.a, u_input.d), ~(i32(-1i) * -2147483647i)), u_input.a, global0.a.d);
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(620f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1041f), -1277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(873f, 554f, -1412f, 314f), vec4<f32>(1321f, -837f, 692f, 1368f), var_0.x && var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1526f, 1531f, -274f, 1180f))))))));
    let var_4 = vec2<i32>(firstLeadingBit(-(~firstTrailingBit(-27232i))), _wgslsmith_dot_vec3_i32(max(var_2.wzz, vec3<i32>(0i, -29164i, global0.a.d)) >> (u_input.b.zyw % vec3<u32>(32u)), max(var_2.zzw, countOneBits(var_2.wyx) ^ vec3<i32>(global0.a.d, -26826i, global0.a.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(-6747i, -50897i), _wgslsmith_div_vec2_i32(vec2<i32>(9665i >> (1u % 32u), var_4.x), var_2.yx >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(57003u, global0.a.c.x), vec2<u32>(u_input.c.x, global0.a.c.x), u_input.c.zy) % vec2<u32>(32u)))), var_2.x, u_input.b.x);
}

