struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: Struct_4,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> vec4<i32> {
    let var_0 = Struct_5(98089u, firstTrailingBit(vec4<u32>(countOneBits(89975u), arg_0.b.x, 90623u, ~arg_0.a)), Struct_4(_wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, u_input.a), countOneBits(-arg_0.c.a)), arg_1), all(select(vec3<bool>(true && arg_1, arg_0.d, arg_0.c.b), select(select(vec3<bool>(false, arg_1, arg_0.d), vec3<bool>(true, arg_0.c.b, arg_0.c.b), vec3<bool>(arg_0.c.b, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, arg_0.c.b, arg_0.d), vec3<bool>(false, arg_0.c.b, arg_0.c.b)), vec3<bool>(true, false, arg_0.c.b)), !select(vec3<bool>(arg_0.c.b, arg_0.d, arg_0.d), vec3<bool>(arg_1, arg_0.c.b, arg_1), vec3<bool>(false, false, arg_1)))));
    let var_1 = var_0.c;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f) - _wgslsmith_div_f32(-1022f, -248f)) + -2392f), -1422f)), -1038f, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(37229i, var_1.a), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, -2147483647i))) <= -31739i, max(vec3<i32>(~var_1.a, arg_0.c.a, var_1.a), countOneBits(select(vec3<i32>(arg_0.c.a, -2147483647i, -2147483647i), vec3<i32>(34497i, 2147483647i, -38084i), vec3<bool>(true, var_1.b, arg_0.d)))), _wgslsmith_f_op_f32(171f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(736f, 966f, false))))), Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1786f, 716f, -809f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-670f, 1000f, 591f)))))), -vec4<i32>(max(-750i, arg_0.c.a), -40862i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.a, -1i, arg_0.c.a, 6277i), vec4<i32>(var_1.a, arg_0.c.a, var_1.a, 7360i)), 1i), vec2<u32>(1u, 1u), Struct_1(var_1.a > reverseBits(var_1.a), vec3<i32>(7184i, u_input.a, ~var_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-447f * 148f), 638f)), !(!(!arg_1))), !all(select(vec2<bool>(true, true), !vec2<bool>(false, var_1.b), select(vec2<bool>(true, var_1.b), vec2<bool>(false, arg_0.d), arg_1))));
    var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + _wgslsmith_f_op_f32(var_2.c.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-130f)) - var_2.a))), var_2.c.c, var_2.c, var_2.d, true);
    let var_3 = all(vec3<bool>(!(~var_2.d.d.b.x <= u_input.a), true, (any(vec2<bool>(true, false)) || false) && var_1.b));
    return -var_2.d.b;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: bool, arg_3: u32) -> Struct_3 {
    var var_0 = ~func_3(Struct_5(arg_3, vec4<u32>(1u, ~4294967295u, firstLeadingBit(12709u), max(61788u, 11685u)), Struct_4(arg_0.a, false), any(select(vec4<bool>(arg_2, false, arg_0.b, false), vec4<bool>(true, true, true, false), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false)))), !(!all(vec4<bool>(arg_2, false, true, arg_0.b))));
    let var_1 = !(arg_0.a <= ~(-32674i | _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, arg_0.a), vec2<i32>(-17058i, var_0.x))));
    var var_2 = ~16669u;
    var_2 = ~0u;
    let var_3 = Struct_5(_wgslsmith_mod_u32(4294967295u, abs(firstTrailingBit(4294967295u)) | _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_1.zx, arg_1.zz), 25446u)), vec4<u32>(arg_1.x, _wgslsmith_div_u32(~arg_3, arg_3), 48788u, _wgslsmith_sub_u32(~select(69750u, 1u, arg_2), _wgslsmith_div_u32(arg_3, arg_3 << (arg_3 % 32u)))), Struct_4(arg_0.a, arg_0.b), true);
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, 831f))))), -269f, Struct_1(false, -var_0.yww, -1294f), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1691f) + _wgslsmith_f_op_f32(362f - -1450f)), -1768f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-707f - -1248f) - _wgslsmith_f_op_f32(ceil(1145f)))), vec4<i32>(arg_0.a, ~arg_0.a, 51420i, u_input.a), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 16194u, arg_1.x, arg_3), ~vec4<u32>(34159u, var_3.b.x, var_3.a, 4294967295u)), _wgslsmith_dot_vec4_u32(abs(var_3.b), var_3.b)), Struct_1(!any(vec2<bool>(var_3.c.b, var_1)), -countOneBits(vec3<i32>(var_0.x, u_input.a, 1i)), _wgslsmith_f_op_f32(floor(-567f))), !(!select(false, var_3.d, var_3.c.b))), all(!select(!vec3<bool>(var_3.c.b, var_3.c.b, arg_0.b), select(vec3<bool>(arg_0.b, var_1, arg_2), vec3<bool>(arg_2, var_3.d, false), arg_0.b), vec3<bool>(true, true, arg_2))));
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    let var_0 = u_input.b;
    global0 = ~(~(~u_input.b));
    var var_1 = func_2(Struct_4(arg_0.a, true), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b, _wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(var_0, u_input.b))), ~(~max(vec3<u32>(u_input.b, 34684u, 1u), vec3<u32>(var_0, var_0, 4294967295u)))), arg_0.b, ~_wgslsmith_dot_vec3_u32(~(vec3<u32>(11960u, 21058u, u_input.b) | vec3<u32>(var_0, 4294967295u, var_0)), ~vec3<u32>(0u, 1u, 95046u)));
    var var_2 = _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(firstLeadingBit(0u), (80817u << (var_0 % 32u)) ^ var_1.d.c.x, 4294967295u, 32487u << (_wgslsmith_mod_u32(42173u, var_1.d.c.x) % 32u))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0, 0u), _wgslsmith_dot_vec2_u32(var_1.d.c, vec2<u32>(var_0, 4294967295u))), ~(~u_input.b)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, var_1.d.c.x, var_0, 55393u)), vec4<u32>(firstLeadingBit(4294967295u), max(4294967295u, 40887u), ~4294967295u, ~var_1.d.c.x)), func_2(arg_0, vec3<u32>(0u, ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(25848u, 1u, var_1.d.c.x), vec3<u32>(u_input.b, var_1.d.c.x, 78161u))), false | select(false, true, arg_0.b), ~_wgslsmith_mod_u32(var_0, var_0)).d.c.x, 0u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -2524f)) - 1f));
    return func_2(arg_0, _wgslsmith_add_vec3_u32(var_2.yyw ^ ~var_2.xyw, vec3<u32>(_wgslsmith_mod_u32(var_1.d.c.x, countOneBits(var_1.d.c.x)), 23007u, 4294967295u)), false, var_1.d.c.x);
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_4 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_1.c.c, 300f), 500f, -727f))), arg_1.d.b, abs(~abs(vec2<u32>(14350u, 0u)) & _wgslsmith_add_vec2_u32(arg_1.d.c, _wgslsmith_div_vec2_u32(vec2<u32>(29262u, 4294967295u), vec2<u32>(arg_1.d.c.x, u_input.b)))), arg_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1249f)), arg_1.b) != -580f);
    let var_1 = arg_1;
    var_0 = Struct_2(var_0.a, arg_1.d.b, var_0.c, var_1.c, var_1.d.c.x < 29102u);
    let var_2 = _wgslsmith_f_op_f32(-var_1.d.d.c);
    let var_3 = abs(~select(firstLeadingBit(reverseBits(arg_1.d.c.x)), _wgslsmith_sub_u32(func_1(Struct_4(0i, false)).d.c.x, ~0u), true));
    return Struct_4(~var_0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.c + var_0.d.c)))) != arg_1.c.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(u_input.a, true);
    var var_1 = Struct_5(_wgslsmith_add_u32(2876u, u_input.b), ~(~vec4<u32>(u_input.b, ~u_input.b, ~u_input.b, 6556u)), func_4(u_input.a, func_1(Struct_4(var_0.a, 0u >= u_input.b))), all(vec3<bool>(true, any(!vec2<bool>(var_0.b, true)), true)));
    let var_2 = -(~(-select(vec4<i32>(-1i, var_0.a, 0i, 0i), vec4<i32>(u_input.a, 76792i, var_1.c.a, 22535i), vec4<bool>(false, var_1.c.b, var_1.d, true)))) ^ ~_wgslsmith_mult_vec4_i32(func_1(func_4(var_0.a, Struct_3(2108f, -942f, Struct_1(var_1.d, vec3<i32>(var_1.c.a, u_input.a, var_1.c.a), 219f), Struct_2(vec3<f32>(-1323f, -135f, 2368f), vec4<i32>(var_0.a, u_input.a, var_0.a, var_0.a), vec2<u32>(var_1.b.x, u_input.b), Struct_1(true, vec3<i32>(31141i, u_input.a, 2147483647i), -876f), var_1.d), false))).d.b, reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-8112i, var_1.c.a, var_0.a, 42497i), vec4<i32>(-2147483647i, var_1.c.a, 22000i, u_input.a))));
    var var_3 = var_1.b.x ^ 47314u;
    var_1 = Struct_5(_wgslsmith_div_u32(1u, ~(max(10063u, 0u) & var_1.a)), vec4<u32>(4294967295u, _wgslsmith_sub_u32(u_input.b, abs(~u_input.b)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(72218u, u_input.b & 52503u), u_input.b), u_input.b), func_4(u_input.a, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), -440f, Struct_1(true, var_2.ywz, -937f), func_2(func_4(var_2.x, Struct_3(1084f, 628f, Struct_1(var_1.d, var_2.yxy, 893f), Struct_2(vec3<f32>(-445f, -1403f, 899f), vec4<i32>(u_input.a, -31016i, u_input.a, var_1.c.a), vec2<u32>(u_input.b, var_1.a), Struct_1(var_1.d, vec3<i32>(0i, -2147483647i, 16945i), 1000f), var_1.c.b), var_1.d)), _wgslsmith_sub_vec3_u32(vec3<u32>(154795u, 42922u, u_input.b), var_1.b.yyy), var_1.b.x >= 63775u, _wgslsmith_mod_u32(u_input.b, var_1.a)).d, var_0.b)), true);
    var_0 = var_1.c;
    var var_4 = Struct_1(!(!var_1.c.b), var_2.xww, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(756f, 298f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zx, ~vec2<u32>(1u, min(func_1(var_1.c).d.c.x, var_1.b.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_4.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f * -329f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1224f + 1583f)))))));
}

