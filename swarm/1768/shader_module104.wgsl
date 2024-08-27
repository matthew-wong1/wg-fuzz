struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(abs(4294967295u), 4294967295u), ~vec2<u32>(59467u, arg_0.d) << (abs(vec2<u32>(13205u, arg_0.d)) % vec2<u32>(32u))), ~select(vec2<u32>(arg_0.d, arg_0.d) >> (vec2<u32>(8530u, 0u) % vec2<u32>(32u)), ~vec2<u32>(arg_0.d, arg_0.d), arg_0.c)), ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(34804u, arg_0.d, 30636u, 1u), vec4<u32>(arg_0.d, arg_0.d, 1u, arg_0.d)), ~(4294967295u & arg_0.d)), 0u);
    var var_2 = Struct_2(arg_0, firstTrailingBit(-vec3<i32>(0i, -var_0.x, arg_1)), ~_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(arg_0.d, arg_0.d)), vec2<u32>(1u, arg_0.d) >> (min(vec2<u32>(4294967295u, var_1), vec2<u32>(arg_0.d, 1u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1820f))))))));
    var var_3 = select(~vec4<i32>(var_2.b.x, var_2.b.x, firstLeadingBit(max(1i, arg_1)), ~2147483647i), min(-(~(-vec4<i32>(51787i, -1i, var_0.x, arg_0.a))), vec4<i32>(abs(-1i), 1i, u_input.a.x, -firstTrailingBit(0i))), !(-1010f > _wgslsmith_f_op_f32(-var_2.d)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1073f, var_2.d, var_2.d, 697f)), _wgslsmith_div_vec4_f32(vec4<f32>(-924f, -228f, var_2.d, var_2.d), _wgslsmith_div_vec4_f32(vec4<f32>(1609f, -130f, 443f, var_2.d), vec4<f32>(-1000f, 234f, 1750f, 2551f))))))));
    return _wgslsmith_add_u32(var_1, ~var_1);
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_3(!select(!any(vec4<bool>(true, true, true, false)), true, true), vec3<u32>(~1u, func_3(Struct_1(arg_0.x, all(vec2<bool>(false, false)), true, 44814u << (1u % 32u)), arg_0.x), 0u));
    let var_1 = vec4<bool>(any(select(vec3<bool>(all(vec3<bool>(var_0.a, var_0.a, false)), var_0.b.x == var_0.b.x, any(vec2<bool>(var_0.a, true))), !(!vec3<bool>(var_0.a, var_0.a, true)), !select(vec3<bool>(true, true, var_0.a), vec3<bool>(var_0.a, var_0.a, false), var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(612f, -436f)))) + _wgslsmith_f_op_f32(404f + -2037f)) == -319f, var_0.a, var_0.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(596f, -439f))) * vec2<f32>(-871f, 2747f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1081f), 272f)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1058f * -105f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -392f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1270f, -1000f))))))));
    let var_3 = vec4<i32>(max(-firstTrailingBit(-39036i), u_input.a.x), ~(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_0.x, -62378i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 30802i), vec2<i32>(52647i, arg_0.x)), 1356i) >> (var_0.b.x % 32u)), firstTrailingBit(arg_0.x), u_input.a.x);
    var var_4 = any(vec3<bool>(!all(var_1), _wgslsmith_f_op_f32(round(var_2.x)) > 2169f, true));
    return Struct_3(any(vec2<bool>(true, true)) || var_0.a, min(vec3<u32>(1u, _wgslsmith_add_u32(var_0.b.x, 1u), 18986u) | vec3<u32>(4294967295u, 4294967295u, _wgslsmith_dot_vec2_u32(var_0.b.zy, vec2<u32>(var_0.b.x, 4294967295u))), var_0.b));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = abs(arg_1.x);
    let var_1 = func_2(arg_0);
    var_0 = 0u;
    let var_2 = var_1;
    var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 0u), _wgslsmith_sub_vec2_u32(~var_1.b.zz, _wgslsmith_div_vec2_u32(~vec2<u32>(arg_1.x, 1u), ~var_1.b.yx)));
    return Struct_2(Struct_1(-15282i, false, !all(vec4<bool>(var_1.a, false, var_1.a, true)), 4294967295u), vec3<i32>(~(~(-2147483647i)), -2147483647i, ~(-41547i)), _wgslsmith_dot_vec3_u32(vec3<u32>(func_2(vec3<i32>(51096i, u_input.a.x, 14893i)).b.x, 1u, _wgslsmith_clamp_u32(0u, reverseBits(13812u), ~45287u)), _wgslsmith_mult_vec3_u32(arg_1.xxy, ~vec3<u32>(arg_1.x, var_1.b.x, 1u))), _wgslsmith_f_op_f32(f32(-1f) * -247f));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_4 {
    let var_0 = arg_0.c;
    let var_1 = arg_0.e.yz;
    let var_2 = func_2(vec3<i32>(-1i) * -(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b.b.x, -1i, 0i), arg_0.b.b) | firstTrailingBit(arg_0.b.b)));
    var var_3 = firstTrailingBit(arg_0.c.b.x);
    var var_4 = func_1(abs(~reverseBits(vec3<i32>(u_input.a.x, arg_0.b.b.x, 22546i))), _wgslsmith_div_vec4_u32(~select(vec4<u32>(arg_2.b.x, arg_2.b.x, arg_0.b.c, 0u), vec4<u32>(4035u, var_2.b.x, var_0.b.x, 4294967295u), vec4<bool>(false, true, false, arg_3.b)) & max(~vec4<u32>(4266u, var_0.b.x, 51435u, 4294967295u), select(vec4<u32>(71872u, 0u, arg_2.b.x, 7010u), vec4<u32>(25931u, arg_2.b.x, var_0.b.x, 15592u), var_2.a)), min(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.b.x, arg_3.d, 1u, var_2.b.x), vec4<u32>(arg_2.b.x, var_2.b.x, arg_2.b.x, arg_3.d)) << (vec4<u32>(0u, var_0.b.x, 1u, 9750u) % vec4<u32>(32u)), vec4<u32>(~4294967295u, arg_2.b.x, var_0.b.x, var_0.b.x >> (var_0.b.x % 32u)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(_wgslsmith_mult_i32(~(-21420i), -2513i), func_1(min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-42902i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(39868i, u_input.a.x, u_input.a.x))), firstTrailingBit(~vec4<u32>(1u, 14879u, 32738u, 4294967295u))), Struct_3(true, ~vec3<u32>(1u, 1u, 1u)), any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))), vec3<bool>(true || func_1(vec3<i32>(-5811i, -1i, 1i), vec4<u32>(1u, 1u, 1u, 1u)).a.b, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), all(vec3<bool>(true, true, true)))), 1i, Struct_3(select(true, true && all(vec4<bool>(false, true, false, false)), func_1(vec3<i32>(2147483647i, 1i, u_input.a.x) & vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec4<u32>(0u, 1u, 0u, 0u)).a.b), _wgslsmith_mod_vec3_u32(vec3<u32>(40546u, 24436u, 5473u) | _wgslsmith_clamp_vec3_u32(vec3<u32>(31999u, 13310u, 62169u), vec3<u32>(70325u, 85302u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u)), vec3<u32>(1u, 1u, 1u))), Struct_1(-_wgslsmith_mod_i32(countOneBits(-8695i), -u_input.a.x), true, false, 20679u >> ((func_3(Struct_1(u_input.a.x, true, false, 4883u), u_input.a.x) ^ _wgslsmith_mult_u32(86817u, 20931u)) % 32u)));
    var var_1 = Struct_2(var_0.b.a, -abs(max(var_0.b.b, var_0.b.b) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c.b.x, 4294967295u, var_0.c.b.x), vec3<u32>(1u, 4294967295u, 53833u)) % vec3<u32>(32u))), _wgslsmith_div_u32(~var_0.c.b.x, countOneBits(var_0.c.b.x)), _wgslsmith_f_op_f32(select(250f, 1296f, !all(var_0.e.yy))));
    var_1 = func_4(var_0, u_input.a.x, func_2(~var_1.b), var_1.a).b;
    let var_2 = !(!select(!(!vec4<bool>(false, false, true, var_0.d)), select(vec4<bool>(var_1.a.c, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(var_1.a.c, var_0.b.a.b, var_1.a.c, false), var_1.a.c), vec4<bool>(false, true, var_1.a.b, var_0.d)), 1u <= select(var_1.a.d, var_0.c.b.x, true)));
    var var_3 = !(!var_2.xy);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.yz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1321f, 112f, 657f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, 1443f, var_1.d) + vec3<f32>(-1558f, var_0.b.d, var_1.d))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.d, -210f, var_1.d))))), var_1.a.a, var_0.b.d);
}

