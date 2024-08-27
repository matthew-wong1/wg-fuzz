struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5>;

var<private> global1: bool;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: vec3<bool>) -> f32 {
    let var_0 = Struct_1(true, _wgslsmith_clamp_u32(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1919u, arg_0.b, arg_0.b, 1u), u_input.c)), u_input.a, 55830u), _wgslsmith_f_op_f32(arg_0.c * arg_1), ~vec2<i32>(1i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_0.d.x, 22428i), -1i, arg_2.x | arg_0.d.x)));
    global0 = array<vec4<bool>, 5>();
    global0 = array<vec4<bool>, 5>();
    global0 = array<vec4<bool>, 5>();
    let var_1 = var_0;
    return 880f;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f - -2059f)), -1736f, _wgslsmith_f_op_f32(-1190f * -715f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1807f * -479f)))) - vec4<f32>(_wgslsmith_f_op_f32(max(724f, _wgslsmith_f_op_f32(min(-588f, 2029f)))), 2112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-806f)) * _wgslsmith_f_op_f32(794f + -1471f)), -1055f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(true, 59591u, -177f, vec2<i32>(2147483647i, 1i)), 192f, vec2<i32>(-33191i, 2147483647i), vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(580f + -478f) - 851f), _wgslsmith_f_op_f32(f32(-1f) * -1849f), -209f)), global0[_wgslsmith_index_u32(~u_input.a, 5u)]));
    var var_1 = ~vec4<u32>(u_input.b.x, ~u_input.c.x, 4294967295u, ~u_input.d) >> (((vec4<u32>(~u_input.c.x, _wgslsmith_mult_u32(1u, 25090u), u_input.e.x, u_input.c.x) >> (vec4<u32>(min(9132u, 1u), ~0u, reverseBits(u_input.d), 7221u) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, ~u_input.d, u_input.e.x), vec4<u32>(_wgslsmith_add_u32(0u, 27017u), min(1u, 36316u), ~1u, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_2 = vec4<bool>(true, true, true, true);
    var var_3 = Struct_1(false, ~(~3948u), -420f, select(vec2<i32>(_wgslsmith_mod_i32(~18900i, -41341i), 6983i), countOneBits(min(vec2<i32>(-26403i, 17297i), _wgslsmith_add_vec2_i32(vec2<i32>(-30649i, 15254i), vec2<i32>(13115i, 22265i)))), any(vec2<bool>(true, true))));
    var var_4 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.b, 0u), reverseBits(_wgslsmith_add_vec2_u32(~var_1.zx, ~vec2<u32>(u_input.b.x, 18309u)))), ~firstLeadingBit(31211u), 4823u, 1u);
    return 502f;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = arg_1.wz;
    global0 = array<vec4<bool>, 5>();
    var var_1 = !select(!vec3<bool>(all(arg_3.xz), !arg_3.x, arg_0.a), vec3<bool>(arg_0.a && true, false, !arg_0.a), arg_3);
    var var_2 = vec2<u32>(~26090u | (u_input.a >> (arg_0.b % 32u)), u_input.a);
    let var_3 = arg_3;
    return arg_0;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = reverseBits(1u);
    let var_2 = vec2<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.c, countOneBits(u_input.c)), u_input.c), ~_wgslsmith_mult_u32(firstTrailingBit(84212u), _wgslsmith_div_u32(4294967295u, u_input.e.x)) | reverseBits(_wgslsmith_mult_u32(func_4(Struct_1(true, 4294967295u, arg_0.c, arg_0.d), vec4<i32>(0i, -2147483647i, -1i, 27589i), -843f, vec3<bool>(false, true, var_0.a)).b, 1u)));
    let var_3 = arg_0.c;
    global0 = array<vec4<bool>, 5>();
    return func_4(arg_0, _wgslsmith_div_vec4_i32(vec4<i32>(-148i, arg_0.d.x, countOneBits(~29673i), ~abs(arg_0.d.x)), vec4<i32>(~(-1i), -38274i, arg_0.d.x ^ firstTrailingBit(-2147483647i), 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c))))), select(select(!vec3<bool>(arg_0.a, arg_0.a, var_0.a), select(select(vec3<bool>(true, true, arg_0.a), vec3<bool>(true, false, arg_0.a), vec3<bool>(arg_0.a, var_0.a, var_0.a)), vec3<bool>(true, true, true), vec3<bool>(true, var_0.a, var_0.a)), !(!arg_0.a)), !select(!vec3<bool>(arg_0.a, true, var_0.a), select(vec3<bool>(var_0.a, true, true), vec3<bool>(arg_0.a, var_0.a, arg_0.a), vec3<bool>(arg_0.a, true, arg_0.a)), false), true));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(230f, -316f, -277f, arg_0.c) - vec4<f32>(1331f, arg_0.c, -1179f, 560f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2101f, arg_0.c, arg_0.c, -548f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, 239f, -913f, arg_0.c))))));
    return func_5(Struct_1(arg_0.a & true, _wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.c.x, arg_0.b), vec2<u32>(6956u, arg_0.b), arg_0.a), vec2<u32>(~4294967295u, firstTrailingBit(arg_0.b))), arg_0.c, arg_0.d));
}

fn func_1() -> vec2<u32> {
    global0 = array<vec4<bool>, 5>();
    var var_0 = func_6(func_5(func_4(Struct_1(any(vec2<bool>(true, true)), 0u, 1000f, ~vec2<i32>(38714i, 39328i)), vec4<i32>(1i, 15721i, i32(-1i) * -1i, -2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), 1128f), vec3<bool>(true, true, true))));
    let var_1 = 1u;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(any(vec4<bool>(false, var_0.a, true, var_0.a)), 11667u, 996f, vec2<i32>(var_0.d.x, 76671i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c)) * -1000f), vec2<i32>(var_0.d.x | var_0.d.x, _wgslsmith_add_i32(var_0.d.x, var_0.d.x)), !vec3<bool>(var_0.a, var_0.a, var_0.a)))), _wgslsmith_f_op_f32(-var_0.c), func_6(Struct_1(func_6(func_6(Struct_1(var_0.a, var_0.b, var_0.c, vec2<i32>(var_0.d.x, -2147483647i)))).a, ~(~var_0.b), var_0.c, _wgslsmith_clamp_vec2_i32(var_0.d, func_6(Struct_1(var_0.a, var_1, -678f, var_0.d)).d, _wgslsmith_mod_vec2_i32(var_0.d, vec2<i32>(var_0.d.x, -2147483647i))))).c);
    let var_3 = i32(-1i) * -abs(~_wgslsmith_mult_i32(var_0.d.x, 2147483647i));
    return ~_wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, var_1), u_input.b), select(u_input.c.zz, vec2<u32>(var_0.b, 4294967295u), vec2<bool>(false, false)), min(vec2<u32>(4294967295u, u_input.e.x), vec2<u32>(u_input.d, u_input.e.x)))), firstTrailingBit(u_input.c.wz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global1 = false;
    var var_1 = _wgslsmith_clamp_vec2_u32(func_1(), u_input.c.xw, ~vec2<u32>(52457u, firstTrailingBit(~43194u)));
    let var_2 = min(-21184i, var_0);
    var var_3 = func_4(Struct_1(true, ~50797u, _wgslsmith_f_op_f32(-func_5(func_5(Struct_1(false, var_1.x, -829f, vec2<i32>(-2147483647i, var_2)))).c), _wgslsmith_sub_vec2_i32(func_6(func_4(Struct_1(false, 1u, 621f, vec2<i32>(var_0, -2147483647i)), vec4<i32>(var_2, var_0, 33501i, var_2), 790f, vec3<bool>(false, false, true))).d, firstTrailingBit(vec2<i32>(-22405i, var_0)) ^ vec2<i32>(var_0, 70189i))), _wgslsmith_add_vec4_i32(max(firstTrailingBit(vec4<i32>(var_0, var_0, 6886i, var_0)), vec4<i32>(-19498i, -1i, var_2, -1i)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 6414u, 2625u, u_input.c.x), u_input.c) % vec4<u32>(32u)), select(vec4<i32>(0i, var_0, var_2, var_0), vec4<i32>(12495i, var_0, var_0, var_0), true) >> (vec4<u32>(firstTrailingBit(1u), 65210u | u_input.b.x, 1u, ~var_1.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-934f + -1000f) - -1186f))), !vec3<bool>(select(true, true, true), all(vec3<bool>(true, false, true)), var_0 <= reverseBits(var_0)));
    var var_4 = Struct_1(!func_6(func_5(Struct_1(false, 1u, var_3.c, vec2<i32>(-27104i, var_2)))).a, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1468f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_3.c)))))), _wgslsmith_clamp_vec2_i32(-firstTrailingBit(var_3.d) & vec2<i32>(var_3.d.x, var_0), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(21863i, var_0), vec2<i32>(-1i, 2147483647i)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -13066i), var_3.d, vec2<i32>(var_3.d.x, 10281i)), var_3.d, var_3.d), var_3.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(986f + 1337f), -1000f, _wgslsmith_f_op_f32(990f - var_4.c), -579f)))), ~func_5(Struct_1(393f != var_3.c, 0u, _wgslsmith_f_op_f32(261f - -522f), vec2<i32>(0i, 38121i))).b, vec2<i32>(reverseBits(reverseBits(-8067i)), (i32(-1i) * -var_2) | (2147483647i | abs(var_2))));
}

