struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec4<f32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    return min(_wgslsmith_clamp_i32(u_input.b.x, u_input.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-26482i, u_input.a), u_input.b), select(~u_input.b.x, u_input.b.x << (53285u % 32u), true))), firstTrailingBit(~(-52274i >> (select(71803u, 45558u, true) % 32u))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_4 {
    var var_0 = 1499f;
    var var_1 = _wgslsmith_clamp_i32(u_input.a, ~u_input.a, -29780i);
    var_1 = func_3();
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(1u), 4294967295u, max(_wgslsmith_div_u32(1u, 1u), countOneBits(1u))), select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u << (0u % 32u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(51415u, 30579u, 51985u, 38100u), vec4<u32>(4294967295u, 1u, 10048u, 0u))), ~(~vec3<u32>(23544u, 19907u, 73363u))), ~reverseBits(~vec3<u32>(1u, 16509u, 0u)), select(select(!vec3<bool>(arg_0.x, false, arg_0.x), !vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x), vec3<bool>(!arg_0.x, true, true), any(!vec4<bool>(false, arg_0.x, arg_0.x, false)))));
    let var_3 = select(~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 60135u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 18172u), vec3<u32>(56006u, 1u, 1u))), abs(min(54582u, 4294967295u)), ~(~11841u)), ~(select(vec3<u32>(4294967295u, 14676u, 4294967295u), vec3<u32>(1u, 1u, 1u), false) & vec3<u32>(~41571u, abs(0u), _wgslsmith_clamp_u32(1u, 1612u, 14014u))), select(vec3<bool>(arg_0.x, true, arg_0.x || arg_0.x), !(!vec3<bool>(arg_0.x, true, false)), !vec3<bool>(any(vec4<bool>(arg_0.x, arg_0.x, false, true)), arg_0.x, !arg_0.x)));
    return Struct_4(Struct_3(Struct_1(firstLeadingBit(vec4<u32>(1u, 12976u, 69636u, 0u) & vec4<u32>(58149u, var_3.x, var_3.x, 4294967295u)), u_input.a), abs(-12620i) ^ reverseBits(~u_input.a), Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, -49917i), vec4<i32>(-37232i, -1398i, u_input.a, 14520i)), -629f, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(636f, -556f, -2298f))))), Struct_1(~vec4<u32>(1u, 24722u, var_3.x, var_3.x), ~23794i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-796f + -204f)), -561f, 118f, _wgslsmith_f_op_f32(f32(-1f) * -1346f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f))), vec2<bool>(arg_0.x, any(select(vec4<bool>(false, true, false, false), !vec4<bool>(true, false, false, arg_0.x), vec4<bool>(false, false, true, arg_0.x)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_3.b;
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(func_2(select(arg_0.wx, vec2<bool>(true, arg_1.b.x), arg_1.b.x)).a.e)), arg_3.b)), 493f));
    var_0 = -225f;
    var var_1 = 0u;
    var var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~(1u << (arg_3.d.a.x % 32u)), abs(arg_3.d.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.a.a.x, arg_3.d.a.x, 13105u), vec3<u32>(arg_1.a.c.d.a.x, 44737u, arg_3.d.a.x))), vec3<u32>(countOneBits(~arg_1.a.a.a.x), (arg_1.a.a.a.x ^ arg_3.d.a.x) | ~76565u, arg_1.a.c.d.a.x)), _wgslsmith_add_vec3_u32(arg_1.a.a.a.ywy, arg_1.a.a.a.xwy));
    return arg_3;
}

fn func_5(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_1(~(~vec4<u32>(arg_0.c.d.a.x, arg_0.c.d.a.x, arg_0.a.a.x, arg_0.a.a.x)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(2125i, arg_0.c.a.x, func_3()), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, reverseBits(19795i), ~1i), arg_0.c.a.zyy)));
    var var_1 = u_input.b;
    var var_2 = all(func_2(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))).b);
    var_0 = arg_0.a;
    var_0 = Struct_1(abs(arg_0.c.d.a), 1i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x + arg_0.e)) - arg_0.c.c.x);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-532f, _wgslsmith_f_op_f32(789f + 974f)), vec2<f32>(857f, _wgslsmith_f_op_f32(f32(-1f) * -484f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-284f, _wgslsmith_f_op_f32(ceil(-106f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1190f, -689f) * vec2<f32>(114f, -1516f)))))));
    let var_1 = var_0.x;
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(func_5(Struct_3(Struct_1(~vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(2147483647i)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(48337i, u_input.b.x, 2147483647i)), reverseBits(vec3<i32>(3787i, u_input.a, 25621i))), u_input.b.x), func_4(!vec4<bool>(true, var_2, var_2, var_2), func_2(!vec2<bool>(var_2, var_2)), -(u_input.b & vec2<i32>(-1i, u_input.b.x)), Struct_2(~vec4<i32>(0i, u_input.a, u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -496f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -294f)), func_2(vec2<bool>(var_2, true)).a.a)), vec4<f32>(1000f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1440f), _wgslsmith_f_op_f32(-func_4(vec4<bool>(true, true, var_2, false), Struct_4(Struct_3(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), -2147483647i), 0i, Struct_2(vec4<i32>(u_input.b.x, u_input.a, 20405i, -1i), -802f, vec3<f32>(var_1, var_1, 1000f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), u_input.b.x)), vec4<f32>(856f, -1704f, -452f, var_1), var_0.x), vec2<bool>(false, var_2)), u_input.b, Struct_2(vec4<i32>(-27155i, -2147483647i, u_input.b.x, u_input.a), var_1, vec3<f32>(var_1, -203f, var_0.x), Struct_1(vec4<u32>(8088u, 3932u, 4294967295u, 0u), 2147483647i))).b)), _wgslsmith_f_op_f32(-func_2(func_2(vec2<bool>(var_2, var_2)).b).a.d.x))));
    let var_4 = func_2(vec2<bool>(false, var_2));
    return Struct_1(vec4<u32>(~var_4.a.a.a.x, var_4.a.c.d.a.x, ~18479u, abs(var_4.a.c.d.a.x) << (var_4.a.a.a.x % 32u)) | countOneBits(var_4.a.a.a), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, var_4.a.c.a.x, var_4.a.c.d.b, var_4.a.c.a.x), var_4.a.c.a), vec4<i32>(u_input.a, var_4.a.c.a.x, u_input.b.x, -var_4.a.c.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(vec4<u32>(1u, 1u, 1u, 1u)), ~min(_wgslsmith_sub_i32(-1i, 14493i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.b.x, u_input.a, -15622i)), u_input.a));
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, -u_input.b);
}

