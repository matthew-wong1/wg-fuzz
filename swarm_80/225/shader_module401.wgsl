struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    global0 = true;
    var var_0 = reverseBits(vec3<u32>(~firstTrailingBit(0u) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(15327u, 4294967295u, 0u), ~vec3<u32>(1u, 0u, 8336u)) % 32u), ~35864u, 0u));
    var var_1 = abs(u_input.a.x);
    var var_2 = !any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))));
    let var_3 = !vec3<bool>(!select(true, true, true), !any(vec2<bool>(true, true)) && true, (var_0.x >= ~var_0.x) || all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))));
    return !select(var_3, var_3, true);
}

fn func_2(arg_0: vec4<bool>) -> vec4<i32> {
    var var_0 = all(arg_0.yz);
    global0 = select(arg_0.x, true, ~(-u_input.a.x) > -(~min(u_input.a.x, u_input.a.x)));
    var var_1 = arg_0.x;
    var var_2 = Struct_1(func_3(), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a.x, 1i), min(u_input.a.x, -11749i)) & 1i, -2147483647i, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(-274i, u_input.a.x, 60507i, u_input.a.x), vec4<i32>(1i, u_input.a.x, 2147483647i, 1i)) ^ u_input.a.x), _wgslsmith_mult_i32(select(u_input.a.x, u_input.a.x | u_input.a.x, all(arg_0.ywx)), u_input.a.x)), arg_0, vec3<bool>(true && arg_0.x, any(vec4<bool>(any(arg_0.zyz), arg_0.x, !arg_0.x, true)), func_3().x), false);
    let var_3 = max(abs(1u), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(25753u, 66832u), vec2<u32>(1u, 1u)), ~select(~vec2<u32>(4294967295u, 1u), ~vec2<u32>(7571u, 6645u), select(arg_0.xx, arg_0.xy, vec2<bool>(arg_0.x, true)))));
    return _wgslsmith_clamp_vec4_i32(-(-vec4<i32>(-44677i, var_2.b.x, u_input.a.x, var_2.b.x) | (vec4<i32>(u_input.a.x, 2147483647i, var_2.b.x, -15617i) >> (~vec4<u32>(44501u, 0u, var_3, var_3) % vec4<u32>(32u)))), var_2.b, _wgslsmith_clamp_vec4_i32(-countOneBits(-var_2.b), var_2.b, abs(var_2.b)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = 1u;
    var var_1 = arg_0;
    let var_2 = arg_0.b.zwx ^ abs(vec3<i32>(_wgslsmith_mod_i32(min(37779i, -2147483647i), u_input.a.x), -2147483647i, min(36896i, _wgslsmith_mod_i32(arg_0.b.x, 2147483647i))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(393f, -1732f, -1074f, -1000f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-125f, -1017f, 1881f, -795f) - vec4<f32>(-2691f, -1886f, -166f, 997f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-267f, 1253f, -1101f, -517f))))));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * -1137f) * var_3.x))), arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x))), var_2.x);
    return var_4.b;
}

fn func_1() -> i32 {
    global0 = true;
    let var_0 = func_4(Struct_1(vec3<bool>(true, true, true), (func_2(vec4<bool>(false, false, false, true)) ^ -vec4<i32>(-13854i, u_input.a.x, u_input.a.x, u_input.a.x)) >> (~countOneBits(vec4<u32>(4294967295u, 1u, 100649u, 1u)) % vec4<u32>(32u)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, func_3().x, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, false)))), vec3<bool>(true, any(vec3<bool>(true, true, true)), true), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x) <= (u_input.a.x << (44759u % 32u))), vec3<bool>(any(vec2<bool>(true, true)), false, true), ~vec4<u32>(30253u, 1u, _wgslsmith_div_u32(~0u, ~0u), select(20183u, 4294967295u, false) << (_wgslsmith_add_u32(35776u, 12620u) % 32u)));
    let var_1 = func_4(Struct_1(select(func_4(Struct_1(vec3<bool>(var_0.e, false, var_0.e), var_0.b, var_0.c, vec3<bool>(true, true, false), var_0.c.x), select(vec3<bool>(var_0.d.x, true, var_0.e), vec3<bool>(var_0.e, var_0.d.x, false), var_0.d.x), vec4<u32>(1u, 1u, 1u, 1u)).c.yyx, !(!var_0.d), !all(var_0.d)), -var_0.b, vec4<bool>(any(var_0.c.wxz), false, var_0.c.x, var_0.e), select(var_0.d, select(vec3<bool>(true, false, var_0.a.x), var_0.d, true), var_0.d.x && var_0.a.x), false), func_3(), ~(~vec4<u32>(1u, 16196u, 4294967295u, 85581u)) ^ vec4<u32>(~select(4294967295u, 0u, true), 4294967295u, ~45247u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u))));
    global0 = true;
    global0 = var_1.e;
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global0 = !any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), true));
    var var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~4085i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), firstLeadingBit(u_input.a.x)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 41812u), vec3<u32>(4294967295u, 4294967295u, 1u)) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, u_input.a.x, ~(-47333i))), _wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(u_input.a.x & 32680i), _wgslsmith_add_i32(u_input.a.x & u_input.a.x, func_1()), abs(i32(-1i) * -37896i)), vec3<i32>(2147483647i, func_2(vec4<bool>(true, true, true, true)).x, select(_wgslsmith_add_i32(u_input.a.x, -1i), _wgslsmith_clamp_i32(2147483647i, 2147483647i, 0i), true))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(666f, -833f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1058f, -622f))))))), Struct_1(select(func_4(Struct_1(vec3<bool>(false, true, false), vec4<i32>(var_0.x, var_0.x, -35011i, 2147483647i), vec4<bool>(false, true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec4<u32>(1u, 1u, 1u, 1u)).a, vec3<bool>(true, true, true), func_3().x), vec4<i32>(var_0.x, ~_wgslsmith_mult_i32(-39249i, u_input.a.x), var_0.x, i32(-1i) * -30151i), select(vec4<bool>(true, select(false, true, true), true, all(vec2<bool>(false, false))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true), true), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !any(vec2<bool>(true, true))), func_4(Struct_1(vec3<bool>(true, true, true), select(firstTrailingBit(vec4<i32>(var_0.x, -1i, 1i, var_0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, -44781i, u_input.a.x, var_0.x), vec4<i32>(var_0.x, 18938i, var_0.x, var_0.x)), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, any(vec3<bool>(true, false, true)) || true, all(vec2<bool>(true, true))), select(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(45304u, 60908u, 1u, 4728u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 66701u, 0u, 24223u), vec4<u32>(30778u, 1u, 4294967295u, 4294967295u))), true)));
    var_0 = ~(~abs(reverseBits(_wgslsmith_add_vec3_i32(var_1.b.b.yyx, vec3<i32>(var_1.b.b.x, -13177i, u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u), !(!var_1.c.d.zy)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.a, vec2<f32>(var_1.a.x, 287f), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(var_1.a - vec2<f32>(var_1.a.x, var_1.a.x)))))), u_input.a.x, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(28465u, ~36283u, firstTrailingBit(41538u), 0u)), select(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(48910u, 25498u, 53938u), vec3<u32>(4294967295u, 38399u, 1u)), ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 30337u), vec3<u32>(110812u, 57656u, 65939u))), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(66414u, 4294967295u, 1u), vec3<u32>(104438u, 1u, 0u), vec3<u32>(1u, 1u, 1u))), select(true, false, var_1.b.c.x)));
}

