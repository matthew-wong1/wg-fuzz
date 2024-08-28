struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, 1i, 1i, 11851i);

var<private> global1: Struct_2;

var<private> global2: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(vec2<f32>(242f, -590f), vec2<bool>(true, true)), Struct_4(vec2<f32>(1522f, 1000f), vec2<bool>(true, false)), Struct_4(vec2<f32>(-289f, 991f), vec2<bool>(false, false)), Struct_4(vec2<f32>(-711f, -574f), vec2<bool>(true, true)), Struct_4(vec2<f32>(1962f, -185f), vec2<bool>(true, false)), Struct_4(vec2<f32>(616f, -477f), vec2<bool>(false, true)), Struct_4(vec2<f32>(-203f, -508f), vec2<bool>(true, true)), Struct_4(vec2<f32>(-160f, -1028f), vec2<bool>(true, false)), Struct_4(vec2<f32>(546f, 1038f), vec2<bool>(false, false)), Struct_4(vec2<f32>(188f, 102f), vec2<bool>(true, false)), Struct_4(vec2<f32>(-560f, 796f), vec2<bool>(false, true)), Struct_4(vec2<f32>(1000f, 1000f), vec2<bool>(false, true)), Struct_4(vec2<f32>(1571f, 1168f), vec2<bool>(false, false)), Struct_4(vec2<f32>(-460f, 286f), vec2<bool>(true, true)), Struct_4(vec2<f32>(-250f, -287f), vec2<bool>(false, true)), Struct_4(vec2<f32>(248f, -1000f), vec2<bool>(true, true)), Struct_4(vec2<f32>(1062f, 696f), vec2<bool>(false, true)), Struct_4(vec2<f32>(-1445f, -970f), vec2<bool>(false, true)), Struct_4(vec2<f32>(813f, 391f), vec2<bool>(false, false)), Struct_4(vec2<f32>(2375f, 126f), vec2<bool>(false, true)), Struct_4(vec2<f32>(-1000f, -1080f), vec2<bool>(true, false)), Struct_4(vec2<f32>(935f, -1840f), vec2<bool>(false, false)), Struct_4(vec2<f32>(1394f, -1105f), vec2<bool>(false, false)));

var<private> global3: vec2<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_5, arg_3: vec3<bool>) -> bool {
    global1 = Struct_2(Struct_1(vec2<i32>(-16485i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global0.x, 81835i, u_input.c), vec4<i32>(-1i, 2147483647i, global0.x, 2147483647i)))), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(abs(arg_2.b), -2147483647i), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.e.a.x, -28007i), global0.xw)))), global1.b, ~(~(~global1.d)), arg_1.e);
    return false;
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~global3.x & ~u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a.xyx, firstTrailingBit(firstTrailingBit(u_input.a.ywz))), 18601u), vec3<u32>(0u, _wgslsmith_clamp_u32(global3.x, u_input.a.x, 1u), 21047u)), 23u)];
    let var_1 = -arg_0.x;
    var var_2 = ~_wgslsmith_sub_i32(arg_0.x, -8551i);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2020f, -1296f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-652f, -501f)) - var_0.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_f32(select(var_0.a.x, 583f, false))) * _wgslsmith_f_op_vec2_f32(-var_0.a))));
    var_2 = arg_1;
    return false;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: u32) -> u32 {
    let var_0 = all(!select(select(!vec4<bool>(false, false, arg_1.d, arg_1.a), vec4<bool>(false, false, arg_1.d, arg_1.a), !arg_1.d), vec4<bool>(true, true, all(vec2<bool>(true, arg_1.a)), func_2(false, arg_2.a, Struct_5(false, global1.a.a.x, 1532f, arg_1.d), vec3<bool>(false, true, arg_1.a))), vec4<bool>(arg_1.a || arg_1.a, true, true, func_3(global0.wx, global0.x))));
    let var_1 = arg_1.a;
    let var_2 = arg_1;
    let var_3 = true;
    let var_4 = select(max(global0.x, min(~(-1i), _wgslsmith_clamp_i32(arg_1.b, var_2.b, global1.c.a.x))), global0.x, var_3) ^ u_input.b;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1234f, 831f, -2756f, 1043f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2784f), -1176f, _wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(f32(-1f) * -666f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2119f, _wgslsmith_div_f32(646f, -705f), _wgslsmith_f_op_f32(1262f - 1157f), -617f)), any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(min(1u, 0u), countOneBits(firstTrailingBit(36949u) << (func_1(vec4<f32>(1010f, var_0.x, 410f, 589f), Struct_5(true, -17183i, -3231f, true), Struct_3(Struct_2(global1.b, global1.b, Struct_1(global0.zw), 4294967295u, global1.a), vec2<f32>(-1105f, var_0.x), -1458f, vec3<i32>(-10325i, -1i, 2147483647i)), 4294967295u) % 32u))), global1.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.xxz), var_0.zyw, (1u == (global3.x | 1u)) & all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)))), var_0.x, ~_wgslsmith_clamp_vec2_u32((u_input.a.zx >> (vec2<u32>(1u, 43089u) % vec2<u32>(32u))) << (vec2<u32>(36200u, 6541u) % vec2<u32>(32u)), u_input.a.zx, vec2<u32>(~103739u, 41497u)));
}

