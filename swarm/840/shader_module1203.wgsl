struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: Struct_1 = Struct_1(true);

var<private> global3: Struct_2 = Struct_2(825f, Struct_1(false), Struct_1(true), vec4<f32>(1000f, -652f, 383f, 621f));

var<private> global4: vec3<u32> = vec3<u32>(12342u, 37952u, 1u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: f32) -> u32 {
    return _wgslsmith_div_u32(~min(u_input.d, 10126u), (u_input.d << (1u % 32u)) >> (~(~1u) % 32u));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(global3.d.x));
    let var_1 = Struct_1(true);
    var var_2 = Struct_1(false);
    let var_3 = global3.d.xwx;
    let var_4 = ~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global4.x, 1u | global4.x), vec2<u32>(~1u, global4.x)), _wgslsmith_clamp_vec2_u32(global4.xx, ~(~vec2<u32>(u_input.d, 12726u)), vec2<u32>(u_input.d ^ 1u, func_3(global1.d.yyx, Struct_2(679f, Struct_1(var_2.a), global3.b, vec4<f32>(-989f, global1.a, global3.a, 594f)), vec4<u32>(u_input.d, 62265u, u_input.d, u_input.d), 1000f))));
    return global1.c;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>) -> Struct_1 {
    global2 = Struct_1(all(vec3<bool>(!any(vec2<bool>(global0.a, false)), ~12353u < ~global4.x, !(global1.c.a & global0.a))));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.d.x))), func_2(!(!(!global3.c.a))), func_2(true), global3.d);
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.d.x)) + global1.d.x), Struct_1(select(all(vec3<bool>(arg_1.x, arg_1.x, global3.c.a)) || true, global1.b.a, ~u_input.d > global4.x)), global1.c, global3.d);
    let var_1 = var_0;
    let var_2 = 2147483647i;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(u_input.b.xx, vec2<bool>(!(!select(global0.a, true, global2.a)), !global0.a));
    var var_0 = firstLeadingBit(reverseBits(~_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(0u, u_input.d, 4294967295u, u_input.d)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global4.x, u_input.d, global4.x, u_input.d), vec4<u32>(global4.x, u_input.d, 56602u, 0u), vec4<u32>(global4.x, 4294967295u, global4.x, global4.x)))));
    var_0 = ~vec4<u32>(global4.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.ww, ~vec2<u32>(0u, global4.x)), _wgslsmith_mod_vec2_u32(abs(var_0.zx), vec2<u32>(49227u, u_input.d))), 19639u, 1u);
    global2 = global1.c;
    let var_1 = vec3<u32>(select(var_0.x, _wgslsmith_add_u32(u_input.d, countOneBits(min(25250u, global4.x))), !(-1i >= u_input.c) && true), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(~1u, var_0.x ^ global4.x, ~0u, func_3(global1.d.yyy, Struct_2(-1195f, Struct_1(global2.a), global3.c, global3.d), vec4<u32>(u_input.d, 0u, var_0.x, 43045u), global3.a))), ~vec4<u32>(_wgslsmith_sub_u32(u_input.d, u_input.d), ~u_input.d, global4.x, 4294967295u)), ~(var_0.x & 0u));
    var_0 = vec4<u32>(abs(36250u), _wgslsmith_mult_u32(firstTrailingBit(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, -505f, global1.a) - global3.d.yyz), Struct_2(109f, global3.c, Struct_1(true), vec4<f32>(global1.a, global3.a, 471f, global1.a)), vec4<u32>(28667u, u_input.d, 16023u, global4.x), global3.a)), abs(min(~u_input.d, _wgslsmith_div_u32(4294967295u, 4294967295u)))), ~0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, ~11598u, u_input.d, ~54328u), vec4<u32>(~_wgslsmith_sub_u32(var_0.x, var_0.x), countOneBits(min(u_input.d, 0u)), ~(12520u ^ global4.x), countOneBits(115388u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(-1003f, global1.a)), 321f)))), max(firstLeadingBit(vec4<u32>(15153u, var_0.x, 1u, 1u)), vec4<u32>(~var_1.x, abs(u_input.d), ~global4.x, _wgslsmith_dot_vec3_u32(var_0.xzz, var_0.xxy))) >> ((vec4<u32>(var_1.x >> (4294967295u % 32u), var_1.x, ~u_input.d, ~54471u) & _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, var_1.x, global4.x, global4.x), vec4<u32>(4294967295u, global4.x, var_1.x, 29270u)), vec4<u32>(30084u, 0u, u_input.d, u_input.d) << (vec4<u32>(0u, 0u, 0u, 1u) % vec4<u32>(32u)))) % vec4<u32>(32u)), (_wgslsmith_sub_vec3_i32(select(u_input.b, vec3<i32>(u_input.a, -8406i, u_input.c), global1.c.a), u_input.b) << (vec3<u32>(global4.x & 1u, ~1u, _wgslsmith_add_u32(global4.x, 89585u)) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(5265u, global4.x, u_input.d), var_1), abs(var_0.zwz)), _wgslsmith_sub_u32(4294967295u, ~26712u), ~var_0.x) % vec3<u32>(32u)), global4.xz);
}

