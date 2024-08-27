struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(Struct_1(vec4<u32>(4294967295u, 1u, 55847u, 24897u), false)), Struct_4(Struct_1(vec4<u32>(18425u, 0u, 0u, 52384u), false)), Struct_4(Struct_1(vec4<u32>(0u, 38978u, 22491u, 0u), true)), Struct_4(Struct_1(vec4<u32>(0u, 24386u, 18120u, 4294967295u), false)), Struct_4(Struct_1(vec4<u32>(0u, 0u, 9055u, 0u), true)), Struct_4(Struct_1(vec4<u32>(14710u, 18106u, 538u, 0u), true)), Struct_4(Struct_1(vec4<u32>(0u, 1019u, 0u, 66133u), false)), Struct_4(Struct_1(vec4<u32>(0u, 1u, 1u, 42645u), true)), Struct_4(Struct_1(vec4<u32>(4294967295u, 63622u, 1u, 37912u), true)), Struct_4(Struct_1(vec4<u32>(4294967295u, 15721u, 0u, 80992u), true)), Struct_4(Struct_1(vec4<u32>(35965u, 1u, 0u, 4294967295u), true)), Struct_4(Struct_1(vec4<u32>(1u, 1u, 4172u, 4294967295u), false)), Struct_4(Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 60045u), true)), Struct_4(Struct_1(vec4<u32>(0u, 26379u, 67655u, 4294967295u), false)), Struct_4(Struct_1(vec4<u32>(114305u, 4294967295u, 45746u, 35611u), true)), Struct_4(Struct_1(vec4<u32>(27579u, 4294967295u, 71836u, 1u), false)), Struct_4(Struct_1(vec4<u32>(26078u, 14739u, 18792u, 4294967295u), false)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_add_i32(select(_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 6946i), vec2<i32>(-2147483647i, 0i))), -6509i << (arg_1.a.x % 32u)), _wgslsmith_clamp_i32(reverseBits(1085i), -(~2147483647i), 1i), true), countOneBits(max(-2147483647i, reverseBits(~(-2756i)))));
    global0 = array<Struct_4, 17>();
    global0 = array<Struct_4, 17>();
    let var_1 = ~1u;
    global0 = array<Struct_4, 17>();
    return Struct_2(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-562f, _wgslsmith_f_op_f32(step(-913f, -271f))))), arg_1.b, arg_1.a.xwx);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_2) -> f32 {
    var var_0 = vec3<u32>(u_input.a, arg_2.d.x, ~(~firstTrailingBit(firstTrailingBit(4294967295u))));
    let var_1 = 13643i;
    let var_2 = vec2<i32>(var_1, 1i);
    global0 = array<Struct_4, 17>();
    let var_3 = Struct_3(arg_2.b.x, arg_2, select(vec3<bool>(countOneBits(var_0.x) < ~arg_2.a, true, !(arg_2.c | arg_1.x)), vec3<bool>(all(select(vec3<bool>(arg_1.x, false, true), arg_1, arg_1)), true, arg_2.c | true), true), arg_2);
    return _wgslsmith_f_op_f32(sign(1749f));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = ~vec2<u32>(55174u, 4294967295u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_1.b.x, 430f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x)))))), select(select(!vec3<bool>(false, arg_1.c, false), !vec3<bool>(arg_2.b, false, true), arg_0.x <= arg_0.x), !vec3<bool>(arg_1.c, false, arg_1.c), arg_1.c), func_2(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x), _wgslsmith_div_f32(arg_1.b.x, arg_1.b.x), -763f), arg_2))) + _wgslsmith_f_op_f32(sign(972f)));
    let var_2 = arg_1.b.x;
    var var_3 = arg_0.x;
    let var_4 = arg_1.b.x;
    return _wgslsmith_f_op_f32(floor(340f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 17>();
    global0 = array<Struct_4, 17>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1308f)), _wgslsmith_f_op_f32(-423f - 262f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(19662i, -34799i, 22184i), Struct_2(u_input.a, vec2<f32>(2492f, -1147f), true, vec3<u32>(u_input.a, u_input.a, u_input.a)), Struct_1(vec4<u32>(u_input.a, 4294967295u, 1u, 4294967295u), true)))))))));
    let var_1 = Struct_4(Struct_1(~(~vec4<u32>(u_input.a, u_input.a, 13419u, 4294967295u) << (~vec4<u32>(4294967295u, 0u, 0u, 17068u) % vec4<u32>(32u))), any(vec2<bool>(true, true)) & true));
    var var_2 = -7275i;
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1085f) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -640f), vec2<f32>(-520f, var_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(469f, 256f), vec2<f32>(1171f, var_0))), vec2<bool>(var_1.a.b, var_0 >= var_0))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~_wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -2147483647i), vec3<i32>(-2147483647i, -7037i, 0i))), -80582i), ~((~vec3<u32>(var_1.a.a.x, u_input.a, var_1.a.a.x) << (var_1.a.a.yzw % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x)), ~vec3<u32>(u_input.a, var_1.a.a.x, var_1.a.a.x))), 0i, select(abs(vec4<i32>(max(1i, -38117i), -32295i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 30116i, 5227i, 1i), vec4<i32>(2147483647i, 55878i, 36075i, 0i)), 2147483647i)), reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), true));
}

