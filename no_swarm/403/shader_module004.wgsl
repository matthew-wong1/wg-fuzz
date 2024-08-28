struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<f32>(-396f, 1814f, 771f, -1000f), 986f, vec3<u32>(13905u, 42863u, 1u)), Struct_1(vec4<f32>(-1554f, 995f, -540f, -135f), 1299f, vec3<u32>(40911u, 41146u, 1u)), Struct_1(vec4<f32>(1677f, -860f, 122f, 2170f), 425f, vec3<u32>(52431u, 30710u, 134483u)), Struct_1(vec4<f32>(371f, 710f, 1613f, 700f), 1005f, vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec4<f32>(-278f, -285f, -250f, -814f), -1000f, vec3<u32>(4294967295u, 0u, 41512u)), Struct_1(vec4<f32>(1000f, 172f, -1000f, 349f), 1288f, vec3<u32>(0u, 1859u, 0u)), Struct_1(vec4<f32>(1000f, 556f, -1187f, -983f), 341f, vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec4<f32>(1487f, 1053f, 1523f, 1000f), 375f, vec3<u32>(95907u, 0u, 1571u)), Struct_1(vec4<f32>(927f, -410f, 620f, 589f), -833f, vec3<u32>(0u, 0u, 1253u)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    global0 = array<Struct_1, 9>();
    var var_0 = 4294967295u;
    let var_1 = arg_2.c.x;
    var var_2 = arg_2.c & ~(arg_2.c & vec3<u32>(~var_1, ~0u, 34337u << (var_1 % 32u)));
    global0 = array<Struct_1, 9>();
    return arg_2.c.x;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: f32) -> vec3<u32> {
    let var_0 = firstLeadingBit(~vec2<u32>(func_3(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a), select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, false, true), arg_0), global0[_wgslsmith_index_u32(7466u, 9u)], u_input.a.zyy), ~43781u >> ((1u >> (1u % 32u)) % 32u)));
    let var_1 = 1000f;
    global0 = array<Struct_1, 9>();
    var var_2 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(-u_input.a.xxz, max(vec3<i32>(u_input.a.x, -27136i, -9710i), u_input.a.yxz)), firstTrailingBit(~15270i))), max(select(u_input.a.zyz, u_input.a.xwy, arg_0), vec3<i32>(u_input.a.x, -max(-15962i, u_input.a.x), 2147483647i)));
    var_2 = 0i;
    return vec3<u32>(_wgslsmith_mult_u32(max(~35714u, ~var_0.x), var_0.x), firstLeadingBit(_wgslsmith_mult_u32(~var_0.x, var_0.x)), var_0.x) << (vec3<u32>(_wgslsmith_sub_u32(var_0.x, 0u), var_0.x, ~1u) % vec3<u32>(32u));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = ~(vec3<u32>(~min(64689u, 1u), firstLeadingBit(~0u), select(1u, ~0u, all(vec4<bool>(false, true, true, false)))) ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), func_2(false, arg_0, 673f), vec3<u32>(1u, 1u, 1u)));
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    return ~firstTrailingBit(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec3<u32>(1u, select(1u ^ func_1(vec4<f32>(-665f, -384f, -1401f, -2333f)), 0u, _wgslsmith_f_op_f32(sign(-1622f)) != -400f), _wgslsmith_clamp_u32(15949u, ~4294967295u << (firstTrailingBit(19847u) % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 38687u, 4487u), vec4<u32>(0u, 27290u, 1u, 4294967295u)))));
    var var_1 = min(vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(22046i, u_input.a.x) | u_input.a.x, firstLeadingBit(-2147483647i))), vec2<i32>(u_input.a.x, -(u_input.a.x >> (0u % 32u))) ^ u_input.a.wy);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1184f)), 1f, -778f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1601f, 320f))))), 258f, ~var_0);
    var var_3 = ~_wgslsmith_mult_i32(_wgslsmith_div_i32(1i, -(~3211i)), firstLeadingBit(abs(_wgslsmith_sub_i32(var_1.x, -13847i))));
    global0 = array<Struct_1, 9>();
    var var_4 = var_2;
    var var_5 = 58014u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(var_2.a.xy, var_2.a.yy, any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true)))), var_2.a.yxx, var_2.c.x);
}

