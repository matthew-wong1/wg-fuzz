struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(2093f, 1438f, 912f, -1168f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_sub_u32(0u, u_input.a.x));
    var_0 = Struct_1(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, u_input.b.x, u_input.a.x), _wgslsmith_clamp_u32(3365u, abs(arg_0.x), 42827u & var_0.a)));
    var var_1 = global0[_wgslsmith_index_u32(~u_input.b.x, 29u)];
    var var_2 = ~((min(vec4<u32>(u_input.b.x, 77107u, 24365u, var_1.a.a), vec4<u32>(arg_0.x, u_input.a.x, 32430u, 4294967295u)) | _wgslsmith_mod_vec4_u32(~vec4<u32>(102318u, arg_0.x, 44690u, 47040u), vec4<u32>(arg_0.x, var_0.a, u_input.b.x, 15820u) | vec4<u32>(u_input.a.x, 4294967295u, 0u, var_0.a))) & (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, var_1.a.a, var_1.a.a, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, 37988u, 53276u)) >> (vec4<u32>(13151u, _wgslsmith_add_u32(1u, 39333u), countOneBits(u_input.b.x), 57971u) % vec4<u32>(32u))));
    var_1 = Struct_3(var_1.a, var_1.b);
    return -18804i;
}

fn func_3() -> vec4<i32> {
    global0 = array<Struct_3, 29>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, global1.a.x)))) + _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(884f * -2618f) - _wgslsmith_f_op_f32(select(global1.a.x, 632f, true))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global1.a.x)), _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-global1.a.x)))));
    let var_1 = Struct_4(Struct_1(4294967295u), firstLeadingBit(u_input.a.zz), Struct_2(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -116f)), -770f, _wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = (vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-19004i, 2147483647i, 2147483647i), vec3<i32>(-16195i, 42487i, 1i)), firstTrailingBit(1i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, 2147483647i, -2507i), vec4<i32>(-2147483647i, 11448i, 0i, 19208i), vec4<i32>(-51637i, 16248i, 17426i, -42763i)), vec4<i32>(-49163i, 2147483647i, -1i, -15626i))) ^ select(-(vec3<i32>(1i, -32762i, -37718i) << (u_input.a % vec3<u32>(32u))), vec3<i32>(1i, 1i, 1i), vec3<bool>(true, true, select(false, false, true)))) << (min(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a.x, 33047u), select(vec3<u32>(4294967295u, 0u, 13608u), vec3<u32>(var_1.a.a, u_input.b.x, 64094u), vec3<bool>(true, true, true)), ~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) & abs(vec3<u32>(79516u, 4294967295u, 1u)), _wgslsmith_add_vec3_u32(abs(min(vec3<u32>(5989u, 1u, 3062u), vec3<u32>(4294967295u, 1u, var_1.a.a))), u_input.a)) % vec3<u32>(32u));
    global1 = Struct_2(global1.a);
    return -vec4<i32>(2147483647i ^ func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 13047u), vec2<u32>(u_input.a.x, 33165u))), countOneBits(abs(-2147483647i >> (u_input.b.x % 32u))), -var_2.x, 0i);
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    var var_0 = abs(firstTrailingBit(func_2(~u_input.a.xy)) << (~u_input.a.x % 32u));
    let var_1 = Struct_3(arg_1, ~func_3());
    var var_2 = select(var_1.b.yy, select(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.b.x, 13932i), select(vec2<i32>(1i, -33719i), var_1.b.yw, vec2<bool>(false, arg_0))), var_1.b.xy, vec2<bool>(true, false)), arg_0) | var_1.b.yw;
    var var_3 = Struct_4(Struct_1(1u), ~vec2<u32>(u_input.a.x, ~arg_1.a << (_wgslsmith_mult_u32(var_1.a.a, var_1.a.a) % 32u)), Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(global1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.x, 544f, -959f, 778f), global1.a))))));
    let var_4 = var_1.a;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false, Struct_1(0u));
    global1 = func_1((_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2147483647i, 1i, -156i), reverseBits(68122i), 1i) == 1i) || any(vec4<bool>(true, all(vec4<bool>(false, true, false, true)), true, select(true, true, true))), Struct_1(1626u));
    global1 = func_1(any(select(vec4<bool>(global1.a.x > -243f, false, false, select(true, true, true)), vec4<bool>(all(vec2<bool>(true, false)), true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)))), Struct_1(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.a.x, u_input.b.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 24653u, 1u, u_input.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, _wgslsmith_div_i32(min(1i, _wgslsmith_div_i32(7958i, -1i)), 1184i)), var_0.a.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2181f, -359f))), 1175f, 1847f, -359f));
}

