struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(876f, 461f, -239f, 533f, 498f, -1178f, -1408f, 104f, 396f, -965f, 558f, -1705f, -493f, 1715f, -709f, 727f, 664f, 532f, -887f, -402f, -215f, 1364f);

var<private> global1: Struct_2 = Struct_2(false, 725f, vec2<bool>(false, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = arg_0.x;
    let var_1 = Struct_3(_wgslsmith_sub_i32(firstLeadingBit(72282i), ~50747i), Struct_1(0i ^ min(arg_1.a, _wgslsmith_sub_i32(-2147483647i, -37627i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + global0[_wgslsmith_index_u32(~81802u, 22u)])), u_input.a.x, vec4<u32>(~_wgslsmith_add_u32(101068u, u_input.a.x), _wgslsmith_div_u32(~arg_2.d, ~32281u), 0u, min(_wgslsmith_div_u32(arg_2.e.c, arg_2.d), 1u >> (arg_2.b.d.x % 32u)))), global0[_wgslsmith_index_u32(arg_2.e.d.x, 22u)], ~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_1.d.xww, arg_2.b.d.xxz), 1u << (1u % 32u))), arg_2.b);
    var var_2 = _wgslsmith_add_u32(arg_1.c, arg_3.x >> (var_1.b.c % 32u)) & (_wgslsmith_dot_vec4_u32(vec4<u32>(69581u, arg_2.d, 1u, 4294967295u), ~arg_3) | max(var_1.b.c, _wgslsmith_mod_u32(~42034u, 4294967295u)));
    var_0 = countOneBits(-2488i) == u_input.b.x;
    var var_3 = Struct_1(-var_1.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f)), 4294967295u, var_1.e.d);
    return select(!(!select(select(vec3<bool>(global1.a, false, false), vec3<bool>(global1.a, global1.c.x, arg_0.x), arg_0.x), select(vec3<bool>(true, false, true), vec3<bool>(false, global1.c.x, global1.a), vec3<bool>(global1.a, arg_0.x, false)), select(vec3<bool>(global1.a, arg_0.x, false), vec3<bool>(true, true, true), vec3<bool>(global1.c.x, true, true)))), select(vec3<bool>(global1.c.x, !global1.a, all(select(arg_0, global1.c, arg_0))), vec3<bool>(all(vec2<bool>(false, false)), all(!vec2<bool>(false, arg_0.x)), !(145f <= global0[_wgslsmith_index_u32(var_3.c, 22u)])), global1.c.x), false);
}

fn func_2() -> Struct_2 {
    let var_0 = 40772u;
    global0 = array<f32, 22>();
    var var_1 = select(vec3<bool>(true, _wgslsmith_f_op_f32(ceil(-133f)) > _wgslsmith_f_op_f32(global1.b * -122f), false), select(select(vec3<bool>(!global1.a, select(global1.a, global1.a, true), true), !vec3<bool>(global1.c.x, global1.a, false), vec3<bool>(false, true, true)), select(!vec3<bool>(true, false, global1.a), select(select(vec3<bool>(true, global1.c.x, false), vec3<bool>(false, true, global1.a), vec3<bool>(false, true, global1.a)), !vec3<bool>(global1.a, global1.c.x, false), func_3(vec2<bool>(false, true), Struct_1(u_input.b.x, -837f, 1477u, vec4<u32>(u_input.a.x, 4294967295u, 13338u, var_0)), Struct_3(u_input.b.x, Struct_1(u_input.b.x, global0[_wgslsmith_index_u32(var_0, 22u)], var_0, u_input.a), global1.b, 14947u, Struct_1(u_input.b.x, -1047f, 18567u, vec4<u32>(var_0, 1u, 45955u, u_input.a.x))), vec4<u32>(25432u, 4294967295u, var_0, u_input.a.x))), 114095u >= _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(var_0, u_input.a.x))), global1.c.x), select(vec3<bool>(any(global1.c), global1.c.x, false), select(vec3<bool>(!global1.c.x, any(vec3<bool>(true, global1.a, true)), false), select(!vec3<bool>(global1.a, global1.a, global1.c.x), vec3<bool>(true, true, true), any(vec3<bool>(global1.c.x, true, global1.a))), func_3(select(vec2<bool>(global1.a, false), global1.c, true), Struct_1(20921i, global1.b, 0u, vec4<u32>(115379u, 0u, u_input.a.x, 31940u)), Struct_3(42722i, Struct_1(u_input.b.x, -767f, var_0, u_input.a), global1.b, u_input.a.x, Struct_1(u_input.b.x, global0[_wgslsmith_index_u32(13901u, 22u)], var_0, u_input.a)), vec4<u32>(var_0, var_0, 55125u, var_0))), false));
    global1 = Struct_2(global1.c.x, -595f, global1.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 1000f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1430f, 1116f) + vec2<f32>(global1.b, 684f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1412f, 1000f))))));
    return Struct_2(all(vec3<bool>(firstLeadingBit(-50362i) == u_input.b.x, var_1.x, var_1.x)), 159f, !var_1.zz);
}

fn func_1(arg_0: u32) -> i32 {
    global0 = array<f32, 22>();
    var var_0 = all(select(select(vec3<bool>(global1.c.x, !global1.c.x, false), select(vec3<bool>(false, true, global1.c.x), vec3<bool>(true, true, true), !vec3<bool>(global1.c.x, global1.a, false)), !(u_input.b.x == u_input.b.x)), vec3<bool>(all(global1.c), any(global1.c), arg_0 < ~0u), true));
    let var_1 = func_2();
    var var_2 = 184f;
    var var_3 = u_input.b.x & _wgslsmith_clamp_i32(u_input.b.x, 4176i, 16030i);
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_clamp_i32(~func_1(~0u), u_input.b.x, func_1(min(~8005u, 0u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global1.b)))), ~98934u, ~vec4<u32>(countOneBits(countOneBits(u_input.a.x)), u_input.a.x, _wgslsmith_dot_vec2_u32(~u_input.a.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.zy)), 79090u << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 0u, 1u), u_input.a) % 32u)));
    var var_1 = u_input.a.zxx;
    var var_2 = Struct_3(i32(-1i) * -(var_0.a & (u_input.b.x ^ -27030i)), Struct_1(u_input.b.x, -833f, 10734u, u_input.a), global0[_wgslsmith_index_u32(reverseBits(max(0u, select(6044u, ~var_1.x, true && global1.a))), 22u)], var_0.d.x, Struct_1(_wgslsmith_div_i32(_wgslsmith_div_i32(var_0.a, min(0i, u_input.b.x)), _wgslsmith_add_i32(-1i, func_1(1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-845f * -128f) + -579f)), var_1.x, reverseBits(u_input.a)));
    let var_3 = -var_0.a | _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.b), min(firstLeadingBit(reverseBits(vec4<i32>(1i, var_2.b.a, -9973i, u_input.b.x))), select(u_input.b, vec4<i32>(0i, 44494i, -861i, -49640i), select(vec4<bool>(false, global1.c.x, false, false), vec4<bool>(global1.c.x, global1.a, true, global1.c.x), global1.a))));
    var_1 = vec3<u32>(_wgslsmith_mult_u32(max(u_input.a.x, 36401u), 58159u), (44383u >> ((u_input.a.x & ~84363u) % 32u)) >> (_wgslsmith_add_u32(1u, 43403u) % 32u), _wgslsmith_clamp_u32(21845u, u_input.a.x, min(abs(8433u) & min(49957u, var_2.b.d.x), _wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.xz))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.b.x, var_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-251f, global0[_wgslsmith_index_u32(var_2.b.c, 22u)]), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.c, var_2.c), vec2<f32>(1938f, var_0.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 592f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(373f, var_0.b) * vec2<f32>(-1277f, -390f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_0.b), vec2<f32>(-271f, 1742f), vec2<bool>(false, false)))))));
}

