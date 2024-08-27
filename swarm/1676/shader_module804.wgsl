struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, false, false, false, true, false, true, false, true, false, true, true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: vec2<u32>) -> vec3<bool> {
    global0 = array<bool, 13>();
    let var_0 = arg_0.c.b;
    return vec3<bool>(all(arg_0.d) && false, arg_0.d.x, arg_0.d.x);
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> i32 {
    let var_0 = vec3<i32>(firstLeadingBit(arg_2.b.a.x), countOneBits(~2147483647i), arg_3);
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1457f, arg_0.x, arg_0.x, 1665f), vec4<f32>(arg_1, arg_1, 108f, arg_1)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_2.b.d, arg_1, arg_1) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1688f, -655f, arg_0.x, 150f) * vec4<f32>(arg_0.x, 899f, arg_1, arg_0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1139f, -727f, arg_1, -407f), vec4<f32>(-1364f, arg_0.x, arg_0.x, -618f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-268f, arg_2.b.d, 2711f, arg_1) + vec4<f32>(-385f, arg_2.b.d, arg_2.b.d, 251f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, 614f, -383f, arg_2.b.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_1, -957f, 1249f) + vec4<f32>(672f, arg_1, arg_2.b.d, 956f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.b.d, -358f, arg_1, arg_2.b.d), vec4<f32>(-2545f, -563f, arg_1, -812f))))))));
    var var_2 = var_1.wzz;
    var var_3 = ~73105u;
    var_3 = ~firstLeadingBit(0u);
    return 17104i;
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec3<bool> {
    let var_0 = arg_0;
    global0 = array<bool, 13>();
    var var_1 = func_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, arg_0.a) + -1242f)), -261f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-245f, 1209f))) * arg_0.c.b.d)), var_0.c, arg_1);
    global0 = array<bool, 13>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a * 907f), -951f))), 290f)), ~(-1698i), Struct_2(var_0.d.yzx, Struct_1(arg_0.c.b.a, abs(vec3<i32>(arg_1, var_0.c.b.a.x, 16991i)), _wgslsmith_clamp_u32(1u, u_input.b, ~0u), _wgslsmith_div_f32(arg_0.a, arg_0.a), var_0.c.a.xx)), var_0.d, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c.b.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.b.d))), _wgslsmith_f_op_f32(trunc(1540f)), _wgslsmith_f_op_f32(1274f - _wgslsmith_f_op_f32(1366f + arg_0.a))), var_0.e)));
    return select(var_2.c.a, vec3<bool>(any(vec4<bool>(true, true, arg_0.e.x > var_2.c.b.d, -10210i != arg_0.b)), true, true), arg_0.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_2(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -359f), ~1i, Struct_2(func_1(Struct_3(1624f, u_input.a, Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(19918u, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(8554u, 13u)]), Struct_1(vec4<i32>(39268i, 1i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), 2584u, 160f, vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 13u)]))), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<f32>(565f, 157f, -1270f, -1058f)), -865f, 0u, vec2<u32>(u_input.b, u_input.b)), Struct_1(vec4<i32>(37557i, -8331i, 18352i, u_input.a), vec3<i32>(-1i, u_input.a, 0i), 77714u, 846f, vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)]))), vec4<bool>(true, false, u_input.b > u_input.b, global0[_wgslsmith_index_u32(u_input.b, 13u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-238f, -111f, -1000f, -531f)))), 5992i), Struct_1(~(-(~vec4<i32>(u_input.a, u_input.a, -87477i, u_input.a))), -min(-vec3<i32>(1i, u_input.a, -2147483647i), vec3<i32>(1i, u_input.a, 46980i)), countOneBits(abs(~4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1501f)) - -1173f), vec2<bool>(false, true)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.d)), var_0.b.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-147f + -2242f)) - _wgslsmith_f_op_f32(1699f + _wgslsmith_f_op_f32(var_0.b.d - var_0.b.d))))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), -1492f));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -2571f, var_1.x) + vec3<f32>(var_1.x, 442f, var_1.x)))))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, var_0.b.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - 561f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(4294967295u, u_input.b, firstLeadingBit(~var_0.b.c)), var_0.b.b, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u >> (u_input.b % 32u), 0u), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 37064u, 82602u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, var_0.b.c, 0u)))), ~select(vec3<u32>(0u, 1u, u_input.b) & vec3<u32>(u_input.b, u_input.b, var_0.b.c), vec3<u32>(14547u, 10740u, var_0.b.c) & vec3<u32>(u_input.b, var_0.b.c, 26317u), select(global0[_wgslsmith_index_u32(10559u, 13u)], var_0.a.x, true))));
}

