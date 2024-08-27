struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 14082u, 4294967295u, 1u);

var<private> global1: array<vec2<f32>, 28>;

var<private> global2: array<Struct_1, 23>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    global2 = array<Struct_1, 23>();
    let var_0 = vec2<bool>(any(select(vec3<bool>(true, u_input.a != u_input.b, true), vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), true))), true);
    var var_1 = var_0.x;
    let var_2 = ~(~global0.x);
    var_1 = var_0.x;
    return Struct_3(Struct_2(vec3<u32>(11194u, countOneBits(_wgslsmith_add_u32(1u, 48665u)), ~global0.x & ~var_2)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_4) -> Struct_2 {
    var var_0 = func_2(vec4<i32>(-2147483647i, 1i, firstLeadingBit(_wgslsmith_mult_i32(25866i & u_input.a, ~(-1i))), _wgslsmith_div_i32(_wgslsmith_sub_i32(reverseBits(-1i), arg_3.a.a), 14624i))).a;
    global2 = array<Struct_1, 23>();
    let var_1 = arg_3.b;
    global1 = array<vec2<f32>, 28>();
    var var_2 = _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mod_u32(~arg_3.b.a.x, arg_0.a.a.x)), arg_0.a.a.x);
    return Struct_2(vec3<u32>(global0.x, arg_3.b.a.x, func_2(_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(u_input.b, u_input.b, arg_3.a.a, u_input.c.x))).a.a.x));
}

fn func_1() -> f32 {
    let var_0 = func_3(func_2(u_input.c), abs(u_input.c.zw & vec2<i32>(u_input.c.x, -26260i)), true, Struct_4(Struct_1(-_wgslsmith_dot_vec3_i32(u_input.c.wxw, u_input.c.zzy)), func_2(-vec4<i32>(16582i, u_input.a, -2147483647i, u_input.b)).a));
    var var_1 = Struct_3(Struct_2(var_0.a ^ vec3<u32>(select(5911u, var_0.a.x, true), 75068u, global0.x)));
    var var_2 = firstTrailingBit(_wgslsmith_mod_u32(var_1.a.a.x, _wgslsmith_mod_u32(0u, ~(~1u))));
    global0 = countOneBits(max(~(vec4<u32>(var_1.a.a.x, 9825u, 59209u, global0.x) ^ vec4<u32>(var_1.a.a.x, var_1.a.a.x, 4294967295u, global0.x)) ^ ~vec4<u32>(var_0.a.x, 32647u, 4294967295u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, 0u, 14706u, ~0u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_1.a.a.x, var_0.a.x, global0.x), vec4<u32>(1u, 0u, 1u, 13630u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.x, 18339u, global0.x, global0.x), vec4<u32>(1u, 1u, global0.x, global0.x)))));
    var var_3 = select(vec4<bool>(true & (~11115u >= var_1.a.a.x), all(vec2<bool>(true, false)), all(vec4<bool>(true, true, true, true)) && true, u_input.a > _wgslsmith_mult_i32(0i, 0i)), !select(vec4<bool>(true, true, true, any(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, false))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1124f)) + -580f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(952f)))), _wgslsmith_f_op_f32(round(357f)), !var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(global0.x << (global0.x % 32u), 23u)];
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_1()), 556f, 130f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -548f) * _wgslsmith_div_f32(323f, 1824f)) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1267f, 2048f)))), 1f));
    let var_2 = select(vec4<bool>(!any(vec3<bool>(false, true, false)), any(vec4<bool>(true, true, true, true)), !(var_1.x < -464f), any(vec2<bool>(true, true))), vec4<bool>(true, true, false, true), any(vec3<bool>(true, 23024i > var_0.a, select(true, true, any(vec4<bool>(true, false, true, false))))));
    global1 = array<vec2<f32>, 28>();
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.wxw + _wgslsmith_f_op_vec3_f32(-var_1.xyw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.wwy * vec3<f32>(var_1.x, _wgslsmith_div_f32(-643f, -353f), -340f))), var_2.x));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.x, 533f, var_3.x, -237f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 656f, var_3.x)), !vec4<bool>(var_2.x, false, true, var_2.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_1.x, -2091f, var_1.x), vec4<f32>(var_1.x, 275f, var_1.x, 2365f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1267f, var_3.x, var_3.x, 1799f), vec4<f32>(696f, 239f, var_3.x, var_3.x)) - vec4<f32>(-923f, var_3.x, var_3.x, var_3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_3.x, -466f))), true))))));
    var var_4 = Struct_1(u_input.a);
    global1 = array<vec2<f32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))), vec2<i32>(_wgslsmith_dot_vec4_i32(~(~u_input.c), u_input.c), var_0.a));
}

