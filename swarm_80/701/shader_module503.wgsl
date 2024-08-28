struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec4<u32>(3073u, 23057u, 0u, 1u), vec4<bool>(false, true, false, false), 2280f, vec3<i32>(2147483647i, -9357i, 1i)), vec2<u32>(67757u, 44075u), Struct_1(vec4<u32>(4294967295u, 36536u, 0u, 4294967295u), vec4<bool>(true, true, true, true), -2439f, vec3<i32>(20187i, 2147483647i, -10985i)), Struct_1(vec4<u32>(44304u, 0u, 76219u, 4294967295u), vec4<bool>(true, true, false, false), -1649f, vec3<i32>(5085i, -5853i, 0i))), Struct_2(Struct_1(vec4<u32>(1u, 36254u, 1u, 91088u), vec4<bool>(false, true, true, true), -1672f, vec3<i32>(i32(-2147483648), 0i, 2147483647i)), vec2<u32>(29549u, 55376u), Struct_1(vec4<u32>(24166u, 0u, 28381u, 1u), vec4<bool>(true, true, true, true), 557f, vec3<i32>(0i, 0i, 0i)), Struct_1(vec4<u32>(1u, 31905u, 37197u, 5844u), vec4<bool>(false, true, true, false), 258f, vec3<i32>(2147483647i, -34533i, 2147483647i))), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<bool>(true, false, false, true), 709f, vec3<i32>(29016i, 1i, -27417i)), vec2<u32>(880u, 10036u), Struct_1(vec4<u32>(1u, 1u, 28630u, 6006u), vec4<bool>(false, false, true, true), -282f, vec3<i32>(0i, i32(-2147483648), 7034i)), Struct_1(vec4<u32>(39702u, 4294967295u, 28174u, 1u), vec4<bool>(false, false, true, false), 1000f, vec3<i32>(-14668i, 1i, 1i))));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d ^ u_input.a.x, -1i, 1i >> (arg_0.b.a.a.x % 32u), u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, arg_0.b.d.d.x, u_input.d), vec4<i32>(u_input.a.x, u_input.c, 41085i, arg_0.b.d.d.x)) << (abs(arg_0.b.d.a) % vec4<u32>(32u))), ~abs(u_input.d >> (1u % 32u)));
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    let var_1 = -vec2<i32>(select(arg_0.b.d.d.x ^ 16481i, max(_wgslsmith_add_i32(var_0.x, 2147483647i), ~2147483647i), true & any(arg_0.b.a.b.wyw)), -1i);
    let var_2 = Struct_2(Struct_1(vec4<u32>(~abs(0u), ~1u, 20272u, u_input.b), !arg_0.b.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.c.c + -1290f) + arg_0.b.a.c), vec3<i32>(-5599i, min(1i, var_1.x << (4177u % 32u)), var_0.x)), arg_0.a.zx, arg_0.b.a, arg_0.b.c);
    return _wgslsmith_dot_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(26797i, min(u_input.a.x, 31156i)), vec2<i32>(-1i, -var_2.c.d.x))), (-_wgslsmith_div_vec2_i32(var_2.d.d.zx, vec2<i32>(var_2.a.d.x, 70412i)) << (vec2<u32>(reverseBits(u_input.b), u_input.b) % vec2<u32>(32u))) >> (max(max(firstLeadingBit(arg_0.a.yx), abs(vec2<u32>(u_input.b, var_2.b.x))), select(arg_0.a.yx, var_2.d.a.xz, var_2.a.b.xx)) % vec2<u32>(32u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_u32(~arg_0, ~max(select(vec4<u32>(u_input.b, 0u, 4294967295u, arg_1.a.x), arg_0, arg_1.b), ~vec4<u32>(arg_0.x, arg_0.x, 27555u, arg_0.x))), arg_1.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)))))), u_input.a.xzw);
    let var_1 = vec4<i32>(firstTrailingBit(-1i), -40913i, -func_3(Struct_3(vec3<u32>(arg_0.x, var_0.a.x, 1u), global0[_wgslsmith_index_u32(0u, 3u)], arg_1.d.x, 18209i, 37590u)) | abs(-23854i), -firstLeadingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, 32394i), ~var_0.d.zy)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1723f)), _wgslsmith_f_op_f32(select(-433f, 100f, var_0.b.x)));
    global0 = array<Struct_2, 3>();
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_3)), _wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.c))), 1585f)));
    return select(arg_0.wxz, ~vec3<u32>(30738u, countOneBits(_wgslsmith_mod_u32(var_0.a.x, arg_0.x)), arg_1.a.x), arg_1.b.yyx);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(u_input.a.yy, u_input.a.zz);
    var var_1 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b) | ~u_input.b, _wgslsmith_mod_u32(13179u, 1u << (arg_0.x % 32u))) ^ _wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec2_u32(min(vec2<u32>(72315u, u_input.b), ~vec2<u32>(arg_0.x, u_input.b)), arg_0.xx));
    var var_2 = Struct_3(~min(arg_0, func_2(vec4<u32>(arg_1, arg_1, 109552u, 0u), Struct_1(vec4<u32>(u_input.b, arg_1, 1u, 1u), vec4<bool>(true, true, true, true), -548f, u_input.a.ywy), vec2<bool>(false, false), -1000f)) & vec3<u32>(~0u, u_input.b, 1u), global0[_wgslsmith_index_u32(55560u, 3u)], var_0.x, -1i, ~(~(~(~u_input.b))));
    var var_3 = all(vec2<bool>(!(min(-54623i, -25181i) >= u_input.a.x), var_2.b.d.b.x));
    var_3 = 15024i >= -firstTrailingBit(var_2.b.a.d.x);
    return var_2.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -9161i;
    var var_1 = Struct_3(firstLeadingBit(vec3<u32>(~u_input.b, _wgslsmith_mod_u32(u_input.b, 4294967295u), ~firstTrailingBit(4294967295u))), Struct_2(func_1(min(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(32771u, u_input.b, u_input.b) << (vec3<u32>(u_input.b, u_input.b, 1u) % vec3<u32>(32u))), u_input.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -877f)))), _wgslsmith_div_vec2_u32(firstLeadingBit(func_1(vec3<u32>(u_input.b, 0u, u_input.b), 0u, -565f).a.wz), reverseBits(~vec2<u32>(u_input.b, u_input.b))), func_1(_wgslsmith_mult_vec3_u32(vec3<u32>(42344u, u_input.b, 4294967295u), ~vec3<u32>(1u, u_input.b, u_input.b)), reverseBits(min(4294967295u, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -176f))), Struct_1(vec4<u32>(u_input.b << (u_input.b % 32u), 13427u | u_input.b, 4294967295u, u_input.b & u_input.b), vec4<bool>(true, any(vec4<bool>(false, true, true, false)), true, all(vec4<bool>(false, true, true, true))), 1733f, u_input.a.wyx)), ~52038i, func_1(min(vec3<u32>(select(u_input.b, 41662u, false), u_input.b >> (1u % 32u), 4294967295u), vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b & u_input.b, 1u)), 17535u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(round(1339f)), select(true, true, true)))).d.x, ~1u);
    var_1 = Struct_3(vec3<u32>(1u, var_1.a.x, _wgslsmith_mult_u32(u_input.b, firstTrailingBit(1u))), global0[_wgslsmith_index_u32(~0u, 3u)], _wgslsmith_div_i32(max(2147483647i, -2147483647i) & ~(-var_0), countOneBits(0i)), firstLeadingBit(-2147483647i), func_2(vec4<u32>(u_input.b & u_input.b, var_1.b.d.a.x, u_input.b, 0u), Struct_1(var_1.b.c.a, select(vec4<bool>(var_1.b.a.b.x, var_1.b.d.b.x, var_1.b.c.b.x, true), var_1.b.a.b, false), _wgslsmith_div_f32(var_1.b.c.c, 417f), ~u_input.a.zww), var_1.b.a.b.wy, -784f).x >> (u_input.b % 32u));
    var_1 = Struct_3(~var_1.a, Struct_2(Struct_1(~vec4<u32>(1u, 1u, 4294967295u, var_1.a.x), !vec4<bool>(var_1.b.d.b.x, var_1.b.d.b.x, false, false), _wgslsmith_div_f32(-283f, _wgslsmith_div_f32(var_1.b.d.c, 686f)), u_input.a.wxx), firstLeadingBit(var_1.a.yz), func_1(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.x, 0u, u_input.b) & vec3<u32>(4294967295u, u_input.b, var_1.a.x), abs(var_1.a)), 4294967295u, _wgslsmith_div_f32(342f, _wgslsmith_f_op_f32(-var_1.b.c.c))), func_1(_wgslsmith_clamp_vec3_u32(var_1.b.d.a.wyw, vec3<u32>(var_1.a.x, 8994u, 4294967295u), var_1.b.c.a.zzx) & _wgslsmith_sub_vec3_u32(var_1.a, var_1.b.c.a.yyx), u_input.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1129f + -1472f))))), i32(-1i) * -44452i, _wgslsmith_dot_vec4_i32(u_input.a, max(u_input.a, vec4<i32>(-2147483647i, ~var_1.b.a.d.x, var_1.b.c.d.x, var_1.d))), u_input.b);
    let var_2 = func_1(min(reverseBits(_wgslsmith_mod_vec3_u32(var_1.a, var_1.b.d.a.yww)), abs(vec3<u32>(var_1.a.x, 4294967295u, _wgslsmith_sub_u32(38869u, var_1.b.d.a.x)))), var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.d.c + _wgslsmith_f_op_f32(-var_1.b.c.c)) + var_1.b.d.c) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_1.b.c.c)), -327f)))))).b.x;
    let var_3 = Struct_2(var_1.b.c, vec2<u32>(_wgslsmith_dot_vec4_u32(~(~var_1.b.d.a), ~var_1.b.a.a), _wgslsmith_add_u32(~8781u >> (var_1.b.a.a.x % 32u), 586u)), Struct_1(vec4<u32>(u_input.b, ~0u, select(~var_1.e, u_input.b, var_2), abs(23825u)), !func_1(vec3<u32>(31618u, 16831u, 1u), ~var_1.a.x, 1064f).b, _wgslsmith_f_op_f32(step(245f, var_1.b.a.c)), vec3<i32>(-1i) * -vec3<i32>(1i, var_0, -1i)), var_1.b.c);
    var_1 = Struct_3(_wgslsmith_add_vec3_u32(vec3<u32>(var_3.d.a.x, 1u, var_1.b.c.a.x), var_1.a), global0[_wgslsmith_index_u32(reverseBits(27071u), 3u)], _wgslsmith_add_i32(var_0, select(~32720i, -var_3.d.d.x, var_1.b.d.c > -459f) << ((_wgslsmith_div_u32(var_3.d.a.x, 4294967295u) | 1u) % 32u)), _wgslsmith_mod_i32(var_0, countOneBits(var_3.d.d.x)), 32174u);
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(var_4.x, _wgslsmith_add_i32(countOneBits(11956i), ~35784i))), -1i ^ _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-u_input.a, -vec4<i32>(var_1.d, var_3.a.d.x, 0i, 1i)), _wgslsmith_mult_vec4_i32(var_4, vec4<i32>(-73228i, var_1.d, var_3.c.d.x, var_0) | var_4)), _wgslsmith_add_vec2_u32(vec2<u32>(var_3.a.a.x, u_input.b & 65240u), ~var_3.b));
}

