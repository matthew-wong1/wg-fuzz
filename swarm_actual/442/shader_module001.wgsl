struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, 203f, 876f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 1072f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, -1742f, -495f), vec4<f32>(-538f, 1000f, arg_0, arg_0)), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0)), -1537f, _wgslsmith_f_op_f32(-arg_0), arg_0))))));
    let var_1 = ~(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, _wgslsmith_sub_u32(arg_1.x, arg_1.x)), vec2<u32>(arg_1.x, firstLeadingBit(arg_1.x))) << (~vec2<u32>(abs(1u), 1u & u_input.b) % vec2<u32>(32u)));
    return vec4<bool>(false, !all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), var_1.x == abs(~_wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), any(vec2<bool>(true, true)));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = arg_0.a;
    var var_1 = ((vec4<u32>(~arg_0.b.x, arg_0.d & arg_0.d, arg_0.b.x >> (u_input.d.x % 32u), u_input.b) >> (_wgslsmith_div_vec4_u32(vec4<u32>(38190u, u_input.b, arg_0.d, u_input.b) << (arg_0.b % vec4<u32>(32u)), ~vec4<u32>(11596u, arg_0.b.x, 41434u, 1u)) % vec4<u32>(32u))) ^ min(select(~vec4<u32>(arg_0.d, 72077u, 4294967295u, 25125u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.d, 42072u, u_input.d.x), arg_0.b), func_3(-353f, arg_0.b.zy)), ~(vec4<u32>(u_input.d.x, u_input.d.x, 46761u, 35150u) & u_input.d))) ^ min(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(2481u, u_input.a.x, 59794u, u_input.b), vec4<u32>(u_input.d.x, arg_0.d, u_input.a.x, 21798u)) ^ firstLeadingBit(arg_0.b), vec4<u32>(arg_0.b.x, 4294967295u, u_input.a.x, u_input.d.x) << ((arg_0.b | vec4<u32>(4294967295u, arg_0.d, 36797u, 1u)) % vec4<u32>(32u))), u_input.a);
    var var_2 = 45956u << (arg_0.b.x % 32u);
    let var_3 = var_0;
    var var_4 = arg_0;
    return arg_0.c;
}

fn func_4(arg_0: bool) -> vec2<i32> {
    var var_0 = -(~_wgslsmith_div_vec3_i32(max(~vec3<i32>(1i, u_input.c, 13004i), ~vec3<i32>(-1i, 3860i, u_input.c)), -select(vec3<i32>(u_input.c, -3642i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<bool>(false, true, true))));
    return vec2<i32>(reverseBits(0i), var_0.x);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = vec2<i32>(2147483647i, 2147483647i);
    var_0 = firstLeadingBit(vec2<i32>(((u_input.c | arg_1.x) & var_0.x) ^ reverseBits(min(-73391i, -22778i)), countOneBits(select(~2147483647i, firstTrailingBit(-1i), arg_2.c))));
    var_0 = -(~func_4(func_2(arg_2)));
    var_0 = -(vec2<i32>(-1i) * -vec2<i32>(~u_input.c, 1i));
    var var_1 = 425f;
    return ~arg_2.d;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    var var_0 = abs(-firstTrailingBit(vec3<i32>(-49398i, arg_1.a | u_input.c, ~arg_1.a)));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1105f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1361f))))))));
    return var_1 <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-112f, 111f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -204f), -1384f, !(var_1 == var_1)))));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(min(min(1i, arg_2.x), func_4(all(vec3<bool>(arg_0.c, arg_0.c, false)) & arg_0.c).x), reverseBits(~(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 37732u, arg_1.x, arg_0.b.x), arg_0.b) & ~arg_0.b)), -arg_2.x <= 17183i, 1u, _wgslsmith_sub_i32(~28067i, ~(-abs(-66914i))));
    var_0 = arg_0;
    var_0 = Struct_1(max(~(~select(arg_3.x, var_0.a, arg_0.c)), 0i), ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(arg_1, vec4<u32>(15473u, var_0.b.x, 29078u, arg_0.d)), arg_0.b) & ~countOneBits(var_0.b << (vec4<u32>(arg_1.x, arg_0.d, arg_0.b.x, 25426u) % vec4<u32>(32u))), true != !(arg_1.x < abs(140243u)), ~4294967295u, _wgslsmith_mod_i32(reverseBits(2147483647i | arg_2.x), arg_2.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(914f, _wgslsmith_div_f32(-278f, -1768f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2023f), _wgslsmith_div_f32(-1528f, -765f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1536f, -823f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(943f, -937f) - vec2<f32>(-1132f, 759f))))))));
    let var_2 = Struct_1(arg_2.x, _wgslsmith_mod_vec4_u32(u_input.d, var_0.b), arg_0.c, var_0.b.x, arg_0.a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(select(u_input.a.wy ^ u_input.a.xx, countOneBits(u_input.d.xy), true) >> ((select(u_input.d.xy, u_input.d.yw, true) | ~vec2<u32>(u_input.b, u_input.a.x)) % vec2<u32>(32u)), vec2<u32>(~33406u, ~_wgslsmith_sub_u32(u_input.a.x, 29695u))), u_input.b, ~firstLeadingBit(countOneBits(4294967295u) >> (~u_input.a.x % 32u)));
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(countOneBits(11241i), 20918i), -1927i, i32(-1i) * -u_input.c);
    let var_2 = func_6(Struct_1(_wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(1i, 25551i, var_1.x, -39571i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, var_1.x, u_input.c, var_1.x), vec4<i32>(u_input.c, -1i, u_input.c, var_1.x) ^ vec4<i32>(-7464i, -32395i, var_1.x, u_input.c))), u_input.d, func_5(vec2<bool>(false, any(vec2<bool>(true, false))), Struct_1(_wgslsmith_div_i32(0i, -46086i), vec4<u32>(79400u, 0u, u_input.a.x, 48215u), true, func_1(var_0.x, vec4<i32>(-50914i, u_input.c, var_1.x, -2147483647i), Struct_1(1i, vec4<u32>(1u, 11572u, 4294967295u, 32366u), false, 31514u, 6248i)), -10700i)), u_input.d.x, 1i), select(u_input.a << (~(u_input.a | u_input.d) % vec4<u32>(32u)), ~(~vec4<u32>(1u, var_0.x, var_0.x, 0u)) ^ u_input.d, vec4<bool>(any(vec4<bool>(true, true, true, true)), true, !any(vec3<bool>(true, true, true)), !all(vec4<bool>(true, false, true, true)))), max(vec3<i32>(firstTrailingBit(u_input.c), var_1.x, firstLeadingBit(u_input.c)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, 1i, var_1.x), select(vec3<i32>(u_input.c, u_input.c, -1734i), vec3<i32>(var_1.x, -1i, -2147483647i), vec3<bool>(true, true, true))), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-20952i, u_input.c, u_input.c)), ~vec3<i32>(var_1.x, -2147483647i, var_1.x)))), var_1.zy);
    var var_3 = Struct_1(~(-(_wgslsmith_dot_vec3_i32(vec3<i32>(-13796i, u_input.c, 8413i), vec3<i32>(36332i, u_input.c, var_1.x)) >> (_wgslsmith_sub_u32(u_input.a.x, 4294967295u) % 32u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u, 0u), reverseBits(u_input.a.x), u_input.b << (0u % 32u), firstTrailingBit(447u)), u_input.a), true, 4294967295u, u_input.c);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(606f, -661f))) - -831f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-938f)), _wgslsmith_f_op_f32(300f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1203f * -357f))), var_2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1402f - -1000f) + -1161f));
    var var_5 = ~1u < var_0.x;
    var var_6 = -666f;
    var var_7 = (func_5(vec2<bool>(false, true), func_6(func_6(Struct_1(11156i, u_input.a, var_3.c, 45114u, u_input.c), var_3.b, vec3<i32>(-19596i, u_input.c, u_input.c), vec2<i32>(35105i, -2147483647i)), var_2.b, reverseBits(vec3<i32>(-1i, 0i, var_2.e)), min(vec2<i32>(var_2.a, var_3.a), var_1.zz))) | var_2.c) || (abs(_wgslsmith_dot_vec2_i32(var_1.zy, vec2<i32>(-2147483647i, var_2.a))) < var_1.x);
    var var_8 = _wgslsmith_mod_vec2_u32(vec2<u32>(func_1(abs(var_2.b.x), -(~vec4<i32>(var_1.x, -1i, 851i, -2147483647i)), func_6(Struct_1(-21727i, vec4<u32>(var_3.d, u_input.b, var_3.d, 421u), false, 4294967295u, var_1.x), var_2.b, _wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.c, 2147483647i), vec3<i32>(var_3.a, 10068i, 7722i)), var_1.zz)), ~(~(0u | var_2.b.x))), u_input.d.wx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(1685f + var_4.x), -1234f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.x, 419f, 1000f), vec3<f32>(-594f, var_4.x, var_4.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(172f, 195f, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(186f, 314f, -824f) * vec3<f32>(-313f, 1000f, 1693f))))), all(vec4<bool>(true, var_2.a >= var_2.e, true, false || var_3.c)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1331f, 399f, var_4.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1209f, 687f, var_4.x))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -2794f, var_4.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_4.x, -762f, -120f)))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1131f, var_4.x, var_2.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x * var_4.x))))), _wgslsmith_clamp_vec4_u32(select(min(~vec4<u32>(0u, var_2.b.x, 4294967295u, var_2.d), firstTrailingBit(vec4<u32>(var_2.b.x, u_input.a.x, u_input.d.x, var_0.x))), ~(~vec4<u32>(var_3.d, var_8.x, 87810u, var_2.d)), func_3(1220f, vec2<u32>(var_3.b.x, 0u))), vec4<u32>(_wgslsmith_div_u32(~64312u, ~0u), ~var_8.x & 14578u, min(9125u, func_6(Struct_1(-54800i, var_3.b, false, 4294967295u, var_3.e), var_3.b, vec3<i32>(var_2.a, var_3.e, var_1.x), var_1.xx).b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, var_8.x, var_3.b.x) | var_3.b, vec4<u32>(var_2.b.x, u_input.b, 82489u, 4294967295u))), var_2.b), u_input.d.x);
}

