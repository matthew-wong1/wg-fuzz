struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(13499i, -36812i, -11386i), 274f);

var<private> global1: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(21094i, 32507i), vec2<i32>(i32(-2147483648), 12589i), vec2<i32>(1i, 2147483647i), vec2<i32>(-48026i, -1i), vec2<i32>(-11975i, 1i), vec2<i32>(3048i, 31593i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, -20865i), vec2<i32>(-27548i, -12523i), vec2<i32>(-1i, 18917i), vec2<i32>(-23899i, 0i), vec2<i32>(2147483647i, 37393i), vec2<i32>(-30194i, -5241i), vec2<i32>(-40542i, -39177i), vec2<i32>(2147483647i, 19327i), vec2<i32>(-129005i, 53800i), vec2<i32>(-1i, 1i), vec2<i32>(28252i, -22881i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(1i, -37841i), vec2<i32>(i32(-2147483648), -1i));

var<private> global2: vec3<f32> = vec3<f32>(-1000f, -385f, -1804f);

var<private> global3: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    global1 = array<vec2<i32>, 21>();
    var var_0 = firstTrailingBit(_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, global0.a.x, 1i, 1685i), vec4<i32>(global0.a.x, global3.a.x, 1i, global3.a.x) ^ vec4<i32>(-1i, global3.a.x, u_input.a, 30921i)), global0.a.x));
    global0 = Struct_2(vec3<i32>(-15704i, ~u_input.a & -_wgslsmith_sub_i32(global0.a.x, u_input.a), firstTrailingBit(-_wgslsmith_div_i32(u_input.a, -1i))), global3.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.zy)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(global2.x - global0.b), _wgslsmith_f_op_f32(-global3.c)))))));
    let var_2 = Struct_1(vec3<bool>(any(global3.b.yx), true, true), -7844i, select(vec3<bool>(true && all(vec3<bool>(global3.b.x, false, false)), global3.b.x, true), select(select(!global3.b, vec3<bool>(global3.b.x, true, global3.b.x), any(vec4<bool>(global3.b.x, false, true, true))), select(select(global3.b, vec3<bool>(global3.b.x, false, global3.b.x), vec3<bool>(true, false, false)), !global3.b, global3.b.x), _wgslsmith_f_op_f32(-var_1.x) >= _wgslsmith_f_op_f32(floor(global0.b))), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(global0.b)), global3.c, _wgslsmith_f_op_f32(min(324f, 109f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, -932f, -1362f) * vec3<f32>(283f, 484f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-308f, 1000f, global3.c) - vec3<f32>(-356f, -274f, -1753f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1254f, var_1.x, -1129f), vec3<f32>(-1324f, global0.b, var_1.x), true)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b, global2.x, 1198f)))) + vec3<f32>(_wgslsmith_f_op_f32(max(-1441f, 1090f)), _wgslsmith_f_op_f32(trunc(global3.c)), _wgslsmith_f_op_f32(-1676f + global0.b)))), _wgslsmith_add_i32(_wgslsmith_mult_i32(-global3.a.x, abs(global3.a.x)), firstTrailingBit(u_input.a)));
    return ~(vec3<u32>(abs(~global3.e), global3.e, _wgslsmith_dot_vec4_u32(select(vec4<u32>(global3.e, global3.d, 68728u, 0u), vec4<u32>(global3.e, 4294967295u, global3.e, 4294967295u), true), vec4<u32>(global3.d, global3.e, global3.d, global3.d))) ^ (~(~vec3<u32>(0u, global3.e, 1u)) ^ ~(vec3<u32>(global3.e, global3.d, 87150u) & vec3<u32>(global3.d, global3.d, 0u))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    global0 = Struct_2(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-21295i, ~global3.a.x, reverseBits(39983i)), min(global0.a, global0.a) ^ select(global3.a.yww, global3.a.xwz, global3.b.x)), firstTrailingBit(min(-1i, reverseBits(40425i))), -1i), _wgslsmith_f_op_f32(global3.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))));
    var var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(select(global1[_wgslsmith_index_u32(38119u, 21u)], global0.a.xz, global3.b.zy)), vec2<i32>(1i, _wgslsmith_mult_i32(0i, -14219i))) & _wgslsmith_sub_i32(u_input.a | global0.a.x, -1i), u_input.a);
    var var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(global3.e, global3.e, global3.d) | vec3<u32>(20095u, global3.d, 0u), func_3(), !global3.b) & ~(~vec3<u32>(1u, global3.d, global3.d)), ~(~(~vec3<u32>(22815u, global3.e, 22416u)))), ~min(firstLeadingBit(vec3<u32>(0u, global3.d, 0u)) | ~vec3<u32>(global3.e, 12629u, 0u), ~vec3<u32>(4294967295u, 30452u, 10096u)));
    var var_2 = var_1.xy;
    return Struct_3(global3.a, vec3<bool>(!((true | global3.b.x) || global3.b.x), true || any(vec2<bool>(false, true)), any(select(vec2<bool>(false, global3.b.x), vec2<bool>(global3.b.x, false), global3.b.x || true))), 1346f, _wgslsmith_sub_u32(_wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_2.x, 4294967295u) ^ vec3<u32>(4294967295u, global3.d, 4294967295u), ~vec3<u32>(55640u, 95083u, global3.e))), _wgslsmith_div_u32(48049u, global3.d)), max(_wgslsmith_dot_vec3_u32((vec3<u32>(2670u, 26085u, global3.d) | vec3<u32>(1u, var_1.x, var_1.x)) << (vec3<u32>(global3.e, 38589u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(18278u, 0u, 68161u) ^ reverseBits(vec3<u32>(35013u, 20431u, global3.e))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(38489u, var_1.x, global3.d, 0u) << (vec4<u32>(var_1.x, global3.d, 1u, var_1.x) % vec4<u32>(32u)), abs(vec4<u32>(var_1.x, 1u, 1u, var_1.x)), all(vec4<bool>(false, true, false, false))), vec4<u32>(firstTrailingBit(var_2.x), var_2.x, 29178u, var_1.x))));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_3) -> vec3<bool> {
    global3 = arg_2;
    var var_0 = -1000f;
    var var_1 = ~4294967295u;
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, global2.x, global0.b, global2.x))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(812f + 343f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-381f * global2.x) + global2.x));
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec4<i32>(global0.a.x >> (10559u % 32u), -2147483647i, global0.a.x, -1i), !(!select(!vec3<bool>(global3.b.x, global3.b.x, true), vec3<bool>(false, global3.b.x, global3.b.x), func_1(vec4<i32>(-2147483647i, -13225i, 2147483647i, u_input.a), global0.a.x, Struct_3(global3.a, vec3<bool>(true, false, false), 293f, 4294967295u, global3.d)))), 130f, max(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -570f, global0.b, global3.c))).d ^ ~_wgslsmith_clamp_u32(40360u, global3.e, 75430u), _wgslsmith_add_u32(~global3.e, global3.e)), 1u);
    var var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(1u, global3.e, var_0.e, global3.e)), vec4<u32>(global3.d >> (var_0.d % 32u), global3.d, _wgslsmith_sub_u32(var_0.d, 1u), var_0.e)), ~((vec4<u32>(64041u, 1u, global3.e, global3.d) | vec4<u32>(0u, 6817u, 1u, global3.d)) | abs(vec4<u32>(global3.e, 27324u, 1u, global3.d)))), ~(~_wgslsmith_div_u32(_wgslsmith_sub_u32(88611u, var_0.d), _wgslsmith_dot_vec2_u32(vec2<u32>(10252u, 1u), vec2<u32>(19475u, global3.d)))));
    var_0 = Struct_3(global3.a, var_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c), 1314f)), global3.d, ~0u);
    var_0 = Struct_3(var_0.a, vec3<bool>(select(all(!vec4<bool>(var_0.b.x, true, true, true)), true, global3.b.x), true, var_0.b.x), _wgslsmith_div_f32(1000f, global3.c), var_0.d, firstTrailingBit(var_0.e));
    global3 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f) + _wgslsmith_f_op_f32(sign(-1537f))), var_0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -442f))), _wgslsmith_f_op_f32(f32(-1f) * -841f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 741f, -2535f, 490f)), vec4<f32>(134f, -892f, global3.c, -111f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 1069f, global3.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, -516f, 786f, global0.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1494f), 822f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(134f)))), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(329f, -252f, global3.c, global0.b), vec4<f32>(1577f, -478f, global0.b, -1253f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-590f, global2.x, -213f, global3.c) + vec4<f32>(global0.b, 310f, 1395f, 645f)))).c, 531f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-175f - global2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c * global0.b)))), ~1u, global0.b);
}

