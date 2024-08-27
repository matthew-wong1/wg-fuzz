struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec2<f32> = vec2<f32>(-664f, 777f);

var<private> global2: Struct_1 = Struct_1(false, -6959i, vec4<f32>(-620f, 1422f, -435f, -657f));

var<private> global3: vec2<u32> = vec2<u32>(50418u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.c.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -138f), _wgslsmith_f_op_f32(arg_1.d.c.x - global2.c.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(176f)), _wgslsmith_f_op_f32(floor(global1.x)), all(arg_0.b))))), -468f, 1503f);
    global0 = vec2<bool>(true, select(arg_0.d.a, global0.x, global2.a && arg_1.b.x));
    var var_1 = vec3<bool>(true, !any(!select(vec4<bool>(arg_2.x, arg_0.c.a, global0.x, arg_2.x), vec4<bool>(arg_0.d.a, arg_1.c.a, global0.x, true), vec4<bool>(global0.x, true, arg_2.x, true))), false == !arg_2.x);
    global3 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(select(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(0u, 4294967295u)), ~vec2<u32>(arg_1.a, global3.x)), vec2<u32>(0u, _wgslsmith_mod_u32(global3.x, 27926u)), arg_0.c.b != _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, global2.b, arg_1.c.b), vec4<i32>(u_input.a, arg_1.d.b, 45725i, -1i))), _wgslsmith_mod_vec2_u32(~(vec2<u32>(4294967295u, arg_1.a) ^ vec2<u32>(arg_1.a, global3.x)), _wgslsmith_div_vec2_u32(~vec2<u32>(46085u, arg_0.a), abs(vec2<u32>(44646u, 1u))))), vec2<u32>(global3.x, global3.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global2.c)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-540f - global2.c.x))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 1566f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - arg_1.d.c.x))))));
    return var_1.yx;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: bool) -> vec4<f32> {
    var var_0 = Struct_1(~(-u_input.a) >= global2.b, global2.b, vec4<f32>(global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.c.x))), global1.x, _wgslsmith_f_op_f32(select(global2.c.x, 110f, global0.x))));
    global0 = !(!(!func_3(Struct_2(global3.x, arg_1.b, arg_1.d, Struct_1(global2.a, global2.b, vec4<f32>(-451f, var_0.c.x, var_0.c.x, global1.x))), Struct_2(arg_1.a, vec3<bool>(var_0.a, arg_1.b.x, global0.x), Struct_1(arg_1.d.a, -2147483647i, vec4<f32>(global2.c.x, -973f, -408f, var_0.c.x)), arg_1.d), !arg_0)));
    global1 = vec2<f32>(1625f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -472f), global2.c.x)))));
    var var_1 = var_0.c.zw;
    var_0 = Struct_1(!(!(reverseBits(arg_2.x) >= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global3.x, 1u), vec3<u32>(arg_1.a, 0u, 4294967295u)))), -2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) - _wgslsmith_f_op_vec4_f32(sign(var_0.c)))));
    return _wgslsmith_f_op_vec4_f32(step(var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.d.c)))));
}

fn func_1() -> Struct_1 {
    var var_0 = 8579u;
    var_0 = global3.x;
    global1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global2.c.xx + vec2<f32>(global2.c.x, -593f))));
    global2 = Struct_1(global2.a, select(_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.b, global2.b), vec2<i32>(6688i, 23145i))), select(-1i, u_input.a, !global0.x), global2.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global2.c.x, -621f, -796f) - vec4<f32>(1283f, -1342f, global2.c.x, global2.c.x)) - _wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(global0.x, global2.a), Struct_2(global3.x, vec3<bool>(false, false, true), Struct_1(false, global2.b, global2.c), Struct_1(false, global2.b, global2.c)), vec4<u32>(1u, 1u, 84165u, global3.x), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-775f, 1535f, 369f, 433f) + global2.c), vec4<f32>(global1.x, 855f, 1000f, -1348f)))))));
    global2 = Struct_1(!(!global0.x), max(_wgslsmith_mod_i32(~(i32(-1i) * -1i), 1i), -27868i), _wgslsmith_f_op_vec4_f32(global2.c * global2.c));
    return Struct_1(max(~abs(global3.x), global3.x) >= ~1u, u_input.a, global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a) >> ((vec2<u32>(19340u, global3.x) >> (vec2<u32>(global3.x, 20200u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(abs(u_input.a), reverseBits(-28857i)))) & -select(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, -1i), _wgslsmith_mod_vec2_i32(-vec2<i32>(66894i, 2147483647i), ~vec2<i32>(0i, global2.b)), true);
    global2 = func_1();
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.c.wx));
    var var_1 = -max(vec4<i32>(-(~u_input.a), var_0.x >> (global3.x % 32u), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, u_input.a), -global2.b), _wgslsmith_dot_vec2_i32(-vec2<i32>(49457i, global2.b), vec2<i32>(-14911i, u_input.a))), vec4<i32>(_wgslsmith_mod_i32(u_input.a, func_1().b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_0.x, -14033i), vec3<i32>(global2.b, var_0.x, global2.b)), global2.b, select(-2147483647i, -7224i, global3.x > 23593u)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -128f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, -2147483647i, _wgslsmith_mult_i32(var_0.x, var_1.x), u_input.a), _wgslsmith_mult_vec4_i32(-abs(vec4<i32>(var_1.x, var_1.x, u_input.a, -43598i)), vec4<i32>(var_1.x, -88645i, var_0.x, 11177i))), 21205i, global2.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2, global2.c.x), global2.c.wz, vec2<bool>(global2.a, true))), _wgslsmith_div_vec2_f32(global2.c.zz, vec2<f32>(global2.c.x, -1610f))), vec2<f32>(-701f, _wgslsmith_f_op_f32(round(1176f)))))));
}

