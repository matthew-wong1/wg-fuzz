struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 18>;

var<private> global2: vec3<f32>;

var<private> global3: array<u32, 18>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1056f + -394f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c.x, -1995f))))), _wgslsmith_div_vec3_f32(arg_0.b.yxw, arg_0.c));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_i32(-vec2<i32>(0i ^ arg_0.d.x, firstTrailingBit(53741i)), arg_0.d.zy));
    var var_2 = !vec4<bool>(!((arg_0.a.x <= u_input.c) && false), true, _wgslsmith_f_op_f32(max(var_0.b, var_0.a)) == arg_0.c.x, true);
    let var_3 = Struct_2((i32(-1i) * -_wgslsmith_mod_i32(arg_0.d.x, u_input.c)) << (~(~71962u) % 32u));
    var var_4 = arg_0;
    return _wgslsmith_clamp_u32(~18337u, _wgslsmith_dot_vec3_u32(~(~select(vec3<u32>(0u, 25726u, global3[_wgslsmith_index_u32(58554u, 18u)]), vec3<u32>(u_input.a.x, 4294967295u, u_input.b), var_2.wxw)), ~vec3<u32>(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 34540u), 64613u, ~48250u)), max(0u, (global3[_wgslsmith_index_u32(countOneBits(u_input.d), 18u)] & ~11901u) & u_input.d));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(1u << (_wgslsmith_clamp_u32(1u, abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39633u, 18u)], 18u)], global3[_wgslsmith_index_u32(u_input.d, 18u)], 4294967295u), reverseBits(vec3<u32>(23514u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], global3[_wgslsmith_index_u32(u_input.d, 18u)])))), 0u) % 32u), 18u)];
    let var_1 = reverseBits(func_2(Struct_1(abs(firstTrailingBit(vec4<i32>(-41670i, 13560i, arg_1.x, -2147483647i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 1806f, 752f, global2.x) + vec4<f32>(651f, var_0.b, var_0.c.x, 1198f)), vec4<f32>(global2.x, 782f, var_0.b, 724f)), var_0.c, ~(~vec3<i32>(8228i, -28774i, 59584i)))));
    var var_2 = ~abs(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.d, 1u, global3[_wgslsmith_index_u32(14890u, 18u)], 77045u), ~vec4<u32>(18126u, 60184u, 1u, 16046u), true), vec4<u32>(var_1, min(u_input.d, 1u), u_input.b, ~70128u)));
    var var_3 = ~(-33939i);
    global3 = array<u32, 18>();
    return arg_1.x | 1i;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = !(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_mult_vec4_i32(arg_0.a, vec4<i32>(51887i, -abs(_wgslsmith_sub_i32(38114i, arg_0.d.x)), ~_wgslsmith_div_i32(18017i, func_1(Struct_2(u_input.c), arg_0.d.xy)), _wgslsmith_dot_vec2_i32(select(arg_0.a.xy, vec2<i32>(2147483647i, arg_2.a), vec2<bool>(false, false)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.c) | arg_0.d.yy, _wgslsmith_mod_vec2_i32(arg_0.d.zz, vec2<i32>(1i, u_input.c))))));
    let var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(var_1.yyw, vec3<i32>(abs(42354i), 0i >> (reverseBits(0u) % 32u), 1i)), _wgslsmith_dot_vec2_i32(var_1.xw, ~vec2<i32>(~var_1.x, countOneBits(1i))));
    let var_3 = countOneBits(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.d, 18u)], 4294967295u), vec3<u32>(u_input.a.x, 80349u, 39855u), var_0.x), vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 18u)], 4294967295u, 43400u)), 0u)), 18u)]);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) + arg_0.b.x);
    return ~abs(min(_wgslsmith_mult_i32(arg_2.a, -18702i), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var var_1 = -_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(~(~vec3<i32>(u_input.c, u_input.c, u_input.c)), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(0i, u_input.c, u_input.c))), vec3<i32>(u_input.c & 0i, 2147483647i, u_input.c));
    let var_2 = true;
    let var_3 = abs(_wgslsmith_div_vec3_i32(-(vec3<i32>(1i, -2147483647i, -1i) >> (vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 18u)], 18u)], 4294967295u, u_input.d) % vec3<u32>(32u))), vec3<i32>(var_1.x, 42725i, var_1.x) ^ abs(vec3<i32>(u_input.c, -50984i, 2147483647i)))) ^ vec3<i32>(~u_input.c, _wgslsmith_add_i32(func_1(Struct_2(-1i), _wgslsmith_mod_vec2_i32(var_1.zx, vec2<i32>(var_1.x, var_1.x))), -2147483647i), ~func_3(Struct_1(vec4<i32>(var_1.x, -1i, 0i, u_input.c), vec4<f32>(global2.x, global2.x, 1371f, global2.x), vec3<f32>(-898f, global2.x, -514f), vec3<i32>(u_input.c, var_1.x, u_input.c)), _wgslsmith_f_op_vec2_f32(-global2.zz), Struct_2(var_1.x)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1044f)))));
    var var_5 = any(!(!vec4<bool>(var_2 || false, !var_2, var_2 & false, 9012u >= u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, var_3.x | abs(-22781i));
}

