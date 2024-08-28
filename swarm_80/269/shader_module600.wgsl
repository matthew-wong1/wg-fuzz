struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(1u, 0u, 32700u, 1u, 882u, 64516u, 43433u, 92503u, 116208u, 4294967295u, 4294967295u, 4663u, 0u, 11034u, 47533u, 1u);

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, true, true, true), false, -804f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * 1000f) - _wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_f32(exp2(arg_2.x)), 263f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.d)) + -1626f))));
    global0 = array<u32, 16>();
    let var_1 = 64014i;
    var var_2 = !vec4<bool>(any(select(vec2<bool>(false, global1.a.x), select(vec2<bool>(false, false), vec2<bool>(true, true), global1.c), !global1.b.zx)), global1.b.x, true, global1.b.x);
    let var_3 = Struct_2(Struct_1(vec3<bool>(true, !var_2.x, !var_2.x), vec4<bool>(all(!vec2<bool>(global1.a.x, global1.b.x)), true, true, !any(global1.b)), true, arg_2.x));
    return var_3.a.a;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(func_3(_wgslsmith_dot_vec3_i32(-u_input.d.xzy, u_input.b), max(abs(u_input.d), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 1i, 2147483647i, 1i), vec4<i32>(28096i, -1i, u_input.b.x, 0i), u_input.d)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2641f, 1000f)), vec2<f32>(-147f, -527f))), vec4<bool>(!all(vec2<bool>(global1.b.x, global1.c)), all(vec2<bool>(global1.a.x, global1.a.x)) & true, global1.c & global1.c, global1.c), true, global1.d));
    return Struct_2(var_0.a);
}

fn func_1() -> f32 {
    let var_0 = func_2();
    let var_1 = !func_3(_wgslsmith_clamp_i32(1i, -u_input.b.x, 24799i) >> ((select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61709u, 16u)], 16u)], global0[_wgslsmith_index_u32(51095u, 16u)], var_0.a.a.x) ^ 4294967295u) % 32u), u_input.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d, 407f) * vec2<f32>(-1587f, global1.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, 467f))))).x;
    global1 = Struct_1(!vec3<bool>(all(vec2<bool>(false, true)), var_0.a.a.x, false), func_2().a.b, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(402f)), _wgslsmith_div_f32(var_0.a.d, -289f)))))));
    return -725f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(func_1()));
    var var_1 = 0u;
    var var_2 = firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(1u, ~42457u), 4294967295u, global0[_wgslsmith_index_u32(44087u, 16u)]));
    var var_3 = Struct_2(Struct_1(global1.b.zzy, !select(vec4<bool>(false, global1.b.x, global1.b.x, global1.b.x), select(vec4<bool>(global1.c, true, global1.c, global1.b.x), global1.b, vec4<bool>(true, false, true, global1.b.x)), global1.b), true, global1.d));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, var_0.x));
    var_3 = Struct_2(func_2().a);
    let var_5 = var_3.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(sign(-162f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global1.d))))), 189f, -1202f), ~firstTrailingBit(vec3<i32>(u_input.d.x, 40087i, -1i)) | (_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.c, -2593i, u_input.c), select(vec3<i32>(-16827i, u_input.d.x, -29309i), u_input.d.xzw, true)) | _wgslsmith_mod_vec3_i32(u_input.b, u_input.b)), global1.d, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, var_3.a.d) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-694f, -706f))))), vec2<f32>(_wgslsmith_f_op_f32(-global1.d), var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.d + 414f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.d)))));
}

