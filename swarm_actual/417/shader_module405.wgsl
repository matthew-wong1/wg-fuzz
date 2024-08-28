struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 50607i), vec3<u32>(0u, 3515u, 48143u), vec4<bool>(false, true, false, false), true, -203f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(global0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1394f)));
    var var_1 = -1i;
    var_1 = ~min(0i, 0i);
    let var_2 = Struct_5(firstLeadingBit(vec4<u32>(30073u, global0.a.b.x, 0u, u_input.a.x)) | (vec4<u32>(global0.c.d, _wgslsmith_sub_u32(u_input.e.x, u_input.a.x), ~11163u, firstTrailingBit(4294967295u)) | u_input.e), global0.a.b.x, !vec3<bool>(true | (true && arg_2.x), arg_2.x, arg_2.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1651f)) - _wgslsmith_f_op_f32(sign(-1092f))), _wgslsmith_f_op_f32(f32(-1f) * -1823f)) + global0.d.zy);
    return arg_1;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = !(arg_0.x == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.e.e) + -2602f))));
    global0 = Struct_4(arg_1.b, Struct_3(global0.a.b.x, global1.b.x, vec3<bool>(arg_2.x, !global1.c.x, any(global1.c.xzx)), ~u_input.d, global0.c.e), global0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-377f, 165f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.e) - _wgslsmith_f_op_f32(func_3(arg_1.b.a.x, arg_0.x, arg_2.zwx))), arg_1.b.e) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 236f, -260f), vec3<f32>(-492f, 1508f, 576f)) - _wgslsmith_f_op_vec3_f32(-arg_0))))));
    var_0 = arg_1.b.d || arg_2.x;
    global0 = Struct_4(arg_1.b, global0.b, Struct_3(u_input.a.x | _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, global0.b.e.b.x), u_input.a.x), arg_1.b.b.x, vec3<bool>((arg_2.x & arg_1.b.c.x) && true, _wgslsmith_div_f32(2232f, global1.e) <= global0.a.e, true), u_input.d, Struct_1(vec2<i32>(1i, firstTrailingBit(-38541i)), ~global0.a.b << (global0.a.b % vec3<u32>(32u)), arg_1.b.c, u_input.b < -u_input.c, _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global1.e, _wgslsmith_f_op_f32(arg_0.x + -793f))), _wgslsmith_div_f32(global1.e, _wgslsmith_f_op_f32(-global1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f)))));
    global1 = Struct_1(~(~(~(~vec2<i32>(47170i, global0.a.a.x)))), vec3<u32>(57545u, 86197u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.e, vec4<u32>(u_input.d, u_input.d, 1u, 500u), vec4<u32>(arg_1.c.x, 0u, u_input.a.x, 0u)), vec4<u32>(u_input.e.x, 1u, global0.b.e.b.x, arg_1.c.x))) ^ (u_input.e.zwx << (~firstLeadingBit(vec3<u32>(4294967295u, 1u, 1u)) % vec3<u32>(32u))), arg_2, arg_2.x, 134f);
    return arg_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32) -> Struct_3 {
    global0 = Struct_4(arg_1.a, arg_1.c, arg_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-arg_1.b.e.e))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.e.e), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.e - 1304f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(269f)))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(580f, global1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e))));
    global1 = arg_0;
    global1 = arg_0;
    global0 = arg_1;
    return Struct_3(arg_2, _wgslsmith_sub_u32(arg_2, 0u) ^ 60181u, !func_2(global0.d, Struct_2(vec4<bool>(true, true, arg_0.c.x, true), global0.b.e, _wgslsmith_add_vec2_u32(u_input.a, global0.b.e.b.xy)), !(!vec4<bool>(true, false, global1.c.x, arg_1.b.e.d))).c.zzx, _wgslsmith_dot_vec4_u32(vec4<u32>(~56488u, firstLeadingBit(global0.c.a), arg_1.a.b.x, global1.b.x), max(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, global0.a.b.x, arg_2, u_input.d), vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x)), u_input.e ^ vec4<u32>(74069u, arg_1.b.d, 77574u, global1.b.x))) << (arg_0.b.x % 32u), arg_0);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    let var_0 = vec3<i32>(-1i, firstTrailingBit(_wgslsmith_mult_i32(firstLeadingBit(-28063i), arg_2.b.a.x)), _wgslsmith_clamp_i32(arg_0.e.a.x, -1i, abs(_wgslsmith_dot_vec3_i32(select(vec3<i32>(22757i, arg_0.e.a.x, -35762i), vec3<i32>(2147483647i, 1784i, -32791i), true), firstTrailingBit(vec3<i32>(u_input.c, global0.c.e.a.x, global0.c.e.a.x))))));
    let var_1 = select(!func_4(global0.a, Struct_4(arg_0.e, Struct_3(arg_2.c.x, 69507u, global0.c.e.c.yzz, 6864u, Struct_1(vec2<i32>(22938i, u_input.b), u_input.e.yyw, vec4<bool>(global0.b.e.d, arg_2.a.x, true, true), false, global0.c.e.e)), func_4(Struct_1(vec2<i32>(0i, global1.a.x), arg_2.b.b, vec4<bool>(true, true, true, arg_2.b.d), false, -1308f), Struct_4(Struct_1(vec2<i32>(2147483647i, u_input.c), arg_0.e.b, global0.c.e.c, false, -358f), Struct_3(4294967295u, 1u, global1.c.www, 63096u, Struct_1(global1.a, arg_2.b.b, vec4<bool>(arg_2.a.x, true, false, global1.c.x), true, 860f)), global0.c, vec3<f32>(1000f, arg_2.b.e, global0.a.e)), global1.b.x), _wgslsmith_f_op_vec3_f32(trunc(global0.d))), func_4(arg_0.e, Struct_4(Struct_1(global1.a, u_input.e.xwz, global1.c, false, 1000f), Struct_3(4294967295u, 5219u, global1.c.xyx, 37971u, Struct_1(vec2<i32>(3488i, 44010i), global1.b, vec4<bool>(global0.a.d, false, arg_2.a.x, true), arg_2.a.x, global0.a.e)), Struct_3(arg_2.b.b.x, arg_1.x, vec3<bool>(global1.c.x, arg_0.c.x, global0.a.c.x), arg_1.x, Struct_1(global0.a.a, arg_0.e.b, vec4<bool>(false, global0.b.c.x, true, false), global0.c.e.d, arg_2.b.e)), vec3<f32>(arg_2.b.e, arg_0.e.e, global0.a.e)), arg_1.x).b).e.c.ww, vec2<bool>(!arg_2.a.x, !arg_0.c.x), arg_0.e.c.yy);
    var var_2 = global0.b.e;
    var var_3 = vec3<bool>(global0.a.c.x, true, true);
    var_3 = vec3<bool>(any(global0.c.c) && false, false, !any(global0.a.c.zzx));
    return global0.c;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_4) -> u32 {
    global0 = arg_2;
    global0 = Struct_4(global0.c.e, func_5(func_4(func_2(_wgslsmith_f_op_vec3_f32(arg_2.d + vec3<f32>(287f, global1.e, global1.e)), Struct_2(vec4<bool>(global0.b.c.x, arg_0.c.x, global0.c.e.c.x, arg_0.c.x), global0.c.e, u_input.e.wy), select(arg_0.c, global1.c, vec4<bool>(false, arg_2.c.c.x, true, arg_2.a.c.x))), Struct_4(func_2(arg_2.d, Struct_2(arg_2.c.e.c, arg_0, u_input.a), vec4<bool>(global1.c.x, arg_2.c.e.d, true, false)), arg_2.c, global0.c, global0.d), ~_wgslsmith_sub_u32(1u, 0u)), vec3<u32>(0u, 25354u, firstLeadingBit(4294967295u)) | firstLeadingBit(~vec3<u32>(55629u, u_input.e.x, arg_0.b.x)), Struct_2(global1.c, func_4(func_2(vec3<f32>(arg_1.x, global1.e, 1019f), Struct_2(arg_0.c, Struct_1(arg_0.a, global0.a.b, global0.c.e.c, false, arg_0.e), vec2<u32>(arg_2.c.e.b.x, 1u)), global0.c.e.c), Struct_4(global0.c.e, global0.b, Struct_3(global0.b.b, 1u, vec3<bool>(true, global1.c.x, false), arg_0.b.x, Struct_1(global1.a, vec3<u32>(arg_2.a.b.x, 1u, 0u), arg_2.c.e.c, arg_2.c.c.x, arg_1.x)), global0.d), ~arg_0.b.x).e, ~(~global1.b.yz)), 1i), func_4(Struct_1(arg_0.a, ~vec3<u32>(global0.b.e.b.x, arg_0.b.x, 32946u), vec4<bool>(true, true, global0.c.e.a.x > 2147483647i, global1.d | true), true, _wgslsmith_f_op_f32(-arg_0.e)), arg_2, 1u), global0.d);
    let var_0 = _wgslsmith_add_vec4_u32(u_input.e >> ((vec4<u32>(arg_0.b.x, arg_2.b.d, firstTrailingBit(arg_2.c.a), ~59209u) | ~_wgslsmith_add_vec4_u32(u_input.e, u_input.e)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(global1.b.x), 0u), arg_2.c.b >> ((1u ^ _wgslsmith_mult_u32(global0.a.b.x, arg_2.a.b.x)) % 32u), 10009u, 0u));
    global1 = func_5(func_5(func_5(Struct_3(min(arg_2.c.b, arg_2.c.d), 14262u, global0.a.c.yxy, func_4(Struct_1(vec2<i32>(global1.a.x, 1i), var_0.yzx, global0.c.e.c, true, 1115f), Struct_4(Struct_1(arg_0.a, var_0.xzx, arg_2.a.c, arg_0.c.x, 1397f), arg_2.c, global0.b, vec3<f32>(arg_0.e, 1045f, 192f)), arg_2.a.b.x).b, arg_0), global0.a.b, Struct_2(vec4<bool>(arg_0.d, global0.c.c.x, global1.d, true), func_2(vec3<f32>(global0.b.e.e, global0.c.e.e, -515f), Struct_2(global1.c, Struct_1(vec2<i32>(-37956i, -1i), vec3<u32>(u_input.e.x, arg_0.b.x, 4294967295u), vec4<bool>(arg_0.c.x, true, arg_2.a.d, false), true, -326f), global0.a.b.zx), vec4<bool>(false, global0.c.e.c.x, arg_2.a.c.x, global1.c.x)), global1.b.yy), -1241i), vec3<u32>(_wgslsmith_add_u32(global0.b.e.b.x, ~0u), func_5(func_5(global0.c, vec3<u32>(40349u, 61080u, u_input.e.x), Struct_2(vec4<bool>(global1.d, global0.b.c.x, true, true), arg_2.b.e, arg_0.b.zz), -1278i), ~global1.b, Struct_2(arg_0.c, arg_2.b.e, global0.a.b.yy), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.a.x, 28910i, -2147483647i, 33811i), vec4<i32>(3130i, 0i, -2147483647i, arg_0.a.x))).a, _wgslsmith_add_u32(abs(global0.c.e.b.x), ~4528u)), Struct_2(vec4<bool>(true, !global0.c.e.d, true, select(arg_0.c.x, global1.c.x, global1.c.x)), func_2(vec3<f32>(global0.b.e.e, arg_0.e, arg_1.x), Struct_2(arg_0.c, global0.a, u_input.a), global0.c.e.c), abs(min(vec2<u32>(arg_2.b.b, global0.b.a), vec2<u32>(var_0.x, 31519u)))), u_input.b), global0.b.e.b & (~vec3<u32>(var_0.x, var_0.x, 4294967295u) >> (vec3<u32>(~u_input.d, _wgslsmith_mod_u32(var_0.x, global0.c.d), ~1u) % vec3<u32>(32u))), Struct_2(!(!global0.c.e.c), global0.c.e, var_0.zw), ~min(i32(-1i) * -1i, max(arg_2.c.e.a.x, max(global1.a.x, 27607i)))).e;
    global0 = Struct_4(arg_2.a, global0.c, func_5(func_4(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(global0.c.e.a.x, global0.a.a.x), vec2<i32>(u_input.b, u_input.b)), max(global1.b, vec3<u32>(arg_0.b.x, 4294967295u, u_input.a.x)), func_5(arg_2.c, vec3<u32>(0u, global0.c.e.b.x, 52868u), Struct_2(arg_0.c, arg_0, vec2<u32>(u_input.e.x, arg_0.b.x)), u_input.c).e.c, arg_2.c.e.c.x, 311f), Struct_4(arg_0, func_4(Struct_1(vec2<i32>(global0.b.e.a.x, 1i), global0.a.b, global0.a.c, arg_2.b.e.c.x, arg_2.a.e), Struct_4(arg_0, Struct_3(arg_0.b.x, global1.b.x, global1.c.yxy, 1u, global0.c.e), global0.c, arg_2.d), 0u), Struct_3(global0.c.a, var_0.x, vec3<bool>(false, true, global0.c.c.x), arg_2.b.a, arg_0), vec3<f32>(global0.d.x, -345f, arg_2.a.e)), max(1u, 1u)), vec3<u32>(1u, global1.b.x >> (global0.b.e.b.x % 32u), 79457u), Struct_2(vec4<bool>(global1.c.x, global0.c.c.x, all(arg_0.c), true), arg_2.b.e, vec2<u32>(~36548u, ~4294967295u)), 0i << (~arg_2.b.a % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_2.d)) * vec3<f32>(_wgslsmith_f_op_f32(trunc(1085f)), _wgslsmith_f_op_f32(-global1.e), -1878f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.e.e, _wgslsmith_f_op_f32(sign(969f)), 1213f))));
    return arg_2.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.e))) - -778f);
    var var_1 = Struct_5(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(select(u_input.e, u_input.e, vec4<bool>(global1.d, global0.a.d, true, true)), select(u_input.e, vec4<u32>(0u, 10940u, global1.b.x, global0.c.a), global0.a.c.x)), vec4<u32>(~35115u, func_1(global0.a, global0.d.xz, Struct_4(Struct_1(global1.a, vec3<u32>(u_input.d, 44897u, u_input.d), global1.c, true, 499f), Struct_3(22561u, 1u, global0.b.e.c.zwx, global0.c.e.b.x, Struct_1(vec2<i32>(global1.a.x, global0.a.a.x), global1.b, vec4<bool>(global1.c.x, false, global0.b.c.x, global0.a.c.x), false, global1.e)), Struct_3(1u, global0.c.a, vec3<bool>(global1.c.x, global0.a.d, global1.c.x), global0.b.a, Struct_1(global0.b.e.a, u_input.e.zyz, global0.a.c, true, var_0)), vec3<f32>(-1000f, -1615f, global0.c.e.e))), global0.a.b.x, ~global0.b.b) & vec4<u32>(0u >> (global1.b.x % 32u), 15510u, 102959u, func_4(Struct_1(global1.a, vec3<u32>(global1.b.x, global1.b.x, u_input.a.x), vec4<bool>(global0.a.d, global1.d, global0.b.e.d, global0.c.c.x), true, 1008f), Struct_4(global0.b.e, global0.b, global0.c, global0.d), 1u).d)), firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(65319u, u_input.d, global1.b.x)) & (vec3<u32>(0u, 38985u, 81578u) ^ global0.a.b), vec3<u32>(_wgslsmith_mult_u32(0u, global0.c.a), func_4(Struct_1(vec2<i32>(-65846i, -2147483647i), u_input.e.www, vec4<bool>(true, true, global0.a.d, false), false, -266f), Struct_4(Struct_1(vec2<i32>(-5952i, global1.a.x), global1.b, global1.c, global0.a.c.x, -1408f), global0.b, Struct_3(1u, 84u, vec3<bool>(false, global1.c.x, global1.d), global0.b.b, Struct_1(vec2<i32>(-1i, global1.a.x), global1.b, vec4<bool>(global0.c.c.x, global1.c.x, global1.c.x, false), false, global1.e)), global0.d), 0u).e.b.x, reverseBits(0u)))), global1.c.wwz);
    var var_2 = Struct_4(global0.c.e, global0.b, func_5(global0.c, global0.a.b, Struct_2(!(!global0.c.e.c), func_2(global0.d, Struct_2(global0.c.e.c, global0.a, var_1.a.xx), func_5(Struct_3(4294967295u, 1u, vec3<bool>(false, false, true), 65724u, Struct_1(global1.a, var_1.a.wzz, global1.c, true, var_0)), vec3<u32>(49918u, u_input.e.x, 0u), Struct_2(vec4<bool>(false, global0.a.c.x, true, var_1.c.x), Struct_1(vec2<i32>(1i, global0.b.e.a.x), vec3<u32>(1u, global0.c.d, u_input.d), vec4<bool>(global0.a.d, global0.b.c.x, var_1.c.x, true), var_1.c.x, -244f), global1.b.yy), global1.a.x).e.c), global0.c.e.b.yy), reverseBits(u_input.c)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.d.x, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-175f + 766f))))));
    var_2 = Struct_4(Struct_1(_wgslsmith_mult_vec2_i32(global0.b.e.a, _wgslsmith_add_vec2_i32(~vec2<i32>(2147483647i, -15979i), global1.a)), u_input.e.zzy & ~_wgslsmith_mult_vec3_u32(var_1.a.yyy, global0.c.e.b), !vec4<bool>(global0.c.e.c.x, !var_1.c.x, var_2.a.c.x, global0.c.c.x), 1u > ~(~global1.b.x), -396f), func_5(global0.b, firstTrailingBit(firstTrailingBit(~vec3<u32>(4294967295u, 35749u, 0u))), Struct_2(!vec4<bool>(global0.c.c.x, var_1.c.x, false, var_1.c.x), Struct_1(~vec2<i32>(2147483647i, var_2.b.e.a.x), func_4(var_2.c.e, Struct_4(Struct_1(var_2.a.a, global1.b, vec4<bool>(global0.c.c.x, false, global0.b.e.d, var_1.c.x), true, 125f), global0.c, Struct_3(global1.b.x, 1u, var_2.b.c, var_1.b, Struct_1(global1.a, vec3<u32>(4294967295u, 22561u, global1.b.x), var_2.a.c, var_1.c.x, var_0)), global0.d), 0u).e.b, global0.c.e.c, 2147483647i <= var_2.a.a.x, _wgslsmith_f_op_f32(max(-1374f, -484f))), var_1.a.yx), func_4(Struct_1(_wgslsmith_sub_vec2_i32(global0.c.e.a, vec2<i32>(14186i, global0.c.e.a.x)), min(var_2.b.e.b, u_input.e.xwz), select(vec4<bool>(false, true, true, false), vec4<bool>(var_2.a.c.x, true, var_2.c.c.x, global1.c.x), var_2.c.e.c), false, _wgslsmith_f_op_f32(-var_2.b.e.e)), Struct_4(global0.a, Struct_3(u_input.e.x, 0u, vec3<bool>(false, global0.b.e.c.x, true), global1.b.x, Struct_1(vec2<i32>(0i, 0i), u_input.e.yxz, vec4<bool>(var_1.c.x, global1.c.x, var_2.a.c.x, global1.c.x), global1.c.x, -210f)), Struct_3(var_2.a.b.x, 0u, global1.c.zxw, 1242u, var_2.c.e), vec3<f32>(var_0, var_0, var_2.a.e)), ~u_input.d << (1u % 32u)).e.a.x), var_2.c, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-659f + -316f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2453f)), _wgslsmith_f_op_f32(ceil(var_2.b.e.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1492f, var_0, false)))));
    var var_3 = var_2.d.zx;
    let var_4 = var_2.d.zz;
    var_3 = global0.d.yx;
    var var_5 = Struct_4(global0.b.e, global0.c, Struct_3(min(var_2.a.b.x << (~u_input.a.x % 32u), ~reverseBits(var_1.a.x)), max(~func_1(global0.c.e, var_2.d.zx, Struct_4(Struct_1(vec2<i32>(global0.b.e.a.x, var_2.b.e.a.x), global1.b, vec4<bool>(global1.d, true, false, false), true, global1.e), Struct_3(global0.a.b.x, u_input.a.x, var_1.c, 22562u, Struct_1(vec2<i32>(var_2.a.a.x, u_input.b), vec3<u32>(14595u, 0u, u_input.d), global1.c, false, -777f)), var_2.b, vec3<f32>(var_2.d.x, 1125f, 665f))), max(reverseBits(0u), 1u)), !global1.c.xyy, ~reverseBits(global0.b.b), func_4(Struct_1(-vec2<i32>(global1.a.x, 37521i), ~var_1.a.zzz, var_2.c.e.c, all(global0.a.c), _wgslsmith_f_op_f32(select(271f, var_3.x, true))), Struct_4(func_4(Struct_1(global0.c.e.a, vec3<u32>(13038u, 73871u, u_input.d), vec4<bool>(global0.c.c.x, false, global1.c.x, false), false, var_0), Struct_4(Struct_1(global1.a, vec3<u32>(var_1.a.x, var_1.b, var_1.b), vec4<bool>(false, true, global0.a.c.x, var_1.c.x), global1.d, global1.e), Struct_3(var_2.c.d, global0.c.b, global0.b.e.c.wyw, 4982u, Struct_1(global1.a, vec3<u32>(var_1.b, 0u, 0u), global0.a.c, true, var_4.x)), global0.b, vec3<f32>(var_2.d.x, global1.e, var_3.x)), 1u).e, Struct_3(1u, global1.b.x, vec3<bool>(false, true, false), global1.b.x, var_2.c.e), func_4(var_2.b.e, Struct_4(Struct_1(vec2<i32>(u_input.b, global0.a.a.x), global1.b, global1.c, true, global1.e), Struct_3(var_1.a.x, global0.c.e.b.x, vec3<bool>(false, false, true), u_input.e.x, var_2.a), global0.b, global0.d), u_input.a.x), _wgslsmith_f_op_vec3_f32(var_2.d * vec3<f32>(var_3.x, var_4.x, 208f))), abs(_wgslsmith_mult_u32(global1.b.x, global1.b.x))).e), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.x, -134f, var_3.x), vec3<f32>(-836f, 351f, 468f))), vec3<f32>(var_2.a.e, 302f, 1000f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1277f, -1200f, 1082f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(434f, var_3.x, global0.d.x), global0.d)) + vec3<f32>(-1950f, 826f, global1.e))))));
    var var_6 = _wgslsmith_f_op_vec3_f32(-global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec2<u32>(6433u, abs(4506u)));
}

