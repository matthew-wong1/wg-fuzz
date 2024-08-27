struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~(select(u_input.e.ww, u_input.d.yz, vec2<bool>(false, true)) << (~vec2<u32>(u_input.c, 12701u) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(countOneBits(~vec2<i32>(28396i, -6292i)), vec2<i32>(-u_input.b.x, i32(-1i) * -21493i))), reverseBits(~(~arg_3.a.b.xy)));
    var var_1 = arg_3;
    let var_2 = max(select(abs(vec4<u32>(1u, ~arg_1, arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, u_input.c, arg_1), vec3<u32>(33902u, arg_1, 51708u)))), min(vec4<u32>(~0u, select(26751u, arg_1, false), _wgslsmith_mult_u32(u_input.c, 22615u), max(41862u, arg_1)), firstLeadingBit(vec4<u32>(arg_1, u_input.c, arg_1, u_input.c)) >> (vec4<u32>(1u, 0u, arg_1, 38642u) % vec4<u32>(32u))), false), _wgslsmith_mod_vec4_u32(min(vec4<u32>(~u_input.c, arg_1, ~27886u, 1u), vec4<u32>(~arg_1, 4294967295u >> (arg_1 % 32u), u_input.c, ~arg_1)), _wgslsmith_mult_vec4_u32(vec4<u32>(19494u, min(u_input.c, 4294967295u), abs(u_input.c), arg_1), ~vec4<u32>(arg_1, u_input.c, u_input.c, 4294967295u))));
    var_1 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2.x, 296f), -1768f, true)), _wgslsmith_f_op_f32(arg_2.x + -1293f), 514f), vec3<i32>(arg_3.b.b.x, 0i, 40682i), 1f), arg_3.b);
    var_1 = Struct_3(Struct_2(arg_3.a.a, vec3<i32>(_wgslsmith_sub_i32(63161i, firstTrailingBit(arg_3.a.b.x)), _wgslsmith_dot_vec2_i32(var_1.a.b.yy << (vec2<u32>(96994u, u_input.c) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(28494i, var_1.a.b.x), vec2<i32>(arg_3.b.b.x, u_input.e.x))), _wgslsmith_add_i32(-14327i, _wgslsmith_dot_vec2_i32(u_input.b, u_input.e.xx))), -355f), Struct_2(_wgslsmith_f_op_vec3_f32(-arg_3.b.a), abs(vec3<i32>(arg_0, var_0, var_1.a.b.x)) ^ -(~u_input.a.wwy), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b.a.x * _wgslsmith_f_op_f32(select(var_1.b.a.x, arg_3.a.a.x, false))), _wgslsmith_f_op_f32(-1606f * _wgslsmith_f_op_f32(f32(-1f) * -736f)), true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.a.x - _wgslsmith_f_op_f32(386f * _wgslsmith_f_op_f32(f32(-1f) * -262f)))) * _wgslsmith_f_op_f32(f32(-1f) * -231f));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.c.b.a.x);
    let var_1 = Struct_2(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1453f * -2239f)) * _wgslsmith_f_op_f32(-arg_0.c.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(i32(-1i) * -8447i, arg_0.b.x, vec4<f32>(1091f, arg_0.c.b.a.x, arg_0.c.a.c, arg_0.c.b.c), arg_0.c)))), vec3<i32>(~66074i, -2147483647i, ~5986i), _wgslsmith_f_op_f32(max(733f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -944f), arg_0.c.a.c))));
    var_0 = var_1.a.x;
    var_0 = _wgslsmith_f_op_f32(1258f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1444f)), _wgslsmith_f_op_f32(round(var_1.c))));
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(365f))));
}

fn func_1() -> Struct_1 {
    var var_0 = firstTrailingBit(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(22530i, u_input.b.x) & _wgslsmith_add_vec2_i32(u_input.a.xx, vec2<i32>(u_input.b.x, 9991i))), abs(~vec2<i32>(-1i, 7316i) >> (_wgslsmith_add_vec2_u32(vec2<u32>(64937u, u_input.c), vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u)))));
    let var_1 = u_input.d.wy;
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(127f, -680f), _wgslsmith_f_op_f32(func_2(Struct_5(false, vec2<u32>(u_input.c, u_input.c), Struct_3(Struct_2(vec3<f32>(720f, 1284f, -814f), vec3<i32>(var_1.x, var_0.x, var_1.x), -618f), Struct_2(vec3<f32>(-1000f, -812f, 233f), vec3<i32>(var_0.x, 1i, -8832i), -1000f))), Struct_1(u_input.c))), -1663f))), u_input.d.xwy, 756f), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -236f, -179f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-501f, -1396f, -501f))), abs(~(vec3<i32>(var_0.x, -2147483647i, -23894i) << (vec3<u32>(41317u, u_input.c, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-185f, 805f)) - _wgslsmith_f_op_f32(round(-3891f)))));
    var_0 = var_1;
    let var_3 = -1i;
    return Struct_1(u_input.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = firstTrailingBit(countOneBits(u_input.e.xy));
    return Struct_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.a, u_input.c), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(u_input.c), func_1());
    let var_1 = vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1896f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1574f, -238f))) * -354f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-257f * 879f))) * _wgslsmith_f_op_f32(-519f - 221f)), true)));
    var var_2 = 1304f;
    let var_3 = u_input.d;
    var var_4 = var_0;
    let var_5 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, _wgslsmith_clamp_u32(1u, 22032u, 1u) | abs(43946u)), ~vec2<u32>(max(1u, u_input.c), ~26708u)), vec2<u32>(~(~firstTrailingBit(35777u)), ~var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, vec2<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.e.x), vec3<i32>(-15705i, var_3.x, -2147483647i))), ~abs(var_3.x) ^ -var_3.x), 22112i);
}

