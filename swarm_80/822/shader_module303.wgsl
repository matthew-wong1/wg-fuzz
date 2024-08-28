struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_2(-reverseBits(~(-1i)), _wgslsmith_div_i32(arg_3.e.d, min(_wgslsmith_add_i32(-12554i, _wgslsmith_add_i32(-29614i, arg_0.b)), abs(arg_0.b) << (4294967295u % 32u))), vec4<u32>(firstLeadingBit(arg_2.a), arg_0.a, _wgslsmith_mult_u32(20063u, 0u), reverseBits(~_wgslsmith_sub_u32(arg_3.a.c.x, arg_0.a))), -2147483647i);
    var var_1 = arg_3.b;
    let var_2 = arg_3.a;
    var_1 = _wgslsmith_sub_i32(min(21200i, -arg_2.b), ~countOneBits(-8603i)) < -1i;
    var var_3 = false;
    return u_input.b.x;
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(func_3(Struct_1(30374u, -7053i), vec4<i32>(-1i, u_input.a ^ 22772i, -1i, -2147483647i), Struct_1(24904u, -u_input.a), Struct_3(Struct_2(u_input.a, 2147483647i, vec4<u32>(1u, 18785u, 1u, 42221u), 17564i), -896i != u_input.a, _wgslsmith_f_op_f32(932f + 513f), ~vec2<u32>(4294967295u, 4294967295u), Struct_2(u_input.b.x, 0i, vec4<u32>(4294967295u, 4294967295u, 1u, 28472u), u_input.a))), _wgslsmith_clamp_i32(-2147483647i, 2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -6165i), u_input.b.xy)), ~vec4<u32>(~33488u, _wgslsmith_div_u32(24598u, 1u), _wgslsmith_add_u32(18056u, 0u), ~9942u), firstTrailingBit(-31329i)), all(vec4<bool>(arg_0, !arg_0, true, true)) & all(vec4<bool>(true, arg_0, true, -1498i > u_input.b.x)), -772f, ~_wgslsmith_mod_vec2_u32(vec2<u32>(~0u, 63431u), _wgslsmith_clamp_vec2_u32(vec2<u32>(73921u, 61246u), select(vec2<u32>(4294967295u, 21228u), vec2<u32>(4294967295u, 27956u), true), ~vec2<u32>(4294967295u, 4294967295u))), Struct_2(~69466i, u_input.a ^ 1i, vec4<u32>(~4294967295u, ~(~58518u), _wgslsmith_dot_vec3_u32(vec3<u32>(31513u, 1u, 29555u), vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 56041u), vec2<u32>(23504u, 4294967295u))), ~countOneBits(1i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1500f, var_0.c, var_0.c) - vec3<f32>(1231f, var_0.c, var_0.c)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, var_0.c, -326f), vec3<f32>(var_0.c, 2145f, var_0.c)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1309f, var_0.c, -364f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-var_0.c), var_0.c) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c, var_0.c, var_0.c), vec3<f32>(var_0.c, var_0.c, var_0.c))))))));
    var var_2 = vec4<bool>(!var_0.b, all(select(vec3<bool>(!arg_0, true, false), vec3<bool>(true, !arg_0, arg_0 || var_0.b), vec3<bool>(true, true, true))), !(!(u_input.a <= (u_input.b.x & var_0.e.a))), all(vec3<bool>(true, true, all(select(vec4<bool>(arg_0, var_0.b, arg_0, var_0.b), vec4<bool>(false, arg_0, true, var_0.b), true)))));
    let var_3 = Struct_3(var_0.e, false, _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.d.x, var_0.d.x), select(var_0.a.c.x, var_0.e.c.x, true))), ~firstLeadingBit(var_0.e.c.wy) & vec2<u32>(var_0.e.c.x, var_0.e.c.x)), Struct_2(u_input.b.x, -36475i, vec4<u32>(_wgslsmith_div_u32(1u, var_0.a.c.x), var_0.e.c.x & var_0.e.c.x, _wgslsmith_dot_vec2_u32(abs(var_0.a.c.zx), select(var_0.a.c.xw, vec2<u32>(1u, 28029u), vec2<bool>(var_0.b, var_0.b))), ~_wgslsmith_add_u32(var_0.e.c.x, var_0.d.x)), u_input.a & var_0.a.b));
    var_2 = vec4<bool>(true, false, (_wgslsmith_mult_u32(abs(1u), 1u) << (var_0.e.c.x % 32u)) == abs(_wgslsmith_sub_u32(firstLeadingBit(0u), _wgslsmith_mod_u32(30297u, var_0.a.c.x))), true);
    return Struct_3(Struct_2(_wgslsmith_clamp_i32(2147483647i, reverseBits(-1i), ~countOneBits(0i)), 0i, ~max(max(var_0.a.c, vec4<u32>(var_0.d.x, 4294967295u, var_3.d.x, var_0.a.c.x)), reverseBits(vec4<u32>(45450u, var_0.d.x, var_0.a.c.x, 0u))), _wgslsmith_div_i32(_wgslsmith_mult_i32(43134i, 0i), max(u_input.a, 0i)) ^ _wgslsmith_div_i32(firstLeadingBit(var_0.e.b), ~u_input.b.x)), all(vec3<bool>(!var_2.x, all(vec2<bool>(var_0.b, false)), var_0.b)) & (_wgslsmith_add_u32(var_0.a.c.x & 25776u, abs(var_3.a.c.x)) == var_0.d.x), _wgslsmith_div_f32(393f, -360f), vec2<u32>(~var_3.d.x, reverseBits(~(~0u))), Struct_2(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, -4752i), -9003i), 2147483647i, ~(~vec4<u32>(17027u, var_3.a.c.x, var_3.d.x, var_0.a.c.x)), var_3.e.d));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>) -> vec3<u32> {
    var var_0 = func_2(!(!any(vec3<bool>(false, arg_0.b, arg_0.b))));
    var_0 = Struct_3(func_2(!((-844f <= var_0.c) && arg_0.b)).e, arg_0.b, 202f, var_0.e.c.xw, Struct_2(arg_1.x, arg_0.a.a, ~(~var_0.a.c), arg_0.a.b));
    var_0 = arg_0;
    let var_1 = Struct_1(1u, 4873i);
    var var_2 = select(-_wgslsmith_mult_vec4_i32(vec4<i32>(0i, ~var_1.b, ~arg_1.x, _wgslsmith_div_i32(var_1.b, 1i)), arg_1), vec4<i32>(select(arg_1.x, ~2147483647i, arg_0.d.x < 1u), ~(1i | arg_1.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, -var_1.b), _wgslsmith_clamp_i32(arg_0.a.d, countOneBits(var_1.b), 1i)), -29251i), vec4<bool>(any(!vec4<bool>(false, arg_0.b, true, arg_0.b)), true, any(select(select(vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, var_0.b), vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(var_0.b, arg_0.b, false)), arg_0.b)), !((var_0.b && true) & arg_0.b)));
    return func_2(select(var_0.b, any(select(vec4<bool>(var_0.b, arg_0.b, arg_0.b, true), select(vec4<bool>(true, false, var_0.b, var_0.b), vec4<bool>(false, arg_0.b, var_0.b, true), true), arg_0.b)), true)).e.c.yzy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(~(~select(1u, 4294967295u, true)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(7791u, 18708u, 0u)), min(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 0u, 85784u)), func_1(Struct_3(Struct_2(-1i, 14319i, vec4<u32>(13449u, 4294967295u, 4294967295u, 1u), u_input.a), false, 659f, vec2<u32>(33259u, 0u), Struct_2(-37457i, 47696i, vec4<u32>(29964u, 11356u, 0u, 4294967295u), u_input.a)), u_input.b))), ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 44072u, 482u, 37220u), vec4<u32>(31991u, 1u, 1u, 1u)))));
    let var_1 = Struct_1(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(15055u, ~24345u, 80212u), 1u), func_2(true).e.d);
    var_0 = 29937u;
    var_0 = max(39359u, var_1.a) << (~1u % 32u);
    let var_2 = func_2(true);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1459f, var_2.c)));
    let var_4 = -vec3<i32>(~(var_2.a.d ^ var_2.e.b), countOneBits(var_1.b), var_2.a.d) & vec3<i32>(var_1.b | u_input.a, ~(-u_input.b.x), 2147483647i);
    var_0 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(~firstLeadingBit(var_2.e.c.x), 1u), ~((var_1.a >> (var_1.a % 32u)) ^ firstTrailingBit(var_2.a.c.x)));
    let var_5 = var_2.e.c.xyy;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_add_u32(max(10383u, var_2.e.c.x), ~var_1.a) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_5.x, var_2.a.c.x, var_5.x), vec4<u32>(1u, 47577u, var_5.x, 26824u))) >> (min(1u, var_2.d.x & _wgslsmith_add_u32(0u, 40242u)) % 32u), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_5.x, 1u), vec2<u32>(11976u, 1u)) >> (var_5.xz % vec2<u32>(32u)), ~max(var_2.a.c.xx, var_5.xz)), select(var_2.a.c.x, _wgslsmith_clamp_u32(53773u, _wgslsmith_clamp_u32(var_5.x, var_5.x, var_5.x), var_2.e.c.x), var_2.b), ~var_5.x));
}

