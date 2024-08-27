struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: Struct_3) -> u32 {
    let var_0 = max(select(_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(arg_1.a.a, arg_0, 27253u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 11892u) & vec4<u32>(arg_1.a.a, arg_1.a.a, 4294967295u, arg_1.a.a), vec4<u32>(7862u, 1342u, arg_1.a.a, 1u))), abs(countOneBits(max(vec4<u32>(10636u, arg_1.a.a, arg_0, 0u), vec4<u32>(53211u, 89379u, 4294967295u, 46196u)))), vec4<bool>(!arg_1.c, any(vec3<bool>(false, true, arg_1.c)), false, !(!arg_1.c))), vec4<u32>(countOneBits(arg_0), 0u, ~select(arg_0, ~arg_1.a.a, arg_1.c), arg_0));
    let var_1 = firstLeadingBit(~0i) | arg_2.b.x;
    var var_2 = firstTrailingBit(vec3<i32>(var_1, abs(firstLeadingBit(0i)), u_input.b));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_div_f32(arg_2.a.x, arg_2.a.x)), arg_2.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_2.a.x, arg_2.a.x)), _wgslsmith_f_op_f32(-arg_2.a.x)))) - arg_2.a);
    var var_4 = Struct_3(arg_2.a, vec3<i32>(arg_1.b, -_wgslsmith_clamp_i32(var_2.x, var_1, -16224i), reverseBits(~_wgslsmith_clamp_i32(-49117i, 1i, 30300i))));
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_5) -> Struct_5 {
    var var_0 = Struct_2(arg_0.a);
    var var_1 = Struct_2(~38684u);
    var_0 = Struct_2(reverseBits(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, arg_0.a, arg_1.a.a), vec3<u32>(var_1.a, 1u, 4570u)), arg_1, Struct_3(vec2<f32>(2016f, 235f), vec3<i32>(arg_1.b, 1i, 50109i))) >> ((arg_0.a << (arg_1.a.a % 32u)) % 32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(150f, 134f)));
    var var_3 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2 - _wgslsmith_f_op_vec2_f32(-var_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2 * vec2<f32>(var_2.x, -1110f)) - var_2) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1129f, var_2.x))))), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(arg_1.b, u_input.b, 37918i)), firstTrailingBit(countOneBits(vec3<i32>(-1i, u_input.a, arg_1.b))) | vec3<i32>(countOneBits(1i), max(-1i, 60424i), -arg_1.b)));
    return Struct_5(arg_0, -_wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(var_3.b.yz, var_3.b.zy), var_3.b.x), !all(vec2<bool>(false, all(vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c)))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_4, arg_3: Struct_5) -> f32 {
    let var_0 = max(arg_3.a.a, _wgslsmith_clamp_u32(~174u, arg_3.a.a, func_2(func_2(Struct_2(arg_3.a.a), Struct_5(Struct_2(1u), u_input.b, true)).a, Struct_5(arg_3.a, u_input.a, arg_3.c)).a.a) >> (~arg_3.a.a % 32u));
    let var_1 = arg_2.a;
    let var_2 = 2147483647i;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -401f);
    var var_4 = (0u < arg_3.a.a) || false;
    return arg_1;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(625f, -538f, true)))) + -1174f) == _wgslsmith_f_op_f32(step(-756f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(_wgslsmith_mult_i32(u_input.b, 37361i), _wgslsmith_f_op_f32(-818f + -1334f), Struct_4(Struct_3(vec2<f32>(-772f, 594f), vec3<i32>(1i, u_input.b, u_input.a)), vec2<i32>(14530i, 0i), 879f), func_2(Struct_2(51555u), Struct_5(Struct_2(46284u), u_input.b, true))))))));
    var var_1 = true;
    var var_2 = -u_input.b;
    let var_3 = 1i;
    var_1 = any(select(!(!vec2<bool>(var_0, false)), !select(vec2<bool>(var_0, false), vec2<bool>(true, true), var_0), select(select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), vec2<bool>(false, var_0)), vec2<bool>(var_0, var_0), !var_0))) | true;
    return 17556i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, true, true, 0u >= ~_wgslsmith_clamp_u32(1u, ~0u, ~5085u));
    var var_1 = vec3<i32>(firstLeadingBit(-u_input.b), -2147483647i, func_1());
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + -234f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1959f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(305f)), _wgslsmith_f_op_f32(ceil(-3005f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(995f, var_2.x)))))));
    var_0 = select(select(select(!(!vec4<bool>(true, var_0.x, true, var_0.x)), vec4<bool>(false, var_0.x, any(vec2<bool>(true, false)), all(vec4<bool>(false, var_0.x, var_0.x, var_0.x))), !(-1874f > var_2.x)), select(vec4<bool>(select(true, false, false), any(vec3<bool>(true, true, true)), var_0.x, var_0.x == true), vec4<bool>(var_0.x, !var_0.x, func_2(Struct_2(1u), Struct_5(Struct_2(1097u), 1i, true)).c, true), select(!vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(true, true, false, false), all(var_0.wy))), true), select(select(select(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), false), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, true, true, var_0.x), var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), true)), vec4<bool>(true, var_0.x, all(vec4<bool>(true, var_0.x, false, var_0.x)), -1667f <= var_2.x), var_0.x), vec4<bool>(select(var_0.x, true, var_0.x), func_2(Struct_2(16440u), Struct_5(Struct_2(1u), u_input.a, var_0.x)).c, select(var_0.x, true, all(vec2<bool>(var_0.x, var_0.x))), any(select(vec2<bool>(var_0.x, false), var_0.zw, vec2<bool>(true, true)))), select(select(select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true)), !vec4<bool>(var_0.x, true, false, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), var_0.x), select(vec4<bool>(var_0.x, false, var_0.x, false), !vec4<bool>(var_0.x, var_0.x, true, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x)))), select(select(!vec4<bool>(var_0.x, true, var_0.x, true), select(vec4<bool>(false, true, false, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, var_0.x, var_0.x, false)), !vec4<bool>(false, var_0.x, var_0.x, true)), !select(!vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, true, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_u32(60352u, firstLeadingBit(0u))), var_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(314f, 850f, var_2.x, -1305f)) - vec4<f32>(1682f, 1035f, 1002f, var_2.x)))));
}

