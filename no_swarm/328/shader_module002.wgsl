struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27>;

var<private> global1: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 0u), vec2<u32>(75940u, 0u), vec2<u32>(0u, 84119u), vec2<u32>(0u, 9172u), vec2<u32>(61116u, 395u), vec2<u32>(20732u, 0u), vec2<u32>(26989u, 4294967295u), vec2<u32>(41736u, 4294967295u), vec2<u32>(4294967295u, 41419u), vec2<u32>(66333u, 50356u), vec2<u32>(62490u, 16016u), vec2<u32>(1u, 90521u), vec2<u32>(0u, 25061u), vec2<u32>(17848u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global0 = array<vec4<i32>, 27>();
    let var_0 = !select(!select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec2<bool>(true, true)))), false || (_wgslsmith_clamp_i32(2147483647i, 0i, u_input.e.x) != u_input.e.x));
    var var_1 = countOneBits(min(_wgslsmith_mult_i32(1i, 25337i), -reverseBits(u_input.e.x)));
    var var_2 = !vec3<bool>(var_0.x, var_0.x, var_0.x);
    var var_3 = _wgslsmith_f_op_f32(857f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -409f) + _wgslsmith_f_op_f32(1775f - -1000f)), _wgslsmith_f_op_f32(sign(-981f)))));
    return -1000f;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = vec4<u32>(~_wgslsmith_add_u32(~4294967295u, ~u_input.a << (4294967295u % 32u)), ~u_input.b.x, 9318u, ~u_input.b.x);
    global0 = array<vec4<i32>, 27>();
    let var_1 = Struct_1(u_input.e.wx);
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(68322u, 0u, 1u)))), arg_0.x, ~abs(countOneBits(global1[_wgslsmith_index_u32(u_input.a, 16u)])), -(~reverseBits(var_1.a.x))), var_1.a);
    global1 = array<vec2<u32>, 16>();
    return var_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    global0 = array<vec4<i32>, 27>();
    let var_0 = arg_3;
    let var_1 = select(vec3<bool>(true, true, true), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + arg_0.x))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(1857f + arg_0.x))));
    var var_2 = vec3<u32>(~0u, u_input.b.x, 81696u);
    var_2 = u_input.c.wzz;
    return arg_1;
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = false;
    global1 = array<vec2<u32>, 16>();
    var var_1 = vec4<u32>(~abs(arg_0), (arg_0 << (43314u % 32u)) & func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-263f, -323f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(350f, 328f)))), u_input.a, countOneBits(vec3<i32>(-38511i, 41757i, u_input.e.x)), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-511f, 1000f, -368f) + vec3<f32>(-373f, 662f, 651f)))), min(arg_0, 1u), select(arg_0, select(1u, 0u, u_input.e.x > _wgslsmith_div_i32(13294i, 2147483647i)), var_0));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1222f, -1333f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-671f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1428f, -355f) - vec3<f32>(-808f, 836f, 175f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(892f, -836f, 1104f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-658f, -205f, -880f) * vec3<f32>(729f, 777f, 466f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1017f, -1016f, -1000f))))), !any(!vec2<bool>(var_0, false))));
    var var_3 = select(!(!vec4<bool>(true, true, true, var_0)), select(!select(select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(false, var_0, var_0, true), true), vec4<bool>(var_0, var_0, true, false), u_input.a > u_input.c.x), !(!vec4<bool>(true, var_0, var_0, var_0)), false), true);
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = ~(~vec2<i32>(~(u_input.e.x ^ u_input.d), u_input.d));
    return Struct_2(729f, arg_2.x, ~select(~(~vec2<u32>(arg_0, u_input.a)), select(global1[_wgslsmith_index_u32(arg_0, 16u)], vec2<u32>(1u, arg_0), vec2<bool>(true, false)), arg_1), ~(_wgslsmith_sub_i32(u_input.d, u_input.d | u_input.e.x) & ~(-u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(min(-450f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-163f)) + 261f), 1f)))), -1000f, u_input.b, 0i);
    let var_2 = func_5(~(0u & _wgslsmith_div_u32(func_1(71843u), 37449u)), true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a, -683f, var_1.a), vec3<f32>(283f, var_1.a, -862f)))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_f_op_f32(639f + -1035f), -1426f))), all(vec4<bool>(true, true, true, true)))));
    let var_3 = 59332i;
    let var_4 = reverseBits(vec2<u32>(firstLeadingBit((var_1.c.x << (1u % 32u)) << (max(var_1.c.x, var_2.c.x) % 32u)), func_4(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.b, var_2.a), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-281f, var_1.a), vec2<f32>(var_1.b, var_2.a)))), 5228u, _wgslsmith_add_vec3_i32(u_input.e.yzy, u_input.e.xyz), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-11397i, 1i), vec2<i32>(u_input.d, var_2.d))))));
    let var_5 = vec3<bool>(!(true & (_wgslsmith_f_op_f32(-481f - -249f) < var_1.a)), !(!any(vec4<bool>(true, true, true, true))), !(!(!any(vec3<bool>(true, false, true)))));
    let var_6 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(755f, var_1.b)), -181f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1172f, var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(var_2.a - 1322f)))), vec2<u32>(~(~var_1.c.x), 1u), var_2.d), u_input.e.zz);
    global0 = array<vec4<i32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, max(countOneBits(var_1.c), select(vec2<u32>(12989u, var_6.a.c.x), ~vec2<u32>(var_1.c.x, var_1.c.x), vec2<bool>(var_5.x, false)) >> ((var_6.a.c | global1[_wgslsmith_index_u32(var_6.a.c.x, 16u)]) % vec2<u32>(32u))), vec4<u32>(_wgslsmith_add_u32(~(~33823u), _wgslsmith_mult_u32(var_1.c.x, 0u)), 37722u, ~(var_4.x | var_2.c.x), u_input.a), -3206i, u_input.e.zx);
}

