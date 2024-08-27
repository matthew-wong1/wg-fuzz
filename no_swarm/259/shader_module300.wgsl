struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: f32 = 716f;

var<private> global2: array<bool, 23> = array<bool, 23>(true, false, true, true, true, false, true, false, true, false, true, false, false, true, true, true, true, true, true, true, false, true, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<u32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1513f) * global0.c.x) + -849f));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f + global0.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-2575f)), -1000f), -623f))));
    let var_1 = vec2<i32>(global0.a.c, _wgslsmith_add_i32(((global0.b.c.b.x << (4294967295u % 32u)) ^ -u_input.a.x) >> (firstTrailingBit(_wgslsmith_div_u32(4294967295u, 53294u)) % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.a.c, u_input.a.x), 2147483647i)));
    global2 = array<bool, 23>();
    global1 = -1000f;
    return vec2<u32>(u_input.c, 63934u);
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = any(vec2<bool>(global2[_wgslsmith_index_u32(~u_input.c, 23u)], any(!vec4<bool>(true, global0.a.a, true, global0.b.c.a))));
    let var_1 = ~func_3();
    var var_2 = u_input.b.x;
    var_2 = 1i;
    global2 = array<bool, 23>();
    return true;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: u32) -> u32 {
    var var_0 = (arg_2 | 28459u) >= ~4294967295u;
    global0 = Struct_4(global0.a, Struct_3(u_input.a.yx, global0.c.x, global0.b.c), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)))))), ~select(-33904i, ~_wgslsmith_sub_i32(-36453i, -38777i), arg_0.x | !global0.b.c.a));
    var_0 = any(select(vec2<bool>(false, true), vec2<bool>(true, global0.a.a), select(vec2<bool>(true, !global0.b.c.a), !arg_0.zw, func_2(global0.c.x))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1187f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1426f)))))))));
    let var_2 = Struct_2(-1179f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a.b - var_1))))), global0.b.a);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    var var_1 = countOneBits(firstTrailingBit(u_input.b.x));
    var_1 = 696i;
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(55368u), ~(~13579u), _wgslsmith_div_u32(func_1(vec4<bool>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(u_input.c, 23u)], true, true), u_input.b.x, 1u), ~10176u), abs(u_input.c)), vec4<u32>(4294967295u, 0u, ~u_input.c, u_input.c)), vec4<u32>(max(29600u, _wgslsmith_dot_vec2_u32(vec2<u32>(19376u, u_input.c) << (vec2<u32>(0u, 22391u) % vec2<u32>(32u)), ~vec2<u32>(u_input.c, u_input.c))), 827u, 4294967295u, 1u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1000f, global0.a.b)))))) <= _wgslsmith_f_op_f32(f32(-1f) * -191f);
    var_0 = global0.a.c >> (~1u % 32u);
    var var_4 = !(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(0u | u_input.c, 23u)] & true, -1000f > _wgslsmith_f_op_f32(-129f + global0.c.x)));
    global1 = _wgslsmith_f_op_f32(trunc(global0.b.b));
    global0 = Struct_4(global0.a, global0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c * global0.c))) - global0.c), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~vec2<u32>(41776u, _wgslsmith_sub_u32(u_input.c, u_input.c)), _wgslsmith_mult_vec2_u32(abs(~vec2<u32>(56631u, 11917u)), ~(~vec2<u32>(63887u, u_input.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-626f, 466f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-364f, 832f), vec2<f32>(global0.c.x, global0.c.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-733f, global0.a.b) * global0.c.xz))) + vec2<f32>(global0.a.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(406f - 1000f))))), vec2<f32>(-737f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.b, global0.b.b) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-599f)), _wgslsmith_div_f32(-798f, global0.a.b))))), -u_input.a.x ^ -1i, _wgslsmith_f_op_f32(floor(-145f)));
}

