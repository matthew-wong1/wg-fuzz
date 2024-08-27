struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 8824u;

var<private> global1: vec3<u32>;

var<private> global2: array<bool, 22>;

var<private> global3: vec4<u32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = ~(~select(vec3<u32>(~0u, ~global3.x, global1.x), reverseBits(~global3.yzz), false));
    var var_0 = global2[_wgslsmith_index_u32(1u, 22u)];
    let var_1 = arg_0;
    var var_2 = vec2<u32>(~(~(~global3.x)), global3.x);
    global2 = array<bool, 22>();
    return arg_0;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    global2 = array<bool, 22>();
    global0 = _wgslsmith_add_u32(global3.x, 23292u);
    global3 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(42604u, global1.x, 0u, global1.x) << (vec4<u32>(1u, global1.x, global1.x, global3.x) % vec4<u32>(32u)), vec4<u32>(global1.x, global1.x, global3.x, 63645u)), _wgslsmith_add_vec4_u32(~vec4<u32>(global3.x, 19912u, 47967u, 32141u), max(vec4<u32>(global1.x, 62919u, 41793u, global1.x), vec4<u32>(global1.x, 1u, 4294967295u, global1.x))) & ~reverseBits(vec4<u32>(global1.x, global3.x, 76225u, global1.x))), firstLeadingBit(select(_wgslsmith_add_vec4_u32(~vec4<u32>(global1.x, 68379u, global3.x, global1.x), vec4<u32>(global3.x, 934u, global1.x, 26802u)), ~vec4<u32>(0u, global1.x, global3.x, global3.x), true)));
    let var_0 = arg_0;
    return var_0;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = func_3(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-964f, 840f), vec2<f32>(1499f, 1120f)))), vec2<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)), 500f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(613f, 1601f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(736f, 242f)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-403f, -2203f), vec2<f32>(-772f, 445f)) * vec2<f32>(-1527f, -1625f)), vec2<i32>(-u_input.a, 1i), 825f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-481f, -686f), vec2<f32>(978f, -540f))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-146f + -403f) + _wgslsmith_f_op_f32(-var_0.a.x)), func_3(Struct_1(vec2<f32>(var_0.a.x, 1284f), vec2<i32>(var_0.b.x, var_0.b.x), var_0.a.x, var_0.a)).a.x)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1762f, 248f))), _wgslsmith_f_op_vec2_f32(step(var_0.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)))))));
    global1 = firstLeadingBit(abs(~firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, global1.x, global3.x), vec3<u32>(global1.x, global1.x, arg_0)))));
    var var_2 = all(select(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(arg_0, 22u)]), vec3<bool>(true, true, true), select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 22u)], global2[_wgslsmith_index_u32(global3.x, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 22u)], global2[_wgslsmith_index_u32(global3.x, 22u)], true), vec3<bool>(false, false, global2[_wgslsmith_index_u32(global1.x, 22u)]))), !vec3<bool>(true, any(vec4<bool>(global2[_wgslsmith_index_u32(global3.x, 22u)], global2[_wgslsmith_index_u32(arg_0, 22u)], false, global2[_wgslsmith_index_u32(1u, 22u)])), global2[_wgslsmith_index_u32(global1.x, 22u)] | global2[_wgslsmith_index_u32(37239u, 22u)]), vec3<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(global1.x, 22u)], global2[_wgslsmith_index_u32(global3.x, 22u)], true, global2[_wgslsmith_index_u32(5774u, 22u)])), true, !(!global2[_wgslsmith_index_u32(0u, 22u)]))));
    global1 = vec3<u32>(~_wgslsmith_clamp_u32(abs(global1.x), _wgslsmith_dot_vec2_u32(global1.yx, vec2<u32>(global3.x, 10759u) & vec2<u32>(4951u, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 42767u, arg_0, arg_0), max(vec4<u32>(arg_0, 0u, arg_0, global3.x), vec4<u32>(arg_0, global1.x, arg_0, 56203u)))), 4294967295u, global3.x);
    return func_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_div_f32(729f, 503f))), 112f), vec2<i32>(-58726i, -(~15865i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x - var_0.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c, var_0.a.x)) + var_1.a.x)), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.d.x)), _wgslsmith_f_op_f32(-1569f * func_3(Struct_1(var_1.a, var_1.b, var_0.d.x, var_0.d)).c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(36586u);
    let var_1 = reverseBits(vec4<u32>(global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, global1.x), _wgslsmith_div_u32(global3.x, global3.x), global3.x, _wgslsmith_sub_u32(global1.x, global3.x)), min(vec4<u32>(global3.x, 0u, global3.x, 12757u), vec4<u32>(4294967295u, 4294967295u, global1.x, global1.x) ^ vec4<u32>(global1.x, 21683u, 94877u, global3.x))), global1.x, 1u));
    let var_2 = !any(!select(select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(72796u, 22u)]), vec2<bool>(true, true), global2[_wgslsmith_index_u32(69967u, 22u)]), !vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 22u)]), !vec2<bool>(false, global2[_wgslsmith_index_u32(global3.x, 22u)])));
    var var_3 = func_1(global3.x);
    let var_4 = _wgslsmith_f_op_f32(step(1725f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.b.x, -1302i), var_0.b), ~_wgslsmith_sub_vec2_i32(vec2<i32>(var_3.b.x, 15029i), var_0.b >> (vec2<u32>(global3.x, global1.x) % vec2<u32>(32u))) & (max(max(vec2<i32>(32486i, 2147483647i), var_0.b), vec2<i32>(var_3.b.x, -32880i)) | firstLeadingBit(_wgslsmith_div_vec2_i32(var_3.b, var_3.b))), _wgslsmith_mult_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(-vec3<i32>(47882i, var_3.b.x, var_0.b.x), select(vec3<i32>(var_0.b.x, 2147483647i, 0i), vec3<i32>(u_input.a, 1i, u_input.a), vec3<bool>(true, global2[_wgslsmith_index_u32(global3.x, 22u)], true)))), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(var_0.b.x, var_3.b.x, 27704i), vec3<i32>(-1i, 2147483647i, u_input.a)), vec3<i32>(~2147483647i, ~u_input.a, -7396i))), _wgslsmith_mult_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.x, 1055i, -6886i) << (vec3<u32>(global1.x, global1.x, var_1.x) % vec3<u32>(32u)), min(vec3<i32>(1i, var_3.b.x, -12445i), vec3<i32>(var_3.b.x, var_0.b.x, u_input.a)), -vec3<i32>(u_input.a, 2147483647i, -2147483647i))), ~(-_wgslsmith_add_vec3_i32(vec3<i32>(var_3.b.x, -1i, u_input.a), vec3<i32>(27470i, var_3.b.x, -30997i)))));
}

