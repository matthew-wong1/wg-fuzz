struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-804f, 699f, -1031f), vec3<f32>(569f, -531f, -1173f), vec3<f32>(-115f, -2172f, 963f), vec3<f32>(405f, 1083f, -1224f), vec3<f32>(1000f, 1077f, 665f), vec3<f32>(952f, 1185f, 1000f));

var<private> global3: array<i32, 10> = array<i32, 10>(1i, 0i, 21464i, -1i, -3707i, i32(-2147483648), 27768i, 9770i, 159i, 2147483647i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> vec4<u32> {
    var var_0 = u_input.b;
    let var_1 = select(u_input.a, select(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, 69220i, 0i), vec3<i32>(-1i, 38095i, 1i))), vec2<i32>(-2147483647i >> (~u_input.c % 32u), firstTrailingBit(-u_input.b)), false), true);
    let var_2 = global1[_wgslsmith_index_u32(~(~firstLeadingBit(_wgslsmith_div_u32(u_input.c, u_input.c))), 23u)];
    var_0 = -1i | global3[_wgslsmith_index_u32(~abs(~_wgslsmith_mult_u32(u_input.c, u_input.c)), 10u)];
    global2 = array<vec3<f32>, 6>();
    return vec4<u32>(_wgslsmith_mult_u32(u_input.c, 51079u), _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mult_u32(~u_input.c, 22830u ^ u_input.c)), ~u_input.c), 87675u & ~(~(~u_input.c)), u_input.c);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(min(~(firstLeadingBit(arg_1.x) >> (~(u_input.c ^ 56254u) % 32u)), arg_1.x), 23u)];
    global2 = array<vec3<f32>, 6>();
    global3 = array<i32, 10>();
    global1 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_2(), ~vec4<u32>(min(min(63557u, arg_2), func_2().x), 1u, firstTrailingBit(reverseBits(21096u)), 25030u)), 23u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec2<u32>(~(~(min(u_input.c, u_input.c) & _wgslsmith_mod_u32(u_input.c, 21103u))), 9501u);
    let var_1 = select(countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(~u_input.a, ~vec2<i32>(-10606i, 31598i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b, u_input.a.x), ~2147483647i), _wgslsmith_add_i32(~global3[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_add_i32(1i, -9351i)), -108i)), -vec4<i32>(reverseBits(0i), min(i32(-1i) * -11739i, _wgslsmith_add_i32(-1i, global3[_wgslsmith_index_u32(var_0.x, 10u)])), global3[_wgslsmith_index_u32(countOneBits(var_0.x), 10u)], _wgslsmith_add_i32(u_input.a.x, -2147483647i ^ u_input.b)), any(select(select(vec3<bool>(arg_0.b, arg_2.b, arg_0.b), select(vec3<bool>(true, true, false), vec3<bool>(false, false, arg_2.b), vec3<bool>(false, arg_2.a, arg_1.a)), select(vec3<bool>(arg_0.b, true, false), vec3<bool>(arg_1.b, true, arg_1.b), arg_0.b)), vec3<bool>(true, !arg_2.a, true), select(!vec3<bool>(arg_1.a, false, false), vec3<bool>(arg_0.b, arg_0.a, true), vec3<bool>(false, arg_1.a, arg_2.a)))));
    global2 = array<vec3<f32>, 6>();
    let var_2 = select(vec3<i32>(-_wgslsmith_add_i32(global3[_wgslsmith_index_u32(var_0.x, 10u)], -10590i) >> (33992u % 32u), min(var_1.x, -1i), min(-global3[_wgslsmith_index_u32(var_0.x, 10u)] >> (~u_input.c % 32u), min(var_1.x, ~u_input.b))), vec3<i32>(~46675i, _wgslsmith_dot_vec2_i32(firstTrailingBit(var_1.zy), vec2<i32>(-13921i, 74964i)), _wgslsmith_mod_i32(1i, var_1.x)) & ~(vec3<i32>(-1i) * -var_1.wwz), arg_2.a);
    let var_3 = vec4<bool>(any(vec2<bool>(true, arg_2.a)) | !arg_0.b, arg_2.b, arg_0.b, !(!(!arg_2.a)) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1870f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(782f)))));
    return global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 0u, 26541u, 1u), firstLeadingBit(vec4<u32>(u_input.c, 35337u, 0u, 1u))), ~vec4<u32>(u_input.c, var_0.x, 4294967295u, 0u)), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 36715u, u_input.c), ~vec3<u32>(u_input.c, 38514u, 10350u))), any(!vec3<bool>(false, false, var_3.x))) >> (firstTrailingBit(~func_2().x) % 32u), 23u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 23>();
    var var_0 = countOneBits(u_input.c) ^ firstTrailingBit(~17104u);
    global3 = array<i32, 10>();
    let var_1 = any(!vec4<bool>(arg_0.b, arg_1.b, true | arg_0.b, !(!arg_0.b)));
    var var_2 = Struct_1(!any(!vec2<bool>(false, var_1)), !var_1);
    return Struct_1(any(select(vec2<bool>(!arg_1.a, var_1), vec2<bool>(func_3(Struct_1(true, false), Struct_1(var_2.b, true), Struct_1(false, arg_1.a)).b, true), vec2<bool>(var_2.a, arg_1.b))), true & (any(select(vec2<bool>(var_2.b, true), vec2<bool>(true, var_1), arg_0.b)) && func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 10911u, u_input.c, u_input.c), vec4<u32>(1u, 1u, 4294967295u, u_input.c)), vec2<u32>(4294967295u, u_input.c) ^ vec2<u32>(u_input.c, 21210u), ~934u).a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(~14995u, 39010u), ~u_input.c, firstLeadingBit(~(~abs(4294967295u))));
    let var_1 = func_4(global0[_wgslsmith_index_u32(u_input.c, 23u)], func_3(global1[_wgslsmith_index_u32(1u, 23u)], func_1(vec4<u32>(~var_0.x, countOneBits(4294967295u), 3059u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, u_input.c), vec3<u32>(21498u, var_0.x, u_input.c))), ~(var_0.zz << (var_0.zy % vec2<u32>(32u))), ~var_0.x), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 10610u, var_0.x), _wgslsmith_div_vec4_u32(vec4<u32>(9541u, u_input.c, u_input.c, u_input.c), vec4<u32>(var_0.x, 0u, u_input.c, u_input.c))), 23u)]));
    let var_2 = vec2<u32>(_wgslsmith_div_u32(u_input.c, var_0.x), _wgslsmith_div_u32(45402u, 4294967295u));
    let var_3 = vec4<bool>(!var_1.b, func_1(countOneBits(~(~vec4<u32>(u_input.c, u_input.c, 1u, 0u))), ~(~vec2<u32>(var_0.x, u_input.c)) >> (var_2 % vec2<u32>(32u)), ~var_0.x).b, true, func_1(abs(~vec4<u32>(u_input.c, 1u, 0u, 4294967295u)), var_2, var_0.x).b);
    let var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-303f, -1000f, 150f, 140f))) - vec4<f32>(1035f, 1650f, -1658f, -354f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(390f, 1282f, -139f, -409f), vec4<f32>(-1218f, -725f, -1287f, -1000f))), vec4<f32>(655f, 1272f, 1355f, -201f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(932f, -968f, -506f, -1292f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(566f, 189f, -606f, 345f))))), select(select(!vec4<bool>(false, var_3.x, true, var_3.x), select(vec4<bool>(var_3.x, var_1.b, false, true), vec4<bool>(var_3.x, var_3.x, true, var_3.x), vec4<bool>(true, true, false, var_3.x)), select(vec4<bool>(false, false, true, var_1.a), var_3, var_3)), !(!var_3), var_3))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-435f, -617f, 277f, -497f))))))));
    let var_5 = var_1;
    let var_6 = global1[_wgslsmith_index_u32(19366u, 23u)];
    let var_7 = global1[_wgslsmith_index_u32(70766u, 23u)];
    var var_8 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_u32(vec4<u32>(71546u, 18467u, 1u, reverseBits(0u)), ~(vec4<u32>(var_2.x, var_2.x, 4294967295u, var_2.x) | vec4<u32>(var_2.x, 38964u, 0u, var_0.x))), -vec4<i32>(~_wgslsmith_add_i32(u_input.b, u_input.a.x), global3[_wgslsmith_index_u32(~1u, 10u)], 1i, (global3[_wgslsmith_index_u32(var_2.x, 10u)] ^ u_input.a.x) & -1i), select(_wgslsmith_sub_u32(abs(u_input.c), 0u), 1u, var_5.b), -409f);
}

