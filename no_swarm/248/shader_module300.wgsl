struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<f32, 22> = array<f32, 22>(480f, 387f, 179f, 1976f, -929f, -667f, 1380f, -1759f, -1966f, 1000f, 1461f, -1142f, 637f, -301f, -290f, -368f, -686f, -1555f, 750f, -1534f, -716f, 2133f);

var<private> global2: f32 = -1000f;

var<private> global3: Struct_4 = Struct_4(vec4<f32>(1000f, -210f, -1000f, -1920f), 1007f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> vec3<bool> {
    var var_0 = ~(~vec4<u32>(u_input.a.x, ~u_input.c.x | u_input.d.x, countOneBits(~1u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.a.x), u_input.d), arg_0.x, 7498u)));
    var var_1 = Struct_2(vec2<i32>(41725i, reverseBits(-11227i)), vec3<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), true), Struct_1(!vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, true), vec3<bool>(975f <= _wgslsmith_f_op_f32(max(-411f, global3.b)), false, select(any(vec2<bool>(false, false)), all(vec2<bool>(false, false)), true)), ~u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 22u)], global1[_wgslsmith_index_u32(var_0.x, 22u)], 622f)), _wgslsmith_f_op_vec3_f32(abs(global3.a.xxx)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1231f, global1[_wgslsmith_index_u32(u_input.d.x, 22u)], global3.a.x), global3.a.zwy))))));
    var var_2 = abs(vec4<i32>(-1i, abs(abs(var_1.a.x) | u_input.b), -1i, max(abs(_wgslsmith_div_i32(var_1.a.x, -32042i)), 1i)));
    var var_3 = var_1.b.x;
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_0.x >> (23621u % 32u), 22u)])));
    return var_1.b;
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_2(countOneBits(-select(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b), vec2<bool>(true, false)) & abs(vec2<i32>(-3939i, u_input.b) | vec2<i32>(-1i, 7486i))), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), !func_3(u_input.a, -2147483647i)), Struct_1(select(vec4<bool>(any(vec4<bool>(true, false, false, false)), true, true, true), vec4<bool>(true, true, u_input.b != 1292i, true), vec4<bool>(true, true, true, true)), select(vec3<bool>(any(vec3<bool>(false, false, false)), true, true), select(vec3<bool>(true, true, true), func_3(u_input.d, 9980i), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), _wgslsmith_f_op_f32(select(global3.b, 1851f, true)) <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 22u)])), u_input.d.x), vec3<f32>(-1970f, _wgslsmith_f_op_f32(exp2(global3.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 22u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.b)))))));
    global2 = var_0.d.x;
    let var_1 = _wgslsmith_mod_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.c, ~var_0.c.c, ~u_input.c.x, 39556u), vec4<u32>(1u, 1u >> (u_input.c.x % 32u), 1u, max(0u, 1u)))), _wgslsmith_div_u32(reverseBits(var_0.c.c), 0u));
    var var_2 = vec2<f32>(var_0.d.x, global1[_wgslsmith_index_u32(u_input.d.x, 22u)]);
    var var_3 = u_input.d.x;
    return -u_input.b;
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = 1u;
    global0 = u_input.a.x;
    return Struct_3(vec3<i32>(-1i, ~(-1i), abs(func_2(1968f)) ^ u_input.b), min(-51871i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, -2147483647i), vec2<i32>(2147483647i, 2147483647i))) >> (u_input.d.x % 32u), false, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(56125u, 17732u, u_input.c.x), vec3<u32>(4294967295u, u_input.d.x, 11632u)), vec3<u32>(u_input.d.x, 79205u, 41818u)), 18310u), ~vec2<u32>(abs(u_input.d.x), 4294967295u)), 19091u | _wgslsmith_add_u32(_wgslsmith_sub_u32(~u_input.d.x, ~45297u), 70084u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<bool>(!(u_input.a.x <= ~9968u), true, false));
    global3 = Struct_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global3.a.x)))), global3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(304f, -187f)) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 22u)]))), global3.a.x, global3.a.x), _wgslsmith_div_f32(1000f, global3.b));
    global0 = 94950u;
    global1 = array<f32, 22>();
    var var_1 = Struct_2((vec2<i32>(-2147483647i, _wgslsmith_mult_i32(var_0.b, 2147483647i)) | ~vec2<i32>(0i, -26293i)) & reverseBits(vec2<i32>(var_0.a.x | var_0.b, 39829i)), vec3<bool>(true, var_0.c, true && (select(false, true, false) && !var_0.c)), Struct_1(!select(select(vec4<bool>(false, var_0.c, true, var_0.c), vec4<bool>(true, true, var_0.c, true), var_0.c), vec4<bool>(true, false, true, var_0.c), true), vec3<bool>(true, true, true), _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(58976u, 1u, 1u), (var_0.e ^ 0u) & var_0.d.x)), global3.a.wxy);
    let x = u_input.a;
    s_output = StorageBuffer(1800f, _wgslsmith_mod_vec4_i32(vec4<i32>(-28121i, var_0.a.x, u_input.b, -52672i), vec4<i32>(u_input.b, _wgslsmith_clamp_i32(var_0.b, 1i, var_1.a.x), var_0.b, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_0.a.zx, vec2<i32>(u_input.b, 12272i)), vec2<i32>(14999i, var_0.a.x)))), var_0.a, 64107u);
}

