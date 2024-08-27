struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<vec4<bool>, 7>;

var<private> global2: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(52415i, i32(-2147483648)), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 7116i), vec2<i32>(1i, 13924i), vec2<i32>(0i, 0i), vec2<i32>(-6343i, 1i), vec2<i32>(40465i, i32(-2147483648)), vec2<i32>(-1i, -28251i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), 16438i), vec2<i32>(1i, -29866i), vec2<i32>(17305i, 0i), vec2<i32>(1i, -1i), vec2<i32>(-78611i, -47305i), vec2<i32>(1i, -1i), vec2<i32>(-22573i, -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 4559i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, 32117i), vec2<i32>(12420i, i32(-2147483648)));

var<private> global3: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-516f, -250f, -1851f, -533f), vec4<f32>(1191f, 862f, -265f, 542f), vec4<f32>(1000f, 1000f, -1056f, -2059f), vec4<f32>(-544f, -1000f, 1000f, -1046f), vec4<f32>(-1346f, 329f, -594f, -852f), vec4<f32>(743f, -1095f, 465f, -1190f), vec4<f32>(-846f, 282f, 349f, 411f), vec4<f32>(789f, 403f, -1305f, -1000f), vec4<f32>(-238f, 895f, -504f, -464f), vec4<f32>(-152f, -253f, -367f, 312f), vec4<f32>(-1177f, -908f, -1311f, -737f), vec4<f32>(851f, 564f, 194f, -1981f), vec4<f32>(1745f, -551f, 2304f, -771f), vec4<f32>(-1581f, 196f, 835f, -874f), vec4<f32>(-1899f, 117f, 792f, -506f), vec4<f32>(-382f, 814f, 2032f, -1593f), vec4<f32>(419f, 678f, -157f, -463f), vec4<f32>(-775f, 855f, -1333f, 1658f), vec4<f32>(-446f, 2273f, -188f, -994f), vec4<f32>(-123f, -2090f, 905f, 921f), vec4<f32>(-842f, 334f, -692f, 730f), vec4<f32>(1307f, 412f, -763f, 815f), vec4<f32>(1488f, -1034f, 1596f, -1000f), vec4<f32>(-241f, -970f, -1177f, 1000f), vec4<f32>(2093f, -1839f, 235f, 197f), vec4<f32>(1281f, 408f, -601f, 248f), vec4<f32>(-828f, 935f, -406f, -513f), vec4<f32>(1569f, -197f, -1202f, 821f), vec4<f32>(-969f, 227f, 488f, -398f), vec4<f32>(-1667f, -591f, 338f, 299f));

var<private> global4: array<vec2<u32>, 20>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    var var_0 = !global1[_wgslsmith_index_u32(14449u, 7u)];
    let var_1 = arg_1;
    let var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2555f, 621f, arg_1.b.x))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.d, -1203f, -1931f), vec3<f32>(-1687f, 701f, var_1.a), var_0.wyw)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1496f, arg_1.b.x, -126f)), vec3<f32>(_wgslsmith_f_op_f32(var_1.d * var_1.d), _wgslsmith_f_op_f32(-218f * 1341f), _wgslsmith_f_op_f32(abs(var_1.d)))))), vec2<i32>(-1i) * -(~vec2<i32>(0i, 2147483647i) | global2[_wgslsmith_index_u32(48864u, 21u)]));
    var var_3 = countOneBits(vec2<i32>(1i, _wgslsmith_mod_i32(1i, _wgslsmith_add_i32(arg_2.x, u_input.e))) >> (_wgslsmith_sub_vec2_u32(max(global4[_wgslsmith_index_u32(43285u, 20u)], vec2<u32>(var_1.e.x, 1u)), global4[_wgslsmith_index_u32((1u | u_input.d.x) | 14143u, 20u)]) % vec2<u32>(32u)));
    let var_4 = u_input.d.x;
    return var_1.a;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.d.x, 4294967295u, 88169u), Struct_1(arg_1.x, arg_1.zx, arg_3, arg_1.x, vec3<u32>(71782u, 1u, u_input.d.x)), vec4<i32>(u_input.b, arg_2.x, 1i, -4786i)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -2276f)))), arg_1.wz, !(!vec2<bool>(arg_3, false)))), true, 1145f, ~max(vec3<u32>(4294967295u, u_input.a.x ^ 1u, ~1u), u_input.a.yyz));
    global2 = array<vec2<i32>, 21>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-1524f * var_0.a), _wgslsmith_f_op_vec2_f32(select(arg_1.wx, _wgslsmith_f_op_vec2_f32(-arg_1.zz), select(vec2<bool>(true, true), !select(vec2<bool>(false, var_0.c), vec2<bool>(false, true), var_0.c), vec2<bool>(true, var_0.c)))), arg_3, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec3<u32>(37509u, 8852u, 0u), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(5567u, var_0.e.x, 0u, 0u)), 8u)], _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_2.x, arg_2.x, u_input.b), select(vec4<i32>(-20636i, 10557i, -2147483647i, u_input.e), vec4<i32>(-8905i, arg_2.x, 2147483647i, u_input.e), var_0.c)))), _wgslsmith_f_op_f32(-arg_1.x), var_0.c)), var_0.e);
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1956f), _wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-126f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, arg_1.x) - arg_0)), ~_wgslsmith_add_vec2_i32(vec2<i32>(~2147483647i, arg_2.x), vec2<i32>(-26265i, arg_2.x) ^ select(arg_2, u_input.c, vec2<bool>(true, false))));
    global1 = array<vec4<bool>, 7>();
    return var_1.e.x ^ u_input.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_clamp_vec3_u32(arg_0.e ^ arg_2.e, ~arg_1.e, vec3<u32>(_wgslsmith_mod_u32(min(28323u, 31679u) ^ (arg_1.e.x | 54426u), ~func_2(668f, global3[_wgslsmith_index_u32(arg_0.e.x, 30u)], global2[_wgslsmith_index_u32(u_input.a.x, 21u)], arg_2.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(39733u, 40922u, arg_0.e.x), vec3<u32>(arg_1.e.x, arg_0.e.x | arg_0.e.x, 4294967295u)), abs(~1u)));
    var var_1 = min(_wgslsmith_sub_i32(~(-20879i), -1i), 51964i);
    let var_2 = select(vec3<bool>(false, !(15582u > arg_0.e.x) & (max(3302u, var_0.x) == arg_2.e.x), true), !(!select(vec3<bool>(true, false, false), select(vec3<bool>(arg_0.c, arg_0.c, arg_2.c), vec3<bool>(arg_2.c, arg_1.c, true), arg_0.c), select(vec3<bool>(arg_0.c, arg_2.c, true), vec3<bool>(true, false, false), vec3<bool>(arg_1.c, arg_0.c, false)))), !vec3<bool>(true, arg_1.c || false, all(vec2<bool>(arg_2.c, true))));
    let var_3 = true;
    let var_4 = 18596i;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(vec4<bool>(!func_1(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(u_input.d.x, 8u)], vec3<f32>(175f, 1189f, 984f)), any(vec3<bool>(true, false, true)), any(vec2<bool>(true, true)), true)), true, !all(!select(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], vec4<bool>(true, true, true, true), false)), true);
    global0 = array<Struct_1, 8>();
    let var_1 = ~35701u;
    global4 = array<vec2<u32>, 20>();
    global4 = array<vec2<u32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(306f))))), -969f, u_input.a.xyx);
}

