struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3;

var<private> global2: f32 = 1318f;

var<private> global3: Struct_3 = Struct_3(Struct_1(vec2<i32>(-7828i, 0i), vec4<f32>(884f, -350f, -1550f, 163f)), Struct_2(vec2<i32>(1i, 1i), false, 0u, Struct_1(vec2<i32>(27520i, i32(-2147483648)), vec4<f32>(-556f, 743f, 1808f, 998f))), vec4<i32>(0i, -27980i, 0i, 25660i));

var<private> global4: array<vec2<i32>, 21>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<u32> {
    let var_0 = ((_wgslsmith_mult_vec3_u32(u_input.b, abs(vec3<u32>(global3.b.c, global1.b.c, 1u))) ^ abs(u_input.b | vec3<u32>(21428u, 0u, global3.b.c))) | ~vec3<u32>(~4294967295u, ~4294967295u, 32520u)) | ~vec3<u32>(~(u_input.a | 18735u), firstTrailingBit(51981u), global1.b.c);
    let var_1 = _wgslsmith_div_vec2_f32(global3.b.d.b.zw, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_f_op_f32(-global1.b.d.b.x))), -495f, any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.b.d.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b.d.b.x)))))));
    let var_2 = vec3<i32>(-30649i, ~_wgslsmith_clamp_i32(61422i, ~(global1.c.x << (41745u % 32u)), 2147483647i), global1.a.a.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(global1.a.b.yx));
    let var_4 = -1914f;
    return var_0.xy;
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~u_input.b);
    var var_1 = func_3() & (vec2<u32>(max(var_0.x, global1.b.c), ~34464u) & vec2<u32>(var_0.x, global1.b.c));
    var var_2 = global3.a.b.x;
    var var_3 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(global1.b.d.a.x << (1u % 32u), _wgslsmith_div_i32(global3.c.x, global1.a.a.x), global3.a.a.x)), reverseBits(vec3<i32>(-global1.c.x, 1i, _wgslsmith_mult_i32(global1.a.a.x, -3685i))), vec3<i32>(-1i) * -select(vec3<i32>(global3.c.x, global1.a.a.x, global3.a.a.x), global3.c.yxx, vec3<bool>(global1.b.b, false, global3.b.b))) >> (u_input.b % vec3<u32>(32u));
    global2 = 943f;
    return global3.b.d;
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    global2 = arg_0.x;
    let var_0 = func_2();
    global3 = Struct_3(Struct_1(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, global3.b.a.x), vec2<i32>(var_0.a.x, global3.c.x), min(vec2<i32>(global1.b.d.a.x, global3.c.x), vec2<i32>(-2147483647i, global3.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3.a.b, var_0.b)))), Struct_2(vec2<i32>(-2147483647i, 29676i), global1.b.b, _wgslsmith_dot_vec4_u32(select(vec4<u32>(31127u, global3.b.c, 0u, u_input.a), vec4<u32>(1u, u_input.b.x, global1.b.c, 73964u), global3.b.b), (vec4<u32>(u_input.a, 0u, u_input.b.x, global1.b.c) << (vec4<u32>(1u, global1.b.c, 0u, global1.b.c) % vec4<u32>(32u))) << (firstLeadingBit(vec4<u32>(0u, 48100u, 30544u, 4294967295u)) % vec4<u32>(32u))), global1.a), global1.c);
    let var_1 = Struct_2(firstTrailingBit(~vec2<i32>(i32(-1i) * -45477i, i32(-1i) * -4167i)), select(global1.b.b, true, global1.b.b), 4294967295u, func_2());
    var var_2 = vec2<bool>(global1.b.b, global1.b.b);
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_u32(u_input.b.yz, select(vec2<u32>(~global3.b.c, max(firstTrailingBit(22992u), func_1(global1.b.d.b.ww))), select(firstLeadingBit(u_input.b.yx), abs(vec2<u32>(162905u, u_input.a)) | u_input.b.zx, !global1.b.b), global1.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.b.wzx) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.d.b.x, global3.b.d.b.x, global1.b.d.b.x) + global1.b.d.b.yzz), global3.b.d.b.xyy)), vec3<f32>(_wgslsmith_div_f32(global1.b.d.b.x, global3.b.d.b.x), _wgslsmith_f_op_f32(-780f * global1.a.b.x), -1000f)))), vec3<u32>(~(~59889u), global3.b.c, ~select(_wgslsmith_clamp_u32(global3.b.c, var_0.x, global3.b.c), var_0.x, false | global3.b.b)));
}

