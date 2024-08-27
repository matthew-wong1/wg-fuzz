struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, false), vec3<i32>(-70503i, 27381i, -3156i));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: vec4<u32>) -> u32 {
    global0 = 4294967295u >> (arg_0 % 32u);
    global0 = arg_2.b.a;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.b.b.xx - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), arg_2.b.b.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.b.b.x, arg_1), vec2<f32>(arg_2.b.b.x, arg_2.b.b.x))))));
    var var_1 = u_input.e;
    var_1 = global1.b.zz >> (_wgslsmith_add_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(arg_0, 0u), arg_2.b.a), arg_3.wy) % vec2<u32>(32u));
    return 4294967295u;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    global0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(3904u, arg_1.a >> (countOneBits(~arg_1.a) % 32u)), arg_1.a ^ ~1u);
    let var_0 = 48676u;
    let var_1 = arg_2;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.x, arg_1.b.x) * _wgslsmith_f_op_f32(trunc(arg_1.b.x))) + -1084f)), arg_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -817f));
    var var_3 = Struct_1(vec3<bool>(false || (0u != reverseBits(var_0)), arg_0, global1.a.x), vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(abs(0i)), -1045i), reverseBits(-1i), -1i >> (arg_1.a % 32u)));
    return vec3<bool>(arg_2.a.x, (global1.a.x == (var_1.b.x <= -5670i)) | true, true);
}

fn func_1() -> vec3<bool> {
    global0 = ~_wgslsmith_dot_vec2_u32(u_input.b.yw, ~reverseBits(vec2<u32>(2652u, 4294967295u))) & min(_wgslsmith_div_u32(func_2(u_input.b.x, _wgslsmith_div_f32(-323f, -540f), Struct_3(vec4<bool>(global1.a.x, false, false, true), Struct_2(u_input.c, vec4<f32>(-512f, 255f, 1616f, -866f))), ~u_input.b), ~_wgslsmith_mult_u32(u_input.c, u_input.b.x)), firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) | 1u));
    global1 = Struct_1(func_3(global1.a.x || true, Struct_2(1u, vec4<f32>(-744f, _wgslsmith_f_op_f32(round(750f)), _wgslsmith_f_op_f32(f32(-1f) * -1313f), -239f)), Struct_1(select(!global1.a, vec3<bool>(true, false, false), vec3<bool>(true, true, global1.a.x)), firstTrailingBit(global1.b))), ~firstLeadingBit(~vec3<i32>(-2147483647i, 1i, global1.b.x) ^ _wgslsmith_add_vec3_i32(global1.b, vec3<i32>(-39168i, 0i, u_input.a.x))));
    var var_0 = Struct_3(vec4<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-367f + -954f))) >= -1260f, false, true, false && global1.a.x), Struct_2(_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.b) ^ abs(vec4<u32>(u_input.b.x, u_input.b.x, 6175u, 49073u)), vec4<u32>(u_input.b.x, ~u_input.c, reverseBits(u_input.b.x), _wgslsmith_add_u32(4294967295u, u_input.c))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-621f - -535f), _wgslsmith_f_op_f32(f32(-1f) * -1272f), _wgslsmith_f_op_f32(f32(-1f) * -1352f), _wgslsmith_f_op_f32(f32(-1f) * -1167f))))));
    let var_1 = select(select(!(!vec3<bool>(var_0.a.x, global1.a.x, false)), vec3<bool>(true, false, all(global1.a)), (u_input.d >= abs(global1.b.x)) | true), vec3<bool>(func_3(!(!global1.a.x), var_0.b, Struct_1(vec3<bool>(false, false, global1.a.x), reverseBits(vec3<i32>(1i, global1.b.x, global1.b.x)))).x, false, func_3(true, var_0.b, Struct_1(vec3<bool>(true, var_0.a.x, var_0.a.x), max(vec3<i32>(global1.b.x, 58366i, -2147483647i), vec3<i32>(u_input.e.x, global1.b.x, 1i)))).x), vec3<bool>(true, var_0.a.x, !all(global1.a.yz)));
    var var_2 = !global1.a.x;
    return func_3(true, var_0.b, Struct_1(select(!select(vec3<bool>(true, true, global1.a.x), var_0.a.zwz, vec3<bool>(true, global1.a.x, var_1.x)), vec3<bool>(!var_0.a.x, false, global1.a.x & var_1.x), false), ~(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -22575i, u_input.e.x), vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~4294967295u);
    let var_0 = _wgslsmith_dot_vec2_i32(global1.b.yx, vec2<i32>(global1.b.x, abs(9610i) & global1.b.x));
    global1 = Struct_1(func_1(), select(vec3<i32>(_wgslsmith_mult_i32(-46354i, var_0), _wgslsmith_dot_vec3_i32(global1.b, vec3<i32>(35222i, global1.b.x, 22072i)), ~global1.b.x), abs(vec3<i32>(var_0, global1.b.x, -40345i)) ^ firstTrailingBit(vec3<i32>(-12610i, -9305i, -1i)), true) | (global1.b ^ -vec3<i32>(2147483647i, -2147483647i, 43353i)));
    let var_1 = _wgslsmith_add_i32(1i, -global1.b.x);
    global1 = Struct_1(!select(global1.a, vec3<bool>(all(global1.a), true, true), global1.a.x && !global1.a.x), -vec3<i32>(global1.b.x, _wgslsmith_div_i32(~global1.b.x, min(var_0, -9410i)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 1i), -global1.b.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2573i, u_input.b.x, ~min(~(~vec2<u32>(u_input.c, u_input.c)), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(37887u, 4294967295u), vec2<u32>(1u, u_input.b.x)))), -647f, u_input.b.yyx);
}

