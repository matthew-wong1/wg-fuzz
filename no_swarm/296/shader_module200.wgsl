struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> Struct_3 {
    return Struct_3(true, ~vec4<u32>(~1u, ~_wgslsmith_clamp_u32(1u, 0u, 1u), abs(countOneBits(0u)), _wgslsmith_add_u32(1u, ~46088u)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(all(vec4<bool>(false, false, true, true)), false, true, select(true, false, false))), Struct_2(80845u, abs(_wgslsmith_sub_u32(1u, select(4294967295u, 48368u, false))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-375f, -880f)), vec2<f32>(-239f, -137f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(163f, 1581f)), _wgslsmith_f_op_f32(1370f - -982f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1534f)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), !(true & (u_input.a.x <= u_input.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(637f, 103f)) + vec2<f32>(-161f, 1486f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-193f * 345f) + -1000f), _wgslsmith_f_op_f32(trunc(1450f)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true), true)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: i32) -> f32 {
    var var_0 = func_2().d;
    let var_1 = func_2().d;
    let var_2 = Struct_4(!var_1.c.d, u_input.a.x, Struct_3(!var_0.e.e | true, vec4<u32>(~var_1.a, var_1.a, ~0u, 1u) & _wgslsmith_mult_vec4_u32(abs(vec4<u32>(14310u, 47624u, var_0.a, 4294967295u)), vec4<u32>(var_0.b, var_0.b, 36752u, var_1.b)), select(!(!vec4<bool>(var_1.c.d.x, var_1.d, true, false)), vec4<bool>(true, false, !var_0.e.d.x, var_0.c.d.x), select(select(vec4<bool>(var_0.e.e, false, false, true), vec4<bool>(false, var_0.e.d.x, true, var_0.d), vec4<bool>(true, var_0.d, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.e.e, true, var_0.d, var_0.e.e), vec4<bool>(false, false, true, false)), false)), func_2().d), var_1.e.c);
    var_0 = Struct_2(19726u, 28848u, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.d.c.a.x, var_0.e.c) * _wgslsmith_div_vec2_f32(vec2<f32>(141f, -1661f), vec2<f32>(-747f, var_1.c.b))) + _wgslsmith_f_op_vec2_f32(var_1.c.a - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d, 1191f) + vec2<f32>(var_2.d, var_2.d)))), _wgslsmith_div_f32(-819f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) - var_2.d)), var_1.c.b, !vec2<bool>(any(vec4<bool>(var_2.a.x, false, var_0.c.d.x, var_0.d)), true), false), false, Struct_1(vec2<f32>(997f, 1004f), var_0.c.a.x, -772f, vec2<bool>(!var_2.c.d.d, true), true));
    var var_3 = (var_2.c.d.a | _wgslsmith_sub_u32(30245u, 25350u)) << (max(firstTrailingBit(_wgslsmith_mod_u32(~var_1.a, ~var_0.a)), ~max(4294967295u, _wgslsmith_div_u32(var_2.c.b.x, var_1.b))) % 32u);
    return var_0.e.a.x;
}

fn func_1() -> vec3<bool> {
    let var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(528f, 470f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1544f, var_0.d.c.c), vec2<f32>(var_0.d.e.c, 481f), vec2<bool>(true, false))))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1033f, _wgslsmith_f_op_f32(var_0.d.e.a.x + 3549f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(u_input.a.x, vec2<u32>(~77895u, 10541u), -u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.e.a.x)))), _wgslsmith_f_op_f32(func_3(-42384i, var_0.b.yz, i32(-1i) * -8616i)), vec2<bool>(true, all(vec3<bool>(false, false, true))), var_0.d.d);
    var var_2 = ~(~(vec3<u32>(80969u, var_0.d.a, 4294967295u) | vec3<u32>(var_0.d.b, var_0.d.a, 17923u))) << (var_0.b.yzw % vec3<u32>(32u));
    var var_3 = firstTrailingBit(max(abs(max(u_input.b.xzw & vec3<i32>(-1i, u_input.a.x, u_input.b.x), -u_input.b.zyw)), ~vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x) & (~vec3<i32>(u_input.a.x, u_input.b.x, u_input.b.x) ^ _wgslsmith_div_vec3_i32(u_input.b.wwy, u_input.b.wyx))));
    var var_4 = Struct_4(var_0.c.xz, 0i, func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d.e.b * -225f), -295f)) - _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-var_0.d.e.c)))));
    return !select(!(!vec3<bool>(var_1.d.x, var_0.a, var_1.e)), var_0.c.zzy, var_0.c.yzz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(all(func_1()), min(_wgslsmith_add_vec4_u32(vec4<u32>(77830u, 1568u, 55131u, 21111u) >> (firstTrailingBit(vec4<u32>(25455u, 4294967295u, 21259u, 1u)) % vec4<u32>(32u)), vec4<u32>(0u, abs(52235u), 0u, ~19598u)), func_2().b << (reverseBits(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))), vec4<bool>(true, !(u_input.b.x == _wgslsmith_mult_i32(u_input.a.x, 2147483647i)), true, (_wgslsmith_f_op_f32(917f - 291f) == _wgslsmith_f_op_f32(floor(1130f))) | true), func_2().d);
    var var_1 = ~var_0.b.x;
    var_1 = 1u;
    var var_2 = func_2();
    let var_3 = true;
    let var_4 = 39225i;
    var var_5 = Struct_4(var_2.c.xz, min(var_4, 0i), Struct_3(var_4 > _wgslsmith_add_i32(-57661i, var_4), vec4<u32>(52478u, var_2.d.b, var_0.d.b, max(~42033u, _wgslsmith_clamp_u32(var_0.d.a, 1u, var_0.b.x))), vec4<bool>(true, true, true, true), var_2.d), var_0.d.c.c);
    let var_6 = var_0.a;
    var_5 = Struct_4(var_0.c.xx, var_5.b, func_2(), var_2.d.e.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(u_input.a.x)), _wgslsmith_div_vec4_u32(var_0.b, vec4<u32>(var_5.c.d.a, 7286u, _wgslsmith_dot_vec3_u32(var_0.b.zwz, var_0.b.zxx), ~max(var_0.d.a, var_2.d.b))));
}

