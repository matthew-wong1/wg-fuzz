struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: bool,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<vec3<bool>, 19>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> vec4<bool> {
    let var_0 = ~(~_wgslsmith_dot_vec4_u32(~max(vec4<u32>(32514u, 0u, 0u, 4294967295u), vec4<u32>(40219u, 1u, 3349u, 39466u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 105054u, 13660u), vec4<u32>(1u, 167789u, 16912u, 1u)), vec4<u32>(87334u, 4294967295u, 2469u, 4294967295u), firstLeadingBit(vec4<u32>(29437u, 27610u, 0u, 1u)))));
    return vec4<bool>(all(select(!select(vec4<bool>(arg_1.e, arg_1.c, global1.c, arg_1.e), vec4<bool>(global2.e, arg_1.c, true, false), vec4<bool>(global1.e, global1.c, false, global2.c)), select(select(vec4<bool>(false, arg_1.c, global1.c, global2.e), vec4<bool>(true, false, arg_1.c, true), false), select(vec4<bool>(true, global1.e, false, global2.e), vec4<bool>(false, false, true, arg_1.c), global1.e), false), true)), true, true, var_0 < abs(1u));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> bool {
    global2 = Struct_1(global1.a, vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -388f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.a.x, -1334f)))), !(!global1.c) | any(select(func_3(global2.d.x, Struct_1(vec4<f32>(arg_1.x, global1.a.x, 283f, global2.b.x), vec3<f32>(global1.b.x, 1002f, 1163f), false, vec4<i32>(12503i, -65285i, u_input.a.x, global1.d.x), false), 0i), select(vec4<bool>(false, global2.c, global1.e, global1.c), vec4<bool>(global2.c, false, arg_0, global1.c), vec4<bool>(global1.c, false, false, global2.c)), func_3(-1i, Struct_1(global2.a, global2.b, global1.c, global2.d, false), global2.d.x))), vec4<i32>(-25485i, ~1i, global2.d.x, _wgslsmith_clamp_i32(-11382i, 2147483647i, global1.d.x) ^ (i32(-1i) * -1i)), false);
    let var_0 = func_3(global2.d.x, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1000f, global1.a.x, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, global1.a.x, -1000f, 1949f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-375f, global1.a.x, -958f)))) * _wgslsmith_f_op_vec3_f32(-global1.b)), false, vec4<i32>(_wgslsmith_add_i32(global2.d.x, u_input.a.x), _wgslsmith_mod_i32(-global1.d.x, 1i), 3840i, global2.d.x), !(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(1u, 7u)], vec2<u32>(2006u, 0u)) > max(1u, 7426u))), global1.d.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), 1f, -255f, 1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, global1.b.x, global1.a.x, 1000f) * vec4<f32>(global1.a.x, 590f, arg_1.x, 1064f)))))), global1.b, true | arg_0, min(global1.d, global1.d), false);
    let var_2 = vec2<i32>(~global2.d.x, firstTrailingBit(~(-1i)));
    var var_3 = var_1;
    return var_3.c | true;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), global2.a.x, arg_3.b.x));
    global3 = array<vec3<bool>, 19>();
    global3 = array<vec3<bool>, 19>();
    global2 = Struct_1(arg_3.a, global1.a.zzy, func_2(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.x, 239f, 2699f, -1178f) - vec4<f32>(var_0.x, global1.a.x, arg_1, arg_1)))) || false, arg_3.d, false);
    var var_1 = 1i;
    return _wgslsmith_div_f32(-279f, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 7>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(func_1(vec3<u32>(0u, 66731u, 48859u), _wgslsmith_f_op_f32(global1.a.x + global1.a.x), _wgslsmith_f_op_f32(-global2.a.x), Struct_1(vec4<f32>(-646f, global2.a.x, global2.a.x, global2.a.x), vec3<f32>(484f, -691f, -617f), false, global2.d, global1.c))), -1368f, global2.b.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.b.x, -1534f, global1.a.x), vec3<f32>(-1098f, global2.a.x, 394f), global2.c)) + _wgslsmith_f_op_vec3_f32(ceil(global1.a.zxy)))), _wgslsmith_f_op_vec3_f32(trunc(global1.b)))), true, select(~firstLeadingBit(global2.d), vec4<i32>(2147483647i, -9896i, ~global1.d.x, 2147483647i), true) >> (~(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), !global1.e);
    let var_1 = vec4<bool>(!(!all(vec4<bool>(global2.e, var_0.c, true, true))) == any(select(!vec4<bool>(true, false, var_0.e, false), select(vec4<bool>(false, global2.c, global1.e, global2.e), vec4<bool>(true, false, false, true), vec4<bool>(false, global1.e, var_0.c, true)), select(vec4<bool>(false, false, global1.e, global1.c), vec4<bool>(true, false, global2.e, global2.c), vec4<bool>(global1.c, global2.c, true, var_0.e)))), any(select(vec4<bool>(global1.b.x >= -469f, -6893i >= var_0.d.x, var_0.c, global1.a.x != global1.b.x), vec4<bool>(!global1.c, global2.e, func_3(-11931i, var_0, 1i).x, true & global1.e), func_3(var_0.d.x, var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(18185i, 4600i, global1.d.x, -1i), vec4<i32>(-23607i, var_0.d.x, -2147483647i, var_0.d.x))))), func_3(i32(-1i) * -63269i, Struct_1(_wgslsmith_f_op_vec4_f32(global2.a + global1.a), _wgslsmith_f_op_vec3_f32(select(var_0.a.yyz, vec3<f32>(global2.b.x, -707f, 888f), global2.c)), true, global2.d << (vec4<u32>(0u, 20879u, 45478u, 0u) % vec4<u32>(32u)), true), global2.d.x).x != all(vec3<bool>(true, any(vec4<bool>(true, false, false, global2.c)), var_0.e)), !func_2(true, global1.a));
    var var_2 = var_0.b.x;
    var var_3 = global2.d.x;
    var var_4 = max(13893i << (~4294967295u % 32u), 1i) | global1.d.x;
    var var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(global2.a)))), vec3<f32>(_wgslsmith_f_op_f32(select(-605f, var_0.b.x, (true | var_1.x) | (-719f > var_0.a.x))), global1.b.x, -823f), select(true, global2.c, !global2.c), min(reverseBits(reverseBits(var_0.d & vec4<i32>(u_input.a.x, var_0.d.x, -16224i, global1.d.x))), -_wgslsmith_mult_vec4_i32(global2.d, global2.d)), any(global3[_wgslsmith_index_u32(43611u, 19u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global1.b.x)))), var_5.b.x), 4294967295u, var_5.a.xwz);
}

