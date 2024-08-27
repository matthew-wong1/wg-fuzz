struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, false), -305f), vec2<i32>(i32(-2147483648), 42721i), vec3<u32>(101949u, 67450u, 4594u)), vec4<u32>(0u, 4294967295u, 1u, 8687u), Struct_2(Struct_1(vec4<bool>(true, true, true, true), 1000f), vec2<i32>(60026i, -52183i), vec3<u32>(8927u, 4294967295u, 51303u)));

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false), -1493f), vec2<i32>(-4180i, -28907i), vec3<u32>(1u, 0u, 73643u)), vec4<u32>(82780u, 4294967295u, 5310u, 0u), Struct_2(Struct_1(vec4<bool>(false, true, true, false), 2330f), vec2<i32>(0i, -28444i), vec3<u32>(18089u, 149804u, 4294967295u)));

var<private> global2: vec2<f32> = vec2<f32>(825f, 1207f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32) -> u32 {
    global0 = Struct_3(global1.c, ~reverseBits(~global0.b), global0.a);
    let var_0 = global0.c.a.a.yxx;
    var var_1 = select(!var_0.zy, !(!(!select(var_0.zy, vec2<bool>(true, global0.c.a.a.x), global1.a.a.a.wy))), vec2<bool>(global0.c.a.a.x, any(global0.a.a.a.wz)));
    var var_2 = Struct_3(global1.c, abs(global1.b), Struct_2(Struct_1(global0.a.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1428f, global0.a.a.b, var_1.x)))), vec2<i32>(u_input.a.x, select(abs(1i), -24748i, !global0.c.a.a.x)), ~vec3<u32>(global0.c.c.x, 0u, _wgslsmith_mod_u32(1u, 4294967295u))));
    var var_3 = global0.c.b;
    return global0.a.c.x;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: u32) -> u32 {
    let var_0 = global2.x;
    global2 = vec2<f32>(global1.c.a.b, arg_0.c.a.b);
    let var_1 = vec3<u32>(0u, ~func_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1526f - -576f), -1095f))), 50144u);
    global1 = Struct_3(Struct_2(global1.a.a, vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(-28051i, arg_0.c.b.x, arg_0.c.b.x)), ~max(~global0.c.c, ~arg_0.b.wzw)), countOneBits(_wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(41939u, 4294967295u, 17021u, 0u)), vec4<u32>(~4294967295u, arg_0.a.c.x, _wgslsmith_sub_u32(global0.a.c.x, 0u), 0u))), Struct_2(global0.c.a, ~vec2<i32>(-8297i, 6957i), _wgslsmith_mod_vec3_u32(~global1.c.c, ~max(vec3<u32>(global1.a.c.x, 0u, 83482u), vec3<u32>(26218u, global0.b.x, 21441u)))));
    var var_2 = (max(_wgslsmith_div_i32(global0.a.b.x ^ arg_0.c.b.x, _wgslsmith_clamp_i32(u_input.a.x, -11666i, global1.a.b.x)), -43559i) >> (abs(1u) % 32u)) | -(~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, u_input.a.x, -4709i), vec4<i32>(arg_0.a.b.x, -31295i, -1i, -2147483647i)), global0.c.b.x));
    return 4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = ~_wgslsmith_sub_u32(countOneBits(func_2(Struct_3(global1.a, vec4<u32>(arg_1, global1.c.c.x, arg_1, 49923u), global0.a), ~arg_1, 1u)), ~66065u);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(904f, 366f), global2.x, select(global0.a.a.a.x, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(271f - _wgslsmith_f_op_f32(-global0.c.a.b))))));
    let var_3 = global1.c;
    var var_4 = global1.a.a;
    return vec2<bool>(true, var_3.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.a.a.x;
    var var_1 = abs(~_wgslsmith_mod_vec2_i32(vec2<i32>(abs(-2147483647i), -global0.c.b.x), firstLeadingBit(~vec2<i32>(-9074i, global1.a.b.x))));
    var var_2 = Struct_1(vec4<bool>(-_wgslsmith_mult_i32(-1i, u_input.c.x) <= -(u_input.b.x ^ 0i), global1.c.a.a.x, any(!global0.a.a.a), global0.a.a.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.a.b), global2.x));
    var var_3 = _wgslsmith_f_op_f32(-global1.c.a.b) == 860f;
    var var_4 = func_1(global1.c.a, global1.c.c.x, vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(global0.a.b.x, i32(-1i) * -2626i), _wgslsmith_mult_i32(global1.a.b.x, var_1.x) & (i32(-1i) * -33796i)), var_1.x, global0.a.b.x, min(global1.a.b.x & 0i, -max(-2147483647i, u_input.a.x))));
    var_3 = var_4.x;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(global0.c.a.b, -970f), vec2<f32>(var_2.b, -689f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-342f, 1375f) * vec2<f32>(-451f, var_2.b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(100f, 1210f)))))));
    global1 = Struct_3(Struct_2(global1.c.a, vec2<i32>(var_1.x, firstTrailingBit(-36280i)), ~_wgslsmith_div_vec3_u32(vec3<u32>(global1.c.c.x, 737u, global0.c.c.x), global0.a.c)), ~global0.b, global1.c);
    let var_5 = Struct_3(Struct_2(Struct_1(global1.c.a.a, global0.c.a.b), ~_wgslsmith_div_vec2_i32(u_input.c.zz, global0.a.b), ~vec3<u32>(44769u, global1.b.x, 4294967295u)), min(global0.b, ~(~select(vec4<u32>(70829u, 995u, global0.a.c.x, global0.b.x), vec4<u32>(19191u, 32972u, 0u, 1u), vec4<bool>(false, global0.a.a.a.x, false, true)))), global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-616f, global1.c.a.b, -434f))))), _wgslsmith_f_op_f32(-var_5.a.a.b));
}

