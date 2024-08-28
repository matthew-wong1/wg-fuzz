struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(4294967295u, 24418u), vec2<u32>(0u, 81055u), vec2<u32>(4294967295u, 8094u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1u), vec2<u32>(55915u, 57058u), vec2<u32>(1u, 4294967295u), vec2<u32>(46682u, 8432u), vec2<u32>(4294967295u, 1u), vec2<u32>(7490u, 46867u));

var<private> global1: array<Struct_3, 23>;

var<private> global2: array<vec2<i32>, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = max(_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(~(~0u), _wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 4294967295u, 96958u), vec3<u32>(0u, 27752u, 9518u)), vec3<u32>(1u, 18018u, 4294967295u)))), _wgslsmith_mod_u32(~max(firstLeadingBit(44797u), 9696u), select(~_wgslsmith_clamp_u32(1u, 80541u, 4294967295u), _wgslsmith_add_u32(1u, countOneBits(32945u)), true)));
    global0 = array<vec2<u32>, 10>();
    var var_1 = vec2<bool>(true, !arg_0.x);
    let var_2 = vec3<bool>(arg_0.x, all(!(!arg_0)), true);
    global2 = array<vec2<i32>, 5>();
    return ~min(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 53796u, 4294967295u), vec3<u32>(6473u, 8873u, 59808u)), 1u), 1u, ~1u), max(63141u, 10185u));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: i32) -> Struct_4 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_sub_i32(firstLeadingBit(arg_2), u_input.b);
    global0 = array<vec2<u32>, 10>();
    global0 = array<vec2<u32>, 10>();
    let var_2 = vec2<bool>(true, true);
    return Struct_4(Struct_1(!(!vec4<bool>(false, var_2.x, var_2.x, false)), select(!select(var_2, var_2, arg_1), !(!var_2), select(true, any(vec4<bool>(true, true, arg_1, true)), any(vec4<bool>(arg_1, false, arg_1, arg_1)))), -215f, _wgslsmith_dot_vec4_u32(countOneBits(abs(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u))), countOneBits(~vec4<u32>(42097u, 5915u, 4294967295u, 17675u))), select(select(select(vec3<bool>(arg_1, var_2.x, true), vec3<bool>(var_2.x, var_2.x, arg_1), false), select(vec3<bool>(var_2.x, var_2.x, arg_1), vec3<bool>(true, true, true), false), vec3<bool>(var_2.x, var_2.x, true)), vec3<bool>(arg_1 == true, arg_1, var_2.x), !select(vec3<bool>(false, false, true), vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, true, arg_1)))), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-14523i, 29054i), -var_1) >> ((func_3(vec4<bool>(var_2.x, true, false, var_2.x)) >> (87535u % 32u)) % 32u), arg_2));
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_1 {
    let var_0 = !arg_0.a.e;
    var var_1 = ~select(~vec3<i32>(13003i, u_input.c.x, i32(-1i) * -1i), vec3<i32>(41365i, -u_input.a, u_input.b), select(!(u_input.c.x >= u_input.a), false & (true == arg_0.a.a.x), ~26764u <= _wgslsmith_mod_u32(arg_1, 4294967295u)));
    global0 = array<vec2<u32>, 10>();
    var_1 = _wgslsmith_sub_vec3_i32(reverseBits(u_input.c), ~_wgslsmith_add_vec3_i32(-vec3<i32>(38078i, arg_0.b, 1i), abs(vec3<i32>(12882i, -9485i, arg_0.b))) ^ _wgslsmith_clamp_vec3_i32(abs(abs(vec3<i32>(var_1.x, u_input.a, u_input.c.x))), ~(u_input.c >> (vec3<u32>(4294967295u, 53341u, 47687u) % vec3<u32>(32u))), ~vec3<i32>(-38906i, u_input.b, -33551i)));
    let var_2 = arg_0;
    return func_2(_wgslsmith_f_op_f32(step(-817f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1031f, _wgslsmith_div_f32(var_2.a.c, 661f))))))), var_0.x, -(~(~15994i))).a;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_2)), true, arg_0), arg_1.x);
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(~u_input.b, u_input.a), select(1i, -2147483647i, !any(!var_0.a.zyw)));
    let var_2 = reverseBits(vec2<i32>(u_input.a, firstTrailingBit(~(~(-77390i)))));
    global0 = array<vec2<u32>, 10>();
    let var_3 = !var_0.a;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(2147483647i, _wgslsmith_mult_vec2_u32(vec2<u32>(53640u, ~1u), vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-386f)) * -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2335f, 813f, 656f, 420f)))), -reverseBits((u_input.a << (1u % 32u)) & select(0i, u_input.c.x, false)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1423f, _wgslsmith_f_op_f32(-var_0.a.c)));
    let var_2 = abs(var_0.a.d);
    let var_3 = global1[_wgslsmith_index_u32(4294967295u, 23u)];
    global2 = array<vec2<i32>, 5>();
    let var_4 = vec3<i32>(~min(_wgslsmith_sub_i32(firstTrailingBit(-2147483647i), ~3617i), 0i), var_0.b, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(var_0.b), ~(~select(vec3<u32>(4294967295u, 0u, var_0.a.d), vec3<u32>(var_2, var_2, 0u), false)) ^ ~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_2, var_0.a.d, 92499u), vec3<u32>(var_2, 9795u, var_2))), max(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(var_2, var_0.a.d, var_2)), select(vec3<u32>(4294967295u, var_0.a.d, var_0.a.d), vec3<u32>(10344u, var_0.a.d, var_0.a.d), vec3<bool>(var_0.a.e.x, var_0.a.e.x, true))), firstLeadingBit(vec3<u32>(0u, 0u, 48865u)) & vec3<u32>(4294967295u, var_0.a.d, 41231u)), ~(~(~var_0.a.d))), -2147483647i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(var_0.a.c)), _wgslsmith_div_f32(var_0.a.c, var_1.x), _wgslsmith_f_op_f32(-var_1.x))))));
}

