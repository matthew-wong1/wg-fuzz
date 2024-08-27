struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(~_wgslsmith_div_vec3_i32(select(vec3<i32>(1i, 0i, -43246i), vec3<i32>(15576i, -2147483647i, 0i), true), abs(vec3<i32>(-26375i, -10875i, 21625i))), vec3<i32>(~9593i >> (u_input.a % 32u), _wgslsmith_mult_i32(max(1i, -1i), 1i), 6062i)), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(445f, -191f, 642f, 261f) + vec4<f32>(604f, -260f, -1983f, -285f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-442f, -1276f, -486f, -881f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(664f, 373f, 689f, 388f) - vec4<f32>(638f, 382f, 615f, -444f)))));
    var var_1 = -1085f;
    var var_2 = vec2<i32>(var_0.a.x, var_0.a.x) >> (abs(vec2<u32>(countOneBits(~u_input.a), abs(19931u))) % vec2<u32>(32u));
    var var_3 = var_0;
    var_3 = Struct_1(~_wgslsmith_sub_vec3_i32(var_0.a, ~var_0.a), vec2<bool>(any(!(!vec4<bool>(var_0.b.x, true, false, true))), 0i != select(0i, var_2.x, any(vec4<bool>(var_0.b.x, var_0.b.x, false, true)))), var_0.c);
    return select(select(select(!var_0.b, var_3.b, true), select(var_0.b, select(select(var_0.b, var_3.b, vec2<bool>(false, var_3.b.x)), !var_3.b, vec2<bool>(false, var_3.b.x)), !(!vec2<bool>(var_3.b.x, var_0.b.x))), !select(select(vec2<bool>(false, var_3.b.x), var_0.b, var_0.b.x), var_0.b, all(vec3<bool>(false, false, true)))), select(vec2<bool>(var_3.b.x, !(var_0.b.x && var_3.b.x)), !(!var_3.b), !var_3.b.x), !vec2<bool>(var_0.b.x, !(!var_0.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1.c.x;
    let var_1 = reverseBits(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) | 0u, firstTrailingBit(0u), 1u & _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 99515u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_add_u32(u_input.a, u_input.a), 0u), ~(~4294967295u)));
    var var_2 = arg_0.a.x;
    var_2 = ~(-1i);
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1461f - _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(trunc(arg_1.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c.x, -395f)) + _wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_f_op_f32(-1005f * _wgslsmith_f_op_f32(546f + _wgslsmith_div_f32(-883f, -1000f)))), arg_0.c.zxx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1418f + arg_0.c.x)) * arg_1.c.x) - -855f));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(762f - -742f)))))), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(func_4(Struct_1(vec3<i32>(~(-8484i), reverseBits(-18411i), 1i), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(364f, 858f, -1582f, -1000f) + vec4<f32>(-1167f, 1000f, -1000f, 1047f))))), Struct_1(vec3<i32>(-2147483647i, -8873i << (1u % 32u), _wgslsmith_add_i32(15492i, 12645i)), select(vec2<bool>(true, true), vec2<bool>(false, true), func_3()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-315f, -394f, 1018f, -1793f), vec4<f32>(-688f, -510f, -1547f, 953f), vec4<bool>(true, false, false, true))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-152f, 628f, 555f, 1339f), vec4<f32>(1167f, 2526f, 1268f, 542f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), var_0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-216f + -1960f), var_0.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 240f, -531f), vec3<f32>(-1072f, 1666f, var_0.x))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(921f, -1033f, true)) + _wgslsmith_f_op_f32(-var_0.x))) + 1889f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1488f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(508f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, 895f, true))) + -1092f)), _wgslsmith_f_op_f32(-var_0.x));
    let var_1 = -countOneBits(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(3336i, -2147483647i, 0i), abs(vec3<i32>(2147483647i, -11169i, 25669i)))));
    let var_2 = Struct_1(vec3<i32>(-1i) * -(~vec3<i32>(var_1, var_1, var_1)), !vec2<bool>(false, all(vec4<bool>(false, false, true, true))), vec4<f32>(-1113f, -124f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(exp2(var_0.x))));
    return -var_1;
}

fn func_1(arg_0: i32) -> vec3<bool> {
    let var_0 = select(vec4<i32>(-2147483647i >> (1u % 32u), ~6685i, -func_2(vec3<u32>(u_input.a, 38620u, 42050u)), -arg_0) << (abs(vec4<u32>(u_input.a, 0u, _wgslsmith_add_u32(23228u, 1u), ~77208u)) % vec4<u32>(32u)), vec4<i32>(-28268i, 0i, abs(arg_0), ~(-2147483647i)), vec4<bool>(all(vec2<bool>(true, true)), false, any(vec3<bool>(u_input.a != 1u, any(vec4<bool>(true, true, false, true)), all(vec2<bool>(false, false)))), true));
    let var_1 = vec4<i32>(2147483647i, var_0.x, ~var_0.x & arg_0, countOneBits(select(~(-13623i), min(arg_0, 68294i), false) >> (_wgslsmith_mod_u32(u_input.a, ~u_input.a) % 32u)));
    let var_2 = var_0.xy ^ ~vec2<i32>(_wgslsmith_sub_i32(var_1.x, countOneBits(-40898i)), -28672i);
    let var_3 = Struct_1(select(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(max(var_1.yxy, var_1.wzy), var_1.xwy), var_1.zxz), vec3<i32>(firstLeadingBit(~(-10355i)), -2147483647i, ~var_1.x >> (_wgslsmith_mod_u32(1u, u_input.a) % 32u)), vec3<bool>(true, !select(false, false, false), var_1.x != _wgslsmith_div_i32(arg_0, 6834i))), vec2<bool>(func_3().x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(392f, -1406f, -1000f, 590f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(765f, 1416f, -3160f, -938f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1631f, 341f, 3000f, 504f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(688f, 863f, 1008f, 710f)), false)))));
    let var_4 = vec2<bool>(true, any(var_3.b));
    return select(!vec3<bool>(any(!vec3<bool>(var_3.b.x, var_4.x, true)), !select(false, var_4.x, false), true | !var_3.b.x), vec3<bool>(!all(!vec3<bool>(false, true, var_3.b.x)), any(!vec3<bool>(true, var_3.b.x, var_4.x)) && func_3().x, all(select(!vec3<bool>(true, var_4.x, false), vec3<bool>(var_3.b.x, var_3.b.x, true), !vec3<bool>(var_4.x, var_4.x, var_3.b.x)))), var_4.x);
}

fn func_5(arg_0: vec3<bool>) -> StorageBuffer {
    let var_0 = ~(~abs(vec2<u32>(0u, 4294967295u)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(230f)), _wgslsmith_f_op_f32(-758f - _wgslsmith_f_op_f32(f32(-1f) * -1346f)));
    var var_2 = Struct_1(~vec3<i32>(reverseBits(-1i), abs(-63102i), min(1i, 2147483647i)), !arg_0.zy, vec4<f32>(_wgslsmith_f_op_f32(843f - 194f), 113f, _wgslsmith_f_op_f32(f32(-1f) * -1751f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1)))));
    var var_3 = false;
    let var_4 = ~(~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(44951u, 40987u, var_0.x), vec3<u32>(var_0.x, u_input.a, u_input.a))));
    return StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, var_1, 1000f, var_2.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_2.c, vec4<f32>(var_1, var_1, 152f, var_1), true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-879f, var_2.c.x, -122f)), select(_wgslsmith_div_u32(12281u, _wgslsmith_dot_vec2_u32(abs(var_4.yy), countOneBits(vec2<u32>(4294967295u, u_input.a)))), firstTrailingBit(~4294967295u), arg_0.x), abs(min(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_4.x, 4294967295u, 67459u), vec4<u32>(var_0.x, 1u, 4294967295u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 32452u, u_input.a, var_4.x), vec4<u32>(4294967295u, 4294967295u, u_input.a, var_0.x)))) & firstLeadingBit(abs(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 21202u, u_input.a)))), 3476u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + 1022f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))) - _wgslsmith_f_op_f32(round(217f))));
    let var_1 = Struct_1(~countOneBits(vec3<i32>(1i, 1i, 1i)), select(vec2<bool>(true, true), vec2<bool>(!(0u != u_input.a), false), true), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-593f, 695f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(114f, -513f)) * _wgslsmith_f_op_f32(round(-480f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-552f, 1134f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(870f + 1000f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(886f)))))), -856f));
    let var_2 = var_1.c.xzy;
    var_0 = var_1.c.x;
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = func_5(func_1(2147483647i));
}

