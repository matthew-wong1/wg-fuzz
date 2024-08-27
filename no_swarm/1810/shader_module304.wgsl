struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23>;

var<private> global1: u32;

var<private> global2: vec4<f32> = vec4<f32>(1496f, 987f, 271f, 1000f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> vec3<bool> {
    let var_0 = !((!(!arg_2.b.x) || any(vec4<bool>(false, arg_2.b.x, false, false))) == !(arg_2.d.x >= 1i));
    return arg_2.b;
}

fn func_1() -> Struct_4 {
    return Struct_4(~vec3<u32>(firstTrailingBit(~4294967295u), u_input.a.x, 7646u), func_2(1i, -2147483647i, Struct_4(~select(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), u_input.a.yxx, vec3<bool>(false, false, true)), vec3<bool>(true, any(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.yyz)), _wgslsmith_clamp_vec2_i32(max(global0[_wgslsmith_index_u32(46470u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), ~global0[_wgslsmith_index_u32(86725u, 23u)], vec2<i32>(-5488i, -63048i)), all(vec2<bool>(false, false)))), _wgslsmith_f_op_vec3_f32(global2.wyz - global2.yyy), _wgslsmith_add_vec2_i32(-(~vec2<i32>(0i, -48852i)), global0[_wgslsmith_index_u32(33998u, 23u)]), ~firstLeadingBit(1u) <= ~u_input.a.x);
}

fn func_3(arg_0: Struct_4) -> vec2<u32> {
    let var_0 = firstLeadingBit(_wgslsmith_add_vec2_i32(-vec2<i32>(0i, arg_0.d.x), global0[_wgslsmith_index_u32(arg_0.a.x & ~arg_0.a.x, 23u)] >> (arg_0.a.zx % vec2<u32>(32u))));
    var var_1 = Struct_2(arg_0.d.x, arg_0.c.x, ~var_0.x, select(arg_0.a.x, ~_wgslsmith_clamp_u32(arg_0.a.x, ~43235u, 26767u), true), vec3<u32>(arg_0.a.x, ~(~4294967295u), u_input.a.x) & ~min(~u_input.a.zyy, vec3<u32>(u_input.a.x, arg_0.a.x, 73830u)));
    var var_2 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - 1181f)) - _wgslsmith_f_op_f32(f32(-1f) * -369f)), min(~_wgslsmith_sub_u32(arg_0.a.x, 1u) << (~4294967295u % 32u), 1u), !select(vec4<bool>(false, arg_0.a.x >= 4294967295u, arg_0.b.x, true), vec4<bool>(!arg_0.e, arg_0.b.x && arg_0.b.x, all(vec2<bool>(arg_0.e, false)), arg_0.b.x), arg_0.b.x & arg_0.e));
    var var_3 = arg_0.d;
    var var_4 = vec4<bool>(true, arg_0.e, var_2.d.x, all(!select(vec3<bool>(false, true, false), vec3<bool>(true, var_2.a, arg_0.e), !arg_0.b)));
    return ~vec2<u32>(_wgslsmith_clamp_u32(4294967295u, var_1.d, firstTrailingBit(30615u) | ~var_1.d), 56356u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_dot_vec2_u32(func_3(func_1()), u_input.a.zy);
    var var_0 = vec4<i32>(1i, 1i, 1i, 1i) & -(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, 26124i, 56886i), vec4<i32>(-38110i, -57889i, 50461i, 28830i)) >> (~_wgslsmith_mod_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u)));
    var_0 = -(~select(-vec4<i32>(var_0.x, -1i, var_0.x, var_0.x), vec4<i32>(-16232i, var_0.x, var_0.x, -1i), -48841i != firstTrailingBit(var_0.x)));
    var_0 = vec4<i32>(-2147483647i, ~0i, 1i, 1i);
    let var_1 = max(-32184i, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)), _wgslsmith_f_op_vec2_f32(-global2.zz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.xz - vec2<f32>(global2.x, global2.x))))), global2.xy));
}

