struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

var<private> global1: array<vec4<bool>, 21>;

var<private> global2: Struct_3 = Struct_3(-1i, Struct_1(false, vec2<bool>(true, false)), vec3<f32>(-149f, 736f, 236f), vec4<i32>(-1981i, i32(-2147483648), 28869i, 1i));

var<private> global3: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<bool> {
    let var_0 = global2.c.zy;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.c.x, _wgslsmith_f_op_f32(ceil(var_0.x))))), global2.c.x, 479f, 1178f) * vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(606f + -268f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_f32(-var_0.x)), -206f));
    global2 = Struct_3(~_wgslsmith_div_i32(reverseBits(1i), _wgslsmith_dot_vec2_i32(~u_input.b.yz, -vec2<i32>(-35577i, u_input.b.x))), global2.b, var_1.xzw, vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(global2.d.x, 1i) & ~(-24176i), ~0i, _wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(-2147483647i, u_input.a.x, 74379i, u_input.a.x)), countOneBits(vec4<i32>(u_input.a.x, 22944i, u_input.b.x, -63383i)) ^ vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, -1i))));
    let var_2 = vec2<i32>(~global2.a, 0i);
    var var_3 = !vec4<bool>(global2.b.a, true, global2.b.b.x, all(!vec4<bool>(true, global2.b.b.x, false, false)));
    return vec2<bool>(global2.b.a, true);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(!global2.b.a | true, func_3());
    let var_1 = 30706i;
    var var_2 = -550f;
    global3 = var_0.a;
    global0 = array<vec3<bool>, 9>();
    return -1688f;
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = min(-1i, 44337i | u_input.a.x);
    let var_1 = Struct_4(_wgslsmith_mod_i32(-max(global2.d.x >> (22805u % 32u), select(u_input.b.x, var_0, false)), _wgslsmith_mod_i32(~(-var_0), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, -16428i), -46462i))), vec2<i32>(i32(-1i) * -_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_add_i32(firstLeadingBit(firstLeadingBit(-21509i)), _wgslsmith_dot_vec3_i32(vec3<i32>(2307i, 2147483647i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -81436i, 1i), vec3<i32>(0i, global2.d.x, var_0))))));
    var var_2 = Struct_3(-19712i, Struct_1(true, global2.b.b), global2.c, vec4<i32>(~u_input.a.x, u_input.b.x, _wgslsmith_div_i32(global2.a, -16066i), 0i));
    let var_3 = global2.b.b.x;
    let var_4 = global2.c.zx;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) + 854f) + -544f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 39208u;
    let var_1 = Struct_2(!(!(!select(vec2<bool>(false, global2.b.a), global2.b.b, vec2<bool>(global2.b.a, global2.b.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(func_1(~(~6380u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-360f, global2.c.x)) - _wgslsmith_f_op_f32(min(global2.c.x, -421f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.c.x)), _wgslsmith_f_op_f32(-300f * global2.c.x), _wgslsmith_f_op_f32(select(global2.c.x, 1506f, global2.b.b.x)), _wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-863f, global2.c.x, 1807f, 708f))), global1[_wgslsmith_index_u32(1u, 21u)])), u_input.a);
    global1 = array<vec4<bool>, 21>();
    var var_2 = !(global2.b.b.x && global2.b.a);
    var var_3 = Struct_3(firstLeadingBit(global2.d.x), Struct_1(var_1.a.x, var_1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(474f, var_1.b.x, var_1.b.x))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.c.x, 287f))), _wgslsmith_f_op_f32(floor(-1000f)), 477f)), u_input.a);
    global0 = array<vec3<bool>, 9>();
    global0 = array<vec3<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(vec4<u32>(9241u, _wgslsmith_add_u32(30868u, 86021u), 1u, reverseBits(0u))), vec4<u32>(~(~0u), 4294967295u, ~reverseBits(1u), 0u), !global1[_wgslsmith_index_u32(1u, 21u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.c.x), var_3.c.x) - _wgslsmith_f_op_vec2_f32(step(var_3.c.xz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.c.x, var_1.b.x), var_1.c.yx, global2.b.a))))) + _wgslsmith_f_op_vec2_f32(-global2.c.zx)), global2.d.x);
}

