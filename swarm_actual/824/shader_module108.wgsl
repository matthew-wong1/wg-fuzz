struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(0i), Struct_4(1i), Struct_4(-32931i), Struct_4(2147483647i), Struct_4(2147483647i), Struct_4(0i), Struct_4(0i), Struct_4(29997i), Struct_4(-29104i), Struct_4(-1i), Struct_4(-1i), Struct_4(0i), Struct_4(-34374i), Struct_4(-54118i));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    let var_0 = vec2<u32>(~u_input.a, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(global0.x, 316u)), vec2<u32>(u_input.a, global0.x) >> (vec2<u32>(u_input.a, 43761u) % vec2<u32>(32u))), 112496u));
    var var_1 = _wgslsmith_div_u32(var_0.x, ~(~_wgslsmith_add_u32(global0.x, u_input.a)));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-559f, _wgslsmith_f_op_f32(round(383f)))), 250f))));
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(countOneBits(_wgslsmith_sub_u32(var_0.x | 7801u, 1u)), 60516u)), 14u)];
    return u_input.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: f32) -> vec4<bool> {
    global1 = array<Struct_4, 14>();
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(abs(1i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(56147i, u_input.d.x), vec2<i32>(-1i, 66874i)), vec2<i32>(arg_1.a, 0i))), 1i), ~21439i);
    global0 = ~vec2<u32>(_wgslsmith_add_u32(u_input.a, u_input.a & global0.x), u_input.a) << (_wgslsmith_mult_vec2_u32(firstTrailingBit(~(~vec2<u32>(23264u, global0.x))), ~(~vec2<u32>(0u, 88950u))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_clamp_u32(~1u, global0.x, u_input.a) < ~_wgslsmith_mult_u32(~u_input.a, countOneBits(~global0.x));
    return !vec4<bool>(arg_0.x, arg_0.x, true, !all(!arg_0));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    let var_0 = func_4(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), _wgslsmith_mult_u32(1u, global0.x) < ~17809u), global1[_wgslsmith_index_u32(global0.x | ((u_input.a & u_input.a) ^ func_3()), 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1799f)));
    global1 = array<Struct_4, 14>();
    global1 = array<Struct_4, 14>();
    var var_1 = Struct_1(vec2<f32>(830f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1296f)), _wgslsmith_f_op_f32(-1000f + 658f))) - _wgslsmith_f_op_f32(-1f))), !var_0);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(2387f + -312f), _wgslsmith_f_op_f32(floor(var_1.a.x)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(113f)), 1309f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1126f - var_2)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1444f, var_2) + _wgslsmith_f_op_f32(f32(-1f) * -307f)))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(311f + arg_1.x) - _wgslsmith_f_op_f32(func_2(vec3<i32>(2147483647i, 1i, arg_0)))) - 152f)) >= arg_1.x;
    var var_1 = vec2<bool>(true, true);
    let var_2 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-330f, -165f)))), !(!vec4<bool>(false, var_1.x, var_0, var_0))), global0.x, u_input.b.xx | u_input.b.zw);
    var_1 = select(select(var_2.a.b.xz, vec2<bool>(var_1.x, var_2.a.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1285f + 877f))) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_2.a.a.x)), _wgslsmith_f_op_f32(select(1261f, var_2.a.a.x, false))))), vec2<bool>(false, var_0), true);
    let var_3 = Struct_3(Struct_2(var_2.a.a, global0.x, vec4<i32>(-13473i, i32(-1i) * -28736i, ~(~arg_0), max(arg_0, 34829i)), Struct_1(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -374f)), !vec4<bool>(true, var_2.a.b.x, var_2.a.b.x, var_2.a.b.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_1, vec2<f32>(arg_1.x, 240f))) + _wgslsmith_f_op_vec2_f32(-var_2.a.a)), select(vec4<bool>(true, false, var_0, true), select(var_2.a.b, var_2.a.b, var_1.x), true))), ~abs(-vec3<i32>(var_2.c.x, arg_0, 1i)) << (vec3<u32>(var_2.b, var_2.b, arg_2.x) % vec3<u32>(32u)), true, arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(abs(firstTrailingBit(vec3<i32>(u_input.d.x, 11163i, 1i))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.x)))));
    return var_3.a.d;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: i32, arg_3: u32) -> Struct_3 {
    var var_0 = arg_1;
    var_0 = Struct_5(var_0.a, 1u, ~(-(~var_0.c)));
    var_0 = Struct_5(arg_1.a, ~20827u, min(vec2<i32>(var_0.c.x | arg_0.x, arg_1.c.x) >> (firstTrailingBit(vec2<u32>(global0.x, u_input.a)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(~var_0.c << (~vec2<u32>(global0.x, var_0.b) % vec2<u32>(32u)), vec2<i32>(~(-55248i), 18674i), firstLeadingBit(var_0.c))));
    var var_1 = !(!(!var_0.a.b.x || true));
    var var_2 = vec4<u32>(abs(53668u), select(func_3(), 14712u << (u_input.a % 32u), true), 0u, 1u);
    return Struct_3(Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.a.x, -822f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(638f, var_0.a.a.x)), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.a))), _wgslsmith_div_u32(4294967295u, 144017u), ~(~(~u_input.d)), func_1(min(1i, ~1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, -320f)), var_2.xz), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.a.x, -323f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.a.x, -1094f), vec2<f32>(var_0.a.a.x, 2677f), false))), vec4<bool>(var_0.a.b.x, arg_1.a.b.x, true, -34897i != arg_1.c.x))), abs(vec3<i32>(arg_1.c.x, arg_0.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, var_0.c.x), _wgslsmith_mod_i32(arg_0.x, arg_0.x)))), true, _wgslsmith_sub_u32(68939u, var_2.x), -990f);
}

fn func_6(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_5(func_1(u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_2.a.a)) * vec2<f32>(_wgslsmith_f_op_f32(func_2(vec3<i32>(-2147483647i, -5089i, -6303i))), _wgslsmith_f_op_f32(-arg_3.x))), arg_1.yy), reverseBits(~_wgslsmith_div_u32(select(41297u, 1u, true), ~0u)), u_input.b.yy);
    let var_1 = Struct_5(arg_2.a.e, min(~global0.x, countOneBits(_wgslsmith_mult_u32(9186u, ~arg_0))), reverseBits(~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.a.c.x, arg_2.b.x), ~vec2<i32>(-63705i, arg_2.b.x))));
    var var_2 = -(~vec4<i32>(abs(func_5(vec3<i32>(-1i, arg_2.b.x, 69488i), Struct_5(Struct_1(vec2<f32>(-104f, arg_3.x), vec4<bool>(true, true, var_0.a.b.x, var_1.a.b.x)), 100644u, vec2<i32>(2147483647i, var_1.c.x)), -2147483647i, 33454u).b.x), func_5(vec3<i32>(u_input.c, var_1.c.x, -9517i), var_1, firstLeadingBit(-1i), ~1u).a.c.x, -5125i, firstTrailingBit(abs(15613i))));
    let var_3 = Struct_5(var_0.a, ~abs(_wgslsmith_mod_u32(var_1.b, _wgslsmith_mult_u32(var_0.b, u_input.a))), -vec2<i32>(-17980i, -var_0.c.x) >> (vec2<u32>(~arg_2.d, ~0u) % vec2<u32>(32u)));
    let var_4 = func_5(var_2.zwx, var_3, 1i, _wgslsmith_add_u32(var_0.b, firstLeadingBit(0u))).a.c.zz;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_3(func_6(5766u, vec4<u32>(~18905u >> (1u % 32u), _wgslsmith_add_u32(13199u, u_input.a), ~2785u, u_input.a), func_5(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), vec3<i32>(u_input.b.x, 0i, u_input.b.x)), Struct_5(func_1(-2147483647i, vec2<f32>(875f, -1096f), vec2<u32>(u_input.a, 4294967295u)), global0.x, -vec2<i32>(-1i, u_input.d.x)), _wgslsmith_dot_vec4_i32(reverseBits(u_input.d), -u_input.b), ~(~82260u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(495f, _wgslsmith_f_op_f32(f32(-1f) * -2266f), 355f, -597f))), u_input.d.wyy & _wgslsmith_sub_vec3_i32(~u_input.b.xyz, u_input.d.zzx), true, ~global0.x, -556f);
    var var_2 = vec4<u32>(~countOneBits(var_1.d), abs(~firstLeadingBit(var_1.a.b)), var_1.d, 1u);
    var_2 = ~firstLeadingBit(vec4<u32>(global0.x, 25899u, 1u, 4294967295u));
    let var_3 = var_1;
    global0 = firstLeadingBit(firstTrailingBit(abs(var_2.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_2.x, var_1.a.b, firstLeadingBit(max(var_2.x, u_input.a)), ~51342u), firstLeadingBit(~vec3<u32>(50144u, ~global0.x, 97244u << (0u % 32u))), i32(-1i) * -1i, _wgslsmith_f_op_f32(-var_1.e), vec3<f32>(var_1.a.d.a.x, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(336f))) - _wgslsmith_f_op_f32(func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, var_1.a.c.x, var_1.b.x), vec3<i32>(-4772i, var_3.a.c.x, var_1.a.c.x)))))));
}

