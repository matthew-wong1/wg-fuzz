struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_5, arg_3: Struct_4) -> i32 {
    var var_0 = Struct_1(any(arg_3.c.zxw));
    let var_1 = arg_3.b.c;
    let var_2 = Struct_5(_wgslsmith_div_u32(~abs(119888u), arg_0), _wgslsmith_div_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(arg_2.b, global2.c)), ~min(_wgslsmith_mult_vec3_u32(u_input.a, global2.c), ~u_input.a)));
    let var_3 = _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(arg_2.a, arg_3.b.a, 10249u) >> (vec3<u32>(var_2.b.x, 4294967295u, var_2.a) % vec3<u32>(32u))), arg_2.b)) | _wgslsmith_mult_u32(~_wgslsmith_mod_u32(select(u_input.d, 13635u, global1.a), ~4294967295u), _wgslsmith_div_u32(~(~var_2.a), max(firstLeadingBit(global2.d.x), 26483u)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -360f) * -182f);
    return 1i;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = Struct_1(!global2.b.a);
    var var_0 = Struct_1(global2.b.a);
    let var_1 = Struct_4(vec2<i32>(_wgslsmith_mult_i32(select(11774i, global0.x, true), global2.a.x), func_3(global2.c.x, 33395i, Struct_5(1u, vec3<u32>(3262u, 33667u, 9834u)), Struct_4(global2.a.yz, Struct_3(0u, 813f, vec4<f32>(-2023f, -1747f, 1828f, -1000f), arg_0), vec4<bool>(global2.b.a, global1.a, true, var_0.a)))) | -select(-vec2<i32>(u_input.b, global2.a.x), global2.a.yx, true), Struct_3(arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1770f, _wgslsmith_f_op_f32(f32(-1f) * -250f)) + -1509f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(263f, -1384f, -276f, -1378f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-760f, -150f, -1467f, 175f))))), global2.d.x), select(!vec4<bool>(any(vec2<bool>(false, false)), global1.a, true, true), vec4<bool>(!var_0.a, all(!vec3<bool>(false, global2.b.a, var_0.a)), (20748u & arg_0) < global2.d.x, any(vec3<bool>(false, false, var_0.a))), all(!(!vec3<bool>(global1.a, true, true)))));
    var var_2 = var_1.b;
    var var_3 = _wgslsmith_div_u32(global2.c.x, abs(124818u));
    return global2.b;
}

fn func_1() -> Struct_2 {
    global1 = Struct_1(4294967295u == global2.c.x);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1092f, 841f)), 1306f, false)))))));
    global1 = func_2(4294967295u);
    global1 = Struct_1(global1.a);
    var var_1 = Struct_4(select(-global2.a.zy, countOneBits(countOneBits(~vec2<i32>(3966i, -1i))), !select(select(vec2<bool>(global1.a, global1.a), vec2<bool>(global2.b.a, global1.a), true), select(vec2<bool>(false, global1.a), vec2<bool>(false, global1.a), vec2<bool>(true, global1.a)), vec2<bool>(global2.b.a, false))), Struct_3(_wgslsmith_dot_vec3_u32(~global2.c, max(vec3<u32>(1u, global2.d.x, u_input.d), u_input.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - -912f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-444f + 1329f), _wgslsmith_f_op_f32(round(var_0)), _wgslsmith_div_f32(729f, var_0), -1062f)), global2.c.x), !select(select(vec4<bool>(true, global1.a, false, false), select(vec4<bool>(global2.b.a, global1.a, global2.b.a, global2.b.a), vec4<bool>(global1.a, global1.a, global2.b.a, false), vec4<bool>(true, false, false, global1.a)), false), vec4<bool>(true, all(vec4<bool>(global1.a, false, global1.a, true)), true && global1.a, global2.d.x > 73597u), !(!global1.a)));
    return Struct_2(-vec3<i32>(_wgslsmith_sub_i32(~(-85640i), global0.x), 1i, _wgslsmith_mod_i32(-4903i, _wgslsmith_sub_i32(35940i, global2.a.x))), global2.b, vec3<u32>(var_1.b.a, firstTrailingBit(54422u), ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(14222u, u_input.a.x), vec2<u32>(var_1.b.d, 30936u)), 53892u, false)), ~(~vec2<u32>(select(global2.d.x, var_1.b.a, global1.a), 1u & global2.c.x)));
}

fn func_4(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_clamp_i32(i32(-1i) * -(~(-1i)), 2147483647i, abs(-global2.a.x));
    var var_1 = Struct_5(arg_0.d.x, arg_0.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1222f, -1208f) + _wgslsmith_f_op_f32(f32(-1f) * -598f)), 1f, -1156f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(118f + -579f))))) * vec4<f32>(-719f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(984f - -1000f), -1803f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-788f, -2579f)) + _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1027f + -616f)), -1437f));
    global2 = func_1();
    global2 = arg_0;
    return -38878i;
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = 10162u;
    global1 = global2.b;
    var var_1 = vec2<bool>(true, any(vec2<bool>(global1.a, ~0u <= _wgslsmith_sub_u32(u_input.d, u_input.a.x))));
    let var_2 = 1i;
    let var_3 = -853f;
    return Struct_1(false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_4(func_1()), ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(19221u, global2.c.x, 30589u, 1u), countOneBits(vec4<u32>(global2.d.x, global2.d.x, global2.d.x, u_input.d))), ~firstLeadingBit(vec4<u32>(global2.c.x, u_input.a.x, 0u, global2.d.x))), global2.a.x);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1113f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(735f, 247f))))), global1.a)) - _wgslsmith_f_op_f32(abs(840f)));
    let var_1 = Struct_3(u_input.c, 1789f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(343f, 261f, 1765f, var_0), vec4<f32>(649f, -1572f, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 164f, var_0)))))), ~(firstTrailingBit(global2.c.x) | _wgslsmith_clamp_u32(~40987u, select(4294967295u, 27358u, global1.a), _wgslsmith_div_u32(57100u, u_input.a.x))));
    let var_2 = select(select(select(select(vec4<bool>(global2.b.a, true, global2.b.a, global1.a), !vec4<bool>(global1.a, true, true, false), true), !select(vec4<bool>(global1.a, global1.a, true, global1.a), vec4<bool>(global1.a, global2.b.a, global2.b.a, false), vec4<bool>(true, global1.a, global1.a, global2.b.a)), !select(vec4<bool>(global1.a, false, global1.a, false), vec4<bool>(global1.a, global2.b.a, global1.a, global1.a), false)), vec4<bool>(false, _wgslsmith_add_u32(var_1.a, global2.c.x) >= ~var_1.a, true && any(vec3<bool>(global1.a, global2.b.a, true)), !(1i != u_input.b)), global2.b.a), vec4<bool>(!(!(1u > var_1.a)), global2.b.a, !(!(!global2.b.a)), func_2(1u).a), global2.b.a);
    global1 = global2.b;
    global2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec2_i32(-global2.a.xx, _wgslsmith_sub_vec2_i32(vec2<i32>(global2.a.x, global0.x), global2.a.zz) | global2.a.yy), global2.a, global0.x, vec4<f32>(_wgslsmith_f_op_f32(floor(1555f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) - _wgslsmith_f_op_f32(-770f + var_0))), 1f, -2840f));
}

