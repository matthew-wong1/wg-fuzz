struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = ~(-(~reverseBits(~vec3<i32>(u_input.e, u_input.b, u_input.b))));
    let var_1 = !(!all(vec2<bool>(true, all(vec3<bool>(true, false, false)))));
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    return reverseBits(89945u);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = (u_input.a >> ((~78270u & firstTrailingBit(79523u)) % 32u)) >= 1u;
    var var_1 = u_input.d;
    let var_2 = Struct_2(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-993f + -629f) - -707f) * -1352f)), ~var_1.x, Struct_1(vec3<i32>(var_1.x, 2147483647i, -30696i), 1u), ~_wgslsmith_clamp_u32(~u_input.a, max(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(1u, u_input.a, 0u))), func_3()), vec3<bool>(all(vec2<bool>(false, any(vec4<bool>(arg_0, arg_0, true, false)))), true, all(!vec4<bool>(var_0, true, var_0, var_0))));
    let var_3 = -(var_2.c.a.zx | vec2<i32>(u_input.e | -13410i, 2147483647i));
    var var_4 = Struct_1(var_2.c.a, 4294967295u);
    return global0[_wgslsmith_index_u32(~reverseBits(0u), 15u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_add_vec3_i32(~(~vec3<i32>(arg_0.c.a.x, 2147483647i, arg_0.c.a.x)), ~arg_0.c.a) ^ max(func_2(true).a, ~arg_3.c.a | vec3<i32>(-44125i, arg_3.c.a.x, arg_0.c.a.x)), 0u);
    var var_2 = arg_0.e.x;
    var var_3 = firstTrailingBit(i32(-1i) * -(~(-1i << (0u % 32u))));
    var var_4 = true;
    return func_2(!arg_1.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(662f)), 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(303f + -444f))))));
    var var_1 = ~vec4<u32>(~_wgslsmith_mod_u32(~arg_1.b, ~0u), abs(32646u), countOneBits(func_2(false).b), ~firstTrailingBit(func_4(Struct_2(vec2<f32>(var_0.x, var_0.x), arg_1.a.x, Struct_1(arg_0.a, 4294967295u), u_input.a, vec3<bool>(true, true, false)), vec2<bool>(false, true), 335f, Struct_2(vec2<f32>(var_0.x, var_0.x), arg_2.a.x, arg_0, 4510u, vec3<bool>(true, false, false))).b));
    return select(vec4<bool>(true, true, true, any(vec4<bool>(any(vec2<bool>(false, false)), false, false, all(vec3<bool>(true, false, true))))), vec4<bool>(true, all(vec2<bool>(true, true)), false, arg_1.b < 0u), vec4<bool>(true, true, true, true));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>) -> bool {
    var var_0 = select(func_5(func_4(Struct_2(arg_0.a, 1i, func_2(arg_0.e.x), 1u, vec3<bool>(false, arg_0.e.x, arg_0.e.x)), !select(arg_0.e.zy, arg_0.e.yz, arg_0.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -169f) - arg_0.a.x), arg_0), func_2(select(true && arg_0.e.x, select(false, arg_0.e.x, true), all(arg_0.e.xy))), func_2(false)), vec4<bool>(!(!(u_input.d.x >= u_input.e)), false, true, true), !(!select(!vec4<bool>(arg_0.e.x, true, arg_0.e.x, arg_0.e.x), func_5(global0[_wgslsmith_index_u32(arg_0.c.b, 15u)], Struct_1(arg_0.c.a, arg_0.d), Struct_1(vec3<i32>(arg_2.x, 1i, 10790i), arg_0.d)), arg_0.e.x)));
    let var_1 = firstLeadingBit(~((_wgslsmith_clamp_vec3_u32(vec3<u32>(4767u, 11676u, u_input.a), vec3<u32>(1u, 38423u, u_input.a), vec3<u32>(arg_0.d, arg_0.d, u_input.a)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.d, u_input.a, u_input.a), vec3<u32>(arg_0.c.b, 40862u, arg_0.c.b))) | vec3<u32>(_wgslsmith_div_u32(u_input.a, arg_0.c.b), 3652u, arg_0.c.b)));
    let var_2 = _wgslsmith_div_u32(0u, ~_wgslsmith_add_u32(reverseBits(arg_0.d) | ~var_1.x, 1u));
    var var_3 = global0[_wgslsmith_index_u32(abs(~(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.x, var_2), arg_0.c.b) | ~var_2)), 15u)];
    var_3 = arg_0.c;
    return func_5(global0[_wgslsmith_index_u32(17706u, 15u)], func_4(arg_0, select(!vec2<bool>(arg_0.e.x, true), func_5(global0[_wgslsmith_index_u32(~var_1.x, 15u)], arg_0.c, arg_0.c).zw, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) * -1000f) * arg_0.a.x), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_0.a.x), -arg_0.b, func_2(var_3.b != 4294967295u), arg_0.c.b, !var_0.yyy)), global0[_wgslsmith_index_u32(33642u, 15u)]).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(u_input.d << (vec2<u32>(~(~u_input.a), ~(u_input.a ^ u_input.a)) % vec2<u32>(32u)));
    var var_1 = !select(select(vec3<bool>(true, true, true), vec3<bool>(func_1(Struct_2(vec2<f32>(-2459f, 969f), var_0.x, global0[_wgslsmith_index_u32(u_input.a, 15u)], 12144u, vec3<bool>(true, false, false)), -677f, u_input.d), true, false), vec3<bool>(true, true, true)), vec3<bool>(select(all(vec3<bool>(false, true, false)), true, true), false, false), any(!func_5(global0[_wgslsmith_index_u32(3408u, 15u)], Struct_1(vec3<i32>(var_0.x, u_input.e, 0i), 0u), global0[_wgslsmith_index_u32(u_input.a, 15u)]).wyy));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, _wgslsmith_f_op_f32(810f + 822f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(f32(-1f) * -338f)), all(!vec2<bool>(true, var_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1593f, -1465f))))), select(var_0.x, select(u_input.e, u_input.d.x, var_1.x), false), global0[_wgslsmith_index_u32(41733u, 15u)], u_input.a, !func_5(global0[_wgslsmith_index_u32(~43148u, 15u)], func_2(true), Struct_1(countOneBits(vec3<i32>(-12228i, 10757i, -1i)), u_input.a)).wwx);
    var_0 = vec2<i32>(-1i) * -(_wgslsmith_clamp_vec2_i32(var_2.c.a.zy, firstTrailingBit(vec2<i32>(var_0.x, var_0.x)), var_2.c.a.yz) << (_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 1u), var_2.e.xz), _wgslsmith_add_vec2_u32(vec2<u32>(var_2.d, 50769u), vec2<u32>(5903u, var_2.c.b))) % vec2<u32>(32u)));
    var var_3 = Struct_1(vec3<i32>(countOneBits(countOneBits(-1i)), u_input.c, func_2(var_1.x).a.x), select(_wgslsmith_div_u32(abs(4294967295u), 38017u) | ~_wgslsmith_sub_u32(var_2.c.b, u_input.a), max(~u_input.a, 64172u), false));
    var_1 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a.x, 1245f, -1111f))))), _wgslsmith_mult_u32(6398u, 0u), abs(~vec2<u32>(u_input.a, ~1u)), ~reverseBits(firstTrailingBit(~vec3<u32>(3106u, var_2.c.b, u_input.a))), ~abs(var_3.a.xz) | -var_2.c.a.xx);
}

