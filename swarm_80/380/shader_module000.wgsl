struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: array<f32, 20> = array<f32, 20>(234f, -1324f, -186f, -1557f, 836f, -2088f, 751f, 562f, 104f, 593f, -1000f, -146f, -644f, -1760f, 974f, 525f, -1054f, 1000f, 383f, 1000f);

var<private> global2: array<bool, 23> = array<bool, 23>(true, false, true, false, true, false, false, false, true, true, true, false, false, false, true, true, false, false, false, true, false, false, true);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = vec3<u32>(arg_2.c.b, ~min(arg_2.c.b, _wgslsmith_mult_u32(arg_2.d, ~u_input.c.x)), 19906u << (0u % 32u));
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 1u, ~var_0.x), 6374u), 1u, var_0.x ^ (arg_0.x >> (~22971u % 32u))), firstLeadingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 0u, 53038u) | var_0, vec3<u32>(1u, 0u, arg_0.x))), ~abs(vec3<u32>(1u, var_0.x, arg_0.x)) << (vec3<u32>(arg_0.x, arg_0.x, 25821u) % vec3<u32>(32u)));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> f32 {
    let var_0 = abs(vec3<u32>(4294967295u, (_wgslsmith_clamp_u32(u_input.c.x, 93174u, u_input.a.x) >> ((arg_1.x ^ arg_1.x) % 32u)) | _wgslsmith_dot_vec3_u32(func_3(vec4<u32>(4294967295u, u_input.a.x, 49927u, u_input.a.x), global1[_wgslsmith_index_u32(72008u, 20u)], Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global2[_wgslsmith_index_u32(26008u, 23u)], Struct_1(-241f, u_input.a.x), 37572u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 1u), u_input.a)), 27573u));
    var var_1 = reverseBits(vec3<i32>(-21966i, u_input.d, arg_0));
    let var_2 = global1[_wgslsmith_index_u32(~select(~(~12730u) & _wgslsmith_mod_u32(abs(4294967295u), var_0.x), var_0.x, !global2[_wgslsmith_index_u32(u_input.b.x, 23u)]), 20u)];
    let var_3 = Struct_3(u_input.b.x, _wgslsmith_add_i32(-1i, arg_0), var_1.x, Struct_1(global1[_wgslsmith_index_u32(72076u, 20u)], _wgslsmith_mod_u32(57383u, min(u_input.b.x, reverseBits(u_input.c.x)))));
    var var_4 = var_3.d;
    return -493f;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> vec3<u32> {
    global1 = array<f32, 20>();
    global1 = array<f32, 20>();
    let var_0 = u_input.c;
    global2 = array<bool, 23>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x);
    return ~countOneBits(_wgslsmith_sub_vec3_u32(~u_input.a, var_0.wxw ^ vec3<u32>(arg_2.b, 0u, 4294967295u)));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 20u)];
    let var_1 = -firstLeadingBit(-16685i << (_wgslsmith_dot_vec4_u32(u_input.c, ~arg_1) % 32u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1270f))))), _wgslsmith_mult_u32(38011u ^ firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 14359u), vec2<u32>(1u, u_input.c.x))), firstLeadingBit(_wgslsmith_clamp_u32(15915u, u_input.c.x, ~0u))));
    let var_3 = func_4(39178i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(352f - _wgslsmith_f_op_f32(func_2(-48307i, vec2<u32>(4294967295u, arg_1.x)))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(44407u, 20u)] + _wgslsmith_f_op_f32(min(-2678f, global1[_wgslsmith_index_u32(0u, 20u)]))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-840f, _wgslsmith_f_op_f32(816f * 351f), global2[_wgslsmith_index_u32(~3412u, 23u)])) * -2007f), 46287u), _wgslsmith_f_op_f32(f32(-1f) * -1614f));
    global1 = array<f32, 20>();
    return Struct_3(_wgslsmith_mult_u32(4294967295u, ~arg_1.x), ~var_1, ((var_1 >> (~var_2.b % 32u)) << (~var_2.b % 32u)) | (var_1 << (var_3.x % 32u)), Struct_1(global1[_wgslsmith_index_u32(u_input.c.x << (func_4(firstTrailingBit(-2566i), vec2<f32>(1000f, global1[_wgslsmith_index_u32(var_2.b, 20u)]), Struct_1(-1007f, arg_1.x), global1[_wgslsmith_index_u32(90994u, 20u)]).x % 32u), 20u)], arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 22>();
    var var_0 = any(global0[_wgslsmith_index_u32(u_input.b.x, 22u)]);
    let var_1 = func_1(global2[_wgslsmith_index_u32(~firstTrailingBit(~33782u), 23u)], ~u_input.c);
    global2 = array<bool, 23>();
    var var_2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.d.a), u_input.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1530f + _wgslsmith_f_op_f32(ceil(var_1.d.a))), global1[_wgslsmith_index_u32(0u, 20u)])), ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, var_1.b), vec2<i32>(-12058i, 9602i))) >> (u_input.b.yx % vec2<u32>(32u)), vec2<i32>(u_input.d, -_wgslsmith_sub_i32(~2578i, -1i)));
}

