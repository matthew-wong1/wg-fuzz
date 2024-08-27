struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, i32(-2147483648));

var<private> global1: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_3) -> vec2<i32> {
    global0 = vec2<i32>(global0.x & _wgslsmith_sub_i32(-firstTrailingBit(global0.x), abs(~global0.x)), _wgslsmith_mult_i32(22642i, global0.x));
    return reverseBits(arg_0.a.xx);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_4) -> vec2<f32> {
    global1 = all(vec3<bool>(true, all(!vec2<bool>(arg_2.a, arg_2.b)), select(false || arg_2.b, arg_2.b, false))) | arg_2.b;
    var var_0 = ~global0.x >> (_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_clamp_u32(10583u, 23440u, firstTrailingBit(1u))), 1u) % 32u);
    var var_1 = min(-abs(-1i), -7352i);
    let var_2 = Struct_1(4294967295u, firstLeadingBit(~abs(70196u)) > reverseBits(_wgslsmith_dot_vec2_u32(~u_input.a.yy, vec2<u32>(13982u, 4294967295u))));
    var_0 = ~(~_wgslsmith_dot_vec3_i32(reverseBits(abs(vec3<i32>(1871i, -5309i, -1i))), arg_3.a.xyz));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -580f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1626f, 872f)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -532f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-122f, -178f), vec2<f32>(630f, -658f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(902f, 399f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(236f, -969f), vec2<f32>(1994f, 1000f), arg_2.b)), !vec2<bool>(arg_2.b, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-621f, 470f)))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: u32) -> vec2<i32> {
    let var_0 = arg_1.xy;
    var var_1 = Struct_4(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, 1i, arg_2.x << (79518u % 32u), -global0.x), ~vec4<i32>(0i, -2147483647i, -3268i, -5008i)) >> (~u_input.c % vec4<u32>(32u)), i32(-1i) * -11555i);
    let var_2 = Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(69271u, ~countOneBits(var_1.a.yyw), Struct_3(arg_0.x, any(vec2<bool>(arg_0.x, arg_0.x))), Struct_4(vec4<i32>(arg_2.x, -2147483647i, global0.x, arg_2.x), global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 400f) * arg_1.yy))))));
    global0 = arg_2.xz;
    let var_3 = Struct_3(-1032f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))), any(!(!select(vec2<bool>(false, false), vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, true)))));
    return vec2<i32>(var_1.b, 1i);
}

fn func_4(arg_0: vec2<i32>) -> Struct_4 {
    var var_0 = select(select(~u_input.c, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 236u, u_input.b) | vec4<u32>(0u, 4117u, 4294967295u, 25657u), abs(vec4<u32>(91541u, u_input.b, u_input.a.x, u_input.a.x))), true), vec4<u32>(4294967295u ^ u_input.a.x, abs(select(4294967295u, u_input.c.x, false)), u_input.c.x, u_input.a.x), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))) & true) ^ _wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(0u, 28880u, 46611u, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(select(u_input.c.x, u_input.c.x, true), u_input.a.x, ~u_input.c.x, firstLeadingBit(28539u)), (vec4<u32>(4294967295u, u_input.c.x, 45754u, u_input.b) | u_input.a) ^ ~u_input.c));
    let var_1 = Struct_2(firstLeadingBit(abs(max(vec4<i32>(12043i, 0i, 30555i, arg_0.x) & vec4<i32>(1i, -1041i, -2147483647i, global0.x), vec4<i32>(global0.x, 9926i, -1i, 24743i) | vec4<i32>(-2147483647i, global0.x, 35578i, 1i)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1902f, -1025f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(354f + 171f), _wgslsmith_f_op_f32(round(951f))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(653f, 225f), vec2<f32>(-2176f, -518f))))))));
    var var_2 = vec3<i32>(var_1.a.x, firstLeadingBit(global0.x), ~0i);
    var var_3 = select(18353u, select(select(~select(var_0.x, u_input.a.x, false), abs(var_0.x), true), var_0.x | 1u, firstLeadingBit(~var_0.x) == u_input.c.x), any(vec2<bool>(true, false)));
    var var_4 = Struct_5(4294967295u, -_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(var_1.a, ~var_1.a), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, 1i, 44392i, arg_0.x), var_1.a) & -vec4<i32>(var_1.a.x, -1i, global0.x, 13375i)), 644f, firstTrailingBit(-(~var_1.a.wwx)) << (abs(abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 20205u, var_0.x), vec3<u32>(u_input.b, u_input.b, u_input.b)))) % vec3<u32>(32u)), (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(517f)))) < 862f) | ((~var_0.x & ~1u) < var_0.x));
    return Struct_4(var_1.a, _wgslsmith_dot_vec4_i32(-var_4.b, vec4<i32>(arg_0.x, min(min(1i, 2147483647i), -44124i), i32(-1i) * -10405i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, var_1.a.x, -2147483647i, var_1.a.x), vec4<i32>(var_2.x, 0i, 28952i, 37537i)), 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_sub_vec2_i32(func_1(Struct_2(vec4<i32>(0i, global0.x, 1i, -1i), vec2<f32>(445f, -236f)), u_input.c.wyw, Struct_3(true, true)) << (_wgslsmith_mod_vec2_u32(u_input.a.yw, u_input.c.ww) % vec2<u32>(32u)), func_2(vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1167f, -747f, -903f)), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, global0.x, 1i), vec3<i32>(global0.x, global0.x, 0i)), ~66282u)) | (vec2<i32>(-2147483647i, 7088i) | _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(global0.x, global0.x)), countOneBits(vec2<i32>(global0.x, global0.x)))));
    var_0 = func_4(var_0.a.zw);
    let var_1 = Struct_2(-vec4<i32>(func_2(vec2<bool>(true, false), vec3<f32>(-896f, -202f, 760f), var_0.a.zyx, u_input.a.x).x ^ var_0.a.x, ~9970i & global0.x, 8304i, _wgslsmith_dot_vec3_i32(var_0.a.zyw, vec3<i32>(0i, global0.x, global0.x) ^ var_0.a.zyz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-163f, _wgslsmith_div_f32(-312f, -675f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(215f, -613f)))))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-987f + 543f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1068f * 1000f)))));
    var var_2 = Struct_1(firstLeadingBit(1u) ^ _wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.a.yz), all(vec2<bool>(false, true)));
    var_2 = Struct_1(u_input.c.x, false);
    global0 = var_0.a.zx;
    var var_3 = ~firstTrailingBit(~(~max(23425u, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(func_2(!vec2<bool>(var_2.b, var_2.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x) - vec3<f32>(var_1.b.x, 853f, var_1.b.x)), -vec3<i32>(-8331i, 1i, -2147483647i), _wgslsmith_add_u32(u_input.c.x, 1u)).x & ~(global0.x << (2463u % 32u))), -vec4<i32>(~var_0.a.x, var_1.a.x, func_4(_wgslsmith_mult_vec2_i32(var_1.a.xy, vec2<i32>(var_0.b, 12044i))).a.x, var_1.a.x));
}

