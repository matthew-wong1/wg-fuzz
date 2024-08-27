struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_5) -> u32 {
    var var_0 = Struct_1(!arg_1.a.a, i32(-1i) * -u_input.c.x, -1i | arg_1.e.b, select(0u, ~(~u_input.a >> (u_input.a % 32u)), arg_1.e.a), _wgslsmith_clamp_u32(~arg_1.e.e, ~arg_1.d, arg_1.b));
    var var_1 = var_0.d;
    let var_2 = select(vec4<bool>(arg_0.x, all(select(vec2<bool>(var_0.a, arg_0.x), arg_0, !vec2<bool>(var_0.a, arg_1.e.a))), false, arg_0.x), select(vec4<bool>(false, all(vec2<bool>(arg_0.x, true)), true, arg_1.a.a), !vec4<bool>(true, true, any(vec4<bool>(var_0.a, arg_0.x, true, var_0.a)), false), vec4<bool>(false, !(u_input.e.x < 0i), !(1u < arg_1.e.e), arg_1.a.a)), select(vec4<bool>(arg_0.x, true, any(vec3<bool>(arg_0.x, false, arg_0.x)), false), select(vec4<bool>(true, true, arg_1.c.x < arg_1.c.x, all(vec2<bool>(false, false))), !vec4<bool>(false, arg_1.a.a, var_0.a, true), arg_0.x), true));
    var_0 = arg_1.e;
    var_1 = ~firstLeadingBit(arg_1.e.e);
    return ~min(u_input.a, ~_wgslsmith_mod_u32(select(var_0.d, 0u, true), 0u));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(floor(arg_0.x)), firstLeadingBit(vec2<u32>(u_input.b, firstTrailingBit(min(u_input.a, 4294967295u)))), ~func_3(vec2<bool>(true, true), Struct_5(Struct_1(true, -13594i, 8321i, 11932u, u_input.a), ~83928u, _wgslsmith_f_op_vec3_f32(arg_0.ywy - vec3<f32>(arg_0.x, arg_0.x, 515f)), _wgslsmith_mod_u32(u_input.b, u_input.b), Struct_1(true, u_input.c.x, -1i, u_input.a, 0u))), ~_wgslsmith_add_vec2_u32(abs(vec2<u32>(4294967295u, 52553u)), firstLeadingBit(vec2<u32>(4294967295u, 0u) | vec2<u32>(0u, u_input.a))));
    var var_1 = var_0;
    var_1 = Struct_3(-2643f, vec2<u32>(~(~(var_0.b.x ^ 4294967295u)), ~(_wgslsmith_clamp_u32(6238u, u_input.b, var_1.c) << (1u % 32u))), 4294967295u ^ abs(_wgslsmith_dot_vec4_u32(vec4<u32>(54377u, var_0.d.x, var_0.b.x, 4294967295u) & vec4<u32>(4294967295u, 66456u, 0u, 33667u), vec4<u32>(u_input.b, 29886u, 1u, var_1.b.x) >> (vec4<u32>(u_input.a, 1u, var_0.b.x, 32069u) % vec4<u32>(32u)))), vec2<u32>(4038u, 17586u));
    let var_2 = 1000f;
    var_1 = Struct_3(-642f, reverseBits(vec2<u32>(28100u, var_1.d.x)), _wgslsmith_mult_u32(var_1.c, u_input.a), var_1.d);
    return Struct_2(Struct_1(select(true, all(vec3<bool>(false, true, false)), true), ~_wgslsmith_div_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(20238i, u_input.c.x), vec2<i32>(u_input.e.x, 1i))), u_input.e.x, ~reverseBits(var_1.c | var_1.d.x), ~14966u), Struct_1(select(true, false, true), 2147483647i, u_input.c.x, abs(max(~14956u, ~1u)), u_input.a), u_input.c.x >> (~_wgslsmith_mod_u32(u_input.a, 15724u) % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<bool>(true, true);
    return func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-118f, 1109f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1087f, 323f, var_0.x)), _wgslsmith_f_op_f32(min(arg_1, -1350f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-174f * arg_1))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, arg_1, arg_1, 840f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-505f, arg_1, arg_1, 506f) * vec4<f32>(arg_1, arg_1, arg_1, -676f)) * vec4<f32>(-760f, -1493f, arg_1, 845f)))))).b;
}

fn func_1(arg_0: u32, arg_1: Struct_5, arg_2: f32) -> u32 {
    var var_0 = Struct_2(func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, 720f, arg_1.c.x, -576f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-995f, 278f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1221f * -499f)))))), Struct_1(func_4(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, -580f) + vec4<f32>(arg_2, -213f, arg_1.c.x, arg_2))), _wgslsmith_f_op_f32(step(arg_1.c.x, _wgslsmith_f_op_f32(-arg_1.c.x)))).a, -u_input.e.x << (_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.e.d, 10280u, 17486u, 5146u), vec4<u32>(28142u, 59017u, arg_0, 65998u)) % 32u), -arg_1.a.c, 0u, 49169u), ~(abs(0i) << (abs(1u) % 32u)));
    var var_1 = var_0.b.c;
    let var_2 = Struct_1(select(var_0.b.a, true, any(select(select(vec2<bool>(arg_1.a.a, arg_1.a.a), vec2<bool>(true, false), vec2<bool>(arg_1.a.a, false)), vec2<bool>(true, true), vec2<bool>(arg_1.e.a, false)))), arg_1.a.b << (~_wgslsmith_div_u32(arg_1.d, 43770u) % 32u), (abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.c, 2147483647i), u_input.c.zz)) >> (~countOneBits(15607u) % 32u)) << (firstTrailingBit(54991u) % 32u), ~_wgslsmith_sub_u32(reverseBits(var_0.b.d), ~min(0u, var_0.b.d)), _wgslsmith_div_u32(~var_0.a.e, arg_1.d));
    var var_3 = vec4<bool>(false, true, any(vec2<bool>(true, var_2.a & true)), all(select(!vec2<bool>(false, arg_1.a.a), select(select(vec2<bool>(true, var_0.a.a), vec2<bool>(var_2.a, arg_1.e.a), vec2<bool>(var_2.a, false)), !vec2<bool>(arg_1.a.a, arg_1.a.a), var_2.a), vec2<bool>(true, false))));
    var var_4 = Struct_2(var_2, Struct_1(arg_1.e.a, firstTrailingBit(var_2.b), -1i, arg_0, 4294967295u), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -153f, -114f, arg_1.c.x) + vec4<f32>(arg_1.c.x, 1126f, arg_2, -826f))) + vec4<f32>(_wgslsmith_f_op_f32(max(504f, 1483f)), _wgslsmith_f_op_f32(-arg_2), arg_2, _wgslsmith_f_op_f32(arg_2 + 565f)))).a.c);
    return _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, var_4.b.e), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(var_3.x, true)), vec2<u32>(63054u, var_0.a.d)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, 73783u), vec2<u32>(1u, var_0.b.e) >> (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u)), ~vec2<u32>(1u, 111555u))), ~31207u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~u_input.e.x);
    var var_1 = 0u;
    var_1 = _wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(reverseBits(~vec3<u32>(u_input.b, u_input.a, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(52506u, u_input.b, 4294967295u)) ^ abs(vec3<u32>(59331u, u_input.a, u_input.b)))), vec3<u32>(u_input.a, _wgslsmith_mod_u32(firstTrailingBit(u_input.b & u_input.b), ~func_1(8888u, Struct_5(Struct_1(false, -12945i, u_input.e.x, u_input.b, u_input.a), u_input.a, vec3<f32>(1000f, -483f, -361f), u_input.b, Struct_1(true, 1i, 1i, 4294967295u, 0u)), 956f)), max(u_input.b, u_input.b)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-204f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-389f)), _wgslsmith_f_op_f32(min(1000f, 548f)))))), vec2<u32>(~_wgslsmith_mod_u32(u_input.a & u_input.a, 5000u), ~countOneBits(u_input.a)), u_input.a, min(abs(reverseBits(vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(1u, 46823u) % vec2<u32>(32u)))), ~vec2<u32>(4294967295u, u_input.b)));
    var_1 = countOneBits(_wgslsmith_mod_u32(var_2.c, ~(~u_input.b)));
    var_1 = u_input.a | 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer((vec2<i32>(-1i) * -(u_input.e.zy << (vec2<u32>(u_input.b, 73082u) % vec2<u32>(32u)))) & u_input.c.xw, ~(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 18647u), func_2(vec4<f32>(-216f, var_2.a, var_2.a, -468f)).b.e, func_3(vec2<bool>(true, false), Struct_5(Struct_1(true, var_0, 33921i, var_2.b.x, u_input.a), u_input.b, vec3<f32>(var_2.a, 721f, -591f), 1u, Struct_1(true, var_0, -1i, u_input.a, var_2.c)))) >> (~abs(vec3<u32>(4294967295u, 4294967295u, 49392u)) % vec3<u32>(32u))), _wgslsmith_mult_u32(~76921u, var_2.d.x), var_2.a);
}

