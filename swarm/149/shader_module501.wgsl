struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(768f, vec2<i32>(-24890i, 12003i), vec3<i32>(8259i, -1i, -18591i), 1u), vec3<bool>(true, true, false), vec3<i32>(-74694i, 31026i, 2147483647i), vec2<bool>(true, false));

var<private> global2: f32;

var<private> global3: vec2<f32> = vec2<f32>(-527f, -972f);

var<private> global4: array<Struct_2, 13>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<bool> {
    global1 = global4[_wgslsmith_index_u32(u_input.b.x, 13u)];
    global2 = global1.a.a;
    var var_0 = firstTrailingBit(32604u);
    let var_1 = vec2<u32>(4294967295u, 5503u);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.a, arg_2.a))) - vec2<f32>(-611f, arg_2.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-311f - global3.x), _wgslsmith_f_op_f32(global1.a.a + -397f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -151f))))), !(!global1.d)));
    return global1.b.zx;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_2) -> i32 {
    global2 = 654f;
    global4 = array<Struct_2, 13>();
    var var_0 = true;
    global4 = array<Struct_2, 13>();
    global4 = array<Struct_2, 13>();
    return min(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1.a.b.x, -1i, u_input.d.x), ~u_input.c)), u_input.c.x);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    var var_0 = global1.a;
    var var_1 = vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-global3.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.a)), 138f, global1.b.x)), var_0.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -1161f)), _wgslsmith_f_op_f32(trunc(-360f)), false)), true)), abs(vec2<i32>(global0.x, 0i >> (var_0.d % 32u))) | ~vec2<i32>(firstTrailingBit(global1.c.x), 6109i), abs(vec3<i32>(arg_2.b.x, _wgslsmith_clamp_i32(global0.x, u_input.d.x, 26829i), var_0.b.x)) << (vec3<u32>(~countOneBits(var_0.d), 22318u, 3012u) % vec3<u32>(32u)), 110044u);
    var var_3 = ~abs(_wgslsmith_mod_u32(4071u, firstTrailingBit(arg_2.d)) | min(var_2.d, u_input.b.x));
    let var_4 = u_input.a.xw;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.a, global1.b, vec3<i32>(-_wgslsmith_add_i32(u_input.d.x, -66235i), 24811i, ~(-countOneBits(1i))), !(!(!select(vec2<bool>(global1.d.x, global1.d.x), global1.d, global1.d.x))));
    var_0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(1u), min(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a.yww, u_input.a.www), firstTrailingBit(0u)), var_0.a.d ^ ~(~var_0.a.d))), 13u)];
    let var_1 = Struct_2(var_0.a, var_0.b, vec3<i32>(1i, -_wgslsmith_div_i32(_wgslsmith_mod_i32(global0.x, u_input.c.x), global0.x), ~(-abs(var_0.c.x))), func_1(firstLeadingBit(~u_input.a.x), vec3<i32>(_wgslsmith_div_i32(-53040i, global0.x), var_0.a.b.x >> (global1.a.d % 32u), global1.c.x), Struct_1(514f, u_input.c.zx, vec3<i32>(-46595i, -var_0.a.b.x, global0.x), u_input.a.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a, _wgslsmith_f_op_f32(-189f + _wgslsmith_f_op_f32(global1.a.a * _wgslsmith_f_op_f32(floor(1000f))))));
    var var_3 = Struct_1(var_2.x, _wgslsmith_clamp_vec2_i32(abs(u_input.d.yx), vec2<i32>(-var_0.c.x, -global1.a.b.x), -vec2<i32>(~32108i, func_2(global1.b, global3.x, vec2<i32>(var_1.c.x, 1i), Struct_2(Struct_1(-1477f, var_0.c.yx, var_1.c, global1.a.d), var_0.b, vec3<i32>(global1.c.x, u_input.d.x, global1.a.c.x), vec2<bool>(var_0.b.x, var_0.b.x))))), vec3<i32>(var_0.a.c.x ^ ~(var_0.a.b.x | 24969i), var_0.c.x, -4684i), _wgslsmith_clamp_u32(~(~u_input.b.x), select(_wgslsmith_div_u32(~73819u, 1u), _wgslsmith_add_u32(~var_1.a.d, ~var_0.a.d), var_0.b.x), ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(~select(var_1.c, vec3<i32>(-1i) * -u_input.d, func_3(vec4<f32>(var_2.x, global1.a.a, -232f, global3.x), _wgslsmith_mod_vec2_i32(vec2<i32>(var_3.b.x, 2147483647i), var_1.c.yy), Struct_1(2179f, var_1.c.zy, var_1.c, global1.a.d))), ~_wgslsmith_mult_u32(firstLeadingBit(countOneBits(var_0.a.d)), ~1u), firstLeadingBit(~(global1.a.d ^ select(u_input.a.x, var_0.a.d, global1.d.x))), -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0.a.a) - -1073f))));
}

