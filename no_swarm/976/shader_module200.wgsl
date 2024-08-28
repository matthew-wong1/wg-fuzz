struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: Struct_3;

var<private> global2: array<u32, 17> = array<u32, 17>(46123u, 23062u, 1u, 75017u, 4087u, 1u, 30728u, 4294967295u, 1u, 68133u, 1u, 4294967295u, 34110u, 0u, 23284u, 21752u, 0u);

var<private> global3: vec3<u32> = vec3<u32>(0u, 77676u, 74183u);

var<private> global4: Struct_1 = Struct_1(41361u, vec4<f32>(273f, -1324f, 827f, 864f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = Struct_3(global4.b.yz, global1.d, -_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), global1.b, vec3<bool>(false, any(select(vec2<bool>(global1.e.x, false), vec2<bool>(global1.e.x, false), !global1.e.xx)), false));
    let var_0 = global1.e.x;
    global0 = array<Struct_1, 30>();
    global4 = Struct_1(4294967295u, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -528f)), _wgslsmith_f_op_f32(f32(-1f) * -266f), global4.b.x, _wgslsmith_f_op_f32(abs(1446f))), _wgslsmith_f_op_vec4_f32(sign(global1.b.d.b))));
    let var_1 = global4.b.x;
    return Struct_1(global1.b.d.a, _wgslsmith_f_op_vec4_f32(-global1.d.b.b));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_3(global1.b.d.b.zw, Struct_2(_wgslsmith_mult_vec3_i32(~(vec3<i32>(0i, 0i, 0i) | vec3<i32>(global1.d.a.x, 2147483647i, global1.c)), -global1.d.a), func_2(global1.d.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global4.b.zzz, global4.b.yzw)) + vec3<f32>(global1.d.c.x, 1000f, -214f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global4.b.zxx, vec3<f32>(global4.b.x, global1.d.b.b.x, global4.b.x)))), vec3<bool>(true, all(vec3<bool>(global1.e.x, false, global1.e.x)), true))), func_2(_wgslsmith_dot_vec2_i32(select(global1.b.a.zy, u_input.b, vec2<bool>(true, false)), u_input.b))), _wgslsmith_sub_i32(global1.b.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b ^ u_input.b, vec2<i32>(global1.b.a.x, -1i) & vec2<i32>(31022i, global1.c)), vec2<i32>(global1.d.a.x, global1.d.a.x))), global1.d, select(global1.e, global1.e, select(vec3<bool>(all(global1.e.xz), true, true), select(!vec3<bool>(global1.e.x, false, false), global1.e, global1.e), (u_input.c >> (u_input.c % 32u)) >= 74666u)));
    global1 = var_0;
    global1 = Struct_3(var_0.b.d.b.xw, global1.d, -_wgslsmith_dot_vec4_i32(select(vec4<i32>(-22363i, 1i, global1.d.a.x, var_0.b.a.x), max(vec4<i32>(28485i, u_input.d.x, 2147483647i, 62976i), vec4<i32>(var_0.d.a.x, 30819i, global1.c, global1.b.a.x)), true), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -37238i, var_0.c, 2147483647i), vec4<i32>(-2147483647i, -1i, var_0.c, global1.b.a.x)), -vec4<i32>(global1.c, -2147483647i, global1.d.a.x, var_0.c))), global1.b, vec3<bool>(all(vec2<bool>(global1.e.x, true)), false, global1.e.x));
    global0 = array<Struct_1, 30>();
    global1 = var_0;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(sign(global4.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -960f)))));
}

fn func_1() -> Struct_3 {
    global4 = global0[_wgslsmith_index_u32(1u, 30u)];
    var var_0 = Struct_2(vec3<i32>(u_input.d.x, ~firstLeadingBit(global1.c & global1.c), 37213i), func_2(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, u_input.d.x, 0i), ~vec4<i32>(global1.c, -501i, global1.d.a.x, global1.c))), _wgslsmith_f_op_vec3_f32(func_3()), func_2(~global1.d.a.x));
    global3 = vec3<u32>(~0u, var_0.b.a, global2[_wgslsmith_index_u32(u_input.c, 17u)]);
    var var_1 = Struct_4(vec3<bool>(select(any(vec3<bool>(true, global1.e.x, false)), !(global1.e.x & global1.e.x), 1394f <= var_0.b.b.x), !all(global1.e), select(any(global1.e.yx) || true, global1.e.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-876f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.b.x, var_0.b.b.x)) * _wgslsmith_f_op_f32(select(var_0.d.b.x, global4.b.x, global1.e.x))))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec3_f32(func_3()).xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.c.zy, var_0.d.b.zy, var_1.a.zz))))), Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, 2147483647i), firstTrailingBit(var_0.a.x), u_input.a), min(max(vec3<i32>(u_input.a, 3458i, -21440i), vec3<i32>(u_input.d.x, 35255i, -13615i)), vec3<i32>(-2147483647i, global1.c, global1.b.a.x))), Struct_1(~_wgslsmith_mod_u32(40498u, 37109u), _wgslsmith_f_op_vec4_f32(var_0.d.b * global4.b)), vec3<f32>(global1.d.b.b.x, -1221f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.d.b.x)), _wgslsmith_f_op_f32(ceil(-589f)))), var_0.d), _wgslsmith_sub_i32(u_input.a, firstLeadingBit(-u_input.d.x | global1.d.a.x)), global1.b, select(var_1.a, select(select(var_1.a, global1.e, !vec3<bool>(var_1.a.x, global1.e.x, global1.e.x)), global1.e, global1.e.x), global1.e.x));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_5 {
    global1 = arg_1;
    let var_0 = global1.e;
    global1 = func_1();
    let var_1 = global1.b;
    let var_2 = Struct_5(-select(var_1.a, firstTrailingBit(abs(vec3<i32>(arg_1.d.a.x, u_input.a, global1.d.a.x))), _wgslsmith_clamp_u32(u_input.c, arg_1.d.b.a, 0u) < (var_1.b.a ^ 5483u)));
    return Struct_5(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(17413i, 5786i, -31583i), vec3<i32>(var_1.a.x, arg_3.x, var_2.a.x)), 1i), abs(arg_1.b.a)));
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_5) -> Struct_3 {
    let var_0 = true;
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(-func_1().b.a, -(~vec3<i32>(22717i, -1i, arg_3.a.x))), ~_wgslsmith_clamp_vec3_i32(reverseBits(global1.d.a), _wgslsmith_div_vec3_i32(vec3<i32>(arg_3.a.x, u_input.d.x, u_input.e), vec3<i32>(1i, 21476i, -2170i)), vec3<i32>(arg_3.a.x, arg_3.a.x, u_input.e))), abs(vec3<i32>(u_input.d.x, -1i & arg_3.a.x, -arg_3.a.x)) >> (vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_2, global1.d.b.a), global2[_wgslsmith_index_u32(8855u, 17u)]), abs(global3.x) >> (92839u % 32u), 1u ^ (4294967295u << (global4.a % 32u))) % vec3<u32>(32u)));
    global0 = array<Struct_1, 30>();
    let var_2 = global0[_wgslsmith_index_u32(1u, 30u)];
    global2 = array<u32, 17>();
    return func_1();
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = arg_2.e.yx;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b.d.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b.b.b.x)) * global1.a.x)))));
    global1 = func_6(-1240f, 1u, func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global4.b.x - global4.b.x), _wgslsmith_f_op_f32(-global4.b.x))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-421f * -609f), global4.b.x)), global1.e.zz, ~global1.b.b.a, func_4(Struct_5(-vec3<i32>(-2147483647i, 2147483647i, global1.b.a.x)), func_1(), vec2<bool>(global1.e.x | global1.e.x, global1.e.x || global1.e.x), global1.d.a)));
    global0 = array<Struct_1, 30>();
    global1 = Struct_3(global1.d.d.b.yy, Struct_2(firstTrailingBit(_wgslsmith_clamp_vec3_i32(min(global1.b.a, global1.b.a), global1.b.a >> (vec3<u32>(global3.x, global4.a, global3.x) % vec3<u32>(32u)), ~vec3<i32>(u_input.e, u_input.b.x, u_input.d.x))), Struct_1(global3.x, global4.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(863f, -553f, func_6(-1000f, 7272u, Struct_3(global4.b.zy, Struct_2(vec3<i32>(global1.b.a.x, u_input.e, -41790i), global1.d.b, global1.b.c, global0[_wgslsmith_index_u32(0u, 30u)]), 48769i, global1.d, global1.e)).a.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.x, global4.b.x, global4.b.x))), global1.b.d), -global1.c, Struct_2(global1.d.a & countOneBits(_wgslsmith_mult_vec3_i32(global1.b.a, vec3<i32>(u_input.a, -7526i, global1.d.a.x))), Struct_1(0u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b.b.b * vec4<f32>(1000f, -613f, -1000f, global1.b.c.x)), global1.d.b.b)), vec3<f32>(global1.d.d.b.x, func_6(global1.a.x, func_2(u_input.e).a, Struct_3(global1.b.d.b.wx, Struct_2(vec3<i32>(global1.d.a.x, u_input.a, 11598i), Struct_1(0u, global4.b), vec3<f32>(global1.b.b.b.x, global4.b.x, 192f), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17824u, 17u)], 30u)]), 4170i, Struct_2(global1.b.a, Struct_1(global4.a, global4.b), vec3<f32>(205f, 439f, global1.d.c.x), global1.b.b), global1.e)).a.x, global1.d.c.x), Struct_1(8706u, _wgslsmith_f_op_vec4_f32(-global1.b.d.b))), global1.e);
    let var_1 = vec4<bool>(global1.e.x, 4669i <= _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(func_1().d.a.xy, global1.d.a.yy), -2147483647i), func_1().e.x, _wgslsmith_f_op_f32(sign(global4.b.x)) != global4.b.x);
    global1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-537f * global1.d.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -179f)), _wgslsmith_f_op_vec3_f32(func_3()).x))), Struct_2(~vec3<i32>(17749i & global1.c, -73404i, _wgslsmith_add_i32(36262i, u_input.e)), Struct_1((global2[_wgslsmith_index_u32(48476u, 17u)] << (1u % 32u)) ^ _wgslsmith_mod_u32(51939u, 4294967295u), func_1().b.d.b), global4.b.wwy, global1.d.d), _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-1658i, 1i), -1i), global1.c, 1i), 0i), func_1().b, func_5(func_5(global1.e.x, !func_5(false, vec2<bool>(var_1.x, false), global3.x, Struct_5(global1.d.a)).e.zx, global4.a, func_4(Struct_5(vec3<i32>(-2147483647i, -18986i, global1.c)), Struct_3(global4.b.zy, global1.d, -1951i, Struct_2(global1.d.a, Struct_1(54943u, global4.b), vec3<f32>(-1604f, -247f, global4.b.x), global0[_wgslsmith_index_u32(global1.b.b.a, 30u)]), var_1.xwy), global1.e.xy, ~vec3<i32>(-8949i, -2147483647i, 23950i))).e.x, var_1.xw, u_input.c, func_4(Struct_5(~global1.d.a), Struct_3(vec2<f32>(global4.b.x, global4.b.x), global1.b, ~2147483647i, func_5(false, vec2<bool>(global1.e.x, global1.e.x), 23294u, Struct_5(vec3<i32>(-1i, 1i, global1.b.a.x))).b, var_1.wxy), func_5(all(global1.e.xz), var_1.wx, 46977u, Struct_5(global1.d.a)).e.zx, vec3<i32>(global1.b.a.x << (1u % 32u), 13987i | global1.d.a.x, -73486i))).e);
    var_0 = func_6(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x * func_1().a.x), global4.b.x))), global4.a, func_6(785f, _wgslsmith_mod_u32(global1.b.b.a, global1.b.b.a), Struct_3(global4.b.yy, global1.d, u_input.a, func_1().d, global1.e))).d.c.x;
    var var_2 = select(vec4<bool>(!var_1.x, global1.e.x, !(!global1.e.x | true), true), vec4<bool>(true, func_5(true, vec2<bool>(global1.e.x, !var_1.x), global2[_wgslsmith_index_u32(~1u, 17u)], func_4(Struct_5(vec3<i32>(u_input.a, -17797i, u_input.a)), func_6(348f, 1u, Struct_3(vec2<f32>(-298f, 171f), global1.d, global1.b.a.x, global1.d, vec3<bool>(true, false, var_1.x))), vec2<bool>(true, global1.e.x), global1.d.a)).e.x, true && (true && (global4.b.x <= global1.a.x)), 1u == u_input.c), func_6(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b.x) + global1.d.c.x))), global4.a, func_6(_wgslsmith_f_op_f32(f32(-1f) * -2504f), 45291u, func_6(2016f, abs(global3.x), Struct_3(vec2<f32>(global4.b.x, -2321f), Struct_2(global1.b.a, Struct_1(global3.x, vec4<f32>(global1.a.x, 172f, global1.a.x, -1000f)), vec3<f32>(global4.b.x, global1.a.x, global4.b.x), Struct_1(global3.x, global1.d.d.b)), u_input.d.x, Struct_2(vec3<i32>(24076i, u_input.a, -1i), Struct_1(0u, vec4<f32>(global1.a.x, 1000f, -1251f, global4.b.x)), vec3<f32>(-1000f, -1000f, global1.b.d.b.x), Struct_1(global2[_wgslsmith_index_u32(1u, 17u)], global4.b)), vec3<bool>(var_1.x, true, var_1.x))))).e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d.d.b.x, global1.b.b.b.x) + _wgslsmith_f_op_f32(153f + 861f))))), global1.d.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4.b.x, global1.b.d.b.x, 1000f)))))));
}

