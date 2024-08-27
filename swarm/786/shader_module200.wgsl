struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: array<f32, 22>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> vec4<f32> {
    var var_0 = Struct_3(arg_0.a, Struct_1(14598u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1541f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(select(~47407u, arg_0.a.b.a, any(vec3<bool>(arg_1, arg_1, arg_1))), 22u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.b.c)), global0[_wgslsmith_index_u32(arg_0.a.b.a, 17u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 17u)] * -523f), _wgslsmith_div_f32(-1388f, global1[_wgslsmith_index_u32(u_input.b.x, 22u)])))));
    global0 = array<f32, 17>();
    var_0 = arg_0;
    let var_1 = ~(~(-vec3<i32>(min(var_0.a.a, arg_0.a.a), reverseBits(arg_0.a.a), -arg_0.a.a)));
    let var_2 = 3649i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a.b.d - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_0.b.a, 17u)], -1000f)), _wgslsmith_f_op_f32(ceil(var_0.b.c)), 847f, -508f)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_2(-2147483647i, Struct_1(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_sub_u32(33718u, u_input.b.x) ^ 0u), global1[_wgslsmith_index_u32(~20599u, 22u)], _wgslsmith_div_f32(-1989f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)], arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1309f, -1960f, 1778f, 180f) * vec4<f32>(arg_1.x, 840f, -1236f, global0[_wgslsmith_index_u32(4294967295u, 17u)])), any(arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-347f, 971f, arg_1.x, -967f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], arg_1.x, arg_1.x, global1[_wgslsmith_index_u32(56229u, 22u)])))))));
    var var_1 = -1426f;
    global1 = array<f32, 22>();
    var var_2 = _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, 34828i, -2079i), ~u_input.a), vec3<i32>(~1i, u_input.c.x, var_0.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(var_0.a, Struct_1(var_0.b.a, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 17u)]), 1000f, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], arg_1.x, arg_1.x, -621f))))), var_0.b), true));
    return Struct_3(Struct_2(0i, Struct_1(~4294967295u & (u_input.b.x >> (1u % 32u)), _wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -184f), _wgslsmith_f_op_f32(f32(-1f) * -707f), global1[_wgslsmith_index_u32(~1u, 22u)], _wgslsmith_f_op_f32(var_3.x - -103f)))), var_0.b);
}

fn func_1() -> i32 {
    let var_0 = Struct_4(func_2(vec3<bool>((1i == u_input.a.x) & true, any(vec4<bool>(false, true, false, true)), u_input.b.x < reverseBits(34497u)), vec2<f32>(global1[_wgslsmith_index_u32(~u_input.b.x << (u_input.b.x % 32u), 22u)], _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~20074u, 17u)], _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.b.x, 22u)])), true)))), vec2<bool>(true, true));
    var var_1 = 0i;
    global1 = array<f32, 22>();
    global1 = array<f32, 22>();
    var var_2 = var_0.a.b;
    return ~(-30475i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: f32) -> Struct_4 {
    global1 = array<f32, 22>();
    let var_0 = vec2<u32>(arg_1.a.b.a, 1u);
    global0 = array<f32, 17>();
    let var_1 = arg_1;
    global0 = array<f32, 17>();
    return Struct_4(arg_1.a, vec2<bool>(true, arg_1.b.x));
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> Struct_3 {
    var var_0 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0[_wgslsmith_index_u32(arg_1.a.a.b.a, 17u)], _wgslsmith_div_vec4_f32(arg_1.a.a.b.d, _wgslsmith_f_op_vec4_f32(step(arg_1.a.b.d, _wgslsmith_f_op_vec4_f32(-arg_1.a.b.d)))));
    global0 = array<f32, 17>();
    global1 = array<f32, 22>();
    global0 = array<f32, 17>();
    global0 = array<f32, 17>();
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 17>();
    let var_0 = -abs(firstTrailingBit(-_wgslsmith_sub_vec4_i32(vec4<i32>(635i, u_input.a.x, 1i, 0i), vec4<i32>(-1i, u_input.a.x, -42933i, u_input.a.x))));
    global0 = array<f32, 17>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.b.x, 22u)]))) * _wgslsmith_div_f32(3085f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 22u)]))) - _wgslsmith_div_f32(-345f, global0[_wgslsmith_index_u32(reverseBits(firstTrailingBit(1u)), 17u)])));
    global1 = array<f32, 22>();
    var var_2 = func_5(u_input.b.x, func_4(vec4<i32>(0i, u_input.c.x, func_1(), 1i), Struct_4(Struct_3(Struct_2(var_0.x, Struct_1(35043u, global0[_wgslsmith_index_u32(75708u, 17u)], 649f, vec4<f32>(var_1, global0[_wgslsmith_index_u32(u_input.b.x, 17u)], var_1, 893f))), Struct_1(u_input.b.x, -1033f, -367f, vec4<f32>(-1000f, -2193f, -803f, 731f))), !select(vec2<bool>(true, true), vec2<bool>(false, true), false)), _wgslsmith_f_op_f32(1000f * var_1)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.b.b, var_2.a.b.b, -373f))))));
    var var_4 = vec3<i32>(-2147483647i, 11402i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-1i, u_input.c.x)), var_0.xw), _wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.wz), firstTrailingBit(u_input.a.zy))), ~(_wgslsmith_div_i32(var_0.x, 7323i) | (u_input.a.x >> (0u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.a.a & -_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.x, u_input.c.x)), var_4.xz), ~(~0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(abs(var_2.b.d.xw))).b.d.x + global0[_wgslsmith_index_u32(u_input.b.x, 17u)])), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.b.x, 22u)])) + 1000f), 605f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<bool>(false, true, true), var_2.b.d.yz).a.b.d.x * func_5(var_2.b.a, Struct_4(Struct_3(Struct_2(6754i, var_2.b), Struct_1(29405u, 285f, var_3.x, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], var_3.x, global0[_wgslsmith_index_u32(1291u, 17u)], -496f))), vec2<bool>(true, true))).b.b))));
}

