struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(-370f, 11438u, vec2<i32>(18676i, -1i), false, 59375u), Struct_2(407f, 0u, vec2<i32>(i32(-2147483648), -8438i), true, 30154u), Struct_2(401f, 0u, vec2<i32>(61595i, -19295i), false, 1u), Struct_2(678f, 110610u, vec2<i32>(-1i, 2147483647i), false, 24374u), Struct_2(-1245f, 4294967295u, vec2<i32>(-1i, 1i), false, 39991u), Struct_2(1000f, 56610u, vec2<i32>(0i, 2147483647i), false, 4294967295u), Struct_2(859f, 1u, vec2<i32>(-19782i, -22902i), false, 0u), Struct_2(585f, 1u, vec2<i32>(0i, -63298i), true, 57448u), Struct_2(-1500f, 27110u, vec2<i32>(29009i, -1i), true, 60071u), Struct_2(-1000f, 34538u, vec2<i32>(0i, -8631i), false, 58189u), Struct_2(340f, 26781u, vec2<i32>(-38794i, 2147483647i), true, 14839u), Struct_2(-1835f, 11479u, vec2<i32>(-1i, i32(-2147483648)), true, 2776u), Struct_2(-147f, 4294967295u, vec2<i32>(i32(-2147483648), -15609i), true, 1u), Struct_2(2805f, 4294967295u, vec2<i32>(7811i, -18928i), true, 0u));

var<private> global2: vec2<u32>;

var<private> global3: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(1u, 67174u, 26722u, 0u), vec4<u32>(4294967295u, 60970u, 20816u, 4294967295u), vec4<u32>(38503u, 23465u, 45458u, 69005u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<u32> {
    global1 = array<Struct_2, 14>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a * global0.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - _wgslsmith_f_op_f32(max(global0.a, global0.a)))))));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -218f, _wgslsmith_f_op_f32(step(var_0.x, -1000f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, -647f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(759f, -461f, var_0.x), vec3<f32>(global0.a, var_0.x, -111f)))), vec3<bool>(true, true || global0.d, any(vec4<bool>(false, true, true, true))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(206f, global0.a, 1000f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 688f, -1604f) - vec3<f32>(var_0.x, 578f, global0.a))))), vec3<bool>(true, true, true)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, _wgslsmith_f_op_f32(643f + _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(step(1000f, global0.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1387f)), _wgslsmith_f_op_f32(round(1000f)), global0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, global0.a))))), _wgslsmith_f_op_f32(f32(-1f) * -732f)));
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(firstLeadingBit(1u) | ~(~global0.e), ~(u_input.c.x << (40113u % 32u)), (global2.x << ((global0.b | global2.x) % 32u)) >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, u_input.d), reverseBits(global2.x)) % 32u)), u_input.c, min(u_input.c | _wgslsmith_div_vec3_u32(~u_input.c, vec3<u32>(1u, u_input.c.x, 4294967295u)), ~(~firstLeadingBit(u_input.c))));
}

fn func_2() -> u32 {
    let var_0 = !global0.d;
    global2 = _wgslsmith_add_vec2_u32(u_input.c.zz, _wgslsmith_mult_vec2_u32(u_input.c.xy, u_input.c.xz)) | u_input.c.yx;
    let var_1 = vec4<bool>(global0.d, any(!(!(!vec3<bool>(false, var_0, true)))), false, ~(~u_input.d) != ~_wgslsmith_dot_vec3_u32(u_input.c, func_3()));
    global0 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(~29597u, ~global0.e), 14u)];
    let var_2 = -abs(vec4<i32>(~(~(-1i)), 1i, abs(-2147483647i | u_input.b), 0i));
    return firstTrailingBit(12213u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    var var_0 = global0.b ^ 0u;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_mult_i32(firstLeadingBit(u_input.a), ~global0.c.x & ~23341i);
    global1 = array<Struct_2, 14>();
    var var_3 = arg_0.c;
    return _wgslsmith_mult_u32(4982u, ~(countOneBits(arg_0.a.x) | ~65139u) >> ((~reverseBits(0u) >> (arg_2.e % 32u)) % 32u));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec3<bool>) -> vec4<f32> {
    let var_0 = func_4(Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(0u, 67190u, global0.b)), select(0u, 8096u, arg_3.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1534f, 459f, 1000f, 718f), vec4<f32>(global0.a, global0.a, arg_2.x, arg_1)))), vec3<i32>(reverseBits(u_input.a), 2147483647i, max(-32449i, global0.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, global0.a) * vec2<f32>(-1593f, arg_2.x)))), Struct_3(global3[_wgslsmith_index_u32(u_input.c.x, 3u)], vec3<u32>(func_2(), 4294967295u, ~arg_0.x)), Struct_2(-365f, 28387u, ~global0.c >> (max(vec2<u32>(40741u, 36360u), vec2<u32>(4294967295u, u_input.c.x)) % vec2<u32>(32u)), all(arg_3.xz), global0.e)) ^ ~_wgslsmith_add_u32(28050u, ~_wgslsmith_mult_u32(4294967295u, global0.b));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(step(-547f, _wgslsmith_f_op_f32(-1306f * 409f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), -115f, !(global0.d & arg_3.x)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) * -765f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1600f))))), _wgslsmith_f_op_f32(ceil(-1116f))));
    let var_2 = Struct_1(~vec2<u32>(var_0, 4294967295u), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -980f), _wgslsmith_f_op_f32(arg_2.x + var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_1)))), _wgslsmith_f_op_f32(-1299f + arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - var_1.x)))), -vec3<i32>(u_input.b, 2147483647i, 0i) | vec3<i32>(0i, -5443i, _wgslsmith_sub_i32(1i, 0i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xz), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-490f, arg_1)))), arg_2)));
    var var_3 = _wgslsmith_sub_u32(~(~(~arg_0.x)), 25710u) | ~1u;
    global3 = array<vec4<u32>, 3>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(var_1.x - global0.a), _wgslsmith_f_op_f32(776f * 109f), _wgslsmith_f_op_f32(var_2.b.x - 191f))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(floor(1539f)), _wgslsmith_f_op_f32(-var_2.d.x)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.x, var_2.b.x, -152f, arg_2.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 14>();
    let var_0 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(trunc(global0.a)));
    let var_1 = global0.c.x;
    var var_2 = Struct_1(u_input.c.yy, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-2086f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)), 210f, var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(22856u, 63449u, 2577u), var_0, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, 1842f))), select(vec3<bool>(global0.d, global0.d, global0.d), vec3<bool>(global0.d, global0.d, global0.d), false))))), ~vec3<i32>(-abs(u_input.a), ~36109i, global0.c.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2127f, global0.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 2520f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(145f, global0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.a))))))));
    let var_3 = 1u;
    let var_4 = ~5582u;
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((vec3<u32>(select(var_3, var_4, global0.d), ~var_3, 1u) << (select(abs(u_input.c), vec3<u32>(4294967295u, u_input.d, 93437u), !global0.d) % vec3<u32>(32u))) << (u_input.c % vec3<u32>(32u)), ~min(vec3<u32>(1u, 8808u, 4294967295u), vec3<u32>(select(global0.e, 16208u, true), var_2.a.x, var_4))), 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b.ywz) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.x, -1785f, var_0) + vec3<f32>(1000f, -266f, var_2.b.x)))))), -1000f);
}

