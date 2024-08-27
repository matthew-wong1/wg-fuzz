struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<bool> {
    var var_0 = ~u_input.d.xz;
    var var_1 = ~u_input.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(264f, -686f, 334f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-306f, 550f, -480f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(304f, -828f, -847f)), vec3<f32>(408f, 1566f, -251f)))));
    var var_3 = true;
    let var_4 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x << ((var_0.x ^ 75587u) % 32u), _wgslsmith_mult_i32(0i, 2147483647i & u_input.a.x), u_input.a.x), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(23472i, u_input.a.x, u_input.a.x), select(u_input.b.zyw, vec3<i32>(-62620i, -51505i, 1i), true), ~u_input.b.yxx), vec3<i32>(1i, u_input.a.x, u_input.a.x), true)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.wwx, _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.b.x, 2147483647i), ~vec3<i32>(u_input.b.x, u_input.b.x, u_input.a.x)), u_input.b.wzx), vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, ~u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, 1i, 18450i)), -31033i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.a.x), u_input.a.x)), -vec3<i32>(0i, -1i, 1i)));
    return select(vec3<bool>(true, !select(all(vec4<bool>(false, false, true, true)), all(vec3<bool>(true, false, false)), true), !(select(true, false, false) | true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), true), vec3<bool>(true, true, true));
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = Struct_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -750f))))), u_input.b.x, Struct_1(select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 49521u, u_input.c), vec3<u32>(u_input.d.x, 0u, u_input.d.x), vec3<u32>(33233u, 1u, 24142u)), ~u_input.d, !func_3()), vec2<i32>(_wgslsmith_sub_i32(2147483647i, abs(-35088i)), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-3568i, 4790i, arg_0, 19514i), u_input.b)))));
    return u_input.b.x;
}

fn func_1() -> vec3<i32> {
    let var_0 = -(u_input.a >> (max(vec2<u32>(u_input.c, u_input.d.x) << (u_input.d.zx % vec2<u32>(32u)), ~countOneBits(vec2<u32>(u_input.d.x, 1u))) % vec2<u32>(32u)));
    var var_1 = ~(-1i);
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(~(~countOneBits(u_input.d)), u_input.d, _wgslsmith_mult_vec3_u32(u_input.d, u_input.d ^ (u_input.d << (vec3<u32>(0u, 41614u, u_input.c) % vec3<u32>(32u))))), _wgslsmith_mult_vec2_i32(max(~(-u_input.b.wx), -var_0), vec2<i32>(_wgslsmith_add_i32(~u_input.a.x, i32(-1i) * -2147483647i), var_0.x)));
    var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(0i, 2147483647i, var_0.x, -2147483647i)), vec4<i32>(24622i, var_2.b.x, ~(i32(-1i) * -2147483647i), _wgslsmith_sub_i32(var_2.b.x, var_0.x) | min(-308i, u_input.a.x))), -1i);
    var var_3 = Struct_2(vec4<i32>(-2147483647i, -55973i, var_0.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_sub_i32(0i, 2147483647i)), countOneBits(2147483647i))), ~var_2.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(966f, -2136f) * _wgslsmith_div_vec2_f32(vec2<f32>(1410f, -1609f), vec2<f32>(1482f, 316f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(687f, 290f) * vec2<f32>(1571f, 520f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(646f, -1329f)) * vec2<f32>(-1387f, -1186f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1289f)), 4294967295u);
    return -vec3<i32>(~func_2(var_2.b.x) & _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.x, u_input.a.x), 26314i & u_input.b.x), 2147483647i, 1i);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_2(abs(vec4<i32>(-arg_3.x, arg_3.x, ~(-7439i | arg_2.b.x), arg_3.x)), countOneBits(0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(975f, 818f), vec2<f32>(800f, 891f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-1050f, -668f), vec2<f32>(570f, -1087f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(f32(-1f) * -1449f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-579f, 1275f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -216f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1530f)) - _wgslsmith_f_op_f32(1519f - -184f)))), arg_1);
    var var_1 = Struct_3(vec4<bool>(!arg_0.x, all(arg_0), true, !(~var_0.b != ~u_input.c)), u_input.b, -1420f, true);
    var var_2 = select(select(var_0.a.yyy, vec3<i32>(firstLeadingBit(var_1.b.x), _wgslsmith_mod_i32(-27920i, -9343i), ~(-2147483647i)), all(!arg_0)) << (arg_2.a % vec3<u32>(32u)), var_1.b.yyy, true);
    var var_3 = Struct_1(~(~_wgslsmith_div_vec3_u32(arg_2.a, u_input.d)), arg_3.zy);
    let var_4 = Struct_1(var_3.a, -vec2<i32>(firstTrailingBit(1i), _wgslsmith_sub_i32(~(-5971i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, var_1.b.x, 0i), vec4<i32>(0i, var_2.x, var_1.b.x, var_1.b.x)))));
    return Struct_4(!(!var_1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1370f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))))), min(countOneBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(5406i, u_input.b.x), arg_3.zx)), -(0i >> (_wgslsmith_mult_u32(7178u, arg_2.a.x) % 32u))), Struct_1(_wgslsmith_add_vec3_u32(max(var_4.a, _wgslsmith_mod_vec3_u32(vec3<u32>(var_4.a.x, 49341u, u_input.d.x), var_3.a)), vec3<u32>(u_input.d.x, 51835u, 55543u)), arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = !var_0;
    let var_2 = func_4(vec2<bool>(false, u_input.b.x < ~(70668i << (0u % 32u))), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c, ~(~u_input.c)), ~4294967295u), Struct_1(~(~u_input.d), u_input.b.wy), -func_1());
    let var_3 = var_2.d.a.xx;
    var var_4 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(-25954i, ~(~func_4(func_3().zy, 4294967295u, var_2.d, -u_input.b.xwx).d.b.x), vec4<u32>(var_2.d.a.x ^ select(var_2.d.a.x, 21842u ^ var_2.d.a.x, true), _wgslsmith_dot_vec2_u32(vec2<u32>(5827u, 31424u) << (u_input.d.yx % vec2<u32>(32u)), vec2<u32>(u_input.c, 1u)), max(4294967295u, 4294967295u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, 1u, 1u, var_2.d.a.x)), vec4<u32>(_wgslsmith_add_u32(var_2.d.a.x, 35740u), _wgslsmith_dot_vec3_u32(var_2.d.a, var_2.d.a), 7662u << (u_input.d.x % 32u), ~37399u))));
}

