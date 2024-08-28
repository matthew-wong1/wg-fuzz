struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: u32;

var<private> global2: Struct_4;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1583f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-533f)))), -1497f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-443f, 905f)))))));
    global2 = Struct_4(_wgslsmith_sub_vec4_u32(vec4<u32>(~(~u_input.b), ~72797u, ~30355u, 44945u), ~vec4<u32>(4294967295u, 13672u, u_input.b, ~global2.a.x)), Struct_1((arg_1.a << (u_input.b % 32u)) >= select(-2147483647i, arg_1.a, global2.b.b.x), vec2<bool>(true, any(!vec3<bool>(true, global2.b.a, global2.b.b.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(922f, 363f) - _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-var_0.x), var_0.x, -1037f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(1583f * 1058f), -1000f, _wgslsmith_f_op_f32(sign(var_0.x)), var_0.x))))), select(select(vec4<bool>(true, arg_1.c.x, any(vec3<bool>(false, true, false)), true), select(select(arg_1.c, arg_1.c, vec4<bool>(arg_1.c.x, false, arg_0, global2.b.a)), vec4<bool>(true, arg_0, arg_0, arg_1.c.x), select(arg_1.c, arg_1.c, vec4<bool>(arg_1.b.b.x, arg_1.c.x, true, false))), vec4<bool>(global2.b.a, all(vec4<bool>(true, true, true, false)), global2.b.a, arg_1.b.a)), !vec4<bool>(any(arg_1.c.wyx), all(vec2<bool>(global2.b.a, true)), arg_1.c.x, any(arg_1.c.wyw)), !vec4<bool>(u_input.c.x != 0i, 1i >= arg_1.a, arg_0, global2.b.a && arg_1.b.b.x))));
    var var_2 = vec2<i32>(51881i, ~arg_1.a) ^ u_input.c.yx;
    let var_3 = ~(~select(vec4<u32>(global2.a.x, 0u, u_input.b, u_input.b), vec4<u32>(~global2.a.x, 1u, u_input.b, global2.a.x | 0u), arg_1.c));
    return vec2<bool>(true, !(true & all(vec3<bool>(arg_0, arg_1.c.x, global2.b.b.x))));
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> vec3<bool> {
    let var_0 = vec4<u32>(global2.a.x ^ (~(~48952u) << (0u % 32u)), (1u | (u_input.b << (_wgslsmith_sub_u32(global2.a.x, 13784u) % 32u))) | ~global2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e.x, u_input.b, u_input.b, countOneBits(~31644u)), arg_0.e), u_input.b);
    let var_1 = arg_0.d;
    let var_2 = !(!func_3(select(arg_0.d.c.x, var_1.c.x, true), Struct_2(reverseBits(var_1.a), global2.b, vec4<bool>(var_1.b.a, global2.b.b.x, false, true))));
    global2 = Struct_4(~(_wgslsmith_add_vec4_u32(~arg_0.e, ~vec4<u32>(arg_0.e.x, u_input.b, 25763u, 28688u)) & abs(vec4<u32>(u_input.b, 47456u, global2.a.x, 75457u) ^ vec4<u32>(global2.a.x, 0u, 4294967295u, 4294967295u))), Struct_1(true, select(!select(var_2, vec2<bool>(false, var_1.b.a), var_1.c.x), vec2<bool>(all(vec2<bool>(arg_1, true)), true), true)));
    var var_3 = !(!var_1.c);
    return !vec3<bool>(arg_0.d.c.x, func_3(!(!global2.b.a), arg_0.d).x, var_3.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec3<bool>) -> Struct_4 {
    var var_0 = select(~arg_1.x, _wgslsmith_dot_vec4_u32(~global2.a, reverseBits(vec4<u32>(global2.a.x, 11050u, 15482u, u_input.b) << (vec4<u32>(15464u, 0u, 0u, 27754u) % vec4<u32>(32u)))), true) > arg_1.x;
    var_0 = true;
    let var_1 = ~(~arg_1.x);
    var_0 = true;
    var var_2 = Struct_1(func_2(Struct_3(select(all(arg_2), arg_2.x & global2.b.b.x, global2.b.b.x), func_3(arg_2.x, global0[_wgslsmith_index_u32(11089u, 23u)]).x, Struct_2(u_input.c.x, global2.b, !vec4<bool>(arg_2.x, global2.b.b.x, true, global2.b.b.x)), Struct_2(min(-16953i, u_input.a), global2.b, !vec4<bool>(arg_2.x, false, true, arg_2.x)), global2.a), any(!func_2(Struct_3(true, true, global0[_wgslsmith_index_u32(arg_1.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], vec4<u32>(global2.a.x, 4294967295u, arg_1.x, 81513u)), arg_2.x).yy)).x, select(!select(select(global2.b.b, arg_2.yy, arg_2.x), vec2<bool>(true, arg_2.x), arg_2.x), arg_2.xz, global2.b.b.x));
    return Struct_4(~_wgslsmith_mod_vec4_u32(global2.a, global2.a), Struct_1(!(arg_0.x < 173f), !global2.b.b));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_4) -> vec2<u32> {
    global0 = array<Struct_2, 23>();
    let var_0 = ~(-(~(i32(-1i) * -2147483647i)));
    let var_1 = ~4294967295u;
    let var_2 = vec3<u32>(1u, u_input.b, min(reverseBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b, 1u), _wgslsmith_add_u32(arg_1.a.x, u_input.b))), ~_wgslsmith_sub_u32(var_1, firstLeadingBit(0u))));
    global1 = abs(var_2.x);
    return vec2<u32>(9127u, abs(_wgslsmith_clamp_u32(var_2.x, 1u, _wgslsmith_sub_u32(11784u, var_2.x))));
}

fn func_6(arg_0: vec2<u32>, arg_1: i32, arg_2: f32) -> Struct_4 {
    global0 = array<Struct_2, 23>();
    var var_0 = 1f;
    var var_1 = Struct_3(select(global2.b.a || all(!global2.b.b), !any(vec3<bool>(true, global2.b.a, false)), true), global2.b.b.x, Struct_2(abs(u_input.a) << (reverseBits(~u_input.b) % 32u), Struct_1(!any(vec2<bool>(global2.b.b.x, global2.b.a)), vec2<bool>(!global2.b.a, global2.b.b.x)), select(vec4<bool>(true, false, true, !global2.b.b.x), vec4<bool>(u_input.a >= -1i, true, global2.b.a | global2.b.a, global2.b.a), select(!vec4<bool>(false, true, true, global2.b.a), vec4<bool>(global2.b.b.x, global2.b.a, false, true), !vec4<bool>(true, global2.b.b.x, false, true)))), global0[_wgslsmith_index_u32(~11397u, 23u)], vec4<u32>(arg_0.x, 22246u, reverseBits(127969u), u_input.b));
    let var_2 = ~(-55900i) <= firstTrailingBit(5937i);
    global1 = u_input.b;
    return Struct_4(reverseBits(vec4<u32>(~4294967295u, arg_0.x, 1u, ~abs(70227u))), Struct_1(false, vec2<bool>(all(vec4<bool>(false, true, global2.b.b.x, false)), true)));
}

fn func_7(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_4, arg_3: i32) -> Struct_3 {
    var var_0 = Struct_3(-u_input.a == abs(abs(arg_3) >> (max(global2.a.x, 1u) % 32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1434f * -340f))))) <= 1000f, Struct_2(1i, global2.b, vec4<bool>(-1089f >= _wgslsmith_f_op_f32(ceil(1829f)), _wgslsmith_f_op_f32(select(-1548f, -754f, false)) >= -712f, 1u < ~global2.a.x, true)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global2.a.x), 23u)], vec4<u32>(4294967295u, countOneBits(u_input.b), 2430u, ~15028u >> (countOneBits(u_input.b) % 32u)) | vec4<u32>(u_input.b, _wgslsmith_sub_u32(global2.a.x ^ arg_2.a.x, _wgslsmith_sub_u32(4294967295u, 47251u)), func_5(_wgslsmith_div_vec2_f32(vec2<f32>(-565f, -1000f), vec2<f32>(-293f, 1290f)), arg_2, func_4(vec4<f32>(1000f, 212f, 1950f, 1000f), global2.a.xwx, arg_0)).x, ~1u));
    let var_1 = arg_2.b;
    let var_2 = var_0.c;
    let var_3 = _wgslsmith_mult_i32(i32(-1i) * -10010i, reverseBits(~arg_3));
    var var_4 = Struct_3(any(var_0.d.c), var_1.a, Struct_2(~(-18872i), Struct_1(all(global2.b.b), vec2<bool>(true, all(vec3<bool>(true, var_0.d.b.b.x, false)))), !var_2.c), Struct_2(_wgslsmith_clamp_i32(-6751i, -var_3, _wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, 2147483647i), select(0i, 0i, var_0.c.c.x))), Struct_1(!any(vec2<bool>(var_0.d.c.x, arg_2.b.b.x)), arg_0.yx), var_0.c.c), vec4<u32>(34087u, _wgslsmith_add_u32(_wgslsmith_mod_u32(49106u, arg_2.a.x), 0u), 4294967295u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(26686u, 16195u, 1u, u_input.b)), firstLeadingBit(~vec4<u32>(25934u, global2.a.x, global2.a.x, 29844u)))));
    return Struct_3(false, !(all(var_2.c) | true), Struct_2(max(min(-2147483647i, -2147483647i), _wgslsmith_sub_i32(var_4.d.a, var_2.a)) ^ var_2.a, Struct_1(true, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-211f, -175f, -668f, 1502f) * vec4<f32>(494f, -266f, 260f, -1000f)), ~global2.a.zxx, vec3<bool>(true, false, var_2.b.a)).b.b), vec4<bool>(arg_0.x || arg_0.x, var_2.b.b.x, global2.b.a, var_1.b.x)), Struct_2(abs(reverseBits(var_4.c.a) ^ ~var_0.d.a), func_6(max(arg_2.a.yw, arg_2.a.wx), select(abs(1i), ~arg_3, var_4.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-108f))))).b, vec4<bool>(false, false, 0i > ~var_3, true)), abs(_wgslsmith_sub_vec4_u32(firstLeadingBit(max(var_0.e, var_0.e)), firstTrailingBit(abs(var_0.e)))));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_7(vec3<bool>(all(global2.b.b), true | all(vec4<bool>(true, global2.b.a, global2.b.b.x, global2.b.b.x)), global2.b.b.x), reverseBits(firstTrailingBit(~8402i) >> (~(~4933u) % 32u)), func_6(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2118f, -519f) - vec2<f32>(1f, 1f)), func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-253f, 437f, 1662f, -672f), vec4<f32>(413f, -143f, -927f, -1271f)), global2.a.wzy, func_2(Struct_3(global2.b.b.x, global2.b.b.x, global0[_wgslsmith_index_u32(global2.a.x, 23u)], Struct_2(u_input.a, Struct_1(global2.b.a, vec2<bool>(global2.b.a, true)), vec4<bool>(false, true, global2.b.b.x, global2.b.a)), global2.a), global2.b.b.x)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(787f, -1607f, 856f, 1333f)), global2.a.zyy | vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<bool>(true, true, true))), abs(max(_wgslsmith_mult_i32(u_input.a, 10618i), 0i)), _wgslsmith_f_op_f32(f32(-1f) * -256f)), _wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.c.x, 1109i, -1832i, u_input.a) ^ max(u_input.c, vec4<i32>(0i, u_input.a, 34602i, u_input.c.x))), _wgslsmith_div_vec4_i32(vec4<i32>(1i, _wgslsmith_sub_i32(u_input.c.x, 25298i), ~0i, abs(u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 39371i, 1394i, u_input.a), u_input.c))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(881f, -175f, 1719f), vec3<f32>(-1563f, 426f, -1000f), var_0.c.c.wwx)), vec3<f32>(413f, -1207f, -1946f))) * vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-564f, -1003f, -1378f), vec3<f32>(1000f, 699f, -759f)), _wgslsmith_div_vec3_f32(vec3<f32>(-510f, 1000f, 1000f), vec3<f32>(1421f, -517f, 1114f)), vec3<bool>(true, true, false))))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 704f, -632f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(157f, -775f, -113f, -270f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 720f, 577f, var_1.x)), global2.b.b.x))), var_0.e, 61449i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

