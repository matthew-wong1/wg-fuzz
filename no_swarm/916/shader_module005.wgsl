struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: bool) -> bool {
    var var_0 = !arg_1;
    var var_1 = Struct_1(u_input.c, _wgslsmith_mod_u32(arg_0, ~u_input.b.x) > _wgslsmith_div_u32(~(~1u), 13883u), u_input.b.xx);
    var var_2 = u_input.c.x;
    var_2 = 0i;
    return var_1.b;
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<bool>(true, (_wgslsmith_dot_vec2_u32(u_input.b.yw >> (u_input.b.xy % vec2<u32>(32u)), vec2<u32>(u_input.a, 1u)) <= ~(~43610u)) == false);
    var_0 = !vec2<bool>(var_0.x, func_3(~arg_0 ^ u_input.a, any(vec4<bool>(true, var_0.x, true, var_0.x))));
    var var_1 = vec2<i32>(abs(u_input.c.x), _wgslsmith_dot_vec2_i32(select(countOneBits(vec2<i32>(u_input.c.x, u_input.c.x)), -vec2<i32>(u_input.c.x, 39816i), vec2<bool>(-1805f <= arg_1, var_0.x)), _wgslsmith_sub_vec2_i32(u_input.c, -u_input.c)));
    var_1 = vec2<i32>(_wgslsmith_clamp_i32(~1i, _wgslsmith_dot_vec3_i32(-(vec3<i32>(34379i, 2147483647i, var_1.x) ^ vec3<i32>(-2147483647i, -1i, 2147483647i)), reverseBits(firstTrailingBit(vec3<i32>(-1i, var_1.x, var_1.x)))), u_input.c.x), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-6452i), select(var_1.x, u_input.c.x, true), firstTrailingBit(-5949i)), ~vec3<i32>(-2147483647i, u_input.c.x, -2147483647i))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, -1581f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - 1314f))), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))))));
    return Struct_1(u_input.c, all(vec3<bool>(true, true, true)), firstLeadingBit(u_input.b.yx));
}

fn func_1(arg_0: bool, arg_1: i32) -> vec4<i32> {
    let var_0 = -u_input.c.x;
    let var_1 = Struct_2(-1335f, func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(~16909u, 0u), vec2<u32>(abs(u_input.b.x), u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1208f, -460f), -152f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1753f - -424f)))), Struct_1(func_2(u_input.a >> (min(u_input.b.x, 32603u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 224f) - _wgslsmith_f_op_f32(f32(-1f) * -439f))).a, abs(firstLeadingBit(u_input.a)) >= ~(~0u), ~(~vec2<u32>(u_input.a, u_input.a)) << (_wgslsmith_mod_vec2_u32(~u_input.b.xw, max(u_input.b.zx, vec2<u32>(u_input.b.x, 4889u))) % vec2<u32>(32u))), func_2(1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -398f))), 2325f)), func_2(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) * _wgslsmith_f_op_f32(-620f + _wgslsmith_f_op_f32(step(1670f, -834f))))));
    var var_2 = var_1.a;
    return _wgslsmith_mult_vec4_i32(vec4<i32>(~(-_wgslsmith_div_i32(var_0, -1i)), _wgslsmith_sub_i32(reverseBits(reverseBits(u_input.c.x)), ~(~(-6913i))), -2147483647i, 1i), -firstTrailingBit(abs(vec4<i32>(u_input.c.x, arg_1, arg_1, u_input.c.x) | vec4<i32>(-39702i, arg_1, var_0, -25326i))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_u32(~reverseBits(~(u_input.b & vec4<u32>(arg_1.x, 128134u, 1u, arg_2.c.c.x))), _wgslsmith_mod_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b | arg_1, arg_1), ~(~arg_1))));
    var var_1 = _wgslsmith_mult_i32(u_input.c.x << (~(~_wgslsmith_div_u32(arg_2.e.c.x, 60234u)) % 32u), -15313i);
    var var_2 = arg_2.e;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(1000f)), func_2(arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.a - -857f)))), Struct_1(~(-vec2<i32>(u_input.c.x, 1i)), true, ~_wgslsmith_clamp_vec2_u32(min(arg_2.e.c, arg_1.xz), vec2<u32>(0u, 14993u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0, 23469u), vec2<u32>(49427u, 1u)))), func_2(~0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.a)))), func_2(_wgslsmith_dot_vec3_u32(arg_1.ywx & vec3<u32>(arg_2.d.c.x, var_2.c.x, 0u), ~arg_1.zzx) >> ((78027u | firstTrailingBit(var_2.c.x)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(-358f * arg_2.a)))));
    var var_4 = 1u;
    return -1656f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(func_4(_wgslsmith_add_vec4_i32(max(func_1(false, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(37270i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-19650i, u_input.c.x, u_input.c.x, 2147483647i))), vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, -12783i), 15959i, 1i << (u_input.a % 32u), ~(-19320i))), ~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 18164u)) >> ((~u_input.b & u_input.b) % vec4<u32>(32u)), Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, -479f))), func_2(u_input.b.x & u_input.a, _wgslsmith_f_op_f32(min(-430f, -614f))), func_2(1u, _wgslsmith_f_op_f32(ceil(341f))), Struct_1(u_input.c, true, ~vec2<u32>(u_input.b.x, 30185u)), Struct_1(u_input.c, all(vec3<bool>(false, true, true)), u_input.b.xw ^ u_input.b.zx)))), Struct_1(func_1(!(2037u != u_input.a), u_input.c.x).yw, false, _wgslsmith_div_vec2_u32(u_input.b.yx, u_input.b.zx)), Struct_1(select(u_input.c, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, 8657i), select(vec2<i32>(-2147483647i, u_input.c.x), u_input.c, true)), vec2<bool>(true, true)), true, select(vec2<u32>(_wgslsmith_mult_u32(0u, u_input.a), ~u_input.a), ~(~vec2<u32>(u_input.a, u_input.b.x)), vec2<bool>(true, true))), Struct_1(vec2<i32>(-29209i, -1i), !any(vec2<bool>(false, false)), ~vec2<u32>(1u, 1u)), func_2(max(min(~487u, 17010u ^ u_input.b.x), abs(29089u)), -956f));
    let var_1 = vec3<bool>(true, var_0.b.b, var_0.b.b);
    var var_2 = func_2(~0u, var_0.a);
    let var_3 = var_0.c;
    var_2 = Struct_1(~(~_wgslsmith_mod_vec2_i32(abs(var_0.e.a), var_0.c.a)), true, _wgslsmith_clamp_vec2_u32(vec2<u32>(abs(1u), 1u), var_2.c, ~(~(~vec2<u32>(var_3.c.x, var_3.c.x)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(-859f, -1000f), _wgslsmith_f_op_f32(-778f - _wgslsmith_f_op_f32(-var_0.a)), 879f, var_0.a), vec4<f32>(var_0.a, _wgslsmith_f_op_f32(ceil(403f)), -342f, _wgslsmith_div_f32(-1912f, var_0.a))));
    var_2 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(~reverseBits(var_0.e.a), vec2<i32>(-var_2.a.x, var_3.a.x ^ var_0.b.a.x)), ~_wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(var_0.e.a.x, -72951i))), any(!vec3<bool>(var_0.b.b, true, true)) == !func_2(u_input.b.x, -1000f).b, ~u_input.b.wx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(1u, 1u), u_input.c, _wgslsmith_mod_vec3_u32(u_input.b.yxy, abs(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(50883u, 23167u, var_0.c.c.x), vec3<u32>(var_3.c.x, 67152u, u_input.b.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(72357u, 4294967295u, 1306u), u_input.b.wzx)))), select(~_wgslsmith_div_u32(var_0.b.c.x, 0u) | 4294967295u, _wgslsmith_div_u32(var_0.c.c.x, ~(1u << (var_2.c.x % 32u))), false), reverseBits(34250u));
}

