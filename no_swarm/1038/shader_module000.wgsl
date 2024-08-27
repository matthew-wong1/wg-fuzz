struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(471f, 1235f, 575f), vec3<f32>(-116f, 137f, -1103f), vec3<f32>(119f, 654f, 644f), vec3<f32>(1379f, 1938f, 309f), vec3<f32>(-706f, -453f, -1679f), vec3<f32>(-1401f, 376f, 289f), vec3<f32>(573f, -239f, 767f), vec3<f32>(193f, -848f, 290f), vec3<f32>(1171f, 633f, 744f), vec3<f32>(-468f, -905f, 743f), vec3<f32>(974f, 438f, -1176f), vec3<f32>(829f, 387f, 1210f), vec3<f32>(-931f, -1604f, 2273f), vec3<f32>(1294f, -1720f, -1287f), vec3<f32>(-307f, 750f, 247f), vec3<f32>(1243f, 631f, -1461f), vec3<f32>(-877f, -1679f, 1698f), vec3<f32>(-1000f, -1027f, -1176f), vec3<f32>(-144f, -1262f, -393f), vec3<f32>(-221f, -2134f, 569f), vec3<f32>(617f, 487f, -1060f), vec3<f32>(-524f, -1538f, 1000f), vec3<f32>(-426f, -653f, -1000f), vec3<f32>(910f, 947f, 616f), vec3<f32>(308f, 907f, -2751f), vec3<f32>(784f, 1604f, 1136f), vec3<f32>(-572f, 999f, 2562f));

var<private> global2: Struct_1;

var<private> global3: array<vec3<u32>, 3>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec4<i32> {
    let var_0 = select(min(_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(25307u, global2.d.x, u_input.b), vec3<u32>(u_input.a.x, 4294967295u, 0u)), vec3<u32>(0u, global2.a.x, 0u)), u_input.a.zyy), select(~(~global2.a.yxw), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 10773u, 24507u), select(vec3<u32>(global2.d.x, u_input.a.x, 23426u), vec3<u32>(31950u, global2.d.x, global2.a.x), vec3<bool>(true, false, false)), global3[_wgslsmith_index_u32(global2.d.x, 3u)]), ~min(global3[_wgslsmith_index_u32(u_input.b, 3u)], vec3<u32>(u_input.a.x, 47128u, 4294967295u)), vec3<u32>(global2.d.x, u_input.b, 68777u >> (global2.a.x % 32u))), !vec3<bool>(all(vec3<bool>(true, false, false)), false, -42508i <= u_input.d.x)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec3<bool>(false, false, false)))));
    let var_1 = ~max(~global3[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 3u)], vec3<u32>(var_0.x, abs(u_input.a.x), global2.d.x));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(165f)) * _wgslsmith_f_op_f32(abs(-762f))))), 1663f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(155f)) - -824f) * _wgslsmith_f_op_f32(1f * 543f)));
    global3 = array<vec3<u32>, 3>();
    var var_3 = Struct_1(abs(vec4<u32>(~abs(global2.a.x), 1u, 5342u, _wgslsmith_sub_u32(~var_1.x, u_input.a.x))), firstTrailingBit(0i), u_input.c, firstTrailingBit(u_input.a.zz));
    return min(-_wgslsmith_mod_vec4_i32(vec4<i32>(38929i, global2.c, global2.c, u_input.d.x), vec4<i32>(var_3.b, -2147483647i, var_3.c, -2147483647i)) & countOneBits((vec4<i32>(31794i, 8957i, global2.c, 1i) >> (u_input.a % vec4<u32>(32u))) ^ -vec4<i32>(-34330i, -1i, 0i, u_input.c)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d, ~(-vec3<i32>(2147483647i, -1i, 1i))), 1i, _wgslsmith_clamp_i32(-72716i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_3.c, 1i), ~16751i), var_3.c), _wgslsmith_add_i32(global2.b, var_3.c)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = global2.a.x ^ _wgslsmith_dot_vec3_u32(arg_0.a.zzy, ~(~u_input.a.xwz));
    var var_1 = _wgslsmith_mod_vec4_i32(firstLeadingBit(select(func_3(), ~vec4<i32>(47187i, arg_0.c, arg_0.b, -2147483647i) << (_wgslsmith_clamp_vec4_u32(arg_3.a, arg_0.a, vec4<u32>(u_input.b, 4294967295u, arg_3.d.x, 0u)) % vec4<u32>(32u)), ~arg_3.d.x > global2.d.x)), vec4<i32>(~(-global2.b), arg_0.c, 2147483647i | ~u_input.c, -global2.b) & vec4<i32>(0i, -arg_3.b, u_input.d.x, ~(-2147483647i)));
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(-arg_0.c, abs(select(-46600i, -2464i, false))), -12812i, arg_0.b) << (~(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.d.x, 1u, 103654u), vec3<u32>(52443u, 0u, 4294967295u), vec3<u32>(u_input.b, 21085u, arg_0.d.x)) << (countOneBits(select(arg_3.a.zwz, vec3<u32>(87241u, 28098u, global2.d.x), true)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = arg_2;
    let var_4 = vec3<u32>(arg_3.d.x, arg_0.a.x, 84342u);
    return firstLeadingBit(vec3<u32>(firstLeadingBit(~(~arg_3.a.x)), min(countOneBits(firstLeadingBit(69212u)), arg_0.d.x), min(~var_4.x, max(arg_0.d.x, u_input.a.x)) << (~1u % 32u)));
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = Struct_1(vec4<u32>(~(~19965u) >> (global2.a.x % 32u), min(62902u, 95483u), abs(23776u), abs(4294967295u)), -18221i, _wgslsmith_dot_vec4_i32((abs(vec4<i32>(global2.b, global2.c, u_input.d.x, -1i)) ^ (vec4<i32>(u_input.c, -11405i, global2.c, 1i) & vec4<i32>(global2.b, -1i, u_input.c, -2147483647i))) ^ -(~vec4<i32>(u_input.d.x, 1i, global2.b, global2.b)), ((vec4<i32>(global2.c, 42638i, global2.b, -2147483647i) | vec4<i32>(global2.c, 25121i, 61268i, -59791i)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.d.x, 1i, 2147483647i), vec4<i32>(38025i, u_input.d.x, global2.c, 1i), vec4<i32>(2957i, -2147483647i, global2.b, 1i))) ^ vec4<i32>(-global2.b, -1i, -1i, _wgslsmith_add_i32(u_input.c, 17170i))), ~vec2<u32>(u_input.b >> (1u % 32u), 4294967295u));
    let var_1 = ~(~(firstTrailingBit(vec3<u32>(global2.d.x, global2.d.x, 0u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.d.x, 0u, var_0.a.x), func_2(Struct_1(vec4<u32>(global2.d.x, 35877u, var_0.d.x, 4294967295u), global2.c, u_input.c, vec2<u32>(4294967295u, global2.a.x)), -2588f, 1121f, Struct_1(u_input.a, -1i, var_0.b, global2.a.xw))) % vec3<u32>(32u))));
    var_0 = Struct_1(u_input.a, -14106i, 3967i, ~select(max(vec2<u32>(var_1.x, u_input.a.x) >> (u_input.a.zw % vec2<u32>(32u)), u_input.a.yw), _wgslsmith_mod_vec2_u32(var_1.zy, ~vec2<u32>(16232u, var_0.a.x)), 23143u != ~var_1.x));
    let var_2 = true;
    var var_3 = Struct_1(vec4<u32>(~27989u, var_0.d.x, global2.d.x, min(~(var_0.d.x ^ var_1.x), ~_wgslsmith_dot_vec3_u32(var_1, vec3<u32>(36258u, 4294967295u, 81186u)))), -29668i, _wgslsmith_div_i32(36770i, global2.c) ^ (i32(-1i) * -global2.c), vec2<u32>(~1u, _wgslsmith_mult_u32(~(~var_0.d.x), func_2(Struct_1(vec4<u32>(var_0.d.x, 93409u, var_0.d.x, 4294967295u), u_input.d.x, u_input.c, var_1.xz), arg_0, -2690f, Struct_1(vec4<u32>(u_input.a.x, global2.a.x, u_input.b, 0u), 0i, global2.b, vec2<u32>(48848u, 1u))).x)));
    return _wgslsmith_sub_i32(0i, (-var_3.c | u_input.d.x) << (_wgslsmith_dot_vec4_u32(global2.a, _wgslsmith_div_vec4_u32(~u_input.a, _wgslsmith_mult_vec4_u32(var_3.a, u_input.a))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(global2.a.x, 4294967295u);
    let var_1 = select(vec2<bool>(true, !(func_1(708f) > u_input.c)), !select(vec2<bool>(true, -6690i == u_input.c), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), true), !all(vec4<bool>(true, false, true, true)));
    global0 = func_3().x;
    var_0 = abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(~global2.a.x, 4294967295u, ~u_input.a.x), reverseBits(global2.a.xzx)));
    global0 = ~max(61156i, ~_wgslsmith_div_i32(-1i, abs(global2.b)));
    var var_2 = Struct_1(~select(vec4<u32>(4294967295u, global2.a.x, u_input.b, global2.d.x) << (vec4<u32>(72465u, global2.a.x, global2.a.x, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(1u, global2.d.x, u_input.a.x, 33760u), !(!var_1.x)), u_input.c, func_3().x >> (_wgslsmith_sub_u32(1u, ~_wgslsmith_div_u32(u_input.a.x, 0u)) % 32u), ~max(vec2<u32>(_wgslsmith_mod_u32(global2.a.x, 1u), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 29905u, 1u, 21258u))), ~vec2<u32>(global2.a.x, 37217u)));
    var var_3 = Struct_1(firstLeadingBit(~countOneBits(vec4<u32>(38742u, 1u, 0u, global2.a.x)) | global2.a), global2.b, -global2.b, ~select(~select(var_2.d, vec2<u32>(1u, global2.d.x), var_1.x), u_input.a.yz, var_1.x));
    var var_4 = any(select(vec2<bool>(var_1.x, true), !(!var_1), all(!vec2<bool>(true, var_1.x))));
    let var_5 = countOneBits(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(363f, 320f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(293f))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~var_3.d.x, _wgslsmith_mult_u32(reverseBits(_wgslsmith_sub_u32(u_input.b, var_2.a.x)), (var_3.d.x << (var_2.a.x % 32u)) ^ abs(var_3.d.x)), ((52964u > global2.d.x) == var_1.x) & var_1.x), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_3.d.x, var_2.a.x), ~vec2<u32>(44517u, 35579u)), ~(vec2<u32>(49860u, var_2.d.x) & u_input.a.xw))), 0i);
}

