struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), -25640i);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = vec3<bool>(any(global0.b.a.b), false, global0.b.a.b.x);
    var var_1 = Struct_3(vec4<f32>(-600f, 1043f, global0.b.a.e.c.x, 1418f), var_0.x, global0.b.a.c, countOneBits(abs(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.a.a.a, global1.x), vec2<i32>(0i, global0.b.a.c.a)), ~(-2147483647i), global0.b.a.c.a))), _wgslsmith_div_f32(global0.b.a.a.c.x, global0.b.a.c.e.x));
    global1 = var_1.d.xz;
    let var_2 = Struct_5(max(~var_1.c.b.x, ~reverseBits(1u) >> (global0.b.a.e.b.x % 32u)), global0.b);
    global1 = var_1.d.yx >> (~select(vec2<u32>(1u, 1u), ~u_input.b.xz, var_0.x) % vec2<u32>(32u));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.a.d, 14835u, u_input.c.x, ~61798u), global0.b.a.e.b) & 18849u;
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_3(global0.b.a.e.e, !global0.b.a.b.x, Struct_1(-28356i, vec4<u32>(func_3(), countOneBits(u_input.d << (1029u % 32u)), select(_wgslsmith_mod_u32(u_input.b.x, 0u), ~1u, global0.b.a.b.x), u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(318f, -732f, global0.b.a.c.e.x)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0.b.b)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.b, -890f))), _wgslsmith_div_vec4_f32(global0.b.a.a.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1097f, -1000f, global0.b.b, global0.b.a.a.c.x), global0.b.a.e.e) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b.a.a.d.x, 2034f, 283f, -718f), vec4<f32>(-122f, 321f, 2178f, global0.b.b)))))), -vec3<i32>(select(u_input.a, global1.x, true), 1i, _wgslsmith_div_i32(24041i, global1.x)) & select(~select(vec3<i32>(global0.b.a.a.a, u_input.a, global1.x), vec3<i32>(global0.b.a.c.a, u_input.a, global1.x), vec3<bool>(global0.b.a.b.x, true, true)), ~(-vec3<i32>(-53792i, global1.x, 48586i)), vec3<bool>(global0.b.a.b.x, true, global0.b.a.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -212f));
    let var_1 = (_wgslsmith_sub_u32(5275u, u_input.b.x) << (firstTrailingBit(~(~4294967295u)) % 32u)) << (1u % 32u);
    let var_2 = firstTrailingBit(_wgslsmith_add_u32(u_input.d, ~_wgslsmith_mod_u32(~u_input.d, _wgslsmith_mod_u32(0u, 4294967295u))));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-var_0.c.e), !(true && var_0.b), global0.b.a.a, var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a.a.d.x * _wgslsmith_f_op_f32(floor(-2426f)))));
    var var_3 = Struct_2(global0.b.a.e, !vec2<bool>(any(vec2<bool>(true, true)) || any(vec4<bool>(var_0.b, global0.b.a.b.x, true, var_0.b)), all(select(vec3<bool>(true, global0.b.a.b.x, false), vec3<bool>(global0.b.a.b.x, global0.b.a.b.x, true), false))), var_0.c, 43543u, Struct_1(min(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(51167i, 1i, -2560i, 2147483647i)), -vec4<i32>(global0.b.a.a.a, global1.x, -4008i, 2147483647i)), 2147483647i), firstTrailingBit(~(u_input.b | u_input.b)), var_0.c.e.zwz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.a.e.c.xz * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, 135f), vec2<f32>(var_0.e, 380f))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.b.b, 733f)))), _wgslsmith_f_op_vec4_f32(-global0.b.a.e.e)));
    return vec2<i32>(var_3.e.a, -1i);
}

fn func_1() -> i32 {
    global1 = func_2();
    let var_0 = vec2<f32>(-116f, -109f);
    var var_1 = ~reverseBits(reverseBits(~vec3<i32>(-23442i, 13174i, 1i))) & ~reverseBits(-vec3<i32>(global0.b.a.c.a, 0i, -9526i) | vec3<i32>(global0.b.a.e.a, -1i, 29824i));
    var var_2 = Struct_5(_wgslsmith_div_u32(u_input.b.x ^ _wgslsmith_sub_u32(func_3(), max(0u, u_input.c.x)), global0.a), global0.b);
    global1 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, -37746i), abs(vec2<i32>(u_input.a, -2147483647i) ^ _wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, global1.x), vec2<i32>(var_2.b.a.a.a, u_input.a)))), vec2<i32>(-80357i, var_2.b.a.a.a));
    return -_wgslsmith_dot_vec2_i32(var_1.xz, -_wgslsmith_mod_vec2_i32(-var_1.zy, _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-28640i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(~(-func_1()), global0.b.a.a.a);
    let var_1 = -2147483647i;
    let var_2 = -1137i << ((~reverseBits(~u_input.b.x) >> (~_wgslsmith_mult_u32(global0.b.a.d, 9570u) % 32u)) % 32u);
    var_0 = global0.b.a.a.a;
    global1 = ~vec2<i32>(0i, 36823i) & firstTrailingBit(~vec2<i32>(1i, 0i) & _wgslsmith_add_vec2_i32(vec2<i32>(29184i, var_1), select(vec2<i32>(-12341i, -3528i), vec2<i32>(var_1, 10706i), true)));
    var var_3 = Struct_5(4294967295u & u_input.b.x, global0.b);
    var var_4 = Struct_4(global0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(397f, global0.b.b, global0.b.a.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~0u >> (var_3.a % 32u), 1i);
}

