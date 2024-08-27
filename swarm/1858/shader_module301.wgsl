struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: u32 = 42971u;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<bool, 18> = array<bool, 18>(true, false, false, true, true, false, true, true, true, true, true, true, false, false, false, true, true, false);

var<private> global4: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-376f, -421f, -1000f), vec3<f32>(-2198f, -132f, 375f), vec3<f32>(-528f, -3093f, -143f), vec3<f32>(-1000f, -410f, 991f), vec3<f32>(-818f, 1077f, 733f), vec3<f32>(-2082f, 175f, -131f), vec3<f32>(-1128f, 118f, 962f), vec3<f32>(593f, 311f, -1205f), vec3<f32>(752f, -159f, -1236f), vec3<f32>(-681f, -959f, 654f), vec3<f32>(-412f, 688f, 319f), vec3<f32>(-508f, 1419f, 919f), vec3<f32>(-1321f, -755f, -1000f), vec3<f32>(-826f, -539f, 701f), vec3<f32>(-1444f, -1411f, -133f), vec3<f32>(-286f, 1372f, -1360f), vec3<f32>(-405f, -281f, -1905f), vec3<f32>(1212f, -537f, 365f), vec3<f32>(173f, -178f, -173f), vec3<f32>(330f, -1000f, 985f), vec3<f32>(1256f, 1000f, 528f), vec3<f32>(189f, -2581f, -2253f), vec3<f32>(208f, -795f, -237f), vec3<f32>(-1132f, 1768f, -1088f), vec3<f32>(-365f, 1718f, 343f), vec3<f32>(-580f, 126f, -530f), vec3<f32>(-594f, -649f, 238f), vec3<f32>(1000f, 598f, 718f));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = u_input.c;
    let var_1 = ~_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(1i, reverseBits(2930i), 0i)), _wgslsmith_mult_vec3_i32(arg_1.a.yyx, vec3<i32>(arg_0.x, arg_0.x, u_input.b)) >> (select(u_input.a << (u_input.a % vec3<u32>(32u)), ~u_input.a, global2.x & global2.x) % vec3<u32>(32u)));
    global2 = vec2<bool>(!global3[_wgslsmith_index_u32(firstTrailingBit(~(~u_input.c)), 18u)], !global2.x);
    global1 = 0u;
    var var_2 = 2886u;
    return countOneBits(_wgslsmith_mod_vec4_i32(-(~arg_1.a ^ arg_3.a), vec4<i32>(arg_0.x, arg_3.a.x, -52899i, var_1)));
}

fn func_3() -> bool {
    var var_0 = u_input.a.x;
    var var_1 = firstTrailingBit(vec4<u32>(u_input.c, 4294967295u, ~(_wgslsmith_div_u32(389u, u_input.a.x) >> (~0u % 32u)), 468u));
    var_0 = abs(u_input.a.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(-850f)), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 24u)])), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c << (_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(u_input.c, u_input.a.x)) % 32u), countOneBits(~u_input.a.x), ~0u) & (1u | _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), _wgslsmith_mult_vec2_u32(u_input.a.zx, vec2<u32>(var_1.x, var_1.x)))), 24u)], -1181f);
    let var_3 = !vec4<bool>(all(vec4<bool>(u_input.a.x >= u_input.c, global2.x, true, all(vec2<bool>(global3[_wgslsmith_index_u32(var_1.x, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)])))), true, global2.x, global2.x);
    return false;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = !(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 24u)] > 381f, true, any(vec4<bool>(true, false, global2.x, global2.x)), !global2.x), select(!vec4<bool>(global2.x, global3[_wgslsmith_index_u32(u_input.a.x, 18u)], true, false), select(vec4<bool>(true, global3[_wgslsmith_index_u32(12868u, 18u)], false, global3[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<bool>(global2.x, false, global3[_wgslsmith_index_u32(u_input.a.x, 18u)], false), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 18u)], false, false)), global3[_wgslsmith_index_u32(u_input.a.x, 18u)]), func_3()));
    var var_1 = firstLeadingBit(select(~u_input.a, vec3<u32>(u_input.a.x, 44765u, u_input.c), vec3<bool>(true, true, true)) ^ firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, 111037u))) >> (u_input.a % vec3<u32>(32u));
    var var_2 = (~min(6266u, u_input.a.x) ^ var_1.x) & u_input.c;
    global2 = var_0.ww;
    let var_3 = !(!var_0.wz);
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: vec4<i32>) -> vec4<i32> {
    let var_0 = !select(select(vec4<bool>(any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 18u)], true, true)), global2.x, !global2.x, !global3[_wgslsmith_index_u32(u_input.c, 18u)]), select(!vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(false, global3[_wgslsmith_index_u32(arg_1.x, 18u)], global2.x, global3[_wgslsmith_index_u32(10460u, 18u)]), select(global3[_wgslsmith_index_u32(u_input.c, 18u)], global3[_wgslsmith_index_u32(0u, 18u)], global2.x)), vec4<bool>(true, !global2.x, all(vec2<bool>(true, false)), true)), select(select(!vec4<bool>(global2.x, global2.x, global2.x, true), !vec4<bool>(global3[_wgslsmith_index_u32(arg_1.x, 18u)], global2.x, false, global2.x), select(vec4<bool>(false, true, true, false), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 18u)], global2.x, false, false), global3[_wgslsmith_index_u32(4294967295u, 18u)])), vec4<bool>(global2.x || true, false, true, func_3()), !vec4<bool>(global3[_wgslsmith_index_u32(1u, 18u)], true, true, global3[_wgslsmith_index_u32(arg_1.x, 18u)])), !vec4<bool>(all(vec2<bool>(true, true)), true, global3[_wgslsmith_index_u32(u_input.a.x, 18u)], true));
    var var_1 = _wgslsmith_f_op_f32(round(782f));
    let var_2 = (u_input.a.x ^ ~(~arg_1.x & max(arg_1.x, arg_1.x))) << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(min(u_input.a.zz, vec2<u32>(52906u, u_input.c))), vec2<u32>(arg_1.x, 1u)), u_input.a.zy) % 32u);
    var var_3 = arg_1.wxy;
    let var_4 = Struct_1(select(vec4<i32>(arg_3.x, u_input.d ^ -arg_0.a.x, arg_3.x, firstLeadingBit(i32(-1i) * -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, _wgslsmith_add_i32(27480i, 0i), ~arg_0.a.x), max(vec4<i32>(1i, u_input.d, 0i, 1i) & arg_0.a, _wgslsmith_clamp_vec4_i32(arg_0.a, arg_3, vec4<i32>(u_input.d, 30716i, 14837i, 43788i))), vec4<i32>(-2147483647i, select(-1i, -3162i, global2.x), _wgslsmith_mult_i32(1i, -1i), ~(-2147483647i))), !select(var_0, select(vec4<bool>(false, false, var_0.x, true), var_0, var_0), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b.x, 2383f, arg_0.d, 2627f)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), -1045f, 696f, arg_2), !var_0)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-724f, -252f, 108f, arg_0.d), arg_0.b))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(33325u, 24u)], arg_2, false)), -268f, _wgslsmith_f_op_f32(853f + arg_0.b.x)))), vec2<f32>(-202f, global0[_wgslsmith_index_u32(2005u, 24u)]), -1185f);
    return ((((var_4.a >> (arg_1 % vec4<u32>(32u))) | vec4<i32>(arg_0.a.x, 13961i, arg_0.a.x, arg_3.x)) ^ (_wgslsmith_div_vec4_i32(arg_3, var_4.a) ^ (vec4<i32>(0i, arg_3.x, u_input.d, -1i) ^ var_4.a))) & arg_3) ^ vec4<i32>(arg_3.x, max(arg_3.x, ~firstLeadingBit(1i)), u_input.b, reverseBits(arg_0.a.x >> (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(min(~vec4<i32>(u_input.d, u_input.d, 36947i, u_input.b) ^ func_1(vec2<i32>(u_input.b, u_input.d), Struct_1(vec4<i32>(u_input.b, 101i, u_input.b, 2147483647i), vec4<f32>(1638f, 186f, global0[_wgslsmith_index_u32(72329u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), vec2<f32>(1007f, 722f), global0[_wgslsmith_index_u32(50812u, 24u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 589f, global0[_wgslsmith_index_u32(23974u, 24u)]), Struct_1(vec4<i32>(-4309i, 59379i, u_input.d, 0i), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 423f, -1672f, global0[_wgslsmith_index_u32(33404u, 24u)]), vec2<f32>(990f, global0[_wgslsmith_index_u32(12435u, 24u)]), global0[_wgslsmith_index_u32(0u, 24u)])), firstTrailingBit(vec4<i32>(75779i, 1i, u_input.b, -2529i) & vec4<i32>(-2147483647i, 10161i, u_input.b, u_input.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-415f, global0[_wgslsmith_index_u32(3705u, 24u)], 438f, 102f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1454f, 664f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]) * vec4<f32>(1000f, 563f, -1493f, 931f))) + vec4<f32>(1f, _wgslsmith_div_f32(-1565f, global0[_wgslsmith_index_u32(u_input.c, 24u)]), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1420u, 24u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1663f, 385f)) + vec2<f32>(global0[_wgslsmith_index_u32(func_2(vec2<i32>(u_input.d, u_input.d)), 24u)], global0[_wgslsmith_index_u32(5970u >> (29u % 32u), 24u)])), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(abs(u_input.a.x) ^ 17622u, 24u)]))), max(abs(~select(vec4<u32>(u_input.c, 1u, 1u, 4294967295u), vec4<u32>(u_input.a.x, 0u, u_input.c, u_input.a.x), true)), min(vec4<u32>(1u, firstLeadingBit(4294967295u), 1u & u_input.a.x, _wgslsmith_add_u32(4294967295u, 0u)), ~(~vec4<u32>(u_input.c, 0u, 0u, 24626u)))), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~abs(abs(46217u)), 24u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 24u)]))), global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), true)), vec4<i32>(_wgslsmith_sub_i32(abs(~u_input.d), _wgslsmith_mult_i32(-u_input.d, firstTrailingBit(0i))), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, u_input.d, u_input.b), select(vec3<i32>(u_input.d, -1i, 12552i), vec3<i32>(1i, 49191i, u_input.d), vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.c, 18u)]))) << (_wgslsmith_mult_u32(1u | u_input.c, u_input.c) % 32u), _wgslsmith_add_i32(firstTrailingBit(-12769i), select(0i, -2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 18u)]) ^ u_input.b), u_input.d));
    global1 = u_input.a.x;
    let var_1 = firstLeadingBit(u_input.c);
    global1 = ~(~(11580u & u_input.c));
    global4 = array<vec3<f32>, 28>();
    global3 = array<bool, 18>();
    global2 = select(!(!vec2<bool>(global2.x, all(vec2<bool>(true, global3[_wgslsmith_index_u32(var_1, 18u)])))), vec2<bool>(any(!vec4<bool>(global2.x, global3[_wgslsmith_index_u32(4294967295u, 18u)], global2.x, true)) | all(select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, true, global3[_wgslsmith_index_u32(60705u, 18u)]), false)), true), global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(1i, -1736f, -(~var_0), firstLeadingBit(firstTrailingBit(firstTrailingBit(~var_0.xyw))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(var_1, var_1)) | countOneBits(~0u)));
}

