struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(reverseBits(max(~min(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 26312u, u_input.a)), firstTrailingBit(select(vec3<u32>(u_input.a, 64619u, 1u), vec3<u32>(4294967295u, u_input.a, 96562u), true)))), true, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(519f, -1000f, 474f, 916f))), -284f));
    global0 = true;
    let var_1 = u_input.a;
    let var_2 = -20551i;
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(var_0.c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c.a.x, 744f, var_0.c.b, 1006f)))) - var_0.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-873f)))));
    return ~var_1;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_div_u32(1u, min(u_input.a, func_3())));
    var_0 = _wgslsmith_sub_u32(u_input.a, _wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(arg_0, 1u), 42113u));
    var var_1 = vec3<bool>(arg_3.x && false, all(vec2<bool>(arg_3.x, false)), !select(!arg_3.x, false, select(true, arg_3.x, all(vec4<bool>(arg_3.x, true, arg_3.x, true)))));
    global0 = any(!(!(!(!vec4<bool>(var_1.x, arg_3.x, false, false)))));
    let var_2 = Struct_3(arg_2, Struct_2(~(min(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, 29740u, 61648u)) | vec3<u32>(59453u, u_input.a, u_input.a)), select(false, !arg_3.x | false, !arg_3.x & arg_3.x), arg_2), -435f, arg_0, Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(33778u, 3432u, arg_0) | vec3<u32>(62945u, 94611u, 38460u), firstLeadingBit(max(vec3<u32>(1u, 899u, u_input.a), vec3<u32>(arg_0, 1u, 4294967295u)))), _wgslsmith_f_op_f32(-arg_2.b) != _wgslsmith_f_op_f32(select(161f, -468f, var_1.x)), arg_2));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(ceil(776f)), _wgslsmith_f_op_f32(-arg_2.a.x), 1f))), var_2.a.a.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mult_vec3_u32(arg_0, arg_0), false, arg_1);
    var_0 = Struct_2(_wgslsmith_clamp_vec3_u32(var_0.a, arg_0, max(vec3<u32>(4294967295u, arg_0.x, u_input.a), vec3<u32>(arg_2.e.a.x, arg_2.d, arg_0.x))) | ~(~vec3<u32>(arg_0.x, 1u, arg_2.e.a.x)), true, arg_1);
    let var_1 = arg_2.b;
    var var_2 = abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(1i, 1i, 1i, 1i), -(~vec4<i32>(1i, 1i, 2147483647i, -54282i)), vec4<bool>(!var_1.b, !arg_2.b.b, true, var_0.a.x <= var_1.a.x))));
    global0 = any(!vec3<bool>(all(vec2<bool>(arg_2.e.b, false)), !var_1.b, -1i != _wgslsmith_dot_vec2_i32(var_2.xz, vec2<i32>(27100i, 41653i))));
    return var_1.c;
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_3(func_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_sub_u32(25394u, u_input.a), u_input.a), ~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(~4294967295u, _wgslsmith_div_u32(u_input.a, 4294967295u), ~1u)), func_2(~0u, _wgslsmith_div_vec3_i32(-vec3<i32>(-9580i, -12054i, -15327i), vec3<i32>(1i, -3378i, -2147483647i)), Struct_1(vec4<f32>(529f, 397f, -741f, 498f), 1000f), vec3<bool>(true, true, true)), Struct_3(func_2(~4294967295u, _wgslsmith_sub_vec3_i32(vec3<i32>(-16578i, -2147483647i, -1i), vec3<i32>(-10301i, -16350i, 1i)), Struct_1(vec4<f32>(652f, -372f, 1000f, 912f), 386f), vec3<bool>(true, true, true)), Struct_2(~vec3<u32>(u_input.a, u_input.a, 4294967295u), any(vec4<bool>(false, true, false, false)), func_2(u_input.a, vec3<i32>(-52473i, -4549i, 2147483647i), Struct_1(vec4<f32>(-396f, 393f, 761f, 1000f), -886f), vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -958f) * 1f), ~u_input.a, Struct_2(~vec3<u32>(0u, u_input.a, 1u), all(vec4<bool>(true, false, false, true)), func_2(u_input.a, vec3<i32>(24159i, -23682i, -8142i), Struct_1(vec4<f32>(-465f, -666f, -1452f, 395f), -1236f), vec3<bool>(true, false, false))))), Struct_2(vec3<u32>(u_input.a, _wgslsmith_mult_u32(11625u, firstLeadingBit(u_input.a)), 4294967295u), any(vec3<bool>(true, all(vec3<bool>(true, false, true)), all(vec4<bool>(false, false, false, true)))), func_4(_wgslsmith_sub_vec3_u32(min(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(67279u, u_input.a, 6163u)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(643f, 1121f, -544f, -750f)), _wgslsmith_f_op_f32(f32(-1f) * -1479f)), Struct_3(Struct_1(vec4<f32>(-1945f, 702f, 1000f, 2305f), -1263f), Struct_2(vec3<u32>(u_input.a, u_input.a, 4294967295u), false, Struct_1(vec4<f32>(1463f, -554f, -1634f, -1371f), -1000f)), 1f, u_input.a >> (66691u % 32u), Struct_2(vec3<u32>(u_input.a, u_input.a, 1u), false, Struct_1(vec4<f32>(-372f, 327f, 105f, 1000f), 394f))))), -838f, ~min(~(~33495u), u_input.a), Struct_2(abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, 28377u))), all(vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2523f, 200f, -666f, 237f)), -352f)));
    global0 = any(vec2<bool>(false, false)) | !any(!select(vec4<bool>(var_0.b.b, false, false, false), vec4<bool>(var_0.b.b, false, false, var_0.e.b), vec4<bool>(var_0.e.b, var_0.e.b, true, false)));
    let var_1 = var_0.e;
    let var_2 = Struct_2(abs(select(_wgslsmith_mult_vec3_u32(~var_0.b.a, var_0.b.a), _wgslsmith_sub_vec3_u32(abs(var_1.a), var_1.a), true)), !var_1.b, var_0.e.c);
    global0 = false;
    return vec2<u32>(~var_1.a.x, firstTrailingBit(select(1u, _wgslsmith_sub_u32(var_0.e.a.x, var_2.a.x), true) >> (4294967295u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(0i >= (-15365i >> (u_input.a % 32u)));
    global0 = any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), any(vec2<bool>(true, false))), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), true));
    var var_1 = ~_wgslsmith_mod_i32(-abs(abs(49231i)), _wgslsmith_sub_i32(abs(i32(-1i) * -1i), -1i));
    var var_2 = vec2<u32>(u_input.a & max(96140u, _wgslsmith_mod_u32(1u, 4294967295u)), u_input.a);
    var_2 = ~func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -824f), abs(-1i), vec4<u32>(0u, var_2.x, 19972u, var_2.x));
}

