struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<f32, 32> = array<f32, 32>(-1000f, 1277f, -574f, 1449f, 1797f, 1841f, 353f, 850f, -1000f, 311f, 1464f, 1416f, -1010f, 1351f, -268f, -162f, -1821f, -1251f, 1000f, 719f, 479f, 403f, -151f, 1883f, -1481f, -1000f, -1281f, -1000f, -640f, 2026f, -120f, 1141f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_2) -> bool {
    return any(!(!select(select(vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), vec3<bool>(true, false, false)), !vec3<bool>(false, arg_0.c.x, true), select(vec3<bool>(arg_0.c.x, true, false), vec3<bool>(arg_0.c.x, arg_0.c.x, true), arg_0.c.x))));
}

fn func_2() -> u32 {
    global0 = array<Struct_1, 8>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(36015u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], -1000f, global1[_wgslsmith_index_u32(u_input.e, 32u)]) + vec4<f32>(630f, -1490f, 625f, 723f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1279f, global1[_wgslsmith_index_u32(u_input.e, 32u)], global1[_wgslsmith_index_u32(u_input.e, 32u)], global1[_wgslsmith_index_u32(92516u, 32u)]) * vec4<f32>(-1110f, global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(u_input.c.x, 32u)], global1[_wgslsmith_index_u32(0u, 32u)]))))));
    let var_1 = Struct_1(u_input.c, ~(~(~u_input.c.x) ^ 56296u), !select(vec2<bool>(22271i >= u_input.d.x, func_3(global0[_wgslsmith_index_u32(u_input.e, 8u)], vec2<i32>(u_input.a.x, 0i), u_input.d.x, Struct_2(u_input.c.zx))), vec2<bool>(false, -2131f == var_0.x), vec2<bool>(true, true)), var_0.yyz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(35591u, _wgslsmith_mult_u32(30774u, u_input.e)), 32u)]) - 1000f));
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.e ^ var_1.a.x, 32u)])), 1009f, 287f, _wgslsmith_f_op_f32(1025f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(252f * -1123f)))))));
    global0 = array<Struct_1, 8>();
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    global0 = array<Struct_1, 8>();
    let var_0 = arg_0.c;
    var var_1 = !arg_1.yzz;
    global1 = array<f32, 32>();
    let var_2 = max(abs(~(~1u)), 0u);
    return 302f;
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<f32>(global1[_wgslsmith_index_u32(56645u, 32u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(u_input.c.wwx << (vec3<u32>(u_input.b, u_input.e, u_input.b) % vec3<u32>(32u)), reverseBits(vec3<u32>(u_input.c.x, 1u, u_input.b)))), 32u)] + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(69600u, 32u)])) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e, 32u)])), -589f)), _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(86026u, 8u)], select(vec4<bool>(all(vec2<bool>(false, true)), true, true, true), vec4<bool>(u_input.a.x >= 0i, any(vec4<bool>(false, false, false, true)), 24953u > u_input.b, select(false, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true))), global1[_wgslsmith_index_u32(func_2(), 32u)])));
    let var_1 = select(vec4<bool>(true, false, false, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !all(vec2<bool>(false, false))), true);
    global0 = array<Struct_1, 8>();
    let var_2 = firstTrailingBit(_wgslsmith_div_i32(13426i, _wgslsmith_mult_i32(u_input.d.x >> (0u % 32u), 1i)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(countOneBits(u_input.b), 32u)])), -469f);
    return Struct_3(u_input.a);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(339f)) - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, arg_3.x), _wgslsmith_clamp_u32(u_input.e, 4294967295u, u_input.b), 4294967295u)), 32u)]))));
    let var_1 = Struct_2(u_input.c.zx);
    global0 = array<Struct_1, 8>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(260f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-929f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    let var_3 = func_1();
    return var_3.a.x;
}

fn func_6(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: i32) -> StorageBuffer {
    global1 = array<f32, 32>();
    let var_0 = vec2<u32>(0u, u_input.c.x) << (select(~_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 21531u), vec2<u32>(112923u, 0u)), u_input.c.zw, true) % vec2<u32>(32u));
    global0 = array<Struct_1, 8>();
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 8u)];
    global0 = array<Struct_1, 8>();
    return StorageBuffer(u_input.d.zy, _wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 1u, reverseBits(~u_input.b)), max(0u, _wgslsmith_dot_vec2_u32(u_input.c.wy, _wgslsmith_mod_vec2_u32(vec2<u32>(13761u, var_0.x), vec2<u32>(0u, u_input.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), max(4294967295u, ~(~_wgslsmith_div_u32(19161u, 24901u))), firstLeadingBit(firstTrailingBit(vec3<i32>(1i, -2147483647i, arg_3))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 8u)];
    var var_1 = Struct_3(abs(u_input.a));
    global1 = array<f32, 32>();
    var var_2 = -countOneBits(_wgslsmith_clamp_i32(37653i, _wgslsmith_sub_i32(var_1.a.x, var_1.a.x), var_1.a.x)) & ~max(_wgslsmith_dot_vec4_i32(vec4<i32>(-19426i, 37006i, -73706i, -78249i), vec4<i32>(1i, var_1.a.x, 0i, 43026i)), ~(-46504i));
    global1 = array<f32, 32>();
    var_2 = i32(-1i) * -2147483647i;
    let x = u_input.a;
    s_output = func_6(-(~_wgslsmith_div_i32(1i, u_input.a.x) & u_input.d.x), global1[_wgslsmith_index_u32(1u, 32u)], vec3<i32>(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(129936u, 32u)], 1263f, -496f, -1515f) + vec4<f32>(var_0.d.x, 166f, 817f, var_0.e))), func_1(), -u_input.a, u_input.c.xwz), select(_wgslsmith_sub_i32(max(-13415i, var_1.a.x), 1i), firstLeadingBit(i32(-1i) * -21182i), all(var_0.c)), var_1.a.x), var_1.a.x);
}

