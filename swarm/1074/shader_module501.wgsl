struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: i32;

var<private> global2: u32 = 4294967295u;

var<private> global3: bool = true;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> i32 {
    let var_0 = arg_0.a;
    global3 = select(!arg_1.b, false, true);
    let var_1 = max(u_input.c, _wgslsmith_div_vec2_u32(abs(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 5518u, u_input.c.x), vec4<u32>(24508u, 1u, u_input.c.x, arg_2)), arg_2)), abs(~abs(vec2<u32>(0u, u_input.c.x)))));
    global1 = -3617i;
    var var_2 = arg_1.b;
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_0, -1i, var_0), vec4<i32>(arg_0.a, -1i, -8203i, -22935i)), -vec4<i32>(u_input.a.x, -1i, -26848i, 81227i)), _wgslsmith_div_i32(arg_0.c, var_0), 1i), -select(select(vec3<i32>(var_0, 8607i, arg_0.c), vec3<i32>(-1i, -2147483647i, 2147483647i), arg_1.b), vec3<i32>(arg_0.a, -19832i, 2147483647i) << (vec3<u32>(arg_2, arg_2, arg_2) % vec3<u32>(32u)), select(vec3<bool>(arg_1.b, true, false), vec3<bool>(arg_1.b, arg_1.b, true), vec3<bool>(true, arg_1.b, arg_1.b)))), arg_0.c);
}

fn func_2() -> vec2<u32> {
    global2 = 1u;
    global2 = ~firstLeadingBit(1u);
    global3 = !(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a) | u_input.d, -1i) == -func_3(Struct_2(0i, Struct_1(754f), 65200i, Struct_1(global0.x)), Struct_3(353f, false), u_input.b >> (0u % 32u)));
    return _wgslsmith_mod_vec2_u32(u_input.c, reverseBits(vec2<u32>(0u, ~15744u)));
}

fn func_1(arg_0: bool) -> bool {
    global1 = 1i;
    var var_0 = _wgslsmith_dot_vec2_u32(~u_input.c, _wgslsmith_mult_vec2_u32(func_2() | select(firstLeadingBit(vec2<u32>(28748u, u_input.c.x)), ~u_input.c, global0.x >= global0.x), _wgslsmith_div_vec2_u32(~u_input.c, u_input.c)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(1177f, !(!func_1(true) && false));
    var var_1 = min(abs(abs(-vec4<i32>(u_input.d, u_input.a.x, u_input.d, 52812i))), -abs(countOneBits(vec4<i32>(33480i, 19960i, -46889i, -10130i)))) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(81375u, u_input.b), _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), 1u, 41021u), vec4<u32>(u_input.c.x ^ u_input.b, 80205u, firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(27367u, 55449u, u_input.b), vec3<u32>(1u, u_input.b, 0u))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), abs(vec4<u32>(u_input.c.x, 77604u, u_input.b, 1u)))) % vec4<u32>(32u));
    let var_2 = ~(-firstTrailingBit(vec4<i32>(select(1i, -2147483647i, var_0.b), ~var_1.x, var_1.x, i32(-1i) * -1i)));
    let var_3 = -44879i;
    var var_4 = Struct_3(1135f, true);
    let var_5 = vec2<bool>(false, !(105355u == u_input.c.x));
    global1 = min(_wgslsmith_dot_vec4_i32(vec4<i32>(11158i, -1361i, i32(-1i) * -52767i, var_1.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x | var_2.x, 1i, 0i, var_2.x), var_2)), i32(-1i) * -1i);
    let var_6 = var_1.xy;
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a), global0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4.a))))), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - global0.x), global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, max(vec4<u32>(~firstLeadingBit(u_input.b), u_input.c.x, ~4294967295u, 1u), ~vec4<u32>(1u, u_input.c.x, u_input.b, u_input.c.x) & vec4<u32>(_wgslsmith_mult_u32(u_input.b, 93249u), u_input.c.x, _wgslsmith_clamp_u32(u_input.b, 0u, u_input.c.x), u_input.b & 35876u)), -1849f, (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.c.x, 16045u) >> (vec4<u32>(48704u, 94142u, u_input.b, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c.x, 35499u, 0u), vec4<u32>(0u, 0u, 6354u, 4294967295u))) >> (1u % 32u)) << (1u % 32u));
}

