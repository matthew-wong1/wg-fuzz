struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<vec4<u32>, 16>;

var<private> global2: array<u32, 20> = array<u32, 20>(76795u, 0u, 74346u, 18959u, 30780u, 47598u, 30063u, 1u, 39821u, 19031u, 1u, 1u, 4294967295u, 6027u, 50217u, 4294967295u, 0u, 0u, 43525u, 4294967295u);

var<private> global3: vec4<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = ~arg_0.x;
    let var_1 = Struct_1(!(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true)), vec3<f32>(1f, _wgslsmith_f_op_f32(868f - _wgslsmith_f_op_f32(f32(-1f) * -446f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f) * -1276f)))), 66497u, abs(vec4<i32>(1i, 1i, global3.x, firstLeadingBit(global3.x))), vec2<f32>(359f, _wgslsmith_f_op_f32(-733f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1184f + -1776f) + _wgslsmith_f_op_f32(139f - -957f)))));
    global3 = vec4<i32>(_wgslsmith_add_i32(u_input.a, countOneBits(i32(-1i) * -u_input.a)), countOneBits(max(-_wgslsmith_dot_vec3_i32(global3.zxx, global3.xxz), -1i)), 0i, u_input.a);
    let var_2 = ~(global3.yy >> (_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~arg_0.ww, firstTrailingBit(arg_0.yx)), _wgslsmith_sub_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(2646u, 20u)], var_0) & vec2<u32>(4790u, global2[_wgslsmith_index_u32(u_input.b, 20u)]), vec2<u32>(arg_0.x, var_0))) % vec2<u32>(32u)));
    global2 = array<u32, 20>();
    return var_1.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: u32, arg_3: i32) -> bool {
    var var_0 = 0i;
    var var_1 = !select(!vec2<bool>(arg_0.x < 91412u, true), select(func_3(~vec4<u32>(55560u, arg_1.x, 21472u, global2[_wgslsmith_index_u32(arg_0.x, 20u)])), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false)), vec2<bool>(true, false));
    let var_2 = global0[_wgslsmith_index_u32(arg_1.x, 30u)];
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.x + var_2.b.x)))), var_2.b.x)), _wgslsmith_f_op_f32(abs(var_2.e.x)), var_2.e.x);
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(~var_2.c & (0u & var_2.c)), ~var_2.c >> (~_wgslsmith_div_u32(var_2.c >> (47287u % 32u), 4294967295u) % 32u)), 30u)];
    return ~abs(min(countOneBits(var_4.d.x), ~global3.x)) > -((u_input.a ^ _wgslsmith_dot_vec2_i32(var_4.d.xz, vec2<i32>(u_input.a, global3.x))) ^ 0i);
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    var var_0 = Struct_1(vec2<bool>(!(!func_2(global1[_wgslsmith_index_u32(u_input.b, 16u)], vec4<u32>(global2[_wgslsmith_index_u32(1u, 20u)], 29663u, global2[_wgslsmith_index_u32(1u, 20u)], 8145u), u_input.b, u_input.a)), !(!(global3.x <= 2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(629f, arg_0.x, -1000f), vec3<f32>(1861f, arg_0.x, arg_0.x)))))) + vec3<f32>(-2341f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))))), ~35120u, -(vec4<i32>(i32(-1i) * -1i, u_input.a, min(u_input.a, 1i), 1i) << (_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(24750u, 16u)], ~vec4<u32>(42623u, 1u, 1u, 95749u), global1[_wgslsmith_index_u32(u_input.b, 16u)]) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-877f, _wgslsmith_f_op_f32(-556f + arg_0.x)))));
    var_0 = global0[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(1u, 0u), abs(28674u << (0u % 32u))), 20u)]), 30u)];
    global2 = array<u32, 20>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b.x * 162f), _wgslsmith_f_op_f32(303f - -1000f), true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -695f))), _wgslsmith_div_f32(-502f, _wgslsmith_f_op_f32(-572f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))))));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<bool>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(2147483647i, _wgslsmith_mod_i32(global3.x, u_input.a));
    var var_1 = arg_3.zx;
    let var_2 = 451f;
    let var_3 = ~(~vec3<u32>(_wgslsmith_mod_u32(arg_3.x, 0u), 1u ^ (69982u & arg_3.x), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18451u, 20u)], 16u)], vec4<u32>(46371u, 25416u, var_1.x, 16039u)) & arg_0));
    return Struct_1(select(!arg_2.xy, arg_2.xy, arg_2.yy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(256f, 1000f, arg_1) + vec3<f32>(-665f, -1102f, arg_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, arg_1, 2095f)))), 4294967295u, vec4<i32>(global3.x, global3.x, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(2147483647i), firstTrailingBit(global3.x)), vec2<i32>(-23013i, global3.x)), 18124i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(229f)), _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)), true)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-972f, _wgslsmith_f_op_f32(trunc(arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    var var_0 = firstLeadingBit(11471u);
    var var_1 = true;
    var var_2 = func_4(0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(-803f, 692f)))), -475f), select(vec3<bool>(true, true, _wgslsmith_f_op_f32(select(-2062f, -822f, true)) < _wgslsmith_f_op_f32(f32(-1f) * -1249f)), select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, true), true), false), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 20u)], 20u)], 20u)], 20u)], 20u)], 0u, u_input.b << (13393u % 32u)), ~(vec3<u32>(global2[_wgslsmith_index_u32(65961u, 20u)], u_input.b, 14047u) & vec3<u32>(u_input.b, 1u, 34227u)))), 16u)]);
    var_2 = global0[_wgslsmith_index_u32(4294967295u, 30u)];
    global3 = _wgslsmith_add_vec4_i32(var_2.d, ~select(~(-vec4<i32>(var_2.d.x, var_2.d.x, -2147483647i, 2147483647i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(4933i, -44174i, var_2.d.x, var_2.d.x), vec4<i32>(-49466i, var_2.d.x, u_input.a, u_input.a)), var_2.d), _wgslsmith_f_op_f32(ceil(-175f)) < -1000f));
    let var_3 = _wgslsmith_f_op_f32(var_2.b.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-702f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(min(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(u_input.b, 20u)], 2343u), global2[_wgslsmith_index_u32(12241u, 20u)] | var_2.c), _wgslsmith_dot_vec3_u32(vec3<u32>(24323u, var_2.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.c, 20u)], 20u)]), ~vec3<u32>(var_2.c, 1u, u_input.b)), (15663u << (global2[_wgslsmith_index_u32(4294967295u, 20u)] % 32u)) | abs(27384u)), ~reverseBits(vec3<u32>(var_2.c, u_input.b, 4294967295u)) ^ ~vec3<u32>(u_input.b, 4294967295u, u_input.b)), firstLeadingBit(max(vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 20u)], var_2.c, 4294967295u) & ~vec3<u32>(u_input.b, 0u, 20204u), firstLeadingBit(select(vec3<u32>(u_input.b, u_input.b, var_2.c), vec3<u32>(0u, global2[_wgslsmith_index_u32(22769u, 20u)], 105031u), vec3<bool>(var_2.a.x, var_2.a.x, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(func_1(vec2<f32>(var_3, var_3))))), 1000f), i32(-1i) * -select(firstTrailingBit(1i), -2147483647i, var_2.a.x));
}

