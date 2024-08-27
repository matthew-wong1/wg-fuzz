struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = 18309u;
    return arg_0;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    var var_0 = ~(~(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_3.b.x), vec2<u32>(519u, 1u)), arg_3.b.x)));
    var var_1 = -arg_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(957f, _wgslsmith_div_f32(arg_2.a.x, 1476f), _wgslsmith_f_op_f32(floor(-751f)), _wgslsmith_f_op_f32(floor(-1577f))))));
    var_1 = -(~(_wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, 2147483647i, u_input.a.x, arg_1), vec4<i32>(1110i, 2147483647i, 1i, u_input.a.x), true), select(vec4<i32>(arg_1, 2147483647i, u_input.a.x, 49022i), vec4<i32>(34795i, 25579i, arg_1, -17600i), arg_3.c)) | countOneBits(arg_3.d)));
    var var_3 = vec4<bool>(25787i <= _wgslsmith_mult_i32(arg_3.d, _wgslsmith_mult_i32(u_input.a.x << (arg_3.b.x % 32u), u_input.a.x)), true, var_0.x == ~_wgslsmith_div_u32(firstLeadingBit(var_0.x), var_0.x), all(!vec4<bool>(true, any(global0.xy), any(vec4<bool>(arg_3.c, false, arg_3.c, false)), true)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, -124f, 910f, 1482f)))))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    var var_0 = func_3(select(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(69119u, 1u), vec2<u32>(1u, 24208u))), vec2<u32>(1u, 1063u)), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(0u, 4294967295u)), vec2<u32>(1u, 1u))), all(select(!global0.xxy, global0.yzz, any(global0.xw)))), ~arg_0, func_3(1u, abs(u_input.a.x), arg_1, Struct_2(arg_1.a.x, _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(50130u, 3149u, 18365u)), !arg_3, _wgslsmith_mult_i32(u_input.a.x, 2147483647i >> (1u % 32u)))), Struct_2(-103f, _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(4483u, 4294967295u, 10272u)), countOneBits(vec3<u32>(38846u, 1u, 37243u)), ~reverseBits(vec3<u32>(68285u, 1u, 42347u))), arg_3, 0i));
    var var_1 = arg_1.a.wwx;
    var_0 = func_3(~1u, u_input.a.x, Struct_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(767f + var_1.x), _wgslsmith_div_f32(var_0.a.x, var_0.a.x), -918f, _wgslsmith_f_op_f32(f32(-1f) * -2066f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(416f, -626f, 1033f, -395f) - vec4<f32>(var_1.x, 424f, 1114f, var_0.a.x)))))), Struct_2(arg_1.a.x, vec3<u32>(1u, 1u, 1u), false, 33982i));
    var var_2 = select(false, !arg_3 & arg_3, true);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-517f + _wgslsmith_f_op_f32(650f + var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.zww)), arg_1.a.xzw))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(430f * arg_1.a.x), 553f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_1.x, var_0.a.x) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-937f, -646f, 235f), arg_1.a.zyw), _wgslsmith_f_op_vec3_f32(-var_0.a.xxx), vec3<bool>(global0.x, global0.x, global0.x))))));
    return -1272f;
}

fn func_1(arg_0: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(u_input.a.x, func_3(_wgslsmith_div_u32(countOneBits(27144u), ~58765u), ~func_2(2886i), arg_0, Struct_2(_wgslsmith_f_op_f32(max(arg_0.a.x, 296f)), ~vec3<u32>(1u, 30049u, 4294967295u), global0.x, 21625i & u_input.a.x)), _wgslsmith_add_vec2_i32(u_input.a.yy, abs(_wgslsmith_clamp_vec2_i32(u_input.a.xz, vec2<i32>(-9153i, u_input.a.x), u_input.a.zz))), global0.x != false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2661f + 429f))))));
    var_0 = arg_0.a.x;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x - -1206f), _wgslsmith_f_op_f32(arg_0.a.x * 1000f), func_3(472u, u_input.a.x, arg_0, Struct_2(arg_0.a.x, vec3<u32>(66357u, 110335u, 52845u), false, -2147483647i)).a.x, 717f))));
    global0 = !(!select(select(!vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(true, true, true, true), all(global0.wwy)), !vec4<bool>(false, true, global0.x, false), !select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(true, false, false, global0.x), false)));
    var_1 = func_3(reverseBits(~66145u), -70366i, Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-240f, 566f) * _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x)), 1413f, func_3(49612u, -2147483647i, Struct_3(vec4<f32>(var_1.a.x, -491f, var_1.a.x, 871f)), Struct_2(arg_0.a.x, vec3<u32>(1u, 21963u, 1u), true, u_input.a.x)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(370f + 881f)))), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1532f, var_1.a.x, false)))), func_3(1u, u_input.a.x, func_3(68080u, u_input.a.x, arg_0, Struct_2(1477f, vec3<u32>(0u, 1u, 33516u), global0.x, u_input.a.x)), Struct_2(518f, vec3<u32>(1u, 72416u, 4294967295u), true, u_input.a.x)).a.x, global0.x)), vec3<u32>(0u, 6287u, max(4294967295u, _wgslsmith_clamp_u32(4294967295u, 14816u, 0u))), false, -2147483647i));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec4<bool>(global0.x, all(vec4<bool>(false, func_1(Struct_3(vec4<f32>(-1270f, -740f, -432f, 840f))), any(vec3<bool>(global0.x, global0.x, global0.x)), false)), global0.x, !all(vec2<bool>(global0.x, global0.x)) && (u_input.a.x < 2147483647i));
    global0 = select(vec4<bool>(true, true, any(!select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true))), any(global0.zw)), select(select(!(!vec4<bool>(false, global0.x, global0.x, false)), !select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, global0.x), global0.x), false), !select(vec4<bool>(global0.x, global0.x, false, true), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), any(global0.yy)), vec4<bool>(global0.x, global0.x, false, true)), vec4<bool>(!(!global0.x) | true, !global0.x, !((u_input.a.x >> (1u % 32u)) > 52479i), !any(select(vec2<bool>(true, true), vec2<bool>(false, global0.x), global0.x))));
    var var_0 = Struct_4(global0.wwx, vec4<f32>(659f, _wgslsmith_f_op_f32(step(1000f, -1744f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-120f)), _wgslsmith_f_op_f32(select(-752f, 1682f, global0.x))))), _wgslsmith_f_op_f32(560f * -146f)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2592f, -1623f, 465f) + vec3<f32>(855f, 602f, -458f))) + vec3<f32>(-569f, _wgslsmith_f_op_f32(f32(-1f) * -2158f), _wgslsmith_f_op_f32(1077f - -1905f))), -firstLeadingBit(_wgslsmith_add_vec2_i32(u_input.a.xy, vec2<i32>(u_input.a.x, u_input.a.x))), 0u), select(-_wgslsmith_mod_vec4_i32(vec4<i32>(11159i, 1i, u_input.a.x, -22644i), vec4<i32>(-1i, 1i, 0i, u_input.a.x)) << (countOneBits(vec4<u32>(14808u, 4294967295u, 0u, 140u)) % vec4<u32>(32u)), vec4<i32>(u_input.a.x >> (firstTrailingBit(0u) % 32u), -6697i, ~2147483647i, _wgslsmith_sub_i32(54421i, -43366i)), !vec4<bool>(false, true, false, any(vec4<bool>(false, global0.x, global0.x, true)))));
    var_0 = Struct_4(!select(vec3<bool>(!var_0.a.x, true, !var_0.a.x), var_0.a, select(vec3<bool>(false, global0.x, var_0.a.x), !global0.xyw, all(vec4<bool>(false, var_0.a.x, var_0.a.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-682f, var_0.c.a.x)), _wgslsmith_f_op_f32(exp2(var_0.b.x)), -495f, _wgslsmith_f_op_f32(var_0.b.x + var_0.b.x)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1179f, 893f)), -375f, 2292f < var_0.c.a.x)), _wgslsmith_div_f32(var_0.b.x, 1214f), var_0.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c.b.x, 10489i >> (1u % 32u)), ~select(u_input.a.zy, u_input.a.yy, var_0.a.xx)), abs(var_0.c.c) ^ ~(~0u)), var_0.d);
    let var_1 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(select(min(var_1.b, u_input.a.zz), countOneBits(vec2<i32>(countOneBits(-39313i), var_0.d.x)), vec2<bool>(any(global0.zx), var_0.a.x)), var_1.b.x);
}

