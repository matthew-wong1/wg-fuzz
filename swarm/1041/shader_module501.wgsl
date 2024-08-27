struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> vec3<i32> {
    return reverseBits(abs(~(-(~u_input.e.zyw))));
}

fn func_3(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-707f, 1063f) - _wgslsmith_f_op_f32(516f - 2186f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1526f)), _wgslsmith_div_f32(-2690f, -730f))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(u_input.c.x != 57075u, true, false))), true);
    let var_1 = Struct_1(-1900i);
    let var_2 = _wgslsmith_f_op_f32(-2739f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1065f)))))));
    var_0 = vec3<bool>(false, true, false);
    let var_3 = (1182i & (~(~u_input.b.x) & _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(820i, 8687i)), vec2<i32>(-12510i, -2147483647i) | vec2<i32>(-760i, var_1.a)))) ^ 1i;
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = arg_2.x;
    let var_1 = arg_0.d;
    var var_2 = arg_0.d;
    var var_3 = ~_wgslsmith_mult_u32(17515u, 51391u);
    let var_4 = !arg_3.wzy;
    return func_3(-arg_0.a.xxz & arg_0.a.wzy);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = arg_0.a;
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(max(-1i, abs(var_0)), _wgslsmith_mult_i32(1i, -25286i) | (var_0 >> (82760u % 32u))), u_input.a, 2147483647i, u_input.e.x), u_input.e | ((vec4<i32>(-1i) * -u_input.b) >> (~max(vec4<u32>(54368u, arg_1.x, 96022u, u_input.d), vec4<u32>(arg_1.x, 4294967295u, u_input.c.x, u_input.c.x)) % vec4<u32>(32u))));
    let var_2 = Struct_1(firstLeadingBit(u_input.a));
    var var_3 = func_4(Struct_2(u_input.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))))), arg_1.x, func_3(_wgslsmith_clamp_vec3_i32(func_2(), -u_input.b.wxx, vec3<i32>(-1i, 1i, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-443f, _wgslsmith_f_op_f32(sign(-511f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1856f, 605f)), 649f)))), select(!arg_2.xx, vec2<bool>(false, true), arg_2.yw), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-1217f - 452f), -331f, 2279f, -289f))))), arg_2);
    let var_4 = vec2<i32>(select(_wgslsmith_add_i32(30322i & var_1.x, var_2.a >> (firstLeadingBit(32834u) % 32u)), -1i, any(!select(arg_2.wyz, vec3<bool>(true, true, false), vec3<bool>(false, true, arg_2.x)))), var_3.a >> (_wgslsmith_mod_u32(108597u, 1482u) % 32u));
    return Struct_2(var_1, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1702f + -1162f), 442f), _wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(744f, -1347f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-954f + 575f) + -380f)))), 91282u, Struct_1(1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -764f))));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = abs(~_wgslsmith_div_vec4_i32(min(vec4<i32>(arg_1, 35594i, arg_2.a, u_input.b.x), vec4<i32>(0i, arg_2.a, u_input.e.x, 0i)), -vec4<i32>(arg_0.a.x, arg_0.a.x, 27709i, -19696i)) >> (vec4<u32>(arg_0.c | 0u, ~arg_0.c, u_input.c.x, _wgslsmith_sub_u32(u_input.d, u_input.c.x)) % vec4<u32>(32u)));
    let var_1 = Struct_2(vec4<i32>(-1i) * -select(arg_0.a, vec4<i32>(arg_0.a.x, -2147483647i, -2147483647i, 0i) << (u_input.c % vec4<u32>(32u)), true), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e)), 680f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1758f * arg_0.b.x))), 958f), u_input.c.x, func_3(vec3<i32>(-u_input.a, i32(-1i) * -arg_1, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d.a, var_0.x), u_input.b.zx), var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-809f, 839f)))));
    var_0 = var_1.a;
    let var_2 = var_1.a;
    var_0 = vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(func_4(Struct_2(var_2, vec4<f32>(1131f, 635f, -447f, var_1.b.x), arg_0.c, Struct_1(-4768i), arg_0.b.x), vec2<bool>(true, false), arg_0.b, vec4<bool>(true, true, true, true)).a, _wgslsmith_clamp_i32(var_1.a.x, var_2.x, var_0.x), i32(-1i) * -71530i, var_2.x), select(u_input.e << (u_input.c % vec4<u32>(32u)), u_input.b, true)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(select(u_input.e.xz, vec2<i32>(var_1.d.a, 13030i), vec2<bool>(false, false)), vec2<i32>(0i, u_input.a)), 5711i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -8935i, arg_0.d.a), func_2()), abs(vec3<i32>(arg_2.a, 0i, -68474i) << (vec3<u32>(1u, 9855u, u_input.c.x) % vec3<u32>(32u))))) >> (u_input.c % vec4<u32>(32u));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<i32>(func_5(func_1(Struct_1(1i), vec4<u32>(u_input.c.x, u_input.d, 0u, u_input.d), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false)), u_input.e.x, Struct_1(u_input.a)), max(abs(-2147483647i), _wgslsmith_mod_i32(func_3(u_input.b.zwy).a, -1i)), -1i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, i32(-1i) * -38891i), -select(-2147483647i, u_input.b.x, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1312f, -1000f, 1396f, 1262f) - vec4<f32>(1000f, 1051f, 1000f, -1123f))))), ~countOneBits(_wgslsmith_dot_vec2_u32(max(u_input.c.xw, u_input.c.xw), u_input.c.ww)), Struct_1(func_3(~vec3<i32>(u_input.e.x, u_input.e.x, -2147483647i)).a), _wgslsmith_f_op_f32(func_1(func_1(Struct_1(u_input.e.x), vec4<u32>(38395u, 4294967295u, 0u, u_input.d), vec4<bool>(true, true, true, true)).d, u_input.c, vec4<bool>(true, true, true, true)).b.x + _wgslsmith_f_op_f32(f32(-1f) * -290f)));
    let var_1 = max(reverseBits(-(i32(-1i) * -2147483647i)), var_0.a.x);
    let var_2 = 14574u;
    let var_3 = vec4<i32>(~(~(-21676i)), var_0.a.x, u_input.a, _wgslsmith_add_i32(select(-21885i, 0i, true), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

