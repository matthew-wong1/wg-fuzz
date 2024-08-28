struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(0i, -13300i, -11048i, 0i, 0i, 8338i, -38662i, i32(-2147483648));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = arg_1;
    global0 = array<i32, 8>();
    var var_1 = _wgslsmith_add_i32(-(~firstLeadingBit(global0[_wgslsmith_index_u32(1u, 8u)] | global0[_wgslsmith_index_u32(var_0.a, 8u)])), 24898i);
    let var_2 = _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1729f * arg_2))));
    var var_3 = all(select(vec4<bool>(arg_0.x, arg_0.x, all(vec2<bool>(arg_0.x, arg_0.x)), true), vec4<bool>(!arg_0.x, any(arg_0) == select(arg_0.x, false, arg_0.x), 1i <= u_input.b, arg_0.x), !(!(!vec4<bool>(true, false, false, arg_0.x)))));
    return false & (u_input.a > select(~(~4229u), u_input.a, arg_0.x));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = vec3<bool>(true, all(vec4<bool>(true, !func_3(vec3<bool>(false, false, false), arg_0, 1394f), all(vec3<bool>(true, false, true)) | true, !all(vec3<bool>(true, true, true)))), func_3(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), Struct_1(26519u & ~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-725f - _wgslsmith_f_op_f32(f32(-1f) * -304f)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -330f);
    var_1 = _wgslsmith_f_op_f32(-1f);
    var_1 = _wgslsmith_f_op_f32(select(1f, -317f, var_0.x));
    var_1 = _wgslsmith_f_op_f32(-638f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -552f)) - -881f)));
    return 1i;
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> u32 {
    global0 = array<i32, 8>();
    let var_0 = reverseBits(vec3<i32>(_wgslsmith_div_i32(u_input.b, u_input.b), -func_2(Struct_1(73389u)), -1i));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(322f + -741f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -897f))), -1971f)), 1974f));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(reverseBits(~1u), firstLeadingBit(arg_0.x | arg_0.x)), arg_0.x, ~(~countOneBits(62775u)))), 8u)];
    var_1 = -1000f;
    return 16950u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.a, _wgslsmith_add_u32(u_input.a << (_wgslsmith_add_u32(13424u, u_input.a) % 32u), 107273u));
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(123f, 1587f, -628f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(285f, 818f, -1345f), vec3<f32>(-488f, 2053f, -925f), vec3<bool>(false, false, true)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-402f, 455f, -138f) - vec3<f32>(848f, -1005f, -366f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1028f, -1000f, -597f) - vec3<f32>(1000f, -703f, 1603f)))))))));
    var var_2 = !(!any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))) == all(vec3<bool>(true, true, true)));
    var_2 = ~u_input.a < func_1(max(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, 15068u, u_input.a), vec4<u32>(77118u, u_input.a, 35725u, var_0.x)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a, 0u, var_0.x, 28074u)), ~vec4<u32>(34783u, u_input.a, u_input.a, 1u))), firstTrailingBit(u_input.b) > 57326i);
    var var_3 = var_1.x;
    let var_4 = select(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(79012u, 0u, u_input.a, 64952u), abs(vec4<u32>(var_0.x, 83610u, var_0.x, 1u))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, var_0.x, 16156u), vec4<u32>(u_input.a, 25899u, u_input.a, 51398u)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 1u, u_input.a, 49874u), vec4<u32>(_wgslsmith_sub_u32(u_input.a, var_0.x), var_0.x & var_0.x, _wgslsmith_sub_u32(u_input.a, 52239u), 1u), ~vec4<u32>(var_0.x, u_input.a, 4294967295u, var_0.x)), true) ^ ~(~countOneBits(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x) >> (vec4<u32>(u_input.a, 14924u, var_0.x, 4294967295u) % vec4<u32>(32u))));
    let var_5 = any(vec3<bool>(!select(all(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, false, true, true)), true), any(vec4<bool>(true, true, true, true)), !(all(vec3<bool>(false, true, true)) && true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1636f, var_1.x, var_1.x)))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1379f, 939f, _wgslsmith_f_op_f32(floor(-575f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, var_1.x, 1389f)))))), vec4<u32>(u_input.a, firstTrailingBit(17394u), 47700u, countOneBits(29573u)), vec2<i32>(global0[_wgslsmith_index_u32(0u, 8u)], ~firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, var_4.x), 8u)])));
}

