struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(true, false, true, true, true, true, false, true, true, true, false, false, true, true, true, true, false, false, false, true, false, true, true, false, false, false, false, true, true);

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(4294967295u, 1u, 1i, vec4<bool>(true, true, false, false), -1000f), Struct_1(8738u, 0u, -19509i, vec4<bool>(false, true, false, false), 213f), Struct_1(1u, 1u, 20194i, vec4<bool>(true, true, false, false), 1000f), Struct_1(4294967295u, 3922u, 1i, vec4<bool>(false, true, false, true), 709f), Struct_1(1u, 13588u, 2147483647i, vec4<bool>(false, false, false, true), -467f), Struct_1(0u, 44333u, 0i, vec4<bool>(true, true, true, false), 671f), Struct_1(4294967295u, 1u, -27503i, vec4<bool>(true, true, false, true), -909f), Struct_1(4294967295u, 36555u, 1i, vec4<bool>(true, true, false, false), -150f), Struct_1(71849u, 18026u, 1i, vec4<bool>(true, false, false, true), 619f), Struct_1(8111u, 37020u, 1i, vec4<bool>(false, true, true, true), -1000f), Struct_1(39955u, 1u, -1i, vec4<bool>(true, true, true, false), -1343f), Struct_1(4294967295u, 15317u, 36511i, vec4<bool>(true, true, false, false), 699f), Struct_1(4294967295u, 1u, -22160i, vec4<bool>(false, false, true, false), 462f), Struct_1(8842u, 17394u, 2147483647i, vec4<bool>(false, false, false, true), 874f), Struct_1(4294967295u, 4294967295u, -1i, vec4<bool>(false, false, true, false), -1737f), Struct_1(0u, 20204u, -43843i, vec4<bool>(false, false, true, false), 928f), Struct_1(1u, 47601u, -61211i, vec4<bool>(true, false, false, false), 337f), Struct_1(4294967295u, 16359u, -9910i, vec4<bool>(true, false, false, true), 149f), Struct_1(0u, 31484u, -14178i, vec4<bool>(true, false, false, true), -629f), Struct_1(4294967295u, 88630u, -34592i, vec4<bool>(false, true, true, false), 2286f), Struct_1(56178u, 61506u, 37892i, vec4<bool>(true, true, false, true), 1000f), Struct_1(0u, 1u, -1i, vec4<bool>(false, true, false, false), -194f), Struct_1(67260u, 1u, -174i, vec4<bool>(true, false, true, true), 511f), Struct_1(0u, 50594u, -24717i, vec4<bool>(true, false, false, true), 776f), Struct_1(36201u, 1u, -8412i, vec4<bool>(false, true, false, false), 263f), Struct_1(0u, 842u, 1i, vec4<bool>(false, false, false, false), 943f), Struct_1(0u, 22944u, -44075i, vec4<bool>(true, false, false, false), 876f), Struct_1(44361u, 53125u, i32(-2147483648), vec4<bool>(false, false, false, true), -202f), Struct_1(78274u, 0u, -1i, vec4<bool>(false, true, true, true), -1705f), Struct_1(13953u, 0u, 1i, vec4<bool>(true, false, false, false), -445f), Struct_1(3962u, 4294967295u, -35217i, vec4<bool>(true, false, true, true), 1801f), Struct_1(48697u, 1u, 0i, vec4<bool>(false, false, false, true), -101f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_sub_vec4_u32(abs(~(~vec4<u32>(1u, 4294967295u, u_input.a, u_input.a) & vec4<u32>(0u, 44819u, 4294967295u, 1u))), vec4<u32>(70241u, ~(~4294967295u) >> (u_input.a % 32u), ~u_input.a, ~4294967295u));
    global1 = array<Struct_1, 32>();
    global0 = array<bool, 29>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(922f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1728f - -406f), -1816f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(537f * 568f)), 890f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(653f, -1058f, 1206f, 413f))), vec4<f32>(1281f, -1661f, 296f, 1000f))))), abs(var_0) >> (~countOneBits(var_0) % vec4<u32>(32u)), vec3<bool>(true, true, true), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1024f - -916f), -727f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1555f, -530f)))));
    let var_2 = Struct_3(var_1.a, vec4<u32>(0u, 0u, 4294967295u, reverseBits(1u)), select(select(var_1.c, select(var_1.c, !vec3<bool>(true, false, var_1.c.x), false), !all(vec3<bool>(var_1.c.x, true, var_1.c.x))), var_1.c, any(vec2<bool>(!var_1.c.x, any(vec4<bool>(var_1.c.x, false, true, false))))), Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x)), vec2<f32>(-1397f, var_1.a.x)))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.a.x)))), var_2.d.a.x);
}

fn func_4(arg_0: vec2<f32>) -> f32 {
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    global0 = array<bool, 29>();
    var var_0 = true;
    return arg_0.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(826f, -987f, 947f, 506f), vec4<f32>(-2003f, -1460f, -1000f, -1245f), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(0u, 29u)])))), _wgslsmith_f_op_vec4_f32(vec4<f32>(793f, -1561f, 286f, -1774f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-576f, -152f, 978f, 1671f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -380f), _wgslsmith_f_op_f32(968f + 367f), -1333f, _wgslsmith_f_op_f32(-2541f - 754f)))), ~_wgslsmith_add_vec4_u32(min(firstTrailingBit(vec4<u32>(u_input.a, 0u, 45344u, 4294967295u)), ~vec4<u32>(16924u, u_input.a, 0u, u_input.a)), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 70499u, u_input.a, u_input.a), vec4<u32>(97250u, 0u, u_input.a, u_input.a))), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 29u)], true, global0[_wgslsmith_index_u32(~(4294967295u << (u_input.a % 32u)), 29u)]), Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1055f, _wgslsmith_f_op_f32(f32(-1f) * -980f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-649f, 584f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-267f, 302f))))))));
    global1 = array<Struct_1, 32>();
    let var_1 = global1[_wgslsmith_index_u32(16201u, 32u)];
    global0 = array<bool, 29>();
    let var_2 = var_0.a.wz;
    return Struct_1(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.b.x, 1u), var_1.b, var_0.b.x << (var_1.b % 32u)) ^ ~4294967295u, 43033i, var_1.d, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3()))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = func_2();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())));
    let var_2 = ~vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(arg_1, arg_1), 1u), ~max(_wgslsmith_mult_u32(u_input.a, arg_1.x), 1u));
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    return Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(var_0.e - var_1.a.x), -1899f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-960f, 1503f, var_1.a.x, 1082f))))))), arg_1, vec3<bool>(all(func_2().d.xww), true, all(var_0.d.wxx)), var_1);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = max(~(~0i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -1i, abs(-1i), 1i, -2147483647i), max(_wgslsmith_div_vec4_i32(vec4<i32>(10980i, -2147483647i, 2147483647i, 5333i), vec4<i32>(-35069i, -21751i, -19990i, -20976i)), -vec4<i32>(2147483647i, 17902i, -1i, 1i))));
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)))));
    var var_3 = arg_0.a;
    var var_4 = func_2();
    return func_1(max((vec3<i32>(var_4.c, var_4.c, var_0) >> (~vec3<u32>(arg_0.b.x, u_input.a, var_1) % vec3<u32>(32u))) | _wgslsmith_div_vec3_i32(select(vec3<i32>(-1i, var_4.c, var_4.c), vec3<i32>(2147483647i, 2147483647i, var_4.c), vec3<bool>(arg_0.c.x, global0[_wgslsmith_index_u32(arg_0.b.x, 29u)], var_4.d.x)), vec3<i32>(-2957i, 2147483647i, -10759i) >> (vec3<u32>(24083u, arg_0.b.x, var_1) % vec3<u32>(32u))), vec3<i32>(~42819i << (0u % 32u), _wgslsmith_mult_i32(1i, firstTrailingBit(var_4.c)), -7490i)), arg_0.b, func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.c, var_0, var_4.c), vec3<i32>(var_4.c, 11988i, var_0)), -1i, 11517i), ~countOneBits(vec3<i32>(0i, var_4.c, var_0))), countOneBits(~(~arg_0.b)), var_4.d.xzz).c);
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(func_5(Struct_3(vec4<f32>(arg_1.a.x, arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x), 1000f), arg_3.b, vec3<bool>(all(vec4<bool>(false, false, false, false)), true, all(arg_3.c)), Struct_2(vec2<f32>(arg_3.a.x, -269f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.a)) - _wgslsmith_f_op_vec2_f32(arg_3.a.wz * vec2<f32>(-1115f, arg_3.a.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, 283f) * arg_1.a)))).b.x & abs(arg_0), 32u)];
    var var_1 = func_2();
    let var_2 = arg_3;
    var var_3 = _wgslsmith_div_u32(var_0.b << (1u % 32u), 39750u);
    return global1[_wgslsmith_index_u32(~(~min(30224u, 12589u)), 32u)];
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = ~abs(arg_1.c);
    let var_1 = arg_0;
    return func_1(_wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_1.c, arg_1.c), vec3<i32>(arg_1.c, 0i, arg_1.c))) << (countOneBits(~vec3<u32>(u_input.a, u_input.a, 3923u)) % vec3<u32>(32u)), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(0i, arg_1.c, arg_1.c), vec3<i32>(-1i, -1i, 2147483647i))), vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(0i, arg_1.c)), -8452i, 14991i)), _wgslsmith_mod_vec4_u32(~(~(vec4<u32>(4294967295u, 28008u, 34603u, 4294967295u) ^ vec4<u32>(1u, u_input.a, 0u, u_input.a))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b, 4294967295u, 0u, 0u) | vec4<u32>(1u, 4294967295u, 4294967295u, arg_2.x), vec4<u32>(arg_1.b, 52003u, 0u, arg_1.a))), !vec3<bool>(true, arg_1.d.x, func_6(_wgslsmith_add_u32(arg_1.a, arg_2.x), Struct_2(arg_0.a), arg_2.x, Struct_3(vec4<f32>(769f, arg_0.a.x, 2044f, arg_1.e), vec4<u32>(arg_1.b, arg_1.b, 137590u, 10382u), arg_1.d.xyy, arg_0)).d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 29>();
    let var_0 = ~(~(~abs(vec2<i32>(2147483647i, 2147483647i))));
    let var_1 = func_7(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(859f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-530f, 2460f) + vec2<f32>(885f, 836f))))), func_6(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, 0u), _wgslsmith_mod_u32(u_input.a, u_input.a)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2030f, 1300f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-335f, -441f) * vec2<f32>(738f, 1084f)))), u_input.a, func_5(func_1(~vec3<i32>(var_0.x, var_0.x, -2147483647i), vec4<u32>(10421u, 0u, 46767u, u_input.a) << (vec4<u32>(11983u, u_input.a, 1u, u_input.a) % vec4<u32>(32u)), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(20806u, 29u)]), vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(71460u, 29u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-616f, -260f) - vec2<f32>(-1150f, -743f)))), vec2<u32>(_wgslsmith_clamp_u32(1330u, u_input.a | 4294967295u, u_input.a), 1u));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-var_1.d.a));
    global1 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_1.b.x), var_1.b.xw | var_1.b.zy), var_1.b.x & 40814u, ~select(29446u, 15509u, var_1.c.x))), ~(~(~1u)));
}

