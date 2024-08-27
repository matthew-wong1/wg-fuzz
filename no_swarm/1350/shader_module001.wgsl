struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(1267f, false, Struct_1(vec3<bool>(true, true, true)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_div_vec4_u32(~(~(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.b.x) << (vec4<u32>(21435u, u_input.b.x, 12715u, u_input.b.x) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(36911u, u_input.b.x, u_input.b.x, 90781u)), ~(vec4<u32>(u_input.b.x, 49749u, 1u, 48329u) ^ vec4<u32>(u_input.d, u_input.b.x, 41236u, 53082u)))) >> (~(vec4<u32>(1u, u_input.d, u_input.b.x, select(0u, 4294967295u, true)) << (~(~vec4<u32>(u_input.b.x, 10232u, 1u, 89830u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = Struct_5(-247f, global0.b, global0.c);
    global0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(343f, global0.a)))))), false, Struct_1(!vec3<bool>(global0.c.a.x, all(global0.c.a.xx), false)));
    global0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(721f)))))), !(!all(global0.c.a)), global0.c);
    let var_1 = arg_0;
    return any(vec3<bool>(all(vec4<bool>(any(global0.c.a.zy), all(vec4<bool>(true, true, global0.b, global0.c.a.x)), false, any(global0.c.a.zx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -938f)) != 531f, global0.b));
}

fn func_2(arg_0: f32) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -856f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(553f, arg_0)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(448f, 1904f))))));
    var var_1 = u_input.c.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_0));
    var_1 = u_input.e.x;
    global0 = Struct_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1648f, 1314f)))) + _wgslsmith_f_op_f32(-453f - arg_0)), arg_0)), func_3(~0i), Struct_1(global0.c.a));
    return Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), global0.a), all(vec2<bool>(-27212i > max(u_input.e.x, u_input.c.x), false)), Struct_1(vec3<bool>(global0.c.a.x, !all(vec4<bool>(global0.c.a.x, global0.c.a.x, true, global0.b)), true)));
}

fn func_1() -> f32 {
    global0 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f) + _wgslsmith_f_op_f32(-global0.a)), -438f)))));
    var var_0 = u_input.c;
    var_0 = ~reverseBits(reverseBits(-(~vec2<i32>(u_input.a.x, u_input.e.x))));
    global0 = Struct_5(552f, global0.c.a.x, func_2(_wgslsmith_f_op_f32(-591f * _wgslsmith_f_op_f32(global0.a * global0.a))).c);
    var var_1 = vec2<i32>(firstTrailingBit(u_input.e.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, var_0.x) >> (u_input.d % 32u), var_0.x));
    return _wgslsmith_f_op_f32(-1160f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a - -404f))));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: f32) -> Struct_5 {
    let var_0 = Struct_4(select(select(u_input.b, u_input.b, ~8979u == max(u_input.b.x, 4833u)), u_input.b, global0.b), func_2(arg_1).c.a.xy);
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -444f)));
    global0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), -500f))) * _wgslsmith_f_op_f32(-global0.a)), func_2(_wgslsmith_f_op_f32(select(arg_1, -513f, true))).b, Struct_1(select(global0.c.a, global0.c.a, vec3<bool>(var_0.b.x, global0.b, global0.b))));
    let var_1 = var_0.a.x;
    let var_2 = global0.c.a;
    return Struct_5(_wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_mod_u32(abs(var_0.a.x), 4574u) != _wgslsmith_add_u32(~_wgslsmith_div_u32(var_0.a.x, u_input.b.x), _wgslsmith_div_u32(abs(1u), 1u)), Struct_1(!vec3<bool>(false, var_0.b.x, !var_2.x)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_2, arg_3: vec2<i32>) -> vec3<bool> {
    let var_0 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.a, arg_2.c))) - 446f)))).c;
    let var_1 = Struct_4(firstLeadingBit(u_input.b), arg_1.c.a.yz);
    let var_2 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -449f)).c;
    global0 = func_4(~arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(274f, global0.a))) * arg_1.a)), -1713f);
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(var_1.a.x, max(~1u, u_input.b.x)), 39755u);
    return vec3<bool>(!(!(!(arg_1.c.a.x && var_1.b.x))), false, all(vec2<bool>(true, func_2(global0.a).b)) | var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!func_5(!vec2<bool>(global0.c.a.x, global0.c.a.x), func_4(max(u_input.e.zw, u_input.c), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-global0.a)), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 10842u, u_input.b.x, 75527u), vec4<u32>(u_input.b.x, 0u, 4294967295u, u_input.d)), Struct_1(global0.c.a), _wgslsmith_div_f32(global0.a, -415f), global0.c), vec2<i32>(1i, -1i)));
    let var_1 = Struct_2(u_input.b.x, func_2(_wgslsmith_f_op_f32(542f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -231f), global0.a))).c, -1009f, Struct_1(global0.c.a));
    var var_2 = ~u_input.e.zwx;
    var_0 = func_4(u_input.e.zz, -535f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1397f), _wgslsmith_f_op_f32(var_1.c - global0.a)))).c;
    var var_3 = var_1.c;
    var_2 = (vec3<i32>(max(_wgslsmith_mod_i32(1i, u_input.e.x), _wgslsmith_dot_vec2_i32(var_2.zy, vec2<i32>(1i, var_2.x))), -_wgslsmith_dot_vec2_i32(u_input.c, var_2.xx), min(countOneBits(7597i), firstTrailingBit(-7213i))) | vec3<i32>(5321i, _wgslsmith_sub_i32(-var_2.x, var_2.x), u_input.c.x)) >> (u_input.b % vec3<u32>(32u));
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1264f, -1000f)) * -1385f), true))));
    var var_5 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_f_op_f32(1258f - -649f), vec2<i32>(0i, -_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_2.x, var_2.x, var_2.x, u_input.e.x)), vec4<i32>(-34646i, 0i, var_2.x, 39481i) ^ u_input.e)));
}

