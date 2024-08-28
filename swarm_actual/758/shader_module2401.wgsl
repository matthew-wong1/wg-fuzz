struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: bool, arg_1: u32) -> vec2<i32> {
    var var_0 = -398f;
    return vec2<i32>(_wgslsmith_sub_i32(0i, countOneBits(u_input.a.x & select(26505i, 6826i, arg_0))), 20596i);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec4<bool>(any(!vec4<bool>(arg_1.a.x, arg_1.a.x, true, false)) & arg_1.a.x, any(select(vec4<bool>(true, false, false, false), !arg_1.a, vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_1.a.x))), 1263f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_1.a.x), -(~vec2<i32>(u_input.b.x, 646i & u_input.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1251f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x - 260f)))));
    let var_1 = ~min(var_0.b.x, arg_1.b.x);
    let var_2 = false;
    var var_3 = ~vec2<u32>(1u, 1u);
    var var_4 = 393f;
    return Struct_1(!select(!select(vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_1.a.x), vec4<bool>(false, true, true, false), true), var_0.a, var_0.a), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(u_input.c, -2147483647i)), ~_wgslsmith_add_i32(arg_1.b.x, 0i)), _wgslsmith_add_i32(u_input.a.x, _wgslsmith_clamp_i32(2147483647i, var_1, arg_1.b.x) & var_1)), arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -100f));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = any(!arg_1.a.xwz);
    let var_1 = Struct_1(vec4<bool>(true, true, all(select(arg_1.a.xzx, vec3<bool>(true, arg_1.a.x, true), vec3<bool>(arg_1.a.x, arg_1.a.x, false))), _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, arg_1.b.x), ~arg_1.b.x) >= ~_wgslsmith_add_i32(0i, 2147483647i)), vec2<i32>(arg_1.b.x, arg_1.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -102f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))))), -1051f);
    var var_2 = Struct_1(!vec4<bool>(all(var_1.a.zx), any(var_1.a.wx), false, arg_1.a.x), var_1.b, vec2<f32>(_wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1922f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d))));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.d, 278f, true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-994f + -407f), 1000f, func_2(arg_0.x, var_1).a.x))))));
    let var_4 = vec3<u32>(41152u, 1u, 64103u);
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = vec2<u32>(0u, 1u);
    var_0 = ~(vec2<u32>(~43338u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, arg_3), ~vec2<u32>(var_0.x, 14634u))) << (vec2<u32>(arg_3 ^ 11791u, ~64548u << ((4294967295u | arg_3) % 32u)) % vec2<u32>(32u)));
    var_0 = ~_wgslsmith_add_vec2_u32(~abs(~vec2<u32>(1u, 45657u)), firstLeadingBit(~(~vec2<u32>(4294967295u, var_0.x))));
    var_0 = vec2<u32>(~5026u, arg_3);
    var_0 = vec2<u32>(firstLeadingBit(_wgslsmith_mult_u32(reverseBits(arg_3), firstTrailingBit(var_0.x))) & ~arg_3, 4294967295u);
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> vec2<i32> {
    var var_0 = firstLeadingBit(43589u);
    var var_1 = arg_2;
    var var_2 = arg_0;
    var_0 = ~arg_2.x;
    var_2 = Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(0i, -(~(i32(-1i) * -72114i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.c.x, var_2.c.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(764f, _wgslsmith_f_op_f32(-963f + arg_0.c.x))));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1000f))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(901f, _wgslsmith_div_f32(-399f, 151f))));
    let var_1 = _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_sub_i32(1i, u_input.c), i32(-1i) * -69755i) | ~func_1(any(vec4<bool>(false, false, true, false)), ~66092u), _wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.b.x, -21808i), firstTrailingBit(_wgslsmith_mult_vec2_i32(~u_input.a.wy, u_input.b >> (vec2<u32>(33640u, 55301u) % vec2<u32>(32u))))));
    var var_2 = Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), min(-28220i, var_1) > (i32(-1i) * -2147483647i)), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false))), vec2<i32>(-1i, -44450i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-350f, 847f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1484f, 1922f) + vec2<f32>(723f, -481f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-646f, -580f), _wgslsmith_f_op_f32(trunc(-942f))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-466f - 515f)))));
    var_2 = Struct_1(var_2.a, func_5(func_4(Struct_1(!var_2.a, vec2<i32>(var_2.b.x, -1i), var_2.c, -110f), func_3(vec2<f32>(var_2.c.x, 1217f), func_2(1100f, Struct_1(vec4<bool>(true, var_2.a.x, true, true), vec2<i32>(var_2.b.x, 0i), var_2.c, var_2.d))), Struct_1(var_2.a, func_3(vec2<f32>(-136f, var_2.c.x), Struct_1(vec4<bool>(false, true, false, false), var_2.b, var_2.c, 412f)).b, var_2.c, 781f), ~abs(0u)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-u_input.a, select(vec4<i32>(42854i, 0i, 1i, var_2.b.x), u_input.a, var_2.a)), var_1), vec3<u32>(1u, 1u, 1u)), var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d, -1000f)), -934f)) + _wgslsmith_f_op_f32(sign(-425f))));
    var_0 = _wgslsmith_div_f32(var_2.d, _wgslsmith_f_op_f32(-373f - func_2(1091f, func_3(var_2.c, func_2(-198f, Struct_1(var_2.a, var_2.b, vec2<f32>(var_2.c.x, var_2.c.x), -120f)))).c.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.a, firstTrailingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(34885u, 0u, 4294967295u), vec3<u32>(99820u, 1u, 73684u), vec3<u32>(64865u, 9436u, 4294967295u)) & vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4555u, 28108u), vec2<u32>(0u, 4294967295u)), ~57925u, 37334u << (1u % 32u))));
}

