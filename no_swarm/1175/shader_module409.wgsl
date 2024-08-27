struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<u32, 26> = array<u32, 26>(68283u, 38597u, 50432u, 4294967295u, 17796u, 22671u, 13293u, 4294967295u, 0u, 4294967295u, 4294967295u, 1u, 76210u, 4294967295u, 22105u, 19944u, 0u, 4294967295u, 9844u, 25324u, 4294967295u, 0u, 0u, 45727u, 1u, 1u);

var<private> global2: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> vec4<i32> {
    let var_0 = Struct_3(Struct_2(1012f, Struct_1(vec4<f32>(_wgslsmith_div_f32(-1592f, -906f), arg_0, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - arg_0)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(327f - arg_0), arg_0, 950f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(974f, -430f, arg_0, global0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 248f, -983f, -1186f))))));
    let var_1 = -vec3<i32>(u_input.b.x, max(u_input.b.x, ~u_input.b.x) & (countOneBits(u_input.b.x) & ~(-52404i)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, 1i, u_input.b.x, u_input.b.x)) & (vec4<i32>(-2147483647i, u_input.b.x, -7843i, u_input.b.x) | vec4<i32>(-16059i, u_input.b.x, -4072i, 0i)), ~(-vec4<i32>(u_input.b.x, -20036i, 0i, 23825i))));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(-38669i), ~reverseBits(-u_input.b.x)), _wgslsmith_mod_vec2_i32(max(~(u_input.b.zx & vec2<i32>(var_1.x, u_input.b.x)), vec2<i32>(1i, 1i)), ~var_1.yy));
    global0 = var_0.a.b.a.wz;
    var var_3 = Struct_4(var_0.a.b, vec4<u32>(~1u, abs(0u), 17191u, min(1u, _wgslsmith_sub_u32(~u_input.a.x, reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17066u, 26u)], 26u)])))), u_input.b, var_1.x == abs(~_wgslsmith_add_i32(-1i, 3124i)));
    return ~reverseBits(firstTrailingBit(select(countOneBits(vec4<i32>(-19312i, 0i, -3886i, -28304i)), -vec4<i32>(-23371i, var_1.x, -1i, u_input.b.x), false)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_4) -> f32 {
    global2 = 0u;
    let var_0 = !(!(!vec4<bool>(arg_2.c.x <= -1i, true, true, -799f >= global0.x)));
    return 1253f;
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -902f)), _wgslsmith_f_op_f32(sign(global0.x)))));
    var var_1 = Struct_1(var_0.b.a);
    var var_2 = u_input.a;
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(418f, -604f) - _wgslsmith_div_f32(var_0.b.a.x, -560f))), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_1.a))))), var_0.b);
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-854f - var_3.a.b.a.x), var_3.b.a.x, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.a.xy) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.a.x))), _wgslsmith_f_op_f32(func_4(vec2<i32>(u_input.b.x, firstLeadingBit(14910i)), func_3(_wgslsmith_f_op_f32(-var_4), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))), Struct_4(Struct_1(vec4<f32>(var_0.b.a.x, 1485f, 1355f, -233f)), min(vec4<u32>(7116u, var_2.x, 66038u, 0u), vec4<u32>(26866u, global1[_wgslsmith_index_u32(var_2.x, 26u)], 46961u, 1u)), u_input.b, any(vec3<bool>(false, false, false)))))));
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1406f), -289f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1044f, -608f), vec2<f32>(348f, -394f)) * _wgslsmith_f_op_vec2_f32(func_2()))));
    let var_0 = Struct_4(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1968f, 752f, -522f) + vec4<f32>(global0.x, -1420f, 1288f, global0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1675f, global0.x, -297f) + vec4<f32>(-1009f, 1000f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1221f, global0.x, global0.x))))), min(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x, 4294967295u, ~47612u)), ~(~(~u_input.a))), ~u_input.b, func_3(_wgslsmith_f_op_f32(abs(global0.x)), vec4<bool>(true, true, true, true)).x > ~(-10996i));
    global1 = array<u32, 26>();
    let var_1 = ~var_0.b.x;
    global2 = 0u;
    return select(all(select(select(select(vec2<bool>(true, false), vec2<bool>(var_0.d, var_0.d), true), vec2<bool>(var_0.d, true), !vec2<bool>(var_0.d, var_0.d)), select(!vec2<bool>(var_0.d, false), vec2<bool>(var_0.d, false), select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(true, var_0.d), vec2<bool>(var_0.d, var_0.d))), vec2<bool>(var_0.d, var_0.d))), all(select(!select(vec4<bool>(false, true, true, var_0.d), vec4<bool>(true, var_0.d, true, true), var_0.d), vec4<bool>(false, var_0.d, any(vec3<bool>(var_0.d, var_0.d, false)), all(vec4<bool>(false, false, true, var_0.d))), vec4<bool>(var_0.d, true, global1[_wgslsmith_index_u32(1u, 26u)] == var_0.b.x, any(vec4<bool>(var_0.d, false, var_0.d, var_0.d))))), !((var_0.d && true) || all(vec3<bool>(true, var_0.d, true))) != var_0.d);
}

fn func_5(arg_0: vec2<bool>, arg_1: u32, arg_2: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -105f, 730f))))))));
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 223f, global0.x, 393f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, var_0.x, 1469f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(505f, 155f, global0.x, -326f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, global0.x)), !arg_2)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 1888f, 1364f), var_1.a.yyw) - vec3<f32>(243f, -405f, var_1.a.x)))));
    let var_2 = u_input.a;
    var_0 = var_1.a.yww;
    return StorageBuffer(i32(-1i) * -(-22436i << ((global1[_wgslsmith_index_u32(43388u, 26u)] << (32223u % 32u)) % 32u)), u_input.b.zy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 26>();
    let var_0 = 1632f;
    let var_1 = -vec4<i32>(11285i, min(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 26924i, -1i), vec4<i32>(-1i, 1i, -8279i, -32175i)), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 25567i) | vec4<i32>(u_input.b.x, -1i, u_input.b.x, -27943i)), u_input.b.x), min(-u_input.b.x, _wgslsmith_add_i32(firstLeadingBit(u_input.b.x), 1i)), 1i);
    let x = u_input.a;
    s_output = func_5(select(vec2<bool>(func_1(), true && any(vec3<bool>(false, true, true))), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), true), true), _wgslsmith_add_u32(1u, 589u), all(vec3<bool>(663f != global0.x, any(vec3<bool>(true, false, false)), global1[_wgslsmith_index_u32(0u, 26u)] > 4294967295u)) | ((1u >> (_wgslsmith_dot_vec3_u32(u_input.a.wxy, vec3<u32>(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.a.x)) % 32u)) <= (1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(79785u, 11298u), u_input.a.wz))));
}

