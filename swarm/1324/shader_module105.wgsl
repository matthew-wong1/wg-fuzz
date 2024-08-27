struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4>;

var<private> global1: Struct_4 = Struct_4(vec3<f32>(-421f, 1305f, -1054f), vec3<u32>(1u, 4294967295u, 1u), Struct_3(vec4<f32>(-723f, 1000f, -1823f, -656f), 218f));

var<private> global2: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec4<f32>(-1901f, -1637f, 758f, -259f), -1000f), Struct_3(vec4<f32>(-773f, 1670f, 1000f, 1218f), -882f), Struct_3(vec4<f32>(-1554f, 201f, 433f, 190f), -1899f), Struct_3(vec4<f32>(978f, -1000f, -562f, -1693f), 1222f), Struct_3(vec4<f32>(-658f, 364f, -287f, -222f), 499f), Struct_3(vec4<f32>(344f, -585f, -453f, 1592f), -591f), Struct_3(vec4<f32>(828f, 1000f, 831f, -1780f), 1666f), Struct_3(vec4<f32>(-1089f, 470f, 889f, -614f), 346f), Struct_3(vec4<f32>(1068f, -270f, 241f, 995f), 1422f), Struct_3(vec4<f32>(-126f, 1166f, -1307f, 1405f), -1689f), Struct_3(vec4<f32>(1232f, -508f, 459f, 1573f), -461f), Struct_3(vec4<f32>(1000f, -908f, 1000f, 1408f), -1430f), Struct_3(vec4<f32>(-384f, -344f, -459f, 817f), 356f), Struct_3(vec4<f32>(798f, 909f, -396f, -140f), 1252f));

var<private> global3: vec2<bool>;

var<private> global4: array<u32, 4> = array<u32, 4>(10074u, 1u, 34720u, 976u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.c.a.x, -1126f, -1000f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.a.x, -430f, arg_0.a.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global1.a * arg_0.c.a.xxw)))))), arg_0.b, global1.c);
    global4 = array<u32, 4>();
    var var_1 = select(_wgslsmith_div_vec2_i32((abs(vec2<i32>(u_input.a.x, 2147483647i)) | ~vec2<i32>(8132i, u_input.c)) >> ((vec2<u32>(0u, 65998u) | ~u_input.b.zz) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(abs(12538u), 4u)]), u_input.a.xy, vec2<bool>(~(-2147483647i) > (_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c), global0[_wgslsmith_index_u32(4294967295u, 4u)]) ^ 1i), true || all(vec4<bool>(global3.x, global3.x, false, true))));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 4u)];
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.c.a))), global1.c.a.x);
    return -968f;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(1139f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-896f - _wgslsmith_f_op_f32(func_3(Struct_4(vec3<f32>(global1.a.x, global1.c.a.x, -1622f), global1.b, Struct_3(vec4<f32>(-1471f, global1.a.x, -1025f, -394f), global1.c.b))))) * _wgslsmith_div_f32(global1.a.x, -326f)));
    let var_1 = Struct_4(vec3<f32>(1362f, _wgslsmith_f_op_f32(f32(-1f) * -407f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), -243f)), vec3<u32>(41900u, _wgslsmith_dot_vec3_u32(vec3<u32>(13119u, 1u, global4[_wgslsmith_index_u32(global1.b.x, 4u)]), arg_0 << (vec3<u32>(4294967295u, arg_0.x, 75206u) % vec3<u32>(32u))), min(~0u, 47016u)) ^ ~u_input.b, global1.c);
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(round(var_1.a)), select(abs(global1.b) & ~(~global1.b), arg_0, !vec3<bool>(all(vec2<bool>(global3.x, true)), true | global3.x, false)), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(global1.c.a.x * var_1.a.x), -707f, _wgslsmith_f_op_f32(select(-846f, 2179f, !global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))), var_1.c.a.x));
    global4 = array<u32, 4>();
    global1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(774f)), var_1.c.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-416f, 546f)), _wgslsmith_f_op_f32(f32(-1f) * -1167f))), _wgslsmith_add_vec3_u32(~(_wgslsmith_mod_vec3_u32(u_input.b, global1.b) >> (_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(0u, global4[_wgslsmith_index_u32(var_1.b.x, 4u)], 0u)) % vec3<u32>(32u))), ~vec3<u32>(1u, firstTrailingBit(var_1.b.x), 4294967295u)), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1.a.x, -590f), 646f, -149f, _wgslsmith_f_op_f32(round(627f))) - vec4<f32>(_wgslsmith_f_op_f32(global1.a.x - global1.c.b), _wgslsmith_f_op_f32(-global1.c.b), _wgslsmith_f_op_f32(f32(-1f) * -1301f), var_1.c.a.x)), -623f));
    return Struct_2(i32(-1i) * -2147483647i, vec2<bool>(true || !(global1.a.x >= global1.c.b), u_input.c >= max(4562i, ~u_input.c)), Struct_1(select(select(3221u, var_1.b.x, true), 4294967295u, all(vec3<bool>(false, global3.x, global3.x))), false), Struct_1(~(~24741u), all(select(select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(true, true, global3.x, false), vec4<bool>(global3.x, false, false, global3.x)), !vec4<bool>(global3.x, false, true, true), !vec4<bool>(false, global3.x, global3.x, true)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> Struct_4 {
    global3 = func_2(_wgslsmith_div_vec3_u32(max(global1.b << (_wgslsmith_div_vec3_u32(vec3<u32>(global1.b.x, arg_2.c.a, global4[_wgslsmith_index_u32(15976u, 4u)]), vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 4u)], arg_0.c.a, 1u)) % vec3<u32>(32u)), vec3<u32>(~global4[_wgslsmith_index_u32(arg_0.d.a, 4u)], ~42368u, u_input.d)), vec3<u32>(_wgslsmith_clamp_u32(arg_0.d.a, arg_0.c.a >> (0u % 32u), 10117u), firstTrailingBit(~21927u), 27362u))).b;
    global0 = array<vec2<i32>, 4>();
    global4 = array<u32, 4>();
    global3 = arg_0.b;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-675f - _wgslsmith_f_op_f32(f32(-1f) * -377f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(global1.c.a.xwx, global1.b, Struct_3(global1.c.a, -258f)))) + -1000f)) + -1358f));
    return Struct_4(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-875f * arg_1))))), vec3<u32>(abs(max(global1.b.x, 47900u)), firstLeadingBit(min(24770u, ~global4[_wgslsmith_index_u32(arg_0.c.a, 4u)])), select(~(~1u), max(u_input.b.x & global1.b.x, 15022u), arg_2.d.b)), global2[_wgslsmith_index_u32(34036u, 14u)]);
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1322f)) * -1221f)), global1.c.a.zy);
    let var_1 = -(reverseBits(_wgslsmith_mult_vec3_i32(firstTrailingBit(u_input.a), _wgslsmith_mult_vec3_i32(u_input.a, u_input.a))) & vec3<i32>(abs(-u_input.c), u_input.a.x | abs(-1i), _wgslsmith_div_i32(u_input.a.x, u_input.a.x)));
    return func_4(func_2(~vec3<u32>(u_input.b.x, 34090u, global1.b.x)), _wgslsmith_f_op_f32(-global1.a.x), Struct_2(min(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_1.x, u_input.a.x), -63936i), ~(-1i)), vec2<bool>(global3.x, any(vec3<bool>(global3.x, true, false)) | true), func_2(~(~vec3<u32>(u_input.d, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.b.x, 4u)], 4u)], 11910u))).c, Struct_1(global4[_wgslsmith_index_u32(global1.b.x, 4u)], all(select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(false, global3.x, false), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.x;
    let var_1 = func_1();
    var var_2 = firstLeadingBit(-(select(select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, u_input.c), vec4<i32>(u_input.a.x, -55585i, u_input.a.x, u_input.a.x), vec4<bool>(global3.x, true, global3.x, global3.x)), min(vec4<i32>(-19881i, -1i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, -3870i, 1i, -21988i)), !vec4<bool>(global3.x, true, global3.x, global3.x)) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(7680u, global1.b.x, 23768u, global1.b.x), ~vec4<u32>(global4[_wgslsmith_index_u32(u_input.d, 4u)], 49906u, global4[_wgslsmith_index_u32(84428u, 4u)], 1u), ~vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 4u)], u_input.d, u_input.d, 1u)) % vec4<u32>(32u))));
    var var_3 = Struct_5(vec2<i32>(_wgslsmith_add_i32(var_2.x, -_wgslsmith_mult_i32(u_input.c, 46482i)), firstTrailingBit(abs(var_2.x << (global4[_wgslsmith_index_u32(19662u, 4u)] % 32u)))), Struct_1(~_wgslsmith_div_u32(_wgslsmith_sub_u32(var_1.b.x, 26063u), 84902u), any(select(vec2<bool>(global3.x, true), select(vec2<bool>(global3.x, false), vec2<bool>(true, false), vec2<bool>(true, global3.x)), global3.x))));
    var var_4 = firstLeadingBit(var_2.zwy);
    let var_5 = !(!select(select(!vec3<bool>(global3.x, global3.x, global3.x), select(vec3<bool>(false, true, var_3.b.b), vec3<bool>(global3.x, var_3.b.b, global3.x), vec3<bool>(global3.x, var_3.b.b, global3.x)), all(vec4<bool>(true, true, global3.x, false))), select(vec3<bool>(global3.x, false, false), vec3<bool>(global3.x, global3.x, true), !global3.x), select(vec3<bool>(false, var_3.b.b, false), vec3<bool>(global3.x, global3.x, true), !vec3<bool>(false, var_3.b.b, false))));
    var var_6 = var_2.x;
    global0 = array<vec2<i32>, 4>();
    var var_7 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(-11491i, ~vec3<u32>(firstTrailingBit(~global1.b.x), _wgslsmith_mod_u32(~u_input.d, ~9213u), (global1.b.x ^ u_input.b.x) << (~5094u % 32u)), var_3.b.a & 1u, u_input.b, 9457i);
}

