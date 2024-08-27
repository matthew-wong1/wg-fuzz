struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(-122f), Struct_1(true, false, -986f), 41666u);

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 66429u, 0u, 2250u);

var<private> global2: array<vec3<f32>, 12>;

var<private> global3: array<vec3<f32>, 27>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> vec3<i32> {
    global1 = ~(~vec4<u32>(18633u, _wgslsmith_div_u32(1u, global0.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 0u), global1.zy), 181108u) & ~(~(~vec4<u32>(16937u, 0u, u_input.a.x, global0.c))));
    let var_0 = Struct_4(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 59053u & global0.c) | u_input.a.xy, u_input.a.yx), global1.yy);
    let var_1 = vec2<i32>(-5755i, ~(-max(8688i, -7098i) >> (select(u_input.a.x, _wgslsmith_dot_vec2_u32(global1.xy, u_input.a.zx), arg_2 || arg_2) % 32u)));
    global3 = array<vec3<f32>, 27>();
    var var_2 = arg_1;
    return _wgslsmith_mult_vec3_i32(firstLeadingBit(-vec3<i32>(-2147483647i, abs(-14328i), -1i)), ~min(vec3<i32>(var_1.x, firstLeadingBit(var_1.x), ~2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_1.x, var_1.x), vec3<i32>(var_1.x, -2147483647i, -1i)) ^ vec3<i32>(1i, 0i, 37492i)));
}

fn func_2() -> Struct_3 {
    var var_0 = global1.x;
    global2 = array<vec3<f32>, 12>();
    var var_1 = global0.b;
    let var_2 = _wgslsmith_div_vec3_i32(-func_3(global0.a, global0.a, global0.b.b), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-27463i, -23857i, 35490i), 1i), 1i), ~(-1i), -2147483647i));
    let var_3 = global0.b;
    return Struct_3(Struct_2(-507f), global0.b, 1u);
}

fn func_1() -> vec3<f32> {
    let var_0 = Struct_1(global0.b.a, any(vec2<bool>(!(global0.c != global0.c), true)), global0.a.a);
    var var_1 = func_2();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-204f + _wgslsmith_f_op_f32(sign(var_1.b.c))) * _wgslsmith_f_op_f32(f32(-1f) * -1557f)), 598f)), var_0.c);
    global2 = array<vec3<f32>, 12>();
    var var_3 = max(_wgslsmith_clamp_vec2_u32(~(~(u_input.a.yz & global1.xx)), vec2<u32>(u_input.a.x, 18326u) | ~_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, global0.c), global1.xw), _wgslsmith_div_vec2_u32(~select(global1.wy, vec2<u32>(57570u, 5987u), global0.b.b), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 21503u), u_input.a.zx))), u_input.a.yz);
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.a, _wgslsmith_f_op_f32(step(-247f, 1408f))) - var_0.c))), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-374f, -1123f, 101f, -1000f) + vec4<f32>(-731f, -1863f, global0.b.c, -1000f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(718f, var_0.x, 2302f, global0.a.a), vec4<f32>(var_0.x, global0.b.c, var_0.x, -386f), vec4<bool>(false, true, global0.b.b, global0.b.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1267f, global0.b.c, var_0.x, 120f)))))));
}

