struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_2, 6>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: bool, arg_3: u32) -> u32 {
    let var_0 = u_input.a.x;
    global3 = array<Struct_2, 6>();
    global3 = array<Struct_2, 6>();
    return 1u;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = arg_0.d.c.x;
    global0 = select(reverseBits(-(~arg_0.d.c.x)) & -1i, _wgslsmith_dot_vec3_i32(arg_0.d.c, min(_wgslsmith_add_vec3_i32(-arg_0.d.c, _wgslsmith_sub_vec3_i32(arg_0.d.c, arg_0.d.c)), arg_0.d.c)), !global2.x);
    let var_1 = firstTrailingBit(_wgslsmith_mod_i32(~countOneBits(arg_0.d.c.x) ^ ~(var_0 ^ arg_0.d.c.x), min(var_0, arg_0.d.c.x)));
    global0 = var_1;
    global2 = !arg_0.d.d;
    return Struct_3(vec3<u32>(~_wgslsmith_mult_u32(arg_0.a.x, _wgslsmith_mult_u32(arg_0.d.e.a, 0u)), ~(~func_2(vec4<bool>(global2.x, true, global2.x, true), 4294967295u, global2.x, arg_0.d.e.b)), _wgslsmith_mod_u32(u_input.a.x, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)) * _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1284f, arg_0.b, arg_0.c.x, arg_0.b) + vec4<f32>(arg_0.c.x, -655f, -1094f, 1287f)) * _wgslsmith_f_op_vec4_f32(-arg_0.c))), arg_0.d.a)), global3[_wgslsmith_index_u32(1089u, 6u)]);
}

fn func_3(arg_0: bool) -> i32 {
    global0 = abs(31189i);
    let var_0 = func_1(Struct_3(u_input.a, _wgslsmith_f_op_f32(-func_1(func_1(Struct_3(vec3<u32>(u_input.a.x, u_input.a.x, 36588u), -726f, vec4<f32>(294f, -515f, -319f, -1000f), global3[_wgslsmith_index_u32(u_input.a.x, 6u)]))).c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-461f - 1000f), _wgslsmith_f_op_f32(-1312f - 331f), _wgslsmith_f_op_f32(trunc(1369f)), 1f)), Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2160f, 342f, -585f, 1688f), vec4<f32>(266f, -385f, 656f, 508f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(311f, 1000f, -198f, -1555f), vec4<f32>(1160f, -1508f, -1686f, -398f))))), _wgslsmith_f_op_f32(f32(-1f) * -1235f), firstLeadingBit(vec3<i32>(-45162i, 9968i, -26106i)) >> (vec3<u32>(5314u, u_input.b.x, 9493u) % vec3<u32>(32u)), !func_1(Struct_3(vec3<u32>(1u, 90393u, u_input.b.x), -1484f, vec4<f32>(1000f, -235f, 1779f, 1080f), global3[_wgslsmith_index_u32(u_input.a.x, 6u)])).d.d, Struct_1(16874u, 1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(497f, -1000f))))));
    var var_1 = var_0.d;
    let var_2 = true;
    var var_3 = vec4<u32>(var_0.d.e.a, 11214u, ~func_2(!vec4<bool>(var_1.d.x, global2.x, true, var_1.d.x), u_input.a.x, any(vec2<bool>(true, true)), var_0.a.x ^ 0u) >> ((_wgslsmith_clamp_u32(~var_1.e.b, 0u, ~0u) | 13650u) % 32u), abs(firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 1u, var_1.e.b, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, var_0.d.e.a, 45420u), vec4<u32>(20280u, u_input.b.x, 92448u, var_1.e.b))))));
    return 8527i;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-103f, -1249f, _wgslsmith_f_op_f32(max(-303f, 1f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1963f - -209f), _wgslsmith_f_op_f32(2117f + -1000f), -707f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -217f), 1536f, 832f), _wgslsmith_f_op_vec3_f32(vec3<f32>(555f, 877f, 690f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-183f, -2218f, 1000f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1000f, -617f) - vec3<f32>(1726f, -342f, -157f)))))), !(!vec3<bool>(false, true, global2.x)))));
    let var_1 = Struct_3(reverseBits(u_input.a), var_0.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -1000f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-479f, var_0.x, -736f, 936f), vec4<f32>(var_0.x, -239f, var_0.x, 1289f)))))))), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2565f, var_0.x, var_0.x, var_0.x)))))), var_0.x, -arg_0.wzz, func_1(Struct_3(~vec3<u32>(u_input.b.x, 4294967295u, 1u), _wgslsmith_f_op_f32(min(var_0.x, -1312f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 933f)), func_1(Struct_3(u_input.a, var_0.x, vec4<f32>(var_0.x, var_0.x, 1461f, 1410f), Struct_2(vec4<f32>(var_0.x, var_0.x, 2415f, var_0.x), 577f, vec3<i32>(32858i, 18960i, -2147483647i), vec2<bool>(global2.x, false), Struct_1(arg_1, arg_1, vec2<f32>(var_0.x, var_0.x))))).d)).d.d, func_1(Struct_3(~vec3<u32>(52595u, arg_1, 1u), 1000f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 849f, 1441f, var_0.x)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1, u_input.a.x), 6u)])).d.e));
    let var_2 = func_1(Struct_3(var_1.a, 128f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-var_0.x), var_1.d.e.c.x, _wgslsmith_f_op_f32(259f - -137f)) + vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), var_1.d.b, var_0.x, _wgslsmith_f_op_f32(-1000f - var_1.c.x))), global3[_wgslsmith_index_u32(~reverseBits(u_input.b.x) >> (18016u % 32u), 6u)])).d.e;
    global3 = array<Struct_2, 6>();
    let var_3 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c.x))))));
    return var_1.d;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_4 {
    let var_0 = Struct_2(vec4<f32>(138f, -681f, -1887f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.d.e.c.x * arg_0.c.x), _wgslsmith_div_f32(1376f, -1100f))), arg_1.a.x))), -209f, func_4(abs(vec4<i32>(select(arg_1.c.x, arg_0.d.c.x, true), ~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.x, arg_1.c.x), arg_0.d.c.yy), -arg_0.d.c.x)), 0u).c, !select(arg_0.d.d, arg_0.d.d, select(!vec2<bool>(arg_0.d.d.x, arg_1.d.x), !vec2<bool>(false, arg_1.d.x), !arg_1.d)), func_1(func_1(arg_0)).d.e);
    global0 = arg_1.c.x;
    let var_1 = Struct_1(61690u, 0u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1244f, arg_1.e.c.x) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.d.a.x * -250f), _wgslsmith_f_op_f32(-arg_1.b)))), _wgslsmith_f_op_f32(floor(arg_1.e.c.x))));
    var var_2 = reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(max(var_1.b, _wgslsmith_mult_u32(12710u, 1u)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.e.a, 3513u, 4294967295u, arg_1.e.a), vec4<u32>(22247u, 114616u, 29762u, 0u)), ~vec4<u32>(32739u, 0u, var_1.a, arg_0.a.x))), abs(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(56010u, var_0.e.b), u_input.b)))));
    var var_3 = ~abs(28355u);
    return Struct_4(-1483f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(Struct_3(~_wgslsmith_sub_vec3_u32(u_input.a, u_input.a), -135f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1504f, -244f, 268f), vec4<f32>(-1014f, 712f, -619f, 464f)))), Struct_2(vec4<f32>(987f, 1832f, -930f, -956f), _wgslsmith_f_op_f32(floor(-198f)), vec3<i32>(12289i, 29397i, -50631i), vec2<bool>(false, true), Struct_1(u_input.b.x, 4294967295u, vec2<f32>(2316f, -742f))))), func_4(vec4<i32>(-(1i << (u_input.b.x % 32u)), 2147483647i, ~func_3(global2.x), abs(1i)), 0u));
    global0 = -2147483647i;
    global1 = u_input.b.x;
    var var_1 = func_1(Struct_3(u_input.a, -343f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-972f, 1000f, -173f, var_0.a) * vec4<f32>(698f, -1633f, 1049f, var_0.a))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a, 773f, -921f, var_0.a))))))), global3[_wgslsmith_index_u32(0u, 6u)])).d;
    var var_2 = ~(~_wgslsmith_mult_vec4_u32(select(~vec4<u32>(u_input.b.x, u_input.b.x, var_1.e.a, 4294967295u), ~vec4<u32>(4294967295u, var_1.e.b, u_input.b.x, 6287u), vec4<bool>(true, false, false, true)), vec4<u32>(abs(var_1.e.a), 1u, ~26106u, 87888u << (var_1.e.b % 32u))));
    global1 = ~func_2(!vec4<bool>(select(var_1.d.x, var_1.d.x, global2.x), all(var_1.d), var_1.d.x | true, global2.x), var_1.e.b, !var_1.d.x, u_input.a.x);
    let var_3 = _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 0i, var_1.c.x), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -43572i, -1i), -vec3<i32>(var_1.c.x, ~(-41599i), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(-227f, ~firstLeadingBit(var_1.c), ~(u_input.a.yx & u_input.a.yx), ~vec2<u32>(~54137u, countOneBits(18803u)));
}

