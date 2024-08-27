struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(-42604i, -15589i, 17843i, 25095i, -24059i, -7406i, i32(-2147483648), 14238i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 28364i, -1i, -13036i, -36234i, -34095i, -21225i, 2147483647i, 4848i, i32(-2147483648), 2147483647i, -23230i, -66987i, 3439i, 2147483647i, -1i, -12736i, 1i, 1i, 37339i);

var<private> global1: array<Struct_2, 8>;

var<private> global2: Struct_2;

var<private> global3: array<bool, 27> = array<bool, 27>(false, false, false, false, false, false, true, false, true, false, false, false, true, false, true, true, true, false, false, true, false, true, true, false, false, false, false);

var<private> global4: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(2385u, 17156u, 15970u, 4294967295u), vec4<u32>(53870u, 26256u, 79606u, 0u), vec4<u32>(4016u, 0u, 47263u, 8887u), vec4<u32>(1u, 29388u, 47048u, 51650u), vec4<u32>(14585u, 4294967295u, 1987u, 0u), vec4<u32>(2238u, 15044u, 1u, 1u), vec4<u32>(0u, 0u, 50109u, 4294967295u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global2 = Struct_2(abs(vec3<u32>(global2.a.x, 0u, ~62344u)));
    global1 = array<Struct_2, 8>();
    var var_0 = max(~vec2<i32>(-(~global0[_wgslsmith_index_u32(16870u, 30u)]), u_input.a), max(_wgslsmith_sub_vec2_i32(vec2<i32>(-19908i, global0[_wgslsmith_index_u32(4294967295u, 30u)] & global0[_wgslsmith_index_u32(32424u, 30u)]), vec2<i32>(max(u_input.a, 1i), firstTrailingBit(u_input.a))), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-2147483647i, 32807i))));
    return _wgslsmith_dot_vec2_u32(global2.a.zx, ~global2.a.zz);
}

fn func_2() -> Struct_2 {
    let var_0 = global3[_wgslsmith_index_u32(1u, 27u)];
    global2 = global1[_wgslsmith_index_u32(~6835u >> (_wgslsmith_clamp_u32(119112u, func_3(), 67745u) % 32u), 8u)];
    global1 = array<Struct_2, 8>();
    var var_1 = ~vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(global2.a.x, 30u)], u_input.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(440f, -2562f)), _wgslsmith_f_op_f32(abs(1004f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-642f, 148f) * _wgslsmith_f_op_f32(ceil(-1763f)))), -965f)));
    return global1[_wgslsmith_index_u32(71104u, 8u)];
}

fn func_1() -> Struct_2 {
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec4<f32> {
    global4 = array<vec4<u32>, 7>();
    let var_0 = !select(vec3<bool>(global3[_wgslsmith_index_u32(func_3(), 27u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.a.x), vec2<u32>(arg_2.a.x, arg_1.a.x)), 27u)], true), select(!(!vec3<bool>(global3[_wgslsmith_index_u32(51264u, 27u)], global3[_wgslsmith_index_u32(arg_0.b, 27u)], true)), !select(vec3<bool>(global3[_wgslsmith_index_u32(arg_1.a.x, 27u)], true, true), vec3<bool>(true, global3[_wgslsmith_index_u32(16996u, 27u)], global3[_wgslsmith_index_u32(arg_0.c.x, 27u)]), global3[_wgslsmith_index_u32(arg_2.a.x, 27u)]), !vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(arg_2.a.x, 27u)], false)), !(!global3[_wgslsmith_index_u32(global2.a.x, 27u)]));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-692f, 2023f, arg_0.a, -1209f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-247f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(103f + 598f)))))));
    let var_1 = _wgslsmith_f_op_f32(min(-1235f, _wgslsmith_f_op_f32(f32(-1f) * -428f)));
    global4 = array<vec4<u32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(step(var_1, var_1))), 239f, 607f, _wgslsmith_f_op_f32(min(var_1, var_1))) + _wgslsmith_f_op_vec4_f32(func_4(Struct_1(var_1, ~global2.a.x, global4[_wgslsmith_index_u32(4294967295u, 7u)] & vec4<u32>(global2.a.x, global2.a.x, 1u, 17345u), _wgslsmith_clamp_i32(30974i, global0[_wgslsmith_index_u32(38837u, 30u)], 11838i)), Struct_2(global2.a), func_1()))));
}

