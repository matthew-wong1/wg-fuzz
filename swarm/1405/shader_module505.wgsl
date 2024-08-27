struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>) -> vec3<f32> {
    let var_0 = 39658i;
    return arg_0.c.a.a.wyx;
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_4, arg_3: vec4<bool>) -> vec2<bool> {
    var var_0 = vec3<bool>(!arg_3.x, !any(select(vec3<bool>(true, arg_3.x, arg_3.x), select(arg_3.www, arg_3.www, false), true)), !(!any(arg_3)));
    var_0 = !vec3<bool>(var_0.x, true, all(vec3<bool>(false, all(vec4<bool>(var_0.x, true, true, arg_3.x)), all(vec4<bool>(false, false, var_0.x, true)))));
    let var_1 = Struct_3(!arg_3.zwz, vec4<i32>(77352i, arg_1, arg_1, max(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a.ywz, vec3<i32>(u_input.a.x, -9838i, u_input.b)), -27575i), arg_1)), Struct_2(Struct_1(vec4<f32>(1f, 1f, 1f, 1f), true, abs(max(u_input.a, vec4<i32>(-12146i, -1319i, arg_1, -2147483647i))), _wgslsmith_f_op_f32(abs(-621f)), true)), arg_2.a.yy, var_0.zx);
    return vec2<bool>(arg_3.x, false);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-696f, 367f, -1662f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-672f, 524f, -475f), vec3<f32>(-931f, -195f, -523f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec3<bool>(false, true, false), vec4<i32>(-19287i, u_input.b, 44906i, u_input.b), Struct_2(Struct_1(vec4<f32>(3200f, 454f, 1000f, 615f), false, vec4<i32>(u_input.b, u_input.b, -2147483647i, -1i), 982f, false)), vec2<u32>(0u, 0u), vec2<bool>(false, false)), vec3<u32>(22110u, 70088u, 62688u))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-116f, -2255f, 738f) - vec3<f32>(1000f, -1000f, -536f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(486f, 265f, 2648f))), all(func_3(vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_i32(u_input.b, -1i), Struct_4(vec4<u32>(35774u, 18174u, 9786u, 0u)), vec4<bool>(true, true, true, true)))))));
    let var_1 = select(func_3(vec3<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 1u, 75732u), vec3<u32>(9528u, 1u, 17137u)), firstTrailingBit(vec3<u32>(7794u, 35312u, 0u))), ~_wgslsmith_div_u32(45005u, 7841u), _wgslsmith_dot_vec3_u32(vec3<u32>(60850u, 12493u, 1u), countOneBits(vec3<u32>(260u, 1u, 1u)))), abs(u_input.b) | min(_wgslsmith_mod_i32(-26175i, 2147483647i), ~u_input.a.x), Struct_4(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))), vec4<bool>(true, true, true, true)).x, true, true);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -598f), -1800f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), 359f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 688f))))), true, u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -737f) * _wgslsmith_f_op_f32(floor(1000f))), !var_1);
    var var_3 = !select(vec3<bool>(!var_2.e, var_2.b, false), !select(vec3<bool>(var_2.e, true, var_2.e), select(vec3<bool>(var_2.b, var_2.b, true), vec3<bool>(false, var_1, true), vec3<bool>(var_2.b, var_2.b, var_2.e)), !vec3<bool>(var_1, true, var_2.b)), !(!select(vec3<bool>(var_2.e, true, var_1), vec3<bool>(true, true, var_2.e), var_1)));
    let var_4 = Struct_3(select(!(!(!vec3<bool>(false, var_2.e, var_2.e))), select(select(!vec3<bool>(true, var_1, var_2.e), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(select(vec3<bool>(var_1, true, var_1), vec3<bool>(true, var_3.x, var_1), false), !vec3<bool>(var_3.x, false, var_1), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), !(var_3.x & true)), !(!vec3<bool>(false, var_1, true))), _wgslsmith_add_vec4_i32(max(abs(var_2.c), -(~vec4<i32>(u_input.a.x, 2147483647i, var_2.c.x, -1i))), u_input.a), Struct_2(Struct_1(var_2.a, var_3.x, abs(vec4<i32>(var_2.c.x, u_input.b, 38800i, var_2.c.x)), var_0.x, true)), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(1u, 0u)), ~vec2<u32>(reverseBits(0u), 1u)), var_3.xx);
    return var_4.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1());
    let var_1 = 1i;
    var var_2 = ~(max(select(~vec3<u32>(59419u, 4294967295u, 34459u), vec3<u32>(74383u, 1u, 10945u), true), vec3<u32>(1u, 1u, 1u)) | vec3<u32>(firstTrailingBit(1u), ~(~32528u), _wgslsmith_clamp_u32(1u, 66481u, 75708u) | firstTrailingBit(11474u)));
    var_2 = ~(~vec3<u32>(var_2.x, 1u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(var_2.x, var_2.x, 1u), vec3<u32>(var_2.x, var_2.x, 0u)), vec3<u32>(var_2.x, 27411u, var_2.x))));
    let var_3 = -738f;
    var var_4 = !(!vec3<bool>(false, all(vec4<bool>(var_0.a.e, var_0.a.e, var_0.a.b, false)), false));
    var_4 = select(vec3<bool>(true, !var_0.a.e, ~4615i < _wgslsmith_dot_vec4_i32(~u_input.a, _wgslsmith_clamp_vec4_i32(var_0.a.c, u_input.a, u_input.a))), select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, var_4.x), vec3<bool>(var_0.a.e, var_0.a.e, var_0.a.e)), !vec3<bool>(var_0.a.e, true, false), all(vec4<bool>(true, var_4.x, var_4.x, false))), vec3<bool>(_wgslsmith_f_op_f32(var_0.a.a.x + 1000f) != 2209f, true, var_4.x), true), vec3<bool>(false, -688f != var_0.a.a.x, var_0.a.e));
    var_4 = vec3<bool>(var_0.a.b, ~var_2.x > ~26499u, var_0.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

