struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(25904u, 0u, 22534u), vec3<u32>(4418u, 0u, 1563u), vec3<u32>(0u, 1u, 0u), vec3<u32>(30214u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u));

var<private> global1: vec4<f32> = vec4<f32>(616f, 640f, 1893f, -552f);

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<f32>(-605f, -1003f, 855f, 944f)), Struct_1(vec4<f32>(-611f, 1252f, 707f, 362f)), Struct_1(vec4<f32>(-1177f, -1394f, -943f, -643f)), Struct_1(vec4<f32>(-750f, 828f, 803f, -1000f)), Struct_1(vec4<f32>(102f, 1236f, 281f, 113f)), Struct_1(vec4<f32>(422f, 736f, -592f, 1117f)), Struct_1(vec4<f32>(1937f, -254f, 552f, -140f)), Struct_1(vec4<f32>(1436f, -108f, -419f, 1000f)), Struct_1(vec4<f32>(176f, 582f, 458f, 655f)), Struct_1(vec4<f32>(1413f, 609f, -1866f, 1000f)), Struct_1(vec4<f32>(-516f, -446f, -567f, 1273f)), Struct_1(vec4<f32>(-1725f, 774f, 1000f, 1850f)), Struct_1(vec4<f32>(-784f, -136f, -374f, 1515f)), Struct_1(vec4<f32>(-1439f, -941f, 534f, -1000f)), Struct_1(vec4<f32>(-789f, -764f, 301f, -1505f)), Struct_1(vec4<f32>(343f, 445f, -139f, -995f)));

var<private> global3: Struct_3;

var<private> global4: u32 = 1u;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = arg_0;
    global1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1170f)), var_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a.x))), -853f), arg_3.a));
    let var_1 = -1042f;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1505f - arg_0.a.a.x))), -282f, _wgslsmith_f_op_f32(-var_1)))));
    global0 = array<vec3<u32>, 5>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x), -464f);
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(global3.a.a, vec4<f32>(-469f, global1.x, 342f, -636f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.a.a.x, global3.a.a.x, 865f, -521f)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-956f - -684f)))) - var_0.a.x) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_3(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], vec4<i32>(u_input.e, -1i, u_input.d.x, -7226i), vec4<u32>(4294967295u, 68351u, global3.c.x, 0u)), vec2<bool>(any(vec4<bool>(true, true, true, true)), false), global2[_wgslsmith_index_u32(reverseBits(u_input.c.x), 16u)], Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1003f, -1757f, global3.a.a.x, global1.x)))))));
    let var_2 = global3.b.yw;
    var var_3 = Struct_3(var_0, global3.b, ~u_input.b);
    var var_4 = vec3<f32>(1302f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(218f + arg_0), -812f)), global1.x);
    return var_3.c.x > var_3.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<u32> {
    global2 = array<Struct_1, 16>();
    global3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-749f)), arg_0.a.x, global3.a.a.x, _wgslsmith_f_op_f32(func_3(Struct_3(global2[_wgslsmith_index_u32(0u, 16u)], vec4<i32>(2147483647i, u_input.e, global3.b.x, u_input.a.x), global3.c), vec2<bool>(arg_1.x, false), Struct_1(global3.a.a), Struct_1(vec4<f32>(492f, 1070f, -1143f, 310f))))))), vec4<i32>(-1i, 38224i, _wgslsmith_mult_i32(-29923i, u_input.e), ~_wgslsmith_add_i32(~(-15653i), 0i)), vec4<u32>(9566u, abs(_wgslsmith_dot_vec4_u32(u_input.b, global3.c)) >> (0u % 32u), global3.c.x, global3.c.x));
    var var_0 = all(vec2<bool>(!arg_1.x, false));
    let var_1 = Struct_2(arg_0.a.yxz, vec3<i32>(~(~abs(4161i)), _wgslsmith_clamp_i32(-reverseBits(u_input.d.x), ~reverseBits(u_input.e), _wgslsmith_dot_vec2_i32(max(vec2<i32>(0i, 0i), global3.b.yw), vec2<i32>(u_input.d.x, 12827i))), firstLeadingBit(-global3.b.x)), max(u_input.d.x, -(u_input.d.x ^ u_input.a.x) >> (1u % 32u)), _wgslsmith_add_vec2_i32(global3.b.zz ^ ~_wgslsmith_mod_vec2_i32(u_input.d, global3.b.yz), vec2<i32>(-1i) * -(global3.b.xy << (vec2<u32>(0u, 1u) % vec2<u32>(32u)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), -1418f, _wgslsmith_f_op_f32(min(557f, _wgslsmith_f_op_f32(-var_1.a.x))))), _wgslsmith_mod_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, -45647i, -20504i) >> (vec3<u32>(global3.c.x, 41271u, u_input.b.x) % vec3<u32>(32u)), firstTrailingBit(u_input.a.yxx)), var_1.b), 1i, -var_1.b.xx);
    return ~min(~vec4<u32>(global3.c.x, _wgslsmith_clamp_u32(global3.c.x, 21136u, u_input.b.x), _wgslsmith_div_u32(803u, global3.c.x), u_input.b.x), u_input.b);
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-273f - 1000f)));
    let var_1 = any(select(!select(vec2<bool>(arg_2, false), select(vec2<bool>(false, arg_2), vec2<bool>(false, arg_2), arg_2), arg_2), select(select(select(vec2<bool>(true, arg_2), vec2<bool>(true, false), vec2<bool>(arg_2, true)), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2), true), vec2<bool>(true, true)), vec2<bool>(arg_2, true), vec2<bool>(arg_2, !arg_2)), vec2<bool>(!(global1.x < global1.x), any(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), true)))));
    let var_2 = global2[_wgslsmith_index_u32(u_input.c.x, 16u)];
    let var_3 = abs(~(~min(select(-1i, 9239i, arg_2), -1i)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.a.a.zx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-544f, global1.x), vec2<f32>(var_2.a.x, -494f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.a.x, global1.x) + vec2<f32>(global1.x, -1000f))))));
    return func_4(global2[_wgslsmith_index_u32(~abs(arg_1.c.x) >> (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~67710u, 71348u, global3.c.x), u_input.c.x ^ 1u) % 32u), 16u)], !select(!(!vec2<bool>(true, arg_2)), vec2<bool>(all(vec4<bool>(false, arg_2, true, arg_2)), any(vec4<bool>(arg_2, arg_2, true, var_1))), var_1)).x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<i32>) -> f32 {
    let var_0 = 1i | arg_2.x;
    global4 = func_5(global1.x, Struct_3(arg_1.a, vec4<i32>(2147483647i, select(var_0, u_input.a.x, true) >> (u_input.c.x % 32u), 37777i, ~u_input.a.x | countOneBits(u_input.a.x)), func_4(global3.a, vec2<bool>(select(false, true, true), func_2(arg_0.a.x)))), !any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -456f) + arg_1.a.a.x), -1833f, 269f), arg_1.b.xyy, 1i, arg_2);
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(arg_1.a.a.xww));
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1243f - var_2.x))), -373f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-722f * var_2.x), _wgslsmith_f_op_f32(sign(arg_1.a.a.x)), all(vec3<bool>(false, false, true)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, false, false, true), true), vec4<bool>(all(vec4<bool>(true, false, true, true)), true, select(false, true, false), false)), vec4<bool>((reverseBits(222i) << (global3.c.x % 32u)) == ~(-7121i), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 50620u, 1u, 33227u), u_input.b) >= ~abs(36504u), any(vec4<bool>(1i <= global3.b.x, true, true, true)), !all(vec4<bool>(true, true, true, true))), vec4<bool>(true, !(!any(vec3<bool>(false, true, true))), !(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(global3.a.a.x, global3.a.a.x, 2148f, global1.x)), Struct_3(Struct_1(global3.a.a), global3.b, u_input.b), vec2<i32>(-1i, global3.b.x))) >= global1.x), ~(i32(-1i) * -15095i) <= ~u_input.d.x));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-global3.a.a)), abs(~global3.b), vec4<u32>(u_input.c.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(~29336u, firstLeadingBit(global3.c.x), ~global3.c.x), ~u_input.b.x), 20669u, 1u));
    let var_2 = global1.x;
    var var_3 = u_input.a | ~var_1.b;
    var var_4 = vec3<f32>(-1639f, _wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_f_op_f32(-var_1.a.a.x));
    global3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -935f), vec3<u32>(min(~var_1.c.x, ~4294967295u << (~u_input.b.x % 32u)), ~4294967295u, 4294967295u), global3.b.yzy, 30418i);
}

