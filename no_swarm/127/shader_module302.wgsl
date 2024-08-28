struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31>;

var<private> global1: array<vec2<u32>, 26>;

var<private> global2: Struct_4 = Struct_4(Struct_1(4294967295u, vec4<i32>(i32(-2147483648), 8413i, 24787i, -1i)), 0u, Struct_1(1u, vec4<i32>(-31677i, 43003i, 11441i, 1i)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = Struct_3(vec2<bool>(any(vec2<bool>(true, true)), true), min(-global2.a.b, firstTrailingBit(vec4<i32>(arg_0.c.b.x, 2147483647i, arg_0.a.b.x, -2943i))) & vec4<i32>(-36455i, _wgslsmith_dot_vec2_i32(vec2<i32>(23660i, arg_0.a.b.x), ~arg_0.c.b.wz), -2147483647i, global2.a.b.x));
    var var_1 = vec3<bool>(true, var_0.a.x, true);
    global1 = array<vec2<u32>, 26>();
    let var_2 = _wgslsmith_clamp_u32(~9910u, ~1u, max(_wgslsmith_add_u32(4294967295u << (global2.c.a % 32u), 4294967295u), u_input.a));
    global0 = array<vec3<u32>, 31>();
    return 719f;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(func_3(Struct_4(global2.c, 39601u, global2.a)));
    var var_1 = u_input.b.x;
    return Struct_4(global2.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(~28189u, global2.b), global1[_wgslsmith_index_u32(global2.c.a, 26u)] ^ u_input.e.wz), global2.c);
}

fn func_1(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = func_2();
    let var_1 = Struct_5(vec3<bool>(true, true, false));
    var var_2 = func_2().a.b.x;
    var var_3 = Struct_2(arg_0.b, Struct_1(var_0.a.a, _wgslsmith_sub_vec4_i32(abs(select(vec4<i32>(0i, -2147483647i, arg_0.b.b.x, 1267i), vec4<i32>(u_input.b.x, 25530i, global2.a.b.x, -2147483647i), false)), vec4<i32>(~2147483647i, arg_0.a.b.x, select(2147483647i, -16431i, var_1.a.x), _wgslsmith_clamp_i32(global2.c.b.x, u_input.b.x, global2.a.b.x)))));
    var_2 = -max(var_0.c.b.x, -_wgslsmith_dot_vec3_i32(arg_0.a.b.yww, vec3<i32>(-66320i, -38594i, var_0.a.b.x)) >> (_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 33451u, arg_0.a.a), global0[_wgslsmith_index_u32(u_input.c, 31u)], true), vec3<u32>(arg_0.a.a, 0u, global2.c.a)) % 32u));
    return !(!vec4<bool>(!any(vec4<bool>(var_1.a.x, var_1.a.x, false, true)), true, false, true));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = !arg_0.ywy;
    var var_1 = u_input.e;
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = func_4(select(vec4<bool>(true, true || (u_input.a >= global2.a.a), true, true), select(vec4<bool>(true, global2.a.a != 0u, all(vec4<bool>(false, false, false, true)), 59014i != u_input.b.x), vec4<bool>(true, true, true, true), true), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false), func_1(Struct_2(global2.a, Struct_1(0u, global2.a.b))), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true))), Struct_3(vec2<bool>(true, false), -abs(global2.a.b)), firstTrailingBit(~(~(~vec3<i32>(global2.a.b.x, -1i, global2.a.b.x)))), countOneBits(u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1331f, -311f, -102f)))), _wgslsmith_div_vec3_f32(vec3<f32>(-951f, 1839f, 2241f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(695f, 1135f, 1000f))))), var_1.b.x, ~0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-532f * 287f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-796f))), _wgslsmith_f_op_f32(f32(-1f) * -1021f))), 1f);
}

