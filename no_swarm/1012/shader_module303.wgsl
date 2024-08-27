struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec2<i32>) -> vec4<i32> {
    return -vec4<i32>(0i, -arg_2.a.a.a, _wgslsmith_mult_i32(arg_2.a.a.a, i32(-1i) * -3256i), 1i);
}

fn func_2() -> f32 {
    global0 = 1u >> (~u_input.a.x % 32u);
    var var_0 = Struct_1(~_wgslsmith_dot_vec4_i32(select(func_3(vec2<bool>(true, true), Struct_3(u_input.a, 604f, -1149f, vec3<i32>(-2147483647i, 0i, -2147483647i), Struct_2(Struct_1(0i, vec2<u32>(u_input.a.x, u_input.a.x), u_input.a), 743f)), Struct_4(Struct_2(Struct_1(-17356i, u_input.a, u_input.a), -993f)), vec2<i32>(5715i, -13630i)), vec4<i32>(17354i, -2147483647i, 1i, 0i), vec4<bool>(true, true, true, true)), vec4<i32>(_wgslsmith_sub_i32(900i, -8012i), _wgslsmith_sub_i32(41162i, 51754i), i32(-1i) * -14196i, _wgslsmith_clamp_i32(0i, 621i, 17492i))), u_input.a, vec2<u32>(~u_input.a.x | 0u, _wgslsmith_add_u32(55649u, u_input.a.x)));
    var_0 = Struct_1(var_0.a, _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a, ~(vec2<u32>(24493u, u_input.a.x) << (var_0.c % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(~max(var_0.b, var_0.c), _wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.c.x, var_0.b.x), vec2<u32>(1u, 1u)))), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(var_0.b), ~vec2<u32>(u_input.a.x, 34982u) | min(vec2<u32>(u_input.a.x, 24712u), var_0.b)), vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.a, ~vec2<u32>(0u, u_input.a.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), var_0.c), abs(u_input.a.x)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2232f), _wgslsmith_f_op_f32(max(1068f, -1061f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1351f, 1304f), vec2<f32>(-249f, -990f), false)) - vec2<f32>(981f, 1803f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -483f, var_1.x) + vec3<f32>(-1000f, var_1.x, -1068f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1017f, 622f, var_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -1906f)))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), var_1.x, var_1.x)));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-165f + 1795f), _wgslsmith_div_f32(-836f, -322f), true)), _wgslsmith_f_op_f32(max(557f, 974f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-998f, -614f)) + -1000f)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -873f))) + 1f), _wgslsmith_f_op_f32(f32(-1f) * -109f));
    var var_2 = Struct_2(Struct_1(~(-1i), select(firstLeadingBit(u_input.a), firstTrailingBit(vec2<u32>(1u, u_input.a.x) << (u_input.a % vec2<u32>(32u))), false), vec2<u32>(_wgslsmith_mod_u32(~70872u, u_input.a.x), ~min(4294967295u, 31215u))), 1f);
    global0 = u_input.a.x;
    let var_3 = Struct_2(var_2.a, _wgslsmith_f_op_f32(round(318f)));
    return Struct_3(vec2<u32>(firstTrailingBit(var_2.a.c.x), ~_wgslsmith_clamp_u32(var_3.a.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.b.x, var_3.a.b.x, u_input.a.x), vec3<u32>(var_2.a.b.x, 16465u, var_2.a.b.x)), 0u)), -201f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-var_2.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b - var_3.b) * _wgslsmith_f_op_f32(step(var_3.b, var_3.b))))), _wgslsmith_sub_vec3_i32(-vec3<i32>(21228i, -24792i, var_3.a.a) | ~max(vec3<i32>(-2147483647i, var_3.a.a, -2147483647i), vec3<i32>(var_2.a.a, 1i, 29392i)), vec3<i32>(abs(9880i) | _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.a, var_2.a.a, var_3.a.a, var_2.a.a), vec4<i32>(var_2.a.a, var_2.a.a, 2147483647i, -876i)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-35745i, var_3.a.a), i32(-1i) * -1i), var_3.a.a)), var_3);
}

fn func_4(arg_0: Struct_3) -> u32 {
    global0 = abs(8596u) >> (0u % 32u);
    var var_0 = reverseBits(-(vec2<i32>(-arg_0.e.a.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-18669i, -45252i, -2147483647i), vec3<i32>(-7775i, -27678i, -20862i))) | arg_0.d.yy));
    var var_1 = func_1();
    var_0 = vec2<i32>(arg_0.d.x << (4294967295u % 32u), -(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.x, arg_0.d.x), reverseBits(vec2<i32>(26290i, 1i)))));
    let var_2 = arg_0;
    return 4294967295u;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> u32 {
    var var_0 = vec4<i32>(~(-2147483647i), _wgslsmith_dot_vec2_i32(countOneBits(-_wgslsmith_add_vec2_i32(vec2<i32>(-16179i, arg_0.a), vec2<i32>(-23444i, -1i))), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a, arg_0.a), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a, arg_0.a), vec2<i32>(arg_0.a, arg_0.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, arg_0.a), vec2<i32>(arg_0.a, 1i))), vec2<i32>(0i, -41088i))), ~7809i << (~_wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_0.b.x, 44803u, 1653u, arg_0.c.x), vec4<u32>(1313u, 1u, 49250u, u_input.a.x)), ~vec4<u32>(arg_0.c.x, 35109u, u_input.a.x, 0u)) % 32u), arg_0.a);
    var_0 = vec4<i32>(-66637i, _wgslsmith_dot_vec2_i32(~var_0.zx, firstTrailingBit(var_0.xz)), -1i, select(20980i, abs(_wgslsmith_mult_i32(arg_0.a, max(7362i, arg_0.a))), false));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-169f, 504f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_1)), -258f), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(323f, 1261f, arg_1, arg_1)))))), vec4<bool>(true, all(!select(vec3<bool>(false, arg_2, false), vec3<bool>(arg_2, arg_2, true), vec3<bool>(false, arg_2, false))), true, all(!vec2<bool>(false, arg_2)))));
    var var_2 = ~max(firstLeadingBit(vec4<i32>(abs(arg_0.a), _wgslsmith_mult_i32(0i, arg_0.a), select(41546i, var_0.x, arg_2), 2147483647i)), vec4<i32>(-1i) * -vec4<i32>(-1i, -2147483647i, -35128i, 32271i));
    var var_3 = !vec2<bool>(u_input.a.x > firstLeadingBit(u_input.a.x), !any(vec2<bool>(true, false)));
    return _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4625u, 0u, arg_0.b.x) | (arg_0.c.x & arg_0.c.x), ~(~1u), 0u) << (40376u % 32u), (countOneBits(u_input.a.x) & 4294967295u) | 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(43175i, -33034i, 1i)) >> (u_input.a.x % 32u), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(86669u, u_input.a.x)), ~select(vec2<u32>(1u, u_input.a.x), u_input.a, vec2<bool>(true, true))), vec2<u32>(func_4(func_1()), u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1430f + -494f))), !(-937f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2625f)) + _wgslsmith_f_op_f32(ceil(271f)))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    global0 = ~countOneBits(25968u);
    let var_1 = reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, ~u_input.a.x, 22661u), select(abs(vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), vec3<u32>(u_input.a.x, 11893u, u_input.a.x) ^ vec3<u32>(u_input.a.x, 3512u, u_input.a.x), false), ~(vec3<u32>(u_input.a.x, 13382u, 70076u) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))));
    var var_2 = true;
    var var_3 = Struct_3(select(_wgslsmith_clamp_vec2_u32(u_input.a, var_1.zy, abs(vec2<u32>(4294967295u, 859u))), vec2<u32>(func_5(Struct_1(-1i, u_input.a, vec2<u32>(u_input.a.x, var_1.x)), 1086f, false), _wgslsmith_sub_u32(1u, u_input.a.x)), u_input.a.x < ~20429u) << (~abs(vec2<u32>(39495u, u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(658f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -280f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) - _wgslsmith_f_op_f32(-var_0)) * 311f)), vec3<i32>(min(1i, ~(-1i)), _wgslsmith_mod_i32(-_wgslsmith_mod_i32(21062i, -68036i), _wgslsmith_clamp_i32(26991i, select(0i, -6877i, false), 0i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(-53167i, -2147483647i), ~vec2<i32>(-8679i, 1i)) >> (~var_1.x % 32u)), Struct_2(func_1().e.a, -1178f));
    var var_4 = ~_wgslsmith_sub_i32(-firstLeadingBit(-21079i), _wgslsmith_dot_vec2_i32(-(~var_3.d.xy), var_3.d.yz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_3.e.a.a, var_3.e.a.a), -(~max(~vec4<i32>(-2147483647i, var_3.e.a.a, -1i, -72460i), countOneBits(vec4<i32>(1i, 0i, var_3.e.a.a, -31516i)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(848f, 832f, -134f, var_0)))))), abs(-var_3.d.x));
}

