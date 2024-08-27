struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> f32 {
    let var_0 = false;
    var var_1 = !any(vec2<bool>(true, true)) != (~abs(-u_input.b.x) >= 2147483647i);
    let var_2 = global0[_wgslsmith_index_u32(0u, 22u)];
    var var_3 = -_wgslsmith_dot_vec4_i32(vec4<i32>(8789i, 1i, 26409i, countOneBits(-2147483647i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b.x, 28111i, -1i, -19392i), ~vec4<i32>(u_input.b.x, 5898i, -1i, -33157i))) | u_input.b.x;
    var var_4 = 1i;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1249f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-166f)) * -1957f))))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<i32>) -> u32 {
    var var_0 = Struct_2(vec3<i32>(14957i, 1i, min(arg_2.x, -2147483647i) >> (u_input.a.x % 32u)) ^ vec3<i32>(13969i, ~67278i, 1i), Struct_1(vec2<f32>(-3412f, _wgslsmith_f_op_f32(func_3())), arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1493f, 596f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1495f * -621f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1480f)))), !select(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), vec3<u32>(abs(4294967295u), u_input.a.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(45764u, 25075u, 1u), 23445u)));
    let var_1 = max(~var_0.e.x, var_0.e.x);
    var_0 = Struct_2(_wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b.b, 22091i, 168i), arg_2.wyz)), abs(~(-vec3<i32>(1i, u_input.c, arg_1.x)))), var_0.b, _wgslsmith_f_op_vec4_f32(-var_0.c), vec2<bool>(all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, var_0.d.x, var_0.d.x, true), vec4<bool>(var_0.d.x, var_0.d.x, false, true))), false), countOneBits(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, var_0.e.x, var_0.e.x), countOneBits(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)))) & ~(~var_0.e));
    let var_2 = var_0.b;
    var var_3 = Struct_3(var_0.b);
    return ~9486u;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> i32 {
    global0 = array<vec4<u32>, 22>();
    global0 = array<vec4<u32>, 22>();
    let var_0 = false;
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_mod_i32(1i, u_input.c)), ~_wgslsmith_add_i32(u_input.c, countOneBits(~(-1i))), arg_0.a.x, u_input.b.x & (i32(-1i) * -9247i));
    var var_2 = _wgslsmith_sub_u32(~_wgslsmith_mult_u32(0u, arg_0.e.x), ~_wgslsmith_sub_u32(1247u, _wgslsmith_add_u32(0u, u_input.a.x)) ^ func_2(var_1.x, vec2<i32>(var_1.x, -6496i), _wgslsmith_div_vec4_i32(-var_1, vec4<i32>(arg_0.b.b, arg_0.b.b, var_1.x, u_input.b.x))));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 22>();
    global0 = array<vec4<u32>, 22>();
    global0 = array<vec4<u32>, 22>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-207f, 1192f), vec2<f32>(625f, 663f)))) + vec2<f32>(_wgslsmith_f_op_f32(sign(-330f)), _wgslsmith_f_op_f32(f32(-1f) * -897f))))), func_1(Struct_2(firstLeadingBit(vec3<i32>(u_input.b.x, -7278i, u_input.c)), Struct_1(vec2<f32>(-679f, 751f), u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-160f, -1906f, -1280f, -1188f)), vec2<bool>(true, true), ~(vec3<u32>(46232u, 1u, u_input.a.x) >> (vec3<u32>(1u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(247f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2436f)))), u_input.a.x));
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(u_input.a.x), 1u) ^ 15879u, 22u)], 1u);
}

