struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>) -> vec4<f32> {
    let var_0 = !(all(!(!global0.xzy)) == arg_0.x);
    global0 = arg_0;
    var var_1 = 1i << (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 39586u, _wgslsmith_div_u32(22911u, 4294967295u)), vec3<u32>(1u, 1u, 1u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) % 32u);
    let var_2 = global0.zx;
    global0 = vec4<bool>(var_0, -1i > reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, 41197i) & vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(-48392i, -1i, -70330i) ^ vec3<i32>(u_input.b, 41821i, u_input.b))), true, true);
    return vec4<f32>(952f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1661f))))) - _wgslsmith_f_op_f32(sign(-1288f))), _wgslsmith_f_op_f32(f32(-1f) * -436f), 923f);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = max(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, -29825i), abs(_wgslsmith_mod_i32(u_input.b, u_input.b) & 53464i), -45786i), ~(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.b, u_input.b, -3302i), _wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.b, 6334i), vec3<i32>(u_input.a.x, u_input.a.x, 32310i)), ~vec3<i32>(-1i, u_input.a.x, -27393i))));
    var_0 = ~select(select(select(-vec3<i32>(u_input.b, var_0.x, u_input.a.x), vec3<i32>(-2147483647i, 0i, var_0.x), global0.x), -vec3<i32>(u_input.b, u_input.b, 0i), ~0i > _wgslsmith_sub_i32(2147483647i, u_input.a.x)), abs(-vec3<i32>(var_0.x, -66909i, 27759i)) | (vec3<i32>(1i, u_input.a.x, var_0.x) ^ (vec3<i32>(0i, var_0.x, var_0.x) << (vec3<u32>(4294967295u, 43054u, 4813u) % vec3<u32>(32u)))), global0.x);
    var_0 = vec3<i32>(-1i, _wgslsmith_div_i32(-(~_wgslsmith_mult_i32(-2147483647i, var_0.x)), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.b, var_0.x, -20047i, -10995i)), countOneBits(abs(vec4<i32>(1i, var_0.x, u_input.a.x, u_input.a.x))))), ~0i);
    let var_1 = vec2<u32>(1u, ~(max(63216u, 1u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(16844u, 33383u, 4294967295u)) % 32u)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, false, true, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-584f, arg_0, 261f, arg_0), vec4<f32>(arg_0, 394f, arg_0, 1154f), global0.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1025f, 1470f, 142f, 230f) + vec4<f32>(arg_0, arg_0, arg_0, 1078f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -764f, 380f, -2341f) + vec4<f32>(arg_0, 753f, arg_0, 1000f)), vec4<f32>(arg_0, arg_0, arg_0, arg_0)))));
    return ~var_1.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * arg_0.x))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1117f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0.x)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(909f - arg_0.x)))))));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-452f, arg_0.x)), _wgslsmith_f_op_f32(max(241f, 302f)))))), 431f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.yw, arg_0.xw))));
    global0 = vec4<bool>(global0.x, any(global0.yxz) != !(!global0.x), any(vec3<bool>(false, !global0.x, !(arg_2.b <= arg_1.x))), true);
    global0 = select(!select(vec4<bool>(true, true, true, any(global0.xx)), vec4<bool>(arg_2.b != arg_2.b, false, global0.x, all(global0.yxx)), all(global0.zzw)), select(!(!select(vec4<bool>(true, global0.x, arg_2.a.x, true), vec4<bool>(false, false, true, global0.x), global0.x)), !(!vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, false)), vec4<bool>(98356u <= (0u >> (arg_2.b % 32u)), -328f >= arg_0.x, (arg_1.x >> (arg_2.b % 32u)) >= select(arg_2.b, 1u, false), true)), !select(vec4<bool>(true, all(arg_2.a), arg_2.a.x, true), vec4<bool>(!arg_2.a.x, false, any(vec4<bool>(false, global0.x, arg_2.a.x, arg_2.a.x)), all(vec4<bool>(true, false, true, true))), !vec4<bool>(global0.x, false, arg_2.a.x, arg_2.a.x)));
    let var_2 = false;
    return Struct_1(select(!select(vec2<bool>(arg_2.a.x, true), select(global0.zy, global0.ww, false), any(global0.yzx)), vec2<bool>(true, true), vec2<bool>(global0.x, !(!global0.x))), ~_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(arg_1, vec3<u32>(4294967295u, 33487u, 4294967295u)), abs(vec3<u32>(34522u, arg_1.x, arg_2.b)) << (_wgslsmith_add_vec3_u32(arg_1, vec3<u32>(0u, 0u, 19673u)) % vec3<u32>(32u))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_5(arg_0.b);
    return func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-486f - 805f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-875f, -1338f)))), 1455f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(821f, -1476f, global0.x)), 726f))), ~vec3<u32>(_wgslsmith_sub_u32(1u, func_2(-1140f)), arg_0.b, var_0.a), arg_0);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(133f, -1004f, -689f, 1000f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-249f, 287f, 2271f, 927f), vec4<f32>(608f, 714f, 878f, -577f)))))), _wgslsmith_mult_vec3_u32(vec3<u32>(~41334u, arg_0.b, _wgslsmith_clamp_u32(80690u, 93131u, 0u)), vec3<u32>(57887u, arg_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 80609u), vec2<u32>(29157u, 40768u)))), Struct_1(arg_0.a, 4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -226f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2108f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(528f + -908f)))));
    let var_1 = Struct_4(12430u, select(vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -2241i, u_input.a.x)) != 2147483647i, all(vec4<bool>(true, var_0.a.a.x, true, global0.x)), var_0.a.a.x, true), !(!vec4<bool>(true, var_0.a.a.x, true, var_0.a.a.x)), any(vec4<bool>(arg_0.a.x, false, false, func_4(vec4<f32>(616f, var_0.b.x, 122f, 796f), vec3<u32>(0u, 4294967295u, 0u), Struct_1(var_0.a.a, 22350u)).a.x))), abs(~select(firstTrailingBit(vec3<i32>(u_input.b, 2147483647i, u_input.a.x)), vec3<i32>(43407i, 0i, u_input.b), 1815f <= var_0.b.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1182f * 906f), _wgslsmith_f_op_f32(-362f - 1092f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(624f + 1000f), _wgslsmith_f_op_f32(-var_0.b.x))))), _wgslsmith_f_op_f32(-1314f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.x))))));
    var var_2 = !select(select(select(select(var_1.b.xzy, global0.yyy, vec3<bool>(true, var_1.b.x, false)), !vec3<bool>(true, false, global0.x), global0.x), vec3<bool>(all(var_1.b.yxx), var_1.b.x, !var_0.a.a.x), vec3<bool>(var_0.a.a.x, func_4(vec4<f32>(-1562f, -1139f, var_0.b.x, var_0.b.x), vec3<u32>(arg_0.b, arg_0.b, 0u), var_0.a).a.x, any(var_1.b))), !global0.xxw, vec3<bool>(_wgslsmith_f_op_f32(var_1.d.x * 728f) <= -723f, var_0.a.a.x, true));
    global0 = var_1.b;
    var var_3 = vec3<u32>(43861u, var_1.a, ~min(~var_1.a, 1u));
    return func_1(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 9389u;
    let var_1 = func_5(func_1(Struct_1(!(!vec2<bool>(false, global0.x)), 0u)));
    var var_2 = var_1;
    var_2 = func_5(Struct_1(var_1.a, func_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1191f, -487f, 544f, 1966f))), vec3<u32>(var_1.b, 1u, var_0) | (vec3<u32>(var_2.b, var_2.b, 1u) & vec3<u32>(var_1.b, var_1.b, 4294967295u)), func_1(Struct_1(vec2<bool>(false, global0.x), var_0))).b));
    var var_3 = -(~(i32(-1i) * -17257i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b, ~(-abs(u_input.b)), u_input.b), -2753f, -firstLeadingBit(countOneBits(1i)), -2147483647i);
}

