struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_2,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_clamp_u32(~(~8289u), ~(~1u), 8536u));
    var var_1 = Struct_1(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.a, ~var_0.a), var_0.a));
    var_1 = var_0;
    let var_2 = Struct_4(any(!(!(!vec4<bool>(arg_0, true, false, arg_0)))), Struct_2(!arg_0, ~(-u_input.a)), firstTrailingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.a, 52568u, var_0.a, var_1.a), vec4<u32>(24318u, 41921u, 0u, var_1.a) | vec4<u32>(var_1.a, 1u, var_0.a, var_1.a), vec4<u32>(0u, var_0.a, var_0.a, var_1.a)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_1.a, var_0.a, 4294967295u) << (vec4<u32>(9175u, 1u, var_1.a, var_1.a) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.a, 4294967295u, var_1.a), vec4<u32>(var_0.a, var_1.a, var_1.a, 1u))) % vec4<u32>(32u))), vec3<i32>(u_input.a, ~min(u_input.a, 13637i), -2147483647i) << (_wgslsmith_sub_vec3_u32(select(vec3<u32>(var_1.a, var_0.a, var_1.a) ^ vec3<u32>(var_1.a, 1u, var_0.a), vec3<u32>(var_0.a, var_1.a, 24726u), true), vec3<u32>(var_0.a, ~var_0.a, var_0.a)) % vec3<u32>(32u)));
    var_1 = Struct_1(~var_2.c.x);
    return firstTrailingBit(var_1.a);
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1122f, 250f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1852f, 872f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1313f, 1153f), vec2<f32>(602f, -803f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(300f, 930f), vec2<f32>(-834f, 1294f))))))), arg_0.a, Struct_2(true, -arg_0.b), arg_0.b, Struct_1(~_wgslsmith_mod_u32(func_3(true), 1u)));
    var var_1 = false;
    var_1 = all(select(vec2<bool>(true, true), select(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, var_0.b), vec2<bool>(arg_0.a, arg_0.a)), vec2<bool>(true, arg_0.a), false), all(vec2<bool>(false, arg_0.a)))) & arg_0.a;
    var_1 = arg_0.a;
    var_1 = false;
    return var_0;
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = func_2(Struct_2(!all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), _wgslsmith_sub_i32(firstTrailingBit(~u_input.a), i32(-1i) * -u_input.a)));
    var var_1 = func_2(var_0.c).b;
    var_1 = var_0.b;
    var_1 = var_0.c.a;
    let var_2 = Struct_1(var_0.e.a);
    return Struct_4(var_0.b, var_0.c, abs(vec4<u32>(var_2.a, abs(~0u), var_2.a, ~_wgslsmith_div_u32(4294967295u, 1u))), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(2147483647i, u_input.a, 19270i), vec3<i32>(0i, 2147483647i, var_0.d), vec3<bool>(false, true, var_0.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c.b, -35406i, u_input.a), vec3<i32>(-1i, u_input.a, u_input.a)), countOneBits(vec3<i32>(-218i, var_0.c.b, 0i))) << (vec3<u32>(0u, 0u, ~1u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(-1i, 39148i, u_input.a), vec3<i32>(u_input.a, -5783i, 0i), vec3<bool>(true, var_0.c.a, true)) ^ vec3<i32>(var_0.d, -8005i, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.d, var_0.d, var_0.d), vec3<i32>(-2147483647i, var_0.d, -55857i), _wgslsmith_sub_vec3_i32(vec3<i32>(-22223i, var_0.d, -44309i), vec3<i32>(u_input.a, var_0.c.b, 2147483647i))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_div_f32(-806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1431f - -2119f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-156f * -1000f)), all(arg_1) && true))));
    var var_1 = vec2<f32>(106f, _wgslsmith_f_op_f32(step(687f, _wgslsmith_f_op_f32(f32(-1f) * -1326f))));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x))));
    var_2 = Struct_4(arg_0.b.a, var_2.b, ~_wgslsmith_add_vec4_u32(vec4<u32>(66751u, arg_0.c.x, arg_0.c.x, var_2.c.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c.x, var_2.c.x, 4294967295u, 20387u), var_2.c) % vec4<u32>(32u)), vec4<u32>(var_2.c.x, var_2.c.x, _wgslsmith_add_u32(15338u, 0u), firstTrailingBit(var_2.c.x))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_mod_i32(-2147483647i, -49i), ~u_input.a), ~(-vec3<i32>(0i, 37098i, arg_0.b.b)), ~var_2.d << (abs(vec3<u32>(0u, arg_0.c.x, 4294967295u)) % vec3<u32>(32u))));
    return arg_0;
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    var var_0 = (~(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 37793i, 13633i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)) & 2147483647i) << (arg_0.c.x % 32u)) << (~61490u % 32u);
    let var_1 = arg_0.a;
    var_0 = _wgslsmith_div_i32(arg_0.b.b, u_input.a);
    let var_2 = !vec4<bool>(false, var_1, !var_1, !var_1);
    var var_3 = select(select(select(select(vec2<bool>(true, var_1), !var_2.zz, vec2<bool>(true, var_1)), var_2.xx, var_2.zx), select(!vec2<bool>(var_2.x, true), select(select(vec2<bool>(false, var_2.x), vec2<bool>(true, var_2.x), var_2.xx), vec2<bool>(false, true), var_2.xz), var_2.zw), !func_2(arg_0.b).c.a), var_2.zx, any(select(select(var_2, vec4<bool>(false, false, false, var_2.x), select(vec4<bool>(var_1, false, true, true), vec4<bool>(arg_0.b.a, var_2.x, false, var_1), true)), !var_2, true)));
    return func_2(func_4(Struct_4(func_2(Struct_2(true, -2147483647i)).b, Struct_2(true, ~u_input.a), vec4<u32>(4294967295u, arg_0.c.x, abs(arg_0.c.x), _wgslsmith_mod_u32(0u, 33834u)), abs(func_4(Struct_4(var_2.x, Struct_2(arg_0.a, 24299i), vec4<u32>(3302u, arg_0.c.x, 4294967295u, 40999u), vec3<i32>(1i, 28942i, u_input.a)), var_2.yzw, Struct_2(var_1, -2147483647i)).d)), var_2.ywz, Struct_2(!(arg_0.b.a || true), arg_0.b.b)).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 283f) + vec2<f32>(345f, 1000f))))), !vec3<bool>(true, false, any(vec2<bool>(false, true))), Struct_2(true, _wgslsmith_mult_i32(-1i, ~u_input.a))));
    let var_1 = Struct_1(var_0.e.a);
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(sign(var_0.a.x))) * _wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(var_0.a.x, var_0.a.x))) * var_0.a)).b;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * 108f) * var_0.a.x), var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(545f + var_0.a.x), _wgslsmith_f_op_f32(floor(-185f))))));
    var_2 = func_4(Struct_4(!var_2.a, func_2(Struct_2(true, var_0.d)).c, ~vec4<u32>(1u, ~26243u, 52152u << (0u % 32u), 4294967295u), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -62975i), countOneBits(vec2<i32>(2147483647i, u_input.a))), ~_wgslsmith_add_i32(var_2.b, var_2.b), -_wgslsmith_div_i32(var_0.d, 2147483647i))), vec3<bool>(!(!(var_2.a & var_0.c.a)), false, var_0.c.a), func_2(Struct_2(true, ~abs(var_0.d))).c).b;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1372f + -2717f));
    var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_3.x))))));
    var var_5 = vec3<u32>(var_0.e.a, func_3(var_2.a), 11535u | min(func_5(Struct_4(var_2.a, Struct_2(var_0.c.a, -18747i), vec4<u32>(4294967295u, var_1.a, var_1.a, 3975u), vec3<i32>(u_input.a, -3608i, var_2.b))).e.a, ~(~67523u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.x - -412f), _wgslsmith_f_op_f32(469f * var_3.x), all(vec3<bool>(true, true, false)))) - _wgslsmith_f_op_f32(-818f * _wgslsmith_f_op_f32(var_3.x + -1154f))), 1055f)), func_4(func_4(Struct_4(var_0.c.a, Struct_2(var_0.b, -1i), vec4<u32>(var_5.x, var_1.a, 87400u, var_1.a), vec3<i32>(2147483647i, -11402i, -20186i)), !vec3<bool>(var_0.c.a, var_2.a, var_0.b), Struct_2(false, var_2.b)), !(!vec3<bool>(var_2.a, true, var_0.b)), Struct_2(var_0.b, func_2(Struct_2(false, -50584i)).c.b)).c >> (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, var_1.a, 4294967295u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(61673u, var_0.e.a, var_5.x, var_1.a), vec4<u32>(23820u, 57583u, 28439u, 29881u))), ~vec4<u32>(1u, 0u, var_5.x, var_0.e.a) >> (vec4<u32>(17550u, 33518u, var_1.a, 600u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_add_i32(-22590i, abs(max(firstTrailingBit(var_2.b), func_4(Struct_4(var_2.a, var_0.c, vec4<u32>(86931u, 76892u, 0u, var_5.x), vec3<i32>(var_0.d, 16317i, 35058i)), vec3<bool>(true, var_0.c.a, var_2.a), Struct_2(false, 0i)).b.b))));
}

