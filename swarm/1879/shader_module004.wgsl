struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<bool>(true, false), i32(-2147483648), -1i), Struct_1(vec2<bool>(true, true), -16412i, 68830i), Struct_1(vec2<bool>(true, false), 6423i, 2147483647i), Struct_1(vec2<bool>(false, false), 37220i, -14703i), Struct_1(vec2<bool>(true, false), -48173i, -1i), Struct_1(vec2<bool>(false, false), 1i, 0i), Struct_1(vec2<bool>(false, true), 3170i, 1715i), Struct_1(vec2<bool>(false, true), 1i, -58443i), Struct_1(vec2<bool>(false, true), 2147483647i, 1i), Struct_1(vec2<bool>(true, true), -62966i, 55827i), Struct_1(vec2<bool>(true, false), -55869i, 1i), Struct_1(vec2<bool>(false, false), -38295i, 1i), Struct_1(vec2<bool>(true, false), -9453i, 0i), Struct_1(vec2<bool>(true, true), -10759i, -7043i), Struct_1(vec2<bool>(true, false), 0i, 3534i), Struct_1(vec2<bool>(false, false), 30037i, 1i), Struct_1(vec2<bool>(true, false), 32907i, i32(-2147483648)), Struct_1(vec2<bool>(true, false), 47775i, -2997i), Struct_1(vec2<bool>(false, true), 1i, 3381i), Struct_1(vec2<bool>(false, true), -1961i, i32(-2147483648)), Struct_1(vec2<bool>(false, true), 0i, 0i), Struct_1(vec2<bool>(true, true), 1828i, 0i), Struct_1(vec2<bool>(false, true), 13206i, 2147483647i), Struct_1(vec2<bool>(true, false), -17497i, 0i), Struct_1(vec2<bool>(false, false), 2147483647i, -21618i), Struct_1(vec2<bool>(true, false), 1i, 47443i), Struct_1(vec2<bool>(true, true), -1i, 46331i), Struct_1(vec2<bool>(false, true), 74765i, 1i), Struct_1(vec2<bool>(false, false), 31338i, i32(-2147483648)), Struct_1(vec2<bool>(false, false), -1i, i32(-2147483648)), Struct_1(vec2<bool>(false, true), -1i, -3603i), Struct_1(vec2<bool>(false, false), -5726i, -1i));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), 1i, 0i);

var<private> global2: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<bool> {
    let var_0 = firstTrailingBit(~(-_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(1i, global1.c, -16248i)), -vec3<i32>(-2147483647i, -3498i, global1.c))));
    global1 = Struct_1(vec2<bool>(all(vec4<bool>(any(global1.a), var_0.x >= -2147483647i, true, select(global1.a.x, global1.a.x, global1.a.x))), !(!any(vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x)))), abs(var_0.x), 2147483647i);
    global1 = global0[_wgslsmith_index_u32(u_input.b.x, 32u)];
    global1 = global0[_wgslsmith_index_u32(u_input.a, 32u)];
    var var_1 = !(!vec3<bool>(false, global1.a.x, select(!global1.a.x, true, any(vec4<bool>(global1.a.x, true, global1.a.x, true)))));
    return vec2<bool>(true, all(vec4<bool>(true, true, all(!vec4<bool>(false, true, global1.a.x, true)), global1.a.x)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<Struct_1, 32>();
    global2 = _wgslsmith_add_u32(62847u, countOneBits(9284u));
    global1 = Struct_1(func_3(), global1.b, min(min(-(i32(-1i) * -2147483647i), reverseBits(global1.b & global1.c)), max(156i, _wgslsmith_sub_i32(_wgslsmith_add_i32(global1.c, 16807i), select(-1i, global1.c, true)))));
    var var_0 = (vec4<u32>(~select(u_input.b.x, u_input.c, global1.a.x), 0u, 0u, reverseBits(56223u)) & vec4<u32>(~countOneBits(u_input.d), 85361u, u_input.a, 1u)) ^ abs(vec4<u32>(_wgslsmith_mult_u32(~u_input.c, min(30530u, u_input.a)), min(u_input.b.x, 28981u) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 12070u, 0u, 4294967295u), vec4<u32>(36693u, u_input.b.x, u_input.c, 0u)), 20304u, u_input.b.x));
    let var_1 = var_0.x | (~1u ^ ~(~(~var_0.x)));
    return Struct_1(global1.a, firstLeadingBit(abs(-_wgslsmith_sub_i32(global1.c, global1.b))), global1.b);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, 23305u), vec3<u32>(0u, 75037u, 1u)), _wgslsmith_add_u32(4294967295u, u_input.a), reverseBits(u_input.b.x), _wgslsmith_clamp_u32(u_input.a, 0u, u_input.b.x)), abs(vec4<u32>(~0u, ~0u, _wgslsmith_sub_u32(u_input.d, 20191u), max(1u, 1u)))) << (u_input.d % 32u), 32u)];
    global2 = 24408u;
    var var_0 = func_2(false);
    return func_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.a, global1.c, reverseBits(2147483647i));
    global0 = array<Struct_1, 32>();
    let var_1 = true;
    var var_2 = func_1(Struct_1(!(!(!vec2<bool>(true, var_1))), firstLeadingBit(global1.b), select(var_0.b, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(20198i, 0i)), -vec2<i32>(1i, global1.c)), true)), !global1.a.x, var_0, vec2<bool>(all(vec3<bool>(global1.a.x && global1.a.x, true, global1.a.x)), true));
    let var_3 = -6889i;
    var var_4 = Struct_1(func_1(func_1(global0[_wgslsmith_index_u32(u_input.d, 32u)], false, Struct_1(var_2.a, ~(-2147483647i), _wgslsmith_mult_i32(-27842i, global1.b)), select(global1.a, vec2<bool>(var_0.a.x, var_1), var_1)), (0u >> (u_input.b.x % 32u)) < u_input.b.x, Struct_1(vec2<bool>(true, var_0.a.x), 2147483647i, -32513i >> (~u_input.a % 32u)), func_3()).a, -21915i ^ min(var_2.c, -firstTrailingBit(1i)), _wgslsmith_add_i32(abs(var_0.b) | firstTrailingBit(var_3), reverseBits(var_2.c & var_2.b) >> (29968u % 32u)));
    let var_5 = Struct_1(!func_3(), 1i, global1.c);
    var var_6 = func_2(var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2461f)), -1325f));
}

