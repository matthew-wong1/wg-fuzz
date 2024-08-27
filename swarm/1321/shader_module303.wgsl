struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(false)));

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-1701f, -766f, 620f), vec3<f32>(1888f, 282f, 941f), vec3<f32>(-1170f, 835f, -765f), vec3<f32>(1000f, 176f, 1274f), vec3<f32>(-990f, 357f, 625f), vec3<f32>(-1165f, 311f, -1000f));

var<private> global2: array<u32, 18> = array<u32, 18>(1u, 0u, 4294967295u, 45541u, 1u, 98222u, 0u, 24422u, 4294967295u, 23060u, 39991u, 53630u, 0u, 4294967295u, 15951u, 1u, 0u, 86086u);

var<private> global3: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(9486i, 3460i, 1i, -22693i), vec4<i32>(i32(-2147483648), -18453i, 32325i, -28243i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(-1i, -1i, 62741i, i32(-2147483648)), vec4<i32>(-1i, -46834i, 32050i, -21238i), vec4<i32>(0i, 117818i, i32(-2147483648), 26303i), vec4<i32>(83980i, -515i, i32(-2147483648), -7678i), vec4<i32>(-1i, i32(-2147483648), -1i, 8800i), vec4<i32>(i32(-2147483648), 1i, 1i, 1i), vec4<i32>(-48014i, 28049i, 2147483647i, 2147483647i), vec4<i32>(-5475i, -1i, -1i, -1i), vec4<i32>(-23985i, 23099i, -504i, 1i), vec4<i32>(-12091i, 70303i, 67707i, 43693i), vec4<i32>(21394i, -1i, 36645i, 1i), vec4<i32>(-50273i, -1i, 1i, 5670i), vec4<i32>(0i, i32(-2147483648), -76549i, i32(-2147483648)), vec4<i32>(37536i, i32(-2147483648), i32(-2147483648), 47736i), vec4<i32>(1i, -17772i, i32(-2147483648), i32(-2147483648)), vec4<i32>(28284i, -3589i, -32215i, -56728i), vec4<i32>(0i, 87378i, -35475i, 25705i), vec4<i32>(16190i, -1i, 1i, -9554i), vec4<i32>(0i, -12460i, -1i, 21434i), vec4<i32>(i32(-2147483648), -3906i, -1069i, 0i), vec4<i32>(-56161i, -54065i, 1i, 2147483647i), vec4<i32>(-3692i, 0i, 0i, -1i), vec4<i32>(20096i, 65423i, 0i, -14750i), vec4<i32>(31616i, -1i, -1i, -1i), vec4<i32>(-1i, i32(-2147483648), -1i, 1i));

var<private> global4: array<i32, 18> = array<i32, 18>(-16889i, 18943i, 24683i, -1i, i32(-2147483648), -1i, -51182i, 0i, 0i, 2147483647i, -1i, 2147483647i, i32(-2147483648), 0i, 0i, i32(-2147483648), 1i, 36189i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x | 4294967295u, global2[_wgslsmith_index_u32(countOneBits(u_input.c.x), 18u)], ~global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), ~vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 0u)), 0u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 14467u, u_input.c.x), u_input.c)) << (u_input.e % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 18u)], 6u)]), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1035f)), -221f, -456f), global1[_wgslsmith_index_u32(~(~62223u), 6u)]), !vec3<bool>(!global0.a.a.a, true, arg_0.x >= -2147483647i)))));
    global2 = array<u32, 18>();
    var var_2 = Struct_1(true && (_wgslsmith_f_op_f32(-var_1.x) > -1690f));
    global0 = Struct_3(global0.a);
    return global2[_wgslsmith_index_u32(4535u, 18u)] & ~1u;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> vec2<u32> {
    var var_0 = Struct_3(Struct_2(Struct_1(!all(vec2<bool>(global0.a.a.a, global0.a.a.a)))));
    let var_1 = Struct_3(Struct_2(Struct_1(var_0.a.a.a)));
    let var_2 = ~(~func_3(_wgslsmith_clamp_vec3_i32(u_input.b.xxw, vec3<i32>(global4[_wgslsmith_index_u32(23567u, 18u)], 21469i, arg_1), u_input.b.wwz), -global4[_wgslsmith_index_u32(1u >> (0u % 32u), 18u)]));
    global0 = var_1;
    let var_3 = global4[_wgslsmith_index_u32(~5694u ^ u_input.e.x, 18u)];
    return u_input.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = vec4<u32>(arg_2.x, select(arg_2.x, arg_2.x, !select(arg_0.x, false, !global0.a.a.a)), arg_2.x, max(func_2(vec4<u32>(36111u, 1u, 4294967295u, 0u), u_input.d).x >> (arg_2.x % 32u), ~(109576u >> (~arg_2.x % 32u))));
    var var_1 = ~63925u;
    var_0 = vec4<u32>(4294967295u, select(~(~_wgslsmith_mult_u32(u_input.e.x, arg_2.x)), var_0.x, any(vec4<bool>(true, 76792u > var_0.x, any(vec4<bool>(global0.a.a.a, false, arg_0.x, false)), global0.a.a.a))), _wgslsmith_div_u32(~(func_2(vec4<u32>(77204u, var_0.x, 28412u, u_input.a.x), 1532i).x >> (firstTrailingBit(0u) % 32u)), ~u_input.c.x), firstTrailingBit(~44644u));
    var var_2 = vec4<bool>(~max(var_0.x, _wgslsmith_mult_u32(u_input.a.x, 4294967295u)) > ~firstTrailingBit(~arg_2.x), !((countOneBits(arg_2.x) == 0u) & global0.a.a.a), true, !arg_0.x);
    var var_3 = Struct_3(Struct_2(Struct_1(all(vec4<bool>(var_2.x, var_2.x, arg_0.x, var_2.x)))));
    return Struct_3(var_3.a);
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    let var_0 = ~vec4<i32>(1i, u_input.b.x, u_input.d, -55669i);
    let var_1 = func_4(!(!select(vec3<bool>(arg_0.a.a, arg_0.a.a, true), select(vec3<bool>(false, arg_0.a.a, global0.a.a.a), vec3<bool>(false, arg_0.a.a, false), vec3<bool>(true, false, true)), global0.a.a.a)), -3009f, u_input.e >> (func_2(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)], 49050u, 65142u) | ~vec4<u32>(u_input.e.x, u_input.a.x, 1u, global2[_wgslsmith_index_u32(17371u, 18u)]), ~(-global4[_wgslsmith_index_u32(4294967295u, 18u)])) % vec2<u32>(32u)));
    let var_2 = ~(~abs(vec2<u32>(global2[_wgslsmith_index_u32(reverseBits(u_input.e.x), 18u)], func_2(vec4<u32>(global2[_wgslsmith_index_u32(1u, 18u)], 61849u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], u_input.c.x), var_0.x).x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, -536f, 1511f, -1669f))), vec4<f32>(_wgslsmith_f_op_f32(sign(146f)), _wgslsmith_f_op_f32(max(-534f, -1000f)), 210f, _wgslsmith_f_op_f32(min(185f, -871f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 373f, 1338f, -282f) - vec4<f32>(-553f, -1260f, 1627f, -295f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1706f, 2560f, -124f, 500f) * vec4<f32>(-348f, 136f, 1000f, -1796f))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_3)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_3), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1005f, var_3.x, var_3.x, var_3.x)), arg_0.a.a && true)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_3, var_3), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1926f, 393f, var_3.x, 617f))), all(vec2<bool>(var_1.a.a.a, global0.a.a.a)))))));
    return Struct_4(Struct_1(!select(false, global0.a.a.a == true, func_4(vec3<bool>(var_1.a.a.a, arg_0.a.a, var_1.a.a.a), -1198f, u_input.a).a.a.a)), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    let var_1 = func_1(Struct_2(Struct_1(false)));
    global3 = array<vec4<i32>, 28>();
    let var_2 = Struct_2(var_1.a);
    var var_3 = u_input.d;
    var var_4 = !(!(!(!select(vec3<bool>(var_2.a.a, false, global0.a.a.a), vec3<bool>(var_2.a.a, false, false), true))));
    let var_5 = func_4(vec3<bool>(!any(vec4<bool>(false, false, true, false)) & false, var_2.a.a, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1474f + _wgslsmith_f_op_f32(-138f - 1000f))) + -341f), vec2<u32>(~1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 18u)], 18u)]));
    global4 = array<i32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~abs(-global4[_wgslsmith_index_u32(u_input.a.x, 18u)]), global4[_wgslsmith_index_u32(~1u, 18u)] ^ -6680i, -10147i, firstLeadingBit(-u_input.d) << (~1u % 32u)), vec2<i32>(u_input.b.x, i32(-1i) * -1i));
}

