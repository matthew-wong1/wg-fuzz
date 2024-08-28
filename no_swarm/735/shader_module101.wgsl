struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec4<f32> = vec4<f32>(-1011f, -1930f, 2283f, 589f);

var<private> global2: Struct_5 = Struct_5(vec4<f32>(-619f, 1000f, 1475f, -1095f), 1u);

var<private> global3: vec4<bool>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>) -> StorageBuffer {
    return StorageBuffer(global2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -1i, global0.x, -707i) << (abs(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(45420u, global2.b, 3272u, 0u), vec4<u32>(54457u, 0u, global2.b, 54239u), vec4<u32>(global2.b, 23022u, global2.b, 37324u)))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(firstLeadingBit(~vec4<i32>(-25840i, 0i, -19279i, -10939i) & -vec4<i32>(1i, u_input.a.x, 1i, u_input.a.x)), -vec4<i32>(21410i, -1i, ~17784i, 1i)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-874f + 1397f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_f_op_f32(f32(-1f) * -485f));
    var var_2 = global0.x;
    var var_3 = vec2<f32>(global2.a.x, -1017f);
    var var_4 = _wgslsmith_mult_u32(global2.b, global2.b);
    global0 = reverseBits(-firstLeadingBit(vec4<i32>(12216i, 24996i, -1i, 27071i))) | _wgslsmith_mod_vec4_i32(var_0, var_0);
    let x = u_input.a;
    s_output = func_1(vec4<bool>(true, true, !select(true, global3.x, all(global3.xwy)), 750f != _wgslsmith_f_op_f32(-1350f * _wgslsmith_f_op_f32(var_1.x * 1047f))), !(!vec4<bool>(global0.x < var_0.x, global3.x, false, global3.x)));
}

