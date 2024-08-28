struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_3;

var<private> global2: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(536f, 611f, -1000f), vec3<f32>(-1234f, -131f, -1334f), vec3<f32>(1724f, 1540f, -617f), vec3<f32>(-1000f, -131f, -596f), vec3<f32>(-203f, 1198f, -1221f), vec3<f32>(-1159f, -472f, -1091f), vec3<f32>(-2229f, 1430f, 2071f), vec3<f32>(-1272f, -1266f, -1130f), vec3<f32>(597f, 2908f, 1000f), vec3<f32>(-1997f, 215f, -2231f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> vec4<u32> {
    let var_0 = global1.b;
    let var_1 = Struct_4(!(!(!vec4<bool>(true, var_0.d.x, false, global1.a.x))));
    global0 = var_0.e.d;
    let var_2 = ~0u;
    global2 = array<vec3<f32>, 10>();
    return vec4<u32>(10705u, var_2, abs(~_wgslsmith_clamp_u32(var_2 >> (var_0.c.x % 32u), 0u, u_input.b)), ~0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec2<f32> {
    global2 = array<vec3<f32>, 10>();
    var var_0 = vec3<bool>(any(select(!(!vec3<bool>(global1.b.d.x, true, false)), select(vec3<bool>(global1.b.d.x, global1.a.x, global1.a.x), vec3<bool>(global1.b.d.x, global1.a.x, false), select(vec3<bool>(global1.b.d.x, true, false), vec3<bool>(true, true, global1.b.d.x), global1.a.x)), !global1.b.d.x)), true, all(select(select(vec3<bool>(global1.b.d.x, false, global1.a.x), vec3<bool>(global1.a.x, false, global1.b.d.x), !vec3<bool>(false, global1.a.x, global1.a.x)), !vec3<bool>(false, global1.a.x, global1.a.x), select(!vec3<bool>(true, true, global1.a.x), !vec3<bool>(global1.a.x, true, false), !vec3<bool>(true, false, global1.b.d.x)))));
    var var_1 = 17426u;
    let var_2 = Struct_4(vec4<bool>(!(arg_1 >= _wgslsmith_f_op_f32(global1.c + arg_1)), true || global1.b.d.x, select(true, !any(var_0.xy), all(select(vec4<bool>(true, true, global1.a.x, false), vec4<bool>(false, var_0.x, false, false), true))), select(all(select(vec3<bool>(global1.b.d.x, false, global1.b.d.x), vec3<bool>(false, false, global1.b.d.x), vec3<bool>(false, global1.a.x, true))), _wgslsmith_div_i32(2147483647i, -15964i) != abs(global1.b.e.d.x), true != !var_0.x)));
    let var_3 = arg_1;
    return vec2<f32>(474f, global1.c);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(!global1.a, global1.b, -1169f);
    return Struct_3(var_0.a, Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(firstTrailingBit(var_0.b.e.a), _wgslsmith_mult_vec3_u32(global1.b.a.a, vec3<u32>(var_0.b.b.x, var_0.b.e.a.x, 0u))), global1.b.e.b, _wgslsmith_f_op_vec2_f32(func_3(var_0.b.e, _wgslsmith_f_op_f32(global1.c - var_0.b.e.b.x))), _wgslsmith_sub_vec4_i32(var_0.b.a.d, vec4<i32>(global0.x, global1.b.e.d.x, global1.b.a.d.x, global0.x))), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b), global1.b.c), reverseBits(vec2<u32>(0u, 4543u))), var_0.b.a.a.xy, var_0.b.d, Struct_1(~(~vec3<u32>(0u, 23688u, 34481u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(867f, var_0.c, var_0.c) * global1.b.e.b) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.b.e.b.x, var_0.b.e.b.x, var_0.c)))), vec2<f32>(-151f, _wgslsmith_f_op_f32(-global1.b.e.b.x)), vec4<i32>(global0.x, global1.b.a.d.x, select(u_input.d, -2147483647i, false), _wgslsmith_mod_i32(u_input.d, global0.x)))), _wgslsmith_f_op_f32(-146f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_0.c, 482f)))) + _wgslsmith_f_op_vec2_f32(func_3(var_0.b.e, _wgslsmith_f_op_f32(-var_0.c))).x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(min(_wgslsmith_dot_vec3_i32(-global0.yzy, global0.wzw), _wgslsmith_dot_vec2_i32(global1.b.a.d.zx, ~vec2<i32>(-2147483647i, global0.x))), global1.b.a.d.x << (68124u % 32u), -1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.e.d.x, global1.b.e.d.x, -17894i) | global1.b.e.d.ywz, vec3<i32>(global0.x, 3970i, global1.b.a.d.x)), ~_wgslsmith_add_i32(global1.b.a.d.x, global0.x))) >> (_wgslsmith_sub_vec4_u32(~(~(vec4<u32>(0u, u_input.a.x, global1.b.e.a.x, u_input.a.x) | vec4<u32>(4294967295u, global1.b.c.x, global1.b.a.a.x, u_input.a.x))), ~func_1() | min(vec4<u32>(4294967295u, 43662u, u_input.c, 0u), vec4<u32>(9335u, u_input.b, 38601u, u_input.b))) % vec4<u32>(32u));
    var var_0 = -global0.x;
    var_0 = -2147483647i >> (global1.b.e.a.x % 32u);
    var var_1 = global0.x < -(~(~51106i));
    let var_2 = global1.b.a.a.x;
    global2 = array<vec3<f32>, 10>();
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), 0i, global0.x >> (_wgslsmith_mult_u32(u_input.b, 1u) % 32u), global0.yzw);
}

