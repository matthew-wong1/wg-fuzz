struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: f32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec3<bool>,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> bool {
    var var_0 = Struct_4(~vec3<i32>(-48441i, -select(-28203i, -1i, arg_0.a.x), u_input.c), arg_0, 1724f, !vec3<bool>(false, false, arg_0.a.x));
    var var_1 = _wgslsmith_mod_u32(921u, u_input.d.x);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -678f);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.c))))))));
    return true;
}

fn func_1() -> i32 {
    var var_0 = Struct_3(!vec2<bool>(true == select(true, false, false), !func_2(Struct_3(vec2<bool>(true, false)), -1000f)));
    var var_1 = -1000f;
    return -17230i;
}

fn func_3(arg_0: i32, arg_1: u32) -> bool {
    global1 = u_input.a.x;
    let var_0 = max(~vec3<u32>(~select(arg_1, 103674u, false), ~min(25128u, 105110u), 1u), u_input.b.zxy);
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(max(vec3<i32>(arg_0, -10344i, -1i), vec3<i32>(2147483647i, 9298i, u_input.c))), ~vec3<i32>(u_input.c, u_input.c, arg_0)), -44473i, 1i), _wgslsmith_mult_vec3_i32(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(29418i, -2147483647i, u_input.c), min(vec3<i32>(-4217i, 0i, -46101i), vec3<i32>(arg_0, -1i, u_input.c)), vec3<i32>(arg_0, arg_0, arg_0) & vec3<i32>(-1i, -33695i, arg_0)), vec3<i32>(abs(11680i), -1i, -16930i)));
    var var_2 = !any(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)));
    var_1 = vec3<i32>(-_wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.x, 1i) >> (~vec2<u32>(10345u, 41110u) % vec2<u32>(32u)), ~_wgslsmith_mod_vec2_i32(var_1.yz, var_1.zy)), var_1.x, arg_0);
    return all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), select(vec2<bool>(all(vec3<bool>(true, false, true)), any(vec3<bool>(true, false, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_i32(abs(_wgslsmith_sub_i32(33029i, u_input.c)), func_1() | abs(58496i)) <= ~(-2147483647i);
    let var_1 = select(!vec3<bool>(true, any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), vec3<bool>(true, true, !(true && func_3(-2147483647i, 62067u))), false);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1317f) + vec2<f32>(261f, 1212f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1822f, 2076f), vec2<f32>(875f, 2326f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-986f, -3112f) + vec2<f32>(-392f, -1000f)), vec2<f32>(1f, 1f))))))), vec2<bool>(false == (any(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)) && true), select(var_1.x, any(select(vec3<bool>(true, var_1.x, false), vec3<bool>(false, true, var_1.x), true)), false)));
    var var_3 = Struct_3(vec2<bool>(var_1.x, reverseBits(u_input.c << (u_input.b.x % 32u)) != -10034i));
    let var_4 = Struct_5(Struct_3(!var_3.a), !vec4<bool>(!(1u == u_input.a.x), select(var_3.a.x, true, var_3.a.x || var_1.x), (13704u ^ u_input.a.x) < u_input.b.x, !(-1i == u_input.c)), select(!var_1, var_1, !var_1.x), Struct_4(vec3<i32>(-u_input.c, -firstTrailingBit(u_input.c), 1i), Struct_3(select(vec2<bool>(var_1.x, false), vec2<bool>(true, true), true)), var_2.a.x, var_1), Struct_4(min(abs(vec3<i32>(u_input.c, u_input.c, -1i)), vec3<i32>(2147483647i, 1i, 0i)) | ~vec3<i32>(u_input.c, 0i, u_input.c), Struct_3(!vec2<bool>(var_2.b.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a.x))) - _wgslsmith_div_f32(var_2.a.x, var_2.a.x)), vec3<bool>(true, true, true)));
    let var_5 = _wgslsmith_clamp_i32(var_4.e.a.x, -u_input.c, var_4.e.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, select(reverseBits(u_input.b.x), u_input.b.x, true), ~u_input.b.x), ~u_input.b.yxx), _wgslsmith_f_op_f32(-1000f * var_2.a.x), u_input.a.yxz, var_4.d.c, var_4.d.a.xx);
}

