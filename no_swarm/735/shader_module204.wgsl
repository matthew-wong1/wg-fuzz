struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 43881u;

var<private> global2: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(1u, 32165u, 1u), vec3<u32>(78437u, 0u, 14032u), vec3<u32>(4294967295u, 33890u, 63881u), vec3<u32>(18034u, 0u, 4294967295u), vec3<u32>(23058u, 2389u, 0u), vec3<u32>(800u, 25214u, 4294967295u), vec3<u32>(96708u, 1u, 18644u), vec3<u32>(6782u, 4294967295u, 0u), vec3<u32>(0u, 13080u, 102235u), vec3<u32>(14793u, 25661u, 31923u), vec3<u32>(4294967295u, 12215u, 1u), vec3<u32>(1601u, 4294967295u, 68445u), vec3<u32>(1u, 4294967295u, 25139u), vec3<u32>(36235u, 50318u, 0u), vec3<u32>(7955u, 0u, 4294967295u), vec3<u32>(22276u, 103338u, 1u), vec3<u32>(1876u, 0u, 3841u), vec3<u32>(4294967295u, 4275u, 1u), vec3<u32>(93388u, 1u, 12363u), vec3<u32>(39405u, 34410u, 0u), vec3<u32>(0u, 0u, 11251u), vec3<u32>(58158u, 43246u, 1u), vec3<u32>(74352u, 4294967295u, 3054u), vec3<u32>(1u, 23711u, 0u), vec3<u32>(34902u, 4294967295u, 34235u), vec3<u32>(69461u, 1u, 0u));

var<private> global3: array<Struct_1, 3>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    global0 = arg_1;
    global1 = 1u;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e, global0.e, arg_1.e) - arg_0.wzz)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1036f)) - _wgslsmith_f_op_f32(f32(-1f) * -1270f)), 2086f, -761f)));
    global3 = array<Struct_1, 3>();
    var var_1 = vec2<f32>(283f, global0.e);
    return 5437u;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<i32>) -> f32 {
    let var_0 = vec2<bool>(arg_2, all(select(select(select(vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(arg_2, false, true, arg_2)), vec4<bool>(false, arg_2, arg_2, true), vec4<bool>(true, true, true, true)), vec4<bool>(arg_2, true, !arg_2, !arg_2), true)));
    global1 = ~(~(arg_0.x & arg_1.d));
    global1 = ~_wgslsmith_clamp_u32(arg_0.x, arg_0.x, arg_1.d);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(395f + global0.e), arg_1.e, -751f, _wgslsmith_f_op_f32(-global0.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-735f, arg_1.e, arg_1.e, -117f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(630f, global0.e, _wgslsmith_f_op_f32(-777f - _wgslsmith_f_op_f32(floor(global0.e))), 300f)));
    let var_2 = vec4<i32>(1i, _wgslsmith_mod_i32(min(2147483647i, ~(15708i << (arg_1.d % 32u))), arg_3.x), abs(~_wgslsmith_clamp_i32(~13377i, -37715i, u_input.a)), arg_1.a);
    return 1801f;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(global0.e, arg_1.e, arg_0)), _wgslsmith_f_op_f32(abs(global0.e)))), arg_3.zx, !vec2<bool>(all(vec2<bool>(arg_0, false)), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(586f - arg_1.e), arg_1.e))));
    global1 = arg_1.d;
    global1 = ~(~global0.b.x ^ arg_1.b.x);
    global1 = arg_1.b.x;
    let var_1 = arg_1;
    return Struct_1(-2147483647i << (~_wgslsmith_div_u32(arg_1.d, 4294967295u) % 32u), min(countOneBits(firstTrailingBit(vec3<u32>(0u, var_1.b.x, 26392u))), reverseBits(select(vec3<u32>(global0.b.x, arg_1.b.x, 68620u), arg_1.b, false)) << (vec3<u32>(global0.b.x, countOneBits(arg_1.b.x), var_1.d | arg_1.b.x) % vec3<u32>(32u))), arg_1.c | reverseBits(vec4<i32>(arg_1.c.x, ~arg_1.c.x, 1i, 0i)), firstLeadingBit(_wgslsmith_clamp_u32(73644u, _wgslsmith_mult_u32(var_1.d, ~65473u), _wgslsmith_add_u32(firstLeadingBit(global0.b.x), var_1.b.x))), _wgslsmith_f_op_f32(step(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -201f))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = !(!select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1386f, arg_0.e)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.e, 990f, -325f), vec3<f32>(-601f, 1000f, 316f)))), vec3<f32>(_wgslsmith_div_f32(-647f, -508f), _wgslsmith_div_f32(165f, arg_1), _wgslsmith_f_op_f32(step(arg_0.e, arg_0.e)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(212f, _wgslsmith_f_op_f32(arg_0.e - arg_1), 235f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e, global0.e, -484f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(491f, arg_1, arg_0.e) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.e, 1792f, arg_0.e)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, 1369f, global0.e), vec3<f32>(-549f, 999f, -1902f), var_0.x))))))));
    let var_2 = var_0.zz;
    var var_3 = arg_0;
    let var_4 = func_3(true, func_3(var_0.x, Struct_1(var_3.a, arg_0.b, vec4<i32>(u_input.a, ~43214i, ~(-8159i), u_input.a), ~(~16100u), var_1.x), vec3<i32>(abs(arg_0.a), firstLeadingBit(global0.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, -1i, global0.c.x, 2147483647i), var_3.c)) | func_3(any(vec4<bool>(true, false, var_0.x, var_0.x)), func_3(true, arg_0, vec3<i32>(var_3.a, 1i, var_3.c.x), vec4<f32>(-714f, 1193f, -1479f, 382f)), var_3.c.wzw >> (vec3<u32>(4294967295u, 53421u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-255f, arg_1, arg_0.e, -954f)))).c.yzz, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 428f, var_3.e, arg_0.e)), vec4<f32>(_wgslsmith_f_op_f32(-global0.e), _wgslsmith_f_op_f32(1018f + -946f), _wgslsmith_f_op_f32(-var_1.x), 399f)))), -var_3.c.ywx, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, var_3.e, var_1.x, -1000f), vec4<f32>(-1200f, -721f, arg_1, arg_0.e), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(935f, var_3.e, var_3.e, global0.e) - vec4<f32>(arg_0.e, -1000f, var_1.x, -190f))))))));
    return func_3(false, Struct_1(arg_0.c.x, abs(arg_0.b), ~global0.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, arg_0.d, 13089u), reverseBits(vec4<u32>(4091u, arg_0.d, var_4.b.x, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 - global0.e))))), var_4.c.wzy, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e, 435f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -755f) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1706f, -1470f, -508f, global0.e)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_3(!(~2147483647i >= _wgslsmith_add_i32(32593i, global0.c.x)), Struct_1(1i, vec3<u32>(40714u, global0.d, firstLeadingBit(4294967295u)), ~_wgslsmith_add_vec4_i32(vec4<i32>(global0.c.x, global0.c.x, global0.a, u_input.a), vec4<i32>(24221i, global0.c.x, -30507i, -27754i)), _wgslsmith_div_u32(countOneBits(global0.b.x), global0.d), _wgslsmith_f_op_f32(func_2(vec2<u32>(68209u, global0.d), global3[_wgslsmith_index_u32(func_1(vec4<f32>(global0.e, -415f, global0.e, 172f), global3[_wgslsmith_index_u32(global0.b.x, 3u)]), 3u)], true, ~vec4<i32>(global0.c.x, u_input.a, -1i, 0i)))), vec3<i32>(~u_input.a | ~u_input.a, 0i, _wgslsmith_mult_i32(global0.c.x, _wgslsmith_mult_i32(global0.a, 2147483647i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1446f + -326f), -1000f, _wgslsmith_f_op_f32(min(-626f, global0.e)), -1106f))), 1000f);
    var var_1 = func_3(true, func_4(Struct_1(u_input.a, ~select(vec3<u32>(6850u, 0u, 83421u), vec3<u32>(global0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(true, true, true)), global0.c, var_0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.e)))), var_0.e), -reverseBits(vec3<i32>(u_input.a, func_3(true, global3[_wgslsmith_index_u32(global0.d, 3u)], var_0.c.zwy, vec4<f32>(-1100f, global0.e, -493f, 2022f)).c.x, -25902i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e, -106f, 1000f, _wgslsmith_f_op_f32(-var_0.e)))).c;
    var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(-13925i, ~u_input.a, 2147483647i & reverseBits(var_0.c.x), ~10304i), vec4<i32>(~var_1.x, reverseBits(~(40396i ^ u_input.a)), firstTrailingBit(var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, 623i, ~u_input.a, var_1.x), vec4<i32>(u_input.a, var_0.a, reverseBits(-24789i), var_0.c.x))));
    global0 = global3[_wgslsmith_index_u32(~var_0.b.x, 3u)];
    var var_2 = Struct_1(u_input.a, max(global2[_wgslsmith_index_u32(global0.b.x, 26u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4308u, global0.b.x) << (~0u % 32u), 26u)] | ~var_0.b), global0.c, ~global0.b.x, _wgslsmith_f_op_f32(select(-1069f, func_4(func_4(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.b.x, 46698u), 3u)], var_0.e), _wgslsmith_f_op_f32(global0.e * _wgslsmith_f_op_f32(func_2(vec2<u32>(global0.b.x, 1u), global3[_wgslsmith_index_u32(var_0.b.x, 3u)], true, vec4<i32>(var_0.c.x, var_1.x, 2147483647i, 51110i))))).e, any(vec3<bool>(true, true, true)))));
    global0 = global3[_wgslsmith_index_u32(abs(abs(4294967295u)), 3u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-980f * var_0.e)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-718f, -183f), vec2<f32>(var_2.e, 1472f), vec2<bool>(false, false)))))));
    global1 = 53747u;
    let var_4 = global3[_wgslsmith_index_u32(~var_2.d, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(10813u, var_0.c.wzy >> (abs(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d, 0u, global0.b.x), global2[_wgslsmith_index_u32(0u, 26u)]), var_0.b.x & var_2.b.x, ~var_4.b.x)) % vec3<u32>(32u)));
}

