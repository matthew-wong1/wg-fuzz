struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<u32, 27>;

var<private> global3: Struct_5 = Struct_5(-47035i, 29771u, Struct_1(vec4<f32>(218f, 664f, 1000f, 636f)), true);

var<private> global4: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_3(global0.d, global0.c.a.xyx, !select(select(arg_1, select(vec4<bool>(arg_1.x, true, arg_2.x, true), vec4<bool>(global3.d, true, true, true), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x)), arg_2.x), arg_1, true), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a.x, global0.d.a.x, global3.c.a.x, -2457f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.a.x, global3.c.a.x, -364f, global0.c.a.x))))), 1000f);
    var var_1 = !(var_0.e <= _wgslsmith_f_op_f32(round(183f)));
    let var_2 = 1325f;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2294f, 299f, global3.c.a.x, var_0.b.x), global0.d.a, false))), _wgslsmith_f_op_vec4_f32(global0.c.a + _wgslsmith_f_op_vec4_f32(step(var_0.a.a, vec4<f32>(global0.c.a.x, global0.d.a.x, global0.c.a.x, global0.d.a.x)))))))));
    var_1 = arg_2.x || any(select(!global0.e, vec4<bool>(all(arg_1.zxy), all(vec4<bool>(arg_2.x, false, false, true)), true, global0.e.x), false));
    return vec4<bool>(true & arg_2.x, true, global0.e.x, false);
}

fn func_2() -> Struct_5 {
    global1 = array<Struct_1, 14>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -620f), 870f, -977f, _wgslsmith_f_op_f32(f32(-1f) * -1802f))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global3.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2065f))))), _wgslsmith_f_op_f32(-1333f * _wgslsmith_f_op_f32(global3.c.a.x - _wgslsmith_f_op_f32(-global3.c.a.x))), -947f), global0.e, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.c.a + global3.c.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.a.x, global0.c.a.x, 1446f, global0.c.a.x)))), _wgslsmith_f_op_f32(-188f - -276f));
    global2 = array<u32, 27>();
    global2 = array<u32, 27>();
    let var_1 = Struct_2(Struct_1(global0.c.a), vec4<f32>(-208f, global0.d.a.x, 707f, global3.c.a.x), vec3<i32>(global3.a, _wgslsmith_clamp_i32(-26706i, 1i, global3.a), -(i32(-1i) * -global3.a)), select(var_0.c.zzy, vec3<bool>(true, 569f == _wgslsmith_f_op_f32(-var_0.d.a.x), true), var_0.c.wxy), global0.c);
    return Struct_5(-_wgslsmith_sub_i32(firstLeadingBit(1i), -_wgslsmith_mod_i32(var_1.c.x, -34214i)), 1u, Struct_1(_wgslsmith_f_op_vec4_f32(select(global3.c.a, _wgslsmith_f_op_vec4_f32(ceil(var_0.d.a)), func_3(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(global2[_wgslsmith_index_u32(28009u, 27u)], global0.b, u_input.c.x, u_input.a.x)), select(vec4<bool>(false, var_0.c.x, true, true), var_0.c, var_1.d.x), select(vec3<bool>(var_0.c.x, var_1.d.x, true), vec3<bool>(true, true, true), var_1.d.x))))), true && !all(var_1.d.yy));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_4 {
    global3 = func_2();
    var var_0 = Struct_2(global3.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -154f)) * -1921f), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global3.c.a.x)), global3.c.a.x)), 1623f), abs(vec3<i32>(-1i) * -abs(vec3<i32>(-10143i, -2147483647i, global3.a))), vec3<bool>(global3.d, global0.e.x && (-129f <= _wgslsmith_div_f32(global3.c.a.x, global0.d.a.x)), true), func_2().c);
    global0 = Struct_4(u_input.b, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.a.x << (~4294967295u % 32u)), 27u)], 13859u), global1[_wgslsmith_index_u32(~u_input.c.x << (~_wgslsmith_mod_u32(0u, 1655u) % 32u), 14u)], func_2().c, select(func_3(~firstLeadingBit(vec4<u32>(1u, global3.b, 23522u, global2[_wgslsmith_index_u32(global3.b, 27u)])), global0.e, global0.e.zzz), !global0.e, !global0.e.x));
    global2 = array<u32, 27>();
    global0 = Struct_4(_wgslsmith_dot_vec2_u32(u_input.c.wx, u_input.a.xz), ~u_input.c.x, Struct_1(global3.c.a), var_0.a, select(!select(global0.e, func_3(u_input.c, global0.e, vec3<bool>(true, var_0.d.x, true)), false && global0.e.x), vec4<bool>(var_0.d.x, any(select(global0.e.zx, vec2<bool>(global0.e.x, global0.e.x), vec2<bool>(var_0.d.x, false))), !(true || global3.d), global0.e.x), !func_3(select(vec4<u32>(42957u, global0.a, global2[_wgslsmith_index_u32(global0.a, 27u)], u_input.b), vec4<u32>(53097u, 1u, 3523u, global0.b), vec4<bool>(false, true, global3.d, var_0.d.x)), global0.e, vec3<bool>(false, true, global3.d)).x));
    return Struct_4(~global3.b, ~_wgslsmith_clamp_u32(90732u, min(37729u, 21080u), _wgslsmith_add_u32(0u, global0.b)) >> (33943u % 32u), Struct_1(func_2().c.a), var_0.e, vec4<bool>(any(vec3<bool>(global0.d.a.x <= global0.d.a.x, !global3.d, global3.d)), _wgslsmith_mod_i32(global3.a, 1i) < var_0.c.x, false, true));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_4 {
    let var_0 = arg_3;
    global1 = array<Struct_1, 14>();
    var var_1 = vec4<i32>(global3.a, min(global3.a, -(35837i ^ firstTrailingBit(2147483647i))), arg_3.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -(~var_0.c.x), i32(-1i) * -1i, 1i), vec4<i32>(-var_0.c.x, -1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.c.x, arg_3.c.x), _wgslsmith_div_i32(34558i, var_0.c.x)), min(1i, 27650i))));
    let var_2 = func_2().c;
    global2 = array<u32, 27>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 49447u;
    global2 = array<u32, 27>();
    global0 = func_4(func_1(i32(-1i) * -29044i, ~(~(-14418i))), true, vec4<u32>(u_input.c.x, ~(~firstLeadingBit(global3.b)), 71243u, countOneBits(reverseBits(0u))), Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.a.x, -988f, 154f, -877f), global3.c.a, vec4<bool>(global3.d, global3.d, global3.d, global3.d))), vec4<f32>(-1063f, global3.c.a.x, 872f, global0.c.a.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(372f, global3.c.a.x), _wgslsmith_f_op_f32(sign(global3.c.a.x)), global3.c.a.x, -440f))), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, select(61322i, global3.a, true), -global3.a), vec3<i32>(global3.a, select(-53288i, 6412i, global0.e.x), 0i)), global0.e.ywz, Struct_1(global0.c.a)));
    let var_1 = Struct_3(func_1(-48743i, ~_wgslsmith_mod_i32(32784i, -2147483647i)).d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c.a.yzz - global0.d.a.wyx) - func_1(global3.a, global3.a).c.a.yyw)) + global0.d.a.yyz), global0.e, Struct_1(global3.c.a), -1353f);
    var var_2 = vec4<bool>(!global3.d, any(vec3<bool>((global3.a & -2147483647i) >= -1i, all(global0.e.zxy), 107f < global3.c.a.x)), func_2().d, !global3.d);
    var var_3 = func_1(_wgslsmith_clamp_i32(~global3.a, global3.a, global3.a & abs(global3.a)), -firstTrailingBit(~1i)).e.ww;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global0.d.a.x, -212f), vec2<f32>(global0.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(171f)), _wgslsmith_div_f32(global0.c.a.x, -653f)))), _wgslsmith_f_op_vec3_f32(-global3.c.a.zzw));
}

