struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<f32>, 15>;

var<private> global2: vec2<u32>;

var<private> global3: Struct_3 = Struct_3(vec4<bool>(false, true, true, false), Struct_2(Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec4<f32>(958f, 295f, 100f, -2025f), vec3<i32>(-32364i, 24851i, -37396i), vec2<bool>(false, true), vec4<i32>(-1i, 2147483647i, 1i, -60956i)), vec2<u32>(0u, 4294967295u), Struct_1(vec2<i32>(1i, -1i), vec4<f32>(-811f, -871f, 436f, -871f), vec3<i32>(0i, 1i, 1i), vec2<bool>(true, false), vec4<i32>(1i, -14498i, 0i, 33010i))));

var<private> global4: Struct_4;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> bool {
    let var_0 = global3.a.x;
    let var_1 = vec3<bool>(false, u_input.a >= reverseBits(5877u), global3.a.x);
    let var_2 = Struct_4(~min(global4.a, select(vec4<u32>(1u, 21570u, global4.a.x, global3.b.b.x), global4.a, false)) << (_wgslsmith_add_vec4_u32(vec4<u32>(94887u, ~4294967295u, 21100u << (u_input.a % 32u), global3.b.b.x), ~min(vec4<u32>(0u, global4.a.x, global3.b.b.x, global3.b.b.x), vec4<u32>(33024u, 0u, 64636u, 31519u))) % vec4<u32>(32u)), global4.b, global3.b.a.e);
    var var_3 = vec2<bool>(false, !(!(global3.b.a.d.x & (true & global3.b.a.d.x))));
    var_3 = !select(var_1.yy, vec2<bool>(all(select(vec4<bool>(global3.b.c.d.x, false, false, false), vec4<bool>(false, false, true, global3.b.c.d.x), global3.a)), var_1.x), select(false, select(true, true, var_3.x & global3.a.x), !global3.a.x | true));
    return true;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = any(vec2<bool>(true, !func_3()));
    let var_1 = Struct_2(arg_1, vec2<u32>(~(~22434u & _wgslsmith_clamp_u32(u_input.a, 8249u, 32754u)), ~abs(0u)), Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(2997i, 2147483647i)), u_input.c.xz), vec2<i32>(-23131i, 1i)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_1.b))))), firstLeadingBit(u_input.c) << (select(reverseBits(vec3<u32>(0u, 110849u, 4812u)), global4.a.xyy, func_3()) % vec3<u32>(32u)), vec2<bool>(!arg_1.d.x, true), global3.b.c.e));
    return var_1.b.x;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_4(vec4<u32>(~_wgslsmith_div_u32(1u, 29359u), countOneBits(global4.a.x & global2.x), firstLeadingBit(~global2.x), _wgslsmith_sub_u32(18236u, func_2(-1i, Struct_1(arg_1.xz, vec4<f32>(-1556f, 884f, 107f, global3.b.a.b.x), vec3<i32>(arg_1.x, 0i, global3.b.c.c.x), vec2<bool>(true, false), global4.c)))) & vec4<u32>(countOneBits(1u), 4294967295u, ~(~1577u), func_2(-1i, Struct_1(vec2<i32>(-15853i, -54691i), global3.b.a.b, vec3<i32>(-26667i, arg_1.x, u_input.c.x), global3.b.a.d, global4.b)) << (1u % 32u)), reverseBits(~firstLeadingBit(max(global4.c, vec4<i32>(0i, -18569i, 26130i, 33354i)))), vec4<i32>((_wgslsmith_add_i32(global4.b.x, global4.b.x) & global3.b.a.c.x) & global4.b.x, -((i32(-1i) * -16828i) << (global2.x % 32u)), -abs(_wgslsmith_clamp_i32(u_input.c.x, -53535i, global4.c.x)), arg_1.x));
    let var_1 = ~(-(~abs(vec2<i32>(arg_1.x, global4.c.x)))) ^ firstTrailingBit(reverseBits(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global4.b.x, arg_1.x), vec2<i32>(-1i, arg_1.x)), vec2<i32>(0i, global4.b.x))));
    let var_2 = var_1.x;
    let var_3 = Struct_4(select(vec4<u32>(~func_2(-2147483647i, global3.b.c), ~(~1u), _wgslsmith_dot_vec4_u32(~var_0.a, vec4<u32>(1u, global4.a.x, 36362u, 4294967295u)), ~5965u), global4.a, vec4<bool>(arg_0 && (global3.b.c.b.x != -379f), global3.a.x, !all(global3.a), any(vec3<bool>(arg_0, arg_0, false)))), global3.b.c.e, global3.b.a.e);
    let var_4 = var_0.a.x;
    return Struct_4(_wgslsmith_add_vec4_u32((~var_0.a | vec4<u32>(global4.a.x, var_0.a.x, 1u, var_3.a.x)) << (vec4<u32>(global4.a.x, ~global4.a.x, 1u, countOneBits(36690u)) % vec4<u32>(32u)), var_0.a), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(abs(var_3.b.x), var_1.x, var_3.b.x), var_1.x), ~(~var_1.x << ((var_3.a.x >> (var_3.a.x % 32u)) % 32u)), 2147483647i | ~global3.b.a.a.x, _wgslsmith_add_i32(i32(-1i) * -42067i, var_0.c.x)), vec4<i32>(u_input.c.x & var_3.b.x, -2147483647i, -global4.c.x, 1i));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(select(global3.b.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.a.b.x)), true));
    let var_1 = arg_2.c;
    global2 = func_1(!(!(var_1.d.x && var_1.d.x)) || false, select(_wgslsmith_add_vec3_i32(abs(~global3.b.c.e.xww), u_input.c >> (arg_1.a.wyx % vec3<u32>(32u))), func_1(any(global3.a), select(vec3<i32>(var_1.e.x, 10948i, 1699i), var_1.c, true)).c.xyw, countOneBits(_wgslsmith_div_u32(87513u, global3.b.b.x)) >= ~(~0u))).a.xx;
    let var_2 = ~_wgslsmith_div_u32(global2.x, arg_1.a.x);
    let var_3 = Struct_3(!(!(!global3.a)), global3.b);
    return Struct_3(global3.a, var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~firstLeadingBit(_wgslsmith_clamp_u32(u_input.a, 23526u, global4.a.x))));
    let var_1 = func_4(-(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global3.b.a.e, vec4<i32>(global3.b.c.a.x, 38098i, u_input.c.x, 5002i)), _wgslsmith_add_vec4_i32(global4.c, vec4<i32>(2147483647i, 0i, u_input.c.x, 2147483647i))) | ~global3.b.a.c.x), func_1(!(all(vec2<bool>(true, true)) || !global3.a.x), global3.b.c.e.wxx), Struct_2(global3.b.a, ~vec2<u32>(global4.a.x & 18426u, 11997u), global3.b.c), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.c.b.x, -368f, 288f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-209f - global3.b.a.b.x), _wgslsmith_f_op_f32(step(global3.b.c.b.x, global3.b.a.b.x)), _wgslsmith_f_op_f32(global3.b.c.b.x + global3.b.c.b.x)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.b.a.b.x, 1599f, 985f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.a.b.x, -291f, -336f) * global3.b.a.b.xzy)))))));
    var var_2 = ~var_1.b.a.a.x;
    var var_3 = var_1.b;
    let var_4 = any(var_1.a.wwy);
    var_3 = func_4(_wgslsmith_div_i32(min(var_3.c.e.x & u_input.c.x, var_1.b.a.c.x), -func_1(var_4, vec3<i32>(u_input.c.x, u_input.c.x, global3.b.c.c.x)).b.x), func_1(true, var_3.c.c), func_4(i32(-1i) * -1i, Struct_4(global4.a, _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global3.b.c.a.x, u_input.c.x, -54398i, -2147483647i), global3.b.c.e), vec4<i32>(var_1.b.a.c.x, u_input.c.x, var_3.c.e.x, global4.b.x), global3.b.c.e ^ var_1.b.a.e), _wgslsmith_sub_vec4_i32(func_1(var_1.a.x, global3.b.c.c).c, _wgslsmith_clamp_vec4_i32(vec4<i32>(46297i, 33763i, var_1.b.c.e.x, 37758i), global4.c, vec4<i32>(41262i, var_1.b.c.c.x, global4.c.x, global4.b.x)))), var_1.b, vec3<f32>(719f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.a.b.x))), -861f)).b, _wgslsmith_f_op_vec3_f32(var_1.b.a.b.zwx - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1835f, global3.b.c.b.x, var_3.c.b.x), global3.b.c.b.wyw, false))))))).b;
    let var_5 = vec4<bool>(!(_wgslsmith_f_op_f32(1055f + global3.b.a.b.x) > 765f), select(false, var_1.a.x, all(!select(global3.a.xw, global3.a.yw, vec2<bool>(false, false)))), true, all(select(var_1.a.wzy, var_1.a.wyx, vec3<bool>(var_4, global3.b.a.e.x == global4.b.x, any(vec3<bool>(true, true, false))))));
    var_3 = func_4(_wgslsmith_dot_vec2_i32(u_input.c.yy, global3.b.a.e.wy), func_1(true, ~(-u_input.c) >> (vec3<u32>(_wgslsmith_div_u32(0u, u_input.a), min(var_1.b.b.x, 13267u), ~51111u) % vec3<u32>(32u))), var_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_4(var_3.a.a.x, func_1(var_1.a.x, vec3<i32>(2147483647i, 0i, global3.b.c.e.x)), Struct_2(var_3.a, vec2<u32>(global3.b.b.x, var_3.b.x), var_1.b.a), _wgslsmith_f_op_vec3_f32(ceil(var_1.b.c.b.yzy))).b.c.b.yxw))).b;
    var_0 = firstTrailingBit(~(~(~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(select(global4.c, max(abs(vec4<i32>(var_1.b.c.a.x, var_1.b.a.c.x, global3.b.c.a.x, global4.b.x)), ~var_3.a.e), func_3()), -var_3.a.e), _wgslsmith_f_op_f32(-global3.b.a.b.x), ~(-(countOneBits(vec4<i32>(-1i, -9088i, -12167i, var_1.b.c.a.x)) << (select(global4.a, vec4<u32>(global4.a.x, var_3.b.x, var_1.b.b.x, 89579u), var_1.b.c.d.x) % vec4<u32>(32u)))));
}

