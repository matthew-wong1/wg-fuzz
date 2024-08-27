struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 16>;

var<private> global2: array<Struct_5, 24> = array<Struct_5, 24>(Struct_5(vec4<f32>(1032f, 2344f, -105f, -1023f)), Struct_5(vec4<f32>(661f, 432f, -294f, -761f)), Struct_5(vec4<f32>(-717f, 1622f, -173f, 2167f)), Struct_5(vec4<f32>(-249f, -982f, 295f, 170f)), Struct_5(vec4<f32>(-1874f, 1060f, 788f, -718f)), Struct_5(vec4<f32>(-513f, -487f, -550f, -261f)), Struct_5(vec4<f32>(812f, -955f, -1364f, 225f)), Struct_5(vec4<f32>(868f, 1036f, 323f, -780f)), Struct_5(vec4<f32>(-459f, 1000f, 174f, -1353f)), Struct_5(vec4<f32>(-1000f, -252f, -750f, 1018f)), Struct_5(vec4<f32>(177f, 1786f, -918f, 1195f)), Struct_5(vec4<f32>(1164f, -1199f, -1909f, 1528f)), Struct_5(vec4<f32>(214f, 548f, 1532f, 722f)), Struct_5(vec4<f32>(250f, 986f, -3439f, -143f)), Struct_5(vec4<f32>(-597f, 125f, -2045f, 602f)), Struct_5(vec4<f32>(381f, 2365f, 752f, 1361f)), Struct_5(vec4<f32>(-523f, 1475f, -1801f, 1396f)), Struct_5(vec4<f32>(-544f, -248f, -513f, -1000f)), Struct_5(vec4<f32>(-107f, 2389f, -1544f, 1033f)), Struct_5(vec4<f32>(-2368f, 2051f, -1000f, 415f)), Struct_5(vec4<f32>(524f, -646f, -605f, 1645f)), Struct_5(vec4<f32>(-284f, 107f, -409f, 1530f)), Struct_5(vec4<f32>(530f, 1000f, -183f, 1374f)), Struct_5(vec4<f32>(-2066f, -356f, 539f, -1567f)));

var<private> global3: Struct_4;

var<private> global4: array<Struct_3, 15>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_5) -> bool {
    global1 = array<Struct_1, 16>();
    global3 = Struct_4(_wgslsmith_add_i32(2147483647i, max(global3.b.a.x, -2147483647i)), Struct_1(global3.b.a, abs(vec4<u32>(arg_0.a, _wgslsmith_div_u32(global3.b.c.x, 40798u), 1u, global3.b.c.x)), vec4<u32>(0u, arg_0.a, 1u, arg_0.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1198f * arg_0.c) - _wgslsmith_f_op_f32(108f - arg_3.a.x)), 620f))), vec2<bool>(global3.c.x, _wgslsmith_clamp_i32(41075i << (arg_0.a % 32u), u_input.a, 65424i << (arg_0.a % 32u)) == ~_wgslsmith_sub_i32(u_input.a, -1i)));
    global1 = array<Struct_1, 16>();
    let var_0 = select(vec2<bool>((_wgslsmith_dot_vec3_u32(vec3<u32>(global3.b.c.x, global3.b.b.x, arg_0.a), global3.b.c.yyx) <= arg_0.a) & global3.c.x, !(!global3.c.x && true)), vec2<bool>(all(select(arg_2, !arg_2, true)), select(!arg_2.x, !any(vec2<bool>(true, arg_2.x)), !(false & arg_2.x))), false);
    global0 = _wgslsmith_mult_u32(arg_0.a, ~_wgslsmith_mult_u32(~62440u | global3.b.c.x, 115250u));
    return all(!(!select(vec4<bool>(true, true, global3.c.x, arg_2.x), !vec4<bool>(arg_2.x, global3.c.x, arg_2.x, var_0.x), arg_2.x)));
}

fn func_2() -> f32 {
    let var_0 = -1000f;
    var var_1 = global3.b.d;
    var var_2 = 2790f;
    var var_3 = Struct_3(-2147483647i, select(global3.b.b.xxx, select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.b.b.x, 37997u, global3.b.b.x), vec3<u32>(34581u, global3.b.c.x, global3.b.c.x)), global3.b.c.x, 4294967295u), ~(~global3.b.c.xww), !select(vec3<bool>(false, global3.c.x, true), vec3<bool>(global3.c.x, global3.c.x, global3.c.x), vec3<bool>(false, true, false))), vec3<bool>(global3.b.d > _wgslsmith_f_op_f32(f32(-1f) * -1023f), !(!global3.c.x), func_3(Struct_2(0u, vec4<f32>(var_0, var_0, global3.b.d, var_0), var_0, var_0), _wgslsmith_f_op_f32(max(var_0, 1738f)), !vec3<bool>(true, true, global3.c.x), Struct_5(vec4<f32>(1000f, global3.b.d, 285f, global3.b.d))))));
    var_3 = global4[_wgslsmith_index_u32(20194u, 15u)];
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(global3.b.d * -217f))), var_0))));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.b.d, 1000f, arg_1, arg_1), vec4<f32>(-1242f, global3.b.d, 419f, -407f), arg_2.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(exp2(global3.b.d)), _wgslsmith_f_op_f32(arg_1 * 626f), _wgslsmith_div_f32(arg_1, -380f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1816f, 444f, global3.b.d, 2403f)), vec4<f32>(-1479f, 683f, 1528f, -1484f)))));
    var var_1 = u_input.a;
    var var_2 = any(select(arg_2, select(vec4<bool>(any(vec4<bool>(true, false, false, global3.c.x)), arg_2.x, false, true), vec4<bool>(arg_2.x, arg_0.x <= 0u, true, global3.c.x), select(arg_2, !vec4<bool>(true, false, arg_2.x, true), false)), arg_2));
    let var_3 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(global3.a, u_input.a, u_input.a, global3.a)) | _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global3.b.a.x, u_input.a, u_input.a), vec4<i32>(1i, -2434i, u_input.a, -25176i)), abs(vec4<i32>(2147483647i, global3.b.a.x, u_input.a, -55907i)) & ~vec4<i32>(u_input.a, -2147483647i, 2147483647i, u_input.a));
    let var_4 = func_3(Struct_2(20868u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.b.d, -295f, _wgslsmith_div_f32(-1310f, -1479f), _wgslsmith_f_op_f32(step(-1155f, global3.b.d))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.d - global3.b.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(select(2275f, -1232f, global3.c.x)))) - -709f)), global3.b.d, !select(select(vec3<bool>(true, false, true), select(arg_2.zxx, vec3<bool>(global3.c.x, arg_2.x, false), arg_2.x), arg_2.wxz), vec3<bool>(true, true, true), select(arg_2.zxz, !vec3<bool>(global3.c.x, arg_2.x, global3.c.x), vec3<bool>(arg_2.x, global3.c.x, arg_2.x))), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_0.x, global3.b.c.x), 24u)]);
    return Struct_2(~(_wgslsmith_div_u32(~0u, ~global3.b.c.x) >> (22816u % 32u)), vec4<f32>(arg_1, 2414f, -418f, -1122f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2046f, 214f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-941f)))));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: vec4<i32>) -> Struct_4 {
    let var_0 = !(global3.c.x && !global3.c.x);
    global0 = _wgslsmith_add_u32(arg_0.a, _wgslsmith_dot_vec3_u32(global3.b.c.xwz, global3.b.c.zww));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1185f);
    global0 = arg_0.a << (4804u % 32u);
    global0 = arg_0.a >> (~(func_4(vec2<u32>(4294967295u, global3.b.b.x), _wgslsmith_f_op_f32(global3.b.d + -1225f), select(vec4<bool>(var_0, global3.c.x, false, global3.c.x), vec4<bool>(true, true, global3.c.x, var_0), true)).a | countOneBits(global3.b.b.x)) % 32u);
    return Struct_4(-1i, Struct_1(global3.b.a, ~vec4<u32>(78763u, select(1u, 0u, true), countOneBits(291u), _wgslsmith_mult_u32(global3.b.b.x, 0u)), min(global3.b.b, vec4<u32>(~global3.b.b.x, global3.b.b.x, arg_0.a, ~arg_0.a)), arg_0.b.x), !global3.c);
}

fn func_1(arg_0: u32) -> Struct_5 {
    var var_0 = !global3.c.x;
    var var_1 = vec2<bool>(false, true);
    global3 = func_5(func_4(global3.b.b.wz, global3.b.d, vec4<bool>(0i >= _wgslsmith_clamp_i32(-1i, global3.a, u_input.a), -692f > _wgslsmith_f_op_f32(func_2()), true, true)), abs(-2147483647i), u_input.a, vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(abs(u_input.a), _wgslsmith_sub_i32(global3.b.a.x, -49621i)), i32(-1i) * -1i), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(15326i, -40780i, global3.a), vec3<i32>(20139i, -40688i, -1i)), ~1i, _wgslsmith_add_i32(-23282i, u_input.a)), global3.a, u_input.a));
    var var_2 = global3.c;
    var var_3 = arg_0;
    return Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.b.d, 1064f, -1285f, 240f), vec4<f32>(global3.b.d, global3.b.d, global3.b.d, -820f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.b.d)) + global3.b.d), _wgslsmith_f_op_f32(-global3.b.d), global3.b.d, global3.b.d)));
}

fn func_6(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_5) -> i32 {
    var var_0 = vec2<u32>(global3.b.b.x, 0u);
    var var_1 = func_4(vec2<u32>(_wgslsmith_clamp_u32(global3.b.b.x, _wgslsmith_sub_u32(global3.b.c.x | var_0.x, _wgslsmith_mod_u32(37266u, 5290u)), global3.b.c.x), abs(global3.b.b.x)), global3.b.d, select(select(!select(vec4<bool>(global3.c.x, false, false, global3.c.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), true), !(!vec4<bool>(global3.c.x, false, global3.c.x, false)), select(select(vec4<bool>(false, true, global3.c.x, false), vec4<bool>(global3.c.x, true, false, true), vec4<bool>(arg_0.x, global3.c.x, true, true)), select(vec4<bool>(false, global3.c.x, global3.c.x, global3.c.x), vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(false, global3.c.x, false, true)), !vec4<bool>(global3.c.x, true, true, false))), select(vec4<bool>(true, false, true, global3.c.x), vec4<bool>(true, arg_0.x, true, global3.c.x), !select(vec4<bool>(arg_0.x, false, false, true), vec4<bool>(false, false, arg_0.x, global3.c.x), vec4<bool>(true, global3.c.x, global3.c.x, global3.c.x))), vec4<bool>(arg_0.x, true, any(select(vec4<bool>(global3.c.x, arg_0.x, global3.c.x, true), vec4<bool>(global3.c.x, true, true, global3.c.x), true)), all(select(vec3<bool>(false, true, arg_0.x), vec3<bool>(global3.c.x, arg_0.x, false), false)))));
    let var_2 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(~arg_1 & _wgslsmith_clamp_i32(-2147483647i, 6580i, arg_1), -global3.a), global3.b.a), func_5(func_4(~select(vec2<u32>(4294967295u, var_0.x), global3.b.c.zx, false), global3.b.d, vec4<bool>(true, false || arg_0.x, true, global3.c.x)), -(~select(global3.a, 2147483647i, false)), firstLeadingBit(-firstLeadingBit(global3.b.a.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.a, arg_1), vec4<i32>(45565i, global3.b.a.x, arg_1, -21024i)) ^ vec4<i32>(arg_1, 1i, u_input.a, u_input.a), vec4<i32>(~u_input.a, 31029i, reverseBits(34271i), arg_1))).b.b, vec4<u32>(_wgslsmith_mult_u32(var_0.x, 1087u ^ global3.b.c.x), var_1.a, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 11256u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, var_0.x, var_1.a)), var_0.x), ~min(28093u, global3.b.c.x)), arg_2.a.x);
    let var_3 = func_5(func_4(global3.b.b.wx, arg_2.a.x, !(!select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(false, false, global3.c.x, arg_0.x), vec4<bool>(true, arg_0.x, true, true)))), global3.a, arg_1, _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(firstLeadingBit(u_input.a), 5457i, -var_2.a.x, arg_1 ^ 18587i)), vec4<i32>(i32(-1i) * -var_2.a.x, arg_1 | -1i, ~arg_1, min(-var_2.a.x, ~(-35343i)))));
    global0 = ~var_3.b.c.x;
    return var_3.b.a.x;
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: f32) -> Struct_4 {
    var var_0 = _wgslsmith_div_i32(40941i, -arg_1.a);
    var_0 = _wgslsmith_div_i32(u_input.a, _wgslsmith_clamp_i32(arg_1.b.a.x, ~_wgslsmith_sub_i32(0i, arg_0.x >> (0u % 32u)), _wgslsmith_sub_i32(1i, arg_0.x)));
    var var_1 = vec4<bool>(true, true, !(!(!arg_1.c.x)), true);
    global4 = array<Struct_3, 15>();
    global4 = array<Struct_3, 15>();
    return Struct_4(_wgslsmith_dot_vec4_i32(~vec4<i32>(-20456i, reverseBits(u_input.a), i32(-1i) * -21725i, abs(arg_1.a)), min(_wgslsmith_add_vec4_i32(~vec4<i32>(35041i, global3.b.a.x, 3019i, 11352i), vec4<i32>(global3.a, -55193i, -54276i, -2147483647i)), vec4<i32>(-1i) * -vec4<i32>(global3.b.a.x, -1i, arg_1.b.a.x, -1i))), func_5(func_4(max(~vec2<u32>(global3.b.c.x, arg_1.b.b.x), reverseBits(vec2<u32>(arg_1.b.c.x, 9465u))), _wgslsmith_f_op_f32(-arg_2), vec4<bool>(func_5(Struct_2(arg_1.b.b.x, vec4<f32>(-1728f, 296f, -390f, -758f), 1000f, 879f), u_input.a, global3.b.a.x, vec4<i32>(arg_0.x, global3.a, -2147483647i, 1i)).c.x, true, true, arg_1.c.x | false)), _wgslsmith_add_i32(select(arg_1.b.a.x, global3.b.a.x, false) << (_wgslsmith_sub_u32(global3.b.c.x, global3.b.b.x) % 32u), 35026i), _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(-1i, arg_0.x) >> (_wgslsmith_dot_vec4_u32(arg_1.b.c, arg_1.b.c) % 32u)), -_wgslsmith_sub_vec4_i32(max(vec4<i32>(34906i, u_input.a, -43527i, global3.b.a.x), vec4<i32>(global3.b.a.x, 2147483647i, global3.b.a.x, arg_0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_1.b.a.x, arg_1.a, arg_1.b.a.x), vec4<i32>(global3.a, arg_1.a, 1i, arg_0.x)))).b, global3.c);
}

fn func_8(arg_0: u32, arg_1: Struct_4) -> Struct_4 {
    global1 = array<Struct_1, 16>();
    var var_0 = global4[_wgslsmith_index_u32(arg_1.b.c.x, 15u)];
    global1 = array<Struct_1, 16>();
    var var_1 = arg_1;
    var var_2 = vec4<bool>(!global3.c.x, !all(!select(vec3<bool>(arg_1.c.x, false, true), vec3<bool>(true, arg_1.c.x, true), global3.c.x)), !global3.c.x, global3.c.x);
    return func_7(~((vec3<i32>(-2147483647i, u_input.a, -1i) >> (~vec3<u32>(14895u, 4294967295u, 5008u) % vec3<u32>(32u))) | -abs(vec3<i32>(14383i, -2147483647i, u_input.a))), Struct_4(1i, func_7(countOneBits(vec3<i32>(2147483647i, u_input.a, var_1.b.a.x)), arg_1, 839f).b, select(vec2<bool>(true, true), vec2<bool>(arg_1.c.x || var_1.c.x, true), true)), -648f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(global3.c.x, global3.c.x);
    var var_1 = func_8(abs(32392u), func_7(vec3<i32>(~u_input.a, func_6(vec2<bool>(true, true), -2147483647i | global3.b.a.x, func_1(33823u)), u_input.a), func_5(func_4(global3.b.b.xw, global3.b.d, !vec4<bool>(true, var_0.x, false, false)), u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, 0i, global3.a, global3.a), -vec4<i32>(-1i, u_input.a, 2147483647i, u_input.a)), vec4<i32>(-71904i, 0i, global3.b.a.x, u_input.a) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(27171i, -2147483647i, -1i, u_input.a), vec4<i32>(global3.b.a.x, u_input.a, u_input.a, -1i), vec4<i32>(1i, u_input.a, -21487i, global3.a))), global3.b.d));
    let var_2 = abs(_wgslsmith_add_i32(global3.b.a.x, -2147483647i));
    var var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(global3.b.a.x, ~0i, -var_1.a, -1i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2, var_1.b.a.x | u_input.a, u_input.a | 0i, -2147483647i), vec4<i32>(-3203i, u_input.a, -47703i, 0i)), u_input.a, func_7(countOneBits(vec3<i32>(1i, 0i, u_input.a)), func_5(func_4(vec2<u32>(79377u, 0u), -930f, vec4<bool>(true, true, false, false)), -2147483647i, var_1.b.a.x, vec4<i32>(2147483647i, -1i, -29349i, 9005i) | vec4<i32>(1i, global3.a, 4463i, 15125i)), 1423f).b.a.x, abs(-(u_input.a ^ -24565i))), ~vec4<i32>(u_input.a, 6339i & var_2, _wgslsmith_clamp_i32(0i, i32(-1i) * -1i, var_2 << (global3.b.c.x % 32u)), 2147483647i));
    global4 = array<Struct_3, 15>();
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(925f * var_1.b.d) * func_4(vec2<u32>(1u, 15256u), -970f, vec4<bool>(var_1.c.x, global3.c.x, false, true)).b.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-global3.b.d)))));
    global2 = array<Struct_5, 24>();
    var var_5 = min((func_4(var_1.b.c.yy, _wgslsmith_f_op_f32(-var_1.b.d), vec4<bool>(var_1.c.x, true, var_0.x, var_1.c.x)).a >> (1u % 32u)) | global3.b.c.x, ~_wgslsmith_clamp_u32(global3.b.c.x, 4294967295u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(~vec3<u32>(global3.b.c.x, 59384u, global3.b.b.x)), vec3<u32>(reverseBits(1u), 4447u, var_1.b.b.x >> (var_1.b.b.x % 32u))) & countOneBits(vec3<u32>(_wgslsmith_add_u32(var_1.b.b.x, 1u), _wgslsmith_add_u32(var_1.b.b.x, global3.b.b.x), var_1.b.c.x)), ~_wgslsmith_clamp_vec3_u32(min(vec3<u32>(14414u, var_1.b.c.x, var_1.b.c.x), max(vec3<u32>(4294967295u, 4294967295u, 5435u), vec3<u32>(var_1.b.b.x, 32609u, global3.b.c.x))), var_1.b.b.yxz, min(~global3.b.c.wwy, reverseBits(vec3<u32>(var_1.b.b.x, 0u, 0u)))), _wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 1i, -38801i, global3.b.a.x), ~vec4<i32>(var_2, var_3.x, -4979i, var_1.b.a.x)) >> (max(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.b.c, global3.b.b), vec4<u32>(var_1.b.b.x, global3.b.b.x, 5040u, 9996u), vec4<u32>(var_1.b.b.x, 1u, 1u, var_1.b.c.x)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, global3.b.b.x, 72911u), vec4<u32>(global3.b.c.x, 30586u, 4294967295u, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(var_3.x, u_input.a), ~(~(-var_1.b.a))));
}

