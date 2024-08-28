struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13>;

var<private> global1: vec3<i32> = vec3<i32>(1i, -30505i, 23301i);

var<private> global2: f32 = -2149f;

var<private> global3: vec3<i32> = vec3<i32>(i32(-2147483648), i32(-2147483648), -33855i);

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<f32>(345f, -1841f), false, 11495u), Struct_1(vec2<f32>(-500f, 1646f), true, 12325u), Struct_1(vec2<f32>(-246f, -306f), true, 0u), Struct_1(vec2<f32>(1000f, -663f), true, 62526u), Struct_1(vec2<f32>(950f, -439f), true, 4294967295u), Struct_1(vec2<f32>(1000f, 713f), false, 29566u), Struct_1(vec2<f32>(-643f, 154f), false, 4294967295u), Struct_1(vec2<f32>(-910f, -353f), false, 0u), Struct_1(vec2<f32>(-1853f, -1357f), false, 6888u), Struct_1(vec2<f32>(695f, 404f), false, 62429u), Struct_1(vec2<f32>(-3296f, -1306f), true, 1u), Struct_1(vec2<f32>(-1532f, -1337f), false, 1u), Struct_1(vec2<f32>(-904f, 1661f), false, 4294967295u), Struct_1(vec2<f32>(-506f, -1543f), true, 49251u), Struct_1(vec2<f32>(-604f, -2794f), false, 4294967295u), Struct_1(vec2<f32>(-658f, -1000f), true, 12042u), Struct_1(vec2<f32>(-528f, -1000f), true, 1u), Struct_1(vec2<f32>(1173f, 1000f), true, 1u), Struct_1(vec2<f32>(-465f, 162f), false, 52447u), Struct_1(vec2<f32>(1098f, 972f), true, 28787u), Struct_1(vec2<f32>(-310f, -137f), true, 606u), Struct_1(vec2<f32>(1557f, 240f), true, 0u), Struct_1(vec2<f32>(341f, -973f), false, 37428u), Struct_1(vec2<f32>(1260f, -783f), true, 4294967295u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: u32) -> u32 {
    let var_0 = !arg_0;
    var var_1 = vec4<i32>(global3.x, ((countOneBits(-2147483647i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.x, 1u), vec2<u32>(arg_1.c.x, 13815u)) % 32u)) ^ u_input.a.x) & 0i, ~(~(~_wgslsmith_mult_i32(46553i, global3.x))), _wgslsmith_sub_i32(-u_input.a.x, 2147483647i));
    let var_2 = var_1.x;
    global2 = 1636f;
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -270f);
    return arg_2 ^ _wgslsmith_add_u32(select(~(arg_1.a.x ^ 4294967295u), 0u, all(vec4<bool>(false, arg_0.x, false, false))), arg_1.c.x >> (55018u % 32u));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: f32, arg_3: i32) -> vec4<i32> {
    var var_0 = 1u;
    global0 = array<Struct_4, 13>();
    var var_1 = vec4<bool>(!((func_3(vec2<bool>(false, true), Struct_4(vec3<u32>(1u, 5902u, 0u), vec2<f32>(-769f, arg_2), vec4<u32>(1u, 119396u, 59831u, 5704u)), 75511u) >= 81973u) && false), any(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))))), !(true | any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true))), true);
    var var_2 = _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_3, i32(-1i) * -1i, -28004i, 2147483647i), vec4<i32>(-64439i, 1i, 54637i, -((arg_0.x >> (0u % 32u)) ^ u_input.a.x)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 322f))))), select(true, var_1.x, all(vec4<bool>(var_1.x, var_1.x, true, var_1.x))), select(firstLeadingBit(~15290u), ~(~1u), true)), var_1.yxw, Struct_1(vec2<f32>(-1604f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2)) - _wgslsmith_f_op_f32(max(-2553f, arg_2)))), any(!select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(false, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x))), 3560u), _wgslsmith_f_op_vec4_f32(vec4<f32>(1075f, _wgslsmith_f_op_f32(floor(arg_2)), -862f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_2))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2, 561f, arg_2, arg_2))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(284f, 1497f, 531f, -128f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(247f, arg_2, arg_2, 501f)))))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(global1.x, countOneBits(global1.x), arg_0.x, _wgslsmith_sub_i32(arg_3, -27195i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-6791i ^ arg_0.x, var_2.x << (20328u % 32u), 1i, arg_3 | 4363i), -reverseBits(vec4<i32>(arg_0.x, -1i, arg_3, -1i))), max(reverseBits(vec4<i32>(arg_1, 1i, 1i, var_2.x) >> (vec4<u32>(4294967295u, 0u, 44180u, 23605u) % vec4<u32>(32u))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, 15913i, arg_3, arg_1), vec4<i32>(global1.x, 14677i, arg_3, var_2.x), vec4<i32>(arg_0.x, global3.x, 1i, -51483i))))));
    return abs(var_3.e | _wgslsmith_mod_vec4_i32(select(var_3.e, var_3.e, select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(var_1.x, var_1.x, true, var_3.b.x), vec4<bool>(true, var_1.x, true, var_1.x))), -firstTrailingBit(var_3.e)));
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = func_2(min(abs(global3.xx), _wgslsmith_div_vec2_i32(~(-vec2<i32>(0i, global1.x)), vec2<i32>(~global1.x, max(-1i, global1.x)))), 15458i, _wgslsmith_f_op_f32(f32(-1f) * -1119f), ~(i32(-1i) * -max(global1.x, 1i)));
    global3 = -vec3<i32>(-6542i, -abs(select(global3.x, -54242i, true)), global3.x);
    global4 = array<Struct_1, 24>();
    global4 = array<Struct_1, 24>();
    let var_1 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 29033u, 18658u, 1u), min(vec4<u32>(9799u, 1u, 50675u, 80508u), vec4<u32>(1u, 1u, 1u, 1u))) >> (_wgslsmith_sub_u32(1u, ~(~1u)) % 32u), 24u)], vec3<bool>(!all(vec2<bool>(true, true)), true, any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(false, false, true, true), 2785f >= arg_0))), Struct_1(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)), false, 0u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + 746f) - arg_0), -230f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1587f, _wgslsmith_f_op_f32(sign(474f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-680f * arg_0)))), vec4<i32>(i32(-1i) * -2147483647i, -(~0i), -1i, min(~u_input.a.x, 0i)));
    return Struct_3(Struct_2(global4[_wgslsmith_index_u32(~(~var_1.c.c), 24u)], vec3<bool>(var_1.c.b, any(select(vec4<bool>(var_1.b.x, true, false, var_1.b.x), vec4<bool>(var_1.c.b, true, var_1.a.b, true), vec4<bool>(true, true, var_1.c.b, var_1.c.b))), true), Struct_1(vec2<f32>(-338f, _wgslsmith_div_f32(arg_0, arg_0)), !var_1.b.x, var_1.a.c), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0, arg_0)), var_1.d.x), var_1.c.a.x, arg_0, -418f), var_1.e), vec2<u32>(0u, var_1.a.c & firstLeadingBit(28389u)), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -_wgslsmith_div_vec3_i32(-select(u_input.a, min(u_input.a, vec3<i32>(34363i, -62983i, global3.x)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), min(~u_input.a, ~(u_input.a << (vec3<u32>(30598u, 1u, 1u) % vec3<u32>(32u)))));
    let var_0 = func_1(_wgslsmith_div_f32(-595f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1149f - _wgslsmith_f_op_f32(round(-797f))))));
    let var_1 = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.a.x + _wgslsmith_div_f32(427f, -368f))))));
    var var_2 = var_0.a.a;
    var var_3 = _wgslsmith_clamp_u32(abs(4294967295u), ~countOneBits(~2389u & var_0.b.x), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(var_2.c, var_1.a.c.c, 71423u)), ~vec3<u32>(0u, var_2.c, var_2.c)), ~vec3<u32>(13769u, var_2.c, 1u)));
    let var_4 = ~_wgslsmith_mod_u32(var_0.b.x, 47370u >> (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(32455u, var_1.a.c.c), var_0.b), var_1.b) % 32u));
    global1 = var_0.a.e.xwx & min(vec3<i32>(_wgslsmith_clamp_i32(2578i, _wgslsmith_mod_i32(23996i, global3.x), -global3.x), _wgslsmith_dot_vec3_i32(var_0.a.e.wxy, vec3<i32>(u_input.a.x, 52778i, global3.x)), global1.x), func_2(global1.yx, -25433i | u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + var_2.a.x)), 0i).xwx);
    let var_5 = var_1.c;
    let var_6 = select(var_5.xy, vec2<bool>(var_0.a.e.x != (i32(-1i) * -global1.x), var_0.a.a.b), -111f >= _wgslsmith_f_op_f32(floor(var_1.a.c.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.c.c, ~countOneBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, var_0.b.x, var_0.b.x), vec4<u32>(var_4, 44633u, var_1.a.a.c, var_0.b.x))), var_1.a.d.yzw, vec3<u32>(var_1.a.a.c, 4294967295u, var_4));
}

