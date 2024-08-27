struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 29263u;

var<private> global1: array<bool, 24>;

var<private> global2: vec4<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = Struct_2(false, 0u, Struct_1(!all(vec3<bool>(true, true, true))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-728f, _wgslsmith_div_f32(1000f, 402f))))) * -657f), abs(~_wgslsmith_mod_u32(u_input.b << (u_input.b % 32u), var_0.b)));
    var_0 = Struct_2(all(vec4<bool>(var_0.a, select(true, any(vec2<bool>(var_0.c.a, true)), false), false, false)), 4294967295u, var_0.c);
    let var_2 = var_0.a;
    global2 = vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(min(abs(u_input.a), u_input.a), vec4<u32>(reverseBits(1u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.b, 1u), vec3<u32>(var_0.b, 1u, u_input.b)), 33210u, _wgslsmith_add_u32(firstTrailingBit(1210u), u_input.b), ~_wgslsmith_mod_u32(u_input.b, 4294967295u))), min(1u, ~select(_wgslsmith_mult_u32(4294967295u, global2.x), ~1442u, arg_1.x >= 12319u)), 4294967295u);
    return _wgslsmith_dot_vec4_u32(reverseBits(firstTrailingBit(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(4294967295u, arg_0.x, 76560u, 4773u)))), vec4<u32>(global2.x << (arg_1.x % 32u), 22270u, 1u, u_input.d) & (~vec4<u32>(var_1.b, var_1.b, arg_0.x, global2.x) | u_input.a)) & 1u;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(all(vec2<bool>(true | global1[_wgslsmith_index_u32(~15659u, 24u)], global1[_wgslsmith_index_u32(9643u, 24u)])));
    global0 = reverseBits(~u_input.d);
    var var_1 = global2.x;
    global0 = 4294967295u ^ (~(~(~60163u)) | ~global2.x);
    global2 = vec4<u32>(global2.x, ~_wgslsmith_add_u32(u_input.d, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xx, vec2<u32>(1u, global2.x)), ~vec2<u32>(18874u, 0u))), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(89579u, u_input.d), 4294967295u) & ~global2.x, ~func_3(~select(vec3<u32>(31837u, 9804u, global2.x), u_input.a.zyx, vec3<bool>(false, true, false)), global2.yyz));
    return _wgslsmith_sub_u32(_wgslsmith_mult_u32((u_input.a.x >> ((u_input.a.x << (4294967295u % 32u)) % 32u)) ^ u_input.d, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.x, global2.x), firstLeadingBit(vec2<u32>(global2.x, 66560u))), ~u_input.a.yx)), _wgslsmith_mult_u32(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(53247u, 73446u, global2.x), u_input.a.x), countOneBits(~global2.x)));
}

fn func_1() -> u32 {
    global0 = func_2();
    global0 = abs(~firstTrailingBit(~(~26528u)));
    global0 = 4294967295u;
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.c, -u_input.c), firstTrailingBit(reverseBits(vec2<i32>(2147483647i, u_input.c)))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-1125f * 233f), 1u);
    global0 = _wgslsmith_dot_vec4_u32(u_input.a, (firstLeadingBit(vec4<u32>(1u, global2.x, 4294967295u, 4294967295u)) & countOneBits(u_input.a)) ^ max(u_input.a, ~vec4<u32>(4294967295u, 0u, 78287u, global2.x)));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(-1i, var_0.x)), vec2<i32>(0i, -3890i << (var_1.b % 32u))) != var_0.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1503f, _wgslsmith_f_op_f32(floor(var_1.a))));
    global1 = array<bool, 24>();
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(min(~abs(global2.xx), (_wgslsmith_mult_vec2_u32(vec2<u32>(15603u, 24163u), u_input.a.xz) >> (countOneBits(vec2<u32>(global2.x, 5868u)) % vec2<u32>(32u))) << (max(global2.xw, select(global2.zy, u_input.a.wz, true)) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3, -104f), vec2<f32>(-1591f, -939f)))), _wgslsmith_div_vec2_i32(vec2<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(8302i, 15522i, u_input.c), vec3<i32>(-1i, -1i, u_input.c)), ~2147483647i), -25283i), vec2<i32>(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_0.x, 1i) << (u_input.a.zxy % vec3<u32>(32u)), max(vec3<i32>(u_input.c, var_0.x, 1i), vec3<i32>(var_0.x, -2147483647i, -2147483647i))))), var_3);
}

