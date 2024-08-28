struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: array<Struct_1, 5>;

var<private> global2: vec4<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_2(_wgslsmith_div_vec3_i32(-u_input.a, vec3<i32>(_wgslsmith_add_i32(arg_0.a, countOneBits(u_input.a.x)), u_input.b.x << (global2.x % 32u), 37681i)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global1 = array<Struct_1, 5>();
    global1 = array<Struct_1, 5>();
    var var_1 = vec4<bool>(!(_wgslsmith_mod_u32(global2.x ^ 4294967295u, _wgslsmith_div_u32(global2.x, 0u)) >= ~0u), select(u_input.a.x > _wgslsmith_add_i32(0i, _wgslsmith_clamp_i32(var_0.a.x, var_0.a.x, u_input.a.x)), false || !any(vec3<bool>(false, false, true)), ~0u != ~(~global2.x)), false & (~_wgslsmith_sub_i32(arg_0.a, var_0.a.x) != ~22484i), any(vec4<bool>(false, false, false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))))));
    let var_2 = !vec4<bool>(!(var_1.x && !var_1.x), (var_1.x | false) & true, all(vec2<bool>(!var_1.x, true)), all(!vec4<bool>(false, var_1.x, false, var_1.x)));
    return min(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.c.yx), vec2<i32>(-1i, var_0.a.x)) << (min(81372u ^ global2.x, countOneBits(global2.x)) % 32u), _wgslsmith_clamp_i32(arg_0.a, ~(-var_0.a.x), var_0.a.x)) <= 6450i;
}

fn func_2() -> bool {
    global2 = ~abs(vec4<u32>(countOneBits(global2.x), global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(global2.x, global2.x, global2.x, global2.x)), global2.x)) ^ abs(~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, global2.x, 94715u, 5216u), ~vec4<u32>(global2.x, global2.x, 45479u, global2.x)));
    return !(!all(vec2<bool>(true, func_3(Struct_1(u_input.b.x)))));
}

fn func_1() -> i32 {
    let var_0 = vec2<bool>(select(func_2(), _wgslsmith_clamp_i32(u_input.a.x, ~u_input.c.x, _wgslsmith_clamp_i32(u_input.a.x, -65827i, u_input.b.x)) <= (1i << (0u % 32u)), any(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)))), true);
    global0 = array<Struct_2, 11>();
    let var_1 = firstLeadingBit(4624i) & (firstTrailingBit(max(u_input.c.x, u_input.a.x) << (_wgslsmith_div_u32(0u, global2.x) % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, firstTrailingBit(21765u)), _wgslsmith_add_vec3_u32(~global2.yyz, vec3<u32>(1u, 4294967295u, 4294967295u))) % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-529f, 1247f, 1927f, 825f))))) - vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2011f, 2119f, 2185f, -308f))))))), any(select(vec4<bool>(var_0.x, any(var_0), true, false), !(!vec4<bool>(false, false, var_0.x, false)), any(vec4<bool>(true, true, var_0.x, var_0.x))))));
    let var_3 = all(vec3<bool>(var_0.x, _wgslsmith_f_op_f32(-480f + _wgslsmith_f_op_f32(-var_2.x)) >= var_2.x, 17360i != var_1));
    return ~30413i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    global1 = array<Struct_1, 5>();
    global2 = vec4<u32>(0u, global2.x, 71049u, select(global2.x, _wgslsmith_mult_u32(2910u, ~(~7711u)), any(vec2<bool>(true, true))));
    let var_0 = Struct_1(u_input.c.x);
    global1 = array<Struct_1, 5>();
    var var_1 = func_1();
    var_1 = -28591i;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-995f + 1426f) * _wgslsmith_f_op_f32(step(648f, -207f)))) + -453f), -983f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, global2.x, min(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, ~0u, _wgslsmith_mod_u32(global2.x, 0u), 22513u), vec4<u32>(_wgslsmith_sub_u32(1u, global2.x), reverseBits(4294967295u), 0u, min(global2.x, 14404u))), ~59193u), _wgslsmith_sub_vec2_i32(min(max(vec2<i32>(u_input.c.x, -1i), _wgslsmith_mult_vec2_i32(u_input.a.yx, u_input.b)), ~(vec2<i32>(var_0.a, var_0.a) & u_input.c.zx)), vec2<i32>(func_1(), _wgslsmith_dot_vec2_i32(~u_input.c.yx, u_input.b ^ u_input.b))));
}

