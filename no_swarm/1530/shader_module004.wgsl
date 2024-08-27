struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

var<private> global1: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false));

var<private> global2: array<vec3<f32>, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>) -> bool {
    global0 = array<Struct_4, 18>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(722f, 447f, 335f, -755f) + vec4<f32>(2232f, 537f, -208f, 223f)))))));
    global2 = array<vec3<f32>, 32>();
    let var_1 = u_input.c;
    global0 = array<Struct_4, 18>();
    return false;
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> f32 {
    var var_0 = Struct_5(Struct_1(vec4<bool>(any(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)) || true, true, !arg_0.x & select(arg_0.x, arg_0.x, arg_0.x), true), vec4<u32>(4294967295u, _wgslsmith_mult_u32(35726u | u_input.a.x, arg_1), firstLeadingBit(18528u), firstTrailingBit(52839u) >> (3962u % 32u)), max(u_input.b.x, u_input.c.x)), vec3<bool>(true, all(select(!vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x), true)), arg_0.x));
    let var_1 = var_0.a.a.zxw;
    let var_2 = Struct_2(arg_0.x, Struct_1(vec4<bool>(true, true, var_1.x, var_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, var_0.a.b.x, 0u), _wgslsmith_add_vec4_u32(var_0.a.b, var_0.a.b)) >> (vec4<u32>(max(var_0.a.b.x, var_0.a.b.x), u_input.a.x, ~45233u, var_0.a.b.x) % vec4<u32>(32u)), _wgslsmith_dot_vec2_i32(u_input.b, abs(-u_input.b))), select(global1[_wgslsmith_index_u32(max(firstTrailingBit(arg_1), _wgslsmith_mod_u32(19661u, ~1u)), 15u)], !select(vec4<bool>(var_0.a.a.x, var_1.x, var_0.b.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), select(vec4<bool>(var_0.a.a.x, var_1.x, arg_0.x, false), vec4<bool>(true, arg_0.x, var_1.x, arg_0.x), global1[_wgslsmith_index_u32(29885u, 15u)])), true), vec3<bool>(!any(select(vec2<bool>(false, var_1.x), var_1.zy, vec2<bool>(true, true))), var_0.b.x == func_2(var_0.a.b.wzy, u_input.c.yxx & u_input.c.wxz), !all(vec3<bool>(true, true, true))), var_0.a);
    let var_3 = Struct_2(false, Struct_1(var_2.c, var_2.e.b, abs(u_input.b.x)), var_2.c, select(select(vec3<bool>(true, all(vec2<bool>(arg_0.x, true)), func_2(var_0.a.b.zxx, u_input.c.yxx)), !select(var_2.c.ywx, vec3<bool>(false, true, true), var_0.b), !var_0.b), !select(vec3<bool>(arg_0.x, true, false), select(vec3<bool>(false, true, true), var_2.e.a.wwx, vec3<bool>(true, false, var_1.x)), select(vec3<bool>(false, true, var_1.x), vec3<bool>(true, var_1.x, true), var_0.b)), !var_0.b), Struct_1(var_0.a.a, abs(~var_0.a.b), _wgslsmith_div_i32(~u_input.b.x << (0u % 32u), _wgslsmith_add_i32(-2147483647i, abs(0i)))));
    global1 = array<vec4<bool>, 15>();
    return _wgslsmith_f_op_f32(2672f - _wgslsmith_f_op_f32(min(737f, 2334f)));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = arg_1.b;
    let var_1 = Struct_3(arg_1.b);
    var var_2 = Struct_4(abs(arg_1.e.b.x) & 4294967295u, Struct_3(Struct_1(global1[_wgslsmith_index_u32(~arg_1.e.b.x, 15u)], var_0.b, abs(0i))));
    var_0 = var_2.b.a;
    var_0 = Struct_1(vec4<bool>(arg_1.e.a.x, true, true, false), ~reverseBits(_wgslsmith_add_vec4_u32(select(vec4<u32>(arg_1.b.b.x, u_input.a.x, 0u, var_2.b.a.b.x), vec4<u32>(0u, 0u, 24330u, 4294967295u), var_0.a.x), var_1.a.b)), var_2.b.a.c);
    return vec3<bool>(all(vec2<bool>(arg_0 == _wgslsmith_f_op_f32(-arg_0), any(!var_2.b.a.a.yw))), func_2(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, arg_1.e.b.x, arg_1.b.b.x), ~_wgslsmith_clamp_vec3_u32(var_1.a.b.zxy, vec3<u32>(var_2.b.a.b.x, 2325u, 22667u), vec3<u32>(28103u, 75515u, arg_1.e.b.x))), vec3<i32>(arg_1.e.c, var_2.b.a.c, var_1.a.c)), !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) - _wgslsmith_f_op_f32(func_3(arg_1.b.a.yw, var_1.a.b.x))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - 2382f), _wgslsmith_f_op_f32(arg_0 * 492f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 15>();
    let var_0 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, false, true, true)), any(vec4<bool>(false, true, false, true)), true), true), !select(func_1(-715f, Struct_2(false, Struct_1(vec4<bool>(true, false, true, false), vec4<u32>(4254u, 45722u, u_input.a.x, 1u), -5660i), vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), Struct_1(vec4<bool>(false, true, false, true), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u), u_input.c.x))), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), true), vec3<bool>(true, true, true)), select(!select(func_1(-151f, Struct_2(true, Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], vec4<u32>(0u, 38738u, 4u, u_input.a.x), u_input.c.x), global1[_wgslsmith_index_u32(0u, 15u)], vec3<bool>(true, false, false), Struct_1(vec4<bool>(false, false, true, true), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 39877u), 1i))), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), !func_1(_wgslsmith_f_op_f32(-844f - _wgslsmith_f_op_f32(f32(-1f) * -753f)), Struct_2(true, Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], vec4<u32>(40051u, u_input.a.x, u_input.a.x, 37624u), 1i), vec4<bool>(false, true, true, false), vec3<bool>(false, true, false), Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x), u_input.c.x))));
    global1 = array<vec4<bool>, 15>();
    global1 = array<vec4<bool>, 15>();
    var var_1 = ~_wgslsmith_div_vec2_u32(vec2<u32>((1u >> (u_input.a.x % 32u)) & ~33115u, 4294967295u), vec2<u32>(0u & u_input.a.x, _wgslsmith_div_u32(104129u, u_input.a.x)) >> (abs(vec2<u32>(u_input.a.x, u_input.a.x) | u_input.a) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, u_input.b.x, u_input.c.x, u_input.c.x << (1u % 32u))), ~(vec4<i32>(u_input.b.x, 39952i, u_input.b.x, u_input.c.x) & (vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.c.x) << (vec4<u32>(u_input.a.x, var_1.x, 43174u, var_1.x) % vec4<u32>(32u))))), min(abs(0i), ~(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(max(1000f, -1532f))))))));
}

