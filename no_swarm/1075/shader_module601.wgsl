struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27>;

var<private> global1: u32 = 22637u;

var<private> global2: array<vec4<f32>, 17>;

var<private> global3: array<f32, 25> = array<f32, 25>(-527f, 515f, 163f, -154f, -1181f, -664f, 568f, -1768f, 846f, -397f, 143f, -411f, -607f, 1395f, 1294f, 508f, 542f, 211f, 187f, 746f, 801f, 1638f, -396f, -1124f, 766f);

var<private> global4: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> bool {
    let var_0 = Struct_4(Struct_1(43806u), select(countOneBits(u_input.a.x) >> (19413u % 32u), _wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, u_input.c.x), -7314i, u_input.c.x), true) << (0u % 32u), min(~vec4<i32>(i32(-1i) * -2147483647i, min(2147483647i, u_input.c.x), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.c.x, u_input.a.x, -2147483647i)), ~u_input.a.x), vec4<i32>(u_input.c.x ^ (u_input.a.x & u_input.c.x), countOneBits(-10942i & u_input.a.x), 2147483647i, -23883i)), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.b.x), ~u_input.b.x), vec2<u32>(62364u, 4294967295u)), 25u)]);
    var var_1 = _wgslsmith_clamp_i32(-20943i, 0i, 23074i);
    var var_2 = _wgslsmith_dot_vec3_i32(var_0.c.yyw, var_0.c.zyz);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(exp2(1f)), !(!select(!vec3<bool>(arg_0, true, true), !vec3<bool>(true, arg_0, true), true)), _wgslsmith_div_vec3_u32(vec3<u32>(~var_0.a.a, 1u, var_0.a.a), vec3<u32>(1929u, u_input.b.x, ~0u)), any(vec2<bool>(arg_0, all(vec4<bool>(false, true, true, true)))), var_0.c.x);
    global4 = _wgslsmith_add_u32(_wgslsmith_mult_u32(~(_wgslsmith_mod_u32(var_3.c.x, 31138u) >> (~u_input.b.x % 32u)), ~var_3.c.x), _wgslsmith_mult_u32(~11203u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~var_0.a.a, var_3.c.x), _wgslsmith_div_vec3_u32(countOneBits(u_input.b.zxy), select(var_3.c, vec3<u32>(var_0.a.a, var_3.c.x, 30601u), false)))));
    return any(vec3<bool>(arg_1.x, var_3.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -793f), _wgslsmith_f_op_f32(-var_0.d)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.b.x, 25u)])), -419f))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global2 = array<vec4<f32>, 17>();
    global3 = array<f32, 25>();
    let var_0 = u_input.b.x;
    let var_1 = Struct_4(Struct_1(firstTrailingBit(_wgslsmith_div_u32(3878u, var_0) & max(var_0, u_input.b.x))), i32(-1i) * -2147483647i, max(max(u_input.c, -u_input.c), vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(~73372i, u_input.a.x, ~(-2147483647i)), -1i, _wgslsmith_mult_i32(arg_0.x, _wgslsmith_dot_vec2_i32(u_input.a.yx, arg_0)))), -803f);
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(219f)), _wgslsmith_f_op_f32(trunc(978f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))), var_1.d), vec3<bool>((1i < (-23888i & arg_0.x)) || true, false, true), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x ^ 18081u, abs(0u), _wgslsmith_dot_vec4_u32(~global0[_wgslsmith_index_u32(0u, 27u)], _wgslsmith_add_vec4_u32(vec4<u32>(29885u, 1u, 21682u, 4294967295u), global0[_wgslsmith_index_u32(60968u, 27u)]))), u_input.b.wxy), !((true == (global3[_wgslsmith_index_u32(u_input.b.x, 25u)] == -1238f)) != (true & func_3(true, vec2<bool>(false, true)))), abs(arg_0.x));
    return var_1.a;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    global0 = array<vec4<u32>, 27>();
    global2 = array<vec4<f32>, 17>();
    var var_0 = arg_2.b.x;
    let var_1 = func_2(u_input.a.yx);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2.c.x - global3[_wgslsmith_index_u32(var_1.a, 25u)]), _wgslsmith_f_op_f32(min(arg_2.c.x, 788f)), global3[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.c.x, arg_2.c.x, global3[_wgslsmith_index_u32(arg_0, 25u)]))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-480f, global3[_wgslsmith_index_u32(u_input.b.x, 25u)], 1200f), vec3<f32>(arg_2.c.x, arg_2.c.x, -209f), vec3<bool>(false, true, true)))))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1433f)) * -1260f), -510f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1.a, 25u)]))))));
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    global4 = ~min(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~arg_1.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(86785u, 68088u), u_input.b.yw)), func_1(arg_0.a.x, Struct_1(arg_1.c.x), Struct_3(arg_0.a, vec4<i32>(-32886i, arg_0.d, arg_0.d, -1i), vec2<f32>(1000f, arg_1.a), arg_1.e)).a.x, ~(~35321u)), arg_1.c.x);
    let var_0 = u_input.b.xz;
    global0 = array<vec4<u32>, 27>();
    var var_1 = Struct_4(Struct_1(_wgslsmith_clamp_u32(func_1(func_2(u_input.c.zw).a, func_2(u_input.c.wz), Struct_3(var_0, arg_0.b, vec2<f32>(560f, arg_0.c.x), u_input.c.x)).a.x, ~u_input.b.x, 1u)), ~countOneBits(_wgslsmith_add_i32(-1i, 0i)), u_input.c, 585f);
    var var_2 = reverseBits((abs(select(var_1.c, vec4<i32>(-39401i, -1i, arg_0.b.x, 43142i), false)) & var_1.c) << (global0[_wgslsmith_index_u32(1u, 27u)] % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.c, _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.www, vec3<u32>(21037u, 62648u, 1971u)), u_input.b.yyw & arg_1.c, _wgslsmith_sub_vec3_u32(u_input.b.wzy | vec3<u32>(72085u, var_1.a.a, arg_0.a.x), select(vec3<u32>(arg_1.c.x, u_input.b.x, 37878u), vec3<u32>(87873u, 1u, arg_0.a.x), arg_1.b.x)))), 25u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = u_input.b.x >> (~u_input.b.x % 32u);
    global0 = array<vec4<u32>, 27>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(418f, global3[_wgslsmith_index_u32(70100u, 25u)]), 1000f)), vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~0u, 25u)]), _wgslsmith_f_op_f32(func_4(func_1(u_input.b.x, Struct_1(4294967295u), Struct_3(u_input.b.xx, u_input.c, vec2<f32>(273f, -1124f), 31274i)), Struct_2(531f, vec3<bool>(false, true, false), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), false, 4192i)))), vec2<bool>(false, select(true, true, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(238f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(27125u, 25u)]), _wgslsmith_f_op_f32(f32(-1f) * -385f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3[_wgslsmith_index_u32(26680u, 25u)], -138f))))), vec2<f32>(1f, 1f))));
    var var_1 = func_1(22998u ^ u_input.b.x, Struct_1(u_input.b.x), func_1(u_input.b.x, func_2(_wgslsmith_div_vec2_i32(abs(u_input.a.xx), max(u_input.c.wy, vec2<i32>(1i, -682i)))), Struct_3(abs(vec2<u32>(u_input.b.x, 0u)) | vec2<u32>(u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, u_input.c.x, -u_input.a.x, 0i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(var_0.x, var_0.x))), -1i ^ (u_input.c.x >> (82550u % 32u)))));
    var var_2 = func_1(min(_wgslsmith_dot_vec2_u32(~u_input.b.wy, ~select(vec2<u32>(1u, var_1.a.x), var_1.a, vec2<bool>(false, false))), 1u), Struct_1(4827u), func_1(firstTrailingBit(var_1.a.x), func_2(_wgslsmith_div_vec2_i32(u_input.c.xz, -vec2<i32>(2147483647i, u_input.a.x))), Struct_3(var_1.a, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -12138i, u_input.a.x, var_1.d), vec4<i32>(var_1.b.x, 1i, -27152i, -20700i)) << (~vec4<u32>(805u, 0u, u_input.b.x, 1u) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(var_1.c.x + -566f), func_1(61286u, Struct_1(var_1.a.x), Struct_3(var_1.a, vec4<i32>(u_input.a.x, u_input.c.x, u_input.c.x, 0i), vec2<f32>(global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(22158u, 25u)]), u_input.a.x)).c.x), var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1.a.x, 1u, 36281u)), ~vec3<u32>(4294967295u, 1u, u_input.b.x) | vec3<u32>(65727u, var_1.a.x, 39980u)) ^ ~func_1(var_1.a.x, Struct_1(0u), func_1(u_input.b.x, Struct_1(18691u), Struct_3(vec2<u32>(1474u, u_input.b.x), var_1.b, var_1.c, 12557i))).a.x, _wgslsmith_dot_vec3_i32(func_1(~var_2.a.x, Struct_1(u_input.b.x), Struct_3(max(u_input.b.xx, var_2.a), _wgslsmith_add_vec4_i32(var_2.b, vec4<i32>(var_2.b.x, 1i, -2147483647i, u_input.c.x)), var_2.c, -1i)).b.xyz, func_1(33632u, Struct_1(47843u), func_1(1u, Struct_1(var_2.a.x), Struct_3(u_input.b.xw, vec4<i32>(10148i, u_input.a.x, u_input.a.x, 71348i), vec2<f32>(133f, 1259f), var_2.b.x))).b.wyw >> ((_wgslsmith_mult_vec3_u32(u_input.b.ywx, u_input.b.yzz) & u_input.b.zwz) % vec3<u32>(32u))), ~vec2<i32>(-83499i, 521i << (u_input.b.x % 32u)), countOneBits(select(u_input.c ^ vec4<i32>(u_input.a.x, u_input.a.x, -43378i, 0i), vec4<i32>(u_input.c.x, -1i, 1i, u_input.a.x), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))) & ~(vec4<i32>(u_input.c.x, 2967i, var_1.d, u_input.c.x) >> (global0[_wgslsmith_index_u32(var_1.a.x, 27u)] % vec4<u32>(32u)))));
}

