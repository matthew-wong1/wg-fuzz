struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(758f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(851f)), _wgslsmith_f_op_f32(f32(-1f) * -885f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1109f * 688f), _wgslsmith_f_op_f32(floor(2676f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-474f)) - -1052f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1020f)) + -153f))), _wgslsmith_f_op_f32(127f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(514f + -829f)) + 1000f)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))) + var_0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) - 207f)), _wgslsmith_f_op_f32(sign(var_0.x))));
    var var_1 = Struct_2(Struct_1(!(282f == _wgslsmith_f_op_f32(step(var_0.x, var_0.x))), false, !select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec4<u32>(~63186u, ~u_input.b, arg_0, abs(max(1u, arg_0))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, all(vec4<bool>(false, false, false, true)), true), true)), Struct_1(true, true, !select(vec2<bool>(true, true), vec2<bool>(true, false), -230f < var_0.x), firstTrailingBit(~(vec4<u32>(44661u, arg_0, u_input.b, 4294967295u) << (vec4<u32>(4294967295u, arg_0, arg_0, arg_0) % vec4<u32>(32u)))), select(vec3<bool>(true, false, select(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), any(vec3<bool>(false, false, true)) && all(vec4<bool>(true, false, true, false)))), ~_wgslsmith_add_u32(1u, reverseBits(u_input.b)), _wgslsmith_f_op_vec2_f32(var_0.zx * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-855f + -342f)), var_0.yz)));
    return any(vec3<bool>(any(!(!vec4<bool>(var_1.a.a, var_1.a.b, true, var_1.a.c.x))), var_1.b.e.x, false));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> Struct_2 {
    let var_0 = func_3(~1u);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -200f) * _wgslsmith_f_op_f32(floor(1077f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1268f, -1000f, var_0)) + _wgslsmith_f_op_f32(-1103f - 1037f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(241f, -1532f) - 1237f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-587f)), _wgslsmith_f_op_f32(min(-861f, 471f)), 0u > arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1177f, 483f, -2740f, -868f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -435f) - -523f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -985f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(811f)), -400f)), _wgslsmith_f_op_f32(2682f * 1368f))));
    let var_2 = _wgslsmith_sub_vec2_i32(firstLeadingBit(select(u_input.c, -u_input.a.yx, vec2<bool>(true, var_0))), vec2<i32>(-2055i, arg_1));
    var var_3 = Struct_1(!(-_wgslsmith_clamp_i32(27268i, u_input.c.x, u_input.a.x) >= _wgslsmith_add_i32(-1i, countOneBits(33348i))), any(!vec3<bool>(var_2.x == 1i, any(vec4<bool>(true, true, false, true)), var_0)), !(!(!vec2<bool>(false, var_0))), ~vec4<u32>(arg_0.x, (4294967295u >> (u_input.b % 32u)) ^ 4294967295u, _wgslsmith_mod_u32(firstTrailingBit(arg_0.x), ~4294967295u), abs(select(4294967295u, arg_0.x, false))), vec3<bool>(true, false == (var_0 == any(vec3<bool>(true, false, var_0))), !(!var_0)));
    var var_4 = var_3.c.x;
    return Struct_2(Struct_1(false, func_3(_wgslsmith_dot_vec3_u32(~arg_0, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 38871u), var_3.d.yxx))), !vec2<bool>(var_0, 240f == var_1.x), (vec4<u32>(u_input.b, 15361u, 1u, 1u) | ~vec4<u32>(33814u, var_3.d.x, u_input.b, 0u)) << (vec4<u32>(112835u, u_input.b, _wgslsmith_mod_u32(u_input.b, 16064u), var_3.d.x) % vec4<u32>(32u)), select(vec3<bool>(var_0, var_0, all(vec4<bool>(true, false, var_3.b, var_0))), !select(vec3<bool>(var_0, false, var_3.c.x), vec3<bool>(var_0, false, var_0), false), 49882i < u_input.c.x)), Struct_1(true, all(vec2<bool>(var_0, var_3.e.x)) || var_3.c.x, var_3.c, abs(~firstTrailingBit(vec4<u32>(arg_0.x, 1u, 35988u, u_input.b))), vec3<bool>(true, true, false)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(var_3.d.yxy, vec3<u32>(u_input.b, u_input.b, u_input.b)) & _wgslsmith_mult_vec3_u32(arg_0, arg_0), ~var_3.d.wwy, var_3.d.wyw), firstLeadingBit(abs(var_3.d.yxy) & ~vec3<u32>(0u, u_input.b, u_input.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.xy))) + vec2<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, 1000f))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = ~arg_1.b.d.x;
    var var_1 = !(u_input.a.x != _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, u_input.a.x, 2147483647i), min(u_input.a.x, u_input.c.x)), ~(-22938i)));
    var_1 = false;
    var var_2 = arg_1;
    var_1 = arg_1.b.e.x;
    return func_2(vec3<u32>(~arg_1.b.d.x, _wgslsmith_dot_vec4_u32(select(var_2.b.d, vec4<u32>(u_input.b, arg_1.a.d.x, var_0, 4294967295u), vec4<bool>(var_2.a.a, var_2.b.c.x, true, var_2.b.c.x)) >> (var_2.b.d % vec4<u32>(32u)), ~(vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x) << (vec4<u32>(u_input.b, u_input.b, 34652u, 0u) % vec4<u32>(32u)))), arg_0.x), ~(1i << (select(func_2(arg_0.yyy, -83307i).a.d.x, arg_1.c, true) % 32u))).b;
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(~countOneBits(firstTrailingBit(vec4<u32>(u_input.b, 72200u, u_input.b, 1u))) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), ~vec4<u32>(1u, 34989u, u_input.b, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, 57031u, u_input.b) % vec4<u32>(32u)), vec4<u32>(u_input.b, u_input.b, ~u_input.b, u_input.b)) % vec4<u32>(32u)), func_2(~(vec3<u32>(u_input.b, u_input.b, u_input.b) & ~vec3<u32>(u_input.b, u_input.b, 71864u)), u_input.c.x));
    var_0 = func_4(vec4<u32>(u_input.b, 39061u, 1u ^ var_0.d.x, firstTrailingBit(84310u) ^ ~u_input.b), func_2(func_2(~(~var_0.d.xyz), u_input.c.x).b.d.xwz, _wgslsmith_div_i32(abs(8231i) << (u_input.b % 32u), select(firstTrailingBit(u_input.c.x), 3727i | u_input.c.x, true))));
    var var_1 = vec4<bool>(true, var_0.b, var_0.e.x, true || func_3(var_0.d.x));
    var var_2 = Struct_2(Struct_1(true || var_0.e.x, true & (_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) <= (4540i & u_input.c.x)), var_1.yw, _wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(u_input.b, u_input.b, 7414u, 52054u)), var_0.d), vec3<bool>(true & func_4(vec4<u32>(4294967295u, var_0.d.x, u_input.b, var_0.d.x), Struct_2(Struct_1(false, var_0.a, vec2<bool>(false, true), vec4<u32>(96941u, 4294967295u, 1u, 49611u), vec3<bool>(var_0.e.x, var_0.c.x, false)), Struct_1(false, false, var_1.wy, vec4<u32>(var_0.d.x, var_0.d.x, u_input.b, 0u), vec3<bool>(true, true, true)), u_input.b, vec2<f32>(272f, 497f))).b, true, func_4(~var_0.d, func_2(var_0.d.zwx, 0i)).e.x)), Struct_1(var_1.x, false, var_1.xx, ~(~_wgslsmith_mult_vec4_u32(var_0.d, vec4<u32>(20237u, var_0.d.x, 56677u, 11951u))), select(!var_0.e, var_1.wwz, select(var_0.e, vec3<bool>(false, var_0.b, true), true))), ~56112u, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(836f + -1614f))), 1352f))));
    var var_3 = -u_input.a.x;
    return func_2(~_wgslsmith_mult_vec3_u32(~var_2.a.d.yxw, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.d.x, 1u) >> (var_0.d.yxx % vec3<u32>(32u)), var_2.a.d.xyz, vec3<u32>(u_input.b, var_0.d.x, 4294967295u))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_2(func_4(~_wgslsmith_div_vec4_u32(firstTrailingBit(var_0.b.d), ~vec4<u32>(0u, u_input.b, 11014u, 33148u)), Struct_2(Struct_1(func_2(vec3<u32>(u_input.b, u_input.b, u_input.b), 22368i).b.c.x, false, vec2<bool>(var_0.a.a, var_0.b.c.x), vec4<u32>(0u, u_input.b, var_0.b.d.x, var_0.a.d.x), var_0.b.e), Struct_1(!var_0.b.b, true, vec2<bool>(var_0.b.c.x, true), var_0.b.d, var_0.b.e), ~41620u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.d.x, -1127f))))))), var_0.b, 13561u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, var_0.d.x)), _wgslsmith_f_op_vec2_f32(-var_0.d), !var_0.b.e.zx)) * vec2<f32>(_wgslsmith_div_f32(-836f, var_0.d.x), 148f))));
    var var_1 = func_1();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(var_1.d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d.x))))))), func_1().d.x, var_1.d.x);
    var_0 = func_1();
    var var_3 = Struct_2(var_0.b, var_1.b, 0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 897f) - vec2<f32>(var_0.d.x, var_2.x))))));
    let var_4 = func_2(_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_3.a.d.x, 0u), var_3.a.d.xzx) >> (var_1.a.d.wwz % vec3<u32>(32u)), ~vec3<u32>(35350u, 1u, ~4294967295u)), -u_input.c.x);
    var_3 = func_2(_wgslsmith_mod_vec3_u32(var_1.b.d.zyx, select(select(var_1.a.d.yyy, vec3<u32>(var_0.c, 0u, var_0.c), false), var_3.b.d.zxy ^ var_3.b.d.wxy, var_0.b.b)) ^ var_1.a.d.wyx, abs(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_mult_u32(35259u, ~u_input.b), firstTrailingBit(var_0.c), 4294967295u, min(func_1().b.d.x, var_3.b.d.x ^ 51845u)), var_4.b.d.x);
}

