struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-53213i, -40609i), -5834i);

var<private> global2: Struct_5 = Struct_5(Struct_2(vec2<u32>(31776u, 69401u), Struct_1(vec2<i32>(0i, -22043i), i32(-2147483648)), vec2<i32>(-30720i, 15007i)), false, Struct_2(vec2<u32>(82626u, 4294967295u), Struct_1(vec2<i32>(-1i, 0i), -42084i), vec2<i32>(0i, 1567i)), vec4<u32>(62041u, 4294967295u, 32625u, 69734u), vec4<f32>(-417f, 663f, 539f, -309f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32) -> Struct_4 {
    return Struct_4(firstTrailingBit(u_input.a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global2.e.yz))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4) -> u32 {
    var var_0 = vec3<bool>(~(~25581u) < _wgslsmith_dot_vec4_u32(global2.d, ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 35870u, u_input.a.x), global2.d)), any(select(arg_0, select(arg_0, arg_0, arg_0), arg_0)) | !any(vec4<bool>(false, false, true, false)), !all(vec2<bool>(all(arg_0), false)));
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(~(81729u >> ((u_input.a.x << (u_input.a.x % 32u)) % 32u)), ~(~(~global2.a.a.x)), firstLeadingBit(arg_1.a.x)), arg_1.a);
    let var_2 = _wgslsmith_mod_vec4_i32(-abs(vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.b.a.x, 7679i, -2147483647i), vec3<i32>(6387i, global2.c.c.x, -2147483647i)), countOneBits(-2147483647i), global1.b)), ~_wgslsmith_mult_vec4_i32(countOneBits(~vec4<i32>(58054i, -24744i, global2.a.c.x, global2.a.b.a.x)), abs(-vec4<i32>(0i, global1.a.x, global1.a.x, global2.c.c.x))));
    let var_3 = var_1.x;
    var var_4 = arg_0;
    return ~(~4294967295u);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_5 {
    return Struct_5(arg_2, any(vec4<bool>(false, false, global2.b, 4294967295u > arg_2.a.x)) | all(!vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true)), arg_2, vec4<u32>(~func_3(!vec2<bool>(false, global2.b), func_2(19100i)), u_input.a.x, u_input.a.x, _wgslsmith_mult_u32(~(~arg_2.a.x), func_2(-1i).a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-388f, 223f, global2.e.x, arg_0) - vec4<f32>(arg_0, -196f, arg_0, 738f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1194f, global2.e.x, arg_0, arg_0))), vec4<bool>(false, global2.b, u_input.a.x < global2.c.a.x, !arg_1.a))) * global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(35322u, 32900u >> (~arg_2.a.x % 32u)), 16u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_f32(global2.e.x, global2.e.x), Struct_3(global2.b), Struct_2(_wgslsmith_div_vec2_u32(abs(~vec2<u32>(0u, global2.d.x)), global2.c.a), global2.a.b, vec2<i32>(_wgslsmith_add_i32(44576i, global1.a.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(30090u, 4294967295u, 1u, 4756u), vec4<u32>(0u, global2.a.a.x, u_input.a.x, 11801u)) % 32u), countOneBits(global1.b))), vec3<i32>(global1.a.x, _wgslsmith_mod_i32(global1.a.x, _wgslsmith_clamp_i32(global1.b | -1i, ~global1.a.x, -global2.c.c.x)), -1i));
    global1 = Struct_1(vec2<i32>(_wgslsmith_clamp_i32(~1i ^ firstTrailingBit(-2147483647i), -global2.a.b.a.x, -1i), i32(-1i) * -var_0.c.b.b), global2.a.c.x);
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_mod_vec2_i32(max(~vec2<i32>(0i, 1i), vec2<i32>(-firstTrailingBit(0i), -(~global2.c.c.x))), vec2<i32>(var_0.a.b.b, global2.a.b.b));
    let var_3 = global2.c.b;
    global2 = Struct_5(var_0.c, !(!any(select(vec2<bool>(true, var_1), vec2<bool>(global2.b, var_1), var_1))), Struct_2(~global2.c.a, var_0.c.b, vec2<i32>(-1i, i32(-1i) * -var_2.x)), var_0.d, global2.e);
    let x = u_input.a;
    s_output = StorageBuffer(~(var_0.d ^ vec4<u32>(42794u, 23448u, var_0.a.a.x, select(global2.c.a.x, 43323u, var_0.b))), -24292i, ~4294967295u, vec2<u32>(u_input.a.x, firstTrailingBit(~(~global2.a.a.x))));
}

