struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>, arg_3: f32) -> bool {
    var var_0 = ~_wgslsmith_clamp_u32(1u, 74676u, _wgslsmith_dot_vec2_u32(u_input.a, select(vec2<u32>(arg_2.x, 32107u), abs(vec2<u32>(u_input.a.x, 4294967295u)), vec2<bool>(true, true))));
    var var_1 = vec2<bool>(true, any(vec3<bool>(any(arg_0.d.b.zx), arg_1, any(arg_0.a.b.xz))));
    let var_2 = arg_0.a;
    var var_3 = Struct_2(var_2, Struct_1(true, select(select(!arg_0.a.b, arg_0.a.b, var_1.x), select(var_2.b, vec3<bool>(arg_0.b.a, var_1.x, arg_1), any(var_2.b)), !var_1.x), var_2.c >> (var_2.c % vec3<u32>(32u))), arg_0.c, Struct_1(true, vec3<bool>(var_1.x, (var_2.a & false) & false, select(false, var_2.a, arg_1) || true), ~vec3<u32>(arg_2.x, _wgslsmith_add_u32(var_2.c.x, 24456u), ~var_2.c.x)));
    var var_4 = Struct_1(any(select(!(!vec3<bool>(true, var_3.a.a, var_3.b.a)), arg_0.b.b, select(var_3.b.b, var_3.d.b, arg_0.d.b))), select(select(select(var_3.b.b, select(vec3<bool>(true, false, false), vec3<bool>(var_2.b.x, false, true), arg_0.d.b), select(var_2.b, var_3.b.b, var_2.b)), !var_3.d.b, all(vec4<bool>(var_3.d.b.x, var_1.x, true, true))), !vec3<bool>(!var_2.a, !var_1.x, any(vec2<bool>(true, var_1.x))), !vec3<bool>(true, var_2.b.x, any(var_2.b.zx))), vec3<u32>(u_input.c, 30008u, firstTrailingBit(~0u)));
    return select(all(vec3<bool>(38718i <= u_input.e.x, false, var_3.d.a)), true, !all(select(select(vec4<bool>(true, arg_1, var_2.a, arg_1), vec4<bool>(true, arg_1, var_1.x, var_1.x), vec4<bool>(var_3.a.b.x, var_2.b.x, arg_1, false)), !vec4<bool>(false, true, var_3.b.b.x, false), !vec4<bool>(true, false, arg_0.d.b.x, var_1.x))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_1((true || func_3(Struct_2(Struct_1(true, vec3<bool>(true, true, true), vec3<u32>(arg_0, u_input.a.x, 1u)), Struct_1(true, vec3<bool>(false, false, true), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.e.x, 14132i, 19630i, 2147483647i), Struct_1(false, vec3<bool>(true, true, true), vec3<u32>(0u, u_input.c, 9647u))), true, ~vec2<u32>(arg_0, arg_0), -1389f)) | true, vec3<bool>(!all(vec3<bool>(false, false, false)) || all(vec3<bool>(true, true, true)), true, (countOneBits(arg_0) & 0u) >= arg_0), reverseBits(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 1u, arg_0), vec3<u32>(arg_0, arg_0, arg_0)), vec3<u32>(166235u, arg_0, 62950u))) << (vec3<u32>(~47219u, ~select(4294967295u, arg_0, false), u_input.a.x) % vec3<u32>(32u)));
    var var_1 = -vec4<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -30033i, 50340i, u_input.d), abs(vec4<i32>(-1i, u_input.b, 2147483647i, u_input.e.x))), 5123i), 0i, u_input.b, -2147483647i);
    let var_2 = Struct_1(!any(select(var_0.b, !vec3<bool>(true, var_0.b.x, true), false)), var_0.b, var_0.c);
    var_1 = _wgslsmith_clamp_vec4_i32((-countOneBits(vec4<i32>(-4325i, u_input.b, var_1.x, var_1.x)) | -(vec4<i32>(40116i, 46720i, var_1.x, u_input.d) ^ vec4<i32>(u_input.e.x, var_1.x, u_input.b, u_input.e.x))) >> (vec4<u32>(4294967295u, ~1575u, 30244u, var_0.c.x) % vec4<u32>(32u)), firstTrailingBit(-vec4<i32>(_wgslsmith_add_i32(u_input.b, -2091i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, var_1.x, var_1.x), vec4<i32>(664i, -2147483647i, 18911i, 13847i)), u_input.b, firstTrailingBit(var_1.x))), reverseBits(-_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, -1970i, 84783i, 1i), vec4<i32>(1i, var_1.x, u_input.d, -1i)), abs(vec4<i32>(86336i, var_1.x, 1i, var_1.x)))));
    var_0 = Struct_1(all(select(!vec3<bool>(var_2.a, var_0.a, var_2.b.x), select(vec3<bool>(true, true, true), !var_2.b, func_3(Struct_2(var_2, var_2, vec4<i32>(u_input.b, u_input.b, var_1.x, u_input.b), Struct_1(false, var_2.b, var_2.c)), var_0.b.x, var_2.c.xz, -518f)), select(vec3<bool>(var_2.b.x, true, true), !var_2.b, var_0.a))), select(!select(var_0.b, vec3<bool>(true, var_2.b.x, var_0.b.x), vec3<bool>(true, var_0.a, var_0.a)), select(vec3<bool>(true, true, true), vec3<bool>(var_0.b.x || false, true, true), !any(vec4<bool>(var_0.b.x, true, false, false))), vec3<bool>(var_0.a, !select(true, false, var_2.b.x), select(!var_0.a, true, all(vec2<bool>(false, var_2.a))))), var_0.c >> (firstTrailingBit(vec3<u32>(arg_0, var_2.c.x, 1u) | select(vec3<u32>(4294967295u, var_0.c.x, var_2.c.x), var_2.c, var_2.a)) % vec3<u32>(32u)));
    return Struct_2(Struct_1(var_2.a, var_0.b, ~var_2.c), Struct_1(any(!var_0.b), var_2.b, vec3<u32>(reverseBits(16942u), 1u, 56751u)), _wgslsmith_mod_vec4_i32(abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.e.x, u_input.d, var_1.x), vec4<i32>(var_1.x, var_1.x, 1i, var_1.x))), -(~(~vec4<i32>(-1i, var_1.x, u_input.d, var_1.x)))), var_2);
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0.b;
    var var_1 = Struct_1(var_0.b.x, !(!(!vec3<bool>(arg_0.a.b.x, true, arg_0.d.a))), ~_wgslsmith_clamp_vec3_u32(arg_0.a.c, max(vec3<u32>(u_input.c, u_input.c, 24490u), var_0.c), vec3<u32>(0u, 23125u, 4294967295u) & arg_0.a.c) >> (var_0.c % vec3<u32>(32u)));
    let var_2 = all(!func_2(firstTrailingBit(select(6242u, 82120u, false))).a.b);
    let var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(573f))));
    return Struct_1(var_3.a.a, select(var_1.b, select(vec3<bool>(true, true, var_1.c.x == arg_0.d.c.x), !(!vec3<bool>(var_3.b.a, false, var_0.a)), true), false), var_0.c);
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = func_4(func_2(~4294967295u), true);
    let var_1 = func_4(func_2(var_0.c.x), false);
    let var_2 = vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(abs(var_0.c.x), reverseBits(var_1.c.x)), ~4294967295u, ~34846u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(min(reverseBits(vec2<u32>(4164u, var_1.c.x)), var_1.c.zy), vec2<u32>(var_1.c.x, _wgslsmith_sub_u32(var_1.c.x, 38201u))), vec2<u32>(max(~var_1.c.x, var_0.c.x), 31411u)));
    let var_3 = Struct_2(var_0, var_1, vec4<i32>(1i, 1i & (0i << (var_1.c.x % 32u)), -12782i, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, u_input.b, -2147483647i), vec4<i32>(u_input.e.x, -2147483647i, u_input.e.x, u_input.e.x))) >> (reverseBits(vec4<u32>(1u, _wgslsmith_mult_u32(0u, 4294967295u), ~var_1.c.x, func_2(26018u).d.c.x)) % vec4<u32>(32u)), Struct_1(12785u < var_0.c.x, var_0.b, vec3<u32>(u_input.c << (_wgslsmith_mod_u32(var_2.x, 0u) % 32u), func_4(func_2(u_input.a.x), true).c.x, 1u)));
    return Struct_2(var_0, Struct_1(false, vec3<bool>(var_3.d.a, var_3.b.b.x, var_1.a && true), ~(~var_3.b.c)), _wgslsmith_sub_vec4_i32(-select(vec4<i32>(var_3.c.x, u_input.d, 1i, u_input.b), ~var_3.c, !vec4<bool>(true, var_1.a, var_1.b.x, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(16899i | var_3.c.x, -var_3.c.x, 34211i, -31607i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 15094i, var_3.c.x, var_3.c.x), vec4<i32>(u_input.e.x, var_3.c.x, -16709i, -2147483647i)))), func_4(func_2(var_0.c.x), !(!var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(285f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1211f, -620f)))))) * -1170f);
    var var_1 = func_1(vec3<f32>(var_0, _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0, 1057f, true)), _wgslsmith_f_op_f32(-1000f + 725f))))), 191f));
    var var_2 = var_1.d;
    let var_3 = var_0;
    var_1 = Struct_2(var_1.b, func_2(_wgslsmith_dot_vec3_u32(var_2.c, ~vec3<u32>(u_input.c, var_1.b.c.x, 1u))).b, var_1.c, func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))), 505f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))))).a);
    var_1 = Struct_2(func_1(vec3<f32>(var_3, _wgslsmith_f_op_f32(-var_0), 435f)).b, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, var_3) + vec3<f32>(-1259f, -1258f, var_3)), vec3<f32>(var_3, 838f, -548f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-417f, 119f, -859f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1779f, -2627f, var_0)))))).d, vec4<i32>(u_input.e.x, 30082i, -29954i, func_2(_wgslsmith_clamp_u32(_wgslsmith_div_u32(43076u, var_2.c.x), u_input.c << (var_1.d.c.x % 32u), 41291u)).c.x), func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.c.x, 4294967295u, u_input.c) << (var_2.c % vec3<u32>(32u)), var_1.a.c | (vec3<u32>(var_1.d.c.x, var_2.c.x, 1u) | vec3<u32>(var_2.c.x, 61974u, var_1.b.c.x)))).d);
    var var_4 = vec2<bool>(true, true);
    let var_5 = var_1.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(var_2.c, ~var_1.d.c), vec2<i32>(var_1.c.x, -8710i), 1102f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1526f, 747f)), var_3, var_0)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(27065i, -var_1.c.x), ~0i), u_input.e.yz));
}

