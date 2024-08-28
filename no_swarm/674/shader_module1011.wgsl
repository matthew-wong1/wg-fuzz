struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), vec2<bool>(true, false)));

var<private> global1: array<f32, 32> = array<f32, 32>(1224f, 2033f, -226f, 1000f, 375f, 311f, -923f, -403f, -262f, 941f, -1315f, -917f, 2220f, 708f, -1562f, -785f, -421f, 1980f, 894f, 211f, 1060f, 1403f, 454f, -1286f, -464f, -739f, 804f, -521f, -638f, -782f, 1379f, -404f);

var<private> global2: vec2<u32>;

var<private> global3: array<vec3<i32>, 24>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> f32 {
    global3 = array<vec3<i32>, 24>();
    global1 = array<f32, 32>();
    return global1[_wgslsmith_index_u32(~u_input.a, 32u)];
}

fn func_2() -> vec2<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(1u, 2u)], all(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.wyw, (vec3<u32>(u_input.a, global2.x, global2.x) | u_input.b.yyy) >> (vec3<u32>(2317u, 0u, 1u) % vec3<u32>(32u))), 2u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(global2.x, 32u)])) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 32u)])), 942f)), 839f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1404f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.x, 32u)]), all(vec3<bool>(false, true, true)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.x, 32u)])))) * 1506f));
    let var_1 = _wgslsmith_clamp_u32(min(firstLeadingBit(u_input.a), u_input.b.x | ~firstTrailingBit(global2.x)), u_input.b.x, 27619u);
    let var_2 = firstTrailingBit(u_input.c);
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-601f, -161f, _wgslsmith_f_op_f32(-var_0.x), global1[_wgslsmith_index_u32(global2.x >> (12924u % 32u), 32u)]) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-161f, -112f, -794f, 833f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_1, 32u)], -1276f, var_0.x, global1[_wgslsmith_index_u32(4294967295u, 32u)]) * vec4<f32>(2708f, 2025f, -896f, global1[_wgslsmith_index_u32(var_1, 32u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(86940u, 32u)], -310f, global1[_wgslsmith_index_u32(u_input.b.x, 32u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(11242u, 32u)], 1800f, -469f, 1289f) * vec4<f32>(global1[_wgslsmith_index_u32(1u, 32u)], 1410f, -1000f, -1320f))), false)))));
    global0 = array<Struct_1, 2>();
    return select(firstTrailingBit(vec2<u32>(~var_1, var_1)), ~u_input.b.yy, true);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    global2 = _wgslsmith_mult_vec2_u32(max(vec2<u32>(~4294967295u, 0u), u_input.b.yx), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~u_input.b.zy), u_input.b.yw, vec2<u32>(20274u, ~3935u)), vec2<u32>(global2.x, u_input.b.x) << (func_2() % vec2<u32>(32u))));
    global0 = array<Struct_1, 2>();
    var var_0 = vec2<bool>(max(arg_0, -8853i) < arg_0, true);
    return vec2<bool>(true, !(!arg_1.a.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<bool> {
    global1 = array<f32, 32>();
    global2 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.wx, vec2<u32>(~(~24193u), 47806u)), u_input.b.zy);
    global0 = array<Struct_1, 2>();
    let var_0 = arg_0.x;
    let var_1 = reverseBits(0i);
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec2<bool>(any(vec3<bool>(true, true, false)), true), func_4(_wgslsmith_clamp_vec2_i32(~(vec2<i32>(1i, u_input.c) | vec2<i32>(u_input.c, u_input.c)), select(vec2<i32>(u_input.c, u_input.c) ^ vec2<i32>(u_input.c, 0i), firstTrailingBit(vec2<i32>(1i, u_input.c)), func_1(u_input.c, global0[_wgslsmith_index_u32(4294967295u, 2u)], -1971f)), ~vec2<i32>(u_input.c, -2147483647i) & -vec2<i32>(u_input.c, u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global2.x, 32u)], -287f) + -1320f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1888f + global1[_wgslsmith_index_u32(global2.x, 32u)]), global1[_wgslsmith_index_u32(~0u, 32u)], true))), global0[_wgslsmith_index_u32(u_input.b.x, 2u)], select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(false, true, false), true), vec3<bool>(any(vec4<bool>(true, false, true, true)), true, global1[_wgslsmith_index_u32(30110u, 32u)] <= -448f))));
    var var_1 = var_0.a.x;
    var var_2 = -1i;
    let var_3 = global1[_wgslsmith_index_u32(0u | ~global2.x, 32u)];
    var var_4 = var_0;
    let var_5 = Struct_1(vec2<bool>(!var_4.a.x, false), !select(select(select(vec2<bool>(false, var_0.a.x), var_0.b, var_4.a), !var_0.a, true), select(func_4(vec2<i32>(u_input.c, u_input.c), 955f, Struct_1(var_0.a, vec2<bool>(false, true)), vec3<bool>(true, false, var_0.b.x)), select(vec2<bool>(var_0.b.x, var_0.a.x), var_4.b, var_0.b.x), vec2<bool>(var_0.b.x, var_0.a.x)), true));
    let var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(1u, 32u)]))))))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(var_5.a, vec2<bool>(true, var_0.b.x)), all(vec2<bool>(var_5.b.x, false)), var_5)))), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~firstLeadingBit(0u), 32u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.zy, u_input.b.xy), u_input.b.wz), 32u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(u_input.b.x & 4294967295u), 32u)]), global1[_wgslsmith_index_u32(countOneBits(global2.x), 32u)]));
    global0 = array<Struct_1, 2>();
    var var_7 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(41774i, _wgslsmith_dot_vec4_i32(vec4<i32>(-23163i, u_input.c, u_input.c, -16754i), vec4<i32>(74260i, 2147483647i, 24963i, 22899i))), select(-vec2<i32>(u_input.c, 18091i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -43080i), vec2<i32>(0i, 1i)), var_4.b.x)), u_input.c, -(-2147483647i << (_wgslsmith_mult_u32(global2.x, global2.x) % 32u)), 1i), _wgslsmith_add_vec4_i32(vec4<i32>(max(i32(-1i) * -26542i, u_input.c), u_input.c, countOneBits(u_input.c), countOneBits(-u_input.c)), vec4<i32>(u_input.c, -(~u_input.c), u_input.c, -(u_input.c & 32547i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_7.x, var_6.x);
}

