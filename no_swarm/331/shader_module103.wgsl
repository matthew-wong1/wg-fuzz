struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec3<i32> = vec3<i32>(17293i, -39692i, 8256i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: vec3<u32>) -> u32 {
    var var_0 = Struct_2(-751f);
    let var_1 = Struct_1(vec4<i32>(min(reverseBits(u_input.a), max(global1.x >> (29835u % 32u), max(global1.x, global1.x))), -2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(1i, -2147483647i, global1.x), vec3<i32>(global1.x, -2815i, global0.x)), abs(vec3<i32>(u_input.a, global1.x, global0.x))), firstTrailingBit(~u_input.a)), _wgslsmith_mult_i32(max(2147483647i, ~global1.x), global0.x)), reverseBits(abs(vec4<i32>(-2147483647i, -global1.x, -global0.x, -33140i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1021f))))))), global0.x, countOneBits(-_wgslsmith_dot_vec3_i32(~vec3<i32>(-39043i, 51196i, u_input.a), vec3<i32>(global1.x, global0.x, -2147483647i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(round(307f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(326f + 437f), -148f)))))));
    var var_3 = vec3<u32>(abs(0u), arg_2, 0u);
    var var_4 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-37282i, 0i, _wgslsmith_dot_vec3_i32(~var_1.a.yzz, min(var_1.a.xwz, var_1.b.xyy)), ~(global0.x << (15454u % 32u))), vec4<i32>(-29518i, firstTrailingBit(global1.x ^ global0.x), abs(global1.x), ~var_1.d)), var_1.a, _wgslsmith_div_f32(382f, var_2.x), global1.x << ((_wgslsmith_add_u32(30358u, firstLeadingBit(1u)) << (~(1u | arg_2) % 32u)) % 32u), var_1.a.x);
    return 0u;
}

fn func_2(arg_0: bool) -> vec4<i32> {
    var var_0 = -(0i >> ((reverseBits(1u) | func_3(-1115f, _wgslsmith_f_op_f32(round(-2808f)), 1u, ~vec3<u32>(1u, 77233u, 41792u))) % 32u));
    var var_1 = vec2<bool>(true, all(select(select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, true, arg_0)), select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, arg_0, false), arg_0), arg_0), vec3<bool>(true, true, arg_0), true)));
    var var_2 = Struct_1(vec4<i32>(-2147483647i, abs(abs(_wgslsmith_sub_i32(global1.x, u_input.a))), firstLeadingBit(-2147483647i), ~u_input.a), -firstTrailingBit(vec4<i32>(global0.x, 1i, countOneBits(1i), -global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, -105f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-905f, 833f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f) + _wgslsmith_f_op_f32(f32(-1f) * -935f)))), ~_wgslsmith_sub_i32((i32(-1i) * -1i) | u_input.a, 2147483647i), 1i);
    global1 = ~vec3<i32>(~abs(var_2.d << (1u % 32u)), -_wgslsmith_sub_i32(u_input.a, u_input.a), -_wgslsmith_dot_vec2_i32(vec2<i32>(-40510i, -1i), global1.xx));
    let var_3 = vec3<u32>(abs(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), reverseBits(reverseBits(vec3<u32>(692u, 23180u, 66990u)))), ~(~reverseBits(4294967295u))) << (abs(max(~vec3<u32>(4294967295u, 0u, 4294967295u), ~vec3<u32>(1u, 1u, 27977u))) % vec3<u32>(32u));
    return var_2.b;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(func_2(arg_0.x), arg_1.a, 1000f, _wgslsmith_clamp_i32(2147483647i, ~69330i, arg_1.a.x), ~(-1i ^ arg_1.b.x) & ~(-global1.x));
    var_0 = arg_1;
    var var_1 = select(~vec4<u32>(_wgslsmith_mod_u32(1u, firstTrailingBit(16708u)), 1u, _wgslsmith_clamp_u32(4294967295u, 0u, 0u) ^ 66878u, _wgslsmith_mod_u32(~40889u, _wgslsmith_clamp_u32(0u, 255u, 1u))), vec4<u32>(~abs(0u), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(66442u, 16385u, 4294967295u))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 5090u), vec3<u32>(4294967295u, 1u, 0u)) ^ ~0u, 27667u) ^ firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1491f))) < _wgslsmith_f_op_f32(2005f * arg_1.c), !(!all(arg_0)), !select(any(vec4<bool>(arg_0.x, false, false, arg_0.x)), arg_0.x == arg_0.x, arg_0.x == arg_0.x), true));
    var_0 = arg_1;
    var var_2 = arg_1;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.c))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = func_1(vec2<bool>(false, true), Struct_1(firstLeadingBit(min(vec4<i32>(21386i, global0.x, 1i, 32812i), vec4<i32>(0i, global1.x, u_input.a, -2147483647i))), select(~vec4<i32>(-20413i, 18770i, 30235i, u_input.a), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, global1.x, 16482i), vec4<i32>(global0.x, -25519i, global1.x, -12114i)), vec4<bool>(true, any(vec4<bool>(true, false, true, false)), select(false, false, true), true)), arg_0.a, global0.x, 0i));
    var var_1 = _wgslsmith_dot_vec2_i32((_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.a), global0.yz), ~vec2<i32>(2147483647i, 23139i)) | reverseBits(vec2<i32>(global0.x, u_input.a) | global1.xz)) >> (~(~vec2<u32>(12139u, 4294967295u)) % vec2<u32>(32u)), select(global0.xz, global1.zz, false));
    var_1 = 1i;
    var var_2 = abs(_wgslsmith_mult_u32(~abs(4294967295u), min(max(1u, _wgslsmith_add_u32(1u, 4254u)), ~(~4143u))));
    let var_3 = Struct_1(-firstLeadingBit(func_2(true)), vec4<i32>(reverseBits(_wgslsmith_sub_i32(_wgslsmith_div_i32(global0.x, -47722i), 1i)), abs(2147483647i), -70477i, ~(func_2(false).x << (~1u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(657f))) * 601f)), reverseBits(0i), global1.x);
    return -30740i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-vec4<i32>(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-21210i, -31512i, 12393i), vec3<i32>(-2147483647i, global1.x, global1.x)), vec3<i32>(62868i, 51016i, global0.x) << (vec3<u32>(37413u, 16522u, 38886u) % vec3<u32>(32u))), 1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -23810i, global1.x), ~vec3<i32>(-1i, 2147483647i, -2147483647i))), vec4<i32>(_wgslsmith_sub_i32(36394i, _wgslsmith_mod_i32(u_input.a, global1.x)) | u_input.a, -30386i, global1.x, 28658i), -1388f, _wgslsmith_div_i32(global0.x, global1.x) << (~firstTrailingBit(0u) % 32u), global0.x);
    global1 = var_0.b.xzw;
    let var_1 = false;
    var_0 = Struct_1(var_0.b, vec4<i32>(~(_wgslsmith_clamp_i32(-1i, 2147483647i, var_0.a.x) << (1u % 32u)), ~func_4(func_1(vec2<bool>(var_1, true), Struct_1(vec4<i32>(35286i, var_0.b.x, 1i, u_input.a), var_0.a, -702f, 2147483647i, global0.x)), Struct_2(117f)), u_input.a << (~(~4294967295u) % 32u), global1.x), 368f, _wgslsmith_div_i32(countOneBits(~_wgslsmith_sub_i32(global1.x, u_input.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, select(global1.x, 75239i, var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(35860i, 1i, global1.x, -1i), var_0.b)), func_2(var_1).yww)), -(_wgslsmith_mod_i32(func_4(Struct_2(var_0.c), Struct_2(-139f)), global1.x) & _wgslsmith_div_i32(1i, ~global0.x)));
    global1 = vec3<i32>(_wgslsmith_clamp_i32(var_0.a.x, -2083i, min(-global0.x | countOneBits(-1i), global0.x)), ~(~min(0i, -2147483647i)), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(countOneBits(1u), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(65691u, 26706u, 0u, 0u), vec4<u32>(2675u, 0u, 889u, 4294967295u)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 24388u, 4294967295u), firstTrailingBit(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(60334u, 53053u, 24323u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<bool>(true, var_1, var_1)), vec3<u32>(1u, 1u, 1u), min(vec3<u32>(4294967295u, 51933u, 82433u), vec3<u32>(4294967295u, 3135u, 23853u)))), ~(~vec3<u32>(1u, 1u, 1u))), countOneBits(~_wgslsmith_sub_vec3_i32(var_0.a.wyz << (vec3<u32>(4294967295u, 1u, 79342u) % vec3<u32>(32u)), var_0.b.wwx)), -_wgslsmith_div_i32(-2147483647i, ~(~u_input.a)), -vec3<i32>(firstTrailingBit(i32(-1i) * -2147483647i), -func_4(Struct_2(121f), Struct_2(-1411f)), var_0.a.x));
}

