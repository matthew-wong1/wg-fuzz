struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(i32(-2147483648)), -1549f, 28463u), Struct_2(Struct_1(6534i), -706f, 0u), Struct_2(Struct_1(-956i), -1702f, 0u));

var<private> global2: vec3<f32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-565f)), _wgslsmith_div_f32(-595f, arg_2))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-156f, 950f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-205f, arg_2)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(437f, 687f), global2.yz, false))))));
    var var_1 = vec3<i32>(-1i, arg_1.a, arg_1.a);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1064f)));
    global1 = array<Struct_2, 3>();
    global1 = array<Struct_2, 3>();
    return any(vec3<bool>(true, true, true)) == true;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<i32> {
    global1 = array<Struct_2, 3>();
    let var_0 = firstLeadingBit(~(u_input.a.x & 4294967295u)) > ~40613u;
    var var_1 = arg_0;
    global1 = array<Struct_2, 3>();
    global1 = array<Struct_2, 3>();
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, i32(-1i) * -18081i, arg_0.a), ~vec4<i32>(min(var_1.a, 0i), _wgslsmith_clamp_i32(31912i, 10355i, -1i), ~arg_1.x, ~(-2147483647i))), vec4<i32>(reverseBits(-37106i << (~u_input.a.x % 32u)), 2147483647i, -32149i, -76811i), _wgslsmith_mult_vec4_i32(abs(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, u_input.b.x, -2147483647i, 49897i), vec4<i32>(arg_0.a, 34725i, arg_0.a, u_input.b.x)), firstLeadingBit(vec4<i32>(var_1.a, u_input.b.x, 50099i, arg_1.x)))), ~vec4<i32>(1i, _wgslsmith_div_i32(u_input.b.x, -36075i), reverseBits(-28131i), 0i)));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> f32 {
    var var_0 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(-1257f - _wgslsmith_f_op_f32(round(277f))), ~97051u);
    let var_1 = arg_0.c;
    let var_2 = Struct_2(Struct_1(0i), _wgslsmith_f_op_f32(-arg_0.b), arg_0.c | ~(~abs(var_0.c)));
    var var_3 = var_0.a;
    var var_4 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -select(vec4<i32>(arg_0.a.a, 2147483647i, -2147483647i, -3588i), vec4<i32>(var_2.a.a, var_3.a, var_0.a.a, 2147483647i), false), vec4<i32>(var_3.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.a, var_0.a.a), u_input.b.xx), 45806i, arg_0.a.a), func_3(Struct_1(~u_input.b.x), _wgslsmith_clamp_vec3_i32(u_input.b << (vec3<u32>(var_0.c, 37356u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(var_3.a, 2147483647i, var_0.a.a)), _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(0i, 2147483647i, arg_0.a.a)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -832f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(~u_input.b.x);
    let var_1 = Struct_1(_wgslsmith_clamp_i32(~(-13553i), -3026i, _wgslsmith_add_i32(select(firstLeadingBit(u_input.b.x), ~(-21588i), func_1(vec3<i32>(var_0, 44384i, u_input.b.x), Struct_1(6883i), -1000f, 1i)), -(~u_input.b.x))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a.x, 20646u), 3u)], true != any(vec2<bool>(false, false))))));
    global0 = global2.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1004f, global2.x, global2.x, _wgslsmith_f_op_f32(min(-256f, global2.x)))));
    global0 = _wgslsmith_f_op_f32(-global2.x);
    let var_3 = global1[_wgslsmith_index_u32(1u, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_3.a.a, var_0, 2147483647i), countOneBits(vec3<i32>(var_0, 17307i, 2147483647i))) | 1i), u_input.a);
}

