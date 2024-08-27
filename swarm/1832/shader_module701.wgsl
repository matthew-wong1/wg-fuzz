struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b)))));
    var_0 = _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
    let var_1 = true;
    var_0 = arg_2.x;
    global1 = Struct_1(_wgslsmith_div_u32(4294967295u, ~_wgslsmith_div_u32(~global1.a, u_input.b.x ^ 71762u)), arg_2.x);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global1.b))));
}

fn func_2() -> i32 {
    global0 = array<Struct_1, 29>();
    var var_0 = false;
    let var_1 = global1.b;
    var var_2 = Struct_2(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, u_input.a.x | -15750i, u_input.c.x, u_input.d), vec3<u32>(~select(min(90456u, u_input.b.x), select(global1.a, 0u, true), false), max(_wgslsmith_div_u32(u_input.b.x, ~u_input.b.x), (u_input.b.x ^ u_input.b.x) | global1.a), ~(~_wgslsmith_add_u32(global1.a, u_input.b.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<i32>(var_2.a.x, var_2.a.x), var_2.a.www, vec2<f32>(global1.b, 595f), false))), global1.b, -1655f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-339f, -1000f, -550f), vec3<f32>(-1210f, global1.b, -598f), vec3<bool>(false, false, false))) - vec3<f32>(global1.b, -465f, global1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, global1.b, global1.b) * vec3<f32>(global1.b, global1.b, -1185f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.b, global1.b, global1.b), vec3<f32>(global1.b, global1.b, global1.b)))), true))));
    return u_input.c.x;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>) -> bool {
    global0 = array<Struct_1, 29>();
    var var_0 = _wgslsmith_div_i32(-1i, u_input.a.x) <= select(reverseBits(-(~2147483647i)), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(2147483647i, u_input.a.x))), !any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))));
    let var_1 = 1u;
    let var_2 = Struct_2(-_wgslsmith_sub_vec4_i32(select(-vec4<i32>(arg_1.x, u_input.d, 1i, 9495i), vec4<i32>(arg_1.x, -1i, arg_1.x, 0i), any(vec4<bool>(true, false, false, true))), ~(~vec4<i32>(u_input.d, -1169i, -7699i, u_input.d))), select(~(u_input.b.zyx ^ vec3<u32>(u_input.b.x, 1u, 51867u)) & firstLeadingBit(u_input.b.yzw), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 1u, global1.a), abs(u_input.b.ywz)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, 66877u, u_input.b.x), u_input.b), _wgslsmith_mult_u32(12872u, 0u), firstTrailingBit(global1.a))), (min(38312u, u_input.b.x) < ~var_1) || true));
    var var_3 = Struct_2(-var_2.a, select(vec3<u32>(24987u, _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, u_input.b.x), ~u_input.b.x), var_1), vec3<u32>(~(~51449u), ~_wgslsmith_div_u32(global1.a, 39625u), ~0u | firstLeadingBit(var_2.b.x)), true));
    return !any(vec4<bool>(true, true, true, true)) | all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, true)), vec2<bool>(select(true, false, false), true)));
}

fn func_1() -> bool {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 83814u), 29u)];
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(max(-vec3<i32>(-25612i, u_input.d, -1i), min(vec3<i32>(0i, 0i, -2560i), vec3<i32>(u_input.d, u_input.c.x, 17164i))) | -(vec3<i32>(u_input.a.x, -1i, 0i) ^ vec3<i32>(14897i, -44671i, u_input.c.x)), firstTrailingBit(select(~vec3<i32>(2147483647i, u_input.c.x, u_input.a.x), countOneBits(vec3<i32>(u_input.c.x, -2147483647i, -2147483647i)), vec3<bool>(true, true, true)))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, -32800i, -23220i), abs(vec3<i32>(-17396i, 20578i, -18050i)), select(abs(vec3<i32>(u_input.a.x, -16340i, u_input.d)), ~vec3<i32>(u_input.d, u_input.c.x, u_input.a.x), all(vec4<bool>(true, true, true, true)))));
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~reverseBits(u_input.b.x), firstLeadingBit(~global1.a << (global1.a % 32u))), 29u)];
    return !func_4(global1.a, vec3<i32>(max(1i, func_2()), -21034i, reverseBits(u_input.c.x) << (u_input.b.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * -929f))) * -660f), -957f, any(vec2<bool>(func_1(), all(vec3<bool>(false, true, false)) | true))));
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.b.yxy, vec3<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(19769u, 19099u), u_input.b.wy), vec2<u32>(0u, 27919u) >> (vec2<u32>(u_input.b.x, global1.a) % vec2<u32>(32u))), _wgslsmith_dot_vec3_u32(u_input.b.yyz, vec3<u32>(u_input.b.x, global1.a, global1.a)))), 29u)];
    var var_1 = true && !all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)));
    global0 = array<Struct_1, 29>();
    let var_2 = max(u_input.b, ~u_input.b);
    var_1 = true;
    var var_3 = vec2<i32>(u_input.c.x, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~global1.a)));
}

