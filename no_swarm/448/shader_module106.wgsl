struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(2147483647i, -49964i, 2147483647i, 2147483647i, 4622i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: bool) -> i32 {
    global0 = array<i32, 5>();
    let var_0 = ~u_input.d.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-181f - 1442f) - _wgslsmith_f_op_f32(f32(-1f) * -937f)))));
    return arg_1.a.a.x & 8950i;
}

fn func_3(arg_0: vec2<i32>) -> vec2<f32> {
    let var_0 = Struct_4(Struct_1(countOneBits(vec2<i32>(select(u_input.c.x, arg_0.x, true), -1i)), ~u_input.d.zz));
    let var_1 = Struct_4(var_0.a);
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1069f, -676f)) - _wgslsmith_f_op_f32(963f - -1755f))), _wgslsmith_f_op_f32(-1166f + 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1123f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 411f, -359f, -588f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2249f), _wgslsmith_f_op_f32(max(253f, 292f)), -1781f, _wgslsmith_f_op_f32(f32(-1f) * -553f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-898f, 820f, 707f, 575f) + vec4<f32>(-1683f, 244f, 821f, 755f)))))), vec4<bool>(true, true, true, true)))));
    return vec2<f32>(_wgslsmith_f_op_f32(max(var_2.x, -1039f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1411f - -2431f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: i32) -> bool {
    global0 = array<i32, 5>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(arg_1, _wgslsmith_f_op_vec2_f32(func_3(~vec2<i32>(global0[_wgslsmith_index_u32(1792u, 5u)], 29444i))))), vec2<f32>(_wgslsmith_f_op_f32(-770f + _wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(u_input.c.x, arg_3))).x), 144f))));
    let var_1 = Struct_2(_wgslsmith_clamp_u32(arg_2.x, max(firstLeadingBit(firstLeadingBit(u_input.a.x)), (62178u & arg_0.b.x) & ~arg_0.b.x), 27747u), arg_0, min(vec3<i32>(1i, firstTrailingBit(_wgslsmith_div_i32(u_input.c.x, 0i)), arg_0.a.x), u_input.c), 1i);
    let var_2 = Struct_1(~_wgslsmith_add_vec2_i32(var_1.b.a, vec2<i32>(_wgslsmith_sub_i32(-5052i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), abs(1i))), vec2<u32>(4473u, 14010u));
    var var_3 = var_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!vec2<bool>(u_input.d.x < 1u, select(true, false, true))), Struct_4(Struct_1(~firstTrailingBit(vec2<i32>(u_input.b, -49316i)), u_input.d.yz)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-703f)))), 1200f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -141f), _wgslsmith_f_op_f32(1703f + -232f))) + -516f));
    var var_1 = _wgslsmith_mult_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, 7349u) << (vec2<u32>(0u, u_input.d.x) % vec2<u32>(32u)), countOneBits(vec2<u32>(u_input.a.x, u_input.d.x)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.d.yx, vec2<u32>(7023u, u_input.a.x))), _wgslsmith_mult_vec2_u32(u_input.d.zz, _wgslsmith_sub_vec2_u32(vec2<u32>(20969u, ~47704u), u_input.a.yx << (~u_input.d.zy % vec2<u32>(32u)))));
    let var_2 = u_input.d.x;
    let var_3 = Struct_3(!all(vec3<bool>(func_2(Struct_1(u_input.c.xx, u_input.d.yx), vec2<f32>(-1000f, -683f), vec4<u32>(var_2, 31253u, u_input.a.x, u_input.a.x), 2147483647i), func_2(Struct_1(vec2<i32>(1i, -25191i), vec2<u32>(var_1.x, var_2)), vec2<f32>(720f, 750f), vec4<u32>(var_1.x, 9506u, u_input.d.x, var_2), 0i), true)), u_input.c, Struct_2(var_2, Struct_1(u_input.c.yz, vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(118062u, var_2)), ~var_1.x)), ~(-min(u_input.c, vec3<i32>(u_input.c.x, global0[_wgslsmith_index_u32(var_1.x, 5u)], -72242i))), u_input.c.x));
    let var_4 = !select(!select(vec3<bool>(false, false, var_3.a), !vec3<bool>(false, var_3.a, true), all(vec4<bool>(false, var_3.a, var_3.a, var_3.a))), !(!(!vec3<bool>(var_3.a, false, false))), var_3.a);
    var_0 = global0[_wgslsmith_index_u32(39278u, 5u)] | _wgslsmith_add_i32(var_3.b.x, u_input.b & func_1(vec2<bool>(true, false), Struct_4(Struct_1(u_input.c.xx, u_input.d.zy)), var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.c.a, select(~abs(-19916i), 0i, !any(vec4<bool>(var_4.x, true, var_3.a, var_4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f - _wgslsmith_f_op_f32(step(1945f, -155f))))), -vec3<i32>(~var_3.c.c.x, i32(-1i) * -global0[_wgslsmith_index_u32(u_input.a.x, 5u)], ~_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_2, 5u)], 19964i, 1i, var_3.b.x), vec4<i32>(-51983i, global0[_wgslsmith_index_u32(10251u, 5u)], 2147483647i, u_input.c.x))));
}

