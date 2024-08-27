struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(414f, 278f, -125f);

var<private> global1: array<Struct_2, 5>;

var<private> global2: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = global2.b;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global0.x, _wgslsmith_f_op_f32(select(-508f, var_0.a, true)))));
    var var_1 = 1i;
    let var_2 = vec4<u32>(~min(~global2.c.c, _wgslsmith_mod_u32(u_input.a.x, 1u)), var_0.c, 1u, 32547u);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, -391f, true)) * -326f))), -1093f, arg_0, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -1633f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.a)), var_0.a)));
    return Struct_3(Struct_2(arg_2.xx), Struct_1(_wgslsmith_f_op_f32(240f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) * _wgslsmith_f_op_f32(903f * var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(189f, 1233f))), _wgslsmith_mult_u32(~34171u, min(min(1u, 10175u), 68354u))), global2.c);
}

fn func_1() -> vec3<f32> {
    let var_0 = global1[_wgslsmith_index_u32(~select(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(25461u, 43293u)), 0u, false) << (~4294967295u % 32u), 5u)];
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1016f, -216f, -348f) - vec3<f32>(global0.x, global0.x, -1166f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global2.c.a, global0.x) - vec3<f32>(-469f, global0.x, -1121f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global2.b.b, 2402f)))))))));
    var var_1 = func_2(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(461f))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(6865i, global2.a.a.x, 51610i, 0i), vec4<i32>(u_input.b, 4143i, var_0.a.x, -1i)), vec4<i32>(var_0.a.x, global2.a.a.x, global2.a.a.x, abs(6018i))), vec4<i32>(~(~var_0.a.x), _wgslsmith_clamp_i32(u_input.b, i32(-1i) * -2147483647i, -2147483647i), select(9698i, global2.a.a.x, false) >> (firstTrailingBit(1u) % 32u), ~(-var_0.a.x))));
    var_1 = func_2(_wgslsmith_f_op_f32(var_1.c.a - var_1.c.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f - global2.b.a)), 552f)), countOneBits(vec4<i32>(var_0.a.x, ~2147483647i, abs(13164i), 2147483647i)) >> (~(~vec4<u32>(global2.b.c, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)));
    global1 = array<Struct_2, 5>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1397f * -773f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.a, 899f)))), vec3<f32>(var_1.b.b, _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-global0.x))));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> vec3<u32> {
    global0 = _wgslsmith_div_vec3_f32(arg_2, _wgslsmith_f_op_vec3_f32(sign(arg_2)));
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.x + global2.c.b), -148f)), _wgslsmith_f_op_f32(f32(-1f) * -1012f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1098f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-599f - global0.x)))), 643f)), firstTrailingBit(-_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, global2.a.a.x, u_input.b, 31078i), -vec4<i32>(-3908i, 1i, u_input.b, global2.a.a.x)))).a;
    global0 = _wgslsmith_f_op_vec3_f32(-arg_2);
    let var_1 = global0.x;
    let var_2 = _wgslsmith_f_op_f32(-arg_2.x);
    return arg_1.wzy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()))))));
    var var_0 = countOneBits(func_3(_wgslsmith_mod_u32(u_input.a.x, 13680u), u_input.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1549f, 381f, global0.x) * vec3<f32>(-743f, global0.x, -3707f)), vec3<f32>(global2.c.a, -561f, 621f)), u_input.a)) ^ max(_wgslsmith_div_vec3_u32(vec3<u32>(~global2.b.c, firstTrailingBit(global2.b.c), ~20675u), vec3<u32>(global2.b.c, ~23394u, u_input.a.x)), vec3<u32>(_wgslsmith_mod_u32(global2.b.c, ~1u), global2.b.c, _wgslsmith_clamp_u32(min(1u, u_input.a.x), ~global2.b.c, 1u)));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global2.c.b, 663f)))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(-722f, global0.x), _wgslsmith_f_op_f32(trunc(-401f)), _wgslsmith_f_op_f32(-global2.b.b))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-337f)), -714f, -2413f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(294f, 422f, 141f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(346f, global0.x, 1811f) - vec3<f32>(global2.c.b, -436f, 1000f))))));
    global2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), 237f, -(~vec4<i32>(u_input.b, 16212i, 1i, u_input.b) ^ max(-vec4<i32>(global2.a.a.x, global2.a.a.x, 540i, global2.a.a.x), vec4<i32>(u_input.b, global2.a.a.x, -2147483647i, u_input.b))));
    var var_1 = global2.a.a.x;
    var var_2 = 1u;
    var_1 = select(~(i32(-1i) * -global2.a.a.x), min(u_input.b, 24173i), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~global2.a.a.x))), 17934i, var_0.yz, 29715i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yz)) * global0.zy));
}

