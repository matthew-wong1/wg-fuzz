struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<f32>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-1502f, 1000f, -2451f, -426f, 233f, 2028f, 544f, 616f, 1000f, -333f, -1477f, -975f, 1000f, 543f, -1693f, -495f, -669f, -884f, -2313f, 466f, -2119f, 1326f, 1000f, 152f, -1000f, -814f, -599f, -162f, 1847f, 1051f, 358f, -592f);

var<private> global1: f32;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u);

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<i32>(-21383i, -23073i), 56851u), Struct_1(vec2<i32>(-1i, -84019i), 4294967295u), Struct_1(vec2<i32>(-1i, -13225i), 62623u), Struct_1(vec2<i32>(11009i, -21733i), 64108u), Struct_1(vec2<i32>(2147483647i, 2147483647i), 0u), Struct_1(vec2<i32>(-8943i, 4933i), 92658u), Struct_1(vec2<i32>(2147483647i, -35411i), 32929u), Struct_1(vec2<i32>(29239i, -1i), 1u), Struct_1(vec2<i32>(0i, 16482i), 78971u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: f32, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = !arg_3.b;
    let var_1 = ~select(vec2<i32>(-1i, ~arg_1), -u_input.a.zx, vec2<bool>(true, true && var_0)) ^ ~firstTrailingBit(vec2<i32>(u_input.a.x, arg_1) << ((global2.wz | vec2<u32>(global2.x, 25966u)) % vec2<u32>(32u)));
    global2 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, firstLeadingBit(_wgslsmith_add_u32(arg_3.c.x, global2.x))), 0u), 0u, (_wgslsmith_mult_u32(4294967295u, global2.x) << (~arg_3.c.x % 32u)) << (0u % 32u), ~68077u);
    global1 = global0[_wgslsmith_index_u32(~max(40199u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(25923u, global2.x, 0u), arg_3.c), ~global2.yxw)), 32u)];
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-488f, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1249f + -360f))))));
    return vec2<bool>(true, false);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<i32>, arg_3: vec2<i32>) -> bool {
    var var_0 = !(1i < (_wgslsmith_mod_i32(arg_2.x, arg_2.x) | _wgslsmith_dot_vec4_i32(~arg_2, arg_2)));
    global3 = array<Struct_1, 9>();
    let var_1 = max(40066u, max(4294967295u, 29191u));
    global0 = array<f32, 32>();
    let var_2 = global3[_wgslsmith_index_u32(var_1, 9u)];
    return true;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> i32 {
    var var_0 = Struct_1(firstTrailingBit(max(select(vec2<i32>(-33665i, arg_1.a.b.a.x), arg_1.a.a.a << (arg_1.d.c.zz % vec2<u32>(32u)), vec2<bool>(true, true)), ~vec2<i32>(u_input.b, arg_1.a.a.a.x) | arg_1.a.a.a)), min(arg_1.d.c.x, abs(arg_1.d.c.x) >> (19513u % 32u)));
    var var_1 = ~min(vec2<u32>(~max(13115u, 4294967295u), arg_0), ~vec2<u32>(~arg_0, 70531u));
    var var_2 = _wgslsmith_clamp_vec4_i32(select(-abs(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.a.a.x, 2147483647i, -1i, var_0.a.x), vec4<i32>(u_input.b, arg_1.e, 14192i, 29643i))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, u_input.b, 2147483647i, u_input.b), vec4<i32>(var_0.a.x, u_input.b, var_0.a.x, var_0.a.x), vec4<i32>(arg_1.a.a.a.x, -3878i, var_0.a.x, arg_1.a.a.a.x)) << (vec4<u32>(var_0.b, 4294967295u, 4294967295u, var_0.b) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_i32(vec4<i32>(23166i, 2147483647i, -74564i, var_0.a.x), vec4<i32>(arg_1.e, var_0.a.x, -2147483647i, 1i)), ~var_1.x > 3474u), arg_1.d.a.x), select(~(vec4<i32>(1i, 8603i, u_input.a.x, 1i) ^ abs(vec4<i32>(u_input.a.x, 1i, -43233i, arg_1.e))), vec4<i32>(-2147483647i, ~2147483647i >> (max(arg_0, var_1.x) % 32u), max(~(-2147483647i), u_input.a.x), 14787i), !any(vec2<bool>(arg_1.d.a.x, false))), vec4<i32>(-(~(~u_input.a.x)), var_0.a.x, -24555i | ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.b.a.x, -21535i, arg_1.e, -2147483647i), vec4<i32>(-1i, 14559i, 0i, var_0.a.x)), u_input.b));
    var var_3 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(_wgslsmith_div_vec2_i32(var_2.yy, u_input.a.zz)), vec2<i32>(_wgslsmith_mod_i32(-5747i, -50258i), -2147483647i)), _wgslsmith_mult_vec2_i32(arg_1.a.a.a, var_0.a));
    var_1 = vec2<u32>(arg_1.d.c.x, (select(arg_1.a.a.b, var_0.b, false) << (var_0.b % 32u)) >> (arg_1.a.a.b % 32u)) ^ max(global2.wx, vec2<u32>(4294967295u, _wgslsmith_clamp_u32(var_0.b, ~31852u, arg_1.d.c.x | 0u)));
    return _wgslsmith_add_i32(firstLeadingBit(~var_3.x), ~min(-1i, firstLeadingBit(u_input.a.x & 2147483647i)));
}

fn func_2(arg_0: i32, arg_1: Struct_4) -> Struct_3 {
    var var_0 = ((i32(-1i) * -59197i) ^ _wgslsmith_clamp_i32(u_input.b, 1i, func_4(arg_1.a.a.b & 1u, Struct_4(arg_1.a, vec4<bool>(arg_1.b.x, false, arg_1.b.x, true), arg_1.c, arg_1.d, arg_0), func_3(global2.x, true, vec4<i32>(2164i, -21653i, 1i, -8808i), vec2<i32>(8811i, 0i))))) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(global2.x, 9170u), ~arg_1.a.b.b)), vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 2661u, global2.x), vec3<u32>(43739u, global2.x, 4294967295u))), arg_1.d.c.x & reverseBits(global2.x))) % 32u);
    var_0 = 2147483647i & func_4(arg_1.d.c.x, Struct_4(arg_1.a, !arg_1.b, arg_1.c, Struct_3(vec2<bool>(true, arg_1.d.a.x), true, vec3<u32>(19810u, arg_1.a.b.b, global2.x)), -41546i), true);
    var var_1 = Struct_2(Struct_1(vec2<i32>(reverseBits(u_input.a.x) | u_input.b, 1i), global2.x), Struct_1(u_input.a.zz, 1u >> (~select(0u, 4294967295u, arg_1.b.x) % 32u)));
    var var_2 = vec3<u32>(~143212u, max(global2.x, ~(~_wgslsmith_clamp_u32(var_1.b.b, arg_1.d.c.x, arg_1.d.c.x))), min(var_1.a.b, _wgslsmith_add_u32(arg_1.a.a.b, ~global2.x)));
    var_0 = func_4(61549u, Struct_4(arg_1.a, !select(arg_1.b, select(vec4<bool>(arg_1.b.x, false, arg_1.d.a.x, arg_1.b.x), arg_1.b, arg_1.b), all(vec2<bool>(true, arg_1.d.b))), _wgslsmith_div_vec4_f32(arg_1.c, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_1.c), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], arg_1.c.x, arg_1.c.x)))))), Struct_3(vec2<bool>(arg_1.c.x <= global0[_wgslsmith_index_u32(38280u, 32u)], !arg_1.b.x), func_3(~54234u, true, vec4<i32>(2147483647i, u_input.a.x, 63557i, arg_1.e) ^ vec4<i32>(1i, 78927i, 2147483647i, -42270i), ~u_input.a.yx), global2.zzw), 2147483647i), true);
    return Struct_3(!func_1(arg_1.c, arg_0, arg_1.c.x, arg_1.d), false | !(var_1.b.a.x >= -u_input.b), ~countOneBits(_wgslsmith_sub_vec3_u32(~arg_1.d.c, arg_1.d.c)));
}

fn func_5(arg_0: Struct_4, arg_1: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.c.x, global0[_wgslsmith_index_u32(arg_0.d.c.x, 32u)], arg_0.c.x))))), _wgslsmith_div_vec4_f32(arg_0.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_0.c, arg_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, -1039f, global0[_wgslsmith_index_u32(arg_0.a.a.b, 32u)], -503f) + vec4<f32>(arg_0.c.x, 680f, arg_0.c.x, global0[_wgslsmith_index_u32(4294967295u, 32u)])), !vec4<bool>(arg_0.d.b, false, arg_0.d.a.x, false)))))));
    var var_1 = Struct_4(arg_0.a, arg_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, 360f, -1036f, arg_0.c.x) - arg_0.c))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_0.d.c.x, 32u)], -1055f, 326f, -710f) * vec4<f32>(1000f, 235f, global0[_wgslsmith_index_u32(0u, 32u)], -2892f)) * _wgslsmith_f_op_vec4_f32(-arg_0.c))))), arg_0.d, ~1i);
    var var_2 = vec4<u32>(_wgslsmith_mult_u32(abs(4294967295u), global2.x), 103676u, select(_wgslsmith_mult_u32(var_1.d.c.x, 7247u) >> (arg_1 % 32u), ~_wgslsmith_sub_u32(41749u, global2.x), false), _wgslsmith_dot_vec2_u32(~countOneBits(var_1.d.c.zx), ~vec2<u32>(16544u, 85716u))) << (~(~(max(vec4<u32>(arg_1, var_1.d.c.x, 1u, arg_1), vec4<u32>(3040u, 1u, global2.x, arg_1)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(32191u, var_1.a.b.b, arg_0.a.b.b, arg_0.a.a.b), vec4<u32>(4294967295u, 27411u, global2.x, var_1.a.a.b)))) % vec4<u32>(32u));
    let var_3 = var_0.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-470f, var_0.x)))));
    var_0 = var_1.c;
    return arg_0.b;
}

fn func_6(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: vec3<i32>) -> bool {
    var var_0 = select(false, func_5(Struct_4(Struct_2(global3[_wgslsmith_index_u32(global2.x ^ 26567u, 9u)], global3[_wgslsmith_index_u32(global2.x & 11022u, 9u)]), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1009f, -238f, -136f, global0[_wgslsmith_index_u32(global2.x, 32u)])) + vec4<f32>(-843f, 322f, -236f, arg_0)), func_2(arg_2, Struct_4(Struct_2(global3[_wgslsmith_index_u32(global2.x, 9u)], global3[_wgslsmith_index_u32(52304u, 9u)]), arg_1, vec4<f32>(arg_0, arg_0, -754f, 1152f), Struct_3(vec2<bool>(arg_1.x, true), arg_1.x, global2.ywy), arg_2)), arg_2), ~1u).x, _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global2.x, 32u)], -1025f) - _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(global2.x, 32u)], global0[_wgslsmith_index_u32(global2.x, 32u)]))))) > _wgslsmith_f_op_f32(f32(-1f) * -687f));
    let var_1 = Struct_3(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(global2.x, 32u)], global0[_wgslsmith_index_u32(52763u, 32u)])) - -953f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_0)), false), !func_3(global2.x, -584f >= _wgslsmith_f_op_f32(-622f - global0[_wgslsmith_index_u32(global2.x, 32u)]), ~vec4<i32>(2147483647i, 2147483647i, arg_2, arg_3.x) ^ (vec4<i32>(-6349i, -2147483647i, 1i, -1i) ^ vec4<i32>(1i, u_input.b, 1i, arg_2)), vec2<i32>(arg_2, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, arg_3.x), u_input.a.yy))), vec3<u32>(_wgslsmith_div_u32(~global2.x, global2.x) << (1u % 32u), _wgslsmith_dot_vec2_u32(func_2(_wgslsmith_clamp_i32(arg_3.x, 0i, u_input.b), Struct_4(Struct_2(Struct_1(vec2<i32>(-2147483647i, arg_2), 1u), global3[_wgslsmith_index_u32(9369u, 9u)]), arg_1, vec4<f32>(-258f, -1335f, arg_0, -263f), Struct_3(arg_1.yy, false, global2.xyy), 17713i)).c.xz, vec2<u32>(~global2.x, 0u)), func_2(min(arg_2, u_input.b) & reverseBits(u_input.b), Struct_4(Struct_2(global3[_wgslsmith_index_u32(0u, 9u)], Struct_1(vec2<i32>(arg_2, -20604i), global2.x)), func_5(Struct_4(Struct_2(Struct_1(vec2<i32>(u_input.b, -1i), 7169u), Struct_1(arg_3.zx, 6770u)), vec4<bool>(true, false, arg_1.x, false), vec4<f32>(1428f, arg_0, arg_0, -1227f), Struct_3(arg_1.zw, true, vec3<u32>(global2.x, global2.x, 41010u)), 0i), 0u), vec4<f32>(global0[_wgslsmith_index_u32(1u, 32u)], arg_0, global0[_wgslsmith_index_u32(global2.x, 32u)], arg_0), Struct_3(arg_1.ww, false, vec3<u32>(global2.x, 4294967295u, global2.x)), -2147483647i)).c.x));
    var var_2 = _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(3554i, arg_2, -13887i), arg_3), 4211i), u_input.a.x, arg_3.x) >> (4294967295u % 32u);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(740f))));
    var var_3 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(~global2.x, 32u)], 559f, arg_0, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(global2.x, 32u)], 108f))), vec4<f32>(arg_0, -569f, _wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(arg_0 * 259f))))), 0i, _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(select(454f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(361f * -154f)), all(vec4<bool>(var_1.a.x, true, true, arg_1.x)))))), var_1).x;
    return ~((1i << (abs(global2.x) % 32u)) >> (17552u % 32u)) >= 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -497f;
    global2 = vec4<u32>(global2.x, global2.x, abs(_wgslsmith_dot_vec3_u32(global2.zww, global2.yyz) << (global2.x % 32u)) | ~4737u, ~_wgslsmith_sub_u32(1u, 1u | global2.x));
    let var_1 = any(vec2<bool>(true, true));
    let var_2 = vec3<f32>(1332f, 553f, var_0);
    let var_3 = vec4<bool>(true, var_1, !all(func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, global0[_wgslsmith_index_u32(86001u, 32u)], global0[_wgslsmith_index_u32(global2.x, 32u)], -851f))), ~(-12382i), var_0, Struct_3(vec2<bool>(true, var_1), var_1, vec3<u32>(global2.x, global2.x, global2.x)))), func_6(-219f, func_5(Struct_4(Struct_2(Struct_1(u_input.a.zx, 0u), global3[_wgslsmith_index_u32(global2.x, 9u)]), vec4<bool>(false, true, true, var_1), vec4<f32>(var_0, -575f, -366f, var_2.x), func_2(34545i, Struct_4(Struct_2(global3[_wgslsmith_index_u32(50934u, 9u)], global3[_wgslsmith_index_u32(global2.x, 9u)]), vec4<bool>(true, false, true, var_1), vec4<f32>(605f, 490f, 1148f, 258f), Struct_3(vec2<bool>(false, false), var_1, vec3<u32>(4294967295u, 0u, global2.x)), -1i)), -345i), 33939u), ~_wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.yz) & -2147483647i, vec3<i32>(-36325i, i32(-1i) * -u_input.b, u_input.a.x)));
    var var_4 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~(~21317u)), ~global2.x) << (3392u % 32u), 9u)];
    global2 = vec4<u32>(1u, global2.x, 101287u, global2.x) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(var_4.b & 4294967295u, ~global2.x, ~var_4.b, ~global2.x), ~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, var_4.b, global2.x, global2.x), vec4<u32>(54487u, var_4.b, var_4.b, 15585u))) % vec4<u32>(32u));
    var var_5 = vec3<bool>(true, var_3.x, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.zz, var_4.b, _wgslsmith_mod_vec2_u32(global2.zz ^ (~global2.zx ^ _wgslsmith_sub_vec2_u32(global2.wz, global2.yy)), ~(~vec2<u32>(var_4.b, 45037u) ^ max(global2.wz, vec2<u32>(global2.x, global2.x)))));
}

