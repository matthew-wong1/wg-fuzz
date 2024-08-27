struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 18>;

var<private> global2: f32;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: array<vec3<f32>, 16>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_5, arg_1: f32) -> vec4<i32> {
    global4 = array<vec3<f32>, 16>();
    var var_0 = ~(~(~_wgslsmith_sub_vec3_u32(arg_0.b.xxw, arg_0.a.b.wxy)));
    global3 = arg_0.c;
    return vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a.x, 32011i), global1[_wgslsmith_index_u32(~(4294967295u | var_0.x), 18u)], u_input.a.x) ^ global1[_wgslsmith_index_u32(0u, 18u)], ~(-18561i), u_input.a.x ^ max(1i << (abs(0u) % 32u), u_input.a.x << (~41824u % 32u)), firstTrailingBit(u_input.a.x));
}

fn func_2(arg_0: Struct_5, arg_1: bool, arg_2: vec3<bool>, arg_3: vec2<bool>) -> vec4<f32> {
    global4 = array<vec3<f32>, 16>();
    var var_0 = max(-abs(vec4<i32>(-11473i >> (1u % 32u), ~global1[_wgslsmith_index_u32(57654u, 18u)], countOneBits(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_0.a.b.x, 18u)]), vec2<i32>(41357i, 64269i)))), vec4<i32>(global1[_wgslsmith_index_u32(33451u, 18u)], -_wgslsmith_add_i32(abs(global1[_wgslsmith_index_u32(54630u, 18u)]), -1i), u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(arg_0.d.b.x, 18u)], -12185i), vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 18u)], -1i)), vec3<i32>(2147483647i, -9789i, u_input.a.x))));
    let var_1 = Struct_3(4294967295u & ~firstLeadingBit(arg_0.d.b.x), Struct_1(1u));
    let var_2 = arg_0.a;
    var_0 = ~func_3(arg_0, 1279f);
    return arg_0.a.a;
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    var var_0 = arg_1;
    global3 = vec2<bool>(false, true);
    var var_1 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_5(Struct_2(vec4<f32>(712f, 574f, -245f, -1081f), vec4<u32>(var_0.a, arg_1.a, arg_1.a, 39144u)), vec4<u32>(4294967295u, arg_1.a, arg_1.a, arg_1.a), vec2<bool>(arg_0, arg_0), Struct_2(vec4<f32>(1238f, 984f, -103f, 350f), vec4<u32>(arg_1.a, 4294967295u, 60283u, var_0.a))), global1[_wgslsmith_index_u32(var_0.b.a, 18u)] == -2147483647i, select(vec3<bool>(false, true, arg_0), vec3<bool>(global3.x, global3.x, true), false), select(vec2<bool>(true, false), vec2<bool>(global3.x, global3.x), false))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(559f, 727f, 1162f, -1000f))), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.a, arg_1.b.a, arg_1.b.a, 1u), min(vec4<u32>(946u, var_0.a, arg_1.b.a, var_0.b.a), vec4<u32>(var_0.b.a, 4294967295u, 1u, 8195u))) & ~(~vec4<u32>(4294967295u, 1343u, 76253u, var_0.a))), ~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(14810u, 15163u, var_0.a, 10552u)), select(vec4<u32>(arg_1.a, 10335u, arg_1.a, var_0.a) << (vec4<u32>(arg_1.b.a, 0u, var_0.b.a, 1u) % vec4<u32>(32u)), ~vec4<u32>(69963u, arg_1.a, 4294967295u, arg_1.b.a), all(vec4<bool>(global3.x, false, false, false)))), !vec2<bool>(true && arg_0, global3.x), Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-208f * -635f), _wgslsmith_f_op_f32(abs(384f))), -175f, _wgslsmith_f_op_f32(192f + -323f), -331f), abs(max(~vec4<u32>(var_0.a, 5847u, var_0.a, 1u), ~vec4<u32>(arg_1.b.a, var_0.b.a, 576u, 0u)))));
    let var_2 = Struct_1(17778u);
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(Struct_5(var_1.a, vec4<u32>(arg_1.a, var_1.d.b.x, 26056u, 4477u) & _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.b.a, var_1.a.b.x, arg_1.b.a), var_1.a.b), vec2<bool>(all(vec4<bool>(arg_0, global3.x, arg_0, true)), var_1.c.x), Struct_2(_wgslsmith_f_op_vec4_f32(-var_1.a.a), vec4<u32>(var_1.b.x, 82040u, var_1.a.b.x, var_0.b.a))), !arg_0, vec3<bool>(global3.x, !arg_0, _wgslsmith_div_f32(1125f, var_1.a.a.x) >= var_1.d.a.x), vec2<bool>(global3.x, false))).xyz));
    return arg_1.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<u32>(68254u, 14535u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(471f - _wgslsmith_f_op_f32(sign(-115f)))), _wgslsmith_f_op_f32(select(410f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1555f)) - -889f))), false)), vec4<u32>(1u, ~(~func_1(true, Struct_3(9738u, Struct_1(0u)), -1i, u_input.a)), 1u, 16471u));
}

