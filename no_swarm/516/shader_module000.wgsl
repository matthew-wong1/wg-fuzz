struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-2085f, -419f, -313f, 606f), true, false, 32268i);

var<private> global3: Struct_3 = Struct_3(vec4<u32>(17220u, 1u, 49610u, 32777u));

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_clamp_i32(-52657i >> ((0u >> (_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(61178u, global0.x), global0.wy)) % 32u)) % 32u), u_input.d, -30175i);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global2.a.wz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1083f, global2.a.x))))))));
    let var_1 = ~(-vec4<i32>(-51740i, u_input.c, 22394i, global2.d) << (u_input.a % vec4<u32>(32u))) & (abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.d, 2971i, global2.d, global2.d) ^ vec4<i32>(u_input.d, -2147483647i, -13510i, u_input.d), countOneBits(vec4<i32>(u_input.d, u_input.d, global2.d, 10222i)))) >> (vec4<u32>(_wgslsmith_sub_u32(u_input.b << (14751u % 32u), ~4294967295u), select(~global3.a.x, global3.a.x, any(vec2<bool>(global2.b, true))), select(global3.a.x, abs(57138u), global2.c), 26120u) % vec4<u32>(32u)));
    var var_2 = vec2<bool>(~u_input.a.x >= max(_wgslsmith_add_u32(15880u, 46292u), _wgslsmith_mod_u32(global3.a.x, 0u) << (global0.x % 32u)), false);
    let var_3 = global3.a;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f) - _wgslsmith_f_op_f32(min(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-549f + var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(38710i, abs(~_wgslsmith_div_vec3_u32(var_3.zxz, _wgslsmith_mult_vec3_u32(global0.zzx, vec3<u32>(global0.x, var_3.x, 38212u)))), 14314i, _wgslsmith_div_u32(~global3.a.x, ~(global3.a.x >> (global3.a.x % 32u))));
}

