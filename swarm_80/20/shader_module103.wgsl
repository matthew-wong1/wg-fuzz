struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<u32>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -30474i, i32(-2147483648))), Struct_1(vec4<i32>(-59316i, -36169i, 20204i, -36426i)), vec4<bool>(false, false, false, false));

var<private> global3: vec4<u32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = !vec3<bool>(false, true, (1u == (u_input.c & 29710u)) & true);
    return var_0.x | any(global2.c);
}

fn func_3(arg_0: Struct_2) -> Struct_3 {
    let var_0 = Struct_1(vec4<i32>(-2147483647i, ~90182i, 62158i, ~1i));
    let var_1 = Struct_2(arg_0.a, Struct_1(-_wgslsmith_div_vec4_i32(select(vec4<i32>(global2.b.a.x, var_0.a.x, 1i, -45595i), vec4<i32>(1i, 12824i, -2147483647i, 2147483647i), vec4<bool>(false, false, arg_0.c.x, false)), select(arg_0.a.a, global2.a.a, global2.c.x))), arg_0.c);
    let var_2 = -15173i;
    var var_3 = Struct_5(Struct_2(var_1.a, var_1.b, select(var_1.c, var_1.c, !(!var_1.c))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, global1.x, global3.x, 77640u) >> (vec4<u32>(4294967295u, 1u, global3.x, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, global3.x, u_input.c, 24677u) >> (vec4<u32>(4294967295u, 49963u, 8942u, global1.x) % vec4<u32>(32u))) & select(vec4<u32>(4294967295u, 4294967295u, 0u, ~global3.x), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(26172u, global1.x, u_input.c, 17071u), vec4<u32>(1u, u_input.b, global1.x, global1.x), vec4<u32>(global1.x, 585u, 80481u, global3.x)), ~vec4<u32>(u_input.c, global3.x, 1u, 22351u)), false), arg_0.c.x && any(!select(vec4<bool>(arg_0.c.x, true, global2.c.x, true), vec4<bool>(false, global2.c.x, var_1.c.x, true), false)), any(vec2<bool>(!arg_0.c.x, select(var_1.c.x & true, select(true, global2.c.x, false), !arg_0.c.x))), 32862i);
    let var_4 = Struct_4(Struct_1(var_1.a.a));
    return Struct_3(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -363f), true)) * -798f), 0i, vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1403f, 1890f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-888f + -900f), _wgslsmith_f_op_f32(319f + global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, -543f), global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, global0.x)), _wgslsmith_f_op_f32(-112f - -1108f)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> Struct_2 {
    var var_0 = vec2<bool>((~(-u_input.d) ^ u_input.a) >= select(firstTrailingBit(0i), _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, global2.b.a.x), _wgslsmith_dot_vec4_i32(global2.a.a, global2.b.a)), !global2.c.x && true), global2.c.x);
    let var_1 = func_3(Struct_2(global2.a, Struct_1(-global2.b.a), vec4<bool>(select(true, true, false), any(vec2<bool>(true, true)), var_0.x, func_2(abs(-55797i)))));
    global2 = Struct_2(Struct_1(-vec4<i32>(-1i, -1i, var_1.c, 46878i) | var_1.a.a), global2.b, select(vec4<bool>(arg_0.x == any(vec4<bool>(global2.c.x, arg_0.x, arg_0.x, false)), arg_0.x, true != var_0.x, false), arg_0, var_0.x));
    global3 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global3.xx, vec2<u32>(global3.x, 4294967295u)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 9646u, u_input.c), ~0u), max(1u << (global1.x % 32u), global1.x)) | ~abs(79515u), global3.x, 0u, ~u_input.c);
    var var_2 = 0u;
    return Struct_2(var_1.a, var_1.a, select(!(!vec4<bool>(true, arg_0.x, arg_0.x, global2.c.x)), !select(global2.c, global2.c, vec4<bool>(true, false, true, false)), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    let var_1 = func_1(global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))));
    var var_2 = func_1(global2.c, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-616f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(abs(global0.x)))), global0.x))).c.wwx;
    global1 = _wgslsmith_clamp_vec2_u32(global3.yz, vec2<u32>(global1.x & abs(4294967295u), (1702u << ((global3.x << (global1.x % 32u)) % 32u)) ^ 0u), global3.wz);
    let var_3 = -u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 0u, global1.x), _wgslsmith_mult_vec3_u32(global3.zxw, global3.wxw)), vec3<u32>(_wgslsmith_add_u32(0u, global3.x) >> (~11555u % 32u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.c, global1.x, 95579u), ~0u), 0u)));
}

