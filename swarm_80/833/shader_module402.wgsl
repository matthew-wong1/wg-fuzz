struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6>;

var<private> global1: vec4<bool>;

var<private> global2: vec3<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    return !(!select(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x)), !(!global1.wx), !select(vec2<bool>(true, false), global1.wy, global1.x)));
}

fn func_2() -> StorageBuffer {
    let var_0 = any(!select(vec2<bool>(!global1.x, !global1.x), func_3(), global1.zw));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(445f, -158f, 382f, 358f), vec4<f32>(-758f, 934f, 1736f, 1000f), vec4<bool>(true, false, var_0, false))), vec4<f32>(-1200f, 903f, -1631f, 283f))))));
    global2 = abs(countOneBits(select(~(vec3<u32>(0u, global2.x, 4294967295u) & vec3<u32>(u_input.e, 1u, 57675u)), firstLeadingBit(abs(vec3<u32>(global2.x, global2.x, 13071u))), select(select(vec3<bool>(var_0, global1.x, false), vec3<bool>(global1.x, false, var_0), vec3<bool>(var_0, true, true)), select(vec3<bool>(var_0, var_0, global1.x), vec3<bool>(global1.x, true, false), global1.wyy), global1.x | var_0))));
    var var_2 = Struct_3(var_0, -143f, select(~vec3<u32>(5879u, 1u, 53164u) | vec3<u32>(46682u, _wgslsmith_clamp_u32(u_input.e, u_input.e, 27195u), countOneBits(34863u)), ~abs(~vec3<u32>(global2.x, 27318u, 42115u)), var_0), Struct_1(var_1.x, -(_wgslsmith_mult_i32(-2147483647i, u_input.a) << (~0u % 32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(272f - var_1.x) + _wgslsmith_f_op_f32(1000f * var_1.x))))));
    global2 = vec3<u32>(u_input.c, max(u_input.c, 4294967295u), _wgslsmith_div_u32(15077u, 4294967295u));
    return StorageBuffer(var_2.b, -abs(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_2.d.b, -19049i, u_input.a, 24190i), vec4<i32>(u_input.d.x, u_input.a, var_2.d.b, u_input.a))), reverseBits(~(-(~u_input.d.xz))), vec4<u32>((u_input.e ^ var_2.c.x) ^ 3869u, var_2.c.x, ~(~(~1u)), global2.x), -vec4<i32>(-1i, var_2.d.b, abs(-2147483647i), 0i));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: i32) -> StorageBuffer {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~(~(~(~vec3<u32>(global2.x, u_input.c, global2.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(139f, -267f)))), 0i);
}

