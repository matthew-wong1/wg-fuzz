struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 28>;

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<u32>(0u, 76890u, 74115u, 0u), true, 991f, vec3<i32>(i32(-2147483648), 1i, -1i), 1285f), Struct_1(vec4<u32>(7250u, 1u, 61182u, 29133u), false, 210f, vec3<i32>(23244i, -83404i, 53861i), 1040f), Struct_1(vec4<u32>(4294967295u, 30569u, 4294967295u, 9154u), true, -555f, vec3<i32>(-22064i, 1i, -22271i), 396f), Struct_1(vec4<u32>(0u, 4294967295u, 44810u, 20935u), true, -640f, vec3<i32>(309i, 2147483647i, 2147483647i), 950f));

var<private> global4: array<Struct_2, 7>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec4<bool> {
    global2 = array<Struct_1, 28>();
    let var_0 = 4294967295u;
    var var_1 = arg_1.x;
    global2 = array<Struct_1, 28>();
    return !vec4<bool>(true, arg_1.x, arg_1.x, false);
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> vec4<u32> {
    var var_0 = u_input.b <= _wgslsmith_mod_i32(23311i, arg_1.x);
    var var_1 = global4[_wgslsmith_index_u32(17395u, 7u)];
    let var_2 = ~vec4<i32>(arg_1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.b.x, arg_1.x), vec2<i32>(u_input.b, -2147483647i)), var_1.b.zw), -select(vec2<i32>(u_input.b, arg_1.x), vec2<i32>(0i, var_1.c), vec2<bool>(true, false))), _wgslsmith_mod_i32(u_input.b, 73886i), -16177i);
    var_1 = global4[_wgslsmith_index_u32(max(global1.x ^ _wgslsmith_mult_u32(~(~global1.x), var_1.a.a.x), 22930u), 7u)];
    var var_3 = select(select(select(select(func_3(u_input.b, vec3<bool>(false, var_1.a.b, var_1.a.b)), !vec4<bool>(true, true, var_1.a.b, true), select(vec4<bool>(false, arg_0, var_1.a.b, true), vec4<bool>(var_1.a.b, var_1.a.b, false, true), false)), !(!vec4<bool>(true, arg_0, var_1.a.b, var_1.a.b)), !var_1.a.b), select(select(vec4<bool>(false, true, var_1.a.b, true), !vec4<bool>(arg_0, true, false, false), any(vec4<bool>(false, false, arg_0, true))), vec4<bool>(true, arg_0, any(vec3<bool>(false, arg_0, arg_0)), true), true), var_1.a.b), vec4<bool>(-840f <= global0.x, all(!vec4<bool>(false, arg_0, true, false)) && true, false, !(!arg_0)), arg_0);
    return firstLeadingBit(var_1.a.a);
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_3(global4[_wgslsmith_index_u32(abs(~global1.x), 7u)]);
    var var_1 = global4[_wgslsmith_index_u32(max(1u, ~26892u ^ _wgslsmith_mod_u32(7221u, max(3036u, _wgslsmith_dot_vec3_u32(vec3<u32>(16475u, u_input.a.x, 43297u), vec3<u32>(46681u, global1.x, 10120u))))), 7u)];
    var var_2 = min(~func_2(var_0.a.a.b, _wgslsmith_add_vec4_i32(vec4<i32>(var_1.c, u_input.b, -2147483647i, 0i), ~vec4<i32>(-16892i, var_1.c, 19946i, -2147483647i))), ~(~var_1.a.a));
    var var_3 = _wgslsmith_clamp_vec2_i32(var_0.a.b.wx, abs(-var_1.a.d.xx), -var_0.a.b.yx);
    var_1 = var_0.a;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-global0.xy), abs(_wgslsmith_mod_vec3_i32(var_1.a.d, var_0.a.b.xww)), var_0.a.a.a.xw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global2 = array<Struct_1, 28>();
    var var_1 = u_input.b;
    global2 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = func_1();
}

