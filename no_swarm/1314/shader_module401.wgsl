struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec2<u32>;

var<private> global2: bool;

var<private> global3: array<u32, 25>;

var<private> global4: vec2<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2) -> i32 {
    let var_0 = false;
    var var_1 = select(select(vec4<bool>(!(arg_0.x != 42668u), false, global4.x, false), vec4<bool>(_wgslsmith_dot_vec4_u32(arg_0, arg_0) <= global3[_wgslsmith_index_u32(1u, 25u)], false, !global0.x, global0.x), !global4.x), !(!(!select(vec4<bool>(global0.x, true, true, true), vec4<bool>(true, var_0, false, false), var_0))), !(!(-18440i == ~u_input.a.x)));
    global3 = array<u32, 25>();
    global2 = true;
    let var_2 = var_1.x;
    return -16440i;
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global4 = !select(!select(select(vec2<bool>(global4.x, global0.x), vec2<bool>(false, global0.x), false), vec2<bool>(true, true), global0.x), vec2<bool>(true, true), !select(!vec2<bool>(global0.x, true), !vec2<bool>(false, global0.x), true));
    global0 = select(select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), select(!vec2<bool>(global0.x, true), select(vec2<bool>(true, true), vec2<bool>(global4.x, true), vec2<bool>(false, false)), !vec2<bool>(true, global0.x))), !(!vec2<bool>(global4.x, true)), vec2<bool>(global4.x, global4.x)), select(select(vec2<bool>(arg_0.x >= -2147483647i, !global4.x), select(!vec2<bool>(global4.x, false), !vec2<bool>(true, global4.x), false), any(!vec4<bool>(true, false, false, global0.x))), select(vec2<bool>(all(vec3<bool>(true, true, false)), !global0.x), !(!vec2<bool>(true, global4.x)), false), select(all(select(vec4<bool>(global4.x, global4.x, global0.x, false), vec4<bool>(global4.x, false, global4.x, true), vec4<bool>(true, true, global4.x, global0.x))), true, !all(vec3<bool>(true, global4.x, true)))), all(select(vec3<bool>(global4.x, !global4.x, all(vec4<bool>(global4.x, global0.x, true, false))), select(!vec3<bool>(false, true, global4.x), vec3<bool>(global0.x, true, false), vec3<bool>(false, false, false)), vec3<bool>(global4.x, all(vec3<bool>(true, global4.x, global0.x)), all(vec2<bool>(global0.x, global0.x))))));
    var var_0 = -45275i;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -283f), 1021f, true)), -642f));
    var var_2 = ~vec2<u32>(~19685u, global3[_wgslsmith_index_u32(global1.x, 25u)]);
    return select(any(!(!select(vec2<bool>(true, global0.x), vec2<bool>(false, false), true))), !any(!select(vec3<bool>(false, true, global4.x), vec3<bool>(global0.x, false, true), vec3<bool>(false, true, global0.x))), global0.x);
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = vec3<bool>(arg_1.x, func_3(_wgslsmith_mod_vec4_i32(firstTrailingBit(u_input.a), vec4<i32>(~u_input.a.x, arg_0, func_2(vec4<u32>(global1.x, 4294967295u, 75195u, 25534u), Struct_2(vec4<i32>(-36936i, 2147483647i, -29352i, -41369i), Struct_1(u_input.a), 0i)), _wgslsmith_dot_vec3_i32(u_input.a.wxy, vec3<i32>(arg_0, u_input.a.x, arg_0))))), global0.x);
    global2 = true;
    global2 = !var_0.x;
    var var_1 = Struct_1(vec4<i32>(-1i, reverseBits(-1i), min(arg_2.x, _wgslsmith_sub_i32(-30864i, 18596i)), 0i));
    global3 = array<u32, 25>();
    return Struct_1(min(select(var_1.a, var_1.a, true), abs(vec4<i32>(-arg_0, _wgslsmith_mult_i32(u_input.a.x, 45080i), ~0i, -arg_0))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(vec4<i32>(~firstTrailingBit(0i), select(~0i, -1i, global0.x && true), max(-1i, abs(-28945i)) | u_input.a.x, u_input.a.x));
    global4 = vec2<bool>(all(vec2<bool>(true, true)), global0.x);
    var var_1 = 1f;
    let var_2 = 1u;
    let var_3 = abs(~(~abs(vec4<u32>(var_2, 4294967295u, 5491u, 39270u)))) >> (vec4<u32>(39820u, ~1u, 77658u, global3[_wgslsmith_index_u32(1u, 25u)]) % vec4<u32>(32u));
    return !global4.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec2<bool>(func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) >> (_wgslsmith_add_vec2_u32(vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 25u)], 25u)]), vec2<u32>(global1.x, global3[_wgslsmith_index_u32(93789u, 25u)])) % vec2<u32>(32u)), ~(vec2<u32>(global1.x, 4294967295u) >> (vec2<u32>(33228u, 4294967295u) % vec2<u32>(32u)))), func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-3846i, u_input.a.x, u_input.a.x, 0i), u_input.a)), vec2<bool>(true, all(vec2<bool>(global0.x, global0.x))), max(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), u_input.a.wz), -vec2<i32>(u_input.a.x, -4273i)))), true);
    global4 = !(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), global0.x), vec2<bool>(global4.x, global4.x), true)));
    global2 = true;
    var var_0 = Struct_2(-countOneBits(vec4<i32>(18630i, 0i, firstLeadingBit(u_input.a.x), u_input.a.x | -53036i)), func_1(2147483647i, select(vec2<bool>(global4.x, false), vec2<bool>(global0.x, true), !func_4(4294967295u, Struct_1(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)))), vec2<i32>(-1i) * -abs(vec2<i32>(u_input.a.x, 1i))), -(~(-12062i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), -1468f, -948f, -813f) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-285f, -1298f, -497f, 1004f), vec4<f32>(-1000f, 307f, 2701f, 239f)))))))));
    global2 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstTrailingBit(reverseBits(abs(4294967295u))), _wgslsmith_sub_u32(1u, min(64496u | global3[_wgslsmith_index_u32(46608u, 25u)], _wgslsmith_div_u32(global3[_wgslsmith_index_u32(global1.x, 25u)], global3[_wgslsmith_index_u32(4294967295u, 25u)]))), 12362u, abs(global1.x)), vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), firstLeadingBit(~var_0.a.xww)), func_2(~(~vec4<u32>(4294967295u, 0u, 67145u, 4294967295u)), Struct_2(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 1i, -62543i, u_input.a.x)), Struct_1(u_input.a), i32(-1i) * -19679i)), firstTrailingBit(-2147483647i)), _wgslsmith_f_op_vec3_f32(select(var_1.wyx, _wgslsmith_f_op_vec3_f32(var_1.yyy * vec3<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x * var_1.x))), vec3<bool>(-1000f != _wgslsmith_f_op_f32(-var_1.x), global4.x, global4.x || false))), 110f, _wgslsmith_div_i32(var_0.a.x, ~u_input.a.x) | ~abs(u_input.a.x));
}

