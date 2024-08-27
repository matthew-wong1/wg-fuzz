struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    let var_0 = all(!vec4<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false))), false, true, !(u_input.a <= u_input.a)));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.d, 22269i), countOneBits(-1i)) >> (_wgslsmith_dot_vec2_u32(u_input.b, ~(~(vec2<u32>(u_input.c.x, u_input.a) << (u_input.c.xw % vec2<u32>(32u))))) % 32u);
    var var_2 = _wgslsmith_f_op_f32(ceil(1273f));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1693f), _wgslsmith_f_op_f32(min(-1418f, -613f))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(min(316f, -860f)))))));
    let var_4 = Struct_1(vec2<i32>(u_input.d, u_input.d) >> (~(u_input.b >> (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(451f, 340f, -457f)))))), vec3<i32>(abs(u_input.d), ~u_input.d, _wgslsmith_div_i32(u_input.d, u_input.d)) >> (~(~max(vec3<u32>(u_input.b.x, u_input.b.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.a, u_input.b.x))) % vec3<u32>(32u)));
    return -_wgslsmith_mult_vec2_i32(abs(vec2<i32>(countOneBits(var_4.a.x), ~8236i)), abs(_wgslsmith_clamp_vec2_i32(var_4.d.yy, var_4.a >> (u_input.b % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(19878i, -2147483647i), var_4.d.zz))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-263f, 1140f), vec2<f32>(1387f, -345f)) - vec2<f32>(-1532f, 1462f)))));
    var var_1 = Struct_1(select(_wgslsmith_mult_vec2_i32(~(~vec2<i32>(u_input.d, -23211i)), vec2<i32>(max(u_input.d, u_input.d), u_input.d >> (u_input.c.x % 32u))), _wgslsmith_mod_vec2_i32(func_3(), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, 3328i), vec2<i32>(u_input.d, -2147483647i))) & vec2<i32>(-31675i, firstTrailingBit(u_input.d)), select(vec2<bool>(false, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true))), _wgslsmith_add_u32(0u, u_input.c.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1774f, var_0.x, var_0.x) * vec3<f32>(var_0.x, 2490f, -1291f))))))), ~(abs(vec3<i32>(u_input.d, u_input.d, -1i)) & _wgslsmith_mult_vec3_i32(vec3<i32>(15351i, u_input.d, u_input.d), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(-3714i, 10482i, -52896i)))));
    let var_2 = 1i;
    var var_3 = var_1.b;
    var var_4 = Struct_1(var_1.d.xx, _wgslsmith_mod_u32(14529u, var_1.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - 1568f), var_1.c.x)), _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_div_f32(-284f, _wgslsmith_f_op_f32(var_1.c.x - -680f))), var_1.c, true && (select(37351u, u_input.b.x, true) > (4165u << (u_input.a % 32u))))), vec3<i32>(27805i, select(u_input.d, -_wgslsmith_mult_i32(var_2, var_1.a.x), !any(vec4<bool>(false, true, false, true))), firstLeadingBit(firstTrailingBit(-31669i)) | (i32(-1i) * -var_2)));
    return -7995i << (~4294967295u % 32u);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = -(~vec2<i32>(func_2() & arg_0.x, ~2147483647i ^ min(u_input.d, arg_0.x)));
    var var_1 = Struct_1(max(-_wgslsmith_add_vec2_i32(arg_0.zx, var_0), vec2<i32>(firstTrailingBit(var_0.x), _wgslsmith_add_i32(-1i, var_0.x))) & max(~var_0, ~func_3()), u_input.b.x, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1076f, 420f)))), _wgslsmith_f_op_f32(f32(-1f) * -1102f)), vec3<f32>(-2242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1190f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -443f))))), _wgslsmith_mod_vec3_i32(abs(reverseBits(arg_0.wyw)), abs(arg_0.wwy)));
    var_1 = Struct_1(var_0, 4294967295u, vec3<f32>(_wgslsmith_f_op_f32(540f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + var_1.c.x) - -173f)), -366f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x * -1204f) - _wgslsmith_f_op_f32(abs(-798f)))))), vec3<i32>(1i, abs(_wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec3_i32(var_1.d, vec3<i32>(7376i, -9753i, -28476i)), -2147483647i)), i32(-1i) * -15214i));
    var_1 = Struct_1(vec2<i32>(-1i) * -(~arg_0.yx << (u_input.b % vec2<u32>(32u))), 5456u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(141f, var_1.c.x, _wgslsmith_f_op_f32(step(518f, 424f)))), vec3<i32>(abs(var_1.a.x), arg_0.x, var_1.a.x));
    var var_2 = !vec4<bool>(all(vec4<bool>(var_1.c.x != var_1.c.x, true, var_1.c.x < var_1.c.x, true)), true, select(true, all(vec3<bool>(true, true, true)), true), all(vec3<bool>(false, true, true)) || true);
    return Struct_1(~vec2<i32>(-1i, func_2()), u_input.b.x, vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(426f, _wgslsmith_f_op_f32(-2245f - var_1.c.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1919f + -992f) - var_1.c.x))), ~(-_wgslsmith_clamp_vec3_i32(arg_0.zxy, -arg_0.zzz, vec3<i32>(arg_0.x, -12145i, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec2<i32>(~_wgslsmith_mod_i32(u_input.d, _wgslsmith_div_i32(1i, u_input.d)), i32(-1i) * -1i));
    var var_1 = func_1(vec4<i32>(1i, ~1i, -_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(14157i, var_0.x, 2147483647i, 2147483647i)), vec4<i32>(-56693i, u_input.d, u_input.d, -1i)), select(u_input.d, var_0.x, !all(vec3<bool>(false, false, false)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c.zy - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(796f, -753f)), _wgslsmith_div_vec2_f32(var_1.c.yy, vec2<f32>(var_1.c.x, -278f))))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -253f), 937f)))));
    var var_3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 86559u | (u_input.a & 34573u), u_input.c.x >> (1u % 32u), 27725u), ~(u_input.c << (vec4<u32>(4294967295u ^ var_1.b, u_input.c.x | var_1.b, u_input.b.x, 18235u) % vec4<u32>(32u))));
    let var_4 = func_1(vec4<i32>(u_input.d, _wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(u_input.d, 19417i, var_0.x, -14410i)), ~_wgslsmith_div_vec4_i32(vec4<i32>(0i, -52774i, var_0.x, 0i), vec4<i32>(u_input.d, var_1.d.x, 9855i, var_0.x))), u_input.d, u_input.d));
    var_1 = Struct_1(vec2<i32>(~var_4.d.x, ~min(var_1.a.x | u_input.d, ~u_input.d)), ~102710u, var_4.c, var_4.d);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(firstTrailingBit(vec4<i32>(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(45037i, -1i, var_1.d.x, var_4.a.x), vec4<i32>(29484i, var_4.d.x, 23571i, u_input.d)), max(var_4.a.x, -1i), ~(-17439i)))).c.x, ~_wgslsmith_clamp_u32(max(var_4.b, _wgslsmith_clamp_u32(u_input.c.x, u_input.a, var_1.b)), select(_wgslsmith_dot_vec2_u32(u_input.b, u_input.c.zy), _wgslsmith_dot_vec3_u32(vec3<u32>(877u, var_4.b, 4294967295u), vec3<u32>(u_input.b.x, 31681u, var_1.b)), true), countOneBits(~1u)));
}

