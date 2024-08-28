struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(true, true, 6911u, vec3<i32>(4589i, -7415i, 3878i)), Struct_1(false, false, 5261u, vec3<i32>(-5702i, -24206i, 6116i)), Struct_1(true, false, 4294967295u, vec3<i32>(1i, 57018i, -21435i)), Struct_1(false, false, 35115u, vec3<i32>(0i, 1i, 1i)), Struct_1(false, true, 0u, vec3<i32>(-26244i, 2147483647i, 2147483647i)), Struct_1(false, false, 39409u, vec3<i32>(i32(-2147483648), -1i, i32(-2147483648))), Struct_1(true, false, 0u, vec3<i32>(0i, -8013i, -8328i)), Struct_1(true, false, 14668u, vec3<i32>(i32(-2147483648), -26504i, -11530i)), Struct_1(true, true, 16512u, vec3<i32>(-29232i, 43699i, -19242i)), Struct_1(false, true, 4294967295u, vec3<i32>(47646i, -1i, 2147483647i)), Struct_1(false, false, 34279u, vec3<i32>(-4898i, i32(-2147483648), -25031i)), Struct_1(true, false, 73405u, vec3<i32>(29177i, 9957i, -22383i)), Struct_1(false, false, 0u, vec3<i32>(-4599i, -1i, 3974i)), Struct_1(false, true, 0u, vec3<i32>(-49262i, -1i, -9087i)), Struct_1(true, true, 32263u, vec3<i32>(-3361i, -1i, -1i)), Struct_1(false, false, 1u, vec3<i32>(-1i, -11887i, 1i)), Struct_1(true, true, 68376u, vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648))), Struct_1(false, true, 71378u, vec3<i32>(-15425i, -38489i, 19816i)), Struct_1(true, false, 1u, vec3<i32>(-1i, 27410i, -5393i)), Struct_1(false, false, 0u, vec3<i32>(1i, 1i, -27754i)), Struct_1(false, true, 4294967295u, vec3<i32>(30940i, 2147483647i, 2147483647i)), Struct_1(false, false, 4294967295u, vec3<i32>(-37526i, i32(-2147483648), -1092i)), Struct_1(false, false, 8962u, vec3<i32>(7167i, 1i, -35657i)), Struct_1(true, false, 0u, vec3<i32>(-16801i, 0i, -30856i)), Struct_1(false, false, 14098u, vec3<i32>(1i, 1i, -24372i)), Struct_1(false, true, 0u, vec3<i32>(0i, 18449i, 23793i)), Struct_1(true, true, 4294967295u, vec3<i32>(18261i, 2147483647i, 0i)), Struct_1(false, false, 0u, vec3<i32>(2147483647i, 10641i, -10079i)), Struct_1(true, true, 0u, vec3<i32>(i32(-2147483648), 2147483647i, -57060i)));

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(!all(select(!vec4<bool>(true, global1.b, global1.b, global1.a), vec4<bool>(global1.a, false, true, true), global1.b)), global1.a, 4294967295u, firstTrailingBit(~global1.d));
    global1 = var_0;
    let var_1 = var_0;
    global1 = var_0;
    let var_2 = !(!var_0.a);
    return 2198f;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> vec2<i32> {
    global0 = array<Struct_1, 29>();
    var var_0 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.c, 23051u, 1u, 1u) << (_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 1u, global1.c, 1u)), ~vec4<u32>(18432u, u_input.a, u_input.a, u_input.a), min(vec4<u32>(4294967295u, 70468u, u_input.a, global1.c), vec4<u32>(global1.c, 21059u, 4294967295u, 1u))) % vec4<u32>(32u)), ~(~(vec4<u32>(27439u, global1.c, u_input.a, global1.c) << (vec4<u32>(54946u, 51066u, 71032u, global1.c) % vec4<u32>(32u)))));
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3())));
    global0 = array<Struct_1, 29>();
    return vec2<i32>(arg_1.x, 0i & firstLeadingBit(arg_1.x));
}

fn func_1() -> vec2<bool> {
    var var_0 = -global1.d.yz;
    var var_1 = ~func_2(global1.b, max(vec3<i32>(~(-1i), -7439i, var_0.x), firstTrailingBit(global1.d)));
    var var_2 = select(vec2<bool>(global1.b && (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, global1.c, 34865u), vec4<u32>(u_input.a, global1.c, global1.c, 11271u)) >= (u_input.a & u_input.a)), !any(!vec2<bool>(global1.a, true))), vec2<bool>(!(0u >= global1.c), any(!select(vec3<bool>(true, false, global1.a), vec3<bool>(global1.b, false, true), vec3<bool>(false, global1.b, false)))), !vec2<bool>(false, all(!vec3<bool>(global1.b, false, global1.b))));
    let var_3 = _wgslsmith_sub_vec4_i32(~(-reverseBits(vec4<i32>(var_1.x, var_1.x, -57492i, var_0.x))), vec4<i32>(global1.d.x, ~1i << (global1.c % 32u), select(_wgslsmith_sub_i32(global1.d.x, -1306i), 41177i, any(vec4<bool>(false, var_2.x, true, global1.a))), 9487i) >> (~firstTrailingBit(~vec4<u32>(u_input.a, global1.c, 4294967295u, 1u)) % vec4<u32>(32u)));
    var_0 = global1.d.xz;
    return select(vec2<bool>(var_2.x, !(var_2.x || var_2.x)), select(!(!(!vec2<bool>(false, global1.a))), select(select(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, global1.b), false), !vec2<bool>(global1.b, global1.a), !vec2<bool>(var_2.x, global1.b)), select(vec2<bool>(false, false), !vec2<bool>(global1.a, false), u_input.a < u_input.a), vec2<bool>(all(vec2<bool>(true, global1.a)), true)), vec2<bool>(true, true)), !vec2<bool>(any(vec3<bool>(false, false, true)) & !global1.a, any(vec2<bool>(false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-296f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(364f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -594f), _wgslsmith_f_op_f32(-502f + 1053f)))));
    var var_1 = max(-_wgslsmith_mod_i32(global1.d.x, countOneBits(22205i)), global1.d.x);
    let var_2 = any(select(func_1(), vec2<bool>(global1.b, global1.a), vec2<bool>(true, true)));
    global1 = Struct_1(all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, var_2, false, true), global1.a), !(!vec4<bool>(true, false, true, var_2)), !vec4<bool>(true, var_2, false, var_2))), 0i > func_2(select(false, var_2, true) && true, vec3<i32>(firstLeadingBit(-8532i), global1.d.x, global1.d.x)).x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 10012u, global1.c, global1.c) ^ vec4<u32>(17109u, global1.c, 1u, 8457u), vec4<u32>(u_input.a, u_input.a, u_input.a, 56934u)), _wgslsmith_clamp_u32(~u_input.a, 1u, ~14839u)), global1.c), -vec3<i32>(global1.d.x, max(i32(-1i) * -63147i, select(global1.d.x, 1i, false)), _wgslsmith_mod_i32(global1.d.x ^ -1i, -1i)));
    var var_3 = _wgslsmith_sub_i32(-(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(global1.d.x, -12370i, -1i, -32056i), vec4<i32>(global1.d.x, global1.d.x, global1.d.x, global1.d.x), vec4<bool>(true, true, var_2, global1.b)), select(vec4<i32>(global1.d.x, -16168i, global1.d.x, global1.d.x), vec4<i32>(-6919i, -2147483647i, global1.d.x, global1.d.x), true))), global1.d.x | global1.d.x);
    var var_4 = abs(global1.d.x);
    var_4 = global1.d.x;
    var_4 = global1.d.x & 373i;
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))))), 1f, _wgslsmith_div_f32(-488f, -214f));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(vec3<u32>(global1.c, 1u ^ u_input.a, countOneBits(u_input.a)), (vec3<u32>(u_input.a, 0u, 4294967295u) ^ vec3<u32>(u_input.a, global1.c, global1.c)) | (vec3<u32>(global1.c, u_input.a, global1.c) & vec3<u32>(0u, 1u, u_input.a)), !select(vec3<bool>(true, true, var_2), vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, global1.a, global1.b)))), vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, global1.c)) | (vec2<u32>(1u, 0u) & vec2<u32>(global1.c, 4294967295u)), vec2<u32>(1u, 1u)), reverseBits(~_wgslsmith_div_u32(u_input.a, 49458u)), 0u, 35205u), _wgslsmith_div_f32(var_5.x, _wgslsmith_f_op_f32(-var_0.x)), max(1u, 3297u), var_0);
}

