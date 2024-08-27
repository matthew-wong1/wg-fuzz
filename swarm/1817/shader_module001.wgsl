struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, true, false, false, false, true, false, false, true, false, true, false, false, true, false, false, false, false, false, false, true, true, false);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = Struct_4(~_wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 1u), global0[_wgslsmith_index_u32(u_input.a, 23u)]), abs(~vec2<u32>(6720u, 0u))), Struct_3(~(~u_input.a), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1453f, 324f), vec2<f32>(-526f, -1008f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2422f))), -455f, _wgslsmith_f_op_f32(round(-1533f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-786f)))), Struct_1(!(_wgslsmith_f_op_f32(sign(111f)) == 1000f)));
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    return reverseBits(u_input.b) & -1i;
}

fn func_2() -> vec2<u32> {
    global0 = array<bool, 23>();
    var var_0 = select(4294967295u, u_input.a, all(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], true, global0[_wgslsmith_index_u32(4294967295u, 23u)])))));
    var var_1 = -(func_3(global0[_wgslsmith_index_u32(u_input.a, 23u)]) ^ -2147483647i);
    var var_2 = !any(vec2<bool>(true, true));
    var var_3 = Struct_4(0u, Struct_3(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a), _wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(21640u, 1u), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], true)), min(vec2<u32>(0u, 53874u), vec2<u32>(4294967295u, u_input.a)))), vec2<f32>(-1745f, 130f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(666f, 1000f, -133f, 2284f) - vec4<f32>(-886f, -841f, 104f, 704f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-474f, 545f, true))), 849f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-655f - 1510f)), _wgslsmith_f_op_f32(-1191f - _wgslsmith_f_op_f32(abs(866f)))) - vec4<f32>(1463f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-2574f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 564f) - -2371f), _wgslsmith_f_op_f32(-1243f + _wgslsmith_f_op_f32(min(1494f, -1172f))))), Struct_1(false));
    return ~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.a, 18837u, u_input.a), ~vec3<u32>(5026u, u_input.a, u_input.a)), 1u), vec2<u32>(u_input.a, u_input.a));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    global0 = array<bool, 23>();
    var var_0 = ~func_2();
    var var_1 = vec4<i32>(-(~_wgslsmith_sub_i32(abs(-40650i), arg_0.x)), reverseBits(u_input.b), 2147483647i << (~select(abs(0u), 16807u, true) % 32u), 1i);
    let var_2 = arg_2;
    let var_3 = Struct_4(select(1u, 72082u, true), Struct_3(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(756f, -1096f), vec2<f32>(380f, -3331f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-917f, -273f, -740f, 876f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1028f, 104f, 1387f, 583f), vec4<f32>(716f, 885f, -371f, 256f), vec4<bool>(true, false, arg_1.x, arg_1.x)))), vec4<f32>(1f, 1f, 1f, 1f), var_0.x < 2421u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-199f + 727f), 195f, -937f, _wgslsmith_f_op_f32(f32(-1f) * -803f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, 1379f, -645f, -425f)))), var_2);
    return ~(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 1u, var_0.x, 0u)), ~(~vec4<u32>(0u, 4294967295u, var_3.a, u_input.a))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_3(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1030f, 854f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-553f, -931f))))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(878f))), -1174f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1022f), _wgslsmith_f_op_f32(select(361f, -527f, global0[_wgslsmith_index_u32(u_input.a, 23u)]))), -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-492f, 391f, 916f, 1619f) + vec4<f32>(-1037f, 1629f, -516f, 2249f))))))));
    var var_1 = ~reverseBits((_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, 0u, var_0.a, var_0.a), vec4<u32>(39758u, 0u, u_input.a, u_input.a)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 41683u), vec4<u32>(9507u, 28505u, 4294967295u, u_input.a)) % vec4<u32>(32u))) << (~vec4<u32>(var_0.a, u_input.a, u_input.a, 0u) % vec4<u32>(32u)));
    global0 = array<bool, 23>();
    var_1 = _wgslsmith_add_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 41719u, var_1.x, var_0.a), vec4<u32>(43284u, 0u, 4294967295u, 1u)), ~vec4<u32>(31981u, 47867u, 4294967295u, var_0.a), vec4<u32>(var_1.x, 43239u, var_1.x, var_0.a) >> (vec4<u32>(13836u, 0u, u_input.a, var_1.x) % vec4<u32>(32u))) | countOneBits(select(vec4<u32>(38096u, var_1.x, 4294967295u, u_input.a), vec4<u32>(0u, var_1.x, 66189u, var_1.x), global0[_wgslsmith_index_u32(u_input.a, 23u)]))), vec4<u32>(var_1.x, var_1.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(27996u, u_input.a, 93337u, 0u), select(vec4<u32>(0u, var_0.a, 15279u, var_1.x), vec4<u32>(u_input.a, 0u, var_1.x, u_input.a), true)), ~reverseBits(20060u)), ~func_2().x));
    let var_2 = ~var_1.xzz;
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 23>();
    let var_0 = 266f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_0, var_0))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0, -182f, 2915f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1052f, -666f, var_0)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0), -196f, _wgslsmith_f_op_f32(var_0 * var_0)) * vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(round(var_0)), 1000f))), 0i, u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -618f), var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 354f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(abs(var_0)), var_0))), func_4(select(vec3<bool>(global0[_wgslsmith_index_u32(func_1(vec4<i32>(-7869i, 1232i, u_input.b, 1i), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], true), Struct_1(true)), 23u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(0u << (0u % 32u), 23u)], global0[_wgslsmith_index_u32(max(u_input.a, 40055u), 23u)], -224f >= var_0), vec3<bool>(true, true, true)), Struct_1(true)));
}

