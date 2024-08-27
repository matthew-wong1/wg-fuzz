struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: Struct_3,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(14393u, 4294967295u, 1u), vec3<u32>(75658u, 7056u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(54897u, 4294967295u, 4294967295u), vec3<u32>(18353u, 37172u, 4294967295u), vec3<u32>(76814u, 50351u, 0u), vec3<u32>(0u, 117052u, 1u), vec3<u32>(45104u, 4294967295u, 15731u), vec3<u32>(4154u, 1u, 147474u), vec3<u32>(1u, 22657u, 46007u), vec3<u32>(11501u, 0u, 4294967295u), vec3<u32>(0u, 23128u, 44194u), vec3<u32>(18733u, 0u, 4294967295u), vec3<u32>(25375u, 70876u, 1u), vec3<u32>(69785u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 0u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(193u, 26985u, 32795u));

var<private> global1: array<Struct_4, 20>;

var<private> global2: Struct_3;

var<private> global3: f32 = 526f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    let var_0 = Struct_4(select(select(!(!vec2<bool>(global2.d.d, false)), select(!vec2<bool>(false, global2.d.d), vec2<bool>(global2.d.d, global2.d.d), !vec2<bool>(global2.d.d, true)), vec2<bool>(global2.d.d, true)), vec2<bool>(false, true), vec2<bool>(_wgslsmith_f_op_f32(-global2.d.c.x) == _wgslsmith_f_op_f32(-global2.c), true)), vec3<u32>(global2.b.a.x, u_input.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(5838u, 1u), global2.b.a.zx, global2.b.a.yy), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, global2.b.a.x), global2.b.a.yz, vec2<u32>(285u, u_input.b))), ~_wgslsmith_mod_u32(4143u, 56045u))), Struct_3(global2.a, Struct_1(reverseBits(abs(vec4<u32>(u_input.a, 0u, global2.b.a.x, arg_0)))), global2.c, Struct_2(-1535f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -2419f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -1023f, arg_1.x)), true)), Struct_2(global2.c, _wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(global2.d.c)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, global2.c, -766f) * vec4<f32>(-411f, -1000f, 578f, global2.c)))), (_wgslsmith_f_op_f32(select(-877f, -1000f, false)) <= _wgslsmith_f_op_f32(ceil(global2.d.c.x))) | all(!vec4<bool>(true, global2.d.d, global2.d.d, global2.d.d))), select(abs(_wgslsmith_dot_vec3_u32(global2.b.a.yxw, vec3<u32>(19177u, arg_0, u_input.b))) < 46947u, global2.d.d, global2.d.d & (firstTrailingBit(2147483647i) > min(-1i, -19496i))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1.x))));
    global3 = 373f;
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.c.x)))));
    var var_2 = var_0.c;
    return ~4294967295u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec4<u32>(3577u, ~func_3(min(60909u, 3668u), global2.d.c.yyw), ~u_input.a, u_input.a & global2.b.a.x));
    var var_1 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c + global2.c))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1451f, global2.d.a)), -588f))) == true;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -736f), _wgslsmith_f_op_f32(-847f * global2.d.a))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.c.x), _wgslsmith_f_op_f32(exp2(global2.c))))) - _wgslsmith_f_op_f32(623f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.d.b))))));
    global0 = array<vec3<u32>, 20>();
    var var_2 = select(select(vec2<bool>(global2.d.d, true), select(select(!vec2<bool>(global2.d.d, true), vec2<bool>(global2.d.d, global2.d.d), select(global2.d.d, global2.d.d, global2.d.d)), vec2<bool>(false, global2.d.d || global2.d.d), select(!vec2<bool>(global2.d.d, true), select(vec2<bool>(false, true), vec2<bool>(global2.d.d, true), vec2<bool>(global2.d.d, false)), all(vec4<bool>(true, false, true, global2.d.d)))), vec2<bool>(true, global2.d.d)), select(!select(vec2<bool>(true, global2.d.d), vec2<bool>(false, global2.d.d), select(vec2<bool>(false, global2.d.d), vec2<bool>(true, global2.d.d), true)), select(vec2<bool>(global2.d.d, all(vec3<bool>(global2.d.d, global2.d.d, true))), select(vec2<bool>(global2.d.d, global2.d.d), vec2<bool>(global2.d.d, global2.d.d), select(vec2<bool>(false, global2.d.d), vec2<bool>(true, global2.d.d), global2.d.d)), true), true), !select(select(vec2<bool>(global2.d.d, global2.d.d), vec2<bool>(global2.d.d, false), vec2<bool>(false, true)), vec2<bool>(true, global2.d.d & global2.d.d), !select(vec2<bool>(true, global2.d.d), vec2<bool>(true, global2.d.d), vec2<bool>(true, global2.d.d))));
    return Struct_1(global2.b.a | global2.b.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: f32) -> Struct_3 {
    var var_0 = arg_1;
    global1 = array<Struct_4, 20>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2693f, var_0.c) * _wgslsmith_f_op_f32(-arg_1.d.b)), global2.d.c.x), _wgslsmith_f_op_f32(arg_2.x - var_0.d.c.x), arg_1.d.d)), _wgslsmith_f_op_f32(floor(global2.d.c.x)), vec4<f32>(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(-1219f * _wgslsmith_f_op_f32(arg_1.d.c.x * var_0.d.a))), var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b)) + arg_3), _wgslsmith_f_op_f32(ceil(2559f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.c * _wgslsmith_f_op_f32(ceil(arg_0.a)))))), var_0.d.d);
    var var_2 = Struct_4(!(!select(vec2<bool>(true, true), vec2<bool>(false, global2.d.d), arg_1.d.d)), vec3<u32>(~0u, var_0.b.a.x, 4294967295u), Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(abs(var_0.a.x), arg_1.a.x, i32(-1i) * -49670i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.x, 1i, 24218i), vec3<i32>(0i, 2147483647i, 16122i))), func_2(), arg_3, Struct_2(240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-249f, -1849f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, var_0.c, 1269f))), !all(vec4<bool>(arg_0.d, arg_1.d.d, arg_0.d, true)))), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -575f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - global2.c) + _wgslsmith_f_op_f32(-arg_2.x)), arg_1.d.b)), global2.d.c, !(!var_1.d)), true);
    return Struct_3(var_0.a, func_2(), _wgslsmith_f_op_f32(max(global2.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.c.x * global2.d.c.x)))))), Struct_2(arg_1.d.b, arg_3, var_1.c, any(vec2<bool>(global2.d.d, all(var_2.a)))));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    global2 = func_4(Struct_2(global2.d.a, _wgslsmith_div_f32(-734f, _wgslsmith_f_op_f32(-global2.d.a)), global2.d.c, true), Struct_3(global2.a, func_2(), 1646f, Struct_2(global2.c, global2.d.b, global2.d.c, _wgslsmith_f_op_f32(abs(-432f)) >= _wgslsmith_f_op_f32(sign(1128f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global2.d.c.wzz))), global2.c);
    var var_0 = func_4(func_4(global2.d, func_4(func_4(Struct_2(-1000f, -446f, global2.d.c, false), func_4(global2.d, Struct_3(global2.a, global2.b, global2.c, Struct_2(global2.d.c.x, -663f, global2.d.c, false)), vec3<f32>(global2.c, -1791f, global2.c), 1000f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-942f, global2.d.b, -292f))), _wgslsmith_f_op_f32(-global2.d.c.x)).d, Struct_3(abs(global2.a), func_2(), _wgslsmith_f_op_f32(exp2(global2.c)), Struct_2(-559f, global2.d.a, vec4<f32>(818f, global2.d.a, global2.c, global2.c), true)), func_4(Struct_2(global2.c, 1880f, vec4<f32>(global2.d.a, -1826f, 226f, -1751f), true), func_4(Struct_2(-212f, 576f, vec4<f32>(global2.d.a, global2.d.c.x, global2.c, global2.c), true), Struct_3(global2.a, Struct_1(arg_0.a), -900f, global2.d), global2.d.c.wxx, global2.c), global2.d.c.xwx, func_4(Struct_2(621f, 178f, vec4<f32>(-1083f, global2.d.c.x, 307f, 163f), false), Struct_3(global2.a, global2.b, global2.c, global2.d), vec3<f32>(688f, -1926f, -731f), -1460f).c).d.c.yxz, 196f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(398f, global2.d.b, -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, global2.d.a, global2.d.c.x) + global2.d.c.wxx)), global2.d.c.xyw, true == (global2.d.d | global2.d.d))), -553f).d, func_4(global2.d, func_4(Struct_2(_wgslsmith_f_op_f32(-global2.d.a), _wgslsmith_f_op_f32(620f + global2.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, global2.c, global2.d.a, global2.c)), all(vec3<bool>(true, global2.d.d, global2.d.d))), Struct_3(global2.a, global2.b, _wgslsmith_f_op_f32(f32(-1f) * -649f), global2.d), vec3<f32>(global2.c, _wgslsmith_f_op_f32(select(global2.d.b, -296f, global2.d.d)), _wgslsmith_f_op_f32(global2.c - 216f)), -1085f), global2.d.c.wyy, 2222f), global2.d.c.wyy, _wgslsmith_f_op_f32(sign(-636f))).d;
    var var_1 = global1[_wgslsmith_index_u32(arg_0.a.x, 20u)];
    let var_2 = ~global2.b.a;
    var var_3 = ~(~var_1.c.a.x) << (_wgslsmith_sub_u32(var_1.b.x, arg_0.a.x) % 32u);
    return ~(~_wgslsmith_mod_vec3_u32(~(~global0[_wgslsmith_index_u32(1u, 20u)]), vec3<u32>(18992u, 60955u, ~u_input.a)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> vec3<i32> {
    var var_0 = vec4<i32>(41730i, _wgslsmith_add_i32(2147483647i, ~(1i ^ global2.a.x)), _wgslsmith_mult_i32(countOneBits(~(~(-2147483647i))), _wgslsmith_clamp_i32(arg_2 ^ 2147483647i, _wgslsmith_mult_i32(arg_2, global2.a.x), global2.a.x) | _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_2, 8723i, -10856i), arg_0.c.a.x)), arg_0.c.a.x);
    let var_1 = Struct_4(!vec2<bool>(!arg_0.c.d.d, global2.d.d), global0[_wgslsmith_index_u32(~arg_3, 20u)], arg_0.c, Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(250f, global2.c)), _wgslsmith_f_op_f32(f32(-1f) * -320f)))), arg_0.d.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1328f, global2.c) + _wgslsmith_f_op_f32(max(arg_0.c.c, -823f))), _wgslsmith_f_op_f32(min(1617f, _wgslsmith_f_op_f32(-global2.d.b))), _wgslsmith_div_f32(global2.c, -1230f)), any(vec3<bool>(global2.d.d, arg_0.b.x >= 51043u, true))), !global2.d.d);
    let var_2 = _wgslsmith_sub_i32(2147483647i, var_1.c.a.x);
    var var_3 = -(~vec4<i32>(_wgslsmith_sub_i32(-arg_2, var_2), 0i, arg_0.c.a.x, 1i));
    let var_4 = arg_0.c.d.d;
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(abs(global2.a | -vec3<i32>(global2.a.x, 0i, global2.a.x)) | func_5(Struct_4(!vec2<bool>(true, global2.d.d), func_1(Struct_1(global2.b.a)), func_4(Struct_2(-860f, 1404f, vec4<f32>(global2.d.a, 467f, global2.d.b, 615f), true), Struct_3(global2.a, Struct_1(vec4<u32>(global2.b.a.x, global2.b.a.x, 90175u, u_input.a)), global2.c, Struct_2(1467f, global2.d.a, global2.d.c, global2.d.d)), global2.d.c.zwx, -524f), Struct_2(228f, global2.c, vec4<f32>(global2.c, -315f, global2.c, -433f), false), any(vec2<bool>(global2.d.d, global2.d.d))), func_4(Struct_2(global2.c, global2.c, vec4<f32>(1815f, global2.d.c.x, global2.d.a, 612f), global2.d.d), func_4(Struct_2(global2.d.a, 1379f, vec4<f32>(-514f, global2.d.a, -1011f, global2.c), false), Struct_3(vec3<i32>(-20030i, 0i, -31160i), global2.b, global2.c, global2.d), vec3<f32>(global2.c, global2.c, -1372f), 1576f), global2.d.c.zzy, global2.c).d, global2.a.x, _wgslsmith_div_u32(~u_input.b, global2.b.a.x << (u_input.a % 32u))), global2.b, -248f, func_4(global2.d, func_4(Struct_2(global2.c, _wgslsmith_f_op_f32(f32(-1f) * -1748f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.c.x, global2.d.c.x, 492f, -1335f)), global2.d.d), Struct_3(global2.a, func_2(), -966f, func_4(Struct_2(225f, -511f, vec4<f32>(579f, global2.c, 1233f, global2.c), global2.d.d), Struct_3(global2.a, global2.b, global2.c, Struct_2(-251f, global2.c, vec4<f32>(global2.d.b, 1000f, 1000f, global2.c), global2.d.d)), global2.d.c.zyx, 226f).d), vec3<f32>(847f, _wgslsmith_f_op_f32(575f + global2.c), -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-809f - global2.c) + 584f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global2.d.c.yyw)) - global2.d.c.wyx)), global2.c).d);
    var var_0 = global2.d;
    var var_1 = func_4(func_4(Struct_2(863f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a + -665f), _wgslsmith_f_op_f32(f32(-1f) * -938f))), vec4<f32>(var_0.b, _wgslsmith_f_op_f32(max(global2.d.a, global2.c)), _wgslsmith_f_op_f32(2361f * -1580f), _wgslsmith_div_f32(var_0.a, 825f)), any(vec2<bool>(true, true))), func_4(func_4(global2.d, Struct_3(vec3<i32>(global2.a.x, 0i, -1i), global2.b, 1000f, Struct_2(var_0.b, -1000f, var_0.c, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-222f, 792f, 600f) * vec3<f32>(-209f, -992f, -1164f)), _wgslsmith_f_op_f32(min(947f, var_0.c.x))).d, Struct_3(~global2.a, Struct_1(global2.b.a), global2.d.b, Struct_2(var_0.a, var_0.a, global2.d.c, true)), var_0.c.yyz, _wgslsmith_f_op_f32(f32(-1f) * -2072f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, var_0.c.x) + _wgslsmith_f_op_f32(trunc(var_0.b))), global2.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.a + 184f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + _wgslsmith_f_op_f32(var_0.c.x * global2.d.a)))).d, func_4(func_4(func_4(global2.d, Struct_3(vec3<i32>(global2.a.x, global2.a.x, global2.a.x), Struct_1(vec4<u32>(26343u, u_input.a, global2.b.a.x, global2.b.a.x)), global2.c, global2.d), var_0.c.yxy, _wgslsmith_f_op_f32(abs(var_0.c.x))).d, Struct_3(vec3<i32>(global2.a.x, -2147483647i, 52135i), func_4(global2.d, Struct_3(vec3<i32>(global2.a.x, global2.a.x, -4706i), global2.b, var_0.c.x, Struct_2(-146f, var_0.a, vec4<f32>(var_0.b, 1068f, var_0.a, 1140f), var_0.d)), vec3<f32>(-1003f, var_0.c.x, -1562f), -369f).b, 291f, Struct_2(-1000f, -1028f, global2.d.c, global2.d.d)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.d.c.xyw), _wgslsmith_f_op_vec3_f32(min(global2.d.c.wwy, global2.d.c.xzw)), 47281u <= u_input.b)), _wgslsmith_f_op_f32(sign(var_0.c.x))).d, Struct_3(global2.a, Struct_1(firstLeadingBit(global2.b.a)), 1080f, Struct_2(_wgslsmith_f_op_f32(max(191f, var_0.b)), func_4(global2.d, Struct_3(global2.a, Struct_1(vec4<u32>(u_input.b, 23246u, global2.b.a.x, 12105u)), global2.d.b, global2.d), var_0.c.zzy, global2.c).d.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, var_0.c.x, -339f, 1000f) * vec4<f32>(global2.c, 577f, 1414f, var_0.b)), true)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.d.c.x, var_0.c.x, -402f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.d.c.x))))), global2.d.c.xzw, _wgslsmith_f_op_f32(-824f + 1742f)).d;
    var var_2 = var_0.d;
    var var_3 = var_0.d || false;
    global3 = _wgslsmith_f_op_f32(sign(-1284f));
    var var_4 = global2.d;
    var_4 = Struct_2(129f, _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_div_f32(-756f, global2.d.b)), var_1.c, any(select(select(vec4<bool>(var_0.d, var_0.d, true, global2.d.d), !vec4<bool>(false, true, true, var_1.d), var_4.d), !(!vec4<bool>(global2.d.d, var_1.d, var_0.d, global2.d.d)), -483f == _wgslsmith_f_op_f32(abs(global2.d.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(global2.a)), ~(~(abs(1i) & _wgslsmith_div_i32(global2.a.x, global2.a.x))), global2.d.c.wwy);
}

