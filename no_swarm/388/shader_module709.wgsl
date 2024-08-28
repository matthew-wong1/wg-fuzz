struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 48441i, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(23124i, 1i), 2147483647i, vec3<bool>(false, false, true)));

var<private> global1: Struct_5 = Struct_5(vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i), -49063i, vec3<bool>(true, true, true)), Struct_1(vec2<i32>(2147483647i, -1i), 0i, vec3<bool>(false, false, true))), false);

var<private> global2: array<i32, 18> = array<i32, 18>(1i, 8226i, 45555i, 0i, -23764i, 1i, -1i, -26701i, 44840i, 0i, 0i, -42241i, 22833i, 2147483647i, 3970i, -9556i, -1i, -23567i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<u32>) -> f32 {
    let var_0 = max(min(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.b.x), ~vec3<i32>(53557i, 57932i, u_input.c), vec3<i32>(global1.b.a.b, -2147483647i, global0.a.b))), vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 19753i, arg_0.b), vec3<i32>(1i, global0.a.a.x, 12356i)), min(u_input.c, u_input.b.x), global1.b.b.a.x >> (~arg_3.x % 32u))), vec3<i32>(-1i) * -vec3<i32>(-global1.b.b.b, -2147483647i, countOneBits(arg_0.b)));
    var var_1 = ~u_input.a.x;
    let var_2 = !(!select(select(global1.a, arg_1, !arg_1), select(vec4<bool>(false, false, true, global1.b.a.c.x), !arg_1, arg_1), (arg_2 || arg_1.x) | (global0.b.c.x | false)));
    let var_3 = Struct_4(arg_0);
    global2 = array<i32, 18>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -686f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-335f - -679f))) - -1327f), -215f);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<bool>, arg_3: f32) -> bool {
    let var_0 = !select(vec2<bool>(true, arg_2.x), vec2<bool>(all(vec2<bool>(false, arg_2.x)), !(global0.b.c.x && false)), vec2<bool>((arg_0.x == global2[_wgslsmith_index_u32(7044u, 18u)]) & any(global0.a.c.zy), all(global1.a.xzy)));
    var var_1 = vec4<u32>(reverseBits(u_input.a.x), ~(~(~31701u)), 1u, u_input.a.x);
    var var_2 = min(~(~(~u_input.a) | u_input.a), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_1.x, 1590u, var_1.x)), ~(~vec3<u32>(49244u, 0u, u_input.a.x))));
    var var_3 = var_1.wwx;
    let var_4 = select(max(global0.a.b, -3061i), -2940i, true);
    return !var_0.x;
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_2(global0.b, global0.b);
    var_0 = global1.b;
    global2 = array<i32, 18>();
    var_0 = global1.b;
    let var_1 = Struct_3(func_4(_wgslsmith_div_vec3_i32(vec3<i32>(~1i, 1i, global1.b.b.a.x ^ global1.b.a.b), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(var_0.b.a.x, global1.b.a.b, -5350i), vec3<i32>(global1.b.b.a.x, -12840i, -47968i), vec3<bool>(var_0.b.c.x, false, true)), ~vec3<i32>(var_0.b.b, 3426i, global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec3<i32>(-3817i, -13041i, 49635i) >> (vec3<u32>(u_input.a.x, 4605u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0.a, vec4<bool>(true, true, global1.c, false), global1.a.x, vec4<u32>(4294967295u, 1u, 65131u, 28278u))) + _wgslsmith_f_op_f32(-110f + 316f)) * 1f), select(vec4<bool>(true, global0.b.c.x, true, var_0.a.c.x), vec4<bool>(var_0.a.c.x, global0.a.c.x, global1.b.b.b >= global0.a.a.x, var_0.a.c.x), select(global1.a, vec4<bool>(global1.a.x, global0.a.c.x, global1.a.x, var_0.a.c.x), true)), 1000f), vec4<bool>(!(_wgslsmith_div_u32(0u, u_input.a.x) <= 0u), all(vec3<bool>(global1.b.b.c.x & global0.b.c.x, any(vec4<bool>(var_0.b.c.x, true, false, global1.b.a.c.x)), var_0.b.c.x | var_0.a.c.x)), (u_input.a.x != _wgslsmith_add_u32(4294967295u, u_input.a.x)) | (u_input.a.x != u_input.a.x), false), global1.b, global1.b.a, !select(var_0.b.c, select(global0.a.c, global1.a.wwz, !vec3<bool>(true, global0.b.c.x, global0.b.c.x)), global0.b.c.x));
    return Struct_5(vec4<bool>(true, false, !((global1.a.x & var_0.b.c.x) | var_1.b.x), var_1.a), global1.b, !var_1.d.c.x);
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    global0 = Struct_2(func_2().b.b, Struct_1(vec2<i32>(-49663i, var_0.b.b.b), var_0.b.b.b, vec3<bool>(true, global0.b.c.x || !global0.b.c.x, false)));
    let var_1 = Struct_2(func_2().b.a, Struct_1(vec2<i32>(firstLeadingBit(1i), 1i) | vec2<i32>(global0.b.a.x << (0u % 32u), 64984i), ~(-25287i) >> (u_input.a.x % 32u), select(global0.a.c, !vec3<bool>(global1.c, global1.a.x, false), true)));
    var var_2 = var_0.a.x;
    var var_3 = max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x), vec4<u32>(72634u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(59824u, u_input.a.x, 1u, u_input.a.x))), (vec4<u32>(u_input.a.x, 72978u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, 2077u, u_input.a.x, u_input.a.x)) ^ ~vec4<u32>(u_input.a.x, 45321u, u_input.a.x, 105065u)) << ((reverseBits(select(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 59098u, u_input.a.x), var_0.b.b.c.x)) | ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 26861u, 1u, 114736u), vec4<u32>(u_input.a.x, 20226u, 30360u, u_input.a.x))) % vec4<u32>(32u)));
    return Struct_3(!global1.b.a.c.x, select(select(!(!vec4<bool>(var_0.b.a.c.x, true, var_1.b.c.x, false)), vec4<bool>(true, true, true, all(vec2<bool>(var_0.a.x, var_1.b.c.x))), vec4<bool>(true, false, var_0.b.a.c.x && false, false)), vec4<bool>(any(var_0.b.a.c), false, select(global1.b.a.c.x, true, select(false, global0.a.c.x, true)), func_2().c), all(global0.a.c)), Struct_2(func_2().b.b, Struct_1(u_input.b, ~(global1.b.a.b >> (u_input.a.x % 32u)), !select(vec3<bool>(true, var_1.a.c.x, true), vec3<bool>(global0.b.c.x, global0.a.c.x, true), var_1.b.c.x))), func_2().b.b, vec3<bool>(var_0.c, true, ~u_input.a.x < 8913u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(374f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f) * _wgslsmith_f_op_f32(f32(-1f) * -897f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) * _wgslsmith_f_op_f32(max(1000f, -1081f))) + -819f), _wgslsmith_div_f32(-1408f, _wgslsmith_f_op_f32(f32(-1f) * -984f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(var_0.zz - vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) - _wgslsmith_f_op_f32(var_0.x * var_0.x)) * _wgslsmith_f_op_f32(1791f - _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = func_1();
    var var_3 = -172f;
    let var_4 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(27176u, u_input.a.x, 70872u, u_input.a.x) | vec4<u32>(21041u, 4294967295u, 0u, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x) % vec4<u32>(32u))) ^ ~max(vec4<u32>(18010u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(18341u, u_input.a.x, 74762u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a.x, 0u, ~116098u, select(u_input.a.x, 72316u, true)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), max(vec4<u32>(1u, u_input.a.x, 18247u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 3712u, u_input.a.x))))) >> ((~(~reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) << (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, 113159u, u_input.a.x, 4294967295u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(11917u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, 31348u)), vec4<u32>(56655u, 4294967295u, 0u, u_input.a.x))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_5 = 30274u;
    let var_6 = Struct_5(func_1().b, Struct_2(func_1().d, global1.b.a), global1.c);
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(704f + 1432f) * -1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.xxx)) - _wgslsmith_f_op_vec3_f32(-var_0.yyx)));
}

