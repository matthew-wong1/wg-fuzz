struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 26> = array<f32, 26>(-1159f, 879f, -143f, -1277f, -1382f, 471f, 1545f, -1000f, -197f, 404f, 1850f, 1000f, 364f, -836f, 178f, 923f, 107f, 594f, 1000f, 1315f, 590f, -2193f, 1377f, -714f, 1835f, 1989f);

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), -1i, -1i, 0i);

var<private> global3: i32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -807f, global1[_wgslsmith_index_u32(21610u, 26u)], global1[_wgslsmith_index_u32(14303u, 26u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -859f, 2131f, 111f) - vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(1u, 26u)], global0.a.x, global1[_wgslsmith_index_u32(43617u, 26u)], global0.a.x))) * vec4<f32>(global1[_wgslsmith_index_u32(5017u, 26u)], 477f, global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(49188u, 26u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-442f, global1[_wgslsmith_index_u32(72304u, 26u)], -1000f, 577f))), !any(vec2<bool>(true, true)))))));
    var var_1 = -1i;
    let var_2 = countOneBits(~abs(vec2<i32>(48680i, global0.b.x)) | (_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(u_input.a, -861i), global0.b.wz) >> (firstTrailingBit(vec2<u32>(46344u, 1u)) % vec2<u32>(32u)))) | vec2<i32>(~_wgslsmith_mod_i32(1i, u_input.a), -_wgslsmith_div_i32(global2.x, 17556i) | _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global2.zyx, vec3<i32>(u_input.a, global0.b.x, 1i)), vec3<i32>(2147483647i, -40902i, 34953i)));
    global1 = array<f32, 26>();
    var var_3 = vec2<i32>(var_2.x >> ((abs(~30111u) >> (1u % 32u)) % 32u), u_input.a);
    return u_input.a ^ abs(-1853i);
}

fn func_2(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1428f, global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(arg_1.x, 26u)], 653f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-602f, arg_2, 130f, -237f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-654f, -229f, global1[_wgslsmith_index_u32(1u, 26u)], arg_2) + vec4<f32>(arg_0.a.a.x, global1[_wgslsmith_index_u32(arg_1.x, 26u)], global0.a.x, global1[_wgslsmith_index_u32(arg_1.x, 26u)]))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -718f, 652f, global0.a.x)))))));
    let var_1 = ~vec3<i32>(arg_0.a.b.x, _wgslsmith_sub_i32(arg_0.a.b.x, global2.x), 2147483647i);
    let var_2 = ~_wgslsmith_mod_i32(i32(-1i) * -global0.b.x, select(func_3(), global0.b.x, true)) == max(func_3(), arg_0.a.b.x);
    var var_3 = abs(var_1.x);
    global1 = array<f32, 26>();
    return abs(~(max(arg_1.x, arg_1.x) | 78294u)) ^ ~1u;
}

fn func_1() -> Struct_2 {
    global0 = Struct_3(vec3<f32>(574f, _wgslsmith_f_op_f32(-1193f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.x)))), 1405f), vec4<i32>(-21153i, abs(min(-1i, max(-1i, global0.b.x))), 1i, abs(_wgslsmith_mult_i32(global2.x, -3978i)) << (~(~4294967295u) % 32u)));
    global1 = array<f32, 26>();
    global1 = array<f32, 26>();
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_2(Struct_5(Struct_3(global0.a, global0.b)), vec4<u32>(55755u, 90435u, 8175u, 0u), 1017f), 26u)] + global1[_wgslsmith_index_u32(0u, 26u)])))), 392f, false));
    global2 = global0.b;
    return Struct_2(Struct_1(global0.b, vec2<u32>(min(~4294967295u, max(1733u, 4294967295u)), 1u)), 59852i, 1u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a.a.x), global0.a.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-167f, -1040f, -1169f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, -791f)))))) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(693f * _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(arg_0.a.b.x, 26u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(246f))), false)), 399f, -981f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~arg_0.a.b.x, 26u)])))));
    var_1 = vec4<f32>(var_1.x, 544f, 464f, -585f);
    let var_2 = Struct_4(select(vec4<bool>(true, true, !any(vec3<bool>(false, true, false)), true), !vec4<bool>(any(vec3<bool>(false, true, true)), all(vec3<bool>(false, true, false)), true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(trunc(-507f))))))), _wgslsmith_dot_vec2_i32(reverseBits(~global0.b.yx), vec2<i32>(-_wgslsmith_dot_vec3_i32(global0.b.xyx, vec3<i32>(u_input.a, 8498i, arg_1.a.b.x)), abs(-u_input.a))), Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.a.x), global0.a.x), global1[_wgslsmith_index_u32(arg_0.a.b.x, 26u)], global1[_wgslsmith_index_u32(~arg_0.c, 26u)]), global0.b));
    let var_3 = var_2.a.wx;
    return arg_1;
}

fn func_5(arg_0: Struct_5, arg_1: i32, arg_2: vec2<i32>) -> Struct_2 {
    global1 = array<f32, 26>();
    var var_0 = reverseBits(~func_2(func_4(func_1(), Struct_5(Struct_3(global0.a, arg_0.a.b))), vec4<u32>(_wgslsmith_mult_u32(115312u, 0u), _wgslsmith_add_u32(3216u, 9528u), 57264u, 1u), -344f));
    global0 = arg_0.a;
    global3 = -(~643i);
    let var_1 = !(!vec3<bool>(!any(vec4<bool>(true, false, false, false)), !all(vec4<bool>(false, true, true, false)), true));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(), Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(global0.a + global0.a), abs(vec4<i32>(57264i, global2.x, 2147483647i, u_input.a))))), -25687i, ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(44097i, 0i), vec2<i32>(global0.b.x, -2147483647i), global0.b.zx) & max(-vec2<i32>(-22098i, -9273i), ~global2.xw)));
    let var_1 = func_1().a;
    var var_2 = Struct_4(!select(vec4<bool>(true, true, false, select(false, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.x * global1[_wgslsmith_index_u32(0u, 26u)]))), _wgslsmith_div_i32(global0.b.x << (var_1.b.x % 32u), func_5(func_4(Struct_2(Struct_1(global0.b, vec2<u32>(var_1.b.x, var_1.b.x)), global2.x, 52875u), Struct_5(Struct_3(global0.a, vec4<i32>(global0.b.x, 55420i, global2.x, -2147483647i)))), _wgslsmith_dot_vec2_i32(~vec2<i32>(-5539i, var_1.a.x), vec2<i32>(0i, 0i)), vec2<i32>(3988i, global2.x)).b), func_4(func_1(), Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(global0.a * global0.a), firstLeadingBit(var_1.a)))).a);
    global0 = func_4(func_1(), Struct_5(func_4(Struct_2(var_0.a, func_1().b, func_2(Struct_5(var_2.d), vec4<u32>(var_1.b.x, var_0.a.b.x, 12147u, var_0.a.b.x), -577f)), func_4(func_5(Struct_5(var_2.d), -2147483647i, vec2<i32>(var_2.c, -21967i)), func_4(Struct_2(var_0.a, 10583i, var_0.c), Struct_5(Struct_3(vec3<f32>(1942f, 699f, -110f), vec4<i32>(var_0.a.a.x, var_1.a.x, var_0.b, -24588i)))))).a)).a;
    let var_3 = vec4<i32>(min(var_1.a.x, _wgslsmith_div_i32(5649i, ~(global0.b.x | 28131i))), _wgslsmith_mod_i32(1i, var_2.d.b.x), global0.b.x, func_5(Struct_5(func_4(func_5(Struct_5(var_2.d), global0.b.x, var_0.a.a.xz), func_4(Struct_2(Struct_1(var_0.a.a, vec2<u32>(var_0.a.b.x, var_1.b.x)), var_1.a.x, var_1.b.x), Struct_5(Struct_3(vec3<f32>(-1022f, 109f, global0.a.x), vec4<i32>(var_2.c, -17728i, 0i, -32678i))))).a), -8568i, countOneBits(vec2<i32>(32079i, i32(-1i) * -1i))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-469f, -288f, var_2.d.a.x, 526f) + vec4<f32>(994f, global0.a.x, -240f, 112f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.d.a.x, var_2.d.a.x, 1467f, var_2.b), vec4<f32>(1032f, global0.a.x, global1[_wgslsmith_index_u32(0u, 26u)], 388f)), var_2.a)))), global0.a.xx, ~vec4<u32>(4294967295u, ~(0u >> (var_0.a.b.x % 32u)), var_1.b.x, abs(var_1.b.x) >> (4320u % 32u)), var_0.a.a, global0.a.x);
}

