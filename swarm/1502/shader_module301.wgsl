struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, 862f), 359f, Struct_1(false, 1782f));

var<private> global1: array<vec3<f32>, 17>;

var<private> global2: i32;

var<private> global3: array<vec2<f32>, 18>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    let var_0 = reverseBits(-_wgslsmith_mult_vec4_i32(u_input.b, u_input.b) | (~vec4<i32>(u_input.a, u_input.a, -573i, u_input.a) | (u_input.b >> (vec4<u32>(0u, u_input.d, u_input.d, u_input.c) % vec4<u32>(32u))))) << (~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.c, u_input.d), u_input.c, _wgslsmith_mult_u32(33337u, u_input.d), _wgslsmith_mod_u32(u_input.d, 4294967295u)), vec4<u32>(u_input.d ^ 0u, 4294967295u, u_input.d, _wgslsmith_mult_u32(u_input.d, 50785u))) % vec4<u32>(32u));
    global1 = array<vec3<f32>, 17>();
    let var_1 = vec2<i32>(0i, ~23064i);
    global0 = Struct_2(global0.c, global0.b, Struct_1(true, 472f));
    var var_2 = Struct_3(~(~(~(~vec3<u32>(4294967295u, 19037u, 4294967295u)))));
    return 1i;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = select(u_input.a, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(countOneBits(-21904i), abs(18772i), func_3(arg_0.wxy), u_input.b.x)), global0.a.a) << (26275u % 32u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -841f), arg_0.x);
    var var_2 = _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(min(reverseBits(u_input.a), _wgslsmith_div_i32(~var_0, -2147483647i)), _wgslsmith_mult_i32(min(_wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(-2147483647i, var_0)), var_0), 2147483647i), 0i, _wgslsmith_sub_i32(18728i, abs(-2147483647i))));
    let var_3 = global0.a;
    return global0.c;
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = true;
    let var_1 = true;
    global3 = array<vec2<f32>, 18>();
    global1 = array<vec3<f32>, 17>();
    let var_2 = arg_0.b;
    return Struct_3(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 1u, countOneBits(~9947u)), ~vec3<u32>(~4294967295u, ~1u, 0u)));
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(521f * -2383f) * _wgslsmith_f_op_f32(select(global0.a.b, global0.b, global0.a.a)))))));
    global3 = array<vec2<f32>, 18>();
    let var_1 = false;
    global1 = array<vec3<f32>, 17>();
    let var_2 = false;
    return func_4(Struct_2(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, -1075f, var_0, global0.b) + vec4<f32>(arg_0, -1000f, 940f, -1409f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-713f, var_0, -694f, 1985f) * vec4<f32>(global0.a.b, arg_0, var_0, 245f)))), _wgslsmith_f_op_f32(-arg_0), global0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = -(-2147483647i << (min(u_input.c, 9900u) % 32u));
    var var_2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-683f))) - 784f));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(global0.c.b - global0.a.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(331f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1355f, -446f)))))))), _wgslsmith_f_op_f32(min(global0.c.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -126f))))));
    var var_4 = false;
    var var_5 = select(vec4<u32>(reverseBits(~var_2.a.x), u_input.d, 0u, _wgslsmith_dot_vec2_u32(var_2.a.xz, reverseBits(vec2<u32>(66535u, var_2.a.x) >> (var_2.a.yz % vec2<u32>(32u))))), vec4<u32>(u_input.c ^ 4294967295u, ~(~(var_2.a.x << (4294967295u % 32u))), min(0u, 4294967295u) >> (~u_input.d % 32u), var_2.a.x), select(select(true, (var_3.x != -495f) == any(vec3<bool>(true, true, false)), global0.a.a), any(select(select(vec2<bool>(global0.c.a, true), vec2<bool>(global0.a.a, false), vec2<bool>(global0.a.a, true)), vec2<bool>(true, global0.c.a), !vec2<bool>(global0.c.a, false))), global0.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b - _wgslsmith_f_op_f32(select(global0.b, 388f, global0.c.a)))), _wgslsmith_f_op_f32(select(global0.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b + -540f), _wgslsmith_f_op_f32(global0.a.b * 2061f)), true)), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1344f, global0.b, var_3.x, -813f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.b, 588f, -1000f, -208f))))).b), abs(-u_input.b.yww & u_input.b.zzz), _wgslsmith_dot_vec2_u32(vec2<u32>(var_5.x, ~1u) & var_2.a.yy, _wgslsmith_mult_vec2_u32(vec2<u32>(57466u, 14384u), vec2<u32>(4294967295u, ~var_2.a.x))), var_1);
}

