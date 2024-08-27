struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -7879i;

var<private> global1: array<Struct_3, 2>;

var<private> global2: array<u32, 25>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<u32>(1u, 0u, 1u), vec3<u32>(7380u, 4266u, 4294967295u), 0u, -314f), 295f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> f32 {
    global3 = Struct_2(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1559f - _wgslsmith_f_op_f32(-global3.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)))));
    let var_0 = global2[_wgslsmith_index_u32(u_input.c.x, 25u)];
    var var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(firstTrailingBit(global3.a.a) >> (~vec3<u32>(global2[_wgslsmith_index_u32(41576u, 25u)], 1u, 85654u) % vec3<u32>(32u)), ~vec3<u32>(global3.a.c, global3.a.b.x, u_input.c.x) << (firstTrailingBit(global3.a.a) % vec3<u32>(32u))), u_input.c, ~52501u, _wgslsmith_f_op_f32(global3.a.d * 676f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-800f, -1197f)) - _wgslsmith_f_op_f32(-global3.a.d)) - global3.b)));
    global0 = reverseBits(abs(_wgslsmith_mult_i32(u_input.b, -16953i) & (u_input.b & ~u_input.a)));
    global1 = array<Struct_3, 2>();
    return -944f;
}

fn func_3(arg_0: Struct_4) -> Struct_3 {
    let var_0 = !(!(!select(select(vec2<bool>(arg_0.d, true), vec2<bool>(false, false), true), vec2<bool>(arg_0.d, arg_0.d), select(vec2<bool>(arg_0.d, false), vec2<bool>(true, arg_0.d), true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))) + -801f);
    global0 = u_input.b;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2())));
    let var_3 = 2147483647i;
    return global1[_wgslsmith_index_u32(reverseBits(firstTrailingBit(67213u)), 2u)];
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    global2 = array<u32, 25>();
    global0 = ~(~(~(0i)));
    var var_0 = func_3(Struct_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(func_2())), arg_0.c, global3.b, all(vec2<bool>(true, true))));
    var var_1 = func_3(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.a.d, 930f))))), global3.a.c, 410f, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, arg_0.c, u_input.c.x, 32393u) ^ var_0.b, var_0.b) > _wgslsmith_mod_u32(1u ^ global2[_wgslsmith_index_u32(global3.a.b.x, 25u)], u_input.c.x)));
    var var_2 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -min(vec4<i32>(2147483647i, -1i, 52270i, u_input.a), vec4<i32>(35345i, u_input.a, u_input.a, 0i)), select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.a), vec3<i32>(-2147483647i, u_input.a, u_input.a)), -1i, _wgslsmith_add_i32(1i, u_input.a), 2147483647i), vec4<i32>(abs(1i), -33979i, u_input.b, abs(-32030i)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, false, false))));
    return ~vec2<u32>(min(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(8706u, 25u)], 77120u) | 0u, _wgslsmith_sub_u32(global3.a.c, ~global2[_wgslsmith_index_u32(u_input.c.x, 25u)])), ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(172f, 220f, 826f), vec3<f32>(global3.a.d, global3.a.d, global3.b), true))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, -619f, global3.a.d) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, global3.a.d, -253f)))))));
    global1 = array<Struct_3, 2>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(abs(-236f)), _wgslsmith_f_op_f32(-var_0.x))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    let var_2 = ~(~_wgslsmith_mod_vec2_u32(global3.a.b.zz, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, global3.a.b.x), vec2<u32>(0u, global3.a.b.x))) << (func_1(global3.a) % vec2<u32>(32u)));
    let var_3 = !(!vec3<bool>(!any(vec3<bool>(true, false, true)), all(vec3<bool>(true, false, true)) || true, true));
    var var_4 = func_3(Struct_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.zy, var_1.xy, var_3.x)) - _wgslsmith_f_op_vec2_f32(step(var_0.xx, vec2<f32>(405f, 600f)))))), ~u_input.c.x ^ 84271u, _wgslsmith_f_op_f32(-var_1.x), func_3(Struct_4(var_0.xz, 3305u, -1409f, var_3.x)).a.b != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))).a.a;
    var var_5 = Struct_1(var_4.a, var_4.a, 78008u | select(_wgslsmith_clamp_u32(var_2.x & 1u, ~89881u, global3.a.b.x), u_input.c.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, ~(~0u), u_input.b);
}

