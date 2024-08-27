struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(1u, vec4<f32>(-2031f, 1569f, -1163f, -942f), vec2<u32>(44565u, 34906u), vec4<u32>(1u, 71879u, 44133u, 0u), vec3<i32>(-8034i, 0i, 58137i));

var<private> global2: bool = true;

var<private> global3: array<vec3<bool>, 29>;

var<private> global4: vec3<u32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global1.b.ww);
    let var_1 = Struct_1(0u, global1.b, ~(~firstTrailingBit(~u_input.b.yw)), ~global1.d, _wgslsmith_div_vec3_i32(global1.e | (global1.e | vec3<i32>(global1.e.x, -1i, 1i)), -global1.e ^ global1.e) ^ vec3<i32>(i32(-1i) * -1487i, _wgslsmith_sub_i32(~global1.e.x, global1.e.x >> (26817u % 32u)), max(~global1.e.x, i32(-1i) * -2147483647i)));
    global1 = Struct_1(~u_input.b.x, vec4<f32>(var_0.x, global1.b.x, global1.b.x, 1014f), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, var_1.d.x) ^ (13781u << (var_1.a % 32u)), ~u_input.a << (~global1.d.x % 32u)), _wgslsmith_div_u32(~(~4294967295u), _wgslsmith_clamp_u32(1u, reverseBits(u_input.b.x), var_1.a))), ~select(global1.d, var_1.d, true), vec3<i32>(var_1.e.x, -11057i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(35772i, global1.e.x, var_1.e.x, 13795i), vec4<i32>(var_1.e.x, var_1.e.x, -19472i, -38129i) & vec4<i32>(-1i, var_1.e.x, 4325i, global1.e.x)))));
    let var_2 = -_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i << (global1.a % 32u), 0i), vec2<i32>(26331i, 21671i) ^ (var_1.e.zz & global1.e.zy)), global1.e.yx);
    let var_3 = 295f;
    let x = u_input.a;
    s_output = StorageBuffer(-24704i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(abs(379f)))), vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b.x), 1000f)))), var_1.b.x));
}

