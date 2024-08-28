struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19>;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), -28646i, -12571i);

var<private> global2: u32 = 10125u;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: Struct_5, arg_3: f32) -> vec4<i32> {
    var var_0 = firstLeadingBit(~vec3<i32>(-(-1i >> (u_input.d % 32u)), ~countOneBits(2147483647i), u_input.a));
    return vec4<i32>(~(-(~75263i)), ~firstTrailingBit(-56936i), -min(arg_1, _wgslsmith_sub_i32(var_0.x, arg_0.b.a.x)), 1i);
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global3 = Struct_2(_wgslsmith_add_vec3_i32(u_input.c.zxy, vec3<i32>(global1.x, i32(-1i) * -global1.x, _wgslsmith_add_i32(2147483647i, -u_input.c.x))));
    var var_0 = Struct_1(all(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true)), 553f, ~vec3<i32>(abs(global3.a.x), ~global1.x, 1i) ^ (u_input.c.wwz & select(vec3<i32>(u_input.c.x, u_input.c.x, u_input.a), u_input.c.xzw, select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-408f))) - _wgslsmith_f_op_f32(ceil(-1614f)))));
    var var_1 = Struct_5(440f, arg_0.zzz, vec4<bool>(!select(var_0.a, u_input.e.x <= arg_0.x, true), any(select(vec4<bool>(true, var_0.a, false, false), !vec4<bool>(var_0.a, true, var_0.a, var_0.a), var_0.a)), !(var_0.a || true), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, u_input.c), -vec4<i32>(u_input.c.x, var_0.c.x, -1i, u_input.c.x)) < firstLeadingBit(_wgslsmith_mod_i32(0i, u_input.c.x))));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, 1139f)), select(firstLeadingBit(~u_input.e), vec3<u32>(arg_0.x, _wgslsmith_dot_vec3_u32(arg_0.yyy, vec3<u32>(21311u, var_1.b.x, var_1.b.x)), ~100549u), var_1.c.x) ^ abs(max(~u_input.e, vec3<u32>(u_input.b, 4294967295u, var_1.b.x))), !var_1.c);
    let var_3 = Struct_5(1659f, _wgslsmith_mod_vec3_u32(arg_0.xxz << (vec3<u32>(_wgslsmith_add_u32(var_2.b.x, 4294967295u), 15826u, ~arg_0.x) % vec3<u32>(32u)), vec3<u32>(~var_2.b.x, ~1u | countOneBits(var_1.b.x), ~(~0u))), select(vec4<bool>(var_2.c.x, var_0.a | false, !(!var_2.c.x), !var_2.c.x), vec4<bool>(true, true, (var_0.a | false) | true, var_1.c.x), vec4<bool>(firstLeadingBit(var_0.c.x) < ~0i, false, all(vec3<bool>(var_2.c.x, false, var_2.c.x)), var_2.c.x)));
    return 1u << (~abs(var_2.b.x) % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_5 {
    var var_0 = global3.a.x;
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -189f)) + -1604f), u_input.c.yww, -906f);
    let var_2 = Struct_1(true, var_1.d, select(u_input.c.zxz, vec3<i32>(var_1.c.x >> (func_3(vec4<u32>(u_input.e.x, 4165u, u_input.e.x, u_input.e.x)) % 32u), 2147483647i, func_1(Struct_4(vec4<u32>(u_input.e.x, u_input.d, u_input.e.x, 6240u), arg_0, arg_0, vec2<f32>(1030f, -609f)), global1.x, Struct_5(var_1.d, u_input.e, vec4<bool>(false, false, false, var_1.a)), _wgslsmith_div_f32(var_1.d, var_1.b)).x), var_1.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-546f * -1216f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, _wgslsmith_f_op_f32(-var_2.b), var_1.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2021f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, var_1.b, -110f, -1695f), vec4<f32>(var_2.b, var_1.d, 1431f, 1842f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-360f, -275f, var_2.d, var_2.d))), vec4<f32>(var_1.b, -1505f, var_1.b, -299f))) + vec4<f32>(-550f, 1115f, _wgslsmith_f_op_f32(round(var_1.d)), _wgslsmith_f_op_f32(305f * 588f)))), vec4<bool>(!any(vec2<bool>(var_2.a, var_2.a)), true, !var_1.a, !(var_2.a & var_1.a) == (true & !var_1.a))));
    var_0 = abs(7556i);
    return Struct_5(_wgslsmith_f_op_f32(floor(-1071f)), _wgslsmith_mult_vec3_u32(~vec3<u32>(33511u, u_input.e.x, 57339u) ^ vec3<u32>(~u_input.d, min(0u, 21541u), ~u_input.d), countOneBits(_wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.d, u_input.d, 1u), vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x)), ~vec3<u32>(u_input.b, 4294967295u, 92877u)))), select(select(!(!vec4<bool>(true, false, var_2.a, true)), vec4<bool>(all(vec2<bool>(true, false)), !var_2.a, all(vec2<bool>(true, var_2.a)), var_1.a != false), true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, var_2.a), true)), !select(select(vec4<bool>(var_2.a, var_2.a, var_2.a, var_1.a), vec4<bool>(var_1.a, true, true, var_1.a), false), vec4<bool>(var_2.a, var_1.a, var_2.a, false), -1000f >= var_3.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = Struct_1(!(!(true | arg_2.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-211f)) * 1528f))), vec3<i32>(arg_2.c.x, -50992i, ~_wgslsmith_clamp_i32(arg_2.c.x, _wgslsmith_clamp_i32(-32144i, global1.x, -2597i), -global3.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -772f), _wgslsmith_f_op_f32(min(-210f, -1298f))))));
    global0 = array<vec3<f32>, 19>();
    var var_1 = u_input.e;
    var var_2 = Struct_1(false, _wgslsmith_f_op_f32(-var_0.d), firstTrailingBit(vec3<i32>(min(24970i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(arg_2.c.x, var_0.c.x, global3.a.x, -20929i))), _wgslsmith_sub_i32(-var_0.c.x, arg_2.c.x), -global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-509f, -432f))))))));
    var_2 = var_0;
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec3_i32(vec3<i32>(global1.x, max(-25700i, 53425i), func_4(u_input.e.x, func_2(Struct_2(global3.a), func_1(Struct_4(vec4<u32>(20149u, 13369u, 12568u, u_input.b), Struct_2(global3.a), Struct_2(global3.a), vec2<f32>(-1624f, -1785f)), global3.a.x, Struct_5(-777f, vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec4<bool>(true, true, false, false)), -631f)), Struct_1(true, -989f, ~global3.a, -1000f), ~(-20403i) >> (u_input.e.x % 32u))), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(min(global3.a, u_input.c.yww) << (vec3<u32>(1u, 0u, 0u) % vec3<u32>(32u)), -vec3<i32>(22691i, global1.x, global3.a.x)), vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(12327i, global3.a.x, 9022i, 0i), vec4<i32>(global3.a.x, u_input.c.x, -2147483647i, u_input.c.x)), -2147483647i >> (1u % 32u), -27577i)));
    let var_0 = abs(global3.a);
    global3 = Struct_2(vec3<i32>(-1i, global1.x, 2147483647i));
    let var_1 = _wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.d, u_input.b, 49038u), vec3<u32>(u_input.e.x, 0u, u_input.b) >> (vec3<u32>(0u, 4294967295u, u_input.d) % vec3<u32>(32u)), vec3<bool>(true, true, true)), countOneBits(u_input.e)), reverseBits(vec3<u32>(4294967295u << ((u_input.b << (36621u % 32u)) % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(88247u, u_input.d), _wgslsmith_sub_vec2_u32(u_input.e.xx, u_input.e.zy)), u_input.d)));
    global1 = vec3<i32>(global1.x, -51387i, ~var_0.x);
    global0 = array<vec3<f32>, 19>();
    let var_2 = Struct_4(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_1.x, 1u, 69379u, 63269u)), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(var_1, vec3<u32>(u_input.b, 1u, 4294967295u)), ~1u, countOneBits(u_input.b), ~u_input.e.x))), Struct_2(u_input.c.yxw), Struct_2(min(vec3<i32>(-2147483647i, -2147483647i, global3.a.x), vec3<i32>(var_0.x, global3.a.x, 1i)) << (u_input.e % vec3<u32>(32u))), vec2<f32>(-551f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1044f + 180f) + 1355f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, vec4<u32>(_wgslsmith_add_u32(countOneBits(0u), u_input.d), 4294967295u, ~select(abs(4294967295u), min(var_1.x, 0u), all(vec2<bool>(true, false))), ~(~(u_input.b | 24398u))));
}

