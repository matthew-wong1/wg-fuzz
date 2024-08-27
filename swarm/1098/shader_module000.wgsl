struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: u32 = 1u;

var<private> global2: Struct_1;

var<private> global3: vec3<bool>;

var<private> global4: vec2<i32> = vec2<i32>(-2245i, 45833i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: u32) -> i32 {
    global2 = arg_0;
    return 2147483647i;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(-10789i | u_input.b, global4.x);
    let var_1 = vec3<i32>(abs(_wgslsmith_clamp_i32(reverseBits(u_input.b) >> (~10367u % 32u), global2.b, u_input.b)), firstTrailingBit(~var_0.a), firstLeadingBit(global4.x));
    let var_2 = -_wgslsmith_mod_vec4_i32(~vec4<i32>(firstTrailingBit(var_1.x), ~(-2147483647i), -1i, 0i), -(vec4<i32>(u_input.b, -54119i, 30479i, -3517i) | vec4<i32>(var_0.a, global4.x, 67894i, global2.b)) | (min(vec4<i32>(16429i, -7787i, -2147483647i, 0i), vec4<i32>(u_input.b, u_input.b, var_1.x, 1459i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, 20729i, -56733i, var_1.x), vec4<i32>(var_1.x, u_input.b, -2147483647i, u_input.b), vec4<i32>(global4.x, global4.x, 1i, global4.x))));
    let var_3 = Struct_1(var_2.x, -(~_wgslsmith_add_i32(func_2(Struct_1(var_2.x, -7139i), vec2<bool>(true, true), var_0.a, u_input.a), ~(-10637i))));
    global0 = array<f32, 24>();
    return var_3;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global4 = max(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(~(-25015i), u_input.b), func_2(arg_0, vec2<bool>(global3.x, false), arg_0.b, u_input.c.x) >> (u_input.a % 32u)), func_2(arg_0, vec2<bool>(true, true), global4.x, 39288u)), abs(vec2<i32>(-3626i, global2.b)));
    global0 = array<f32, 24>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(32676u, 24u)]))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -1652f), vec2<f32>(896f, -355f)))))));
    let var_2 = arg_0;
    return Struct_1(global2.b, var_2.b);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> bool {
    global2 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2, ~u_input.d.x, abs(arg_2)), vec3<u32>(7508u, arg_2, 26850u) & u_input.c.xww), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xy ^ u_input.d.xw, vec2<u32>(u_input.a, u_input.c.x)), ~arg_2, u_input.c.x)), 24u)], _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-390f, 272f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, global0[_wgslsmith_index_u32(18452u, 24u)]), vec2<f32>(arg_0, -1611f), vec2<bool>(true, global3.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -910f) - vec2<f32>(arg_0, arg_0)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(1u, 24u)], 313f)))))));
    var var_0 = func_3(func_1(_wgslsmith_f_op_f32(f32(-1f) * -769f), vec2<f32>(-757f, arg_0)), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -734f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))))));
    global4 = vec2<i32>(-69085i, _wgslsmith_dot_vec3_i32(firstLeadingBit(firstLeadingBit(vec3<i32>(var_0.a, global2.b, arg_1.a))), -(vec3<i32>(1i, global4.x, u_input.b) & vec3<i32>(-1i, 8556i, u_input.b)))) & vec2<i32>(-(_wgslsmith_div_i32(arg_1.b, var_0.b) ^ -1i), -8727i);
    let var_1 = _wgslsmith_f_op_f32(select(-464f, arg_0, all(select(vec2<bool>(!global3.x, false && global3.x), global3.zx, !(global3.x & global3.x)))));
    let var_2 = Struct_1(reverseBits(~reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, global2.b), vec2<i32>(2147483647i, 0i)))), (i32(-1i) * -1i) << (abs(_wgslsmith_mod_u32(~arg_2, arg_2)) % 32u));
    return ((firstTrailingBit(~var_0.b) << (~(~u_input.d.x) % 32u)) | -57501i) != func_2(arg_1, global3.xz, var_0.a, abs(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.d.x;
    global3 = !vec3<bool>(func_4(_wgslsmith_f_op_f32(select(358f, _wgslsmith_f_op_f32(f32(-1f) * -266f), true)), func_3(func_1(global0[_wgslsmith_index_u32(4294967295u, 24u)], vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 1051f)), 1f), 1u), !(!global3.x), true);
    let var_0 = u_input.d;
    var var_1 = max(36359u, 40202u);
    let var_2 = Struct_1(global4.x, -13283i);
    global4 = -(vec2<i32>(-1i) * -(select(vec2<i32>(88761i, 2147483647i), vec2<i32>(-3827i, 63713i), global3.zy) << (~vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(1089f, _wgslsmith_add_vec3_i32(-firstTrailingBit(vec3<i32>(2147483647i, u_input.b, var_3.a) | vec3<i32>(1i, var_2.a, u_input.b)), ~firstTrailingBit(reverseBits(vec3<i32>(2147483647i, -15i, -17324i)))), _wgslsmith_add_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.b, -10574i, var_2.a, 0i) | vec4<i32>(global4.x, var_3.b, -1i, -2147483647i)), vec4<i32>(-(-24344i >> (u_input.c.x % 32u)), ~0i, u_input.b, -24869i)));
}

