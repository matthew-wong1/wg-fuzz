struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, 1209f);

var<private> global1: vec3<i32>;

var<private> global2: Struct_2 = Struct_2(Struct_1(4294967295u, vec2<bool>(false, false), vec2<f32>(-946f, -2588f)), 30959u, -158f);

var<private> global3: array<vec4<bool>, 14>;

var<private> global4: vec3<i32> = vec3<i32>(-1i, 45306i, -440i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> u32 {
    global1 = max(select(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global4.x, global1.x, -433i) << (vec3<u32>(4294967295u, u_input.c.x, 14100u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(u_input.a.xxw, vec3<i32>(-1i, u_input.a.x, -1i))), -u_input.a.wwz), u_input.a.wxy, global2.a.b.x), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -47937i << (1u % 32u)), _wgslsmith_mod_i32(global4.x ^ 1713i, global4.x)), ~21184i, global4.x));
    let var_0 = vec3<i32>(global4.x >> (4753u % 32u), global4.x, -60815i);
    var var_1 = max(global4.x, _wgslsmith_mod_i32(global4.x, ~max(global1.x, global4.x)));
    var var_2 = global2.a;
    global1 = -(~_wgslsmith_mod_vec3_i32(~vec3<i32>(-32181i, global1.x, u_input.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(global4.x, -49122i, global4.x), vec3<i32>(global4.x, -1i, global4.x), vec3<i32>(global1.x, global4.x, u_input.a.x))) | vec3<i32>(global1.x, _wgslsmith_sub_i32(global4.x >> (4294967295u % 32u), 1i), global4.x));
    return global2.b;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(global2.a, ~82440u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -159f) - 258f));
    let var_1 = Struct_2(Struct_1(~global2.a.a, global2.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.a.c)), vec2<f32>(var_0.c, var_0.c)))), _wgslsmith_sub_u32(~global2.b, select(~(~global2.b), func_3(), global2.a.b.x)), -408f);
    let var_2 = var_0;
    global1 = vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(u_input.a.www, ~vec3<i32>(72989i, 1i, -22214i));
    var var_3 = u_input.a;
    return Struct_1(var_0.b, var_0.a.b, vec2<f32>(var_2.a.c.x, _wgslsmith_f_op_f32(min(-848f, _wgslsmith_f_op_f32(-global0.x)))));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(func_2(), 55811u, global0.x);
    global1 = vec3<i32>(_wgslsmith_mult_i32(-18265i, u_input.d << (1u % 32u)), ~global4.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a));
    global3 = array<vec4<bool>, 14>();
    let var_1 = u_input.a.xzw;
    global1 = (u_input.a.yzy << (firstTrailingBit(_wgslsmith_mod_vec3_u32(u_input.b, reverseBits(u_input.e.ywz))) % vec3<u32>(32u))) ^ ~(-vec3<i32>(2147483647i, abs(u_input.d), global1.x));
    return _wgslsmith_f_op_f32(abs(global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-807f, global2.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))));
    global1 = vec3<i32>(50082i, -1i, abs(-global4.x));
    let var_1 = ~_wgslsmith_mod_u32(firstLeadingBit(~(global2.a.a ^ 1u)), firstLeadingBit(global2.b));
    global4 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-19458i, global1.x, global4.x), vec3<i32>(global1.x, global1.x, u_input.d))), -2147483647i), select(u_input.a.zxy ^ vec3<i32>(u_input.a.x, global1.x, 2147483647i), ~(~u_input.a.zzz), global2.a.b.x || true)), u_input.a.xwz);
    var var_2 = _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(func_1())));
    global3 = array<vec4<bool>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, vec3<u32>(1u, _wgslsmith_sub_u32(abs(u_input.b.x), select(global2.b, 41224u, global2.a.b.x)) ^ ~(~global2.b), 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(183f, 1000f, var_0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, global2.c, -1007f, -269f) + vec4<f32>(-1541f, 2125f, -3383f, 1671f))))));
}

