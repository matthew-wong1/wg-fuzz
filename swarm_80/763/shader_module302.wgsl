struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_5, 16>;

var<private> global2: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<u32>) -> bool {
    var var_0 = countOneBits(global0.c.x);
    global1 = array<Struct_5, 16>();
    global0 = global1[_wgslsmith_index_u32(6325u, 16u)];
    global1 = array<Struct_5, 16>();
    var_0 = 67539u;
    return arg_0;
}

fn func_3() -> f32 {
    global0 = global1[_wgslsmith_index_u32(~abs(abs(_wgslsmith_add_u32(global0.c.x, u_input.c.x))) << (_wgslsmith_mult_u32(global0.c.x, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u >> (u_input.c.x % 32u), 4294967295u, u_input.c.x), ~(~4294967295u))) % 32u), 16u)];
    var var_0 = Struct_4(global2.a);
    let var_1 = 562f;
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(var_0.a.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(var_0.a.a.www)), _wgslsmith_f_op_vec3_f32(sign(var_0.a.a.ywx)), vec3<bool>(func_1(false, var_1, global0.c), true, true))), var_0.a.c, -2147483647i));
    global0 = global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(~46631u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, global0.c.x, u_input.c.x), vec3<u32>(u_input.a.x, u_input.c.x, 1u)), _wgslsmith_mult_u32(global0.c.x, 1u), u_input.c.x), ~(vec4<u32>(0u, 0u, global0.c.x, 0u) | vec4<u32>(u_input.a.x, u_input.a.x, 0u, 77753u)))) | ~(14953u << (~(u_input.a.x ^ u_input.c.x) % 32u)), 16u)];
    return -549f;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(func_3()), vec4<bool>(true, true, all(vec4<bool>(func_1(false, global2.a.c, vec4<u32>(global0.c.x, global0.c.x, u_input.a.x, global0.c.x)), false, false, true)), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(global2.a.a.yxw + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-812f, 2518f, global0.b)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(284f)) * global2.a.c), _wgslsmith_f_op_f32(func_3()), 1433f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1042f * -875f) + _wgslsmith_f_op_f32(min(622f, global2.a.c)))), global2.a.a.wzw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a.a.x, 167f, any(vec2<bool>(true, false))))), ~_wgslsmith_div_i32(-1i, global2.a.d)));
    let var_1 = ~_wgslsmith_add_u32(_wgslsmith_mod_u32(select(u_input.a.x, 1u, true), 0u), _wgslsmith_div_u32(~4294967295u, u_input.c.x)) != countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), global0.c.xz), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, global0.c.x), global0.c.zz)) >> (~_wgslsmith_add_u32(330u, 0u) % 32u));
    var var_2 = select(_wgslsmith_sub_i32(u_input.b, _wgslsmith_clamp_i32(firstLeadingBit(abs(global2.a.d)), -2147483647i, -2147483647i)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(~u_input.b, _wgslsmith_div_i32(-2706i, -56552i), u_input.b, _wgslsmith_div_i32(0i, arg_0.x))), -(vec4<i32>(-1i) * -vec4<i32>(arg_0.x, -2147483647i, 18011i, global2.a.d))), all(vec4<bool>(true, u_input.b == -82494i, var_0.b.x, true)) | !all(vec2<bool>(false, var_1)));
    let var_3 = var_1;
    var_2 = u_input.b;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.c, -960f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(706f)))), _wgslsmith_div_f32(global2.a.c, global2.a.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(987f, -1000f, 232f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.a.b.x, var_0.a, global0.b), global2.a.a.zzx)), vec3<bool>(true, var_0.b.x, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(658f, 1000f, -468f), vec3<f32>(global2.a.a.x, 1748f, -1081f), false))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(486f, 1404f, !all(vec2<bool>(var_1, false)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a.x + global2.a.c)), _wgslsmith_f_op_f32(-var_0.c.x), true)))), reverseBits(select(0i, global0.a.x, !var_1)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: i32) -> Struct_5 {
    let var_0 = abs(global2.a.d);
    global2 = Struct_4(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(634f + -451f), _wgslsmith_f_op_f32(floor(-176f)), -1318f, _wgslsmith_f_op_f32(sign(arg_1.a.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-260f, 419f, 398f, global2.a.a.x))) - arg_1.c.a)), arg_1.c.b, arg_1.a.c, var_0));
    var var_1 = abs(arg_1.d.xwz);
    global1 = array<Struct_5, 16>();
    let var_2 = Struct_5(global0.a, global2.a.c, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global0.c.x, global0.c.x, ~(~u_input.a.x)), reverseBits(countOneBits(vec4<u32>(u_input.a.x, global0.c.x, 1u, u_input.c.x)))));
    return Struct_5(vec2<i32>(-1i) * -var_2.a, _wgslsmith_f_op_f32(-global0.b), vec4<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.c.x, 54399u), _wgslsmith_div_u32(countOneBits(4294967295u), 8968u) | firstTrailingBit(global0.c.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global0.c.x, 4294967295u, global0.c.x), u_input.c.x), min(~var_2.c.x, ~u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(!vec4<bool>(false, false, true, func_1(true, -738f, _wgslsmith_div_vec4_u32(vec4<u32>(global0.c.x, 1u, 75025u, 41827u), vec4<u32>(global0.c.x, global0.c.x, global0.c.x, 4294967295u)))), Struct_3(global2.a, vec4<i32>(global0.a.x, _wgslsmith_add_i32(_wgslsmith_div_i32(global2.a.d, global0.a.x), select(1i, global0.a.x, false)), 0i, global2.a.d), func_2(countOneBits(vec3<i32>(global0.a.x, global2.a.d, 10562i))), vec4<i32>(global2.a.d, -1i, _wgslsmith_dot_vec2_i32(select(global0.a, vec2<i32>(-2147483647i, 1i), vec2<bool>(true, false)), vec2<i32>(-13078i, global0.a.x)), global2.a.d)), _wgslsmith_mult_i32(u_input.b & -12554i, u_input.b));
    let var_0 = Struct_2(1478f, vec4<bool>(!(!(19190i > global2.a.d)), true, false, _wgslsmith_div_u32(~31674u, reverseBits(global0.c.x)) != _wgslsmith_mod_u32(~global0.c.x, 60934u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a.a.yzy + _wgslsmith_f_op_vec3_f32(floor(global2.a.b))))), func_2(abs(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, global0.a.x, -1i), vec3<i32>(16727i, 33621i, global2.a.d)))));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1384f), global2.a.b.x, _wgslsmith_f_op_f32(min(-577f, global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f)))), var_0.d.b, _wgslsmith_f_op_f32(-func_4(vec4<bool>(true, true, u_input.b <= 0i, var_0.b.x), Struct_3(global2.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.a.d, 24805i, global2.a.d, u_input.b), vec4<i32>(-61845i, -80834i, 18585i, -5099i), vec4<i32>(var_0.d.d, 27281i, 2147483647i, -2147483647i)), Struct_1(vec4<f32>(140f, global0.b, global0.b, var_0.a), global2.a.a.yzw, -1000f, global2.a.d), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 0i, global2.a.d, -2147483647i), vec4<i32>(u_input.b, -1i, -1i, 27200i))), _wgslsmith_add_i32(global0.a.x << (4294967295u % 32u), -1587i)).b), min(abs(func_2(select(vec3<i32>(var_0.d.d, var_0.d.d, u_input.b), vec3<i32>(47166i, 57186i, u_input.b), vec3<bool>(true, var_0.b.x, true))).d), _wgslsmith_sub_i32(reverseBits(select(global2.a.d, u_input.b, false)), 67741i)));
    let var_2 = Struct_4(func_2(vec3<i32>(-1i) * -vec3<i32>(var_1.d, u_input.b, -2147483647i)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1484f), 1513f) * _wgslsmith_div_f32(_wgslsmith_div_f32(-125f, global2.a.b.x), -1736f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f + 1289f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-412f, _wgslsmith_f_op_f32(283f + func_2(vec3<i32>(var_1.d, 11558i, -2147483647i)).b.x)), var_1.a.x, select(global0.c, vec4<u32>(firstTrailingBit(7475u), _wgslsmith_div_u32(u_input.c.x, global0.c.x), 0u, global0.c.x), var_0.b.x) | vec4<u32>(global0.c.x, u_input.c.x, u_input.a.x, 1u));
}

