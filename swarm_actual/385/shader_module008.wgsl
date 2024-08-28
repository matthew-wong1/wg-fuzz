struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = -(max(arg_0.d.b, ~arg_0.d.b) >> (_wgslsmith_mod_u32(u_input.c, u_input.d) % 32u)) >= arg_0.d.a;
    var_0 = arg_0.e <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -675f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b + arg_0.e))), any(!vec3<bool>(true, arg_0.d.d.x, true))))));
    var_0 = true;
    var_0 = arg_0.d.d.x;
    var var_1 = Struct_1(u_input.a, -2147483647i, arg_0.d.c, select(!vec3<bool>(true, !arg_0.d.d.x, false), vec3<bool>(arg_0.d.d.x & arg_0.d.d.x, true, ~1u > _wgslsmith_sub_u32(arg_0.d.c.x, arg_0.c)), arg_0.d.d.x));
    return var_1.a;
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(-(~(~vec3<i32>(10427i, 3156i, u_input.b) ^ vec3<i32>(14070i, 1i, u_input.a))), _wgslsmith_clamp_vec3_i32(reverseBits(~vec3<i32>(u_input.b, -15124i, u_input.b)), ~abs(vec3<i32>(u_input.b, -21117i, u_input.a)), abs(vec3<i32>(u_input.b, u_input.b, 0i)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(6945i, u_input.b, 36163i))) | vec3<i32>(u_input.b, -2147483647i, ~u_input.a), vec3<i32>(~u_input.b, ~u_input.b, u_input.b));
    let var_1 = Struct_1(_wgslsmith_clamp_i32(-63406i, firstTrailingBit(2147483647i), min(40781i, ~(-1i))), max(-abs(~21565i), var_0.x), _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(arg_0, 1u, 1u, arg_0)), vec4<u32>(arg_0 >> (arg_0 % 32u), arg_0, _wgslsmith_clamp_u32(1u, arg_0, arg_0), arg_0)) << (_wgslsmith_mod_vec4_u32(~(vec4<u32>(1u, 4294967295u, 20188u, 1u) ^ vec4<u32>(u_input.c, 121758u, 4294967295u, 4294967295u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 4294967295u, arg_0, u_input.d), vec4<u32>(3253u, arg_0, 4294967295u, u_input.d)), ~vec4<u32>(1u, 42195u, arg_0, u_input.c), arg_1.x <= 1104f)) % vec4<u32>(32u)), !select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), u_input.b == (var_0.x | u_input.a)));
    var var_2 = var_1.d;
    var_2 = !var_1.d;
    let var_3 = var_1;
    return u_input.d >> (u_input.d % 32u);
}

fn func_1() -> vec4<u32> {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.b, select(u_input.b, 9532i, min(u_input.c, u_input.c) > 71635u), u_input.a ^ u_input.b, u_input.a), ~select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 36064i, -27873i, u_input.a), ~vec4<i32>(-20869i, 9140i, u_input.a, u_input.b)), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-23568i, u_input.b, 2147483647i, -48130i), vec4<i32>(u_input.b, u_input.a, -32645i, -1i))), vec4<bool>(true, all(vec3<bool>(true, false, false)), true, select(false, true, true))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(1385f)), _wgslsmith_f_op_f32(1000f - 2603f), _wgslsmith_dot_vec3_u32(~select(select(vec3<u32>(76083u, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, 0u), true), vec3<u32>(u_input.c, u_input.c, 0u), true), reverseBits(~abs(vec3<u32>(u_input.c, 1u, 19402u)))), Struct_1(~(~u_input.a) & ~func_2(Struct_2(-594f, -1450f, 86847u, Struct_1(0i, u_input.a, vec4<u32>(u_input.d, u_input.c, u_input.d, 77984u), vec3<bool>(false, false, false)), 992f)), _wgslsmith_mult_i32(u_input.a, var_0.x), vec4<u32>(func_3(u_input.c, vec3<f32>(-309f, 1000f, 1014f)), 90411u, 4294967295u, u_input.d) << ((~vec4<u32>(u_input.d, 25521u, 0u, u_input.c) ^ min(vec4<u32>(40089u, u_input.d, 0u, u_input.c), vec4<u32>(u_input.d, 1u, 0u, 1u))) % vec4<u32>(32u)), vec3<bool>(false, true, select(all(vec3<bool>(true, false, false)), any(vec3<bool>(false, true, false)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-152f)))) + _wgslsmith_f_op_f32(-286f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1281f)))));
    let var_2 = all(vec4<bool>(!var_1.d.d.x, any(vec2<bool>(true, true)), any(var_1.d.d.zz), true));
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_1.b)))), var_1.c, var_1.d, var_1.b);
    let var_3 = var_1.d.c.xz;
    return ~(~(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(731u, u_input.d, var_3.x, 21519u)), var_1.d.c) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 31529u, 40594u, 1u), var_1.d.c) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c & u_input.c;
    var var_1 = Struct_1(_wgslsmith_sub_i32(-16i, 12265i), u_input.b, func_1(), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), true, true), !vec3<bool>(false, all(vec4<bool>(true, false, true, false)), false)));
    let var_2 = Struct_1(1i, -9199i, vec4<u32>(var_1.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d << (u_input.d % 32u), 0u, ~1380u), _wgslsmith_clamp_vec3_u32(vec3<u32>(23743u, u_input.c, 0u), vec3<u32>(1u, 0u, 4294967295u), _wgslsmith_sub_vec3_u32(var_1.c.wyx, var_1.c.www))), firstTrailingBit(u_input.d), ~(~0u)), select(vec3<bool>(true, false, var_1.d.x), var_1.d, _wgslsmith_add_i32(func_2(Struct_2(-675f, 1993f, 4294967295u, Struct_1(2147483647i, u_input.b, var_1.c, var_1.d), 580f)), var_1.b) == u_input.a));
    var var_3 = _wgslsmith_mult_i32(2147483647i, u_input.a);
    var var_4 = !var_1.d.x;
    var_1 = var_2;
    var var_5 = !vec4<bool>(var_1.d.x, false, all(vec3<bool>(true, true, true)), (-1833i >= ~var_2.a) | any(select(vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, var_1.d.x), vec4<bool>(false, var_1.d.x, true, true), true)));
    let var_6 = select(vec4<bool>(0i > (i32(-1i) * -var_1.b), true, true, var_5.x), !vec4<bool>(firstLeadingBit(4294967295u) == _wgslsmith_clamp_u32(var_2.c.x, 1u, var_2.c.x), _wgslsmith_f_op_f32(floor(-1000f)) >= _wgslsmith_f_op_f32(-455f - -1776f), all(var_2.d.xx), true), select(select(select(vec4<bool>(true, var_2.d.x, true, var_1.d.x), select(vec4<bool>(false, true, false, var_5.x), vec4<bool>(var_5.x, var_5.x, false, var_5.x), var_2.d.x), var_5.x), select(vec4<bool>(false, var_2.d.x, false, var_1.d.x), vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, var_2.d.x), all(var_5.wz)), !vec4<bool>(false, var_1.d.x, var_2.d.x, var_1.d.x)), !select(vec4<bool>(var_5.x, var_5.x, false, false), select(vec4<bool>(var_2.d.x, false, var_2.d.x, false), vec4<bool>(false, var_1.d.x, false, var_1.d.x), vec4<bool>(var_1.d.x, true, var_2.d.x, false)), !vec4<bool>(var_1.d.x, false, true, false)), !(!(var_5.x && var_2.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(2147483647i), func_1().x & 48680u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-227f * 1918f), _wgslsmith_f_op_f32(abs(1018f)), _wgslsmith_f_op_f32(-1106f - -2437f)) - vec3<f32>(_wgslsmith_div_f32(1000f, 863f), -671f, -441f)))));
}

