struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-5436i, -11697i, 2147483647i, 18260i), 1252f);

var<private> global1: i32 = -37034i;

var<private> global2: vec2<f32>;

var<private> global3: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(-global0.a.x);
    let var_1 = Struct_4(28381i);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1806f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2503f) + _wgslsmith_f_op_f32(global2.x - -836f)))));
    let var_3 = 48673u;
    global1 = var_0.a;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(664f - global0.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -156f) + _wgslsmith_f_op_f32(-var_2.a)) - _wgslsmith_f_op_f32(-346f + -233f))));
}

fn func_3(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-global2.x));
    let var_1 = select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, all(vec2<bool>(true, false)), any(vec4<bool>(true, false, true, true)), true), !(true | (arg_0.a == 2147483647i))), vec4<bool>(!any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true, true, !any(vec3<bool>(true, true, true))), select(vec4<bool>(any(vec2<bool>(true, true)) == all(vec4<bool>(false, true, true, false)), true & (-564f < var_0.a), _wgslsmith_f_op_f32(max(1092f, var_0.a)) >= var_0.a, true), vec4<bool>(min(0u, 0u) > (0u << (u_input.a % 32u)), true, !any(vec4<bool>(false, false, false, true)), true), !select(-1852f >= var_0.a, any(vec2<bool>(true, false)), true)));
    let var_2 = !var_1.xw;
    let var_3 = 8550u;
    let var_4 = firstTrailingBit(vec3<i32>(arg_0.a, global0.a.x, global0.a.x));
    return vec3<bool>(var_1.x, true, true);
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = select(global0.a.x, _wgslsmith_clamp_i32(firstTrailingBit(global0.a.x), 1i, global0.a.x >> (1u % 32u)), (-1i <= ~global0.a.x) && (!(-1i > global0.a.x) && false));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 1204f) + _wgslsmith_f_op_f32(f32(-1f) * -470f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.x)) + _wgslsmith_f_op_f32(-arg_0.x))))));
    global1 = -global0.a.x;
    var var_2 = func_2();
    var var_3 = Struct_5(Struct_3(146f, ~(vec2<i32>(-1i) * -global0.a.wy)), select(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, 60492u > u_input.a, true)), any(func_3(Struct_4(-1i)))), vec2<u32>(59568u, ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 4294967295u)))), Struct_1(-select(_wgslsmith_clamp_vec4_i32(global0.a, global0.a, vec4<i32>(global0.a.x, global0.a.x, -1i, global0.a.x)), ~global0.a, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + -1603f)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -618f) + _wgslsmith_f_op_f32(1846f * global0.b)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(global0.a.wz, global0.a.ww, select(vec2<bool>(true, true), vec2<bool>(false, true), global0.b <= arg_0.x))));
    return Struct_3(-315f, -_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(var_3.a.b, vec2<i32>(global0.a.x, 0i)), vec2<i32>(-1i, -1i)), var_3.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    global1 = firstTrailingBit(-(i32(-1i) * -2147483647i));
    var var_1 = vec4<f32>(-891f, global0.b, global0.b, _wgslsmith_f_op_f32(-1f));
    var var_2 = Struct_5(func_1(vec2<f32>(_wgslsmith_f_op_f32(-702f * -491f), global0.b)), select(!func_3(Struct_4(global0.a.x)), func_3(Struct_4(~global0.a.x)), vec3<bool>(true, (global0.a.x | global0.a.x) == -global0.a.x, all(vec4<bool>(true, true, true, true)))), vec2<u32>(u_input.a, ~1u), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_add_i32(global0.a.x, global0.a.x), -1i, -1i << (u_input.a % 32u)), global0.a), global0.b), Struct_3(_wgslsmith_f_op_f32(-var_1.x), global0.a.yz));
    var var_3 = ~_wgslsmith_mult_u32(28483u | u_input.a, _wgslsmith_sub_u32(~(~4294967295u), 20027u));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, ~(~vec3<u32>(firstTrailingBit(u_input.a), ~u_input.a, var_2.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2().a, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f * global0.b)), var_1.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, global0.b, -203f, var_2.d.b), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, global0.b, -1000f, 1000f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global0.b, var_1.x, 2009f)))), reverseBits(vec4<u32>(_wgslsmith_div_u32(~0u, reverseBits(var_2.c.x)), 76472u, ~u_input.a, ~4294967295u)), -2147483647i);
}

