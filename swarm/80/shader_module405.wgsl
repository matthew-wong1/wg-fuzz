struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 2147483647i), vec4<i32>(20659i, -30400i, i32(-2147483648), 2147483647i), vec4<i32>(2147483647i, 5480i, 2857i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -76094i, -29808i), vec4<i32>(2147483647i, 1i, i32(-2147483648), -32823i));

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(2907i, Struct_1(vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false), vec2<bool>(true, true))), Struct_2(i32(-2147483648), Struct_1(vec2<bool>(true, true), vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), vec2<bool>(true, false))), Struct_2(1i, Struct_1(vec2<bool>(true, false), vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), vec2<bool>(false, false))), Struct_2(2147483647i, Struct_1(vec2<bool>(false, true), vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true), vec2<bool>(true, true))), Struct_2(2147483647i, Struct_1(vec2<bool>(true, false), vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false), vec2<bool>(false, false))), Struct_2(i32(-2147483648), Struct_1(vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false), vec2<bool>(false, false))), Struct_2(20994i, Struct_1(vec2<bool>(false, false), vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false), vec2<bool>(false, false))), Struct_2(0i, Struct_1(vec2<bool>(true, false), vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), vec2<bool>(true, false))));

var<private> global3: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_2(39435i, arg_2.c, arg_0);
    global2 = array<Struct_2, 8>();
    let var_1 = u_input.a.x;
    global1 = array<vec4<i32>, 5>();
    global3 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -454f) - _wgslsmith_f_op_f32(f32(-1f) * -600f)), 313f)));
    return 1u;
}

fn func_3() -> vec2<u32> {
    var var_0 = !vec4<bool>(true | ((global0[_wgslsmith_index_u32(73991u, 1u)] != false) && false), any(vec4<bool>(global0[_wgslsmith_index_u32(~11895u, 1u)], any(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 1u)])), global0[_wgslsmith_index_u32(41124u, 1u)] == global0[_wgslsmith_index_u32(15946u, 1u)], false & global0[_wgslsmith_index_u32(1u, 1u)])), !global0[_wgslsmith_index_u32(~firstTrailingBit(1u), 1u)], false);
    let var_1 = Struct_2(_wgslsmith_div_i32(max(_wgslsmith_add_i32(reverseBits(1i), ~(-13484i)), 56173i), abs(_wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b.yyy), u_input.a.xzz))), Struct_1(select(var_0.yw, select(var_0.yz, var_0.wz, true), var_0.x), select(!var_0.yy, !(!var_0.zz), false)), Struct_1(vec2<bool>(false, true), select(select(!var_0.ww, var_0.xw, vec2<bool>(false, false)), vec2<bool>(true, var_0.x), false)));
    var var_2 = ~(~4294967295u);
    var var_3 = Struct_2(min(_wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), 27416i), abs(var_1.a)) ^ abs(abs(0i)), Struct_1(vec2<bool>(true, var_1.c.b.x), vec2<bool>(true, false)), var_1.c);
    let var_4 = ~_wgslsmith_mult_u32(1u, 48331u);
    return select(~_wgslsmith_mult_vec2_u32(~select(vec2<u32>(32327u, 1u), vec2<u32>(28685u, var_4), var_3.b.b), vec2<u32>(69458u, var_4) & firstTrailingBit(vec2<u32>(var_4, var_4))), abs(~min(~vec2<u32>(var_4, 4294967295u), ~vec2<u32>(9336u, 0u))), var_0.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_sub_u32(~0u, func_2(arg_1.b, u_input.a.x, global2[_wgslsmith_index_u32(44045u, 8u)])) | ~_wgslsmith_dot_vec2_u32(func_3(), min(vec2<u32>(1u, 3664u), vec2<u32>(0u, 4294967295u))), func_3().x), 8u)];
    global1 = array<vec4<i32>, 5>();
    let var_1 = vec3<f32>(-588f, 718f, -1021f);
    var var_2 = global2[_wgslsmith_index_u32(4950u, 8u)];
    let var_3 = select(var_0.c.b, vec2<bool>(var_2.b.a.x, -u_input.a.x < _wgslsmith_div_i32(~38412i, _wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(-1367i, var_2.a)))), vec2<bool>(arg_1.c.b.x, !((1000f >= var_1.x) && all(vec3<bool>(false, true, true)))));
    return var_0.c;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-456f + -1000f) + _wgslsmith_f_op_f32(-1875f - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1173f - 1361f) + _wgslsmith_f_op_f32(trunc(866f)))))), _wgslsmith_f_op_f32(1555f + 105f), 1064f);
    return func_1(arg_1.a, Struct_2(~(-39632i), Struct_1(!arg_1.a, !(!vec2<bool>(global0[_wgslsmith_index_u32(arg_3, 1u)], arg_0))), Struct_1(!(!arg_1.b), vec2<bool>(all(arg_1.a), var_0.x != -364f))), Struct_1(func_1(vec2<bool>(true, false), Struct_2(~u_input.a.x, Struct_1(vec2<bool>(arg_0, false), vec2<bool>(global0[_wgslsmith_index_u32(arg_3, 1u)], true)), arg_2), arg_2, _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b.x, 0i, u_input.a.x, -1i), vec4<i32>(u_input.a.x, u_input.b.x, 1i, -47033i))).b, arg_1.b), ~global1[_wgslsmith_index_u32(arg_3 << (19220u % 32u), 5u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(false, Struct_1(vec2<bool>(true, true || (true && global0[_wgslsmith_index_u32(40044u, 1u)])), !vec2<bool>(!global0[_wgslsmith_index_u32(47905u, 1u)], false)), func_1(!vec2<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], false, false, false))), Struct_2(_wgslsmith_mod_i32(u_input.a.x, 3988i), Struct_1(!vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 1u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(35034u, 1u)])), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(14339u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<bool>(true, true))), Struct_1(select(select(vec2<bool>(global0[_wgslsmith_index_u32(59891u, 1u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 1u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(39230u, 1u)], true), vec2<bool>(global0[_wgslsmith_index_u32(72575u, 1u)], global0[_wgslsmith_index_u32(11539u, 1u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(10581u, 1u)])), !global0[_wgslsmith_index_u32(0u, 1u)]), select(!vec2<bool>(global0[_wgslsmith_index_u32(6955u, 1u)], false), !vec2<bool>(false, global0[_wgslsmith_index_u32(45485u, 1u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(62307u, 1u)]))), min((global1[_wgslsmith_index_u32(88482u, 5u)] ^ global1[_wgslsmith_index_u32(13471u, 5u)]) ^ u_input.b, global1[_wgslsmith_index_u32(1u, 5u)])), ~1u);
    global0 = array<bool, 1>();
    global1 = array<vec4<i32>, 5>();
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 8u)];
    global1 = array<vec4<i32>, 5>();
    let var_2 = ~(~func_3());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1048f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2625f))))), _wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, -13505i, 963i) | (vec3<i32>(-1i) * -u_input.a.xwx), u_input.a.xwy), vec2<f32>(1f, 1f));
}

