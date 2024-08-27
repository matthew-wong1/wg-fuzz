struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 14197u;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec3<f32>(-1629f, -1206f, 850f), 298f)), Struct_2(Struct_1(vec3<f32>(-251f, 1000f, 331f), -1090f)), Struct_2(Struct_1(vec3<f32>(193f, -372f, -909f), -1000f)), Struct_2(Struct_1(vec3<f32>(-1855f, -512f, 1484f), 355f)), Struct_2(Struct_1(vec3<f32>(-2001f, 1458f, -1619f), -100f)), Struct_2(Struct_1(vec3<f32>(297f, 2722f, 302f), -205f)), Struct_2(Struct_1(vec3<f32>(132f, 2226f, -2086f), 404f)), Struct_2(Struct_1(vec3<f32>(-1103f, 1197f, -131f), 191f)), Struct_2(Struct_1(vec3<f32>(1639f, 1000f, 519f), -791f)), Struct_2(Struct_1(vec3<f32>(-1000f, 1693f, -323f), -1853f)));

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<f32>(538f, 2316f, 1252f), -549f), Struct_1(vec3<f32>(-418f, 1313f, -852f), -632f), Struct_1(vec3<f32>(-1524f, -229f, -1423f), 112f), Struct_1(vec3<f32>(-438f, -138f, -310f), 898f), Struct_1(vec3<f32>(-269f, -2260f, 183f), -761f), Struct_1(vec3<f32>(-445f, 564f, 358f), -1684f), Struct_1(vec3<f32>(736f, -1000f, 928f), 479f), Struct_1(vec3<f32>(-1602f, 1113f, 236f), 266f), Struct_1(vec3<f32>(1273f, -1611f, 650f), -552f), Struct_1(vec3<f32>(-233f, -1000f, 1466f), -1137f), Struct_1(vec3<f32>(-2457f, -1000f, -1005f), -1657f), Struct_1(vec3<f32>(-418f, 800f, 1604f), 253f), Struct_1(vec3<f32>(-1079f, 381f, 663f), -1605f), Struct_1(vec3<f32>(-300f, -1000f, 709f), 1505f), Struct_1(vec3<f32>(104f, -306f, -457f), -2228f), Struct_1(vec3<f32>(1148f, -602f, 1000f), 1000f), Struct_1(vec3<f32>(-1019f, 1000f, -600f), -1020f), Struct_1(vec3<f32>(508f, -316f, -957f), -944f), Struct_1(vec3<f32>(-191f, 258f, -1576f), -460f), Struct_1(vec3<f32>(-1454f, 334f, -897f), 832f), Struct_1(vec3<f32>(-539f, 352f, 630f), -1000f), Struct_1(vec3<f32>(652f, 2689f, 1000f), 168f), Struct_1(vec3<f32>(-1000f, 1202f, -133f), -681f), Struct_1(vec3<f32>(721f, -2050f, -1476f), 999f), Struct_1(vec3<f32>(-401f, 472f, -1000f), 598f), Struct_1(vec3<f32>(-1430f, 1000f, 689f), 305f), Struct_1(vec3<f32>(557f, 750f, -2128f), 967f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    global2 = array<Struct_1, 27>();
    let var_0 = all(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
    var var_1 = Struct_4(global1[_wgslsmith_index_u32(9204u, 10u)], vec3<u32>(_wgslsmith_clamp_u32(29466u, 1u, 9996u) | ~19335u, 15581u, 55111u) << (select(vec3<u32>(countOneBits(u_input.d.x), u_input.a.x, ~u_input.c), vec3<u32>(~u_input.d.x, 101525u, u_input.d.x), !vec3<bool>(false, true, var_0)) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(countOneBits(u_input.a.x & (0u | countOneBits(u_input.d.x))), 27u)], u_input.a.x);
    let var_2 = ~countOneBits(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(var_1.b.x, var_1.b.x, 85943u, u_input.d.x)), vec4<u32>(u_input.c, var_1.d, var_1.d, 35393u) >> (vec4<u32>(1u, var_1.d, u_input.c, 1u) % vec4<u32>(32u))));
    global2 = array<Struct_1, 27>();
    return 57144u;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>) -> vec2<bool> {
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(firstTrailingBit(arg_0), arg_0), ~min(1u, 4294967295u)), 27u)]);
    var var_1 = any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(false, true))), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)));
    var var_2 = all(!vec3<bool>(true, true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true))));
    var var_3 = vec4<u32>(3114u, u_input.a.x, reverseBits(min(30696u, 98721u)), ~(~_wgslsmith_div_u32(u_input.c, u_input.a.x)));
    return vec2<bool>(true, true);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    global2 = array<Struct_1, 27>();
    var var_0 = Struct_4(Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.a.a.b, 1216f)), _wgslsmith_f_op_f32(f32(-1f) * -1807f), _wgslsmith_f_op_f32(max(arg_1.a.a.b, 183f))), arg_1.a.a.b)), arg_2.wzx, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.a.a.x * 305f), _wgslsmith_f_op_f32(-arg_1.b.a.b), _wgslsmith_div_f32(arg_1.b.a.b, -1454f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-501f, -464f, 183f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 13678u << (0u % 32u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1000f, var_0.c.b), _wgslsmith_f_op_f32(var_0.c.a.x * _wgslsmith_f_op_f32(-var_0.a.a.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(142f * 269f), var_0.c.a.x, arg_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(751f + _wgslsmith_f_op_f32(ceil(1000f))))) - var_0.c.b));
    global0 = ~u_input.d.x;
    let var_2 = var_0.a;
    return 0u;
}

fn func_5(arg_0: u32, arg_1: vec2<f32>) -> Struct_4 {
    global0 = arg_0;
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(trunc(arg_1.x))))), -2924f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-var_0.a.a);
    return Struct_4(Struct_2(var_0.a), select(u_input.a.wzy, min(abs(u_input.a.xzx), ~vec3<u32>(1u, 137642u, 4294967295u)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), Struct_1(var_0.a.a, _wgslsmith_f_op_f32(-var_0.a.a.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, 0u, u_input.d.x, 71u), vec4<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(u_input.a.x, arg_0)), ~_wgslsmith_clamp_u32(arg_0, arg_0, arg_0), _wgslsmith_clamp_u32(~60586u, ~52070u, 97023u | u_input.d.x), firstTrailingBit(reverseBits(arg_0)))));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_4 {
    global0 = 0u;
    let var_0 = func_5(func_4(any(func_2(0i, Struct_1(vec3<f32>(-633f, 196f, 713f), 1522f), u_input.a.xyw)), Struct_3(global1[_wgslsmith_index_u32(37629u | arg_1, 10u)], Struct_2(Struct_1(vec3<f32>(-1205f, 723f, -1550f), -723f))), u_input.a, func_2(_wgslsmith_div_i32(u_input.b, u_input.b), Struct_1(vec3<f32>(418f, -1000f, -208f), 239f), firstTrailingBit(vec3<u32>(arg_1, 14140u, u_input.d.x))).x) & 1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-195f, _wgslsmith_f_op_f32(f32(-1f) * -581f))));
    global1 = array<Struct_2, 10>();
    return Struct_4(var_0.a, vec3<u32>(var_0.b.x, 24503u, 1u), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.c.a + vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.c.a.x)), 1f, _wgslsmith_f_op_f32(var_0.a.a.a.x * var_0.c.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.a.b + _wgslsmith_f_op_f32(var_0.a.a.b + 595f)), var_0.a.a.a.x)), ~var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.b, u_input.a.x);
    var var_1 = -_wgslsmith_mod_i32(1i, u_input.b);
    global1 = array<Struct_2, 10>();
    var_1 = ~u_input.b;
    global1 = array<Struct_2, 10>();
    var var_2 = vec3<bool>(true, true, any(vec2<bool>(any(vec2<bool>(true, true)), false)));
    var var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

