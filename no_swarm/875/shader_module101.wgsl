struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> i32 {
    return 1i;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = select(vec3<i32>(-_wgslsmith_div_i32(arg_3, u_input.c.x), func_3(Struct_1(415f, u_input.c.zy, vec4<bool>(true, true, true, true), ~vec2<u32>(0u, arg_0)), _wgslsmith_div_f32(-2250f, _wgslsmith_f_op_f32(f32(-1f) * -1557f)), u_input.c.x ^ ~1i, Struct_1(-1000f, abs(u_input.c.zz), select(vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), arg_1.x), vec2<u32>(arg_2, arg_0))), arg_3), u_input.c.zxy, select(arg_1, select(select(vec3<bool>(false, arg_1.x, false), vec3<bool>(true, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), vec3<bool>(any(vec2<bool>(true, arg_1.x)), all(vec3<bool>(arg_1.x, true, false)), select(false, true, false)), select(arg_1, vec3<bool>(arg_1.x, arg_1.x, true), all(vec3<bool>(false, false, true)))), arg_1.x));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1648f, _wgslsmith_f_op_f32(ceil(880f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1393f * 322f))), -_wgslsmith_clamp_vec2_i32(u_input.c.xw, -u_input.c.wz, u_input.c.yw ^ u_input.c.xz), vec4<bool>(select(arg_1.x, true, true) | false, true, arg_1.x || false, !arg_1.x), vec2<u32>(_wgslsmith_clamp_u32(u_input.a, 1u, 4294967295u), _wgslsmith_mod_u32(arg_2 << (4294967295u % 32u), 61287u))), Struct_1(-1366f, u_input.c.yy, select(select(vec4<bool>(true, false, arg_1.x, arg_1.x), vec4<bool>(false, true, true, false), vec4<bool>(false, false, arg_1.x, arg_1.x)), vec4<bool>(arg_1.x, arg_1.x == true, all(arg_1), true), vec4<bool>(true, true, true, true)), vec2<u32>(_wgslsmith_mult_u32(~40740u, ~arg_2), 1u)), Struct_1(-778f, abs(_wgslsmith_mult_vec2_i32(select(var_0.yx, vec2<i32>(arg_3, arg_3), arg_1.x), vec2<i32>(var_0.x, 1i))), vec4<bool>(arg_1.x | true, true, true, false), _wgslsmith_mult_vec2_u32(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, arg_2), vec2<u32>(arg_0, 54560u))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, arg_0), vec2<u32>(arg_2, 4294967295u) >> (vec2<u32>(u_input.a, 82995u) % vec2<u32>(32u))))), ~vec3<u32>(~37502u, ~21039u, firstLeadingBit(u_input.b)) >> (vec3<u32>(arg_0, 1u, ~_wgslsmith_add_u32(66359u, u_input.a)) % vec3<u32>(32u)), vec2<i32>(abs(_wgslsmith_clamp_i32(-2147483647i, -14827i, u_input.c.x ^ -2147483647i)), _wgslsmith_div_i32(max(56078i, var_0.x), reverseBits(43400i))));
    var var_2 = !select(!vec4<bool>(any(vec3<bool>(true, var_1.c.c.x, var_1.a.c.x)), true, false, var_1.d.x < 0u), vec4<bool>(false, true, !any(vec4<bool>(arg_1.x, var_1.b.c.x, var_1.c.c.x, arg_1.x)), true), arg_1.x);
    let var_3 = !var_2.x;
    let var_4 = abs(_wgslsmith_mod_u32(~(~44437u), max(32871u, ~37416u))) >> (arg_0 % 32u);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.a, -810f))), var_0.xx, var_1.c.c, ~(var_1.d.zx & ~var_1.b.d));
}

fn func_1(arg_0: i32, arg_1: bool) -> vec4<bool> {
    var var_0 = Struct_2(func_2(~u_input.a, !vec3<bool>(arg_1, !arg_1, arg_1), 33532u, 0i), func_2(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.b, 24377u), ~(~1u)), !vec3<bool>(true, arg_1, all(vec4<bool>(arg_1, arg_1, arg_1, arg_1))), ~(~u_input.b), func_3(Struct_1(-1185f, u_input.c.ww, vec4<bool>(arg_1, true, true, false), vec2<u32>(4294967295u, u_input.b)), 1636f, select(arg_0, arg_0, arg_1), func_2(u_input.a, vec3<bool>(false, arg_1, arg_1), u_input.a, -27405i)) ^ arg_0), Struct_1(-1000f, vec2<i32>(u_input.c.x, _wgslsmith_mult_i32(0i, 1i)), !func_2(u_input.a, !vec3<bool>(arg_1, arg_1, false), u_input.a, _wgslsmith_add_i32(-9304i, arg_0)).c, ~(vec2<u32>(12860u, u_input.b) ^ vec2<u32>(u_input.b, u_input.b))), vec3<u32>(u_input.a, u_input.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 16764u, 59731u, u_input.b), ~vec4<u32>(0u, 68444u, u_input.a, 4294967295u)), abs(34527u))), u_input.c.zw);
    var var_1 = select(var_0.d, max(select(var_0.d, select(abs(var_0.d), var_0.d ^ var_0.d, false), var_0.c.c.x && (var_0.b.b.x >= -4425i)), ~var_0.d), var_0.c.c.wxy);
    let var_2 = Struct_2(Struct_1(195f, u_input.c.yy, select(!var_0.b.c, var_0.b.c, var_0.b.c.x), abs(~abs(vec2<u32>(u_input.a, var_0.a.d.x)))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(154f)), var_0.b.a, all(vec2<bool>(var_0.c.c.x, true)) && true)), _wgslsmith_mod_vec2_i32(var_0.e, min(min(var_0.e, u_input.c.zy), vec2<i32>(var_0.b.b.x, var_0.c.b.x))), var_0.b.c, var_1.zz << (~(var_1.yy ^ var_1.yy) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1704f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_0.e, !(!vec4<bool>(var_0.c.c.x, var_0.a.c.x, arg_1, false)), select(select(min(var_1.yx, var_1.yy), vec2<u32>(70958u, var_1.x), select(vec2<bool>(var_0.c.c.x, true), var_0.b.c.wz, var_0.b.c.wy)), var_1.yz, true)), _wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(var_0.d.x, var_1.x, var_1.x)) ^ vec3<u32>(4294967295u, _wgslsmith_div_u32(u_input.b, 0u), 78655u), vec3<u32>(firstTrailingBit(u_input.b), var_0.c.d.x, 4294967295u), vec3<u32>(~18246u, 1u, u_input.b)), var_0.e);
    var_1 = var_2.d;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(778f - 1172f)));
    return select(var_0.b.c, !vec4<bool>(!all(var_2.a.c), select(!var_2.b.c.x, var_2.b.c.x, false), var_0.b.c.x, true), all(var_2.a.c.yw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), any(func_1(u_input.c.x, false)), -380f >= _wgslsmith_f_op_f32(trunc(-175f))));
    let var_1 = ~(~(~(~(u_input.a << (4294967295u % 32u)))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(932f - 1627f) - _wgslsmith_f_op_f32(1574f * 149f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1826f - -1750f), _wgslsmith_f_op_f32(round(-349f)), var_0.x))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f)))))));
    var var_3 = Struct_2(func_2(firstLeadingBit(var_1), !func_1(select(u_input.c.x, u_input.c.x, var_0.x), var_0.x || var_0.x).zxw, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(15152u, u_input.b, u_input.a), vec3<u32>(44097u, 807u, 28371u)), ~vec3<u32>(24643u, var_1, 72097u)), 12604u), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(27514i, 26226i), -vec2<i32>(u_input.c.x, 2147483647i)), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-36719i, 1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x))))), func_2(62747u, !select(vec3<bool>(true, true, true), !vec3<bool>(false, false, var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, var_0.x, false), var_0.x)), ~0u, ~(-firstLeadingBit(1i))), func_2(u_input.b, !vec3<bool>(!var_0.x, true, var_0.x), ~(~u_input.b), -u_input.c.x), select(~countOneBits(~vec3<u32>(u_input.a, var_1, var_1)), vec3<u32>(var_1, u_input.b, ~(~var_1)), var_0.x), min(-(vec2<i32>(u_input.c.x, 0i) & vec2<i32>(u_input.c.x, -1i)), u_input.c.zx << (~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(var_1, var_1), vec2<u32>(23548u, u_input.a)) % vec2<u32>(32u))));
    let var_4 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(14077u, 0u, var_1, 1u))), vec4<u32>(select(~23647u, ~0u, any(var_3.c.c.zw)), u_input.a, min(firstLeadingBit(54353u), _wgslsmith_clamp_u32(var_3.b.d.x, 4294967295u, 1u)), 1u), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(15359u, 8073u), ~var_3.d.x), 4294967295u, ~firstLeadingBit(u_input.b), 0u)), ~(~select(vec4<u32>(var_1, var_3.c.d.x, u_input.b, var_3.b.d.x), vec4<u32>(u_input.b, 4294967295u, var_3.a.d.x, 4294967295u), true) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.c.d.x, u_input.b, 1u, var_3.b.d.x), vec4<u32>(0u, 5417u, 1u, var_1))));
    var_0 = !func_1(-_wgslsmith_sub_i32(2147483647i, func_2(13897u, var_3.a.c.zzz, var_4, -2147483647i).b.x), false).zzz;
    var_3 = Struct_2(var_3.a, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c.a + var_3.b.a), 1173f), vec2<i32>(u_input.c.x, func_3(Struct_1(var_2, u_input.c.wy, vec4<bool>(false, var_3.a.c.x, false, false), var_3.d.zz), _wgslsmith_f_op_f32(var_2 - 449f), 0i, Struct_1(var_3.c.a, u_input.c.xx, vec4<bool>(false, var_3.b.c.x, var_3.b.c.x, true), vec2<u32>(0u, 0u)))), select(vec4<bool>(false, false & var_0.x, var_0.x, var_3.b.c.x && var_3.c.c.x), var_3.c.c, false), _wgslsmith_mult_vec2_u32(var_3.d.xz, vec2<u32>(~var_4, _wgslsmith_dot_vec3_u32(var_3.d, vec3<u32>(39152u, var_1, var_3.b.d.x))))), var_3.a, vec3<u32>(_wgslsmith_div_u32(~var_1, ~0u), _wgslsmith_mod_u32(var_1 & 1u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(24686u, max(u_input.b, var_3.d.x), firstLeadingBit(var_1)), vec3<u32>(26404u, var_1 ^ 12006u, var_4))), u_input.c.xy);
    var var_5 = all(vec3<bool>(var_3.b.a < -1228f, any(!(!var_3.b.c.zy)), (-421f > var_3.b.a) || !any(vec2<bool>(var_0.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(1u << (var_3.d.x % 32u));
}

