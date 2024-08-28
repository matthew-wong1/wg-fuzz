struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-73627i, 32780i, 1i, 24365i);

var<private> global1: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(516u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(128039u, 0u), vec2<u32>(4294967295u, 96779u), vec2<u32>(34247u, 1u));

var<private> global2: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> Struct_3 {
    return Struct_3(select(_wgslsmith_clamp_vec3_u32(~u_input.c.wzz, ~u_input.c.yww, vec3<u32>(u_input.c.x, u_input.c.x, u_input.b.x)), ~(vec3<u32>(0u, 17697u, u_input.c.x) << (vec3<u32>(9468u, 7876u, u_input.c.x) % vec3<u32>(32u))), u_input.a.x == 15935i) & ~abs(vec3<u32>(u_input.b.x, u_input.c.x, 10665u)), global0.x, global0.x);
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    global2 = _wgslsmith_f_op_f32(586f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, 1074f)), _wgslsmith_f_op_f32(-594f - -681f)), 1325f)))));
    let var_0 = func_2();
    var var_1 = Struct_4(var_0, _wgslsmith_f_op_f32(f32(-1f) * -187f));
    let var_2 = vec3<i32>(firstTrailingBit(global0.x), u_input.a.x, -1i);
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -909f), _wgslsmith_f_op_f32(-1997f * 315f)), vec2<f32>(-1439f, _wgslsmith_div_f32(751f, -295f)))))));
    return StorageBuffer(var_2, vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(select(vec4<i32>(29855i, var_0.b, var_0.c, var_2.x), vec4<i32>(u_input.a.x, -47296i, var_1.a.b, var_0.c), vec4<bool>(false, false, false, false)), vec4<i32>(1i, u_input.a.x, global0.x, 0i) << (u_input.c % vec4<u32>(32u))), abs(u_input.c.www), abs(-global0.x), ~(~firstLeadingBit(var_0.a.x) << (10569u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~(~(~vec3<u32>(5949u, 0u, u_input.c.x)) & ~_wgslsmith_mod_vec3_u32(u_input.c.zwx, u_input.c.zyw)), 1i, -2147483647i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -382f)), _wgslsmith_f_op_f32(f32(-1f) * -2063f), _wgslsmith_f_op_f32(-1f));
    let var_2 = true;
    var var_3 = Struct_2(u_input.c.zzw, true, vec3<bool>(false, true, false));
    global1 = array<vec2<u32>, 5>();
    global2 = _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_1.x));
    var var_4 = Struct_3(~vec3<u32>(~var_3.a.x, 0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(14767u, var_3.a.x, var_0.a.x, 57400u), u_input.c)), 2147483647i, _wgslsmith_add_i32(-6107i, abs(u_input.a.x)));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(var_3.a.x, var_0.a.x, 4294967295u), var_4.a), countOneBits(u_input.c.yww)), ~(var_4.a >> (var_4.a % vec3<u32>(32u)))));
}

