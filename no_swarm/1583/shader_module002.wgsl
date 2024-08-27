struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 30467u;

var<private> global1: Struct_3 = Struct_3(Struct_2(-1000f, 120964u));

var<private> global2: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: i32) -> Struct_3 {
    return Struct_3(Struct_2(-966f, abs(_wgslsmith_add_u32(~4294967295u, ~1u))));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.a), global1.a.a) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1118f, global1.a.a) * vec2<f32>(global1.a.a, -609f)) + vec2<f32>(236f, global1.a.a)))))));
    var var_1 = true;
    var var_2 = reverseBits(~(u_input.e.x & u_input.c));
    var_1 = true;
    var_2 = _wgslsmith_mult_i32(-68301i, -_wgslsmith_mod_i32(u_input.e.x, 1i)) | (_wgslsmith_mod_i32(1i, u_input.b) ^ abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 6064i, -17776i), vec3<i32>(-1i, u_input.d.x, 0i)) & 1i));
    return global1.a.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    let var_0 = !(!vec2<bool>(_wgslsmith_f_op_f32(func_3(u_input.a)) != _wgslsmith_f_op_f32(trunc(1000f)), all(vec3<bool>(false, false, true))));
    global1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(arg_1.a.a)), ~((arg_1.a.b & global1.a.b) ^ ~arg_1.a.b)));
    var var_1 = countOneBits(~abs(abs(vec2<u32>(global1.a.b, u_input.a)))) ^ (_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_1.a.b, global1.a.b), vec2<u32>(_wgslsmith_add_u32(global1.a.b, global1.a.b), reverseBits(arg_1.a.b))) >> (vec2<u32>(~_wgslsmith_div_u32(40263u, arg_1.a.b), min(_wgslsmith_add_u32(39454u, global1.a.b), 22460u)) % vec2<u32>(32u)));
    return 0u << (u_input.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(4294967295u), ~0u, ~abs(_wgslsmith_add_u32(4294967295u, 0u)), ~func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(-51768i, u_input.e.x, -51429i, 2147483647i), vec4<i32>(u_input.b, 1i, -2147483647i, 12358i)), func_1(-60066i), u_input.d.x, ~vec3<i32>(u_input.d.x, u_input.b, -2147483647i))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(80377u, func_1(u_input.e.x).a.b), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 5972u)))), u_input.a, u_input.a, global1.a.b));
    var var_1 = ~((max(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(1u, global1.a.b), _wgslsmith_add_vec2_u32(vec2<u32>(global1.a.b, u_input.a), vec2<u32>(u_input.a, u_input.a))) | vec2<u32>(abs(1u), _wgslsmith_div_u32(global1.a.b, global1.a.b))) & abs(reverseBits(max(vec2<u32>(23036u, 98368u), vec2<u32>(u_input.a, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.d.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1345f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f)) * _wgslsmith_f_op_f32(global1.a.a - _wgslsmith_f_op_f32(global1.a.a * global1.a.a)))), func_1(13132i).a.a);
}

