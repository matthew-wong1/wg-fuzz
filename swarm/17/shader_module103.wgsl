struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = vec2<i32>(~min(_wgslsmith_mult_i32(min(32346i, arg_1.a), _wgslsmith_div_i32(-35040i, -10724i)), ~(-7594i)), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_div_i32(select(2147483647i, -5427i, select(arg_2.b.x, arg_2.b.x, arg_2.b.x)), arg_1.a), arg_1.a));
    var var_1 = abs(var_0 | vec2<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_add_i32(1i, arg_1.a)), ~1i));
    let var_2 = _wgslsmith_f_op_f32(-arg_1.c);
    var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~_wgslsmith_div_vec2_i32(var_0, countOneBits(var_0)), vec2<i32>(-36747i, 2147483647i)), var_0);
    let var_3 = var_0.x;
    return ~(~select(vec2<i32>(0i, var_1.x) >> (select(vec2<u32>(arg_1.b, u_input.a.x), u_input.a.yz, vec2<bool>(arg_2.b.x, arg_2.b.x)) % vec2<u32>(32u)), vec2<i32>(33003i, ~var_1.x), arg_2.b.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = func_3(u_input.b, Struct_4(_wgslsmith_add_i32(-_wgslsmith_sub_i32(37129i, 0i), 5030i), 3988u, _wgslsmith_f_op_f32(round(-952f))), arg_2);
    var var_1 = Struct_2(true);
    var var_2 = Struct_2(!any(select(select(vec3<bool>(true, arg_3, false), vec3<bool>(arg_2.b.x, var_1.a, false), vec3<bool>(false, true, var_1.a)), vec3<bool>(var_1.a, arg_3, false), true)));
    var var_3 = -1656f;
    var var_4 = min(vec2<i32>(-var_0.x << (~72791u % 32u), firstLeadingBit(var_0.x)), max(firstLeadingBit(vec2<i32>(var_0.x, 15499i)), -vec2<i32>(var_0.x, 1i)) | firstTrailingBit(vec2<i32>(-25658i, var_0.x) << (u_input.a.xw % vec2<u32>(32u)))) >> (arg_0.zx % vec2<u32>(32u));
    return Struct_1(4294967295u, arg_2.b);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = vec3<i32>(9993i, (i32(-1i) * -8110i) | var_0.a, arg_0.a);
    let var_2 = arg_0;
    let var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, ~1i, _wgslsmith_sub_i32(1i, arg_0.a), 1i), -(~vec4<i32>(var_2.a, -56466i, arg_0.a, var_2.a) >> (u_input.c % vec4<u32>(32u)))), (firstTrailingBit(firstTrailingBit(vec4<i32>(-51960i, arg_0.a, arg_0.a, -24952i))) >> (u_input.c % vec4<u32>(32u))) << (vec4<u32>(~(arg_0.b ^ arg_2.e.x), 0u, 0u, var_0.b) % vec4<u32>(32u)));
    var_1 = -var_3.wwz;
    return func_2(~vec3<u32>(_wgslsmith_mult_u32(var_0.b, 26180u), 44878u, ~arg_0.b) | vec3<u32>(4294967295u, ~_wgslsmith_mult_u32(arg_0.b, 1u), _wgslsmith_mod_u32(select(var_2.b, arg_2.a.a, true), var_2.b & 1u)), u_input.d.x, arg_2.a, all(!select(vec3<bool>(true, true, true), !vec3<bool>(true, arg_1.a, arg_1.a), !vec3<bool>(true, arg_1.a, arg_2.a.b.x))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>) -> vec4<f32> {
    var var_0 = firstLeadingBit(46925u);
    var var_1 = u_input.a.x;
    var_1 = ~u_input.d.x << (2178u % 32u);
    var_1 = reverseBits(u_input.d.x);
    var_1 = 1u;
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, 353f), -1674f), arg_1, _wgslsmith_f_op_f32(sign(898f)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c.x;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-995f * 1381f)) - 182f))), _wgslsmith_f_op_f32(-368f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-236f - -1230f) + -1190f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1184f, -910f, -2059f, var_1) + vec4<f32>(var_1, var_1, var_1, var_1)))) - vec4<f32>(var_1, _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-742f - 1429f)), _wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_1(Struct_4(1i, var_0, -1045f), Struct_2(false), Struct_3(Struct_1(0u, vec2<bool>(false, true)), Struct_2(true), u_input.d.x, vec4<f32>(var_2.x, -336f, var_1, 373f), u_input.a.xx)), _wgslsmith_f_op_f32(abs(403f)), u_input.c)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-376f, 533f, -1342f, -737f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(624f)), _wgslsmith_div_f32(607f, 677f), var_2.x, _wgslsmith_f_op_f32(max(var_1, var_1)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-566f)) + var_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, -782f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1002f, 1f))), _wgslsmith_f_op_vec4_f32(func_4(func_2(vec3<u32>(0u, var_0, 4294967295u), ~var_0, Struct_1(var_0, vec2<bool>(true, true)), func_1(Struct_4(-18554i, 0u, var_1), Struct_2(true), Struct_3(Struct_1(45555u, vec2<bool>(false, false)), Struct_2(false), 20780u, vec4<f32>(var_1, var_1, var_1, 373f), u_input.a.yw)).b.x), var_2.x, vec4<u32>(12620u, countOneBits(u_input.c.x), 12354u, 1u))).x, 1031f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -555f), var_2.x, var_2.x, 1152f), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(func_1(Struct_4(-41619i, ~u_input.d.x, _wgslsmith_f_op_f32(-var_2.x)), Struct_2(any(vec3<bool>(false, false, false))), Struct_3(func_2(u_input.a.yzy, 4294967295u, Struct_1(u_input.b, vec2<bool>(true, true)), false), Struct_2(true), 26780u, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-250f, -984f, -834f, -1030f), vec4<f32>(var_2.x, 403f, var_2.x, -1000f))), vec2<u32>(13372u, var_0))).a, func_2(~u_input.c.wzy, var_0, Struct_1(~var_0, vec2<bool>(false, true)), false).a));
}

