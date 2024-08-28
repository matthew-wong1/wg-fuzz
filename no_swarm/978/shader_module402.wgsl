struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    let var_0 = firstTrailingBit(u_input.b.yx);
    global0 = ~0u;
    let var_1 = Struct_3(arg_1.c.x | any(select(select(arg_1.c, vec3<bool>(false, arg_1.c.x, arg_1.d.x), arg_1.b.a.x), arg_1.c, arg_1.e.a.xzy)), arg_1, arg_1.b);
    let var_2 = _wgslsmith_add_i32(_wgslsmith_mult_i32(select(_wgslsmith_mult_i32(-1i, 11727i), _wgslsmith_mult_i32(var_0.x, min(arg_2.x, arg_2.x)), select(true | arg_1.d.x, any(arg_1.a.a), true)), 2147483647i), 2147483647i);
    var var_3 = select(!vec4<bool>(all(var_1.c.a), any(arg_1.e.a) & (arg_1.e.b == 41445u), true, var_1.c.a.x), var_1.c.a, vec4<bool>(arg_1.e.a.x, arg_1.a.c, true, any(select(select(var_1.b.e.a, arg_1.d, var_1.a), vec4<bool>(var_1.a, arg_1.a.c, arg_1.c.x, arg_1.c.x), vec4<bool>(arg_1.a.c, false, true, var_1.a)))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c, u_input.d, 96245u), ~((~vec3<u32>(arg_1.b.d, arg_1.a.d, u_input.a) | vec3<u32>(u_input.a, 0u, 4294967295u)) & vec3<u32>(~var_1.b.e.b, ~43349u, arg_1.a.d | 4294967295u)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = ~abs(vec4<u32>(_wgslsmith_mult_u32(62229u, firstLeadingBit(u_input.d)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 25390u, 4294967295u) ^ vec3<u32>(u_input.c, u_input.d, 94575u), ~vec3<u32>(u_input.c, u_input.c, u_input.d)), ~_wgslsmith_mult_u32(u_input.a, 28174u), u_input.d));
    var_0 = vec4<u32>(func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))), Struct_2(Struct_1(vec4<bool>(arg_3.x, arg_3.x, true, arg_2), 4294967295u, arg_2, u_input.a), Struct_1(vec4<bool>(false, arg_2, arg_3.x, arg_0), var_0.x, true, 0u), select(vec3<bool>(false, true, arg_2), arg_3, arg_0), select(vec4<bool>(true, arg_0, true, false), vec4<bool>(arg_0, true, arg_2, true), arg_2), Struct_1(vec4<bool>(arg_2, true, true, false), 18724u, arg_3.x, var_0.x)), u_input.b.zx, u_input.e.x) ^ var_0.x, ~_wgslsmith_div_u32(1u, reverseBits(select(15066u, var_0.x, arg_2))), u_input.c, u_input.a);
    var var_1 = -1i;
    let var_2 = var_0.yx;
    let var_3 = Struct_2(Struct_1(select(!(!vec4<bool>(false, arg_0, true, false)), vec4<bool>(arg_3.x | arg_0, u_input.e.x < 34548i, arg_0, arg_3.x), arg_3.x), (~var_2.x << (~16519u % 32u)) ^ 1u, arg_0, var_2.x), Struct_1(!(!(!vec4<bool>(true, arg_3.x, true, arg_0))), 1u, true, var_0.x), select(select(vec3<bool>(false, any(vec4<bool>(false, true, true, false)), select(arg_3.x, false, false)), select(arg_3, select(vec3<bool>(arg_2, arg_0, true), arg_3, vec3<bool>(false, arg_0, arg_0)), true), (i32(-1i) * -2147483647i) >= (1i | u_input.b.x)), select(!select(vec3<bool>(true, arg_2, arg_2), arg_3, false), select(vec3<bool>(false, false, true), !vec3<bool>(arg_3.x, true, true), select(arg_3, vec3<bool>(false, arg_2, arg_3.x), arg_3)), false), true), vec4<bool>(true, true | (arg_2 | true), arg_2, true), Struct_1(vec4<bool>(true, true, arg_2, false), _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, u_input.c, _wgslsmith_mult_u32(3618u, u_input.a), 4294967295u), min(select(vec4<u32>(7245u, 4294967295u, var_0.x, 0u), vec4<u32>(4294967295u, 4294967295u, var_0.x, 1u), vec4<bool>(arg_0, false, true, false)), vec4<u32>(35165u, u_input.c, u_input.a, var_0.x))), min(u_input.a, min(var_0.x, 6371u)) > ~114931u, _wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.ywz), var_0.wwz) ^ ~(18080u & var_0.x)));
    return Struct_3(arg_0, Struct_2(Struct_1(!select(var_3.d, vec4<bool>(arg_0, var_3.a.a.x, false, false), var_3.d), 5089u, arg_0, ~47636u), var_3.b, vec3<bool>(false, false, !var_3.b.c), select(vec4<bool>(arg_0, u_input.b.x == u_input.b.x, -984f != arg_1, any(var_3.e.a)), var_3.b.a, vec4<bool>(arg_1 >= arg_1, false, true, false)), Struct_1(select(select(var_3.a.a, vec4<bool>(false, arg_0, arg_2, false), var_3.e.a), select(vec4<bool>(true, arg_2, arg_3.x, arg_3.x), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, var_3.b.a.x)), vec4<bool>(arg_0, false, arg_2, arg_2)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_2.x, 12545u, 0u, 1u)), ~vec4<u32>(0u, 0u, 0u, var_2.x)), any(select(arg_3.zy, vec2<bool>(true, false), arg_3.xy)), _wgslsmith_add_u32(10891u, select(0u, 101371u, arg_0)))), var_3.a);
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = vec3<i32>(_wgslsmith_add_i32(abs(select(min(u_input.b.x, u_input.b.x), ~u_input.b.x, false && arg_0.b.a.c)), u_input.e.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(5204i, u_input.e.x, -1i), vec3<i32>(2147483647i, -1i, 31255i), -u_input.e.wxx), u_input.b), _wgslsmith_sub_vec3_i32(u_input.b ^ vec3<i32>(u_input.e.x, u_input.b.x, 29241i), reverseBits(u_input.b) | countOneBits(u_input.e.yzz))), ~reverseBits(u_input.e.x));
    global0 = _wgslsmith_add_u32(arg_0.c.d, _wgslsmith_add_u32(0u, ~arg_0.c.b));
    var_0 = countOneBits(_wgslsmith_div_vec3_i32(min(vec3<i32>(u_input.e.x, 1i, -73717i), vec3<i32>(60984i, -1i, 11262i)) | (~vec3<i32>(u_input.b.x, u_input.b.x, -14773i) >> (vec3<u32>(14139u, 4294967295u, 4294967295u) % vec3<u32>(32u))), firstLeadingBit(select(u_input.b, u_input.e.wxw, vec3<bool>(arg_0.b.a.a.x, arg_0.a, arg_0.c.c))) << (((vec3<u32>(9420u, 19263u, u_input.c) << (vec3<u32>(u_input.d, 32679u, 4294967295u) % vec3<u32>(32u))) & (vec3<u32>(arg_0.b.a.b, 1u, u_input.c) >> (vec3<u32>(0u, 28719u, 31198u) % vec3<u32>(32u)))) % vec3<u32>(32u))));
    var var_1 = 4294967295u & u_input.c;
    let var_2 = 0i;
    return _wgslsmith_div_u32(~u_input.a, _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 45997u, 31508u), ~vec4<u32>(1u, 4294967295u, u_input.a, arg_0.b.b.d))), ~vec4<u32>(~u_input.c, _wgslsmith_clamp_u32(u_input.c, arg_0.b.a.b, 71465u), func_3(843f, arg_0.b, u_input.e.ww, var_0.x), ~u_input.c)));
}

fn func_1() -> vec4<bool> {
    let var_0 = ~vec4<u32>(u_input.c, (_wgslsmith_clamp_u32(u_input.d, u_input.d, u_input.c) & (1u & u_input.d)) >> (func_4(func_2(true, 1398f, true, vec3<bool>(true, false, false))) % 32u), 41664u, _wgslsmith_add_u32(_wgslsmith_mult_u32(~2746u, _wgslsmith_div_u32(u_input.d, u_input.a)), abs(~u_input.a)));
    let var_1 = func_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1409f)))), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)), vec3<bool>(select(true, true, true) && false, func_2(true && func_2(true, 782f, true, vec3<bool>(true, false, true)).c.a.x, 627f, all(vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))).a, false)).b;
    let var_2 = ~(~var_1.b.d);
    var var_3 = _wgslsmith_add_vec4_i32(u_input.e, -_wgslsmith_add_vec4_i32(u_input.e, vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, u_input.e.yzz), ~(-44659i), _wgslsmith_mod_i32(1i, u_input.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, 1i, u_input.b.x), u_input.e))));
    var var_4 = 24651u;
    return func_2(!var_1.a.a.x, _wgslsmith_f_op_f32(select(-398f, -1156f, var_1.b.c || any(select(var_1.a.a.wx, vec2<bool>(var_1.e.c, var_1.e.a.x), vec2<bool>(var_1.c.x, false))))), var_1.b.c, !(!func_2(var_1.e.c, _wgslsmith_f_op_f32(1523f * -1149f), false, select(var_1.b.a.zxz, var_1.c, var_1.c)).c.a.wyx)).b.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, false))), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), any(vec4<bool>(true, true, true, true))), ~43986u, true, 1u);
    var var_1 = vec2<bool>(any(func_1()), any(var_0.a.yzz));
    let var_2 = 25035i;
    var var_3 = var_0.d;
    let var_4 = _wgslsmith_div_i32(max(-1i, -1i), u_input.e.x) | u_input.b.x;
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-221f, 1000f, 1545f, 1000f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1400f, 1466f, -1756f, 1061f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(2064f, -2606f, -336f, -1000f)), select(vec4<bool>(false, true, var_1.x, true), var_0.a, u_input.b.x <= var_2)))));
    let var_6 = select(select(u_input.e, ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, var_2, var_4, u_input.b.x), vec4<i32>(5034i, u_input.e.x, var_2, var_4)), var_1.x) >> (~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d, 4294967295u, 0u, u_input.a), vec4<u32>(26859u, var_0.d, 34812u, var_0.d), vec4<u32>(var_0.d, 1u, var_0.b, 2868u))) % vec4<u32>(32u)), u_input.e, vec4<bool>(any(var_0.a), false, all(var_0.a.zxz), true || select(true, true, true)));
    var var_7 = Struct_4(Struct_2(func_2(var_0.a.x, _wgslsmith_div_f32(var_5.x, var_5.x), all(var_0.a.xz) & false, vec3<bool>(var_1.x, var_0.c, false)).c, func_2(func_1().x, 220f, all(vec2<bool>(true, true)), vec3<bool>(var_1.x, var_0.c, var_0.c)).b.a, !vec3<bool>(true, u_input.c == u_input.a, var_1.x && var_1.x), var_0.a, Struct_1(var_0.a, ~0u | (var_0.d ^ 1u), true, 41453u)), ~(~(-vec4<i32>(8868i, u_input.e.x, -1i, 29897i))) ^ select(~(vec4<i32>(-2147483647i, var_6.x, var_2, 2147483647i) & var_6), ~u_input.e, var_5.x >= _wgslsmith_f_op_f32(round(198f))));
    var var_8 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.x, -1044f)), var_5.xw)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_5.x, var_5.x, var_5.x, var_5.x), vec4<f32>(-236f, var_5.x, var_5.x, -148f)))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_5.x, var_5.x, -902f, var_5.x), vec4<f32>(var_5.x, var_5.x, -174f, var_5.x)))))), firstTrailingBit(select(i32(-1i) * -var_6.x, _wgslsmith_div_i32(-var_4, var_6.x >> (var_7.a.b.d % 32u)), var_7.a.b.c)), 0u);
}

