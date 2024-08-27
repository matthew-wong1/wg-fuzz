struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c, -1000f, _wgslsmith_f_op_f32(arg_1 * 187f), _wgslsmith_f_op_f32(1060f * -619f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c, -477f, -437f, -351f) + vec4<f32>(-1098f, 537f, 245f, arg_0.b.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0.d, arg_0.d)), arg_0.d)))));
    let var_1 = (arg_0.c & vec2<i32>(arg_0.c.x, 0i)) ^ firstTrailingBit(~vec2<i32>(2147483647i, arg_0.e.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_3 = Struct_3(true, arg_0.a);
    var_2 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    return -329f;
}

fn func_2(arg_0: Struct_2) -> f32 {
    global0 = array<u32, 24>();
    let var_0 = select(select(!(!vec3<bool>(false, arg_0.a.a, false)), vec3<bool>(true, false, _wgslsmith_f_op_f32(func_3(arg_0, arg_0.a.c)) < -966f), arg_0.a.a), vec3<bool>(false, true, any(!(!vec2<bool>(arg_0.a.a, arg_0.a.a)))), false);
    let var_1 = vec2<u32>(firstTrailingBit(~1u), ~arg_0.a.b.x);
    let var_2 = ~(~(-1i));
    var var_3 = 1444f;
    return -2519f;
}

fn func_1(arg_0: bool) -> vec4<u32> {
    let var_0 = !select(!(!vec3<bool>(arg_0, arg_0, arg_0)), !(!vec3<bool>(arg_0, arg_0, arg_0)), select(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, false)), vec3<bool>(true, false, !arg_0), true));
    let var_1 = Struct_3(arg_0, Struct_1(all(vec2<bool>(arg_0, true)), _wgslsmith_div_vec2_u32(u_input.c.zw, firstLeadingBit(u_input.c.ww)) ^ (vec2<u32>(47500u, u_input.c.x) << (vec2<u32>(0u, 112259u) % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 483f)) * _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(arg_0, u_input.c.yw, -1336f, -939f), vec2<f32>(-128f, -1122f), vec2<i32>(u_input.a, u_input.b), vec4<f32>(-378f, 1000f, -308f, -1463f), vec4<i32>(-1i, 0i, u_input.b, u_input.b))))), _wgslsmith_f_op_f32(169f - -1301f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-856f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2438f + 349f))))));
    let var_2 = 31999u;
    var var_3 = var_1.b;
    let var_4 = Struct_2(var_1.b, _wgslsmith_div_vec2_f32(vec2<f32>(-920f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(var_1.a, vec2<u32>(62828u, var_3.b.x), var_1.b.d, var_1.b.d), vec2<f32>(var_3.d, -893f), vec2<i32>(-2147483647i, u_input.a), vec4<f32>(var_1.b.c, var_1.b.c, var_3.c, 1362f), vec4<i32>(0i, 2947i, 1i, u_input.b))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.d, var_3.d), vec2<f32>(var_1.b.d, var_1.b.d), true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(380f, var_1.b.c), vec2<f32>(654f, 1567f), vec2<bool>(false, var_0.x)))))), vec2<i32>(firstLeadingBit(1i), u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(334f + var_1.b.d) - _wgslsmith_f_op_f32(514f * var_3.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.c))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(752f, -903f)))) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1770f, 620f), -296f)), _wgslsmith_f_op_f32(abs(-154f)), 992f, _wgslsmith_f_op_f32(func_2(Struct_2(var_1.b, vec2<f32>(var_3.c, var_3.d), vec2<i32>(-37562i, -4305i), vec4<f32>(var_3.c, 2188f, -1147f, var_1.b.d), vec4<i32>(u_input.b, u_input.a, 69996i, -52263i)))))), abs(-vec4<i32>(_wgslsmith_add_i32(-2147483647i, -1i), u_input.a >> (14728u % 32u), 29632i >> (var_3.b.x % 32u), u_input.b)));
    return u_input.c;
}

fn func_4(arg_0: vec4<u32>) -> StorageBuffer {
    let var_0 = Struct_3(!(min(6481u, ~1u) < _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 0u, 0u), ~u_input.c)), Struct_1(true | (abs(u_input.a) >= 2147483647i), ~vec2<u32>(~global0[_wgslsmith_index_u32(u_input.c.x, 24u)], ~u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1919f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(233f)))));
    var var_1 = false;
    let var_2 = Struct_1(any(!select(vec3<bool>(var_0.b.a, false, false), !vec3<bool>(false, true, var_0.b.a), select(vec3<bool>(false, true, false), vec3<bool>(true, var_0.b.a, var_0.a), var_0.a))), _wgslsmith_sub_vec2_u32(max(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.yw, vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(1u, 24u)])), u_input.c.x), ~func_1(false).zw), ~min(max(vec2<u32>(var_0.b.b.x, var_0.b.b.x), vec2<u32>(u_input.c.x, arg_0.x)), min(u_input.c.xw, var_0.b.b))), _wgslsmith_f_op_f32(func_2(Struct_2(var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.c, var_0.b.d), vec2<f32>(-1141f, var_0.b.c), vec2<bool>(true, var_0.b.a)))), ~(-vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.c, var_0.b.d, var_0.b.d, -483f) - vec4<f32>(-1650f, 761f, 650f, 1381f)))), vec4<i32>(-1i) * -vec4<i32>(-65981i, 2147483647i, u_input.a, -2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -267f), var_0.b.c, all(vec4<bool>(false, false, var_0.a, var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c * -453f))))));
    var var_3 = 16692i;
    var_1 = true;
    return StorageBuffer(_wgslsmith_mult_vec4_i32(-vec4<i32>(16303i, countOneBits(-9755i), 14963i, -u_input.a), vec4<i32>(u_input.a, -2147483647i ^ u_input.b, _wgslsmith_div_i32(0i, u_input.b), i32(-1i) * -9635i) | _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -30981i, -1250i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.a), vec4<i32>(u_input.b, -1i, u_input.b, 2147483647i), vec4<i32>(21898i, -74741i, u_input.b, -10184i)))), ~max(-vec3<i32>(u_input.b, 2147483647i, 1i), ~vec3<i32>(u_input.a, -8617i, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.c.zwz);
    let x = u_input.a;
    s_output = func_4(func_1(true));
}

