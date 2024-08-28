struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<f32, 17>;

var<private> global3: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>) -> vec4<u32> {
    let var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(reverseBits(u_input.b.x)), 17u)];
    return vec4<u32>(~u_input.b.x, _wgslsmith_clamp_u32(~(~(~357u)), ~_wgslsmith_sub_u32(604u, 1u), ~min(u_input.b.x, ~28720u)), countOneBits(min(1u, _wgslsmith_mod_u32(4294967295u, u_input.b.x)) << (~1u % 32u)), ~_wgslsmith_div_u32(~25892u, _wgslsmith_add_u32(u_input.b.x, 0u)) ^ ~max(~0u, 46951u << (0u % 32u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec3<u32>) -> vec3<i32> {
    let var_0 = !select(arg_2.zz, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(func_2(Struct_2(vec3<i32>(arg_1.a.b, arg_1.a.b, u_input.a), 0i, arg_1.a.d, Struct_1(arg_2.x, arg_1.a.c.b)), Struct_3(arg_1.a), vec3<f32>(global2[_wgslsmith_index_u32(1u, 17u)], -503f, -1109f)), ~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 67540u)), 5u)], vec2<bool>(false, all(vec2<bool>(arg_2.x, false))));
    global2 = array<f32, 17>();
    var var_1 = arg_3.x & (~(_wgslsmith_div_u32(arg_3.x, 0u) >> (~7340u % 32u)) | _wgslsmith_mod_u32(1u, 11624u));
    return vec3<i32>(_wgslsmith_add_i32(1i, abs(u_input.a)), ~abs(~_wgslsmith_mult_i32(-10401i, arg_1.a.a.x)), 29492i);
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = -_wgslsmith_clamp_vec3_i32((_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.b, 1i, u_input.a), vec3<i32>(-1i, u_input.a, u_input.a)) & min(vec3<i32>(-1i, u_input.a, arg_0.a.a.x), vec3<i32>(20304i, u_input.a, u_input.a))) | -arg_0.a.a, arg_0.a.a, _wgslsmith_add_vec3_i32(countOneBits(firstTrailingBit(vec3<i32>(u_input.a, 1566i, -10132i))), vec3<i32>(-27754i, -64341i ^ u_input.a, ~arg_0.a.a.x)));
    global3 = array<vec2<bool>, 5>();
    var_0 = -arg_0.a.a;
    var_0 = arg_0.a.a;
    global2 = array<f32, 17>();
    return vec3<bool>((u_input.a | 19627i) != ~(-14978i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))) > _wgslsmith_f_op_f32(f32(-1f) * -934f), !arg_0.a.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.a, u_input.a);
    let var_1 = !func_3(Struct_3(Struct_2(func_1(vec2<i32>(0i, 0i), Struct_3(Struct_2(vec3<i32>(u_input.a, u_input.a, u_input.a), 2147483647i, global1[_wgslsmith_index_u32(4294967295u, 30u)], Struct_1(false, vec2<f32>(-600f, 1000f)))), vec3<bool>(false, true, false), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), 17215i, Struct_1(true, vec2<f32>(343f, global2[_wgslsmith_index_u32(3808u, 17u)])), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(45444u, 1u), 30u)])));
    var var_2 = all(vec4<bool>(true, true, false, var_1.x));
    global0 = _wgslsmith_f_op_f32(select(-1719f, 671f, true));
    global0 = _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(62133u, u_input.b.x, ~reverseBits(u_input.b.x)), 17u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], -510f, -436f, 805f) * vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], global2[_wgslsmith_index_u32(u_input.b.x, 17u)], 1851f, 244f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(64435u, 17u)], -963f, -1727f, -129f) - vec4<f32>(726f, 1315f, -172f, global2[_wgslsmith_index_u32(1u, 17u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], 767f, 210f, global2[_wgslsmith_index_u32(u_input.b.x, 17u)]))))), 33074u, u_input.b.x);
}

