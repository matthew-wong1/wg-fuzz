struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 78146u), true, Struct_1(~(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.a.x, 0u, 56669u) % vec3<u32>(32u))) & _wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, u_input.a.x) | vec3<u32>(u_input.a.x, u_input.a.x, 55158u), max(vec3<u32>(1u, 9793u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))), abs(select(-vec3<i32>(2289i, -2147483647i, -14545i), vec3<i32>(-1i, 1i, 2186i), vec3<bool>(true, true, true))), vec2<bool>(select(all(vec2<bool>(false, false)), true, true), true), firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 82018u, 56594u), vec3<u32>(68994u, 0u, 13483u)) >> (abs(vec3<u32>(4294967295u, 55725u, u_input.a.x)) % vec3<u32>(32u)))));
    var_0 = Struct_2(_wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(~var_0.c.a.x, ~4294967295u)), true, var_0.c);
    var var_1 = ~var_0.c.a;
    var var_2 = -1301f;
    var var_3 = _wgslsmith_mult_u32(var_1.x, max(u_input.a.x, ~4294967295u));
    return var_0.c.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_3 {
    var var_0 = arg_1.d.xy;
    var_0 = ~u_input.a;
    let var_1 = vec3<bool>(select(false, any(!vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x)), !(arg_1.c.x | all(vec3<bool>(arg_1.c.x, true, arg_1.c.x)))), select(true, any(vec3<bool>(true, all(vec2<bool>(arg_1.c.x, arg_1.c.x)), arg_1.c.x && true)), false), arg_1.c.x);
    var_0 = abs(_wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(0u, 4294967295u))) ^ reverseBits(u_input.a), vec2<u32>(~arg_1.a.x, ~_wgslsmith_add_u32(u_input.a.x, arg_2))));
    let var_2 = Struct_1(~((arg_1.a & abs(arg_1.d)) ^ func_3()), select(arg_1.b, arg_1.b, vec3<bool>(true, true, true)), select(select(var_1.yz, !vec2<bool>(var_1.x, arg_1.c.x), select(!vec2<bool>(var_1.x, arg_1.c.x), select(var_1.zz, vec2<bool>(true, var_1.x), var_1.x), all(vec4<bool>(false, var_1.x, arg_1.c.x, var_1.x)))), select(select(vec2<bool>(true, true), select(var_1.xy, vec2<bool>(arg_1.c.x, false), arg_1.c), vec2<bool>(true, true)), select(!arg_1.c, !vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(var_1.x, arg_1.c.x), vec2<bool>(false, arg_1.c.x), vec2<bool>(true, var_1.x))), !arg_1.c), var_1.x), vec3<u32>(_wgslsmith_div_u32(arg_1.a.x, var_0.x), u_input.a.x, 34219u));
    return Struct_3(var_2.b, Struct_2(~(16118u >> (u_input.a.x % 32u)) | 4294967295u, any(!select(vec2<bool>(true, arg_1.c.x), vec2<bool>(true, var_2.c.x), var_2.c)), var_2), reverseBits(vec3<i32>(-5084i, -2147483647i, abs(1i))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> i32 {
    let var_0 = -(select(firstTrailingBit(vec4<i32>(2147483647i, arg_0.c.x, arg_0.b.c.b.x, -24155i) & vec4<i32>(2147483647i, arg_0.c.x, arg_0.a.x, arg_0.a.x)), countOneBits(vec4<i32>(arg_0.a.x, -14322i, -2147483647i, -1i)) & vec4<i32>(arg_0.a.x, -2147483647i, arg_0.c.x, -6302i), arg_1.a) & _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(27435i, arg_0.a.x, arg_0.b.c.b.x, 37059i), vec4<i32>(0i, 18572i, 2147483647i, arg_0.b.c.b.x)) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.a, arg_0.b.c.a.x, 47842u, arg_0.b.a), vec4<u32>(0u, arg_0.b.c.a.x, u_input.a.x, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(arg_0.c.x, 2147483647i | arg_0.c.x, ~arg_0.a.x, -38478i)));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(457f, _wgslsmith_div_f32(1192f, 779f)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(-924f)))))));
    let var_2 = _wgslsmith_add_u32(func_2(vec4<i32>(arg_0.b.c.b.x, firstLeadingBit(var_0.x), abs(abs(arg_0.a.x)), ~countOneBits(arg_0.a.x)), Struct_1(reverseBits(arg_0.b.c.d), ~(vec3<i32>(29139i, 1i, arg_0.a.x) >> (arg_0.b.c.d % vec3<u32>(32u))), !arg_1.a.zx, (arg_0.b.c.d << (vec3<u32>(0u, arg_0.b.a, 91562u) % vec3<u32>(32u))) ^ ~arg_0.b.c.a), 78466u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_1, var_1))))).b.c.a.x, ((arg_0.b.c.d.x ^ arg_0.b.a) | arg_0.b.c.d.x) << (_wgslsmith_add_u32(func_3().x, min(arg_0.b.a, 4294967295u)) % 32u));
    var var_3 = Struct_2(75759u, true, func_2(-select(var_0, vec4<i32>(17374i, -1i, -1i, arg_0.a.x), select(vec4<bool>(arg_1.a.x, true, arg_1.a.x, true), arg_1.a, arg_1.a)), func_2(select(var_0, _wgslsmith_mod_vec4_i32(var_0, var_0), false), func_2(vec4<i32>(2147483647i, arg_0.c.x, 2147483647i, 17676i), arg_0.b.c, ~48067u, _wgslsmith_f_op_f32(round(694f))).b.c, var_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_1))))).b.c, arg_0.b.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-700f - var_1)))))).b.c);
    var_3 = arg_0.b;
    return arg_0.c.x;
}

fn func_1() -> Struct_4 {
    let var_0 = !(!select(!all(vec2<bool>(true, false)), false, true));
    let var_1 = -1180f;
    var var_2 = _wgslsmith_add_i32(~min(func_4(func_2(vec4<i32>(1515i, 38461i, -6650i, -2147483647i), Struct_1(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<i32>(4889i, 2147483647i, -1i), vec2<bool>(var_0, true), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), 32294u, var_1), Struct_4(vec4<bool>(true, var_0, var_0, true))), -1i), ~1i);
    var_2 = abs(-2147483647i);
    var_2 = -2147483647i;
    return Struct_4(vec4<bool>(-2147483647i >= -_wgslsmith_dot_vec3_i32(vec3<i32>(-252i, -26328i, 2147483647i), vec3<i32>(-2147483647i, -2147483647i, -42375i)), true, func_4(func_2(vec4<i32>(19337i, 1i, 1i, -1321i), Struct_1(vec3<u32>(u_input.a.x, 52747u, u_input.a.x), vec3<i32>(-14355i, -9687i, -2147483647i), vec2<bool>(true, false), vec3<u32>(u_input.a.x, 1u, 4294967295u)), u_input.a.x, 654f), Struct_4(vec4<bool>(true, false, false, var_0))) != select(~(-12460i), 0i << (u_input.a.x % 32u), any(vec3<bool>(var_0, true, true))), !func_2(max(vec4<i32>(0i, 63574i, 12287i, 50370i), vec4<i32>(1i, -353i, 1i, -41596i)), Struct_1(vec3<u32>(9492u, u_input.a.x, 7713u), vec3<i32>(65301i, 16210i, 4980i), vec2<bool>(false, false), vec3<u32>(93895u, u_input.a.x, 1u)), abs(u_input.a.x), -1021f).b.c.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~vec3<u32>(~1u, 1u, abs(1u)));
    let var_1 = func_1();
    var var_2 = firstTrailingBit(1i);
    var_0 = countOneBits(~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, u_input.a.x, u_input.a.x), vec3<u32>(8544u, u_input.a.x, u_input.a.x)), firstTrailingBit(vec3<u32>(var_0.x, 6634u, u_input.a.x))) << (~(~max(vec3<u32>(u_input.a.x, 56286u, u_input.a.x), vec3<u32>(75755u, var_0.x, 71435u))) % vec3<u32>(32u)));
    var var_3 = vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-1i, 0i), -2147483647i), min(vec2<i32>(1i, -2147483647i), ~vec2<i32>(-1i, -1i))), 0i);
    var var_4 = func_1();
    var var_5 = 1000f;
    var_4 = Struct_4(func_1().a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -543f), min(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 23787u, u_input.a.x, 0u), vec4<u32>(82904u, 16167u, 1u, var_0.x)), _wgslsmith_clamp_u32(u_input.a.x, 1u, 1u)), var_0.x, firstTrailingBit(~16734u)), ~var_0.x), _wgslsmith_f_op_f32(sign(-855f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(1136f * -995f), _wgslsmith_div_f32(201f, 1000f)))), countOneBits(~select(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), ~u_input.a.x, var_3.x != var_3.x)));
}

