struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = max(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_2.b.c.zx, vec2<u32>(max(u_input.d, 54131u), 1u)), select(48547u, 25895u, true)), ~arg_2.b.a.x);
    var var_1 = Struct_1(vec4<u32>(u_input.d, var_0, _wgslsmith_sub_u32(4294967295u, 1u), ~42477u), -_wgslsmith_mod_vec2_i32(~arg_1.b, vec2<i32>(_wgslsmith_clamp_i32(-21810i, arg_2.b.b.x, u_input.a), arg_1.b.x ^ -1i)), ~arg_1.c, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-937f, -833f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -680f), -2095f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(320f, arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - -711f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1.d), vec4<f32>(-1868f, arg_3, arg_2.b.e, 3156f), true)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.b.e, -1242f, arg_1.e, arg_2.b.d.x)))), !vec4<bool>(all(vec3<bool>(true, false, false)), any(vec2<bool>(false, true)), false, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1809f, arg_1.e, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.b.d.x, -384f)) + 967f))));
    var_1 = Struct_1(firstTrailingBit(vec4<u32>(max(var_1.c.x, 4294967295u), arg_1.c.x, ~var_0, var_1.a.x)), ~(~(~vec2<i32>(1558i, 5452i))), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~68054u, 1u, ~arg_2.a.x), ~countOneBits(1u), u_input.d), arg_1.a.zwz), arg_1.d, arg_3);
    var_1 = Struct_1(~(~(~vec4<u32>(var_0, var_1.c.x, 46258u, var_0))), vec2<i32>(29410i | firstLeadingBit(firstTrailingBit(u_input.a)), 2147483647i), arg_2.b.c | vec3<u32>(_wgslsmith_add_u32(arg_1.c.x, arg_1.c.x), 67562u, var_1.c.x >> (1u % 32u)), vec4<f32>(_wgslsmith_div_f32(var_1.e, -1768f), 510f, _wgslsmith_f_op_f32(round(-1275f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-617f, _wgslsmith_f_op_f32(arg_2.b.e - 2860f))) * -227f)), arg_1.d.x);
    let var_2 = vec4<i32>(-1i) * -(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b.x, 0i, u_input.a, -31406i), vec4<i32>(-40157i, var_1.b.x, u_input.a, -2147483647i))));
    return true;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = arg_2.b.d.x;
    let var_1 = arg_2.b.a;
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, ~_wgslsmith_dot_vec2_u32(arg_2.a << (vec2<u32>(53088u, var_1.x) % vec2<u32>(32u)), vec2<u32>(var_1.x, var_1.x) >> (u_input.c.xx % vec2<u32>(32u)))), select(vec2<u32>(0u, 4294967295u), firstTrailingBit(~vec2<u32>(arg_2.b.a.x, arg_2.a.x)) | vec2<u32>(_wgslsmith_mod_u32(arg_2.a.x, var_1.x), ~arg_2.b.c.x), any(arg_1.yxx)), max(vec2<u32>(1u, ~u_input.c.x), ~var_1.yz));
    let var_3 = ~(~firstTrailingBit(_wgslsmith_add_u32(arg_2.b.c.x, 78525u) ^ _wgslsmith_add_u32(u_input.c.x, 1u)));
    let var_4 = select(vec3<bool>(true, any(select(select(arg_1, vec4<bool>(true, arg_1.x, false, false), false), arg_1, !arg_1)), !arg_0), !select(!vec3<bool>(false, arg_0, false), vec3<bool>(func_3(vec4<f32>(arg_2.b.e, -128f, -755f, -1065f), arg_2.b, arg_2, 288f), false, true), !arg_1.wyw), -2082f <= _wgslsmith_f_op_f32(select(-1003f, 570f, true)));
    return arg_2.b.d.xwz;
}

fn func_1() -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(397f - -829f) - _wgslsmith_f_op_f32(floor(471f))) - _wgslsmith_f_op_f32(sign(140f))) - 1f), _wgslsmith_f_op_f32(trunc(644f)), -1380f);
    let var_1 = all(select(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))), select(vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true), vec4<bool>(all(vec4<bool>(false, false, true, true)), true, false, var_0.x == 1081f), true), false));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-1654f * var_0.x)))), _wgslsmith_f_op_f32(abs(var_0.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -685f, -687f) * vec3<f32>(var_0.x, 827f, var_0.x)))), _wgslsmith_f_op_vec3_f32(func_2(var_1, !vec4<bool>(var_1, var_1, true, var_1), Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 47744u), vec2<u32>(0u, u_input.d)), Struct_1(vec4<u32>(1u, 4294967295u, u_input.c.x, 4294967295u), vec2<i32>(-22889i, 27198i), vec3<u32>(4294967295u, 0u, 68179u), vec4<f32>(var_0.x, var_0.x, 1193f, -537f), var_0.x))))));
    let var_3 = u_input.c.zy;
    return Struct_3(Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(~u_input.c.x, var_3.x), vec2<u32>(5792u, u_input.b ^ 0u)), Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(40563u, 49150u, u_input.b, u_input.d), vec4<u32>(13823u, 28833u, var_3.x, 0u)), -vec2<i32>(u_input.a, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 51182u, 5524u), ~u_input.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1789f, -301f, var_2.x)), -309f)), true | any(select(vec2<bool>(true, false), vec2<bool>(var_1, var_1), !vec2<bool>(var_1, var_1))), _wgslsmith_sub_u32(~1u, 1u), _wgslsmith_add_vec3_i32(-(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 1i, 1i), vec3<i32>(21430i, -2147483647i, u_input.a)) & _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(308i, u_input.a, u_input.a))), reverseBits(~_wgslsmith_mod_vec3_i32(vec3<i32>(-4351i, u_input.a, -8671i), vec3<i32>(2648i, 0i, u_input.a)))), Struct_2(~u_input.c.yy, Struct_1(max(vec4<u32>(u_input.b, u_input.d, var_3.x, u_input.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 51027u, 64640u), vec4<u32>(22235u, u_input.d, var_3.x, var_3.x))), abs(vec2<i32>(u_input.a, u_input.a)) << (var_3 % vec2<u32>(32u)), u_input.c, vec4<f32>(var_2.x, _wgslsmith_f_op_vec3_f32(func_2(var_1, vec4<bool>(true, var_1, true, false), Struct_2(vec2<u32>(4294967295u, u_input.c.x), Struct_1(vec4<u32>(u_input.b, 123596u, var_3.x, 7125u), vec2<i32>(-305i, u_input.a), vec3<u32>(var_3.x, 16834u, 55597u), vec4<f32>(764f, var_2.x, var_2.x, var_2.x), -681f)))).x, var_0.x, var_0.x), var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~1u;
    var var_0 = func_1();
    var var_1 = ~(~firstLeadingBit(~u_input.c.x) >> (0u % 32u));
    var var_2 = func_1();
    var var_3 = func_1().a;
    var_2 = func_1();
    let var_4 = !vec2<bool>(any(select(!vec2<bool>(var_2.b, var_2.b), select(vec2<bool>(true, var_2.b), vec2<bool>(var_0.b, false), var_2.b), all(vec2<bool>(false, var_0.b)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e.b.e, _wgslsmith_f_op_vec2_f32(-var_0.a.b.d.yy));
}

