struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(any(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))), vec3<u32>(~select(~19511u, reverseBits(global0.x), true), ~_wgslsmith_dot_vec2_u32(global0.wz, min(global0.yw, global0.xz)), global0.x), _wgslsmith_f_op_f32(-1146f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), 13118u);
    global0 = abs(vec4<u32>(4294967295u << (~global0.x % 32u), _wgslsmith_clamp_u32(global0.x, 4294967295u, firstLeadingBit(var_0.d)), ~var_0.b.x, var_0.d) ^ select(_wgslsmith_add_vec4_u32(max(vec4<u32>(0u, global0.x, 1u, 4294967295u), vec4<u32>(var_0.d, 0u, global0.x, 13007u)), ~vec4<u32>(58137u, 0u, var_0.d, var_0.b.x)), vec4<u32>(abs(global0.x), global0.x | global0.x, countOneBits(global0.x), _wgslsmith_mod_u32(1u, global0.x)), vec4<bool>(var_0.a, any(vec3<bool>(true, false, true)), false, var_0.a || true)));
    let var_1 = Struct_2(Struct_1(!var_0.a, var_0.b, _wgslsmith_f_op_f32(-var_0.c), ~global0.x), 27347u, all(vec2<bool>(var_0.a, true)), 71015u);
    var var_2 = Struct_2(var_0, 10110u, (31709i >> (global0.x % 32u)) >= ~63806i, _wgslsmith_mult_u32(max(firstLeadingBit(global0.x) & 0u, reverseBits(_wgslsmith_add_u32(34362u, global0.x))), _wgslsmith_mod_u32(~65561u, ~33048u) | (var_0.b.x << (select(68992u, 4294967295u, var_0.a) % 32u))));
    global0 = countOneBits(vec4<u32>(var_2.a.d, firstLeadingBit(var_1.b), var_1.d, 1u));
    return reverseBits(~vec4<u32>(42079u, 1u << (global0.x % 32u), ~0u, global0.x) & vec4<u32>(var_1.b, 17461u, 0u, 4294967295u));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    global0 = max(vec4<u32>(~(~68149u), _wgslsmith_dot_vec2_u32(~global0.yx, reverseBits(global0.zx)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d, 15964u, arg_2.b.x), abs(global0.xyw)), 4294967295u) & select(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_2.b.x, 68416u, 28049u, global0.x), _wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 0u, arg_2.b.x, 14806u), vec4<u32>(arg_2.d, arg_2.b.x, 66113u, 51703u))), ~(vec4<u32>(98095u, arg_2.d, arg_2.b.x, arg_2.b.x) << (vec4<u32>(1u, arg_2.d, arg_2.b.x, 59067u) % vec4<u32>(32u))), select(select(vec4<bool>(true, arg_2.a, arg_2.a, arg_2.a), vec4<bool>(arg_0, true, false, true), vec4<bool>(true, arg_2.a, true, true)), vec4<bool>(true, true, true, false), select(true, arg_0, false))), vec4<u32>(76186u, ~(arg_2.d << (arg_2.d % 32u)), ~4294967295u, max(_wgslsmith_mod_u32(arg_2.b.x, arg_2.d), 7916u)) & ~(func_3() << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.d, arg_2.d, global0.x, 0u), vec4<u32>(arg_2.d, arg_2.d, 12902u, arg_2.d)) % vec4<u32>(32u))));
    let var_0 = Struct_2(Struct_1(true, countOneBits(~(~global0.wwy)), arg_1, abs(~arg_2.b.x)), func_3().x, !(arg_0 & all(vec3<bool>(true, true, true))) || !arg_2.a, _wgslsmith_div_u32(arg_2.d, _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.b.x, global0.x), arg_2.b.zy, global0.xw), ~(~vec2<u32>(48120u, 1u)))));
    global0 = reverseBits(vec4<u32>(min(0u, 55461u), firstTrailingBit(var_0.a.b.x), global0.x, countOneBits(~var_0.d)) & ~(vec4<u32>(1u, 36930u, global0.x, arg_2.b.x) << (~vec4<u32>(arg_2.d, 13790u, 4294967295u, 0u) % vec4<u32>(32u))));
    global0 = vec4<u32>(37390u, global0.x, 98734u, firstLeadingBit(~var_0.a.d));
    let var_1 = any(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, arg_2.a), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)), all(vec3<bool>(arg_2.a, true, true)))));
    return Struct_3(true, vec2<bool>(!select(true, all(vec3<bool>(false, arg_0, var_1)), !arg_2.a), !any(select(vec4<bool>(true, var_0.c, arg_0, false), vec4<bool>(arg_2.a, arg_2.a, false, var_0.c), arg_0))), 1u);
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_3(any(select(vec4<bool>(all(vec3<bool>(false, true, false)), true, true, u_input.b.x == 2147483647i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, true, true))), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), !(global0.x <= _wgslsmith_dot_vec4_u32(vec4<u32>(12145u, global0.x, global0.x, 63219u), vec4<u32>(479u, global0.x, 4294967295u, global0.x)))), ~8631u);
    let var_1 = countOneBits(0u);
    let var_2 = func_2(true, 1445f, Struct_1(any(vec4<bool>(false, true, var_0.c != 4294967295u, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1 ^ var_1, ~54367u, reverseBits(4294967295u)), vec3<u32>(max(global0.x, var_0.c), 1u, ~4294967295u)), -258f, 18426u));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 905f, -229f, -301f))))) + vec4<f32>(_wgslsmith_f_op_f32(1072f - 974f), _wgslsmith_f_op_f32(f32(-1f) * -229f), 914f, -644f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-251f, -1049f, -2764f, 1357f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 1969f, -781f, -774f), vec4<f32>(465f, 2363f, -1544f, -1643f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(685f, -944f, 446f, -296f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-182f, 1644f, -441f, 461f)))))));
    global0 = abs(max(~vec4<u32>(38530u, 34655u, 0u, 31912u) ^ (max(vec4<u32>(var_0.c, 1u, 4294967295u, 1u), vec4<u32>(1u, var_1, var_2.c, 81597u)) | ~vec4<u32>(1u, global0.x, 6493u, 4294967295u)), ~vec4<u32>(var_0.c << (global0.x % 32u), 523u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 19507u, var_2.c, 0u), vec4<u32>(var_1, global0.x, 0u, var_1)), _wgslsmith_dot_vec3_u32(global0.yxy, vec3<u32>(var_1, var_2.c, var_2.c)))));
    return Struct_3(!(!var_2.a), !var_0.b, 0u);
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_4 {
    global0 = max(vec4<u32>(_wgslsmith_mult_u32(global0.x, ~0u), ~(~39870u) | arg_0.c, arg_0.c, arg_0.c), reverseBits(abs(vec4<u32>(func_1().c, global0.x, _wgslsmith_mod_u32(arg_0.c, global0.x), ~59087u))));
    var var_0 = ~((vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 72826i)) << (global0.xy % vec2<u32>(32u)));
    let var_1 = vec2<f32>(-2314f, 249f);
    let var_2 = func_2(!all(select(select(vec2<bool>(false, false), vec2<bool>(true, arg_0.a), arg_0.b), func_1().b, select(arg_0.b, arg_0.b, vec2<bool>(arg_0.a, false)))), -1000f, Struct_1(~_wgslsmith_add_u32(1u, 13032u) >= global0.x, func_3().ywz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-466f))), func_3().x ^ ~1u));
    global0 = vec4<u32>(var_2.c, var_2.c, ~(~_wgslsmith_mod_u32(~var_2.c, abs(global0.x))), ~_wgslsmith_dot_vec3_u32(global0.xyw, global0.zwz));
    return Struct_4((global0.xzy >> (~(~global0.ywx) % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_u32(select(vec3<u32>(arg_0.c, arg_0.c, arg_0.c), firstLeadingBit(vec3<u32>(arg_0.c, var_2.c, 92359u)), vec3<bool>(true, false, false)), _wgslsmith_div_vec3_u32(global0.zxx, global0.xxz), ~global0.zyy), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), true);
    global0 = abs(vec4<u32>(57053u, global0.x, func_3().x, ~7165u));
    var var_1 = Struct_1(!any(vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, global0.x), _wgslsmith_clamp_vec3_u32(countOneBits(var_0.a), vec3<u32>(var_0.b, 1u, 9629u), ~vec3<u32>(1u, var_0.b, var_0.a.x))) & _wgslsmith_add_vec3_u32(vec3<u32>(~var_0.b, 0u, abs(72272u)), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(0u, 4294967295u, 0u)), ~var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -225f) * _wgslsmith_f_op_f32(f32(-1f) * -1012f))), 0u);
    var var_2 = func_2(!(_wgslsmith_add_i32(1i, u_input.b.x) == abs(firstTrailingBit(u_input.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(round(-803f)))), var_1.c)), Struct_1(var_1.a, ~_wgslsmith_sub_vec3_u32(max(vec3<u32>(24934u, var_0.b, var_1.b.x), vec3<u32>(var_1.d, var_0.b, 0u)), vec3<u32>(8672u, var_1.d, 1u)), -1067f, global0.x)).b.x;
    var_1 = Struct_1(var_1.a, reverseBits(~(firstLeadingBit(vec3<u32>(4294967295u, 1u, 4294967295u)) >> (~var_1.b % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, -972f))) + _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, -872f)))), 47548u);
    var_0 = Struct_4(select(vec3<u32>(global0.x, var_1.b.x << (~1u % 32u), global0.x), var_0.a, true), _wgslsmith_add_u32(_wgslsmith_clamp_u32(25814u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 2290u, 15219u) << (vec3<u32>(100280u, var_1.b.x, global0.x) % vec3<u32>(32u)), var_1.b), var_0.a.x), min(var_0.a.x, ~1u >> ((4294967295u >> (var_0.a.x % 32u)) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(min(-43729i, ~u_input.a.x));
}

