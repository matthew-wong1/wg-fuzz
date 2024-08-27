struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(2147483647i, -1i, 38184i), Struct_1(4294967295u));

var<private> global1: vec2<u32> = vec2<u32>(22430u, 1u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> StorageBuffer {
    global0 = Struct_2(global0.a, Struct_1(global1.x));
    var var_0 = u_input.b;
    global0 = Struct_2(vec3<i32>(-5439i, ~(4161i & global0.a.x), 0i) | ~global0.a, global0.b);
    var var_1 = -((abs(global0.a) << (vec3<u32>(global0.b.a, ~global0.b.a, select(u_input.e, u_input.e, true)) % vec3<u32>(32u))) << (vec3<u32>(global1.x, min(53824u, 1u), 4294967295u << (abs(global1.x) % 32u)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_1.wz * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(244f, arg_1.x))), arg_1.x))));
    return StorageBuffer(32523i, vec2<u32>(abs(reverseBits(_wgslsmith_mod_u32(1u, 29218u))), _wgslsmith_clamp_u32(global1.x, max(1u, ~76301u), global1.x)), 990f);
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    global0 = arg_0;
    let var_0 = _wgslsmith_f_op_f32(sign(1239f));
    return func_2(any(vec4<bool>(true, true, false, _wgslsmith_f_op_f32(var_0 - 1402f) != var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1745f, -1749f, var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_div_f32(-161f, 205f)));
    let x = u_input.a;
    s_output = func_1(Struct_2(_wgslsmith_div_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(26914i, 11752i, 46803i), vec3<i32>(4595i, -63752i, 21094i))), _wgslsmith_sub_vec3_i32(global0.a, ~vec3<i32>(global0.a.x, global0.a.x, 11648i))), Struct_1(var_1.x)));
}

